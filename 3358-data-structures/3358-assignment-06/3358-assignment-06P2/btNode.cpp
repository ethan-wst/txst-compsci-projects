#include "btNode.h"
#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

void bst_insert(btNode*& bst_root, int insInt) {
   btNode* next = bst_root;
   btNode* curr = nullptr;

   while (next != nullptr) {
      curr = next;
      if (next->data > insInt) next = next->left;
      else if (next->data < insInt) next = next->right;
      else {
         next->data = insInt;
         return;
      }
   }

   btNode* newNode = new btNode;
   newNode->data = insInt;
   newNode->left = nullptr;
   newNode->right = nullptr;

   if (curr == nullptr) bst_root = newNode;
   else if (curr->data > insInt) curr->left = newNode;
   else curr->right = newNode;
}



bool bst_remove(btNode*& bst_root, int remInt) { 
   if (bst_root == nullptr) {
      return false;
   }
   if (remInt < bst_root->data) bst_remove(bst_root->left, remInt);
   else if (remInt > bst_root->data) bst_remove(bst_root->right, remInt);
   else {
      btNode* tempNode = bst_root;
      if (bst_root->left != 0 && bst_root->right != 0) {
         bst_remove_max(bst_root->left, bst_root->data);
         return true;
      } else if (bst_root->right != 0) bst_root = bst_root->right;
      else bst_root = bst_root->left;

      delete tempNode;
      tempNode = nullptr;
      return true;
   }
}

void bst_remove_max(btNode*& bst_root, int& remInt) {
   if (bst_root->right == nullptr) {
      remInt = bst_root->data;
      
      btNode* tempNode = bst_root;
      bst_root = bst_root->left;

      delete tempNode;
      tempNode = nullptr;
   } else {
      bst_remove_max(bst_root->right, remInt);
   }
}


void portToArrayInOrder(btNode* bst_root, int* portArray)
{
   if (bst_root == 0) return;
   int portIndex = 0;
   portToArrayInOrderAux(bst_root, portArray, portIndex);
}

void portToArrayInOrderAux(btNode* bst_root, int* portArray, int& portIndex)
{
   if (bst_root == 0) return;
   portToArrayInOrderAux(bst_root->left, portArray, portIndex);
   portArray[portIndex++] = bst_root->data;
   portToArrayInOrderAux(bst_root->right, portArray, portIndex);
}

void tree_clear(btNode*& root)
{
   if (root == 0) return;
   tree_clear(root->left);
   tree_clear(root->right);
   delete root;
   root = 0;
}

int bst_size(btNode* bst_root)
{
   if (bst_root == 0) return 0;
   return 1 + bst_size(bst_root->left) + bst_size(bst_root->right);
}
