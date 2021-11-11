#include<iostream>
using namespace std;
int checkwin(char* board1[3][3]);


int checkwin(char board1[3][3])
{
    int p1 = 0,i, p2 = 0;
    char pl1 = 'X', pl2 ='O';
     for(i=0;i<3;i++)
     {
         
         if(board1[i][0] == pl1 && board1[i][0] == board1[i][1] && board1[i][1] == board1[i][2])
         {
            p1++;
         }

         else if(board1[i][0] == pl2 && board1[i][0] == board1[i][1] && board1[i][1] == board1[i][2])
         {
            p2++; 
         }
         if(p1 == 1 || p2 == 1)
         {
             break;
         }

     }

     for(i=0;i<3;i++)
     {
         
         if(board1[0][i] == pl1 && board1[0][i] == board1[1][i] && board1[1][i] == board1[2][i])
         {
            p1++;
         }

         else if(board1[i][0] == pl2 && board1[i][0] == board1[i][1] && board1[i][1] == board1[i][2])
         {
            p2++; 
         }
         if(p1 == 1 || p2 == 1)
         {
             break;
         }

     }

     if (board1[0][0] == pl1 && board1[0][0] == board1[1][1] && board1[1][1] == board1[2][2])
     {
         p1++;
     }
     else if (board1[0][2] == pl1 && board1[0][2] == board1[1][1] && board1[1][1] == board1[2][0])
     {
         p1++;
     }
     else if (board1[0][0] == pl2 && board1[0][0] == board1[1][1] && board1[1][1] == board1[2][2])
     {
         p2++;
     }
     else if (board1[0][2] == pl2 && board1[0][2] == board1[1][1] && board1[1][1] == board1[2][0])
     {
         p2++;
     }

    if(p1 == 1)
    {
        return 0;
    }

    else if(p2 == 1)
    {
        return 1;
    }
    else
    {
        return -1;
    }

}

int main(){
    int move[9] = {0,1,2,3,4,5,6,7,8};
    int i, j, moveindex, p1 = 0, p2 = 0, poop, a = 0,b = 0;;
    char pl1 = 'X', pl2 ='O';

    
    char board[3][3];
    

    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            board[i][j] = ' ';
        }
    }
    


    for(i=0;i<=4;i++)
    {
        
        cout<<"Player 1 move :  ";
        
        cin>>moveindex;
        a = move[moveindex]/3;
        b = move[moveindex]%3;
        board[a][b] = pl1;

        cout<<board[0][0] << "   |   " << board[0][1] << "   |   " << board[0][2] << "\n";
        cout<<"_________________\n\n";
        cout<<board[1][0] << "   |   " << board[1][1] << "   |   " << board[1][2] << "\n";
        cout<<"_________________\n\n";
        cout<<board[2][0] << "   |   " << board[2][1] << "   |   " << board[2][2] << "\n";


        poop = checkwin(board);
        if(poop == 0 || i==4)
        {
            break;}
        
        cout<<"Player 2 move :  ";
        cin>>moveindex;
        a = move[moveindex]/3;
        b = move[moveindex]%3;
        board[a][b] = pl2;

        cout<<board[0][0] << "   |   " << board[0][1] << "   |   " << board[0][2] << "\n";
        cout<<"_________________\n\n";
        cout<<board[1][0] << "   |   " << board[1][1] << "   |   " << board[1][2] << "\n";
        cout<<"_________________\n\n";
        cout<<board[2][0] << "   |   " << board[2][1] << "   |   " << board[2][2] << "\n";

        poop = checkwin(board);
        if(poop == 1)
        {
            break;}
        


    }
    if(poop == 0)
    {cout<<"Player 1 is Winner";}
    else if(poop == 1)
    {cout<<"Player 2 is Winner";}
    else
    {cout<<"Nobody Won";}
    return 0;
}