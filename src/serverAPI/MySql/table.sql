-- create database myCode;
use myCode;

-- 用户表
drop table if exists users;
create table users(
	userid char(10) primary key,
	username varchar(30),
	password varchar(50),
	phone varchar(30) null,
	email varchar(30) null,
    emailtype int
);

-- 邮箱类别表
drop table if exists emailtypes;
create table emailtypes(
	emailid int,
    emailname varchar(20)
);

-- 题目表
drop table if exists problems;
create table problems(
	problemid char(10) primary key,
    title varchar(20),
    msg varchar(500),
    input1 varchar(20),
    input2 varchar(20),
    output1 varchar(20),
    output2 varchar(20),
    rankid int,
    labels varchar(20),
    type int,
    languageid int,
    createtime date,
    func varchar(30) null,
    arguemnts varchar(30),
    template varchar(30) null
);

-- 题解表
drop table if exists solutions;
create table solutions(
	solutionid int primary key,
    problemid char(10),
    isofficial int,  
    userid char(10),
    good int,
    look int,
    language int,
    createtime date,
    code varchar(20) null
);

-- 题目回复表
drop table if exists replys;
create table replys(
	problemid char(10),
    replyid char(10) primary key,
    userid char(10),
    content varchar(2000),
    good int,
    look int,
    createtime varchar(20),
    isCode int,
    code varchar(20)
);

-- 提交记录表
drop table if exists submitItems;
create table submitItems(
	problemid char(20),
    submitid varchar(20) primary key,
    userid char(10),
    time varchar(20),
    ispass int,
    createtime varchar(10),
    code varchar(20),
    language int
);

-- 类别表
drop table if exists problemtypes;
create table problemtypes(
	typeid int primary key,
    text varchar(10)
);

-- 难度表 
drop table if exists problemranks;
create table problemranks(
	rankid int primary key,
    text varchar(10)
);

-- 标签表 
drop table if exists problemlabels;
create table problemlabels(
	labelid int primary key,
    text varchar(10),
    typeid int 
);

-- 回复评论表
drop table if exists replycomments;
create table replycomments(
	commentid char(10) primary key,
	replyid char(10),
    userid char(10),
    replyuserid char(10),
    replyusername varchar(10),
    level int,
    parentid char(10),
    solutionid int,
    createtime varchar(10)
);

-- 题解评论表 
drop table if exists solutioncomments;
create table solutioncomments(
	commentid char(10) primary key,
	replyid char(10),
    userid char(10),
    replyuserid char(10),
    replyusername varchar(10),
    level int,
    parentid char(10),
    createtime varchar(10)
);

-- 语言表
drop table if exists languages;
create table languages(
	languageid int primary key,
    text varchar(10)
);
