#include <iostream>
using namespace std;

int a1[12], a2[12], a3[12], a4[12];
int used1, used2, used3, used4, minInt, intNum, oneInt;
int* hopPtr;
int* hopPtr1;
int* hopPtr2;
int* hopPtr3;
int* hopPtr4;
int* endPtr;
int* endPtr1;
int* endPtr2;
int* iPtr;
char reply;
char begA1Str[] = "beginning a1: ";
char cpaA1Str[] = "chkPointA a1: ";
char proA1Str[] = "processed a1: ";
char comAeStr[] = "          a";
char comAfStr[] = ": ";
char einStr[]   = "Enter integer #";
char moStr[]    = "Max of ";
char ieStr[]    = " ints entered...";
char eaiStr[]   = "End adding ints? (y or Y = yes, others = no) ";
char dacStr[]   = "Do another case? (n or N = no, others = yes) ";
char dlStr[]    = "================================";
char byeStr[]   = "bye...";

int main()
{
                     //do
begDW1://            {                                             
                        intNum = 0;
                        used1 = 0;
                        used2 = 0;
                        hopPtr1 = a1;
                        hopPtr2 = a2;
                        cout << eaiStr;
                        cin >> reply;        
                        //while (reply != 'y' && reply != 'Y')                
                        goto WTest1;
begW1://                {
                           ++intNum;
                           cout << einStr;
                           cout << intNum;
                           cout << ':' << ' ';
                           cin >> oneInt;
                           //if ( (intNum & 1) != 0 )
                           if ((intNum & 1) == 0) goto else1;
begI1://                   {
                              *hopPtr1 = oneInt;
                              ++hopPtr1;
                              ++used1;
                              goto endI1;
//                         }
else1://                   else
//                         {
                              *hopPtr2 = oneInt;
                              ++hopPtr2;
                              ++used2;
endI1://                    }
                           //if (intNum == 12)
                           if (intNum != 12) goto else2;
begI2://                   {
                              cout << moStr;
                              cout << 12;
                              cout << ieStr;
                              cout << endl;
                              reply = 'y';
                              goto endI2;
//                         }
else2://                   else
//                         {
                              cout << eaiStr;
                              cin >> reply;
endI2://                         }
WTest1:                 if (reply != 'y' && reply != 'Y') goto begW1;                           
endW1://                }
                        cout << endl;

                        cout << begA1Str;
                        hopPtr = a1;
                        endPtr = hopPtr + used1;
                        //while (hopPtr < endPtr)
                        goto WTest2;
begW2://                {
                           cout << *hopPtr << ' ' << ' ';
                           ++hopPtr;
WTest2:                 if (hopPtr < endPtr) goto begW2;
endW2://                }
                        cout << endl;

                        cout << comAeStr << 2 << comAfStr;
                        hopPtr = a2;
                        endPtr = hopPtr + used2;
                        //while (hopPtr < endPtr)
                        goto WTest3;
begW3://                {
                           cout << *hopPtr << ' ' << ' ';
                           ++hopPtr;
WTest3:                 if (hopPtr < endPtr) goto begW3;          
endW3://                }
                        cout << endl;

                        //if (used1 > 0 || used2 > 0)
                        if (used1 <= 0 && used2 <= 0) goto else3;
begI3://                {
                           hopPtr1 = a1;
                           hopPtr2 = a2;
                           hopPtr3 = a3;
                           hopPtr4 = a4;
                           endPtr1 = hopPtr1 + used1;
                           endPtr2 = hopPtr2 + used2;
                           used3 = 0;
                           used4 = 0;
                           //if (used1 > 0)
                           if (used1 <= 0) goto else4;
begI4://                   {
                              minInt = *hopPtr1;
                              goto endI4;
//                         }
else4://                   else
//                         {
                              minInt = *hopPtr2;
endI4://                   }
                           //while (hopPtr1 < endPtr1 && hopPtr2 < endPtr2)
                           goto WTest4;
begW4://                   {
                              //while (hopPtr1 < endPtr1)
                              goto WTest5;
begW5://                      {
                                 oneInt = *hopPtr1;
                                 //if (oneInt < minInt)
                                 if (oneInt > minInt) goto endI5;
begI5://                         {
                                    minInt = oneInt;
endI5://                         }
                                 //if ( (oneInt & 1) == 0 ) break;
                                 if ((oneInt & 1) != 0) goto endI6;
begI6://                         {
                                    goto endW5;
endI6://                         }
                                 *hopPtr3 = oneInt;
                                 ++used3;
                                 ++hopPtr1;
                                 ++hopPtr3;
WTest5:                       if (hopPtr1 < endPtr1) goto begW5;
endW5://                      }
                              //while (hopPtr2 < endPtr2)
                              goto WTest6;
begW6://                      {
                                 oneInt = *hopPtr2;
                                 //if (oneInt < minInt)
                                 if (oneInt >= minInt) goto endI7;
begI7://                         {
                                    minInt = oneInt;
endI7://                         }
                                 //if ( (oneInt & 1) != 0 ) break;
                                 if ((oneInt & 1) == 0 ) goto endI8;
begI8://                         {
                                    goto endW6;
endI8://                         }
                                 *hopPtr4 = oneInt;
                                 ++used4;
                                 ++hopPtr2;
                                 ++hopPtr4;
WTest6:                       if(hopPtr2 < endPtr2) goto begW6;
endW6://                      }
                              //if (hopPtr1 < endPtr1 && hopPtr2 < endPtr2)
                              if (hopPtr1 >= endPtr1 || hopPtr2 >= endPtr2) goto endI9;
begI9://                      {
                                 *hopPtr3 = *hopPtr2;
                                 *hopPtr4 = *hopPtr1;
                                 ++used3;
                                 ++used4;
                                 ++hopPtr1;
                                 ++hopPtr2;
                                 ++hopPtr3;
                                 ++hopPtr4;
endI9://                      }
WTest4:                    if (hopPtr1 < endPtr1 && hopPtr2 < endPtr2) goto begW4;                             
endW4://                   }
                           //while (hopPtr1 < endPtr1)
                           goto WTest7;
begW7://                   {
                              oneInt = *hopPtr1;
                              //if (oneInt < minInt)
                              if (oneInt >= minInt) goto endI10;
begI10://                      {
                                 minInt = oneInt;
endI10://                      }
                              //if ( (oneInt & 1) != 0 )
                              if ((oneInt & 1) == 0) goto else11;
begI11://                      {
                                 *hopPtr3 = oneInt;
                                 ++used3;
                                 ++hopPtr3;
                                 goto endI11;
//                     }
else11://                      else
//                            {
                                 *hopPtr4 = oneInt;
                                 ++used4;
                                 ++hopPtr4;
endI11://                      }
                              ++hopPtr1;
WTest7:                    if(hopPtr1 < endPtr1) goto begW7;
endW7://                   }
                           //while (hopPtr2 < endPtr2)
                           goto WTest8;
begW8://                   {
                              oneInt = *hopPtr2;
                              //if (oneInt < minInt)
                              if (oneInt < minInt) goto endI12;
begI12://                     {
                                 minInt = oneInt;
endI12://                     }
                              //if ( (oneInt & 1) != 0 )
                              if ((oneInt & 1) == 0) goto else13;
begI13://                     {
                                 *hopPtr3 = oneInt;
                                 ++used3;
                                 ++hopPtr3;
                                 goto endI13;
//                            }
else13://                     else
//                            {
                                 *hopPtr4 = oneInt;
                                 ++used4;
                                 ++hopPtr4;
endI13://                     }
                              ++hopPtr2;
WTest8:                    if(hopPtr2 < endPtr2) goto begW8;
endW8://                   }
                           goto endI3;
//                      }
else3://                else
//                      {
                           used3 = 0;
                           used4 = 0;
endI3://                }

                        cout << comAeStr << 3 << comAfStr;
                        hopPtr = a3;
                        endPtr = hopPtr + used3;
                        //while (hopPtr < endPtr)
                        goto WTest9;
begW9://                {
                           cout << *hopPtr << ' ' << ' ';
                           ++hopPtr;
WTest9:                 if (hopPtr < endPtr) goto begW9;
endW9://                }
                        cout << endl;

                        cout << comAeStr << 4 << comAfStr;
                        hopPtr = a4;
                        endPtr = hopPtr + used4;
                        //while (hopPtr < endPtr)
                        goto WTest10;
begW10://               {
                           cout << *hopPtr << ' ' << ' ';
                           ++hopPtr;
WTest10:                if(hopPtr < endPtr) goto begW10;
endW10://               }
                        cout << endl;

                        //if (used1 > 0 || used2 > 0)
                        if (used1 <= 0 && used2 <= 0) goto endI14;
begI14://               {
                           used1 = 0;
                           used2 = 0;
                           hopPtr = a3;
                           endPtr = hopPtr + used3;
                           //while (hopPtr < endPtr)
                           goto WTest11;
begW11://                  {
                              oneInt = *hopPtr;
                              //for (iPtr = a1 + used1; iPtr > a1; --iPtr)
                              iPtr = a1 + used1;
                              goto FTest1;
begF1://                      {
                                 //if ( *(iPtr - 1) <= oneInt ) break;
                                 if ( *(iPtr - 1) > oneInt ) goto endI15;
begI15://                        {
                                    goto endF1;
endI15://                        }
                                 *iPtr = *(iPtr - 1);
                              --iPtr;
FTest1:                       if (iPtr > a1) goto begF1;      
endF1://                      }
                              *iPtr = *hopPtr;
                              ++used1;
                              ++hopPtr;
WTest11:                   if (hopPtr < endPtr) goto begW11;
endW11://                  }
                           hopPtr = a4;
                           endPtr = hopPtr + used4;
                           //while (hopPtr < endPtr)
                           goto WTest12;
begW12://                  {
                              oneInt = *hopPtr;
                              //for (iPtr = a2 + used2; iPtr > a2; --iPtr)
                              iPtr = a2 + used2;
                              goto FTest2;
begF2://                      {
                                 //if ( *(iPtr - 1) <= oneInt ) break;
                                 if ( *(iPtr - 1) <= oneInt ) goto endF2;
                                 *iPtr = *(iPtr - 1);
                              --iPtr;
FTest2:                       if (iPtr > a2) goto begF2;
endF2://                      }
                              *iPtr = *hopPtr;
                              ++used2;
                              ++hopPtr;
WTest12:                   if (hopPtr < endPtr) goto begW12;
endW12://                  }

                           cout << cpaA1Str;
                           hopPtr = a1;
                           endPtr = hopPtr + used1;

                           //while (0 == 0)
                           goto WTest13;
begW13://                  {
                              //if (hopPtr == a4 + used4 && endPtr == a4 + used4) break;
                              if (hopPtr != a4 + used4 || endPtr != a4 + used4) goto endI17;
begI17://                     {
                                 goto endW13;
endI17://                     }
                              //while (hopPtr < endPtr)
                              goto WTest14;
begW14://                     {
                                 cout << *hopPtr << ' ' << ' ';
                                 ++hopPtr;
WTest14:                      if (hopPtr < endPtr) goto begW14;
endW14://                     }
                              cout << endl;
                              //if (endPtr == a1 + used1)
                              if (endPtr != a1 + used1) goto else18;
begI18://                     {
                                 cout << comAeStr << 2 << comAfStr;
                                 hopPtr = a2;
                                 endPtr = hopPtr + used2;
                                 goto endI18;
//                            }
else18://                     else
//                            {
                                 //if (endPtr == a2 + used2)
                                 if (endPtr != a2 + used2) goto else19;
begI19://                        {
                                    cout << comAeStr << 3 << comAfStr;
                                    hopPtr = a3;
                                    endPtr = hopPtr + used3;
                                    goto endI19;
//                               }
else19://                        else
//                               {
                                    //if (endPtr == a3 + used3)
                                    if (endPtr != a3 + used3) goto endI20;
begI20://                           {
                                       cout << comAeStr << 4 << comAfStr;
                                       //if (used4 == 0)
                                       if (used4 != 0) goto endI21;
begI21://                              {
                                          cout << endl;
endI21://                              }
                                       hopPtr = a4;
                                       endPtr = hopPtr + used4;
endI20://                           }
endI19://                        }
endI18://                     }
WTest13:                   if (0 == 0) goto begW13;                              
endW13://                  }

                           used3 = 0;
                           used4 = 0;
                           //if ( (minInt & 1) != 0)
                           if ((minInt & 1) == 0) goto else22;
begI22://                  {
                              hopPtr = a3;
                              used3 = used1 + used2;
                              goto endI22;
//                         }
else22://                  else
//                         {
                              hopPtr = a4;
                              used4 = used1 + used2;
endI22://                  }
                           hopPtr1 = a1;
                           hopPtr2 = a2;
                           endPtr1 = hopPtr1 + used1;
                           endPtr2 = hopPtr2 + used2;
                           //while (hopPtr1 < endPtr1 && hopPtr2 < endPtr2)
                           goto WTest15;
begW15://                  {
                              //if (*hopPtr1 < *hopPtr2)
                              if (*hopPtr1 >= *hopPtr2) goto else23;
begI23://                     {
                                 *hopPtr = *hopPtr1;
                                 ++hopPtr1;
                                 goto endI23;
//                            }
else23://                     else
//                            {
                                 *hopPtr = *hopPtr2;
                                 ++hopPtr2;
endI23://                     }
                              ++hopPtr;
WTest15:                   if (hopPtr1 < endPtr1 && hopPtr2 < endPtr2) goto begW15;
endW15://                  }
                           //while (hopPtr1 < endPtr1)
                           goto WTest16;
begW16://                  {
                              *hopPtr = *hopPtr1;
                              ++hopPtr1;
                              ++hopPtr;
WTest16:                   if (hopPtr1 < endPtr1) goto begW16;
endW16://                  }
                           //while (hopPtr2 < endPtr2)
                           goto WTest17;
begW17://                  {
                              *hopPtr = *hopPtr2;
                              ++hopPtr2;
                              ++hopPtr;
WTest17:                   if (hopPtr2 < endPtr2) goto begW17;                              
endW17://                  }
endI14://               }

                        cout << proA1Str;
                        hopPtr = a1;
                        endPtr = hopPtr + used1;

                        //while (0 == 0)
                        goto WTest18;
begW18://               {
                           //if (hopPtr == a4 + used4 && endPtr == a4 + used4) break;
                           if (hopPtr != a4 + used4 || endPtr != a4 + used4) goto endI24;
begI24://                  {
                              goto endW18;
endI24://                  }
                           //while (hopPtr < endPtr)
                           goto WTest19;
begW19://                  {
                              cout << *hopPtr << ' ' << ' ';
                              ++hopPtr;
WTest19:                   if (hopPtr < endPtr) goto begW19;
endW19://                  }
                           cout << endl;
                           //if (endPtr == a1 + used1)
                           if (endPtr != a1 + used1) goto else25;
begI25://                  {
                              cout << comAeStr << 2 << comAfStr;
                              hopPtr = a2;
                              endPtr = hopPtr + used2;
                              goto endI25;
//                         }
else25://                  else
//                         {
                              //if (endPtr == a2 + used2)
                              if (endPtr != a2 + used2) goto else26;
begI26://                     {
                                 cout << comAeStr << 3 << comAfStr;
                                 hopPtr = a3;
                                 endPtr = hopPtr + used3;
                                 goto endI26;
//                            }
else26://                     else
//                            {
                                 //if (endPtr == a3 + used3)
                                 if (endPtr != a3 + used3) goto endI27;
begI27://                        {
                                    cout << comAeStr << 4 << comAfStr;
                                    //if (used4 == 0)
                                    if (used4 != 0) goto endI28;
begI28://                           {
                                       cout << endl;
endI28://                           }
                                    hopPtr = a4;
                                    endPtr = hopPtr + used4;
endI27://                        }
endI26://                     }
endI25://                  }
WTest18:                if (0 == 0) goto begW18;                           
endW18://               }

                        cout << endl;
                        cout << dacStr;
                        cin >> reply;
                        cout << endl;
endDW1://            }
DWTest1:             //while (reply != 'n' && reply != 'N');
                     if (reply != 'n' && reply != 'N') goto begDW1;
                     cout << dlStr;
                     cout << '\n';
                     cout << byeStr;
                     cout << '\n';
                     cout << dlStr;
                     cout << '\n';

                     return 0;
}