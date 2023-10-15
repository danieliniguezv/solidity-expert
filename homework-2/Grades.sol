//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;

contract Grades {
    int8[] public grade;
    uint256 public grades;
    
    function addGrade(int8 _grade) public {
        grade.push(_grade);
        grades = grade.length;
    }

    function deleteGrade(uint256 _index) public {
        delete grade[_index];
        if(_index == grades - 1) {
            grade.pop();
            grades = grade.length;
        } else {
            for(uint256 _i = 0; _i < grades; _i++) {
            if(grade[_i] == 0) {
                for(uint256 _j = 0; _j < ((grades - 1) - _index); _j++) {
                    grade[_i] = grade[_i + 1];
                    _i++;
                }
            }
        }
        grade.pop();
        grades = grade.length;
        }
    }
}
