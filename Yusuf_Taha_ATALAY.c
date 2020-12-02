#include <stdio.h>
#include <stdlib.h>
#include <string.h>
// Yusuf Taha ATALAY
// 150119040

typedef struct node {
    char word[20];
    int frequency;
    struct node *left;
    struct node *right;
} node;

// Create a new node
node *NewNode(char *word, int frequency) {

    // spare some space for the node that to be created
    node *node = malloc(sizeof(*node));

    // copy the word value to the node's
    strcpy(node->word, word);
    node->frequency = frequency;
    node->left = NULL;
    node->right = NULL;

    return node;
}


node *InsertNodeByWord(node *node, char *word, int frequency) {


    // return a new node if the tree is empty
    if (node == NULL) return NewNode(word, frequency);

        // compare the new values with the old one snd place the node to the correct place (BST standard)
        // if node that going to be inserted has word of less value than root not then place it to the left
    else if (stricmp(word, node->word) < 0) {
        node->left = InsertNodeByWord(node->left, word, frequency);
    } else {
        node->right = InsertNodeByWord(node->right, word, frequency);
    }
    return node;
}


void LNRTraversal(node *root) {

    if (root != NULL) {

        // seek left sub-tree
        LNRTraversal(root->left);

        printf(" %s ->", root->word);

        //seek right sub-tree
        LNRTraversal(root->right);
    }

}

// Sort the given array in descend order
void SortFrequencyDescending(int line_count, node *root) {
    int i, j;
    node tempNode;
    for (i = 0; i < line_count; ++i) {
        for (j = i + 1; j < line_count; ++j) {
            if (root[i].frequency < root[j].frequency) {
                tempNode = root[i];
                root[i] = root[j];
                root[j] = tempNode;
            }
        }
    }
}

// This method takes the root of tree and sorted (by frequencies) array adn creates a balanced binary tree
node *CreateBalancedTree(node *nodeArr, node *root, int i, int lineNum) {

    if (i < lineNum) {
        node *temp = &nodeArr[i];
        root = temp;

        // insert left child
        root->left = CreateBalancedTree(nodeArr, root->left, 2 * i + 1, lineNum);

        // insert right child
        root->right = CreateBalancedTree(nodeArr, root->right, 2 * i + 2, lineNum);
    }
    return root;
}

// This global variable will help me to store the finished value of total access time
int totalAccessTime;

// This method calculates the total access time by doing similar traversal to the NLR to understand the depth of current node

void TotalAccessTime(node *currentNode, int depth) {

    if (currentNode != NULL) {
        totalAccessTime += (depth + 1) * currentNode->frequency;
        TotalAccessTime(currentNode->left, depth + 1);
        TotalAccessTime(currentNode->right, depth + 1);
    }


}

// This method will print out the Total Access Time (TAT)
void ShowTAT(node *root) {
    TotalAccessTime(root, 0);
    printf("%d\n", totalAccessTime);
    totalAccessTime = 0;
}


int main() {
    // create the tree by creating the rootForWordTree node & rootForFrequencyTree node;
    node *rootForWordTree = NULL;
    node *rootForFrequencyTree = NULL;
    //input.txt file pointer input file
    FILE *input_file_ptr = NULL;


    char wholeLine[30];            //holder for a whole line
    char lineNumText[3];                  // useless sort order number of each line
    int lineNum = 0;
    char word[20];             //song name that read from the file
    char frequencyText[4];          //raw frequency that just read from the file
    int frequency = 0;                   //song frequency in seconds that read from the file (needs to be converted from (xx:xx) format to seconds format)



    if ((input_file_ptr = fopen("input.txt", "r")) ==NULL) {          //if program fails to open the file it will give a message
        puts("File could not be opened");
        return -1;
    } else {

        fgets(wholeLine, 30, input_file_ptr);
        // assign line number
        strcpy(lineNumText, (strtok(wholeLine, ",")));
        // assign 2nd element of array to the word variable
        strcpy(word, strtok(NULL, ","));

        strcpy(frequencyText, strtok(NULL, ","));
        // turn last element of the array into an integer and assign it to frequency variable
        frequency = atoi(frequencyText);
        lineNum = atoi(lineNumText);
        rootForWordTree = NewNode(word, frequency);

        while (fgets(wholeLine, 30, input_file_ptr)) {


            // assign line number
            strcpy(lineNumText, (strtok(wholeLine, ",")));
            // assign 2nd element of array to the word variable
            strcpy(word, strtok(NULL, ","));

            strcpy(frequencyText, strtok(NULL, ","));
            // turn last element of the array into an integer and assign it to frequency variable
            frequency = atoi(frequencyText);
            lineNum = atoi(lineNumText);

            InsertNodeByWord(rootForWordTree, word, frequency);


        }
        fclose(input_file_ptr);//closing the file after finishing

        // i created an array for holding the nodes for ordering them by their frequencies
        node nodeArr[lineNum];
        input_file_ptr = fopen("input.txt", "r");
        for (int i = 0; fgets(wholeLine, 30, input_file_ptr); i++) {
            strcpy(lineNumText, (strtok(wholeLine, ",")));
            // assign 2nd element of array to the word variable
            strcpy(word, strtok(NULL, ","));

            strcpy(frequencyText, strtok(NULL, ","));
            // turn last element of the array into an integer and assign it to frequency variable
            frequency = atoi(frequencyText);
            lineNum = atoi(lineNumText);


            nodeArr[i] = *NewNode(word, frequency);

        }

        SortFrequencyDescending(lineNum, nodeArr);
        rootForFrequencyTree = &nodeArr[0];
        CreateBalancedTree(nodeArr, rootForFrequencyTree, 0, lineNum);

        printf("\n");
        printf("Please select you Binary Tree \n 1-)Binary Search Tree constructed according to \"word\" as key"
               "\n 2-)Binary Tree constructed according to word's \"frequency\" as key for minimum total access time "
               "\nType 1 or 2 to proceed:");
        int selection;
        scanf("%d", &selection);
        switch (selection) {
            case 1:

                printf("\n LNR  traversal for this tree:\n");
                LNRTraversal(rootForWordTree);

                printf("\n");

                printf("\n Total access time for this tree:\n");
                ShowTAT(rootForWordTree);
                break;
            case 2:

                printf("\n LNR  traversal for this tree:\n");
                LNRTraversal(rootForFrequencyTree);

                printf("\n");

                printf("\n Total access time for this tree:\n");
                ShowTAT(rootForFrequencyTree);
                break;
            default:
                break;
        }
    }
    return 0;
}