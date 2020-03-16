#! /bin/bash 
r=3
c=3
player=1
declare -A board 
gameBoard()
{
 for ((i=1 ;i<=3 ; i++))
 do
	for((j=1;j<=3;j++))
	do
	board[$i,$j]=_
	done
done
}

displayBoard()
{
for((i=1;i<=3;i++))
do
	for(( j=1;j<=3;j++))
	do
	echo -e "${board[$i,$j]} \c"
	done
	echo
done
}

checkDraw()
{
dash=_
k=0
for ((i=1 ; i <= 3 ;i++ ))
do
	for (( j=1;j<=3;j++))
	do
	if [[ ${board[$i,$j]} == $dash ]]
	then
	let k++
	fi
	done
done
if (( $k == 0 ))
then 
clear
echo Game is Draw!
bash tttgame.sh
fi
}

checkWinner()
{
r1="${board[1,1]}${board[1,2]}${board[1,3]}"
r2="${board[2,1]}${board[2,2]}${board[2,3]}"
r3="${board[3,1]}${board[3,2]}${board[3,3]}"
c1="${board[1,1]}${board[2,1]}${board[3,1]}"
c2="${board[1,2]}${board[2,2]}${board[3,2]}"
c3="${board[1,3]}${board[2,3]}${board[3,3]}"
d1="${board[1,1]}${board[2,2]}${board[3,3]}"
d2="${board[1,3]}${board[2,2]}${board[3,1]}"
playerx="XXX"
playero="OOO"

if [[ $r1 == $playerx || $r2 == $playerx || $r3 == $playerx || $c1 == $playerx || $c2 == $playerx || $c3 == $playerx || $d1 == $playerx || $d2 == $playerx ]]
then
echo Player X win!
exit
elif [[ $r1 == $playero || $r2 == $playero || $r3 == $playero || $c1 == $playero || $c2 == $playero || $c3 == $playero || $d1 == $playero || $d2 == $playero ]]
then
echo Player O win!
exit
fi
}

echo "welcome to 2 player TicTacToe game"
gameBoard
displayBoard

while (( 1 ))
do
if (( $player == 1 ))
then
echo "player X turn"
else
echo "player O turn"
fi
read -p 'enter row: ' r
read -p 'enter col: ' c

while (( 1 ))
do
if [ $r -ge 4 -o $r -le 0 -o $c -ge 4 -o $c -le 0 ]
then 
echo "row and col value should be between 1 and 3 enter again..:"
read -p 'enter row: ' r
read -p 'enter col: ' c
else
echo update
break
fi
done
clear

if (($player == 1))
then
let player=0
board[$r,$c]=X
else
let player=1
board[$r,$c]=O
fi

displayBoard
checkWinner
checkDraw
done
