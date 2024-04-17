begW3://              {
                         cout << *hopPtr << ' ' << ' ';
                         ++hopPtr;
endW3://              }
WTest3:               if (hopPtr < endPtr) goto begW3;

                      cout << endl;

                      //if (used1 > 0 || used2 > 0)
                      if (used1 > 0) goto begI3;
                      if (used2 <= 0) goto else3;
begI3://              {
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
begI4://                 {
                            minInt = *hopPtr1;
                         goto endI4;
//                       }
else4://                 else
//                       {
                            minInt = *hopPtr2;
endI4://                 }
                         //while (hopPtr1 < endPtr1 && hopPtr2 < endPtr2)
                         goto WTest4;
begW4://                 {
                            //while (hopPtr1 < endPtr1)
                            goto WTest5;
begW5://                    {
                               oneInt = *hopPtr1;
                               //if (oneInt < minInt)
                               if (oneInt >= minInt) goto endI5;
begI5://                       {
                                  minInt = oneInt;
endI5://                       }
                               //if ( (oneInt & 1) == 0 ) break;
                               if ( (oneInt & 1) == 0 ) goto brk6;
                               *hopPtr3 = oneInt;
                               ++used3;
                               ++hopPtr1;
                               ++hopPtr3;
endW5://                    }
WTest5:                     if (hopPtr1 < endPtr1) goto begW5;
brk6:
                            //while (hopPtr2 < endPtr2)
                            goto WTest6;
begW6://                    {
                               oneInt = *hopPtr2;
                               //if (oneInt < minInt)
                               if (oneInt >= minInt) goto endI7;
begI7://                       {
                                  minInt = oneInt;
endI7://                       }
                               //if ( (oneInt & 1) != 0 ) break;
                               if ( (oneInt & 1) != 0 ) goto brk8;
                               *hopPtr4 = oneInt;
                               ++used4;
                               ++hopPtr2;
                               ++hopPtr4;
endW6://                    }
WTest6:                     if (hopPtr2 < endPtr2) goto begW6;
brk8:

                            //if (hopPtr1 < endPtr1 && hopPtr2 < endPtr2)
                            if (hopPtr1 >= endPtr1) goto endI9;
                            if (hopPtr2 >= endPtr2) goto endI9;
begI9://                    {
                               *hopPtr3 = *hopPtr2;
                               *hopPtr4 = *hopPtr1;
                               ++used3;
                               ++used4;
                               ++hopPtr1;
                               ++hopPtr2;
                               ++hopPtr3;
                               ++hopPtr4;
endI9://                    }
endW4://                 }
WTest4:
                         if (hopPtr1 >= endPtr1) goto xitW4;
                         if (hopPtr2 < endPtr2) goto begW4;
xitW4:

                         //while (hopPtr1 < endPtr1)
                         goto WTest7;
begW7://                 {
                            oneInt = *hopPtr1;
                            //if (oneInt < minInt)
                            if (oneInt >= minInt) goto endI10;
begI10://                    {
                               minInt = oneInt;
endI10://                    }
                            //if ( (oneInt & 1) != 0 )
                            if ( (oneInt & 1) == 0 ) goto else11;
begI11://                   {
                               *hopPtr3 = oneInt;
                               ++used3;
                               ++hopPtr3;
                            goto endI11;
//                          }
else11://                   else
//                          {
                               *hopPtr4 = oneInt;
                               ++used4;
                               ++hopPtr4;
endI11://                   }
                            ++hopPtr1;
endW7://                 }
WTest7:                  if (hopPtr1 < endPtr1) goto begW7;

                         //while (hopPtr2 < endPtr2)
                         goto WTest8;
begW8://                 {
                            oneInt = *hopPtr2;
                            //if (oneInt < minInt)
                            if (oneInt >= minInt) goto endI12;
begI12://                   {
                               minInt = oneInt;
endI12://                   }
                            //if ( (oneInt & 1) != 0 )
                            if ( (oneInt & 1) == 0 ) goto else13;
begI13://                   {
                               *hopPtr3 = oneInt;
                               ++used3;
                               ++hopPtr3;
                            goto endI13;
//                          }
else13://                   else
//                          {
                               *hopPtr4 = oneInt;
                               ++used4;
                               ++hopPtr4;
endI13://                   }
                            ++hopPtr2;
endW8://                 }
WTest8:                  if (hopPtr2 < endPtr2) goto begW8;

                      goto endI3;
//                    }
else3://              else
//                    {
                         used3 = 0;
                         used4 = 0;
