import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A263600: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 filled by rows with each element moved a city block distance of 0 or 2, and rows and columns in increasing lexicographic order.

The programs for A263600, there is no canonical definition to state claims against.
-/

/-! ## A263600.P11822921827692943862

`A263602(∑[n+3]+1)`
-/

namespace A263600.P11822921827692943862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263600.P11822921827692943862

/-!
# A263601: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 filled by rows with each element moved a city block distance of 0 or 2, and rows and columns in increasing lexicographic order.

The programs for A263601, there is no canonical definition to state claims against.
-/

/-! ## A263601.P13720933929465098726

`A263602(A141214(n+1))`
-/

namespace A263601.P13720933929465098726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (A141214 (n + 1)).toNat

end

end A263601.P13720933929465098726

/-! ## A263601.P4802496281304805495

`A263602(A027379(n+2))`
-/

namespace A263601.P4802496281304805495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (A027379 (n + 2)).toNat

end

end A263601.P4802496281304805495

/-!
# A263602: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 filled by rows with each element moved a city block distance of 0 or 2, and rows and columns in increasing lexicographic order.

The programs for A263602, there is no canonical definition to state claims against.
-/

/-! ## A263602.P8598339909210947302

`n*A240178(a(n-1))` with `a(0)=2, a(1)=7`
-/

namespace A263602.P8598339909210947302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  (n : ℤ) * A240178 (a (n - 1)).toNat

end

end A263602.P8598339909210947302

/-!
# A263603: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 filled by rows with each element moved a city block distance of 0 or 2, and rows and columns in increasing lexicographic order.

The programs for A263603, there is no canonical definition to state claims against.
-/

/-! ## A263603.P17486188931770154110

`A263602(∑[n]+1)`
-/

namespace A263603.P17486188931770154110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263603.P17486188931770154110

/-! ## A263603.P10888770830811590736

`A263602(A000124(n))+char[10]`
-/

namespace A263603.P10888770830811590736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263603.P10888770830811590736

/-! ## A263603.P17366894290377093936

`record[A263602(C(A029363(n), 2)+1)]`
-/

namespace A263603.P17366894290377093936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (Nat.choose (A029363 n).toNat 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263603.P17366894290377093936

/-! ## A263603.P4081893582230921294

`record[A010054(n)*A263602(n+1)]`
-/

namespace A263603.P4081893582230921294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263603.P4081893582230921294

/-! ## A263603.P11862208601966568962

`record[gcd(A180662(n), A263602(n+1))]`
-/

namespace A263603.P11862208601966568962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180662 n) (A263602 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263603.P11862208601966568962

/-!
# A263604: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 filled by rows with each element moved a city block distance of 0 or 2, and rows and columns in increasing lexicographic order.

The programs for A263604, there is no canonical definition to state claims against.
-/

/-! ## A263604.P17974040641029264188

`A263602(∑[n+1]+2)`
-/

namespace A263604.P17974040641029264188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263604.P17974040641029264188

/-! ## A263604.P10104689618133468666

`A263602(A000096(n)+3)+A007814(2*n+3)`
-/

namespace A263604.P10104689618133468666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (A000096 n + 3).toNat + A007814 (2 * n + 3)

end

end A263604.P10104689618133468666

/-! ## A263604.P15839905968548938961

`A263602(A000096(n)+3)%A263645(3*n+4)`
-/

namespace A263604.P15839905968548938961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263602 (A000096 n + 3).toNat) (A263645 (3 * n + 4))

end

end A263604.P15839905968548938961

/-!
# A263605: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 filled by rows with each element moved a city block distance of 0 or 2, and rows and columns in increasing lexicographic order.

The programs for A263605, there is no canonical definition to state claims against.
-/

/-! ## A263605.P16241747134265450481

`A263602(∑[n+2]+4)`
-/

namespace A263605.P16241747134265450481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263605.P16241747134265450481

/-! ## A263605.P14302296036720161583

`A263602(A167614(n+1))+A006927(n)`
-/

namespace A263605.P14302296036720161583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (A167614 (n + 1)).toNat + A006927 n

end

end A263605.P14302296036720161583

/-! ## A263605.P9732588856664161868

`A263602(A167614(n+1))+A008838(n)`
-/

namespace A263605.P9732588856664161868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (A167614 (n + 1)).toNat + A008838 n

end

end A263605.P9732588856664161868

/-!
# A263606: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 filled by rows with each element moved a city block distance of 0 or 2, and rows and columns in increasing lexicographic order.

The programs for A263606, there is no canonical definition to state claims against.
-/

/-! ## A263606.P2206361198216764859

`A263602(∑[n+3]+7)`
-/

namespace A263606.P2206361198216764859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A263606.P2206361198216764859

/-!
# A263607: Base 3 numbers whose square is a palindrome in base 3.

The programs for A263607, there is no canonical definition to state claims against.
-/

/-! ## A263607.P4944795340586846720

`A007089(A029984(n+1))`
-/

namespace A263607.P4944795340586846720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A029984 (n + 1)).toNat

end

end A263607.P4944795340586846720

/-! ## A263607.P17325498949156791123

`A007089(sqrt(A029985(n+1)))`
-/

namespace A263607.P17325498949156791123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway (Real.sqrt (A029985 (n + 1) : ℝ))).toNat

end

end A263607.P17325498949156791123

/-! ## A263607.P6965805281198264470

`A007089(A029985(n+1)^(A011782(n)/A000079(n)))`
-/

namespace A263607.P6965805281198264470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway ((A029985 (n + 1) : ℝ) ^ ((A011782 n : ℚ) / (A000079 n : ℚ) : ℝ))).toNat

end

end A263607.P6965805281198264470

/-! ## A263607.P5295071101826745698

`A007089(A029985(n+1)^(A072706(n)/A032302(n)))`
-/

namespace A263607.P5295071101826745698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway ((A029985 (n + 1) : ℝ) ^ ((A072706 n : ℚ) / (A032302 n : ℚ) : ℝ))).toNat

end

end A263607.P5295071101826745698

/-!
# A263608: Palindromes which are base-3 representations of squares.

The programs for A263608, there is no canonical definition to state claims against.
-/

/-! ## A263608.P956323827461790227

`A001738(A029984(n+1))`
-/

namespace A263608.P956323827461790227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001738 (A029984 (n + 1)).toNat

end

end A263608.P956323827461790227

/-! ## A263608.P6876955830553326140

`A001738(sqrt(A029985(n+1)))`
-/

namespace A263608.P6876955830553326140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001738 (SequenceMachineLib.roundAway (Real.sqrt (A029985 (n + 1) : ℝ))).toNat

end

end A263608.P6876955830553326140

/-! ## A263608.P15267776851931521841

`A001738(A029985(n+1)^(A011782(n)/A000079(n)))`
-/

namespace A263608.P15267776851931521841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001738 (SequenceMachineLib.roundAway ((A029985 (n + 1) : ℝ) ^ ((A011782 n : ℚ) / (A000079 n : ℚ) : ℝ))).toNat

end

end A263608.P15267776851931521841

/-! ## A263608.P6231345251381728756

`∩[A118594(n+1), A001738(n)]`
-/

namespace A263608.P6231345251381728756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001738 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263608.P6231345251381728756

/-!
# A263609: Base-4 numbers whose square is a palindrome in base 4.

The programs for A263609, there is no canonical definition to state claims against.
-/

/-! ## A263609.P436348278459260900

`A007090(A029986(n+1))`
-/

namespace A263609.P436348278459260900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A029986 (n + 1)).toNat

end

end A263609.P436348278459260900

/-! ## A263609.P3665068138502072576

`A007090(sqrt(A029987(n+1)))`
-/

namespace A263609.P3665068138502072576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway (Real.sqrt (A029987 (n + 1) : ℝ))).toNat

end

end A263609.P3665068138502072576

/-! ## A263609.P15531371627638834231

`A007090(A029987(n+1)^(1/2))`
-/

namespace A263609.P15531371627638834231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway ((A029987 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A263609.P15531371627638834231

/-! ## A263609.P15235932718347591683

`A007090((A029987(Δ[n²]-n)^(1/2))%A002110(n))`
-/

namespace A263609.P15235932718347591683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (Int.tmod (SequenceMachineLib.roundAway ((A029987 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ))) (A002110 n)).toNat

end

end A263609.P15235932718347591683

/-! ## A263609.P9015085888105159048

`A007090(A029987(Δ[n²]-n)^(1/2))%A062199(n)`
-/

namespace A263609.P9015085888105159048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007090 (SequenceMachineLib.roundAway ((A029987 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat) (A062199 n)

end

end A263609.P9015085888105159048

/-!
# A263610: Palindromes in base 4 which are also squares.

The programs for A263610, there is no canonical definition to state claims against.
-/

/-! ## A263610.P6007472661608256172

`A001739(A029986(n+1))`
-/

namespace A263610.P6007472661608256172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001739 (A029986 (n + 1)).toNat

end

end A263610.P6007472661608256172

/-! ## A263610.P13923236873659749606

`A001739(sqrt(A029987(n+1)))`
-/

namespace A263610.P13923236873659749606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001739 (SequenceMachineLib.roundAway (Real.sqrt (A029987 (n + 1) : ℝ))).toNat

end

end A263610.P13923236873659749606

/-! ## A263610.P589322150802077892

`A001739((A029987(n+1)^(1/2))%A185505(n+1))`
-/

namespace A263610.P589322150802077892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001739 (Int.tmod (SequenceMachineLib.roundAway ((A029987 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))) (A185505 (n + 1))).toNat

end

end A263610.P589322150802077892

/-! ## A263610.P4181298441623299703

`A001739(A029987(n+1)^(A000124(n)/A014206(n)))`
-/

namespace A263610.P4181298441623299703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001739 (SequenceMachineLib.roundAway ((A029987 (n + 1) : ℝ) ^ ((A000124 n : ℚ) / (A014206 n : ℚ) : ℝ))).toNat

end

end A263610.P4181298441623299703

/-!
# A263611: Base 5 numbers whose square is a palindrome in base 5.

The programs for A263611, there is no canonical definition to state claims against.
-/

/-! ## A263611.P9319899866084138798

`A007091(A029988(n+1))`
-/

namespace A263611.P9319899866084138798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A029988 (n + 1)).toNat

end

end A263611.P9319899866084138798

/-! ## A263611.P6112398052408127603

`A007091(sqrt(A029989(n+1)))`
-/

namespace A263611.P6112398052408127603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.roundAway (Real.sqrt (A029989 (n + 1) : ℝ))).toNat

end

end A263611.P6112398052408127603

/-! ## A263611.P18436857876081823081

`A014263(A029988(n+1)+1)/2`
-/

namespace A263611.P18436857876081823081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (A029988 (n + 1) + 1).toNat : ℚ) / 2

end

end A263611.P18436857876081823081

/-! ## A263611.P17158796829010557824

`A007091(floor(sqrt(A029989(1-(n-2*n)))))`
-/

namespace A263611.P17158796829010557824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (Int.sqrt (A029989 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)).toNat

end

end A263611.P17158796829010557824

/-! ## A263611.P4679253590173823123

`A007091(A029989(n+1)^(A011782(n)/A000079(n)))`
-/

namespace A263611.P4679253590173823123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.roundAway ((A029989 (n + 1) : ℝ) ^ ((A011782 n : ℚ) / (A000079 n : ℚ) : ℝ))).toNat

end

end A263611.P4679253590173823123

/-!
# A263612: Palindromes in base 5 which are also squares.

The programs for A263612, there is no canonical definition to state claims against.
-/

/-! ## A263612.P52491851681620380

`A001740(A029988(n+1))`
-/

namespace A263612.P52491851681620380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001740 (A029988 (n + 1)).toNat

end

end A263612.P52491851681620380

/-! ## A263612.P11890627203994289705

`A001740(sqrt(A029989(n+1)))`
-/

namespace A263612.P11890627203994289705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001740 (SequenceMachineLib.roundAway (Real.sqrt (A029989 (n + 1) : ℝ))).toNat

end

end A263612.P11890627203994289705

/-! ## A263612.P2919913949089861127

`A001740(floor(sqrt(A029989(1-(n-2*n)))))`
-/

namespace A263612.P2919913949089861127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001740 (Int.sqrt (A029989 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)).toNat

end

end A263612.P2919913949089861127

/-! ## A263612.P8392010878855544904

`A001740(A029989(n+1)^(A011782(n)/A000079(n)))`
-/

namespace A263612.P8392010878855544904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001740 (SequenceMachineLib.roundAway ((A029989 (n + 1) : ℝ) ^ ((A011782 n : ℚ) / (A000079 n : ℚ) : ℝ))).toNat

end

end A263612.P8392010878855544904

/-! ## A263612.P242968969041963286

`A001740(A029989(n+1)^(A000124(n)/A014206(n)))`
-/

namespace A263612.P242968969041963286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001740 (SequenceMachineLib.roundAway ((A029989 (n + 1) : ℝ) ^ ((A000124 n : ℚ) / (A014206 n : ℚ) : ℝ))).toNat

end

end A263612.P242968969041963286

/-!
# A263613: Palindromic numbers in base 4 that are cubes.

The programs for A263613, there is no canonical definition to state claims against.
-/

/-! ## A263613.P10209303067242087312

`xor(floor(10^(n-1)), floor(atan(n)))^3`
-/

namespace A263613.P10209303067242087312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ⌊Real.arctan (n : ℝ)⌋ ^ 3

end

end A263613.P10209303067242087312

/-! ## A263613.P13009753525445716652

`or(floor(10^(n-1)), ceil(tanh(n)))^3`
-/

namespace A263613.P13009753525445716652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ⌈Real.tanh (n : ℝ)⌉ ^ 3

end

end A263613.P13009753525445716652

/-! ## A263613.P4354240529210701661

`or(floor(10^(n-1)), char[A007318(n)])^3`
-/

namespace A263613.P4354240529210701661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) ^ 3

end

end A263613.P4354240529210701661

/-! ## A263613.P16697308687789894548

`A054841(record[A064426(n+1)])^3`
-/

namespace A263613.P16697308687789894548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 3

end

end A263613.P16697308687789894548

/-! ## A263613.P18136869786447199493

`A057148(A029744(n+1))^3`
-/

namespace A263613.P18136869786447199493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (A029744 (n + 1)).toNat ^ 3

end

end A263613.P18136869786447199493

/-!
# A263614: a(2n) = A000125(n), a(2n+1) = 2*a(2n).

The programs for A263614, the canonical program `A263614.P11226214726586360886` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263614 has offset 0).

The definition of A263614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263614.P11226214726586360886

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=2, a(5)=4, a(6)=4, a(7)=8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A263614

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P11226214726586360886.Spec : Prop :=
  ∀ n, P11226214726586360886.a n = A263614 n

theorem P11226214726586360886.correct : P11226214726586360886.Spec := by
  intro n
  simp only [A263614]

end A263614

/-! ## A263614.P2145901241913862073

`A046127(A004526(n))/A040001(n)`
-/

namespace A263614.P2145901241913862073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046127 (A004526 n).toNat : ℚ) / (A040001 n : ℚ)

end

end A263614.P2145901241913862073

namespace A263614

/-- `A046127(A004526(n))/A040001(n)` -/
def P2145901241913862073.Spec : Prop :=
  ∀ n, P2145901241913862073.a n = (A263614 n : ℚ)

end A263614

/-! ## A263614.P16110436357040388338

`A046127(A004526(n))/Δ[A007494(n)]`
-/

namespace A263614.P16110436357040388338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046127 (A004526 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A263614.P16110436357040388338

namespace A263614

/-- `A046127(A004526(n))/Δ[A007494(n)]` -/
def P16110436357040388338.Spec : Prop :=
  ∀ n, P16110436357040388338.a n = (A263614 n : ℚ)

end A263614

/-! ## A263614.P7023262149381069067

`A046127(A004526(n))/(2-A000035(n))`
-/

namespace A263614.P7023262149381069067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046127 (A004526 n).toNat : ℚ) / (2 - A000035 n : ℚ)

end

end A263614.P7023262149381069067

namespace A263614

/-- `A046127(A004526(n))/(2-A000035(n))` -/
def P7023262149381069067.Spec : Prop :=
  ∀ n, P7023262149381069067.a n = (A263614 n : ℚ)

end A263614

/-! ## A263614.P16200820539481429702

`A000034(n)/2*A046127(A004526(n))`
-/

namespace A263614.P16200820539481429702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A046127 (A004526 n).toNat : ℚ)

end

end A263614.P16200820539481429702

namespace A263614

/-- `A000034(n)/2*A046127(A004526(n))` -/
def P16200820539481429702.Spec : Prop :=
  ∀ n, P16200820539481429702.a n = (A263614 n : ℚ)

end A263614

/-! ## A263614.P6950809351998576652

`A046127(A004526(n))/A000034(n+1)`
-/

namespace A263614.P6950809351998576652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046127 (A004526 n).toNat : ℚ) / (A000034 (n + 1) : ℚ)

end

end A263614.P6950809351998576652

