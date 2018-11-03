{\rtf1\ansi\ansicpg1252\cocoartf1671
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 pragma solidity ^0.4.0;\
contract HelloWorld \{\
    string message;\
    \
    constructor  (string _msg) public payable \{\
        message = _msg;\
    \}\
    \
    function setMessage(string _msg) public \{\
        message = _msg;\
    \}\
    \
    function getMessage() constant returns(string) \{\
        return message;\
    \}\
    \
    function multiply(int arg1, int arg2) constant returns(int) \{\
        return arg1 * arg2;\
    \}\
\}}