endI3://              }

                      cout << comAeStr << 3 << comAfStr;
                      hopPtr = a3;
                      endPtr = hopPtr + used3;
                      //while (hopPtr < endPtr)
                      goto WTest9;
begW9://              {
                         cout << *hopPtr << ' ' << ' ';
                         ++hopPtr;
endW9://              }
WTest9:               if (hopPtr < endPtr) goto begW9;

                      cout << endl;

                      cout << comAeStr << 4 << comAfStr;
                      hopPtr = a4;
                      endPtr = hopPtr + used4;
                      //while (hopPtr < endPtr)
                      goto WTest10;
begW10://             {
                         cout << *hopPtr << ' ' << ' ';
                         ++hopPtr;
endW10://             }
WTest10:              if (hopPtr < endPtr) goto begW10;

                      cout << endl;

                      //if (used1 > 0 || used2 > 0)
                      if (used1 > 0) goto begI14;
                      if (used2 <= 0) goto endI14;
begI14://             {
                         used1 = 0;
                         used2 = 0;
                         hopPtr = a3;
                         endPtr = hopPtr + used3;
                         //while (hopPtr < endPtr)
                         goto WTest11;
begW11://                {
                            oneInt = *hopPtr;
                            //for (iPtr = a1 + used1; iPtr > a1; --iPtr)
                            iPtr = a1 + used1;
                            goto FTest1;
begF1://                    {
                               //if ( *(iPtr - 1) <= oneInt ) break;
                               if ( *(iPtr - 1) <= oneInt ) goto brk15;
                               *iPtr = *(iPtr - 1);
                               --iPtr;
endF1://                    }
FTest1:                     if (iPtr > a1) goto begF1;
brk15:

                            *iPtr = *hopPtr;
                            ++used1;
                            ++hopPtr;
endW11://                }
WTest11:                 if (hopPtr < endPtr) goto begW11;

                         hopPtr = a4;
                         endPtr = hopPtr + used4;
                         //while (hopPtr < endPtr)
                         goto WTest12;
begW12://                {
                            oneInt = *hopPtr;
                            //for (iPtr = a2 + used2; iPtr > a2; --iPtr)
                            iPtr = a2 + used2;
                            goto FTest2;
begF2://                    {
                               //if ( *(iPtr - 1) <= oneInt ) break;
                               if ( *(iPtr - 1) <= oneInt ) goto brk16;
                               *iPtr = *(iPtr - 1);
                               --iPtr;
endF2://                    }
FTest2:                     if (iPtr > a2) goto begF2;
brk16:

                            *iPtr = *hopPtr;
                            ++used2;
                            ++hopPtr;
endW12://                }
WTest12:                 if (hopPtr < endPtr) goto begW12;

                         cout << cpaA1Str;
                         hopPtr = a1;
                         endPtr = hopPtr + used1;

                         //while (0 == 0)
                         goto WTest13;
begW13://                {
                            //if (hopPtr == a4 + used4 && endPtr == a4 + used4) break;
                            ////if (hopPtr == a4 + used4 && endPtr == a4 + used4) goto brk17;
                            if (hopPtr != a4 + used4) goto nbk17;
                            if (endPtr == a4 + used4) goto brk17;
nbk17:
                            //while (hopPtr < endPtr)
                            goto WTest14;
begW14://                   {
                               cout << *hopPtr << ' ' << ' ';
                               ++hopPtr;
endW14://                   }
WTest14:                    if (hopPtr < endPtr) goto begW14;

                            cout << endl;
                            //if (endPtr == a1 + used1)
                            if (endPtr != a1 + used1) goto else18;
begI18://                   {
                               cout << comAeStr << 2 << comAfStr;
                               hopPtr = a2;
                               endPtr = hopPtr + used2;
                            goto endI18;
//                          }
else18://                   else
//                          {
                               //if (endPtr == a2 + used2)
                               if (endPtr != a2 + used2) goto else19;
begI19://                      {
                                  cout << comAeStr << 3 << comAfStr;
                                  hopPtr = a3;
                                  endPtr = hopPtr + used3;
                               goto endI19;
//                             }
else19://                      else
//                             {
                                  //if (endPtr == a3 + used3)
                                  if (endPtr != a3 + used3) goto endI20;
begI20://                         {
                                     cout << comAeStr << 4 << comAfStr;
                                     //if (used4 == 0)
                                     if (used4 != 0) goto endI21;
begI21://                            {
                                        cout << endl;