namespace A263614

/-- `A046127(A004526(n))/A000034(n+1)` -/
def P6950809351998576652.Spec : Prop :=
  ∀ n, P6950809351998576652.a n = (A263614 n : ℚ)

end A263614

/-! ## A263614.P6340417737266271572

`A046127(A004526(n))/Δ[A267528(n+1)]`
-/

namespace A263614.P6340417737266271572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046127 (A004526 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A263614.P6340417737266271572

namespace A263614

/-- `A046127(A004526(n))/Δ[A267528(n+1)]` -/
def P6340417737266271572.Spec : Prop :=
  ∀ n, P6340417737266271572.a n = (A263614 n : ℚ)

end A263614

/-! ## A263614.P5900956723651994239

`A029578(A007290(A004526(n))+n)`
-/

namespace A263614.P5900956723651994239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A007290 (A004526 n).toNat + (n : ℤ)).toNat

end

end A263614.P5900956723651994239

namespace A263614

/-- `A029578(A007290(A004526(n))+n)` -/
def P5900956723651994239.Spec : Prop :=
  ∀ n, P5900956723651994239.a n = A263614 n

end A263614

/-!
# A263615: Partial sums of A263614 starting at n=2.

The programs for A263615, the canonical program `A263615.P3791299394751044341` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263615 has offset 2).

The definition of A263615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263615.P9991315014315607230

`∑[A000125(A065033(n))*A040001(n)]`
-/

namespace A263615.P9991315014315607230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A065033 n).toNat * A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263615.P9991315014315607230

namespace A263615

/-- `∑[A000125(A065033(n))*A040001(n)]` -/
def P9991315014315607230.Spec : Prop :=
  ∀ n, P9991315014315607230.a n = A263615 (n + 2)

end A263615

/-! ## A263615.P3791299394751044341

`∑[A263614(n+3)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263615

/-- `∑[A263614(n+3)]` -/
def P3791299394751044341.Spec : Prop :=
  ∀ n, P3791299394751044341.a n = A263615 (n + 2)

theorem P3791299394751044341.correct : P3791299394751044341.Spec := by
  intro n
  simp only [A263615, Nat.add_sub_cancel]

end A263615

/-! ## A263615.P14588653624241049276

`a(n-1)+A263614(n+3)%A000583(n)` with `a(0)=2, a(1)=4`
-/

namespace A263615.P14588653624241049276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + Int.tmod (A263614 (n + 3)) (A000583 n)

end

end A263615.P14588653624241049276

namespace A263615

/-- `a(n-1)+A263614(n+3)%A000583(n)` -/
def P14588653624241049276.Spec : Prop :=
  ∀ n, P14588653624241049276.a n = A263615 (n + 2)

end A263615

/-! ## A263615.P678760094436054303

`A330996(A315398(n)+A008864(n+1))`
-/

namespace A263615.P678760094436054303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330996 (A315398 n + A008864 (n + 1)).toNat

end

end A263615.P678760094436054303

namespace A263615

/-- `A330996(A315398(n)+A008864(n+1))` -/
def P678760094436054303.Spec : Prop :=
  ∀ n, P678760094436054303.a n = A263615 (n + 2)

end A263615

/-! ## A263615.P13290241730440263204

`A000196(A000032(n+1)*A153192(n+1))`
-/

namespace A263615.P13290241730440263204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000032 (n + 1) * A153192 (n + 1)).toNat

end

end A263615.P13290241730440263204

namespace A263615

/-- `A000196(A000032(n+1)*A153192(n+1))` -/
def P13290241730440263204.Spec : Prop :=
  ∀ n, P13290241730440263204.a n = A263615 (n + 2)

end A263615

/-!
# A263616: Number of n-digit numbers whose square is a palindrome.

The programs for A263616, there is no canonical definition to state claims against.
-/

/-! ## A263616.P2521974982183698301

`A263618(2*(n+1))+A263618(Δ[n²])`
-/

namespace A263616.P2521974982183698301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263618 (2 * (n + 1)) + A263618 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A263616.P2521974982183698301

/-!
# A263617: Number of numbers with at most n digits whose square is a palindrome.

The programs for A263617, there is no canonical definition to state claims against.
-/

/-! ## A263617.P15340746722287471424

`∑[A263616(n+1)]`
-/

namespace A263617.P15340746722287471424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263617.P15340746722287471424

/-! ## A263617.P1507831007342778120

`a(n-1)+A263616(n+1)%A062320(n)` with `a(0)=4`
-/

namespace A263617.P1507831007342778120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + Int.tmod (A263616 (n + 1)) (A062320 n)

end

end A263617.P1507831007342778120

/-! ## A263617.P8216441154804735889

`A263619(2*(n+1))`
-/

namespace A263617.P8216441154804735889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263619 (2 * (n + 1))

end

end A263617.P8216441154804735889

/-! ## A263617.P16345223543338855798

`record[C(A263619(n+1), (n%2)^n)]`
-/

namespace A263617.P16345223543338855798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A263619 (n + 1)).toNat ((n % 2) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263617.P16345223543338855798

/-! ## A263617.P3252282283679951655

`record[A263619(A099375(n)+1)]`
-/

namespace A263617.P3252282283679951655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263619 (A099375 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263617.P3252282283679951655

/-!
# A263619: Number of palindromic squares with at most n digits.

The programs for A263619, there is no canonical definition to state claims against.
-/

/-! ## A263619.P13873091444368473670

`∑[A263618(n+1)]`
-/

namespace A263619.P13873091444368473670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263619.P13873091444368473670

/-!
# A263620: Number of nonzero palindromic squares with at most 2n digits.

The programs for A263620, there is no canonical definition to state claims against.
-/

/-! ## A263620.P10588453284974772135

`A263617(n+1)-1`
-/

namespace A263620.P10588453284974772135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263617 (n + 1) - 1

end

end A263620.P10588453284974772135

/-! ## A263620.P12770914528069787958

`∑[A263616(n+1)]-1`
-/

namespace A263620.P12770914528069787958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A263620.P12770914528069787958

/-! ## A263620.P8144109636272162924

`A263619(2*(n+1))-1`
-/

namespace A263620.P8144109636272162924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263619 (2 * (n + 1)) - 1

end

end A263620.P8144109636272162924

/-! ## A263620.P17057002695725213722

`A023443(A263617(n+1))`
-/

namespace A263620.P17057002695725213722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A263617 (n + 1)).toNat

end

end A263620.P17057002695725213722

/-! ## A263620.P12808713128985581990

`A065423(2*A263617(n+1))`
-/

namespace A263620.P12808713128985581990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A263617 (n + 1)).toNat

end

end A263620.P12808713128985581990

/-!
# A263622: a(n) = (3^(n+1)-2^(n+2)+2*n+1)/4.

The programs for A263622, the canonical program `A263622.P12815839182015661891` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263622 has offset 0).

The definition of A263622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263622.P12815839182015661891

`7*a(n-1)-17*a(n-2)+17*a(n-3)-6*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=14`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A263622

/-- `7*a(n-1)-17*a(n-2)+17*a(n-3)-6*a(n-4)` -/
def P12815839182015661891.Spec : Prop :=
  ∀ n, P12815839182015661891.a n = A263622 n

theorem P12815839182015661891.correct : P12815839182015661891.Spec := by
  intro n
  simp only [A263622]

end A263622

/-! ## A263622.P17579014041478217408

`(3^(n+1)-2^(n+2)+2*n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263622.P17579014041478217408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) - (2 ^ (n + 2) : ℤ) + (2 * n : ℤ) + 1 : ℚ) / 4

end

end A263622.P17579014041478217408

namespace A263622

/-- `(3^(n+1)-2^(n+2)+2*n+1)/4` -/
def P17579014041478217408.Spec : Prop :=
  ∀ n, P17579014041478217408.a n = (A263622 n : ℚ)

end A263622

/-! ## A263622.P8228629642578870264

`floor(A036550(n)/2)`
-/

namespace A263622.P8228629642578870264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036550 n : ℚ) / 2⌋

end

end A263622.P8228629642578870264

namespace A263622

/-- `floor(A036550(n)/2)` -/
def P8228629642578870264.Spec : Prop :=
  ∀ n, P8228629642578870264.a n = A263622 n

end A263622

/-! ## A263622.P5135464364179137974

`A047926(n)-2^n`
-/

namespace A263622.P5135464364179137974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 n - (2 ^ n : ℤ)

end

end A263622.P5135464364179137974

namespace A263622

/-- `A047926(n)-2^n` -/
def P5135464364179137974.Spec : Prop :=
  ∀ n, P5135464364179137974.a n = A263622 n

end A263622

/-! ## A263622.P10870759937005641329

`∑[A007051(n)]-2^n`
-/

namespace A263622.P10870759937005641329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A263622.P10870759937005641329

namespace A263622

/-- `∑[A007051(n)]-2^n` -/
def P10870759937005641329.Spec : Prop :=
  ∀ n, P10870759937005641329.a n = A263622 n

end A263622

/-! ## A263622.P4035049296326880831

`∑[∑[ceil(3^(n-1))]]-A000079(n)`
-/

namespace A263622.P4035049296326880831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000079 n

end

end A263622.P4035049296326880831

namespace A263622

/-- `∑[∑[ceil(3^(n-1))]]-A000079(n)` -/
def P4035049296326880831.Spec : Prop :=
  ∀ n, P4035049296326880831.a n = A263622 n

end A263622

/-! ## A263622.P18136141192249345006

`A140420(n)+A004526(n)`
-/

namespace A263622.P18136141192249345006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140420 n + A004526 n

end

end A263622.P18136141192249345006

namespace A263622

/-- `A140420(n)+A004526(n)` -/
def P18136141192249345006.Spec : Prop :=
  ∀ n, P18136141192249345006.a n = A263622 n

end A263622

/-! ## A263622.P6774816438139790367

`A103177(n)-A001550(n)`
-/

namespace A263622.P6774816438139790367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103177 n - A001550 n

end

end A263622.P6774816438139790367

namespace A263622

/-- `A103177(n)-A001550(n)` -/
def P6774816438139790367.Spec : Prop :=
  ∀ n, P6774816438139790367.a n = A263622 n

end A263622

/-! ## A263622.P10019205409379590781

`A083323(n)-A111277(n)`
-/

namespace A263622.P10019205409379590781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n - A111277 n

end

end A263622.P10019205409379590781

namespace A263622

/-- `A083323(n)-A111277(n)` -/
def P10019205409379590781.Spec : Prop :=
  ∀ n, P10019205409379590781.a n = A263622 n

end A263622

/-! ## A263622.P7907943034768050586

`A080926(n)-A320933(n)`
-/

namespace A263622.P7907943034768050586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 n - A320933 n

end

end A263622.P7907943034768050586

namespace A263622

/-- `A080926(n)-A320933(n)` -/
def P7907943034768050586.Spec : Prop :=
  ∀ n, P7907943034768050586.a n = A263622 n

end A263622

/-! ## A263622.P9157619982127342979

`A090328(n+1)-A094374(n)`
-/

namespace A263622.P9157619982127342979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090328 (n + 1) - A094374 n

end

end A263622.P9157619982127342979

namespace A263622

/-- `A090328(n+1)-A094374(n)` -/
def P9157619982127342979.Spec : Prop :=
  ∀ n, P9157619982127342979.a n = A263622 n

end A263622

/-! ## A263622.P4576615569918417203

`A243513(n+1)-A052548(n)`
-/

namespace A263622.P4576615569918417203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243513 (n + 1) - A052548 n

end

end A263622.P4576615569918417203

namespace A263622

/-- `A243513(n+1)-A052548(n)` -/
def P4576615569918417203.Spec : Prop :=
  ∀ n, P4576615569918417203.a n = A263622 n

end A263622

/-! ## A263622.P17073632211895087207

`abs(∑[A007051(n)]-A000079(n))`
-/

namespace A263622.P17073632211895087207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A000079 n|

end

end A263622.P17073632211895087207

namespace A263622

/-- `abs(∑[A007051(n)]-A000079(n))` -/
def P17073632211895087207.Spec : Prop :=
  ∀ n, P17073632211895087207.a n = A263622 n

end A263622

/-! ## A263622.P15571677451918188452

`∑[A000392(n)]+A007051(n)-1`
-/

namespace A263622.P15571677451918188452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A007051 n - 1)

end

end A263622.P15571677451918188452

namespace A263622

/-- `∑[A000392(n)]+A007051(n)-1` -/
def P15571677451918188452.Spec : Prop :=
  ∀ n, P15571677451918188452.a n = A263622 n

end A263622

/-! ## A263622.P103480012405281850

`∑[A003462(n)-A131577(n)]+n`
-/

namespace A263622.P103480012405281850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A263622.P103480012405281850

namespace A263622

/-- `∑[A003462(n)-A131577(n)]+n` -/
def P103480012405281850.Spec : Prop :=
  ∀ n, P103480012405281850.a n = A263622 n

end A263622

/-! ## A263622.P1153412850478335886

`A243513(n+1)-(A000051(n)+1)`
-/

namespace A263622.P1153412850478335886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243513 (n + 1) - (A000051 n + 1)

end

end A263622.P1153412850478335886

namespace A263622

/-- `A243513(n+1)-(A000051(n)+1)` -/
def P1153412850478335886.Spec : Prop :=
  ∀ n, P1153412850478335886.a n = A263622 n

end A263622

/-! ## A263622.P1149205683163030889

`∑[A003462(n)+1]-A011782(n+1)`
-/

namespace A263622.P1149205683163030889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011782 (n + 1)

end

end A263622.P1149205683163030889

namespace A263622

/-- `∑[A003462(n)+1]-A011782(n+1)` -/
def P1149205683163030889.Spec : Prop :=
  ∀ n, P1149205683163030889.a n = A263622 n

end A263622

/-! ## A263622.P18086243013388196973

`A000225(n)+A047926(n)-A000225(n+1)`
-/

namespace A263622.P18086243013388196973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A047926 n - A000225 (n + 1))

end

end A263622.P18086243013388196973

namespace A263622

/-- `A000225(n)+A047926(n)-A000225(n+1)` -/
def P18086243013388196973.Spec : Prop :=
  ∀ n, P18086243013388196973.a n = A263622 n

end A263622

/-! ## A263622.P5733292188432818918

`A000392(n+1)+A047926(n)-A007051(n)`
-/

namespace A263622.P5733292188432818918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + (A047926 n - A007051 n)

end

end A263622.P5733292188432818918

namespace A263622

/-- `A000392(n+1)+A047926(n)-A007051(n)` -/
def P5733292188432818918.Spec : Prop :=
  ∀ n, P5733292188432818918.a n = A263622 n

end A263622

/-! ## A263622.P14952061084020207913

`A007051(n+1)-(A111277(n+1)+A011782(n+1))`
-/

namespace A263622.P14952061084020207913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) - (A111277 (n + 1) + A011782 (n + 1))

end

end A263622.P14952061084020207913

namespace A263622

/-- `A007051(n+1)-(A111277(n+1)+A011782(n+1))` -/
def P14952061084020207913.Spec : Prop :=
  ∀ n, P14952061084020207913.a n = A263622 n

end A263622

/-!
# A263625: Number of Seidel matrices of order 2n for which Cameron's first cohomology invariant is nonzero.

The programs for A263625, there is no canonical definition to state claims against.
-/

/-! ## A263625.P15263830410110688754

`A239469(2^(n+1))-n`
-/

namespace A263625.P15263830410110688754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239469 (2 ^ (n + 1)) - (n : ℤ)

end

end A263625.P15263830410110688754

/-!
# A263627: Number of Seidel matrices of order n with minimal eigenvalue -5.

The programs for A263627, there is no canonical definition to state claims against.
-/

/-! ## A263627.P630451011241758562

`round(A343162(n+1)/53)`
-/

namespace A263627.P630451011241758562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A343162 (n + 1) : ℚ) / 53)

end

end A263627.P630451011241758562

/-! ## A263627.P14235750293549844125

`∑{d}[ceil(∑[A371162(n)/12]), #-1]`
-/

namespace A263627.P14235750293549844125
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371162 n : ℚ) / 12

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - 1)

end

end A263627.P14235750293549844125

/-! ## A263627.P2848713505943155411

`ceil((ceil(A172023(n+1)/4)-2)/4)`
-/

namespace A263627.P2848713505943155411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A172023 (n + 1) : ℚ) / 4⌉ - 2 : ℚ) / 4⌉

end

end A263627.P2848713505943155411

/-! ## A263627.P16034667896438631601

`A022307(A014371(n))`
-/

namespace A263627.P16034667896438631601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A014371 n).toNat

end

end A263627.P16034667896438631601

/-! ## A263627.P9193620064100572324

`A125987(A006925(n))`
-/

namespace A263627.P9193620064100572324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125987 (A006925 n).toNat

end

end A263627.P9193620064100572324

/-!
# A263633: Irregular triangle read by rows: row n gives coefficients of n-th ordinary Bell polynomial B_n(x_1, x_2, ...) with monomials sorted into graded lexicographic order.

