# Gender-Diversity-in-Game-of-Thrones---Case-Study
Analysis of gender diversity of the company Westeros


# Introduction
The purpose of this anaysis is to practice a primary function within People Analytics, a diversity analysis to explore whether or not women/men tend to be under-represented in certain departments within an organization. The data has been extracted from two Github repositories [link](https://github.com/jeffreylancaster/game-of-thrones/tree/master/data) and the analysis is based on the chapter 4  *Diversity Analytics* of the book *Predictive HR Analytics by Martin R Edwads & Kirsten Edwards.

# Case
The company Westeros has 13 different departments

* Stark
* Targaryen
* Baratheon
* Lannister
* Night's Watch
* Greyjoy
* Tyrell
* Wildlings
* Martell
* Frey
* Tully
* White Walkers
* Dothraki

As a new People Analyst of Westeros, one of your first fact-finding missions is to explore gender diversity within each company department (house). This is a paramount analysis, as its findings will enable Bran the broker, former CEO of Westeros and his co-founder, Tyrion Lannister, to ensure that Westeros has a richly diverse workforce.

To do so, you first collected some data from the former employees working for Westeros, their name, gender, and company department.

<details>
    <summary>Workforce</summary>

    - ID               Name       Dep         Gender
    - 1                Arya       Stark       Female
    - 2                Benjen     Stark       Male
    - 3                  Bran     Stark       Male
    - 4         Catelyn Stark     Stark       Female
    - 5                Eddard     Stark       Male
    - 6              Jon Snow     Stark       Male
    - 7                Rickon     Stark       Male
    - 8                  Robb     Stark       Male
    - 9                 Sansa     Stark       Female
    - 10            Daenerys      Targaryen   Female
    - 11               Drogon     Targaryen   Other
    - 12              Rhaegal     Targaryen   Other
    - 13             Viserion     Targaryen   Other
    - 14             Viserys      Targaryen   Male
    - 15              Joffrey     Baratheon   Male
    - 16            Myrcella      Baratheon   Female
    - 17               Renly      Baratheon   Male
    - 18               Robert     Baratheon   Male
    - 19               Selyse     Baratheon   Female
    - 20              Shireen     Baratheon   Female
    - 21              Stannis     Baratheon   Male
    - 22               Tommen     Baratheon   Male
    - 23               Gendry     Baratheon   Male
    - 24               Cersei     Lannister   Female
    - 25                Jaime     Lannister   Male
    - 26                Kevan     Lannister   Male
    - 27               Lancel     Lannister   Male
    - 28               Tyrion     Lannister   Male
    - 29                Tywin     Lannister   Male
    - 30       Alliser Thorne Night's Watch   Male
    - 31      Eddison Tollett Night's Watch   Male
    - 32                Grenn Night's Watch   Male
    - 33         Jeor Mormont Night's Watch   Male
    - 34          Karl Tanner Night's Watch   Male
    - 35        Maester Aemon Night's Watch   Male
    - 36                 Olly Night's Watch   Male
    - 37       Othell Yarwyck Night's Watch   Male
    - 38                Pypar Night's Watch   Male
    - 39      Qhorin Halfhand Night's Watch   Male
    - 40                 Rast Night's Watch   Male
    - 41        Samwell Tarly Night's Watch   Male
    - 42                Yoren Night's Watch   Male
    - 43                Balon       Greyjoy   Male
    - 44                Euron       Greyjoy   Male
    - 45                Theon       Greyjoy   Male
    - 46                 Yara       Greyjoy   Female
    - 47                Loras        Tyrell   Male
    - 48                 Mace        Tyrell   Male
    - 49             Margaery        Tyrell   Female
    - 50               Olenna        Tyrell   Female
    - 51             Baby Sam     Wildlings   Male
    - 52              Craster     Wildlings   Male
    - 53                Gilly     Wildlings   Female
    - 54       Mag the Mighty     Wildlings   Male
    - 55         Mance Rayder     Wildlings   Male
    - 56                 Osha     Wildlings   Female
    - 57          Rattleshirt     Wildlings   Male
    - 58           Thenn Warg     Wildlings   Male
    - 59   Tormund Giantsbane     Wildlings   Male
    - 60              Wun Wun     Wildlings   Male
    - 61              Ygritte     Wildlings   Female
    - 62                Doran       Martell   Male
    - 63         Ellaria Sand       Martell   Female
    - 64        Nymeria Sand       Martell    Female
    - 65           Obara Sand       Martell   Female
    - 66               Oberyn       Martell   Male
    - 67             Trystane       Martell   Male
    - 68           Tyene Sand       Martell   Female
    - 69  Black Walder Rivers          Frey   Male
    - 70               Lothar          Frey   Male
    - 71               Walder          Frey   Male
    - 72              Brynden         Tully   Male
    - 73               Edmure         Tully   Male
    - 74 Mag the Mighty Wight White Walkers   Male
    - 75       The Night King White Walkers   Male
    - 76  Wight Wildling Girl White Walkers   Female
    - 77        Wun Wun Wight White Walkers   Male
    - 78               Doreah      Dothraki   Female
    - 79                 Irri      Dothraki   Female
    - 80           Khal Drogo      Dothraki   Male
    - 81              Rakharo      Dothraki   Male
    - 82                Qhono      Dothraki   Male
</details>

We have a workforce of 82 employees located in 13 different departments. Let's explore more in depth the frequency of employees within each department regardless of their gender.

Stark|Targaryen|Baratheon|Lannister|Night's Watch| Greyjoy|Tyrell|Wildlings|Martell|Frey|Tully|White Walkers|Dothraki 
-----|---------|---------|---------|-------------|--------|------|---------|-------|----|-----|-------------|-------- 
9|5|9|6|13|4|4|11|7|3|2|4|5   

The department **Night's Watch** is the one with more employess, in total 13 accounting for 16% of the total workforce, whereas the least is **Tully** with just 1 employees accounting for 2% of the total workforce.

 HERE GOES THE PLOT

Now, let's explore gender frequency regardless of employees department.

Female|Male|Other
21|58|3

We have a workforce strongly represented by 58 **Males**, accounting for 71% of the total workforce. Only 21 employees of Westeros are **Female** (26%)  and 3 employees prefer not to state their gender **(Other)** (4%).

HERE GOES THE PLOT

Let's create a contingency table to better understand the frequency of department by house.

Dep|Female|Male|Other
---|------|----|-----
Stark|3|6|0
Targaryen|1|1|3
Baratheon|3|6|0
Lannister|1|5|0
Night's Watch|0|13|0
Greyjoy|1|3|0
Tyrell|2|2|0
Wildlings|3|8|0
Martell|4|3|0
Frey|0|3|0
Tully|0|2|0
White Walkers|1|3|0
Dothraki|2|3|0 
   
           