endI21://                            }
                                     hopPtr = a4;
                                     endPtr = hopPtr + used4;
endI20://                         }
endI19://                      }
                         goto WTest16;
begW16://                {
                            *hopPtr = *hopPtr1;
                            ++hopPtr1;
                            ++hopPtr;
endW16://                }
WTest16:                 if (hopPtr1 < endPtr1) goto begW16;

                         //while (hopPtr2 < endPtr2)
                         goto WTest17;
begW17://                {
                            *hopPtr = *hopPtr2;
                            ++hopPtr2;
                            ++hopPtr;
endW17://                }
WTest17:                 if (hopPtr2 < endPtr2) goto begW17;
endI14://             }

                      cout << proA1Str;
                      hopPtr = a1;
                      endPtr = hopPtr + used1;

                      //while (0 == 0)
                      goto WTest18;
begW18://             {
                         //if (hopPtr == a4 + used4 && endPtr == a4 + used4) break;
                         if (hopPtr != a4 + used4) goto nbk24;
                         if (endPtr == a4 + used4) goto brk24;
nbk24:
                         //while (hopPtr < endPtr)
                         goto WTest19;
begW19://                {
                            cout << *hopPtr << ' ' << ' ';
                            ++hopPtr;
endW19://                }
WTest19:                 if (hopPtr < endPtr) goto begW19;

                         cout << endl;
                         //if (endPtr == a1 + used1)
                         if (endPtr != a1 + used1) goto else25;
begI25://                {
                            cout << comAeStr << 2 << comAfStr;
                            hopPtr = a2;
                            endPtr = hopPtr + used2;
                         goto endI25;
//                       }
else25://                else
//                       {
                            //if (endPtr == a2 + used2)
                            if (endPtr != a2 + used2) goto else26;
begI26://                   {
                               cout << comAeStr << 3 << comAfStr;
                               hopPtr = a3;
                               endPtr = hopPtr + used3;
                            goto endI26;
//                          }
else26://                   else
//                          {
                               //if (endPtr == a3 + used3)
                               if (endPtr != a3 + used3) goto endI27;
begI27://                      {
                                  cout << comAeStr << 4 << comAfStr;
                                  //if (used4 == 0)
                                  if (used4 != 0) goto endI28;
begI28://                         {
                                     cout << endl;
endI28://                         }
                                  hopPtr = a4;
                                  endPtr = hopPtr + used4;
endI27://                      }
endI26://                   }
endI25://                }
endW18://             }
WTest18:              if (0 == 0) goto begW18;
brk24:

                      cout << endl;
                      cout << dacStr;
                      cin >> reply;
                      cout << endl;
endDW1://          }
                   //while (reply != 'n' && reply != 'N');
DWTest1:
                   if (reply == 'n') goto xitDW1;
                   if (reply != 'N') goto begDW1;
xitDW1:

                   cout << dlStr;
                   cout << '\n';
                   cout << byeStr;
                   cout << '\n';
                   cout << dlStr;
                   cout << '\n';

                   return 0;
}
endI18://                   }
endW13://                }
WTest13:                 if (0 == 0) goto begW13;
brk17:

                         used3 = 0;
                         used4 = 0;
                         //if ( (minInt & 1) != 0)
                         if ( (minInt & 1) == 0) goto else22;
begI22://                {
                            hopPtr = a3;
                            used3 = used1 + used2;
                         goto endI22;
//                       }
else22://                else
//                       {
                            hopPtr = a4;
                            used4 = used1 + used2;
endI22://                }
                         hopPtr1 = a1;
                         hopPtr2 = a2;
                         endPtr1 = hopPtr1 + used1;
                         endPtr2 = hopPtr2 + used2;
                         //while (hopPtr1 < endPtr1 && hopPtr2 < endPtr2)
                         goto WTest15;
begW15://                {
                            //if (*hopPtr1 < *hopPtr2)
                            if (*hopPtr1 >= *hopPtr2) goto else23;
begI23://                   {
                               *hopPtr = *hopPtr1;
                               ++hopPtr1;
                            goto endI23;
//                          }
else23://                   else
//                          {
                               *hopPtr = *hopPtr2;
                               ++hopPtr2;
endI23://                   }
                            ++hopPtr;
endW15://                }
WTest15:
                         if (hopPtr1 >= endPtr1) goto xitW15;
                         if (hopPtr2 < endPtr2) goto begW15;
xitW15:

                         //while (hopPtr1 < endPtr1)