The programs for A263633, there is no canonical definition to state claims against.
-/

/-! ## A263633.P2382866253073257532

`A000120(A212536(A231846(n)))`
-/

namespace A263633.P2382866253073257532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A212536 (A231846 n).toNat).toNat

end

end A263633.P2382866253073257532

/-! ## A263633.P9644230818639821559

`A055642(A336811(n+1)^A008619(A008619(n)))`
-/

namespace A263633.P9644230818639821559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A336811 (n + 1) : ℚ) ^ (A008619 (A008619 n).toNat : ℤ))).toNat

end

end A263633.P9644230818639821559

/-! ## A263633.P17094140752803545897

`A342789(ceil((A244420(n+3)+A000120(n+1))/3))`
-/

namespace A263633.P17094140752803545897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342789 ⌈(A244420 (n + 3) + A000120 (n + 1) : ℚ) / 3⌉.toNat

end

end A263633.P17094140752803545897

/-! ## A263633.P14009650535466624077

`A342789(ceil((A244420(n+3)+A165194(n+2))/3))`
-/

namespace A263633.P14009650535466624077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342789 ⌈(A244420 (n + 3) + A165194 (n + 2) : ℚ) / 3⌉.toNat

end

end A263633.P14009650535466624077

/-!
# A263635: Sprague-Grundy sequence G(i-Mark({1}, {2})).

The programs for A263635, there is no canonical definition to state claims against.
-/

/-! ## A263635.P5187137989953556247

`A002262(∑[A209615(A202052(n+1))])`
-/

namespace A263635.P5187137989953556247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A202052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263635.P5187137989953556247

/-! ## A263635.P4338428064572822339

`and(A000034(A220308(n+1)), A056273(n))`
-/

namespace A263635.P4338428064572822339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (A220308 (n + 1)).toNat) (A056273 n)

end

end A263635.P4338428064572822339

/-! ## A263635.P10212265575259985315

`val(A315583(n), A005408(A046223(n+1)))`
-/

namespace A263635.P10212265575259985315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A315583 n).toNat (A005408 (A046223 (n + 1)).toNat).toNat

end

end A263635.P10212265575259985315

/-! ## A263635.P7064968340305407097

`A324852(xor(A016789(n), A081123(n)))`
-/

namespace A263635.P7064968340305407097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (Int.xor (A016789 n) (A081123 n)).toNat

end

end A263635.P7064968340305407097

/-! ## A263635.P3202803999450392733

`A002627(n)%A020639(A003864(n+1))`
-/

namespace A263635.P3202803999450392733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002627 n) (A020639 (A003864 (n + 1)).toNat)

end

end A263635.P3202803999450392733

/-!
# A263636: Numbers m such that A263635(m) = 2.

The programs for A263636, there is no canonical definition to state claims against.
-/

/-! ## A263636.P17507063104669229794

`2*lt[sin(n%2-a(floor(n/2))), 0]` with `a(0)=1, a(1)=3`
-/

namespace A263636.P17507063104669229794
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  Real.sin (((n % 2 : ℕ) : ℝ) - f1 ⌊(n : ℚ) / 2⌋.toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A263636.P17507063104669229794

/-! ## A263636.P13180422814005733712

`record[4*(n+2)/A263635(2*(n+2))]`
-/

namespace A263636.P13180422814005733712
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 2) : ℚ) / (A263635 (2 * (n + 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263636.P13180422814005733712

/-! ## A263636.P15425777312089851972

`∩[2*n, A121540(n+1)+1]`
-/

namespace A263636.P15425777312089851972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121540 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263636.P15425777312089851972

/-! ## A263636.P3183026212257313518

`record[A133265(A121540(n+1))]`
-/

namespace A263636.P3183026212257313518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A121540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263636.P3183026212257313518

/-! ## A263636.P14072683312543658938

`∩[A121540(n+1), A005408(n)]+1`
-/

namespace A263636.P14072683312543658938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A263636.P14072683312543658938

/-!
# A263637: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and with no two consecutive increases.

The programs for A263637, the canonical program `A263637.P9744934178988432299` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263637 has offset 1).

The definition of A263637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263637.P9744934178988432299

`2*a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9, a(4)=11, a(5)=19, a(6)=27, a(7)=44, a(8)=65`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A263637

/-- `2*a(n-2)+a(n-3)-a(n-5)` -/
def P9744934178988432299.Spec : Prop :=
  ∀ n, P9744934178988432299.a n = A263637 (n + 1)

theorem P9744934178988432299.correct : P9744934178988432299.Spec := by
  intro n
  simp only [A263637, Nat.add_sub_cancel]

end A263637

/-! ## A263637.P9414479054267600528

`A263643(∑[n+2])`
-/

namespace A263637.P9414479054267600528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263637.P9414479054267600528

namespace A263637

/-- `A263643(∑[n+2])` -/
def P9414479054267600528.Spec : Prop :=
  ∀ n, P9414479054267600528.a n = A263637 (n + 1)

end A263637

/-! ## A263637.P582744779517034360

`A263643(A000096(n+1))+char[29]`
-/

namespace A263637.P582744779517034360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263637.P582744779517034360

namespace A263637

/-- `A263643(A000096(n+1))+char[29]` -/
def P582744779517034360.Spec : Prop :=
  ∀ n, P582744779517034360.a n = A263637 (n + 1)

end A263637

/-! ## A263637.P15455363591250723447

`record[A263643(eq[2, A263643(n+1)])]`
-/

namespace A263637.P15455363591250723447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263637.P15455363591250723447

namespace A263637

/-- `record[A263643(eq[2, A263643(n+1)])]` -/
def P15455363591250723447.Spec : Prop :=
  ∀ n, P15455363591250723447.a n = A263637 (n + 1)

end A263637

/-! ## A263637.P2492515864640360891

`record[A097806(n)*A263643(n+1)]`
-/

namespace A263637.P2492515864640360891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A263643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263637.P2492515864640360891

namespace A263637

/-- `record[A097806(n)*A263643(n+1)]` -/
def P2492515864640360891.Spec : Prop :=
  ∀ n, P2492515864640360891.a n = A263637 (n + 1)

end A263637

/-!
# A263638: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and with no two consecutive increases.

The programs for A263638, there is no canonical definition to state claims against.
-/

/-! ## A263638.P8050938616520769676

`A263643(∑[n+3]+1)`
-/

namespace A263638.P8050938616520769676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263638.P8050938616520769676

/-! ## A263638.P9031579257492898705

`record[A263643(eq[2, A263643(n+2)])]`
-/

namespace A263638.P9031579257492898705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263638.P9031579257492898705

/-! ## A263638.P11957163792032198226

`record[A263643(A060577(n+1)-n)]`
-/

namespace A263638.P11957163792032198226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A060577 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263638.P11957163792032198226

/-! ## A263638.P2540513971714168245

`or(char[2], A263643(A167614(n+2)-5))`
-/

namespace A263638.P2540513971714168245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263643 (A167614 (n + 2) - 5).toNat)

end

end A263638.P2540513971714168245

/-! ## A263638.P8125119761822276343

`record[A010054(n+3)*A263643(n+1)]`
-/

namespace A263638.P8125119761822276343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A263643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263638.P8125119761822276343

/-!
# A263639: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and with no two consecutive increases.

The programs for A263639, there is no canonical definition to state claims against.
-/

/-! ## A263639.P8399970063624209259

`A263643(∑[n+4]+3)`
-/

namespace A263639.P8399970063624209259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263639.P8399970063624209259

/-! ## A263639.P16826191597308118159

`record[A263643(A019304(n))]`
-/

namespace A263639.P16826191597308118159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263639.P16826191597308118159

/-! ## A263639.P9047073686583762107

`record[A263643(A027379(n))]`
-/

namespace A263639.P9047073686583762107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263639.P9047073686583762107

/-! ## A263639.P14117007181650707852

`record[A263643(A060577(n)+1)]`
-/

namespace A263639.P14117007181650707852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A060577 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263639.P14117007181650707852

/-! ## A263639.P6613656033565190677

`record[A263643(abs(A046691(n))+1)]`
-/

namespace A263639.P6613656033565190677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (|A046691 n| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263639.P6613656033565190677

/-!
# A263640: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and with no two consecutive increases.

The programs for A263640, there is no canonical definition to state claims against.
-/

/-! ## A263640.P8989852791716170220

`A263643(∑[n+5]+6)`
-/

namespace A263640.P8989852791716170220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263640.P8989852791716170220

/-! ## A263640.P10863738348864058103

`record[A263643(A060577(n))]`
-/

namespace A263640.P10863738348864058103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263640.P10863738348864058103

/-! ## A263640.P6488109076334162121

`record[A263643(abs(A046691(n)))]`
-/

namespace A263640.P6488109076334162121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263640.P6488109076334162121

/-! ## A263640.P3838025228899342211

`record[A263643(A046691(n+1))]`
-/

namespace A263640.P3838025228899342211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A046691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263640.P3838025228899342211

/-! ## A263640.P792707924567179518

`record[A263643(A052905(n)+1)]`
-/

namespace A263640.P792707924567179518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263640.P792707924567179518

/-!
# A263641: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and with no two consecutive increases.

The programs for A263641, there is no canonical definition to state claims against.
-/

/-! ## A263641.P3214069593212567300

`record[A263643(A052905(n))]`
-/

namespace A263641.P3214069593212567300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263641.P3214069593212567300

/-! ## A263641.P3734399929661642893

`A263643(A302537(n)+15)`
-/

namespace A263641.P3734399929661642893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A302537 n + 15).toNat

end

end A263641.P3734399929661642893

/-! ## A263641.P9693065382769405946

`A263643(A056119(n)+16)`
-/

namespace A263641.P9693065382769405946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A056119 n + 16).toNat

end

end A263641.P9693065382769405946

/-! ## A263641.P10384804334017888031

`A263643(eq[5, A193592(n)])`
-/

namespace A263641.P10384804334017888031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263641.P10384804334017888031

/-! ## A263641.P14589457131658795962

`A263643(A055999(n+3)+1)`
-/

namespace A263641.P14589457131658795962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A055999 (n + 3) + 1).toNat

end

end A263641.P14589457131658795962

/-!
# A263642: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and with no two consecutive increases.

The programs for A263642, there is no canonical definition to state claims against.
-/

/-! ## A263642.P6715262175404656589

`A263643(A055999(n+4))`
-/

namespace A263642.P6715262175404656589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A055999 (n + 4)).toNat

end

end A263642.P6715262175404656589

/-! ## A263642.P1826610386907549666

`A263643(eq[6, A193592(n)])`
-/

namespace A263642.P1826610386907549666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263642.P1826610386907549666

/-! ## A263642.P7263461589802672222

`A263643(Δ[A023551(n+2)])`
-/

namespace A263642.P7263461589802672222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (f1 (n + 1) - f1 n).toNat

end

end A263642.P7263461589802672222

/-! ## A263642.P4712678681673304933

`record[A263643(A060577(n)+n)]`
-/

namespace A263642.P4712678681673304933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A060577 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263642.P4712678681673304933

/-! ## A263642.P3041436522983674447

`A263643(A052905(n+4)-1)`
-/

namespace A263642.P3041436522983674447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (A052905 (n + 4) - 1).toNat

end

end A263642.P3041436522983674447

/-!
# A263643: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and with no two consecutive increases.

The programs for A263643, there is no canonical definition to state claims against.
-/

/-! ## A263643.P2561003384268121054

`A102683(A085157(n))+A023717(A263666(n+1))`
-/

namespace A263643.P2561003384268121054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A085157 n).toNat + A023717 (A263666 (n + 1)).toNat

end

end A263643.P2561003384268121054

/-! ## A263643.P17391424375120336410

`A378674(A336575(n))`
-/

namespace A263643.P17391424375120336410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378674 (A336575 n).toNat

end

end A263643.P17391424375120336410

/-! ## A263643.P18191225626451545840

`A081604(4*A217232(n+1))`
-/

namespace A263643.P18191225626451545840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (4 * A217232 (n + 1)).toNat

end

end A263643.P18191225626451545840

/-! ## A263643.P3265866727743229637

`A001222(A263666(n+1)!)+1`
-/

namespace A263643.P3265866727743229637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A263666 (n + 1)).toNat) + 1

end

end A263643.P3265866727743229637

/-! ## A263643.P9387376778107290663

`A111986(A133580(n))`
-/

namespace A263643.P9387376778107290663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111986 (A133580 n).toNat

end

end A263643.P9387376778107290663

/-!
# A263646: Coefficients for an expansion of the Schwarzian derivative of a power series.

The programs for A263646, there is no canonical definition to state claims against.
-/

/-! ## A263646.P1686028104112908449

`∪[∑[Δ[(10*n)²]+1], 20*20*(n+1)+1]%20`
-/

namespace A263646.P1686028104112908449
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * (20 * (n + 1)) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f4 j = x) n % 20

end

end A263646.P1686028104112908449

/-! ## A263646.P7934376720252436584

`floor(root(∑[∑{e}[n+1, #]+1], A028330(n+1)))`
-/

namespace A263646.P7934376720252436584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / (A028330 (n + 1) : ℝ))⌋

end

end A263646.P7934376720252436584

/-! ## A263646.P911580776276923665

`A051340(lt[round(sqrt(2*(n+1)))²-(2*n+1), 2])`
-/

namespace A263646.P911580776276923665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A263646.P911580776276923665

/-! ## A263646.P8176022065742743503

`A130296(A205401(n+1))`
-/

namespace A263646.P8176022065742743503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (A205401 (n + 1)).toNat

end

end A263646.P8176022065742743503

/-! ## A263646.P548048319847674657

`A051340(eq[1, A064645(n)])`
-/

namespace A263646.P548048319847674657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263646.P548048319847674657

/-! ## A263646.P4764919526038189681

`A051340(eq[1, A072286(n)])`
-/

namespace A263646.P4764919526038189681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263646.P4764919526038189681

/-! ## A263646.P15841956572000460652

`A057979(A265359(n+2)+1)`
-/

namespace A263646.P15841956572000460652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A265359 (n + 2) + 1).toNat

end

end A263646.P15841956572000460652

/-! ## A263646.P12479237742141645225

`A152271(A265359(n+2)-1)`
-/

namespace A263646.P12479237742141645225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A265359 (n + 2) - 1).toNat

end

end A263646.P12479237742141645225

/-! ## A263646.P3578452465981957138

`A174571(2*A265359(n+2))`
-/

namespace A263646.P3578452465981957138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A265359 (n + 2)).toNat

end

end A263646.P3578452465981957138

/-!
# A263647: Numbers k such that 2^k-1 and 3^k-1 are coprime.

The programs for A263647, there is no canonical definition to state claims against.
-/

/-! ## A263647.P5082993417999720831

`eq[1, A086892(n+1)]+1`
-/

namespace A263647.P5082993417999720831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263647.P5082993417999720831

/-! ## A263647.P1053240740181206808

`eq[1, A214074(n+1)]+1`
-/

namespace A263647.P1053240740181206808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263647.P1053240740181206808

/-! ## A263647.P8679282502214088293

`record[A000027(n+1)/A086892(n+1)]`
-/

namespace A263647.P8679282502214088293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A086892 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263647.P8679282502214088293

/-! ## A263647.P14640030377760056477

`record[A004151(n+1)/A086892(n+1)]`
-/

namespace A263647.P14640030377760056477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (n + 1) : ℚ) / (A086892 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263647.P14640030377760056477

/-! ## A263647.P13423020116224194817

`record[A000027(n+1)/A214074(n+1)]`
-/

namespace A263647.P13423020116224194817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A214074 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263647.P13423020116224194817

/-! ## A263647.P530050653886530067

`record[(n+1)/(A086892(n+1)+A005926(n))]`
-/

namespace A263647.P530050653886530067
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A086892 (n + 1) + A005926 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263647.P530050653886530067

/-! ## A263647.P18121932914369475056

`record[A080513(n)/A086892(A080513(n))]`
-/

namespace A263647.P18121932914369475056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 n : ℚ) / (A086892 (A080513 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263647.P18121932914369475056

/-! ## A263647.P13749428246269137478

`record[A266977(n)/A086892(A266977(n))]`
-/

namespace A263647.P13749428246269137478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266977 n : ℚ) / (A086892 (A266977 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263647.P13749428246269137478

/-!
# A263648: a(1)=4, a(2)=9: a(n) is the smallest semiprime not yet appearing in the sequence which is coprime to a(n-1) and not coprime to a(n-2).

The programs for A263648, there is no canonical definition to state claims against.
-/

/-! ## A263648.P17992861040909809222

`A119718(A115060(n+1)%A270831(3*n+4))`
-/

namespace A263648.P17992861040909809222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119718 (Int.tmod (A115060 (n + 1)) (A270831 (3 * n + 4))).toNat

end

end A263648.P17992861040909809222

/-! ## A263648.P6864533113938856884

`A119718(A115060(n+1)%A006804(n))`
-/

namespace A263648.P6864533113938856884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119718 (Int.tmod (A115060 (n + 1)) (A006804 n)).toNat

end

end A263648.P6864533113938856884

/-!
# A263649: a(n) is multiplicative with a(2^e) = (-1)^e, a(3^e) = -2*(-1)^e if e>0, a(p^e) = e+1 if p == 1, 7 (mod 24), a(p^e) = (e+1) * (-1)^e if p == 5, 11 (mod 24), a(p^e) = (1 + (-1)^e) / 2 if p == 13, 17, 19, 23 (mod 24).

The programs for A263649, there is no canonical definition to state claims against.
-/

/-! ## A263649.P4471014820221520966

`A061347(n+1)*A115660(n+1)`
-/

namespace A263649.P4471014820221520966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A115660 (n + 1)

end

end A263649.P4471014820221520966

/-! ## A263649.P315736539480523133

`(A000377(n+1)-A108563(n+1))*A061347(n+1)`
-/

namespace A263649.P315736539480523133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000377 (n + 1) - A108563 (n + 1)) * A061347 (n + 1)

end

end A263649.P315736539480523133

/-! ## A263649.P3903903520729290236

`A061347(n+1)*A128581(A022998(n+1))`
-/

namespace A263649.P3903903520729290236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A128581 (A022998 (n + 1)).toNat

end

end A263649.P3903903520729290236

/-! ## A263649.P7487153083885456644

`A061347(n+1)*A128581(2*(n+1))`
-/

namespace A263649.P7487153083885456644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A128581 (2 * (n + 1))

end

end A263649.P7487153083885456644

/-! ## A263649.P14036186976424539276

`A263577(n+1)-A263577(A064680(n+1))`
-/

namespace A263649.P14036186976424539276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263577 (n + 1) - A263577 (A064680 (n + 1)).toNat

end

end A263649.P14036186976424539276

/-! ## A263649.P4232482376302243644

`A263577(n+1)-A263577(2*(n+1))`
-/

namespace A263649.P4232482376302243644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263577 (n + 1) - A263577 (2 * (n + 1))

end

end A263649.P4232482376302243644

/-!
# A263651: Numbers n such that the difference between n and the largest square less than n is a nonzero square.

The programs for A263651, the canonical program `A263651.P5656912629918934760` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263651 has offset 1).

The definition of A263651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263651.P5656912629918934760

`eq[2, A000122(n-floor(sqrt(n))²)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263651

/-- `eq[2, A000122(n-floor(sqrt(n))²)]` -/
def P5656912629918934760.Spec : Prop :=
  ∀ n, (P5656912629918934760.a n : ℤ) = A263651 (n + 1)

theorem P5656912629918934760.correct : P5656912629918934760.Spec := by
  intro n
  simp only [A263651, Nat.add_sub_cancel]

end A263651

/-! ## A263651.P9817947729223782400

`eq[2, n-A260740(n)]`
-/

namespace A263651.P9817947729223782400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A260740 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263651.P9817947729223782400

namespace A263651

/-- `eq[2, n-A260740(n)]` -/
def P9817947729223782400.Spec : Prop :=
  ∀ n, (P9817947729223782400.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P682007909451870898

`eq[2, A053610(n+1)]+1`
-/

namespace A263651.P682007909451870898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263651.P682007909451870898

namespace A263651

/-- `eq[2, A053610(n+1)]+1` -/
def P682007909451870898.Spec : Prop :=
  ∀ n, (P682007909451870898.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P11197839730199322013

`eq[1, A002828(A053186(n))]`
-/

namespace A263651.P11197839730199322013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A053186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263651.P11197839730199322013

namespace A263651

/-- `eq[1, A002828(A053186(n))]` -/
def P11197839730199322013.Spec : Prop :=
  ∀ n, (P11197839730199322013.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P13134721799976298952

`eq[A000122(n), A174806(n)]`
-/

namespace A263651.P13134721799976298952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263651.P13134721799976298952

namespace A263651

/-- `eq[A000122(n), A174806(n)]` -/
def P13134721799976298952.Spec : Prop :=
  ∀ n, (P13134721799976298952.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P17068597734151746302

`eq[A002448(n), A174806(n)]`
-/

namespace A263651.P17068597734151746302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263651.P17068597734151746302

namespace A263651

/-- `eq[A002448(n), A174806(n)]` -/
def P17068597734151746302.Spec : Prop :=
  ∀ n, (P17068597734151746302.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P5088349647534871414

`eq[A010052(n), A174806(n)]`
-/

namespace A263651.P5088349647534871414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263651.P5088349647534871414

namespace A263651

/-- `eq[A010052(n), A174806(n)]` -/
def P5088349647534871414.Spec : Prop :=
  ∀ n, (P5088349647534871414.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P5081801102412661376

`eq[A089807(n), A174806(n)]`
-/

namespace A263651.P5081801102412661376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263651.P5081801102412661376

namespace A263651

/-- `eq[A089807(n), A174806(n)]` -/
def P5081801102412661376.Spec : Prop :=
  ∀ n, (P5081801102412661376.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P11905526546117559253

`eq[A089810(n), A174806(n)]`
-/

namespace A263651.P11905526546117559253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263651.P11905526546117559253

namespace A263651

/-- `eq[A089810(n), A174806(n)]` -/
def P11905526546117559253.Spec : Prop :=
  ∀ n, (P11905526546117559253.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P7460731750664604063

`eq[1, A053186(A053186(n)+1)]`
-/

namespace A263651.P7460731750664604063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A053186 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263651.P7460731750664604063

namespace A263651

/-- `eq[1, A053186(A053186(n)+1)]` -/
def P7460731750664604063.Spec : Prop :=
  ∀ n, (P7460731750664604063.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P13639235308756832290

`eq[1, A053186(a(A053186(n)))]` with `a(0)=6`
-/

namespace A263651.P13639235308756832290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A053186 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263651.P13639235308756832290

namespace A263651

/-- `eq[1, A053186(a(A053186(n)))]` -/
def P13639235308756832290.Spec : Prop :=
  ∀ n, (P13639235308756832290.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P14396083993332559250

`eq[2, A071797(A071797(n+1)+1)]`
-/

namespace A263651.P14396083993332559250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A071797 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263651.P14396083993332559250

namespace A263651

/-- `eq[2, A071797(A071797(n+1)+1)]` -/
def P14396083993332559250.Spec : Prop :=
  ∀ n, (P14396083993332559250.a n : ℤ) = A263651 (n + 1)

end A263651

/-! ## A263651.P14759369244135138805

`eq[A010052(n), A053186(A053186(n))]`
-/

namespace A263651.P14759369244135138805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A053186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263651.P14759369244135138805

namespace A263651

/-- `eq[A010052(n), A053186(A053186(n))]` -/
def P14759369244135138805.Spec : Prop :=
  ∀ n, (P14759369244135138805.a n : ℤ) = A263651 (n + 1)

end A263651

/-!
# A263652: Indices in A181391 (Van Eck's Sequence) where a new term first appears.

The programs for A263652, there is no canonical definition to state claims against.
-/

/-! ## A263652.P5311571225549361457

`A171865(n+2)-1`
-/

namespace A263652.P5311571225549361457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171865 (n + 2) - 1

end

end A263652.P5311571225549361457

/-! ## A263652.P10555952643341776421

`∑[A171868(n+1)]`
-/

namespace A263652.P10555952643341776421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263652.P10555952643341776421

/-! ## A263652.P1586149804474707738

`∑[A171889(n+2)]`
-/

namespace A263652.P1586149804474707738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171889 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263652.P1586149804474707738

/-! ## A263652.P13617545144536083342

`record[gcd(n+1, A181391(n+2))]`
-/

namespace A263652.P13617545144536083342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A181391 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263652.P13617545144536083342

/-! ## A263652.P2256784823521152121

`lt[A181391(n+2), 1]+1`
-/

namespace A263652.P2256784823521152121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263652.P2256784823521152121

/-! ## A263652.P89441139241964045

`eq[C(2, n+2), A181391(n+1)]`
-/

namespace A263652.P89441139241964045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263652.P89441139241964045

/-! ## A263652.P9975107578124865578

`record[A171862(A181391(n+1))]`
-/

namespace A263652.P9975107578124865578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A181391 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263652.P9975107578124865578

/-! ## A263652.P2990845327417133362

`A171898(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A263652.P2990845327417133362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171898 (a (n - 1) + 1).toNat + a (n - 1)

end

end A263652.P2990845327417133362

/-! ## A263652.P15545337905083205971

`∑[A171898(A171865(n+1))]`
-/

namespace A263652.P15545337905083205971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (A171865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263652.P15545337905083205971

/-! ## A263652.P17570968267840761169

`filter[n+1, A171894(#)]`
-/

namespace A263652.P17570968267840761169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171894 (f1 j) = 1) n)

end

end A263652.P17570968267840761169

/-! ## A263652.P9745877718665885806

`eq[1, A171894(n+1)]+1`
-/

namespace A263652.P9745877718665885806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171894 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263652.P9745877718665885806

/-! ## A263652.P13138438258053318940

`lt[A200780(n+1), 2]+1`
-/

namespace A263652.P13138438258053318940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200780 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263652.P13138438258053318940

/-! ## A263652.P3972288050546446088

`lt[n*A337980(n+2), n]`
-/

namespace A263652.P3972288050546446088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A337980 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263652.P3972288050546446088

/-! ## A263652.P6084607792171450050

`A171862(A171897(n+1))`
-/

namespace A263652.P6084607792171450050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A171897 (n + 1)).toNat

end

end A263652.P6084607792171450050

/-! ## A263652.P6847058259154291473

`A023443(A171865(n+2))`
-/

namespace A263652.P6847058259154291473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A171865 (n + 2)).toNat

end

end A263652.P6847058259154291473

/-! ## A263652.P17057550722486571903

`eq[A000007(n), A181391(n+1)]`
-/

namespace A263652.P17057550722486571903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263652.P17057550722486571903

/-! ## A263652.P8499104828060607113

`eq[A000038(n), A181391(n+1)]`
-/

namespace A263652.P8499104828060607113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263652.P8499104828060607113

/-! ## A263652.P14475777593332195087

`eq[A181391(n+1)+n, A028310(n)]`
-/

namespace A263652.P14475777593332195087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263652.P14475777593332195087

/-! ## A263652.P16680974310626390342

`lt[1, A283443(Δ[A171896(n+1)])]+1`
-/

namespace A263652.P16680974310626390342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A263652.P16680974310626390342

/-!
# A263653: a(n) = bigomega(n)^omega(n).

The programs for A263653, the canonical program `A263653.P6513919026819345484` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263653 has offset 2).

The definition of A263653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263653.P6513919026819345484

`∏{p}[n+2, A001222(lcm(#, n+2))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A263653

/-- `∏{p}[n+2, A001222(lcm(#, n+2))]` -/
def P6513919026819345484.Spec : Prop :=
  ∀ n, P6513919026819345484.a n = A263653 (n + 2)

theorem P6513919026819345484.correct : P6513919026819345484.Spec := by
  intro n
  simp only [A263653, Nat.add_sub_cancel]

end A263653

/-! ## A263653.P5979560098824523160

`∏{p}[n+2, A001222((n+2)/#)+1]`
-/

namespace A263653.P5979560098824523160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001222 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (p : ℚ))).toNat + 1)

end

end A263653.P5979560098824523160

namespace A263653

/-- `∏{p}[n+2, A001222((n+2)/#)+1]` -/
def P5979560098824523160.Spec : Prop :=
  ∀ n, P5979560098824523160.a n = A263653 (n + 2)

end A263653

/-! ## A263653.P258436713614630339

`A001222(n+2)^A001221(n+2)`
-/

namespace A263653.P258436713614630339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) : ℚ) ^ (A001221 (n + 2) : ℤ)

end

end A263653.P258436713614630339

namespace A263653

/-- `A001222(n+2)^A001221(n+2)` -/
def P258436713614630339.Spec : Prop :=
  ∀ n, P258436713614630339.a n = (A263653 (n + 2) : ℚ)

end A263653

/-! ## A263653.P11911366238763543906

`∏{e}[A007947(n+2), #*A001222(n+2)]`
-/

namespace A263653.P11911366238763543906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A001222 (n + 2)

end

end A263653.P11911366238763543906

namespace A263653

/-- `∏{e}[A007947(n+2), #*A001222(n+2)]` -/
def P11911366238763543906.Spec : Prop :=
  ∀ n, P11911366238763543906.a n = A263653 (n + 2)

end A263653

/-! ## A263653.P1493432302384259363

`A051128(A289621(n+2))`
-/

namespace A263653.P1493432302384259363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A289621 (n + 2)).toNat

end

end A263653.P1493432302384259363

namespace A263653

/-- `A051128(A289621(n+2))` -/
def P1493432302384259363.Spec : Prop :=
  ∀ n, P1493432302384259363.a n = A263653 (n + 2)

end A263653

/-! ## A263653.P12663525948055891980

`A086436(n+2)^A001222(A181819(n+2))`
-/

namespace A263653.P12663525948055891980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086436 (n + 2) : ℚ) ^ (A001222 (A181819 (n + 2)).toNat : ℤ)

end

end A263653.P12663525948055891980

namespace A263653

/-- `A086436(n+2)^A001222(A181819(n+2))` -/
def P12663525948055891980.Spec : Prop :=
  ∀ n, P12663525948055891980.a n = (A263653 (n + 2) : ℚ)

end A263653

/-! ## A263653.P14858496005898908825

`A087179(A124508(n+2))`
-/

namespace A263653.P14858496005898908825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (A124508 (n + 2)).toNat

end

end A263653.P14858496005898908825

namespace A263653

/-- `A087179(A124508(n+2))` -/
def P14858496005898908825.Spec : Prop :=
  ∀ n, P14858496005898908825.a n = A263653 (n + 2)

end A263653

/-! ## A263653.P9036359159623306739

`∏{e}[A306329(n+2), #]`
-/

namespace A263653.P9036359159623306739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306329 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A263653.P9036359159623306739

namespace A263653

/-- `∏{e}[A306329(n+2), #]` -/
def P9036359159623306739.Spec : Prop :=
  ∀ n, (P9036359159623306739.a n : ℤ) = A263653 (n + 2)

end A263653

/-! ## A263653.P10792649833928444489

`A113018(A320390(n+2))`
-/

namespace A263653.P10792649833928444489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113018 (A320390 (n + 2)).toNat

end

end A263653.P10792649833928444489

namespace A263653

/-- `A113018(A320390(n+2))` -/
def P10792649833928444489.Spec : Prop :=
  ∀ n, P10792649833928444489.a n = A263653 (n + 2)

end A263653

/-! ## A263653.P3559181101355657307

`A005361(A306329(n+2))`
-/

namespace A263653.P3559181101355657307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A306329 (n + 2)).toNat

end

end A263653.P3559181101355657307

namespace A263653

/-- `A005361(A306329(n+2))` -/
def P3559181101355657307.Spec : Prop :=
  ∀ n, P3559181101355657307.a n = A263653 (n + 2)

end A263653

/-!
# A263654: Values of k such that 3^k is a concatenation of two primes.

The programs for A263654, there is no canonical definition to state claims against.
-/

/-! ## A263654.P13376915540515087508

`lt[A255898(n+1), 4]+1`
-/

namespace A263654.P13376915540515087508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255898 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263654.P13376915540515087508

/-! ## A263654.P5481151343665868139

`lt[A255898(A028310(n)), 4]`
-/

namespace A263654.P5481151343665868139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255898 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263654.P5481151343665868139

/-! ## A263654.P2084835593065496900

`lt[A255898(A233583(n+1)), 4]`
-/

namespace A263654.P2084835593065496900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255898 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263654.P2084835593065496900

/-! ## A263654.P11367063105704584094

`eq[3, A003056(A255898(n+1)+1)+1]+1`
-/

namespace A263654.P11367063105704584094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A255898 (n + 1) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263654.P11367063105704584094

/-! ## A263654.P16090725841401515935

`eq[3, A281923(n+1)]+1`
-/

namespace A263654.P16090725841401515935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263654.P16090725841401515935

/-!
# A263655: Table T(m, n) of number of circular binary strings with m ones and n zeros without zigzags, read by antidiagonals (see reference for precise definition).

The programs for A263655, there is no canonical definition to state claims against.
-/

/-! ## A263655.P5053287841120523521

`A318274(n)%A114802(A131830(n))`
-/

namespace A263655.P5053287841120523521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318274 n) (A114802 (A131830 n).toNat)

end

end A263655.P5053287841120523521

/-! ## A263655.P4693744348948069076

`A108934(A004197(n)^A265744(n))*A318274(n)`
-/

namespace A263655.P4693744348948069076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108934 (SequenceMachineLib.roundAway ((A004197 n : ℚ) ^ (A265744 n : ℤ))).toNat * A318274 n

end

end A263655.P4693744348948069076

/-! ## A263655.P17719030317275741310

`A103919(A004197(n))%A270831(n+1)*A318274(n)`
-/

namespace A263655.P17719030317275741310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103919 (A004197 n).toNat) (A270831 (n + 1)) * A318274 n

end

end A263655.P17719030317275741310

/-! ## A263655.P966221546607156159

`A100049(A072233(n))^A055356(n+1)*A318274(n)`
-/

namespace A263655.P966221546607156159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100049 (A072233 n).toNat : ℚ) ^ (A055356 (n + 1) : ℤ) * (A318274 n : ℚ)

end

end A263655.P966221546607156159

/-! ## A263655.P2369855647588565281

`A263243(2^A110855(n))+A119387(A342980(n))`
-/

namespace A263655.P2369855647588565281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263243 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A110855 n : ℤ))).toNat + A119387 (A342980 n).toNat

end

end A263655.P2369855647588565281

/-!
# A263656: Number of length-2n central circular binary strings without zigzags (see reference for precise definition).

The programs for A263656, there is no canonical definition to state claims against.
-/

/-! ## A263656.P396817843746678497

`A000007(n)+A132461(n)-A051292(n)`
-/

namespace A263656.P396817843746678497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A132461 n - A051292 n)

end

end A263656.P396817843746678497

/-! ## A263656.P11662709976190869627

`(A132461(n)-A051292(n))*A057427(n)`
-/

namespace A263656.P11662709976190869627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132461 n - A051292 n) * A057427 n

end

end A263656.P11662709976190869627

/-! ## A263656.P2244317691631292322

`(A132461(n)-A051292(n))*char[A292576(n+1)]`
-/

namespace A263656.P2244317691631292322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292576 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132461 n - A051292 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A263656.P2244317691631292322

/-! ## A263656.P6576951270715223127

`A010051(A004277(n+1))+A132461(n)-A051292(n)`
-/

namespace A263656.P6576951270715223127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A004277 (n + 1)).toNat + (A132461 n - A051292 n)

end

end A263656.P6576951270715223127

/-! ## A263656.P7833955512444405940

`(A132461(n)-A051292(n))%A054854(n)`
-/

namespace A263656.P7833955512444405940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132461 n - A051292 n) (A054854 n)

end

end A263656.P7833955512444405940

/-!
# A263657: Table T(m, n) of number of (0, 1)-necklaces without zigzags with m 1's and n 0's, read by antidiagonals (see reference for precise definition).

The programs for A263657, there is no canonical definition to state claims against.
-/

/-! ## A263657.P8711077897774883769

`A005131(A004197(n))%A086553(n)`
-/

namespace A263657.P8711077897774883769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005131 (A004197 n).toNat) (A086553 n)

end

end A263657.P8711077897774883769

/-! ## A263657.P8298255978493270616

`A028303(A004197(n))%A099900(n)`
-/

namespace A263657.P8298255978493270616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (A004197 n).toNat) (A099900 n)

end

end A263657.P8298255978493270616

/-! ## A263657.P9945087859041429790

`A005131(A261684(n))%A099900(n)`
-/

namespace A263657.P9945087859041429790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005131 (A261684 n).toNat) (A099900 n)

end

end A263657.P9945087859041429790

/-! ## A263657.P7608284203978506567

`A122134(A004197(n))%A302796(n+1)`
-/

namespace A263657.P7608284203978506567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122134 (A004197 n).toNat) (A302796 (n + 1))

end

end A263657.P7608284203978506567

/-! ## A263657.P5163667376181528541

`A139351(A107044(n+2)%A324695(n+1))`
-/

namespace A263657.P5163667376181528541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.tmod (A107044 (n + 2)) (A324695 (n + 1))).toNat

end

end A263657.P5163667376181528541

/-! ## A263657.P2689785835868254045

`A023894(A004197(n))%A059759(n+1)`
-/

namespace A263657.P2689785835868254045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023894 (A004197 n).toNat) (A059759 (n + 1))

end

end A263657.P2689785835868254045

/-! ## A263657.P9524652874636064051

`A002865(A004197(n))%A340105(n+1)`
-/

namespace A263657.P9524652874636064051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002865 (A004197 n).toNat) (A340105 (n + 1))

end

end A263657.P9524652874636064051

/-! ## A263657.P17115508280672665653

`A023894(A342955(n))%A059759(n+1)`
-/

namespace A263657.P17115508280672665653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023894 (A342955 n).toNat) (A059759 (n + 1))

end

end A263657.P17115508280672665653

/-!
# A263658: Number of (0, 1)-necklaces with n zeros and n ones without zigzags (see reference for precise definition).

The programs for A263658, there is no canonical definition to state claims against.
-/

/-! ## A263658.P3104707641008073669

`A263657(∑[4*n])`
-/

namespace A263658.P3104707641008073669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263657 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263658.P3104707641008073669

/-! ## A263658.P6328879784326133457

`A263657(A106232(n+1))+char[23]`
-/

namespace A263658.P6328879784326133457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263657 (A106232 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263658.P6328879784326133457

/-! ## A263658.P12127367095876775504

`A263657(A046092(n))%A000110(n)`
-/

namespace A263658.P12127367095876775504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263657 (A046092 n).toNat) (A000110 n)

end

end A263658.P12127367095876775504

/-! ## A263658.P14240139757141785794

`lcm(A062157(n), A263657(A046092(n)))`
-/

namespace A263658.P14240139757141785794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A263657 (A046092 n).toNat)

end

end A263658.P14240139757141785794

/-! ## A263658.P15473842759469352345

`A263657(A106232(n+1))/A007318(∑[n])`
-/

namespace A263658.P15473842759469352345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263657 (A106232 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A263658.P15473842759469352345

/-!
# A263659: Number of (0, 1)-necklaces of length n without zigzags (see reference for precise definition).

The programs for A263659, there is no canonical definition to state claims against.
-/

/-! ## A263659.P9332450030597189677

`or(A000035(n), A274017(n))-1`
-/

namespace A263659.P9332450030597189677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A274017 n) - 1

end

end A263659.P9332450030597189677

/-! ## A263659.P17632658397767656233

`A274017(n)-char[A047229(n+1)]`
-/

namespace A263659.P17632658397767656233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274017 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A263659.P17632658397767656233

/-! ## A263659.P17988380192623685599

`or(A059841(3*(n+1)), A274017(n))-1`
-/

namespace A263659.P17988380192623685599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (3 * (n + 1))) (A274017 n) - 1

end

end A263659.P17988380192623685599

/-! ## A263659.P12576842585725382038

`A274017(n)-A131719(A236348(n))`
-/

namespace A263659.P12576842585725382038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274017 n - A131719 (A236348 n).toNat

end

end A263659.P12576842585725382038

/-! ## A263659.P11013210600678983589

`A280193(A000079(n))+A263359(n)`
-/

namespace A263659.P11013210600678983589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A000079 n).toNat + A263359 n

end

end A263659.P11013210600678983589

/-!
# A263660: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and with no two consecutive increases or two consecutive decreases.

The programs for A263660, the canonical program `A263660.P3455493495069079220` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263660 has offset 1).

The definition of A263660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263660.P3455493495069079220

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=8, a(5)=12`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A263660

/-- `2*a(n-2)` -/
def P3455493495069079220.Spec : Prop :=
  ∀ n, (P3455493495069079220.a n : ℤ) = A263660 (n + 1)

theorem P3455493495069079220.correct : P3455493495069079220.Spec := by
  intro n
  simp only [A263660, Nat.add_sub_cancel]

end A263660

/-! ## A263660.P7246788936770537143

`xor(A000007(A008616(n)), A063759(n))`
-/

namespace A263660.P7246788936770537143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A008616 n).toNat) (A063759 n)

end

end A263660.P7246788936770537143

namespace A263660

/-- `xor(A000007(A008616(n)), A063759(n))` -/
def P7246788936770537143.Spec : Prop :=
  ∀ n, P7246788936770537143.a n = A263660 (n + 1)

end A263660

/-! ## A263660.P2657468193256367343

`A164090(n+1)-A008683(A204617(n+1))`
-/

namespace A263660.P2657468193256367343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) - A008683 (A204617 (n + 1)).toNat

end

end A263660.P2657468193256367343

namespace A263660

/-- `A164090(n+1)-A008683(A204617(n+1))` -/
def P2657468193256367343.Spec : Prop :=
  ∀ n, P2657468193256367343.a n = A263660 (n + 1)

end A263660

/-! ## A263660.P2348184847772733817

`and(A029746(n), A169969(n+1))`
-/

namespace A263660.P2348184847772733817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029746 n) (A169969 (n + 1))

end

end A263660.P2348184847772733817

namespace A263660

/-- `and(A029746(n), A169969(n+1))` -/
def P2348184847772733817.Spec : Prop :=
  ∀ n, P2348184847772733817.a n = A263660 (n + 1)

end A263660

/-! ## A263660.P9220266965573435249

`xor(A010054(A038700(n+1)), A063759(n))`
-/

namespace A263660.P9220266965573435249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 (A038700 (n + 1)).toNat) (A063759 n)

end

end A263660.P9220266965573435249

namespace A263660

/-- `xor(A010054(A038700(n+1)), A063759(n))` -/
def P9220266965573435249.Spec : Prop :=
  ∀ n, P9220266965573435249.a n = A263660 (n + 1)

end A263660

/-! ## A263660.P15062462608307374765

`record[A278538(n+1)+A273665(n)]`
-/

namespace A263660.P15062462608307374765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278538 (n + 1) + A273665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263660.P15062462608307374765

namespace A263660

/-- `record[A278538(n+1)+A273665(n)]` -/
def P15062462608307374765.Spec : Prop :=
  ∀ n, P15062462608307374765.a n = A263660 (n + 1)

end A263660

/-! ## A263660.P9795027578994695853

`xor(A063759(n), A111406(A155171(n+1)))`
-/

namespace A263660.P9795027578994695853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063759 n) (A111406 (A155171 (n + 1)).toNat)

end

end A263660.P9795027578994695853

namespace A263660

/-- `xor(A063759(n), A111406(A155171(n+1)))` -/
def P9795027578994695853.Spec : Prop :=
  ∀ n, P9795027578994695853.a n = A263660 (n + 1)

end A263660

/-!
# A263661: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and with no two consecutive increases or two consecutive decreases.

The programs for A263661, there is no canonical definition to state claims against.
-/

/-! ## A263661.P2249689480006037753

`A263666(∑[n+3]+1)`
-/

namespace A263661.P2249689480006037753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263661.P2249689480006037753

/-! ## A263661.P4836292086653701716

`A263666(Δ[A008778(n)])+char[34]`
-/

namespace A263661.P4836292086653701716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263661.P4836292086653701716

/-! ## A263661.P3245981196001435768

`or(char[7], A263666(A055999(n)+4))`
-/

namespace A263661.P3245981196001435768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263666 (A055999 n + 4).toNat)

end

end A263661.P3245981196001435768

/-! ## A263661.P12998734149243164571

`record[A263666(A060577(n+1)-n)]`
-/

namespace A263661.P12998734149243164571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A060577 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263661.P12998734149243164571

/-! ## A263661.P3690667014125870279

`record[A263666(n+1)/A059268(n+3)]`
-/

namespace A263661.P3690667014125870279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263666 (n + 1) : ℚ) / (A059268 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263661.P3690667014125870279

/-!
# A263662: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and with no two consecutive increases or two consecutive decreases.

The programs for A263662, there is no canonical definition to state claims against.
-/

/-! ## A263662.P10165782395729046614

`A263666(∑[n+4]+3)`
-/

namespace A263662.P10165782395729046614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263662.P10165782395729046614

/-! ## A263662.P6891415472183256717

`record[A263666(A019304(n))]`
-/

namespace A263662.P6891415472183256717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263662.P6891415472183256717

/-! ## A263662.P1348511357936108615

`record[A263666(A027379(n))]`
-/

namespace A263662.P1348511357936108615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263662.P1348511357936108615

/-! ## A263662.P1621121996497843648

`record[A263666(A060577(n)+1)]`
-/

namespace A263662.P1621121996497843648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A060577 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263662.P1621121996497843648

/-! ## A263662.P16654921112220698282

`record[A263666(abs(A046691(n))+1)]`
-/

namespace A263662.P16654921112220698282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (|A046691 n| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263662.P16654921112220698282

/-!
# A263663: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and with no two consecutive increases or two consecutive decreases.

The programs for A263663, there is no canonical definition to state claims against.
-/

/-! ## A263663.P13807803551485977496

`A263666(∑[n+5]+6)`
-/

namespace A263663.P13807803551485977496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263663.P13807803551485977496

/-! ## A263663.P6719050641969861350

`record[A263666(A060577(n))]`
-/

namespace A263663.P6719050641969861350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263663.P6719050641969861350

/-! ## A263663.P17764160482966717539

`record[A263666(abs(A046691(n)))]`
-/

namespace A263663.P17764160482966717539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263663.P17764160482966717539

/-! ## A263663.P12970607016510605618

`record[A263666(A046691(n+1))]`
-/

namespace A263663.P12970607016510605618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A046691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263663.P12970607016510605618

/-! ## A263663.P7974693284302090577

`record[A263666(A052905(n)+1)]`
-/

namespace A263663.P7974693284302090577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263663.P7974693284302090577

/-!
# A263664: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and with no two consecutive increases or two consecutive decreases.

The programs for A263664, there is no canonical definition to state claims against.
-/

/-! ## A263664.P4775911854263570259

`record[A263666(∑[n+3]-2)]`
-/

namespace A263664.P4775911854263570259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263664.P4775911854263570259

/-! ## A263664.P8294242695428792957

`A263666(A052905(n+3))`
-/

namespace A263664.P8294242695428792957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A052905 (n + 3)).toNat

end

end A263664.P8294242695428792957

/-! ## A263664.P3367581522204203564

`A263666(A056119(n)+16)`
-/

namespace A263664.P3367581522204203564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A056119 n + 16).toNat

end

end A263664.P3367581522204203564

/-! ## A263664.P3226119350820161870

`A263666(eq[3, A219347(n)])`
-/

namespace A263664.P3226119350820161870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263664.P3226119350820161870

/-! ## A263664.P4474379100343899737

`A263666(A141214(n+3)-2)`
-/

namespace A263664.P4474379100343899737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A141214 (n + 3) - 2).toNat

end

end A263664.P4474379100343899737

/-!
# A263665: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and with no two consecutive increases or two consecutive decreases.

The programs for A263665, there is no canonical definition to state claims against.
-/

/-! ## A263665.P5701545760004155533

`A263666(eq[4, A219347(n)])`
-/

namespace A263665.P5701545760004155533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263665.P5701545760004155533

/-! ## A263665.P4388936782881117869

`A263666(eq[6, A193592(n)])`
-/

namespace A263665.P4388936782881117869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263665.P4388936782881117869

/-! ## A263665.P16909144341280602440

`A263666(Δ[A023551(n+2)])`
-/

namespace A263665.P16909144341280602440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (f1 (n + 1) - f1 n).toNat

end

end A263665.P16909144341280602440

/-! ## A263665.P10912046794137052475

`record[A263666(A060577(n)+n)]`
-/

namespace A263665.P10912046794137052475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A060577 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263665.P10912046794137052475

/-! ## A263665.P1979389155712796843

`A263666(A000124(n+7)-7)`
-/

namespace A263665.P1979389155712796843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A000124 (n + 7) - 7).toNat

end

end A263665.P1979389155712796843

/-!
# A263666: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and with no two consecutive increases or two consecutive decreases.

The programs for A263666, there is no canonical definition to state claims against.
-/

/-! ## A263666.P15894748670146736747

`A179390(A005041(A263643(n+1)²))`
-/

namespace A263666.P15894748670146736747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179390 (A005041 (A263643 (n + 1) ^ 2).toNat).toNat

end

end A263666.P15894748670146736747

/-! ## A263666.P5150354368041494809

`A166099(A316101(n)+A143632(n))`
-/

namespace A263666.P5150354368041494809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166099 (A316101 n + A143632 n).toNat

end

end A263666.P5150354368041494809

/-! ## A263666.P17210809358623514868

`A064004(A263643(n+1)%A223096(n+4))`
-/

namespace A263666.P17210809358623514868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064004 (Int.tmod (A263643 (n + 1)) (A223096 (n + 4))).toNat

end

end A263666.P17210809358623514868

/-! ## A263666.P2521628556804198443

`A099384(4*A263597(n+1))+A002262(A195082(n+1))`
-/

namespace A263666.P2521628556804198443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (4 * A263597 (n + 1)).toNat + A002262 (A195082 (n + 1)).toNat

end

end A263666.P2521628556804198443

/-! ## A263666.P11837391754653769088

`A242310(A152842(n))`
-/

namespace A263666.P11837391754653769088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242310 (A152842 n).toNat

end

end A263666.P11837391754653769088

/-!
# A263667: Number of (n+1)X(1+1) 0..6 arrays with each row and column divisible by 11, read as a base-7 number with top and left being the most significant digits.

The programs for A263667, there is no canonical definition to state claims against.
-/

/-! ## A263667.P14106100280116474591

`A263672(∑[n]+1)`
-/

namespace A263667.P14106100280116474591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263672 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263667.P14106100280116474591

/-! ## A263667.P7262859700327457384

`record[A263672(n+1)/A156581(n)]`
-/

namespace A263667.P7262859700327457384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263672 (n + 1) : ℚ) / (A156581 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263667.P7262859700327457384

/-! ## A263667.P946575847296854466

`record[root(A263672(n+1), A008288(n))]`
-/

namespace A263667.P946575847296854466
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263672 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263667.P946575847296854466

/-! ## A263667.P11294626673539557985

`record[gcd(A002262(n), A263672(n+1))]`
-/

namespace A263667.P11294626673539557985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A263672 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263667.P11294626673539557985

/-! ## A263667.P17823502461674522603

`record[root(A263672(n+1), A197090(n+1))]`
-/

namespace A263667.P17823502461674522603
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263672 (n + 1) : ℝ) ^ (1 / (A197090 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263667.P17823502461674522603

/-!
# A263668: Number of (n+1)X(2+1) 0..6 arrays with each row and column divisible by 11, read as a base-7 number with top and left being the most significant digits.

The programs for A263668, there is no canonical definition to state claims against.
-/

/-! ## A263668.P9417779382506369545

`A263672(∑[n+1]+2)`
-/

namespace A263668.P9417779382506369545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263672 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263668.P9417779382506369545

/-! ## A263668.P16405118392364097529

`record[gcd(A002262(n), A263672(n+2))]`
-/

namespace A263668.P16405118392364097529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A263672 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263668.P16405118392364097529

/-! ## A263668.P5102093685716579743

`record[root(A263672(n+2), A263666(n+1))]`
-/

namespace A263668.P5102093685716579743
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263672 (n + 2) : ℝ) ^ (1 / (A263666 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263668.P5102093685716579743

/-! ## A263668.P2462432623013322932

`record[root(A263672(n+2), A263683(n+1))]`
-/

namespace A263668.P2462432623013322932
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263672 (n + 2) : ℝ) ^ (1 / (A263683 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263668.P2462432623013322932

/-! ## A263668.P4124555495255825160

`record[root(A263672(n+2), A263693(n+1))]`
-/

namespace A263668.P4124555495255825160
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263672 (n + 2) : ℝ) ^ (1 / (A263693 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263668.P4124555495255825160

/-!
# A263669: Number of (n+1)X(3+1) 0..6 arrays with each row and column divisible by 11, read as a base-7 number with top and left being the most significant digits.

The programs for A263669, there is no canonical definition to state claims against.
-/

/-! ## A263669.P16921738499131938333

`A263672(∑[n+2]+4)`
-/

namespace A263669.P16921738499131938333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263672 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263669.P16921738499131938333

/-! ## A263669.P3433123580877280172

`or(char[n²], A263672(A167614(n+1)))`
-/

namespace A263669.P3433123580877280172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263672 (A167614 (n + 1)).toNat)

end

end A263669.P3433123580877280172

/-! ## A263669.P4234221578059863223

`A263672(A167614(n+1))*A348674(n)`
-/

namespace A263669.P4234221578059863223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263672 (A167614 (n + 1)).toNat * A348674 n

end

end A263669.P4234221578059863223

/-! ## A263669.P8779831271976322750

`A263672(A167614(n+1))%A263670(n+1)`
-/

namespace A263669.P8779831271976322750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263672 (A167614 (n + 1)).toNat) (A263670 (n + 1))

end

end A263669.P8779831271976322750

/-! ## A263669.P5389615089645821205

`lcm(A071936(n+1), A263672(A167614(n+1)))`
-/

namespace A263669.P5389615089645821205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071936 (n + 1)) (A263672 (A167614 (n + 1)).toNat)

end

end A263669.P5389615089645821205

/-!
# A263670: Number of (n+1) X (4+1) 0..6 arrays with each row and column divisible by 11, read as a base-7 number with top and left being the most significant digits.

The programs for A263670, there is no canonical definition to state claims against.
-/

/-! ## A263670.P15399230736391139313

`A263672(A141214(n)+7)`
-/

namespace A263670.P15399230736391139313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263672 (A141214 n + 7).toNat

end

end A263670.P15399230736391139313

/-! ## A263670.P8684847039699452969

`A263672(A052905(n)+9)`
-/

namespace A263670.P8684847039699452969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263672 (A052905 n + 9).toNat

end

end A263670.P8684847039699452969

/-! ## A263670.P13218438658607625739

`A263672(A167614(n+2)+1)`
-/

namespace A263670.P13218438658607625739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263672 (A167614 (n + 2) + 1).toNat

end

end A263670.P13218438658607625739

/-! ## A263670.P7788052262247170479

`A263672(eq[5, A131818(n+1)])`
-/

namespace A263670.P7788052262247170479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263670.P7788052262247170479

/-!
# A263671: 

The programs for A263671, there is no canonical definition to state claims against.
-/

/-! ## A263671.P4622446460378224283

`A263672(eq[6, A131818(n+1)])`
-/

namespace A263671.P4622446460378224283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263671.P4622446460378224283

/-! ## A263671.P2729962429233130716

`A263672(eq[5, A200370(n+1)])`
-/

namespace A263671.P2729962429233130716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263671.P2729962429233130716

/-!
# A263672: T(n,k)=Number of (n+1)X(k+1) 0..6 arrays with each row and column divisible by 11, read as a base-7 number with top and left being the most significant digits.

The programs for A263672, there is no canonical definition to state claims against.
-/

/-! ## A263672.P16976756535095731956

`A077375(A327393((n+1)*∏{p}[n+1, #]+1))`
-/

namespace A263672.P16976756535095731956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077375 (A327393 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)).toNat

end

end A263672.P16976756535095731956

/-!
# A263673: a(n) = lcm{1,2,...,n} / binomial(n,floor(n/2)).

The programs for A263673, the canonical program `A263673.P17564345836323760569` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263673 has offset 0).

The definition of A263673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263673.P17564345836323760569

`A180000(n)*A152271(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263673

/-- `A180000(n)*A152271(n)` -/
def P17564345836323760569.Spec : Prop :=
  ∀ n, P17564345836323760569.a n = A263673 n

theorem P17564345836323760569.correct : P17564345836323760569.Spec := by
  intro n
  simp only [A263673]

end A263673

/-! ## A263673.P8260652102836344401

`A003418(n)/A001405(n)`
-/

namespace A263673.P8260652102836344401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A001405 n : ℚ)

end

end A263673.P8260652102836344401

namespace A263673

/-- `A003418(n)/A001405(n)` -/
def P8260652102836344401.Spec : Prop :=
  ∀ n, P8260652102836344401.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P2970230141728797441

`a(n-1)/gcd(n, a(n-1))*ceil(n/2)` with `a(0)=1`
-/

namespace A263673.P2970230141728797441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) * (⌈(n : ℚ) / 2⌉ : ℚ)

end

end A263673.P2970230141728797441

namespace A263673

/-- `a(n-1)/gcd(n, a(n-1))*ceil(n/2)` -/
def P2970230141728797441.Spec : Prop :=
  ∀ n, P2970230141728797441.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P8338969376215826422

`A048619(n)*A048671(n+1)`
-/

namespace A263673.P8338969376215826422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048619 n * A048671 (n + 1)

end

end A263673.P8338969376215826422

namespace A263673

/-- `A048619(n)*A048671(n+1)` -/
def P8338969376215826422.Spec : Prop :=
  ∀ n, P8338969376215826422.a n = A263673 n

end A263673

/-! ## A263673.P15500953502883951936

`gcd(n+1, A001057(n))*A180000(n)`
-/

namespace A263673.P15500953502883951936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A001057 n) : ℤ) * A180000 n

end

end A263673.P15500953502883951936

namespace A263673

/-- `gcd(n+1, A001057(n))*A180000(n)` -/
def P15500953502883951936.Spec : Prop :=
  ∀ n, P15500953502883951936.a n = A263673 n

end A263673

/-! ## A263673.P18262767547257475020

`A003602(A093178(n))*A180000(n)`
-/

namespace A263673.P18262767547257475020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A093178 n).toNat * A180000 n

end

end A263673.P18262767547257475020

namespace A263673

/-- `A003602(A093178(n))*A180000(n)` -/
def P18262767547257475020.Spec : Prop :=
  ∀ n, P18262767547257475020.a n = A263673 n

end A263673

/-! ## A263673.P15170779151104633790

`A180000(n+1)/A048619(n)*A180000(n)`
-/

namespace A263673.P15170779151104633790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (n + 1) : ℚ) / (A048619 n : ℚ) * (A180000 n : ℚ)

end

end A263673.P15170779151104633790

namespace A263673

/-- `A180000(n+1)/A048619(n)*A180000(n)` -/
def P15170779151104633790.Spec : Prop :=
  ∀ n, P15170779151104633790.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P1677019781915370815

`∏[A065033(n)/A048671(n+1)]*A048671(n+1)`
-/

namespace A263673.P1677019781915370815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A048671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (A048671 (n + 1) : ℚ)

end

end A263673.P1677019781915370815

namespace A263673

/-- `∏[A065033(n)/A048671(n+1)]*A048671(n+1)` -/
def P1677019781915370815.Spec : Prop :=
  ∀ n, P1677019781915370815.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P10531567064871636926

`A056040(n)/A001405(n)*A180000(n)`
-/

namespace A263673.P10531567064871636926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A001405 n : ℚ) * (A180000 n : ℚ)

end

end A263673.P10531567064871636926

namespace A263673

/-- `A056040(n)/A001405(n)*A180000(n)` -/
def P10531567064871636926.Spec : Prop :=
  ∀ n, P10531567064871636926.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P8060487743283692052

`ceil(A003418(n)/A051920(n))`
-/

namespace A263673.P8060487743283692052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003418 n : ℚ) / (A051920 n : ℚ)⌉

end

end A263673.P8060487743283692052

namespace A263673

/-- `ceil(A003418(n)/A051920(n))` -/
def P8060487743283692052.Spec : Prop :=
  ∀ n, P8060487743283692052.a n = A263673 n

end A263673

/-! ## A263673.P9684587587786787657

`A003418(n)/(A014495(n)+1)`
-/

namespace A263673.P9684587587786787657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A014495 n + 1 : ℚ)

end

end A263673.P9684587587786787657

namespace A263673

/-- `A003418(n)/(A014495(n)+1)` -/
def P9684587587786787657.Spec : Prop :=
  ∀ n, P9684587587786787657.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P9320554092449155912

`A003418(n)/A210736(n+1)`
-/

namespace A263673.P9320554092449155912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A210736 (n + 1) : ℚ)

end

end A263673.P9320554092449155912

namespace A263673

/-- `A003418(n)/A210736(n+1)` -/
def P9320554092449155912.Spec : Prop :=
  ∀ n, P9320554092449155912.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P15145151601233469210

`∏[A014963(∏{p}[n, #])]/A001405(n)`
-/

namespace A263673.P15145151601233469210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001405 n : ℚ)

end

end A263673.P15145151601233469210

namespace A263673

/-- `∏[A014963(∏{p}[n, #])]/A001405(n)` -/
def P15145151601233469210.Spec : Prop :=
  ∀ n, P15145151601233469210.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P11366989704629500715

`∏[A014963(n*a((9*n)%3))]/A001405(n)` with `a(0)=1`
-/

namespace A263673.P11366989704629500715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A014963 ((n : ℤ) * f1 (9 * n % 3)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001405 n : ℚ)

end

end A263673.P11366989704629500715

namespace A263673

/-- `∏[A014963(n*a((9*n)%3))]/A001405(n)` -/
def P11366989704629500715.Spec : Prop :=
  ∀ n, P11366989704629500715.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P17235792119221755525

`∏[A014963(comp[2*(n+1)]-n+1)]/A001405(n)`
-/

namespace A263673.P17235792119221755525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001405 n : ℚ)

end

end A263673.P17235792119221755525

namespace A263673

/-- `∏[A014963(comp[2*(n+1)]-n+1)]/A001405(n)` -/
def P17235792119221755525.Spec : Prop :=
  ∀ n, P17235792119221755525.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P3796489508574885739

`A003418(n)/A002944(n+1)*A048619(n)`
-/

namespace A263673.P3796489508574885739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A002944 (n + 1) : ℚ) * (A048619 n : ℚ)

end

end A263673.P3796489508574885739

namespace A263673

/-- `A003418(n)/A002944(n+1)*A048619(n)` -/
def P3796489508574885739.Spec : Prop :=
  ∀ n, P3796489508574885739.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P11519395394985890986

`∏[A014963(n+1)]/(A001405(n)*A014963(n+1))`
-/

namespace A263673.P11519395394985890986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001405 n * A014963 (n + 1) : ℚ)

end

end A263673.P11519395394985890986

namespace A263673

/-- `∏[A014963(n+1)]/(A001405(n)*A014963(n+1))` -/
def P11519395394985890986.Spec : Prop :=
  ∀ n, P11519395394985890986.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P8685623765517680725

`A003418(n)/sqrt(A018224(n))`
-/

namespace A263673.P8685623765517680725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℝ) / Real.sqrt (A018224 n : ℝ)

end

end A263673.P8685623765517680725

namespace A263673

/-- `A003418(n)/sqrt(A018224(n))` -/
def P8685623765517680725.Spec : Prop :=
  ∀ n, P8685623765517680725.a n = (A263673 n : ℝ)

end A263673

/-! ## A263673.P4629600787237866280

`A003418(n)/A007318(ceil(n²/2)+n)`
-/

namespace A263673.P4629600787237866280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A007318 (⌈(n ^ 2 : ℚ) / 2⌉ + (n : ℤ)).toNat : ℚ)

end

end A263673.P4629600787237866280

namespace A263673

/-- `A003418(n)/A007318(ceil(n²/2)+n)` -/
def P4629600787237866280.Spec : Prop :=
  ∀ n, P4629600787237866280.a n = (A263673 n : ℚ)

end A263673

/-! ## A263673.P2524152476354074705

`A081123(n+1)/A081123(n)*A180000(n)`
-/

namespace A263673.P2524152476354074705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 (n + 1) : ℚ) / (A081123 n : ℚ) * (A180000 n : ℚ)

end

end A263673.P2524152476354074705

namespace A263673

/-- `A081123(n+1)/A081123(n)*A180000(n)` -/
def P2524152476354074705.Spec : Prop :=
  ∀ n, P2524152476354074705.a n = (A263673 n : ℚ)

end A263673

/-!
# A263674: Double interprimes: a(n) = (q+r)/2 = (p+s)/2 with p

The programs for A263674, there is no canonical definition to state claims against.
-/

/-! ## A263674.P5999487777913017399

`A105093(n+1)/2`
-/

namespace A263674.P5999487777913017399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105093 (n + 1) : ℚ) / 2

end

end A263674.P5999487777913017399

/-! ## A263674.P13723137026946511037

`A024675(A022884(n+1))`
-/

namespace A263674.P13723137026946511037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (A022884 (n + 1)).toNat

end

end A263674.P13723137026946511037

/-! ## A263674.P16188576739471094959

`∩[A102655(n+1), A162800(n)]`
-/

namespace A263674.P16188576739471094959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263674.P16188576739471094959

/-! ## A263674.P3278419042355529720

`A001043(A022884(n+1)+1)/2`
-/

namespace A263674.P3278419042355529720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (A022884 (n + 1) + 1).toNat : ℚ) / 2

end

end A263674.P3278419042355529720

/-! ## A263674.P6619168452978383450

`∩[A024675(n+1), A102655(n+1)]`
-/

namespace A263674.P6619168452978383450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263674.P6619168452978383450

/-! ## A263674.P6338480903444973114

`∩[A102655(n+1), A162735(n+1)]`
-/

namespace A263674.P6338480903444973114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263674.P6338480903444973114

/-! ## A263674.P8474918597992377783

`∩[A001043(n+1), A131019(n+1)]/2`
-/

namespace A263674.P8474918597992377783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A263674.P8474918597992377783

/-! ## A263674.P11469629777586510967

`∩[A011974(n+1), A131019(n+1)]/2`
-/

namespace A263674.P11469629777586510967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A263674.P11469629777586510967

/-! ## A263674.P8029142946116290746

`∩[A131019(n+1), A164653(n+1)]/2`
-/

namespace A263674.P8029142946116290746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A263674.P8029142946116290746

/-! ## A263674.P1687680822309583964

`A024675(eq[A031131(n+2), A031131(n+1)]+1)`
-/

namespace A263674.P1687680822309583964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A263674.P1687680822309583964

/-! ## A263674.P18196984608966270971

`A024675(eq[A001223(n+3), A001223(n+1)]+1)`
-/

namespace A263674.P18196984608966270971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A263674.P18196984608966270971

/-! ## A263674.P2579469533849423999

`∩[A102655(n+1), A145025(n+1)]`
-/

namespace A263674.P2579469533849423999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263674.P2579469533849423999

/-! ## A263674.P1698073052494390717

`A033597(A373299(n+1)+1)`
-/

namespace A263674.P1698073052494390717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033597 (A373299 (n + 1) + 1).toNat

end

end A263674.P1698073052494390717

/-! ## A263674.P16309556679821028680

`A001281(A105093(n+1))`
-/

namespace A263674.P16309556679821028680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A105093 (n + 1)).toNat

end

end A263674.P16309556679821028680

/-!
# A263675: Numbers that are both averages of consecutive primes and nontrivial prime powers.

The programs for A263675, there is no canonical definition to state claims against.
-/

/-! ## A263675.P8112641236339028442

`∩[A025475(n+1), A270696(n+1)]`
-/

namespace A263675.P8112641236339028442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263675.P8112641236339028442

/-! ## A263675.P15281670660059118432

`∩[A073540(n+1), A270696(n+1)]`
-/

namespace A263675.P15281670660059118432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263675.P15281670660059118432

/-! ## A263675.P10279954463146471007

`∩[A134612(n+1), A270696(n+1)]`
-/

namespace A263675.P10279954463146471007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263675.P10279954463146471007

/-! ## A263675.P17161211336505409590

`∩[A270696(n+1), A306531(n+1)]`
-/

namespace A263675.P17161211336505409590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263675.P17161211336505409590

/-!
# A263676: Numbers that are both interprime and oblong.

The programs for A263676, there is no canonical definition to state claims against.
-/

/-! ## A263676.P16538161154903256589

`2*A000217(floor(sqrt(A242383(n+1))))`
-/

namespace A263676.P16538161154903256589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (Int.sqrt (A242383 (n + 1))).toNat

end

end A263676.P16538161154903256589

/-! ## A263676.P4697735449104763510

`2*A000217(round(sqrt(A242383(n+1))))`
-/

namespace A263676.P4697735449104763510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (SequenceMachineLib.roundAway (Real.sqrt (A242383 (n + 1) : ℝ))).toNat

end

end A263676.P4697735449104763510

/-! ## A263676.P2224840208953056163

`2*A000217(floor(root(A242383(n+1), 2)))`
-/

namespace A263676.P2224840208953056163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 ⌊(A242383 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋.toNat

end

end A263676.P2224840208953056163

/-! ## A263676.P2330263483302462524

`A002378(floor(sqrt(A242383(n+1))))`
-/

namespace A263676.P2330263483302462524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (Int.sqrt (A242383 (n + 1))).toNat

end

end A263676.P2330263483302462524

/-! ## A263676.P14109294058477001905

`A103505(ceil(sqrt(A242383(n+1))))`
-/

namespace A263676.P14109294058477001905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 ⌈Real.sqrt (A242383 (n + 1) : ℝ)⌉.toNat

end

end A263676.P14109294058477001905

/-! ## A263676.P14390929346945705303

`A002378(round(sqrt(A242383(n+1))))`
-/

namespace A263676.P14390929346945705303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.roundAway (Real.sqrt (A242383 (n + 1) : ℝ))).toNat

end

end A263676.P14390929346945705303

/-! ## A263676.P17070021365416127715

`A002378(floor(root(A242383(n+1), 2)))`
-/

namespace A263676.P17070021365416127715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 ⌊(A242383 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋.toNat

end

end A263676.P17070021365416127715

/-! ## A263676.P1092117534237715525

`A002378(round(root(A242383(n+1), 2)))`
-/

namespace A263676.P1092117534237715525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.roundAway ((A242383 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A263676.P1092117534237715525

/-! ## A263676.P10829032963663615373

`A035106(2*round(sqrt(A242383(n+1))))`
-/

namespace A263676.P10829032963663615373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (2 * SequenceMachineLib.roundAway (Real.sqrt (A242383 (n + 1) : ℝ))).toNat

end

end A263676.P10829032963663615373

/-! ## A263676.P13167392357281065197

`∩[A072568(n+1), n²+n]`
-/

namespace A263676.P13167392357281065197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A263676.P13167392357281065197

/-!
# A263678: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and with no two consecutive decreases.

The programs for A263678, there is no canonical definition to state claims against.
-/

/-! ## A263678.P2149888891271121393

`A263683(∑[n+3]+1)`
-/

namespace A263678.P2149888891271121393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263678.P2149888891271121393

/-! ## A263678.P10953059336631139757

`record[A263683(A347633(n+1))]`
-/

namespace A263678.P10953059336631139757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263678.P10953059336631139757

/-! ## A263678.P754486717963920017

`or(char[2], A263683(A034856(n+2)))`
-/

namespace A263678.P754486717963920017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263683 (A034856 (n + 2)).toNat)

end

end A263678.P754486717963920017

/-! ## A263678.P5087647783592728692

`log2(4/2)*A263683(Δ[A008778(n)])`
-/

namespace A263678.P5087647783592728692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((4 : ℚ) / 2 : ℝ) * (A263683 (f1 (n + 1) - f1 n).toNat : ℝ)

end

end A263678.P5087647783592728692

/-! ## A263678.P14535953645622533938

`record[A263683(n+1)/A209576(n+4)]`
-/

namespace A263678.P14535953645622533938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263683 (n + 1) : ℚ) / (A209576 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263678.P14535953645622533938

/-!
# A263679: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and with no two consecutive decreases.

The programs for A263679, there is no canonical definition to state claims against.
-/

/-! ## A263679.P5398840076327251442

`A263683(∑[n+4]+3)`
-/

namespace A263679.P5398840076327251442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263679.P5398840076327251442

/-! ## A263679.P9552099892580725265

`record[A263683(A027379(n))]`
-/

namespace A263679.P9552099892580725265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263679.P9552099892580725265

/-! ## A263679.P7717527821062879079

`record[A263683(Δ[A116721(n+1)])]`
-/

namespace A263679.P7717527821062879079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263679.P7717527821062879079

/-! ## A263679.P8666379090562754097

`or(char[2], A263683(A141214(n+1)))`
-/

namespace A263679.P8666379090562754097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263683 (A141214 (n + 1)).toNat)

end

end A263679.P8666379090562754097

/-! ## A263679.P13752967504329508563

`or(char[2], A263683(A034856(n+3)-1))`
-/

namespace A263679.P13752967504329508563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263683 (A034856 (n + 3) - 1).toNat)

end

end A263679.P13752967504329508563

/-!
# A263680: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and with no two consecutive decreases.

The programs for A263680, there is no canonical definition to state claims against.
-/

/-! ## A263680.P969230652887841798

`A263683(∑[n+5]+6)`
-/

namespace A263680.P969230652887841798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263680.P969230652887841798

/-! ## A263680.P3317240259825487408

`or(char[2], A263683(A000124(n+5)-5))`
-/

namespace A263680.P3317240259825487408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263683 (A000124 (n + 5) - 5).toNat)

end

end A263680.P3317240259825487408

/-! ## A263680.P14007941626126849918

`A007318(C(2, n))*A263683(A000124(n+5)-5)`
-/

namespace A263680.P14007941626126849918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263683 (A000124 (n + 5) - 5).toNat

end

end A263680.P14007941626126849918

/-! ## A263680.P3202094336433963145

`A000041(C(n, 47))*A263683(A000124(n+5)-5)`
-/

namespace A263680.P3202094336433963145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 47) * A263683 (A000124 (n + 5) - 5).toNat

end

end A263680.P3202094336433963145

/-! ## A263680.P18024302302262932964

`A263683(A000124(n+5)-5)^A007318(C(2, n+1))`
-/

namespace A263680.P18024302302262932964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263683 (A000124 (n + 5) - 5).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n + 1)) : ℤ)

end

end A263680.P18024302302262932964

/-!
# A263681: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and with no two consecutive decreases.

The programs for A263681, there is no canonical definition to state claims against.
-/

/-! ## A263681.P12294708205841260381

`record[A263683(∑[n+2]+n-1)]`
-/

namespace A263681.P12294708205841260381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263681.P12294708205841260381

/-! ## A263681.P6921124001843907969

`A263683(A052905(n+3))`
-/

namespace A263681.P6921124001843907969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (A052905 (n + 3)).toNat

end

end A263681.P6921124001843907969

/-! ## A263681.P11483087396703899583

`A263683(A056119(n)+16)`
-/

namespace A263681.P11483087396703899583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (A056119 n + 16).toNat

end

end A263681.P11483087396703899583

/-! ## A263681.P7456497742990679940

`A263683(eq[3, A219347(n)])`
-/

namespace A263681.P7456497742990679940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263681.P7456497742990679940

/-! ## A263681.P5137662320919768683

`A263683(eq[5, A193592(n)])`
-/

namespace A263681.P5137662320919768683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263681.P5137662320919768683

/-!
# A263682: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and with no two consecutive decreases.

The programs for A263682, there is no canonical definition to state claims against.
-/

/-! ## A263682.P11321480780950827834

`A263683(A055999(n+4))`
-/

namespace A263682.P11321480780950827834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (A055999 (n + 4)).toNat

end

end A263682.P11321480780950827834

/-! ## A263682.P8739618108132962138

`A263683(eq[4, A219347(n)])`
-/

namespace A263682.P8739618108132962138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263682.P8739618108132962138

/-! ## A263682.P2305598595089467975

`A263683(eq[6, A193592(n)])`
-/

namespace A263682.P2305598595089467975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263682.P2305598595089467975

/-! ## A263682.P6275785401267399331

`A263683(Δ[A023551(n+2)])`
-/

namespace A263682.P6275785401267399331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (f1 (n + 1) - f1 n).toNat

end

end A263682.P6275785401267399331

/-! ## A263682.P7895568117570965118

`A263683(A052905(n+4)-1)`
-/

namespace A263682.P7895568117570965118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (A052905 (n + 4) - 1).toNat

end

end A263682.P7895568117570965118

/-!
# A263683: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and with no two consecutive decreases.

The programs for A263683, there is no canonical definition to state claims against.
-/

/-! ## A263683.P13039926687022798593

`A263703(n+1)-A001222(A306209(n)!)`
-/

namespace A263683.P13039926687022798593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (n + 1) - A001222 (Nat.factorial (A306209 n).toNat)

end

end A263683.P13039926687022798593

/-! ## A263683.P16126680523357329994

`A263752(n+1)-A001222(A306209(n)!)`
-/

namespace A263683.P16126680523357329994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (n + 1) - A001222 (Nat.factorial (A306209 n).toNat)

end

end A263683.P16126680523357329994

/-! ## A263683.P7460549639524503579

`A263703(n+1)-A241216(A306209(n)!)`
-/

namespace A263683.P7460549639524503579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (n + 1) - A241216 (Nat.factorial (A306209 n).toNat)

end

end A263683.P7460549639524503579

/-! ## A263683.P11508188712954529054

`A263752(n+1)-A241216(A306209(n)!)`
-/

namespace A263683.P11508188712954529054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (n + 1) - A241216 (Nat.factorial (A306209 n).toNat)

end

end A263683.P11508188712954529054

/-! ## A263683.P1350103522555759761

`A263703(n+1)-A109036(A102480(n))`
-/

namespace A263683.P1350103522555759761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (n + 1) - A109036 (A102480 n).toNat

end

end A263683.P1350103522555759761

/-!
# A263684: Numbers whose base-4 and base-5 representations have only 0's and 1's.

The programs for A263684, there is no canonical definition to state claims against.
-/

/-! ## A263684.P9030170606335962022

`∩[A000695(n), A033042(n)]`
-/

namespace A263684.P9030170606335962022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263684.P9030170606335962022

/-!
# A263685: Number of inequivalent placements of n nonattacking rooks on n X n board up to rotations of the board.

The programs for A263685, there is no canonical definition to state claims against.
-/

/-! ## A263685.P6313014778431522017

`ceil(A262378(floor(record[1-(-2)^(n-2)])+1)/4)`
-/

namespace A263685.P6313014778431522017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262378 (⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋ + 1).toNat : ℚ) / 4⌉

end

end A263685.P6313014778431522017

/-! ## A263685.P11964635812155579763

`A362311(A274250(n))`
-/

namespace A263685.P11964635812155579763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362311 (A274250 n).toNat

end

end A263685.P11964635812155579763

/-!
# A263687: b(n) in (sqrt(2))_n = b(n) + c(n)*sqrt(2), where (x)_n is the Pochhammer symbol, b(n) and c(n) are integers.

The programs for A263687, there is no canonical definition to state claims against.
-/

/-! ## A263687.P10521872746969265352

`A357712(∑[n+3])`
-/

namespace A263687.P10521872746969265352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357712 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263687.P10521872746969265352

/-! ## A263687.P12585920283659913568

`A115379(A053617(n+1))`
-/

namespace A263687.P12585920283659913568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115379 (A053617 (n + 1)).toNat

end

end A263687.P12585920283659913568

/-!
# A263688: c(n) in (sqrt(2))_n = b(n) + c(n)*sqrt(2), where (x)_n is the Pochhammer symbol, b(n) and c(n) are integers.

The programs for A263688, there is no canonical definition to state claims against.
-/

/-! ## A263688.P11033668858429098707

`A059995(A073977(n+1)+8)`
-/

namespace A263688.P11033668858429098707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A073977 (n + 1) + 8).toNat

end

end A263688.P11033668858429098707

/-! ## A263688.P11970921392848177658

`A008616(or(3, A073977(n+1)))`
-/

namespace A263688.P11970921392848177658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lor 3 (A073977 (n + 1))).toNat

end

end A263688.P11970921392848177658

/-! ## A263688.P8661917576739732858

`A000142(n)-A000196(A060053(n))`
-/

namespace A263688.P8661917576739732858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000196 (A060053 n).toNat

end

end A263688.P8661917576739732858

/-!
# A263689: a(n) = (2*n^6 - 6*n^5 + 5*n^4 - n^2 + 12)/12.

The programs for A263689, the canonical program `A263689.P11228605254382763147` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263689 has offset 0).

The definition of A263689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263689.P11228605254382763147

`(2*n^6-6*n^5+5*n^4-n²+12)/12`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A263689

/-- `(2*n^6-6*n^5+5*n^4-n²+12)/12` -/
def P11228605254382763147.Spec : Prop :=
  ∀ n, P11228605254382763147.a n = (A263689 n : ℚ)

end A263689

/-! ## A263689.P16147669570847335519

`a(n-1)+(n-1)^5` with `a(0)=1`
-/

namespace A263689.P16147669570847335519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) ^ 5

end

end A263689.P16147669570847335519

namespace A263689

/-- `a(n-1)+(n-1)^5` -/
def P16147669570847335519.Spec : Prop :=
  ∀ n, P16147669570847335519.a n = A263689 n

end A263689

/-! ## A263689.P1219773995125276623

`∑[(n-1)^5]+gcd(2, 2*n)`
-/

namespace A263689.P1219773995125276623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd 2 (2 * n) : ℤ)

end

end A263689.P1219773995125276623

namespace A263689

/-- `∑[(n-1)^5]+gcd(2, 2*n)` -/
def P1219773995125276623.Spec : Prop :=
  ∀ n, P1219773995125276623.a n = A263689 n

end A263689

/-! ## A263689.P601721527527144186

`(n-1)^5-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263689.P601721527527144186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 1) ^ 5 - (-a (n - 1))

end

end A263689.P601721527527144186

namespace A263689

/-- `(n-1)^5-floor(-a(n-1))` -/
def P601721527527144186.Spec : Prop :=
  ∀ n, P601721527527144186.a n = A263689 n

end A263689

/-! ## A263689.P3730522030475369406

`(n-1)^5-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A263689.P3730522030475369406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 1) ^ 5 - (-a (n - 1))

end

end A263689.P3730522030475369406

namespace A263689

/-- `(n-1)^5-ceil(-a(n-1))` -/
def P3730522030475369406.Spec : Prop :=
  ∀ n, P3730522030475369406.a n = A263689 n

end A263689

/-! ## A263689.P14001072563529310682

`(n-1)^5-round(-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A263689.P14001072563529310682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 1) ^ 5 - (-a (n - 1))

end

end A263689.P14001072563529310682

namespace A263689

/-- `(n-1)^5-round(-a(n-1))` -/
def P14001072563529310682.Spec : Prop :=
  ∀ n, P14001072563529310682.a n = A263689 n

end A263689

/-! ## A263689.P7876531640974903883

`∑[(n+1-ceil(atan(n+1)))^5]+1`
-/

namespace A263689.P7876531640974903883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ⌈Real.arctan (n + 1 : ℝ)⌉) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A263689.P7876531640974903883

namespace A263689

/-- `∑[(n+1-ceil(atan(n+1)))^5]+1` -/
def P7876531640974903883.Spec : Prop :=
  ∀ n, P7876531640974903883.a n = A263689 n

end A263689

/-! ## A263689.P16008122487015126970

`floor(a(n-1)+(n-1)*(1-n)²²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263689.P16008122487015126970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * ((1 - (n : ℤ)) ^ 2) ^ 2

end

end A263689.P16008122487015126970

namespace A263689

/-- `floor(a(n-1)+(n-1)*(1-n)²²)` -/
def P16008122487015126970.Spec : Prop :=
  ∀ n, P16008122487015126970.a n = A263689 n

end A263689

/-! ## A263689.P4859145858427214592

`∑[A000584(abs(1-n))]`
-/

namespace A263689.P4859145858427214592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263689.P4859145858427214592

namespace A263689

/-- `∑[A000584(abs(1-n))]` -/
def P4859145858427214592.Spec : Prop :=
  ∀ n, P4859145858427214592.a n = A263689 n

end A263689

/-! ## A263689.P5515536688487517807

`A024003(n)+∑[n^5]`
-/

namespace A263689.P5515536688487517807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024003 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A263689.P5515536688487517807

namespace A263689

/-- `A024003(n)+∑[n^5]` -/
def P5515536688487517807.Spec : Prop :=
  ∀ n, P5515536688487517807.a n = A263689 n

end A263689

/-! ## A263689.P14021568897817326776

`A000539(n)+1-n^5`
-/

namespace A263689.P14021568897817326776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n + (1 - (n ^ 5 : ℤ))

end

end A263689.P14021568897817326776

namespace A263689

/-- `A000539(n)+1-n^5` -/
def P14021568897817326776.Spec : Prop :=
  ∀ n, P14021568897817326776.a n = A263689 n

end A263689

/-! ## A263689.P7754156953387208747

`∑[(A028310(n)-1)^5]+1`
-/

namespace A263689.P7754156953387208747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n - 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A263689.P7754156953387208747

namespace A263689

/-- `∑[(A028310(n)-1)^5]+1` -/
def P7754156953387208747.Spec : Prop :=
  ∀ n, P7754156953387208747.a n = A263689 n

end A263689

/-! ## A263689.P6443080055410830293

`∑[A000584(n)]+1-n^5`
-/

namespace A263689.P6443080055410830293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n ^ 5 : ℤ))

end

end A263689.P6443080055410830293

namespace A263689

/-- `∑[A000584(n)]+1-n^5` -/
def P6443080055410830293.Spec : Prop :=
  ∀ n, P6443080055410830293.a n = A263689 n

end A263689

/-! ## A263689.P18394046638863061198

`A000584(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A263689.P18394046638863061198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000584 (n - 1) + a (n - 1)

end

end A263689.P18394046638863061198

namespace A263689

/-- `A000584(n-1)+a(n-1)` -/
def P18394046638863061198.Spec : Prop :=
  ∀ n, P18394046638863061198.a n = A263689 n

end A263689

/-! ## A263689.P14546394407927916777

`A000539(n)+1-A000584(n)`
-/

namespace A263689.P14546394407927916777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n + 1 - A000584 n

end

end A263689.P14546394407927916777

namespace A263689

/-- `A000539(n)+1-A000584(n)` -/
def P14546394407927916777.Spec : Prop :=
  ∀ n, P14546394407927916777.a n = A263689 n

end A263689

/-! ## A263689.P4373178681586438912

`∑[(n-A001222(A323075(n+1)))^5]+1`
-/

namespace A263689.P4373178681586438912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A001222 (A323075 (n + 1)).toNat) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A263689.P4373178681586438912

namespace A263689

/-- `∑[(n-A001222(A323075(n+1)))^5]+1` -/
def P4373178681586438912.Spec : Prop :=
  ∀ n, P4373178681586438912.a n = A263689 n

end A263689

/-! ## A263689.P14290106860263900093

`∑[n*A000290(n)²]+1-n*A000290(n)²`
-/

namespace A263689.P14290106860263900093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000290 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ) * A000290 n ^ 2

end

end A263689.P14290106860263900093

namespace A263689

/-- `∑[n*A000290(n)²]+1-n*A000290(n)²` -/
def P14290106860263900093.Spec : Prop :=
  ∀ n, P14290106860263900093.a n = A263689 n

end A263689

/-! ## A263689.P7489473150529328177

`∑[A036488((1-n)²)]`
-/

namespace A263689.P7489473150529328177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036488 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263689.P7489473150529328177

namespace A263689

/-- `∑[A036488((1-n)²)]` -/
def P7489473150529328177.Spec : Prop :=
  ∀ n, P7489473150529328177.a n = A263689 n

end A263689

/-!
# A263690: Number of length n arrays of permutations of 0..n-1 with each element moved by -n to n places and every three consecutive elements having its maximum within 3 of its minimum.

The programs for A263690, there is no canonical definition to state claims against.
-/

/-! ## A263690.P12553957379867336100

`A263693(A008619(comp[2*n+3]²))`
-/

namespace A263690.P12553957379867336100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263693 (A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)).toNat

end

end A263690.P12553957379867336100

/-! ## A263690.P7485017626179839766

`A263693(A328399(comp[2*n+3]²))`
-/

namespace A263690.P7485017626179839766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263693 (A328399 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)).toNat

end

end A263690.P7485017626179839766

/-! ## A263690.P2712055152308958728

`A263693(A051890(n)-A004273(n))`
-/

namespace A263690.P2712055152308958728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263693 (A051890 n - A004273 n).toNat

end

end A263690.P2712055152308958728

/-! ## A263690.P8697654740769020748

`A263693(A093328(n)-A008574(n))`
-/

namespace A263690.P8697654740769020748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263693 (A093328 n - A008574 n).toNat

end

end A263690.P8697654740769020748

/-! ## A263690.P13293173113201696588

`A263693(A051890(n)-abs(A060747(n)))`
-/

namespace A263690.P13293173113201696588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263693 (A051890 n - |A060747 n|).toNat

end

end A263690.P13293173113201696588

/-!
# A263691: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and every three consecutive elements having its maximum within 3 of its minimum.

The programs for A263691, there is no canonical definition to state claims against.
-/

/-! ## A263691.P16339463846461005018

`A263693(∑[n+2])`
-/

namespace A263691.P16339463846461005018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263693 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263691.P16339463846461005018

/-! ## A263691.P16140414041974552326

`and(-1, A263693(A000096(n+1)))`
-/

namespace A263691.P16140414041974552326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A263693 (A000096 (n + 1)).toNat)

end

end A263691.P16140414041974552326

/-! ## A263691.P733523477110218805

`A263693(A000096(n+1))%A000032(n+3)`
-/

namespace A263691.P733523477110218805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263693 (A000096 (n + 1)).toNat) (A000032 (n + 3))

end

end A263691.P733523477110218805

/-! ## A263691.P18303208231858876069

`A007318(C(n, 2))*A263693(A000096(n+1))`
-/

namespace A263691.P18303208231858876069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A263693 (A000096 (n + 1)).toNat

end

end A263691.P18303208231858876069

/-! ## A263691.P1865413538206520874

`A263693(A000096(n+1))/A007318(C(2, n))`
-/

namespace A263691.P1865413538206520874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263693 (A000096 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A263691.P1865413538206520874

/-!
# A263692: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and every three consecutive elements having its maximum within 3 of its minimum.

The programs for A263692, there is no canonical definition to state claims against.
-/

/-! ## A263692.P10897824801832257522

`A263693(∑[n+3]+1)`
-/

namespace A263692.P10897824801832257522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263693 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263692.P10897824801832257522

/-! ## A263692.P15903628921049983348

`lcm((-1)^n, A263693(Δ[A008778(n)]))`
-/

namespace A263692.P15903628921049983348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A263693 (f1 (n + 1) - f1 n).toNat)

end

end A263692.P15903628921049983348

/-! ## A263692.P16756290130642476415

`A263693(Δ[A008778(n)])%A000045(n+6)`
-/

namespace A263692.P16756290130642476415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263693 (f1 (n + 1) - f1 n).toNat) (A000045 (n + 6))

end

end A263692.P16756290130642476415

/-! ## A263692.P12009865266789834581

`A263693(Δ[A008778(n)])+A008683(8*(n+1))`
-/

namespace A263692.P12009865266789834581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263693 (f1 (n + 1) - f1 n).toNat + A008683 (8 * (n + 1))

end

end A263692.P12009865266789834581

/-! ## A263692.P1080138769559017810

`A014963(6*(n+1))*A263693(Δ[A008778(n)])`
-/

namespace A263692.P1080138769559017810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A263693 (f1 (n + 1) - f1 n).toNat

end

end A263692.P1080138769559017810

/-!
# A263693: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and every three consecutive elements having its maximum within 3 of its minimum.

The programs for A263693, there is no canonical definition to state claims against.
-/

/-! ## A263693.P17085806578266607475

`A263703(n+1)+A178798(A011117(n))`
-/

namespace A263693.P17085806578266607475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (n + 1) + A178798 (A011117 n).toNat

end

end A263693.P17085806578266607475

/-! ## A263693.P6430444272619968002

`A263714(n+1)+A178798(A011117(n))`
-/

namespace A263693.P6430444272619968002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (n + 1) + A178798 (A011117 n).toNat

end

end A263693.P6430444272619968002

/-! ## A263693.P16574698661539624549

`A263752(n+1)+A178798(A011117(n))`
-/

namespace A263693.P16574698661539624549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263752 (n + 1) + A178798 (A011117 n).toNat

end

end A263693.P16574698661539624549

/-! ## A263693.P3699144005870166388

`A263703(n+1)-A151755(A293961(n))`
-/

namespace A263693.P3699144005870166388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (n + 1) - A151755 (A293961 n).toNat

end

end A263693.P3699144005870166388

/-! ## A263693.P14538460347365219933

`A263714(n+1)-A151755(A293961(n))`
-/

namespace A263693.P14538460347365219933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (n + 1) - A151755 (A293961 n).toNat

end

end A263693.P14538460347365219933

/-!
# A263694: Expansion of (1 + x + x^2 + x^3 + 4*x^4 - x^5 - x^6 - x^7 + 3*x^8)/((1 - x)^2*(1 + x + x^2 + x^3 + x^4 + x^5 + x^6 + x^7)).

The programs for A263694, the canonical program `A263694.P17879134133188677875` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263694 has offset 0).

The definition of A263694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263694.P17879134133188677875

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=8, a(5)=7, a(6)=6, a(7)=5, a(8)=9`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A263694

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P17879134133188677875.Spec : Prop :=
  ∀ n, P17879134133188677875.a n = A263694 n

theorem P17879134133188677875.correct : P17879134133188677875.Spec := by
  intro n
  simp only [A263694]

end A263694

/-! ## A263694.P17543776261211155018

`xor(n, 3*and(4, n)/4)+1`
-/

namespace A263694.P17543776261211155018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway (3 * ((Nat.land 4 n : ℚ) / 4))) + 1

end

end A263694.P17543776261211155018

namespace A263694

/-- `xor(n, 3*and(4, n)/4)+1` -/
def P17543776261211155018.Spec : Prop :=
  ∀ n, P17543776261211155018.a n = A263694 n

end A263694

/-! ## A263694.P12863192419943204337

`∑[A046978(n)+1]-and(3, n)`
-/

namespace A263694.P12863192419943204337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 3 n : ℤ)

end

end A263694.P12863192419943204337

namespace A263694

/-- `∑[A046978(n)+1]-and(3, n)` -/
def P12863192419943204337.Spec : Prop :=
  ∀ n, P12863192419943204337.a n = A263694 n

end A263694

/-! ## A263694.P17273751570253040404

`A090281(n+1)+n-A010873(n)`
-/

namespace A263694.P17273751570253040404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090281 (n + 1) + ((n : ℤ) - A010873 n)

end

end A263694.P17273751570253040404

namespace A263694

/-- `A090281(n+1)+n-A010873(n)` -/
def P17273751570253040404.Spec : Prop :=
  ∀ n, P17273751570253040404.a n = A263694 n

end A263694

/-! ## A263694.P9470303102462583342

`A090281(n+1)+A008586(A002265(n))`
-/

namespace A263694.P9470303102462583342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090281 (n + 1) + A008586 (A002265 n).toNat

end

end A263694.P9470303102462583342

namespace A263694

/-- `A090281(n+1)+A008586(A002265(n))` -/
def P9470303102462583342.Spec : Prop :=
  ∀ n, P9470303102462583342.a n = A263694 n

end A263694

/-! ## A263694.P171335019348811033

`A108922(2*n)-n%4`
-/

namespace A263694.P171335019348811033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108922 (2 * n) - ((n % 4 : ℕ) : ℤ)

end

end A263694.P171335019348811033

namespace A263694

/-- `A108922(2*n)-n%4` -/
def P171335019348811033.Spec : Prop :=
  ∀ n, P171335019348811033.a n = A263694 n

end A263694

/-!
# A263696: Number of length n arrays of permutations of 0..n-1 with each element moved by -n to n places and every three consecutive elements having its maximum within 4 of its minimum.

The programs for A263696, there is no canonical definition to state claims against.
-/

/-! ## A263696.P8632296552609201525

`A263703(A008619(A004275(n)²))`
-/

namespace A263696.P8632296552609201525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A008619 (A004275 n ^ 2).toNat).toNat

end

end A263696.P8632296552609201525

/-! ## A263696.P7135894585480518045

`A263703(A328399(A004275(n)²))`
-/

namespace A263696.P7135894585480518045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A328399 (A004275 n ^ 2).toNat).toNat

end

end A263696.P7135894585480518045

/-! ## A263696.P17656427396790411374

`A263703(record[A141310(A000982(n))])`
-/

namespace A263696.P17656427396790411374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A000982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263696.P17656427396790411374

/-! ## A263696.P898177320820946697

`A263703(A051890(n)-A004273(n))`
-/

namespace A263696.P898177320820946697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A051890 n - A004273 n).toNat

end

end A263696.P898177320820946697

/-! ## A263696.P7715433257635302683

`A263703(A093328(n)-A008574(n))`
-/

namespace A263696.P7715433257635302683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A093328 n - A008574 n).toNat

end

end A263696.P7715433257635302683

/-!
# A263697: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and every three consecutive elements having its maximum within 4 of its minimum.

The programs for A263697, there is no canonical definition to state claims against.
-/

/-! ## A263697.P14198817592001829906

`A263703(∑[n+2])`
-/

namespace A263697.P14198817592001829906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263697.P14198817592001829906

/-! ## A263697.P9994080504526930984

`record[A263703(A072735(n+1))]`
-/

namespace A263697.P9994080504526930984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A072735 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263697.P9994080504526930984

/-! ## A263697.P18308527703022324994

`and(-1, A263703(A000096(n+1)))`
-/

namespace A263697.P18308527703022324994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A263703 (A000096 (n + 1)).toNat)

end

end A263697.P18308527703022324994

/-! ## A263697.P8524663215998761736

`record[A263703(A347633(n+1)+1)]`
-/

namespace A263697.P8524663215998761736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263697.P8524663215998761736

/-! ## A263697.P2460869797829153648

`record[A263703(n+1)/A008279(n+2)]`
-/

namespace A263697.P2460869797829153648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263703 (n + 1) : ℚ) / (A008279 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263697.P2460869797829153648

/-!
# A263698: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and every three consecutive elements having its maximum within 4 of its minimum.

The programs for A263698, there is no canonical definition to state claims against.
-/

/-! ## A263698.P12919688470072369775

`A263703(∑[n+3]+1)`
-/

namespace A263698.P12919688470072369775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263698.P12919688470072369775

/-! ## A263698.P15039521169823388862

`record[A263703(A347633(n+1))]`
-/

namespace A263698.P15039521169823388862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263698.P15039521169823388862

/-! ## A263698.P8052538574387371981

`A263703(A034856(n+2))+char[33]`
-/

namespace A263698.P8052538574387371981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263698.P8052538574387371981

/-! ## A263698.P14365453159571873289

`and(1, n)!*A263703(Δ[A008778(n)])`
-/

namespace A263698.P14365453159571873289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A263703 (f1 (n + 1) - f1 n).toNat

end

end A263698.P14365453159571873289

/-! ## A263698.P1394065384276040259

`A263703(A034856(n+2))*A330098(n+1)`
-/

namespace A263698.P1394065384276040259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A034856 (n + 2)).toNat * A330098 (n + 1)

end

end A263698.P1394065384276040259

/-!
# A263699: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and every three consecutive elements having its maximum within 4 of its minimum.

The programs for A263699, there is no canonical definition to state claims against.
-/

/-! ## A263699.P6862689813346887211

`A263703(∑[n+4]+3)`
-/

namespace A263699.P6862689813346887211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263699.P6862689813346887211

/-! ## A263699.P6091931138926770764

`record[A263703(A027379(n))]`
-/

namespace A263699.P6091931138926770764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263699.P6091931138926770764

/-! ## A263699.P16675171899178057668

`record[A263703(Δ[A116721(n+1)])]`
-/

namespace A263699.P16675171899178057668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263699.P16675171899178057668

/-! ## A263699.P3412014138798719811

`A263703(A155212(n)+5)+char[32]`
-/

namespace A263699.P3412014138798719811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A155212 n + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263699.P3412014138798719811

/-! ## A263699.P18125017323266429043

`record[A263703(A134227(n+1)-n)]`
-/

namespace A263699.P18125017323266429043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263703 (A134227 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263699.P18125017323266429043

