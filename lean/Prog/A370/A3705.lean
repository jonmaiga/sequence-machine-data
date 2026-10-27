import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A370505: T(n,k) is the difference between the number of k-dist-increasing and (k-1)-dist-increasing permutations of [n], where p is k-dist-increasing if k>=0 and p(i)<p(i+k) for all i in [n-k]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A370505, there is no canonical definition to state claims against.
-/

/-! ## A370505.P15745075010870765469

`A122286(4*A226874(n))`
-/

namespace A370505.P15745075010870765469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122286 (4 * A226874 n).toNat

end

end A370505.P15745075010870765469

/-! ## A370505.P17799409065116999169

`A122287(4*A226874(n))`
-/

namespace A370505.P17799409065116999169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122287 (4 * A226874 n).toNat

end

end A370505.P17799409065116999169

/-! ## A370505.P12832959101194937681

`A130401(4*A226874(n))`
-/

namespace A370505.P12832959101194937681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130401 (4 * A226874 n).toNat

end

end A370505.P12832959101194937681

/-! ## A370505.P6972769513461364361

`A056924(2^A226874(n))`
-/

namespace A370505.P6972769513461364361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A226874 n : ℤ))).toNat

end

end A370505.P6972769513461364361

/-! ## A370505.P8366017889621529616

`A347395(2^A226874(n))`
-/

namespace A370505.P8366017889621529616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A226874 n : ℤ))).toNat

end

end A370505.P8366017889621529616

/-!
# A370506: T(n,k) is the number permutations p of [n] that are j-dist-increasing for exactly k distinct values j in [n], where p is j-dist-increasing if j>=0 and p(i)<p(i+j) for all i in [n-j]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A370506, there is no canonical definition to state claims against.
-/

/-! ## A370506.P16306052985178194768

`A003002(A354794(n))`
-/

namespace A370506.P16306052985178194768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A354794 n).toNat

end

end A370506.P16306052985178194768

/-! ## A370506.P1661821816962240852

`A309279(A321964(n)^A288145(n+1))`
-/

namespace A370506.P1661821816962240852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309279 (SequenceMachineLib.roundAway ((A321964 n : ℚ) ^ (A288145 (n + 1) : ℤ))).toNat

end

end A370506.P1661821816962240852

/-! ## A370506.P17604683767662371898

`A332565(A085771(n)%A128024(n+1))`
-/

namespace A370506.P17604683767662371898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332565 (Int.tmod (A085771 n) (A128024 (n + 1))).toNat

end

end A370506.P17604683767662371898

/-! ## A370506.P12489692769543167337

`and(A046117(A060611(n+2)), A370419(n))`
-/

namespace A370506.P12489692769543167337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046117 (A060611 (n + 2)).toNat) (A370419 n)

end

end A370506.P12489692769543167337

/-! ## A370506.P12256900104690833396

`and(A003961(A222020(n+5)), A321964(n))`
-/

namespace A370506.P12256900104690833396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003961 (A222020 (n + 5)).toNat) (A321964 n)

end

end A370506.P12256900104690833396

/-!
# A370507: T(n,k) is the number permutations p of [n] that are k-dist-increasing but not j-dist-increasing for any j<k, where p is j-dist-increasing if j>=0 and p(i)<p(i+j) for all i in [n-j]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A370507, there is no canonical definition to state claims against.
-/

/-! ## A370507.P3570796654048470574

`or(A112765(A189076(n+1)), A370505(n))`
-/

namespace A370507.P3570796654048470574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112765 (A189076 (n + 1)).toNat) (A370505 n)

end

end A370507.P3570796654048470574

/-! ## A370507.P11417146924372001027

`A000030(A373451(n)^A366570(2*(n+2)))`
-/

namespace A370507.P11417146924372001027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A373451 n : ℚ) ^ (A366570 (2 * (n + 2)) : ℤ))).toNat

end

end A370507.P11417146924372001027

/-! ## A370507.P4074298534212307820

`A122287(4*A226874(n))+A025458(A273458(n))`
-/

namespace A370507.P4074298534212307820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122287 (4 * A226874 n).toNat + A025458 (A273458 n).toNat

end

end A370507.P4074298534212307820

/-! ## A370507.P12738376740578587911

`A122287(4*A226874(n))+A075685(A370505(n))`
-/

namespace A370507.P12738376740578587911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122287 (4 * A226874 n).toNat + A075685 (A370505 n).toNat

end

end A370507.P12738376740578587911

/-! ## A370507.P4105508192398621932

`A122287(4*A226874(n))+A075685(A273458(n+1))`
-/

namespace A370507.P4105508192398621932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122287 (4 * A226874 n).toNat + A075685 (A273458 (n + 1)).toNat

end

end A370507.P4105508192398621932

/-!
# A370508: Expansion of Sum_{k>=0} k! * ( x * (1-x^3) )^k.

The programs for A370508, there is no canonical definition to state claims against.
-/

/-! ## A370508.P5340354083119630796

`A004277(A000142(n))-A370510(n)`
-/

namespace A370508.P5340354083119630796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000142 n).toNat - A370510 n

end

end A370508.P5340354083119630796

/-! ## A370508.P14279614457740039258

`A028310(A370670(n)-A359770(n+1))`
-/

namespace A370508.P14279614457740039258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A370670 n - A359770 (n + 1)).toNat

end

end A370508.P14279614457740039258

/-!
# A370509: Expansion of Sum_{k>=0} k! * ( x * (1+x^2) )^k.

The programs for A370509, there is no canonical definition to state claims against.
-/

/-! ## A370509.P9704342224136788000

`A008621(A189840(n+1)+A164904(n))`
-/

namespace A370509.P9704342224136788000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A189840 (n + 1) + A164904 n).toNat

end

end A370509.P9704342224136788000

/-! ## A370509.P16612927895183888928

`A008621(A241639(n)+A189840(n+1))`
-/

namespace A370509.P16612927895183888928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A241639 n + A189840 (n + 1)).toNat

end

end A370509.P16612927895183888928

/-! ## A370509.P2799725742846810474

`A002265(A189840(n+1)+A002113(n+4))`
-/

namespace A370509.P2799725742846810474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A189840 (n + 1) + A002113 (n + 4)).toNat

end

end A370509.P2799725742846810474

/-!
# A370510: Expansion of Sum_{k>=0} k! * ( x * (1+x^3) )^k.

The programs for A370510, there is no canonical definition to state claims against.
-/

/-! ## A370510.P10156308090354523798

`A005843(A000142(n))-A370508(n)`
-/

namespace A370510.P10156308090354523798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000142 n).toNat - A370508 n

end

end A370510.P10156308090354523798

/-! ## A370510.P1752238870654405083

`A001281(2*A370511(n))`
-/

namespace A370510.P1752238870654405083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A370511 n).toNat

end

end A370510.P1752238870654405083

/-! ## A370510.P2506498281350860658

`A078898(2*A370511(n))`
-/

namespace A370510.P2506498281350860658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * A370511 n).toNat

end

end A370510.P2506498281350860658

/-!
# A370511: Expansion of Sum_{k>=0} k! * ( x/(1-x^3) )^k.

The programs for A370511, there is no canonical definition to state claims against.
-/

/-! ## A370511.P14799296114066682978

`A370510(n)+A269245(A000984(n))`
-/

namespace A370511.P14799296114066682978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370510 n + A269245 (A000984 n).toNat

end

end A370511.P14799296114066682978

/-! ## A370511.P1794833128052629521

`A352667(A323092(n))+A000142(n)`
-/

namespace A370511.P1794833128052629521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352667 (A323092 n).toNat + A000142 n

end

end A370511.P1794833128052629521

/-! ## A370511.P9286788863500142919

`A352667(A364345(n))+A000142(n)`
-/

namespace A370511.P9286788863500142919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352667 (A364345 n).toNat + A000142 n

end

end A370511.P9286788863500142919

/-! ## A370511.P3246800582201589563

`A370510(n)+A333382(A014375(2*n))`
-/

namespace A370511.P3246800582201589563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370510 n + A333382 (A014375 (2 * n)).toNat

end

end A370511.P3246800582201589563

/-!
# A370512: Largest palindromic square which is a concatenation of a composition of n; or 0 if no such square exists.

The programs for A370512, there is no canonical definition to state claims against.
-/

/-! ## A370512.P13955996693953669453

`A079842(A109849(n+1))`
-/

namespace A370512.P13955996693953669453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079842 (A109849 (n + 1)).toNat

end

end A370512.P13955996693953669453

/-! ## A370512.P3611947859082548787

`A079842(A055106(n+4)+n)`
-/

namespace A370512.P3611947859082548787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079842 (A055106 (n + 4) + (n : ℤ)).toNat

end

end A370512.P3611947859082548787

/-! ## A370512.P16854038883295892472

`A079842(n+1)*A347283(A005193(n+1))`
-/

namespace A370512.P16854038883295892472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079842 (n + 1) * A347283 (A005193 (n + 1)).toNat

end

end A370512.P16854038883295892472

/-! ## A370512.P3441320992827881937

`lcm(A008683(A107126(n+1)), A079842(n+1))`
-/

namespace A370512.P3441320992827881937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A107126 (n + 1)).toNat) (A079842 (n + 1))

end

end A370512.P3441320992827881937

/-!
# A370514: Number of permutations p of [n] such that for each distance d in [n-1] there is at least one index i in [n-d] with p(i)>p(i+d).

The programs for A370514, there is no canonical definition to state claims against.
-/

/-! ## A370514.P430294427173619509

`A370507(∑[n]+n)`
-/

namespace A370514.P430294427173619509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370507 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A370514.P430294427173619509

/-! ## A370514.P14913412377119244927

`A370506(∑[char[1]+n])`
-/

namespace A370514.P14913412377119244927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370514.P14913412377119244927

/-! ## A370514.P4255830224298611861

`(1/A370507(A000096(n)))^(-1)`
-/

namespace A370514.P4255830224298611861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (A370507 (A000096 n).toNat : ℚ)) ^ (-1 : ℤ)

end

end A370514.P4255830224298611861

/-! ## A370514.P9611261608064413600

`A370507(n*(n+3)/2)+A281888(n+1)`
-/

namespace A370514.P9611261608064413600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370507 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat + A281888 (n + 1)

end

end A370514.P9611261608064413600

/-! ## A370514.P10239291239646023664

`A370507(A000096(n))+A327450(n+1)`
-/

namespace A370514.P10239291239646023664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370507 (A000096 n).toNat + A327450 (n + 1)

end

end A370514.P10239291239646023664

/-!
# A370515: a(n) is the least integer k with exactly 10^n divisors.

The programs for A370515, there is no canonical definition to state claims against.
-/

/-! ## A370515.P6627033399371763181

`A000578(A002110(n))*A002110(2*n)`
-/

namespace A370515.P6627033399371763181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A002110 n).toNat * A002110 (2 * n)

end

end A370515.P6627033399371763181

/-!
# A370517: a(n) is the largest prime p such that all prime numbers q <= p have distinct length n prime gap sequences.

The programs for A370517, there is no canonical definition to state claims against.
-/

/-! ## A370517.P15404690460748515390

`A000040(A344865(n+1)-n)`
-/

namespace A370517.P15404690460748515390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A344865 (n + 1) - (n : ℤ)).toNat

end

end A370517.P15404690460748515390

/-! ## A370517.P16413708922590674534

`A256113(A003483(n)*A231144(n+1))`
-/

namespace A370517.P16413708922590674534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256113 (A003483 n * A231144 (n + 1)).toNat

end

end A370517.P16413708922590674534

/-!
# A370519: Intersection of A002061 and A016105.

The programs for A370519, the canonical program `A370519.P13191121243294662907` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370519 has offset 1).

The definition of A370519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370519.P13191121243294662907

`∩[A016105(n+1), A008811(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A370519

/-- `∩[A016105(n+1), A008811(n)]` -/
def P13191121243294662907.Spec : Prop :=
  ∀ n, (P13191121243294662907.a n : ℤ) = A370519 (n + 1)

theorem P13191121243294662907.correct : P13191121243294662907.Spec := by
  intro n
  simp only [A370519, Nat.add_sub_cancel]

end A370519

/-! ## A370519.P415265576590624618

`∩[A016105(n+1), A181385(n)]`
-/

namespace A370519.P415265576590624618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370519.P415265576590624618

namespace A370519

/-- `∩[A016105(n+1), A181385(n)]` -/
def P415265576590624618.Spec : Prop :=
  ∀ n, (P415265576590624618.a n : ℤ) = A370519 (n + 1)

end A370519

/-! ## A370519.P8715426722292459439

`∩[A016105(n+1), A274583(n)]`
-/

namespace A370519.P8715426722292459439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370519.P8715426722292459439

namespace A370519

/-- `∩[A016105(n+1), A274583(n)]` -/
def P8715426722292459439.Spec : Prop :=
  ∀ n, (P8715426722292459439.a n : ℤ) = A370519 (n + 1)

end A370519

/-! ## A370519.P6424150939920896297

`∩[A016105(n+1), A034111(n+1)]`
-/

namespace A370519.P6424150939920896297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370519.P6424150939920896297

namespace A370519

/-- `∩[A016105(n+1), A034111(n+1)]` -/
def P6424150939920896297.Spec : Prop :=
  ∀ n, (P6424150939920896297.a n : ℤ) = A370519 (n + 1)

end A370519

/-! ## A370519.P1242678074739816270

`∩[A016105(n+1), A130404(n+1)]`
-/

namespace A370519.P1242678074739816270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370519.P1242678074739816270

namespace A370519

/-- `∩[A016105(n+1), A130404(n+1)]` -/
def P1242678074739816270.Spec : Prop :=
  ∀ n, (P1242678074739816270.a n : ℤ) = A370519 (n + 1)

end A370519

/-! ## A370519.P10143300026371038393

`∩[A016105(n+1), A174969(n+1)]`
-/

namespace A370519.P10143300026371038393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370519.P10143300026371038393

namespace A370519

/-- `∩[A016105(n+1), A174969(n+1)]` -/
def P10143300026371038393.Spec : Prop :=
  ∀ n, (P10143300026371038393.a n : ℤ) = A370519 (n + 1)

end A370519

/-! ## A370519.P9587418649668688950

`∩[A016105(n+1), A176069(n+1)]`
-/

namespace A370519.P9587418649668688950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370519.P9587418649668688950

namespace A370519

/-- `∩[A016105(n+1), A176069(n+1)]` -/
def P9587418649668688950.Spec : Prop :=
  ∀ n, (P9587418649668688950.a n : ℤ) = A370519 (n + 1)

end A370519

/-! ## A370519.P6069963693388633476

`∩[A016105(n+1), A200975(n+1)]`
-/

namespace A370519.P6069963693388633476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370519.P6069963693388633476

namespace A370519

/-- `∩[A016105(n+1), A200975(n+1)]` -/
def P6069963693388633476.Spec : Prop :=
  ∀ n, (P6069963693388633476.a n : ℤ) = A370519 (n + 1)

end A370519

/-! ## A370519.P9895557851398595837

`∩[A016105(n+1), A353887(n+1)]`
-/

namespace A370519.P9895557851398595837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370519.P9895557851398595837

namespace A370519

/-- `∩[A016105(n+1), A353887(n+1)]` -/
def P9895557851398595837.Spec : Prop :=
  ∀ n, (P9895557851398595837.a n : ℤ) = A370519 (n + 1)

end A370519

/-! ## A370519.P14540422955552023771

`∩[A057948(n+1), A174969(n+1)]`
-/

namespace A370519.P14540422955552023771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370519.P14540422955552023771

namespace A370519

/-- `∩[A057948(n+1), A174969(n+1)]` -/
def P14540422955552023771.Spec : Prop :=
  ∀ n, (P14540422955552023771.a n : ℤ) = A370519 (n + 1)

end A370519

/-!
# A370520: Triangular numbers (A000217) in A353729.

The programs for A370520, there is no canonical definition to state claims against.
-/

/-! ## A370520.P5147430911369961800

`∩[A353729(n+1), A000217(n)]`
-/

namespace A370520.P5147430911369961800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370520.P5147430911369961800

/-! ## A370520.P9229134351907331343

`∩[A334129(n+1), A353729(n+1)]`
-/

namespace A370520.P9229134351907331343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370520.P9229134351907331343

/-! ## A370520.P4889284916284907695

`∩[A109811(n+1), A346217(n+1)]`
-/

namespace A370520.P4889284916284907695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370520.P4889284916284907695

/-! ## A370520.P1600379868066999976

`∩[A109811(n+1), A353729(n+1)]`
-/

namespace A370520.P1600379868066999976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370520.P1600379868066999976

/-!
# A370522: a(n) is the least n-digit number whose square has the maximum sum of digits (A348300(n)).

The programs for A370522, there is no canonical definition to state claims against.
-/

/-! ## A370522.P15458507293742205370

`A369956(A348300(n+1)-(n+1))`
-/

namespace A370522.P15458507293742205370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369956 (A348300 (n + 1) - (n + 1 : ℤ)).toNat

end

end A370522.P15458507293742205370

/-! ## A370522.P16757584877920198754

`A369956(∑{digits}[A069665(2*(n+1)), #]-A052382(n+1))`
-/

namespace A370522.P16757584877920198754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069665 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369956 (((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A052382 (n + 1)).toNat

end

end A370522.P16757584877920198754

/-!
# A370523: Numbers k > 2 such that all positive values of k - 2^(2^m) are prime, with integer m >= 0.

The programs for A370523, there is no canonical definition to state claims against.
-/

/-! ## A370523.P13133657797758871311

`A067829(n+1)+A001221(A008776(n))`
-/

namespace A370523.P13133657797758871311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1) + A001221 (A008776 n).toNat

end

end A370523.P13133657797758871311

/-! ## A370523.P15232829541969374086

`A067829(n+1)+A020639(A000984(n))`
-/

namespace A370523.P15232829541969374086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1) + A020639 (A000984 n).toNat

end

end A370523.P15232829541969374086

/-! ## A370523.P9935415486738682668

`A094743(n+1)+A053669(A026581(n))`
-/

namespace A370523.P9935415486738682668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094743 (n + 1) + A053669 (A026581 n).toNat

end

end A370523.P9935415486738682668

/-! ## A370523.P285800933913136933

`A287999(A066568(n))+A175075(n+1)`
-/

namespace A370523.P285800933913136933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287999 (A066568 n).toNat + A175075 (n + 1)

end

end A370523.P285800933913136933

/-! ## A370523.P12799759403089979393

`A094743(n+1)-A113679(A005248(n))`
-/

namespace A370523.P12799759403089979393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094743 (n + 1) - A113679 (A005248 n).toNat

end

end A370523.P12799759403089979393

/-!
# A370524: Number of permutations of [n] having exactly one adjacent 2-cycle.

The programs for A370524, there is no canonical definition to state claims against.
-/

/-! ## A370524.P1098077353889472405

`A370527(A152948(n+1))`
-/

namespace A370524.P1098077353889472405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370527 (A152948 (n + 1)).toNat

end

end A370524.P1098077353889472405

/-! ## A370524.P14816959505366307192

`or(A103221(A071075(n)), A331574(n))`
-/

namespace A370524.P14816959505366307192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103221 (A071075 n).toNat) (A331574 n)

end

end A370524.P14816959505366307192

/-! ## A370524.P4917299584856599393

`or(A103221(A071075(n)), A370529(n))`
-/

namespace A370524.P4917299584856599393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103221 (A071075 n).toNat) (A370529 n)

end

end A370524.P4917299584856599393

/-! ## A370524.P6427497301633935977

`A103221(or(A000010(n+1), A071075(n)))`
-/

namespace A370524.P6427497301633935977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor (A000010 (n + 1)) (A071075 n)).toNat

end

end A370524.P6427497301633935977

/-!
# A370525: Number of permutations of [n] having exactly one adjacent 3-cycle.

The programs for A370525, there is no canonical definition to state claims against.
-/

/-! ## A370525.P7978680224130118804

`A025428(A149593(n))`
-/

namespace A370525.P7978680224130118804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A149593 n).toNat

end

end A370525.P7978680224130118804

/-! ## A370525.P2193704950868056400

`A105518(Δ[A001250(n)])`
-/

namespace A370525.P2193704950868056400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (f1 (n + 1) - f1 n).toNat

end

end A370525.P2193704950868056400

/-! ## A370525.P13693363773623790676

`A033105(A110577(n)+7)`
-/

namespace A370525.P13693363773623790676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033105 (A110577 n + 7).toNat

end

end A370525.P13693363773623790676

/-! ## A370525.P11741132048465840300

`A097882(or(1, A002494(n)))`
-/

namespace A370525.P11741132048465840300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (Int.lor 1 (A002494 n)).toNat

end

end A370525.P11741132048465840300

/-!
# A370528: Number of permutations of [n] having exactly two adjacent 3-cycles.

The programs for A370528, there is no canonical definition to state claims against.
-/

/-! ## A370528.P5549054872557011367

`A159708(A307755(n))`
-/

namespace A370528.P5549054872557011367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159708 (A307755 n).toNat

end

end A370528.P5549054872557011367

/-! ## A370528.P9194655351628862509

`A245569(A336010(n))`
-/

namespace A370528.P9194655351628862509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245569 (A336010 n).toNat

end

end A370528.P9194655351628862509

/-! ## A370528.P6738597109145615531

`∑[A102823(A185234(n))]`
-/

namespace A370528.P6738597109145615531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 (A185234 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370528.P6738597109145615531

/-! ## A370528.P17604532282010788693

`A178830(A108142(n+1))`
-/

namespace A370528.P17604532282010788693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178830 (A108142 (n + 1)).toNat

end

end A370528.P17604532282010788693

/-! ## A370528.P10392729717283284854

`A350898(3*A032020(n))`
-/

namespace A370528.P10392729717283284854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350898 (3 * A032020 n).toNat

end

end A370528.P10392729717283284854

/-!
# A370529: Number of permutations of [n] having exactly three adjacent 2-cycles.

The programs for A370529, there is no canonical definition to state claims against.
-/

/-! ## A370529.P7775142895625049138

`A098357(A210669(n))²`
-/

namespace A370529.P7775142895625049138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098357 (A210669 n).toNat ^ 2

end

end A370529.P7775142895625049138

/-! ## A370529.P1716757768829852001

`A172309(A143662(n))²`
-/

namespace A370529.P1716757768829852001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172309 (A143662 n).toNat ^ 2

end

end A370529.P1716757768829852001

/-! ## A370529.P4042864526290486623

`A351725(A149231(n))²`
-/

namespace A370529.P4042864526290486623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (A149231 n).toNat ^ 2

end

end A370529.P4042864526290486623

/-! ## A370529.P14114667857992869061

`A085861(∑[A000296(n)])`
-/

namespace A370529.P14114667857992869061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A370529.P14114667857992869061

/-! ## A370529.P1326158890984705297

`filter[A331574(n), A114213(#)]`
-/

namespace A370529.P1326158890984705297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A370529.P1326158890984705297

/-!
# A370530: Number of permutations of [n] having exactly three adjacent 3-cycles.

The programs for A370530, there is no canonical definition to state claims against.
-/

/-! ## A370530.P17889130612134127136

`round(A007564(n)/A244079(3*n+2))`
-/

namespace A370530.P17889130612134127136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007564 n : ℚ) / (A244079 (3 * n + 2) : ℚ))

end

end A370530.P17889130612134127136

/-! ## A370530.P7708279723356666050

`round(A003436(n)/A091411(2*n+5))`
-/

namespace A370530.P7708279723356666050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003436 n : ℚ) / (A091411 (2 * n + 5) : ℚ))

end

end A370530.P7708279723356666050

/-!
# A370531: The smallest number in base n such that two digits (and no fewer) need to be changed to get a prime.

The programs for A370531, there is no canonical definition to state claims against.
-/

/-! ## A370531.P14015997088102663070

`(n+2)*A110835(n+2)`
-/

namespace A370531.P14015997088102663070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A110835 (n + 2)

end

end A370531.P14015997088102663070

/-!
# A370532: Integers m > 0 such that m^m and m^(m^m) have the same rightmost m digits.

The programs for A370532, the canonical program `A370532.P7146625277947936438` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370532 has offset 1).

The definition of A370532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370532.P7146625277947936438

`a(n-1)+10` with `a(0)=1, a(1)=5, a(2)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370532

/-- `a(n-1)+10` -/
def P7146625277947936438.Spec : Prop :=
  ∀ n, (P7146625277947936438.a n : ℤ) = A370532 (n + 1)

theorem P7146625277947936438.correct : P7146625277947936438.Spec := by
  intro n
  simp only [A370532, Nat.add_sub_cancel]

end A370532

/-!
# A370533: Expansion of g.f. A(x) satisfying A( x*(1 + 3*x)*A(x)^2 )^5 = A( x^2*(1 + 5*x)*A(x)^3 )^3.

The programs for A370533, there is no canonical definition to state claims against.
-/

/-! ## A370533.P3102912810125705313

`A078898(A056854(n))-A000583(n)`
-/

namespace A370533.P3102912810125705313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A056854 n).toNat - A000583 n

end

end A370533.P3102912810125705313

/-!
# A370534: Expansion of g.f. A(x) = G( x*(1 + 3*x)*G(x)^2 )^(1/3) = G( x^2*(1 + 5*x)*G(x)^3 )^(1/5), where G(x) is the g.f. of A370533.

The programs for A370534, there is no canonical definition to state claims against.
-/

/-! ## A370534.P16028425099654692090

`A304465(A187646(n))-A293294(3*n+4)`
-/

namespace A370534.P16028425099654692090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A187646 n).toNat - A293294 (3 * n + 4)

end

end A370534.P16028425099654692090

/-!
# A370539: Expansion of g.f. (1 - x*C(x)) * (1 - x*C(x^2)) / (1 - 4*x), where C(x) = 1 + x*C(x)^2 is the Catalan function (A000108).

The programs for A370539, there is no canonical definition to state claims against.
-/

/-! ## A370539.P2999388332022469854

`A394217(A329394(2*n+3)-A001462(n+1))`
-/

namespace A370539.P2999388332022469854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394217 (A329394 (2 * n + 3) - A001462 (n + 1)).toNat

end

end A370539.P2999388332022469854

/-! ## A370539.P3940398920764186036

`A394217(A329394(2*n+3)-A079730(n+1))`
-/

namespace A370539.P3940398920764186036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394217 (A329394 (2 * n + 3) - A079730 (n + 1)).toNat

end

end A370539.P3940398920764186036

/-!
# A370540: Expansion of g.f. A(x) satisfying A(x)^2 = A(x^2) * (1 - x*C(x)) * (1 - x*C(x^2)) / (1 - 4*x) where C(x) = 1 + x*C(x)^2 is the Catalan function (A000108).

The programs for A370540, there is no canonical definition to state claims against.
-/

/-! ## A370540.P11730813080187786653

`A065710(A211386(n))`
-/

namespace A370540.P11730813080187786653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (A211386 n).toNat

end

end A370540.P11730813080187786653

/-! ## A370540.P9357559212297127570

`A112325(A150755(n)-n)`
-/

namespace A370540.P9357559212297127570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A150755 n - (n : ℤ)).toNat

end

end A370540.P9357559212297127570

/-!
# A370545: Expansion of g.f. A(x) satisfying A(x) = A( x^5 + 5*A(x)^6 )^(1/5).

The programs for A370545, there is no canonical definition to state claims against.
-/

/-! ## A370545.P3812448233978899477

`A195262(n)-A184955(3*n)`
-/

namespace A370545.P3812448233978899477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195262 n - A184955 (3 * n)

end

end A370545.P3812448233978899477

/-! ## A370545.P16315476818139752195

`A027750(A015599(n)+A015576(n))`
-/

namespace A370545.P16315476818139752195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A015599 n + A015576 n).toNat

end

end A370545.P16315476818139752195

/-!
# A370546: Expansion of g.f. satisfying A(x) = A( x*A(x)^4 + 5*x*A(x)^5 )^(1/5).

The programs for A370546, there is no canonical definition to state claims against.
-/

/-! ## A370546.P2073056867035094448

`A356325(or(1, round((sqrt(2)+1)^n)))+5^n`
-/

namespace A370546.P2073056867035094448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356325 (Int.lor 1 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n))).toNat + (5 ^ n : ℤ)

end

end A370546.P2073056867035094448

/-! ## A370546.P10997943506989011697

`A373952(5^n)+gcd(n+1, ∑{d}[n+1, #])`
-/

namespace A370546.P10997943506989011697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373952 (5 ^ n) + (Nat.gcd (n + 1) (∑ d ∈ Nat.divisors (f1 n), d) : ℤ)

end

end A370546.P10997943506989011697

/-!
# A370548: a(n) is the denominator of the real part of Product_{k=1..n} (1/k + i) where i is the imaginary unit.

The programs for A370548, there is no canonical definition to state claims against.
-/

/-! ## A370548.P11727438643031502594

`gcd(A008655(A277204(n+1)), A123899(n))`
-/

namespace A370548.P11727438643031502594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008655 (A277204 (n + 1)).toNat) (A123899 n)

end

end A370548.P11727438643031502594

/-! ## A370548.P9002679345495502538

`gcd(A028310(A123899(n)), A370556(n+1))`
-/

namespace A370548.P9002679345495502538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A123899 n).toNat) (A370556 (n + 1))

end

end A370548.P9002679345495502538

/-! ## A370548.P10109696617866491323

`A123899(n)/A170817(A123899(n))`
-/

namespace A370548.P10109696617866491323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123899 n : ℚ) / (A170817 (A123899 n).toNat : ℚ)

end

end A370548.P10109696617866491323

/-!
# A370550: a(n) is the denominator of the imaginary part of Product_{k=1..n} (1/k + i) where i is the imaginary unit.

The programs for A370550, there is no canonical definition to state claims against.
-/

/-! ## A370550.P221410431506434123

`gcd(A370552(A032563(n+1)), A370554(n+1))`
-/

namespace A370550.P221410431506434123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A370552 (A032563 (n + 1)).toNat) (A370554 (n + 1))

end

end A370550.P221410431506434123

/-!
# A370554: a(n) is the denominator of the imaginary part of Product_{k=1..n} (1 + i/k) where i is the imaginary unit.

The programs for A370554, there is no canonical definition to state claims against.
-/

/-! ## A370554.P16646304110254900287

`A242441(A131271(n)+A022894(n))`
-/

namespace A370554.P16646304110254900287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242441 (A131271 n + A022894 n).toNat

end

end A370554.P16646304110254900287

/-! ## A370554.P13159887627697547683

`A020123(n)*A069010(A066186(3*n+1))`
-/

namespace A370554.P13159887627697547683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020123 n * A069010 (A066186 (3 * n + 1)).toNat

end

end A370554.P13159887627697547683

/-!
# A370558: Periodic sequence S_1 of length 28: used to compute the number of times a day from 1 to 28 of a month occurs on a day of the week for the Gregorian cycle of 400 years.

The programs for A370558, there is no canonical definition to state claims against.
-/

/-! ## A370558.P10303504435903611190

`or(A353477(A002843(n)), A370559(n))`
-/

namespace A370558.P10303504435903611190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A353477 (A002843 n).toNat) (A370559 n)

end

end A370558.P10303504435903611190

/-!
# A370559: Periodic sequence S_{29} of length 28: used to compute the number of times the 29th day of a month occurs on a day of the week for the Gregorian cycle of 400 years.

The programs for A370559, there is no canonical definition to state claims against.
-/

/-! ## A370559.P14766085778425110118

`A124734(gcd(A175029(3*n+2), A328592(3*n+2)))`
-/

namespace A370559.P14766085778425110118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (Int.gcd (A175029 (3 * n + 2)) (A328592 (3 * n + 2)))

end

end A370559.P14766085778425110118

/-!
# A370560: Periodic sequence S_{30} of length 28: used to compute the number that the day 30 of a month occurs on a day of the week for the Gregorian cycle of 400 years.

The programs for A370560, there is no canonical definition to state claims against.
-/

/-! ## A370560.P7553775059595678193

`A251092(∏{p}[A353690(n+1), #])`
-/

namespace A370560.P7553775059595678193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251092 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A370560.P7553775059595678193

/-!
# A370561: Periodic sequence S_{31} of length 28: used to compute the number that the day 31 of a month occurs on a day of the week for the Gregorian cycle of 400 years.

The programs for A370561, there is no canonical definition to state claims against.
-/

/-! ## A370561.P15785185081634084819

`gcd(A074290(A179316(n+2)), A359902(n+1))`
-/

namespace A370561.P15785185081634084819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074290 (A179316 (n + 2)).toNat) (A359902 (n + 1))

end

end A370561.P15785185081634084819

/-!
# A370564: Size of the group Q_2*/(Q_2*)^n, where Q_2 is the field of 2-adic numbers.

The programs for A370564, the canonical program `A370564.P2151838547854107065` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370564 has offset 1).

The definition of A370564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370564.P2151838547854107065

`(n+1)*A297402(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A370564

/-- `(n+1)*A297402(n+1)` -/
def P2151838547854107065.Spec : Prop :=
  ∀ n, P2151838547854107065.a n = A370564 (n + 1)

theorem P2151838547854107065.correct : P2151838547854107065.Spec := by
  intro n
  simp only [A370564, Nat.add_sub_cancel]

end A370564

/-! ## A370564.P12090063957921000873

`(xor(n+1, or(1, n))+1)*(n+1)`
-/

namespace A370564.P12090063957921000873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n + 1) (Nat.lor 1 n) + 1) * (n + 1)

end

end A370564.P12090063957921000873

namespace A370564

/-- `(xor(n+1, or(1, n))+1)*(n+1)` -/
def P12090063957921000873.Spec : Prop :=
  ∀ n, (P12090063957921000873.a n : ℤ) = A370564 (n + 1)

end A370564

/-! ## A370564.P7226126310465445820

`(n+1)*gcd(2*(n+1), and(n+1, n-1))`
-/

namespace A370564.P7226126310465445820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (2 * (n + 1) : ℤ) (Int.land (n + 1 : ℤ) ((n : ℤ) - 1))

end

end A370564.P7226126310465445820

namespace A370564

/-- `(n+1)*gcd(2*(n+1), and(n+1, n-1))` -/
def P7226126310465445820.Spec : Prop :=
  ∀ n, (P7226126310465445820.a n : ℤ) = A370564 (n + 1)

end A370564

/-! ## A370564.P10126199594033590965

`(n+1)/2*A074723(n+1)`
-/

namespace A370564.P10126199594033590965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A074723 (n + 1) : ℚ)

end

end A370564.P10126199594033590965

namespace A370564

/-- `(n+1)/2*A074723(n+1)` -/
def P10126199594033590965.Spec : Prop :=
  ∀ n, P10126199594033590965.a n = (A370564 (n + 1) : ℚ)

end A370564

/-! ## A370564.P18355539323255996839

`gcd(A069779(n), A166625(n+1))`
-/

namespace A370564.P18355539323255996839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069779 n) (A166625 (n + 1))

end

end A370564.P18355539323255996839

namespace A370564

/-- `gcd(A069779(n), A166625(n+1))` -/
def P18355539323255996839.Spec : Prop :=
  ∀ n, (P18355539323255996839.a n : ℤ) = A370564 (n + 1)

end A370564

/-! ## A370564.P16056582597709345680

`(n+1)*A065171(A006519(n+1))`
-/

namespace A370564.P16056582597709345680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065171 (A006519 (n + 1)).toNat

end

end A370564.P16056582597709345680

namespace A370564

/-- `(n+1)*A065171(A006519(n+1))` -/
def P16056582597709345680.Spec : Prop :=
  ∀ n, P16056582597709345680.a n = A370564 (n + 1)

end A370564

/-! ## A370564.P16466783071859971993

`(n+1)*A011782(A090740(n+1))`
-/

namespace A370564.P16466783071859971993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011782 (A090740 (n + 1)).toNat

end

end A370564.P16466783071859971993

namespace A370564

/-- `(n+1)*A011782(A090740(n+1))` -/
def P16466783071859971993.Spec : Prop :=
  ∀ n, P16466783071859971993.a n = A370564 (n + 1)

end A370564

/-! ## A370564.P5141325558754312535

`(n+1)*A090129(A195986(n+1))`
-/

namespace A370564.P5141325558754312535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A090129 (A195986 (n + 1)).toNat

end

end A370564.P5141325558754312535

namespace A370564

/-- `(n+1)*A090129(A195986(n+1))` -/
def P5141325558754312535.Spec : Prop :=
  ∀ n, P5141325558754312535.a n = A370564 (n + 1)

end A370564

/-! ## A370564.P4187579634814651920

`gcd(A128091(n+1), A166629(n+1))`
-/

namespace A370564.P4187579634814651920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128091 (n + 1)) (A166629 (n + 1))

end

end A370564.P4187579634814651920

namespace A370564

/-- `gcd(A128091(n+1), A166629(n+1))` -/
def P4187579634814651920.Spec : Prop :=
  ∀ n, (P4187579634814651920.a n : ℤ) = A370564 (n + 1)

end A370564

/-! ## A370564.P10682163069886767921

`gcd(2*A166629(n+1), A240547(n+1))`
-/

namespace A370564.P10682163069886767921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A166629 (n + 1)) (A240547 (n + 1))

end

end A370564.P10682163069886767921

namespace A370564

/-- `gcd(2*A166629(n+1), A240547(n+1))` -/
def P10682163069886767921.Spec : Prop :=
  ∀ n, (P10682163069886767921.a n : ℤ) = A370564 (n + 1)

end A370564

/-! ## A370564.P1102684128044057059

`A022998(n+1)*A022998(n+1)/A259445(n+1)`
-/

namespace A370564.P1102684128044057059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 (n + 1) * A022998 (n + 1) : ℚ) / (A259445 (n + 1) : ℚ)

end

end A370564.P1102684128044057059

namespace A370564

/-- `A022998(n+1)*A022998(n+1)/A259445(n+1)` -/
def P1102684128044057059.Spec : Prop :=
  ∀ n, P1102684128044057059.a n = (A370564 (n + 1) : ℚ)

end A370564

/-! ## A370564.P6843081403057744292

`A022998(n+1)*A160467(2*(n+1))`
-/

namespace A370564.P6843081403057744292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1) * A160467 (2 * (n + 1))

end

end A370564.P6843081403057744292

namespace A370564

/-- `A022998(n+1)*A160467(2*(n+1))` -/
def P6843081403057744292.Spec : Prop :=
  ∀ n, P6843081403057744292.a n = A370564 (n + 1)

end A370564

/-! ## A370564.P2233856768018012164

`(n+1)*A026185(A214546(2*n+1))`
-/

namespace A370564.P2233856768018012164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026185 (A214546 (2 * n + 1)).toNat

end

end A370564.P2233856768018012164

namespace A370564

/-- `(n+1)*A026185(A214546(2*n+1))` -/
def P2233856768018012164.Spec : Prop :=
  ∀ n, P2233856768018012164.a n = A370564 (n + 1)

end A370564

/-! ## A370564.P13878777425751098048

`(n+1)*A034586(A034583(A209675(n+1)))`
-/

namespace A370564.P13878777425751098048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034586 (A034583 (A209675 (n + 1)).toNat).toNat

end

end A370564.P13878777425751098048

namespace A370564

/-- `(n+1)*A034586(A034583(A209675(n+1)))` -/
def P13878777425751098048.Spec : Prop :=
  ∀ n, P13878777425751098048.a n = A370564 (n + 1)

end A370564

/-! ## A370564.P7065854593065423626

`(n+1)*A182105(A080578(A118319(n+1)))`
-/

namespace A370564.P7065854593065423626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A182105 (A080578 (A118319 (n + 1)).toNat).toNat

end

end A370564.P7065854593065423626

namespace A370564

/-- `(n+1)*A182105(A080578(A118319(n+1)))` -/
def P7065854593065423626.Spec : Prop :=
  ∀ n, P7065854593065423626.a n = A370564 (n + 1)

end A370564

/-! ## A370564.P9323478877746968352

`(n+1)*A163577(A006370(A088837(n+1)))`
-/

namespace A370564.P9323478877746968352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A163577 (A006370 (A088837 (n + 1)).toNat).toNat

end

end A370564.P9323478877746968352

namespace A370564

/-- `(n+1)*A163577(A006370(A088837(n+1)))` -/
def P9323478877746968352.Spec : Prop :=
  ∀ n, P9323478877746968352.a n = A370564 (n + 1)

end A370564

/-! ## A370564.P4716833076974698413

`(n+1)*A055975(A256701(2*n+1))`
-/

namespace A370564.P4716833076974698413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055975 (A256701 (2 * n + 1)).toNat

end

end A370564.P4716833076974698413

namespace A370564

/-- `(n+1)*A055975(A256701(2*n+1))` -/
def P4716833076974698413.Spec : Prop :=
  ∀ n, P4716833076974698413.a n = A370564 (n + 1)

end A370564

/-! ## A370564.P61365594903180790

`gcd(A014820(n), A119635(n+1))`
-/

namespace A370564.P61365594903180790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014820 n) (A119635 (n + 1))

end

end A370564.P61365594903180790

namespace A370564

/-- `gcd(A014820(n), A119635(n+1))` -/
def P61365594903180790.Spec : Prop :=
  ∀ n, (P61365594903180790.a n : ℤ) = A370564 (n + 1)

end A370564

/-! ## A370564.P6190567059679460634

`gcd(A128960(n+1), A355038(n+1))`
-/

namespace A370564.P6190567059679460634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128960 (n + 1)) (A355038 (n + 1))

end

end A370564.P6190567059679460634

namespace A370564

/-- `gcd(A128960(n+1), A355038(n+1))` -/
def P6190567059679460634.Spec : Prop :=
  ∀ n, (P6190567059679460634.a n : ℤ) = A370564 (n + 1)

end A370564

/-! ## A370564.P15117606553161854335

`A257088((n+1)*A006519(n+1))`
-/

namespace A370564.P15117606553161854335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 ((n + 1 : ℤ) * A006519 (n + 1)).toNat

end

end A370564.P15117606553161854335

namespace A370564

/-- `A257088((n+1)*A006519(n+1))` -/
def P15117606553161854335.Spec : Prop :=
  ∀ n, P15117606553161854335.a n = A370564 (n + 1)

end A370564

/-!
# A370565: Size of the group Q_3*/(Q_3*)^n, where Q_3 is the field of 3-adic numbers.

The programs for A370565, the canonical program `A370565.P7797015782535462372` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370565 has offset 1).

The definition of A370565 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370180, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370565.P7797015782535462372

`(n+1)*A370180(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A370565

/-- `(n+1)*A370180(n+1)` -/
def P7797015782535462372.Spec : Prop :=
  ∀ n, P7797015782535462372.a n = A370565 (n + 1)

theorem P7797015782535462372.correct : P7797015782535462372.Spec := by
  intro n
  simp only [A370565, Nat.add_sub_cancel]

end A370565

/-! ## A370565.P3551736792297555983

`A065331(n+1)*A259445(n+1)`
-/

namespace A370565.P3551736792297555983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1) * A259445 (n + 1)

end

end A370565.P3551736792297555983

namespace A370565

/-- `A065331(n+1)*A259445(n+1)` -/
def P3551736792297555983.Spec : Prop :=
  ∀ n, P3551736792297555983.a n = A370565 (n + 1)

end A370565

/-! ## A370565.P9527936838630636852

`A065331(n+1)/A160467(n+1)*(n+1)`
-/

namespace A370565.P9527936838630636852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065331 (n + 1) : ℚ) / (A160467 (n + 1) : ℚ) * (n + 1 : ℚ)

end

end A370565.P9527936838630636852

namespace A370565

/-- `A065331(n+1)/A160467(n+1)*(n+1)` -/
def P9527936838630636852.Spec : Prop :=
  ∀ n, P9527936838630636852.a n = (A370565 (n + 1) : ℚ)

end A370565

/-! ## A370565.P15335500350781491103

`∑{d}[n+1, A120437(#)*A345082((n+1)/#)]`
-/

namespace A370565.P15335500350781491103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120437 d * A345082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370565.P15335500350781491103

namespace A370565

/-- `∑{d}[n+1, A120437(#)*A345082((n+1)/#)]` -/
def P15335500350781491103.Spec : Prop :=
  ∀ n, P15335500350781491103.a n = A370565 (n + 1)

end A370565

/-! ## A370565.P8899370910988097892

`abs(Δ[A343766(n)])*(n+1)`
-/

namespace A370565.P8899370910988097892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * (n + 1 : ℤ)

end

end A370565.P8899370910988097892

namespace A370565

/-- `abs(Δ[A343766(n)])*(n+1)` -/
def P8899370910988097892.Spec : Prop :=
  ∀ n, P8899370910988097892.a n = A370565 (n + 1)

end A370565

/-! ## A370565.P8613614531740309286

`(n+1)*gcd(n+1, Δ[3^n])`
-/

namespace A370565.P8613614531740309286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A370565.P8613614531740309286

namespace A370565

/-- `(n+1)*gcd(n+1, Δ[3^n])` -/
def P8613614531740309286.Spec : Prop :=
  ∀ n, (P8613614531740309286.a n : ℤ) = A370565 (n + 1)

end A370565

/-! ## A370565.P8937827661477554159

`gcd((n+1)², A027261(n))`
-/

namespace A370565.P8937827661477554159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A027261 n)

end

end A370565.P8937827661477554159

namespace A370565

/-- `gcd((n+1)², A027261(n))` -/
def P8937827661477554159.Spec : Prop :=
  ∀ n, (P8937827661477554159.a n : ℤ) = A370565 (n + 1)

end A370565

/-! ## A370565.P2599780687037520964

`gcd(A027261(n), A385898(n))`
-/

namespace A370565.P2599780687037520964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027261 n) (A385898 n)

end

end A370565.P2599780687037520964

namespace A370565

/-- `gcd(A027261(n), A385898(n))` -/
def P2599780687037520964.Spec : Prop :=
  ∀ n, (P2599780687037520964.a n : ℤ) = A370565 (n + 1)

end A370565

/-! ## A370565.P14963454999667480533

`gcd(A077432(n+1), A212697(n+1))`
-/

namespace A370565.P14963454999667480533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077432 (n + 1)) (A212697 (n + 1))

end

end A370565.P14963454999667480533

namespace A370565

/-- `gcd(A077432(n+1), A212697(n+1))` -/
def P14963454999667480533.Spec : Prop :=
  ∀ n, (P14963454999667480533.a n : ℤ) = A370565 (n + 1)

end A370565

/-! ## A370565.P15530189240491365323

`A370067(∑[n+2])`
-/

namespace A370565.P15530189240491365323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370067 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370565.P15530189240491365323

namespace A370565

/-- `A370067(∑[n+2])` -/
def P15530189240491365323.Spec : Prop :=
  ∀ n, P15530189240491365323.a n = A370565 (n + 1)

end A370565

/-!
# A370566: Size of the group Q_5*/(Q_5*)^n, where Q_5 is the field of 5-adic numbers.

The programs for A370566, the canonical program `A370566.P3913357575439077810` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370566 has offset 1).

The definition of A370566 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370181, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370566.P3913357575439077810

`(n+1)*A370181(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A370566

/-- `(n+1)*A370181(n+1)` -/
def P3913357575439077810.Spec : Prop :=
  ∀ n, P3913357575439077810.a n = A370566 (n + 1)

theorem P3913357575439077810.correct : P3913357575439077810.Spec := by
  intro n
  simp only [A370566, Nat.add_sub_cancel]

end A370566

/-! ## A370566.P13496040681683912512

`(n+1)*A377518(A132741(n+1))`
-/

namespace A370566.P13496040681683912512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A377518 (A132741 (n + 1)).toNat

end

end A370566.P13496040681683912512

namespace A370566

/-- `(n+1)*A377518(A132741(n+1))` -/
def P13496040681683912512.Spec : Prop :=
  ∀ n, P13496040681683912512.a n = A370566 (n + 1)

end A370566

/-! ## A370566.P13035735445754434744

`(n+1)/A132739(A060819(n+1))*(n+1)`
-/

namespace A370566.P13035735445754434744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132739 (A060819 (n + 1)).toNat : ℚ) * (n + 1 : ℚ)

end

end A370566.P13035735445754434744

namespace A370566

/-- `(n+1)/A132739(A060819(n+1))*(n+1)` -/
def P13035735445754434744.Spec : Prop :=
  ∀ n, P13035735445754434744.a n = (A370566 (n + 1) : ℚ)

end A370566

/-! ## A370566.P3834091714396257231

`(n+1)/A132739(A106621(n+1))*A142150(2*(n+1))`
-/

namespace A370566.P3834091714396257231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132739 (A106621 (n + 1)).toNat : ℚ) * (A142150 (2 * (n + 1)) : ℚ)

end

end A370566.P3834091714396257231

namespace A370566

/-- `(n+1)/A132739(A106621(n+1))*A142150(2*(n+1))` -/
def P3834091714396257231.Spec : Prop :=
  ∀ n, P3834091714396257231.a n = (A370566 (n + 1) : ℚ)

end A370566

/-! ## A370566.P1244748959888135287

`gcd(A005915(n), A117857(n+1))*(n+1)`
-/

namespace A370566.P1244748959888135287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005915 n) (A117857 (n + 1)) * (n + 1)

end

end A370566.P1244748959888135287

namespace A370566

/-- `gcd(A005915(n), A117857(n+1))*(n+1)` -/
def P1244748959888135287.Spec : Prop :=
  ∀ n, (P1244748959888135287.a n : ℤ) = A370566 (n + 1)

end A370566

/-! ## A370566.P3742469446339239483

`(n+1)*gcd(n+1, Δ[5^n])`
-/

namespace A370566.P3742469446339239483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A370566.P3742469446339239483

namespace A370566

/-- `(n+1)*gcd(n+1, Δ[5^n])` -/
def P3742469446339239483.Spec : Prop :=
  ∀ n, (P3742469446339239483.a n : ℤ) = A370566 (n + 1)

end A370566

/-! ## A370566.P6902892381910074075

`gcd((n+1)*(10^(n+1))^(2/(n+1)), (n+1)²)`
-/

namespace A370566.P6902892381910074075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℝ) * (10 ^ (n + 1) : ℝ) ^ (2 / (n + 1 : ℚ) : ℝ))) ((n + 1) ^ 2 : ℤ)

end

end A370566.P6902892381910074075

namespace A370566

/-- `gcd((n+1)*(10^(n+1))^(2/(n+1)), (n+1)²)` -/
def P6902892381910074075.Spec : Prop :=
  ∀ n, (P6902892381910074075.a n : ℤ) = A370566 (n + 1)

end A370566

/-! ## A370566.P16888718768747289201

`A370067(A034856(n+2))`
-/

namespace A370566.P16888718768747289201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370067 (A034856 (n + 2)).toNat

end

end A370566.P16888718768747289201

namespace A370566

/-- `A370067(A034856(n+2))` -/
def P16888718768747289201.Spec : Prop :=
  ∀ n, P16888718768747289201.a n = A370566 (n + 1)

end A370566

/-!
# A370567: Size of the group Q_7*/(Q_7*)^n, where Q_7 is the field of 7-adic numbers.

The programs for A370567, the canonical program `A370567.P14808296113634143775` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370567 has offset 1).

The definition of A370567 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370182, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370567.P14808296113634143775

`(n+1)*A370182(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A370567

/-- `(n+1)*A370182(n+1)` -/
def P14808296113634143775.Spec : Prop :=
  ∀ n, P14808296113634143775.a n = A370567 (n + 1)

theorem P14808296113634143775.correct : P14808296113634143775.Spec := by
  intro n
  simp only [A370567, Nat.add_sub_cancel]

end A370567

/-! ## A370567.P2103291340832515524

`A268354(n+1)*A385555(n+1)`
-/

namespace A370567.P2103291340832515524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (n + 1) * A385555 (n + 1)

end

end A370567.P2103291340832515524

namespace A370567

/-- `A268354(n+1)*A385555(n+1)` -/
def P2103291340832515524.Spec : Prop :=
  ∀ n, P2103291340832515524.a n = A370567 (n + 1)

end A370567

/-! ## A370567.P3766509356548442789

`gcd(n+1, A117859(n+1))*(n+1)`
-/

namespace A370567.P3766509356548442789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A117859 (n + 1)) * (n + 1)

end

end A370567.P3766509356548442789

namespace A370567

/-- `gcd(n+1, A117859(n+1))*(n+1)` -/
def P3766509356548442789.Spec : Prop :=
  ∀ n, (P3766509356548442789.a n : ℤ) = A370567 (n + 1)

end A370567

/-! ## A370567.P487429339694266328

`A370067(A055998(n+2))`
-/

namespace A370567.P487429339694266328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370067 (A055998 (n + 2)).toNat

end

end A370567.P487429339694266328

namespace A370567

/-- `A370067(A055998(n+2))` -/
def P487429339694266328.Spec : Prop :=
  ∀ n, P487429339694266328.a n = A370567 (n + 1)

end A370567

/-! ## A370567.P3842602960536319665

`A142150(2*(n+1))*A370050((n+3)²-A000124(n+1))`
-/

namespace A370567.P3842602960536319665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * (n + 1)) * A370050 (((n + 3) ^ 2 : ℤ) - A000124 (n + 1)).toNat

end

end A370567.P3842602960536319665

namespace A370567

/-- `A142150(2*(n+1))*A370050((n+3)²-A000124(n+1))` -/
def P3842602960536319665.Spec : Prop :=
  ∀ n, P3842602960536319665.a n = A370567 (n + 1)

end A370567

/-! ## A370567.P5497614272483968884

`(n+1)*gcd(A272139(A002144(n+1)), A285109(n+1))`
-/

namespace A370567.P5497614272483968884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (A272139 (A002144 (n + 1)).toNat) (A285109 (n + 1))

end

end A370567.P5497614272483968884

namespace A370567

/-- `(n+1)*gcd(A272139(A002144(n+1)), A285109(n+1))` -/
def P5497614272483968884.Spec : Prop :=
  ∀ n, (P5497614272483968884.a n : ℤ) = A370567 (n + 1)

end A370567

/-!
# A370568: Expansion of g.f. (1-x) / (1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A370568, the canonical program `A370568.P11598623186300641225` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370568 has offset 0).

The definition of A370568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A370568.P11598623186300641225`, by `A370568.P11598623186300641225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370568.P11598623186300641225

`ogf((1-x)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370568

/-- `ogf((1-x)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P11598623186300641225.Spec : Prop :=
  ∀ n, P11598623186300641225.a n = A370568 n

theorem P11598623186300641225.correct : P11598623186300641225.Spec := by
  intro n
  simp only [A370568]

end A370568

/-! ## A370568.P449372311146267504

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=8, a(2)=44, a(3)=207, a(4)=896`
-/

namespace A370568.P449372311146267504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 44, 207, 896] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 35 * a (n - 3) - 15 * a (n - 4) + a (n - 5)

end

end A370568.P449372311146267504

namespace A370568

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P449372311146267504.Spec : Prop :=
  ∀ n, P449372311146267504.a n = A370568 n

end A370568

/-! ## A370568.P7389096231422060472

`∑[A220948(n)]+3*a(n-1)` with `a(0)=1`
-/

namespace A370568.P7389096231422060472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220948 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A370568.P7389096231422060472

namespace A370568

/-- `∑[A220948(n)]+3*a(n-1)` -/
def P7389096231422060472.Spec : Prop :=
  ∀ n, P7389096231422060472.a n = A370568 n

end A370568

/-! ## A370568.P2862414155832076489

`A370391(n+1)-A221863(n+1)`
-/

namespace A370568.P2862414155832076489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370391 (n + 1) - A221863 (n + 1)

end

end A370568.P2862414155832076489

namespace A370568

/-- `A370391(n+1)-A221863(n+1)` -/
def P2862414155832076489.Spec : Prop :=
  ∀ n, P2862414155832076489.a n = A370568 n

end A370568

/-! ## A370568.P17009429045468451566

`A370391(n+1)-(A370391(n)+A224422(n+1))`
-/

namespace A370568.P17009429045468451566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370391 (n + 1) - (A370391 n + A224422 (n + 1))

end

end A370568.P17009429045468451566

namespace A370568

/-- `A370391(n+1)-(A370391(n)+A224422(n+1))` -/
def P17009429045468451566.Spec : Prop :=
  ∀ n, P17009429045468451566.a n = A370568 n

end A370568

/-!
# A370569: Number of permutations of [n] having no adjacent 2-cycles and no adjacent 4-cycles.

The programs for A370569, there is no canonical definition to state claims against.
-/

/-! ## A370569.P15360461121096529656

`A304710(n)+A099952(n+1)`
-/

namespace A370569.P15360461121096529656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304710 n + A099952 (n + 1)

end

end A370569.P15360461121096529656

/-! ## A370569.P16325552132099287893

`A099952(n+1)+A026799(A250120(n))`
-/

namespace A370569.P16325552132099287893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099952 (n + 1) + A026799 (A250120 n).toNat

end

end A370569.P16325552132099287893

/-! ## A370569.P16749062019425190689

`A132292(A326562(n+1))+A007318(n)`
-/

namespace A370569.P16749062019425190689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A326562 (n + 1)).toNat + A007318 n

end

end A370569.P16749062019425190689

/-!
# A370570: Number of permutations of [n] having no adjacent 2-cycles and no adjacent 3-cycles.

The programs for A370570, there is no canonical definition to state claims against.
-/

/-! ## A370570.P3545915143539542539

`xor(A075543(2*(n+2))²%5, A099952(n+1))`
-/

namespace A370570.P3545915143539542539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A075543 (2 * (n + 2)) ^ 2) 5) (A099952 (n + 1))

end

end A370570.P3545915143539542539

/-! ## A370570.P6550882214408301717

`A051221(A000931(3*n))+A026162(n)`
-/

namespace A370570.P6550882214408301717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051221 (A000931 (3 * n)).toNat + A026162 n

end

end A370570.P6550882214408301717

/-! ## A370570.P7285928385457785862

`xor(A099952(n+1), A337599(A163329(n+3)))`
-/

namespace A370570.P7285928385457785862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A099952 (n + 1)) (A337599 (A163329 (n + 3)).toNat)

end

end A370570.P7285928385457785862

/-!
# A370573: Number of connected dominating sets in the n-Lucas cube graph.

The programs for A370573, there is no canonical definition to state claims against.
-/

/-! ## A370573.P1260989151329693556

`A372697(A076878(n+1))`
-/

namespace A370573.P1260989151329693556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372697 (A076878 (n + 1)).toNat

end

end A370573.P1260989151329693556

/-!
# A370576: a(n) is the difference between the number of n-dist-increasing and (n-1)-dist-increasing permutations p of [2n], where p is k-dist-increasing if k>=0 and p(i)<p(i+k) for all i in [2n-k].

The programs for A370576, the canonical program `A370576.P1576061105044910594` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370576 has offset 0).

The definition of A370576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370576.P1576061105044910594

`(2*n-1)*n*a(n-1)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=70`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370576

/-- `(2*n-1)*n*a(n-1)` -/
def P1576061105044910594.Spec : Prop :=
  ∀ n, P1576061105044910594.a n = A370576 n

theorem P1576061105044910594.correct : P1576061105044910594.Spec := by
  intro n
  simp only [A370576]

end A370576

/-! ## A370576.P18124004066344336516

`ceil(7/9*A000680(n))`
-/

namespace A370576.P18124004066344336516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℚ) / 9 * (A000680 n : ℚ)⌉

end

end A370576.P18124004066344336516

namespace A370576

/-- `ceil(7/9*A000680(n))` -/
def P18124004066344336516.Spec : Prop :=
  ∀ n, P18124004066344336516.a n = A370576 n

end A370576

/-! ## A370576.P5665021370993628717

`ceil(7/9*(2*n)!/2^n)`
-/

namespace A370576.P5665021370993628717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℚ) / 9 * (Nat.factorial (2 * n) : ℚ) / (2 ^ n : ℚ)⌉

end

end A370576.P5665021370993628717

namespace A370576

/-- `ceil(7/9*(2*n)!/2^n)` -/
def P5665021370993628717.Spec : Prop :=
  ∀ n, P5665021370993628717.a n = A370576 n

end A370576

/-! ## A370576.P9616920642430252738

`A370505(∑[4*n])`
-/

namespace A370576.P9616920642430252738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370505 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370576.P9616920642430252738

namespace A370576

/-- `A370505(∑[4*n])` -/
def P9616920642430252738.Spec : Prop :=
  ∀ n, P9616920642430252738.a n = A370576 n

end A370576

/-! ## A370576.P8282125558920469564

`or(A063524(n), A370505(A046092(n)))`
-/

namespace A370576.P8282125558920469564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A370505 (A046092 n).toNat)

end

end A370576.P8282125558920469564

namespace A370576

/-- `or(A063524(n), A370505(A046092(n)))` -/
def P8282125558920469564.Spec : Prop :=
  ∀ n, P8282125558920469564.a n = A370576 n

end A370576

/-!
# A370577: Lexicographically earliest sequence such that for any value m, the number of distinct values between a pair of consecutive m's is distinct.

The programs for A370577, there is no canonical definition to state claims against.
-/

/-! ## A370577.P12053172260936694594

`A000120(lt[A093466(2*(n+2)), A250120(n)])`
-/

namespace A370577.P12053172260936694594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093466 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370577.P12053172260936694594

/-! ## A370577.P11970961027223553360

`A000120(lt[A093466(2*(n+2)), A061201(n+1)])`
-/

namespace A370577.P11970961027223553360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093466 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370577.P11970961027223553360

/-! ## A370577.P12168744867670502374

`A000120(lt[A093466(2*(n+2)), A234000(n+1)])`
-/

namespace A370577.P12168744867670502374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093466 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370577.P12168744867670502374

/-! ## A370577.P14072720183988334016

`A055640(A113025(n+3)+1)`
-/

namespace A370577.P14072720183988334016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A113025 (n + 3) + 1).toNat

end

end A370577.P14072720183988334016

/-! ## A370577.P3179280949844882725

`A000120(lt[A103662(n), A090748(2*n+1)])`
-/

namespace A370577.P3179280949844882725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103662 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370577.P3179280949844882725

/-!
# A370578: Numbers k such that k + 1 divides 3^k + 1.

The programs for A370578, there is no canonical definition to state claims against.
-/

/-! ## A370578.P637533464774235086

`∑[A322744(A380513(n))]-1`
-/

namespace A370578.P637533464774235086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322744 (A380513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A370578.P637533464774235086

/-!
# A370579: a(n) = n! * Sum_{d|n} 1/(d-1)!.

The programs for A370579, the canonical program `A370579.P13829268499602601867` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370579 has offset 1).

The definition of A370579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370579.P13829268499602601867

`(n+1)*A087906(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A370579

/-- `(n+1)*A087906(n+1)` -/
def P13829268499602601867.Spec : Prop :=
  ∀ n, P13829268499602601867.a n = A370579 (n + 1)

theorem P13829268499602601867.correct : P13829268499602601867.Spec := by
  intro n
  simp only [A370579, Nat.add_sub_cancel]

end A370579

/-! ## A370579.P4047468383481424527

`(n+1)!*∑{d}[n+1, 1/(#-1)!]`
-/

namespace A370579.P4047468383481424527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ d ∈ Nat.divisors (f1 n), 1 / (Nat.factorial ((d : ℤ) - 1).toNat : ℚ))

end

end A370579.P4047468383481424527

namespace A370579

/-- `(n+1)!*∑{d}[n+1, 1/(#-1)!]` -/
def P4047468383481424527.Spec : Prop :=
  ∀ n, P4047468383481424527.a n = (A370579 (n + 1) : ℚ)

end A370579

/-! ## A370579.P15058399352665499806

`(n*A307616(A041297(n))+1)*(n+1)`
-/

namespace A370579.P15058399352665499806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A307616 (A041297 n).toNat + 1) * (n + 1 : ℤ)

end

end A370579.P15058399352665499806

namespace A370579

/-- `(n*A307616(A041297(n))+1)*(n+1)` -/
def P15058399352665499806.Spec : Prop :=
  ∀ n, P15058399352665499806.a n = A370579 (n + 1)

end A370579

/-!
# A370581: a(n) = n! * Sum_{d|n} d/(d! * (n/d)!).

The programs for A370581, there is no canonical definition to state claims against.
-/

/-! ## A370581.P15859194998336216725

`A016007(A369991(n))+n`
-/

namespace A370581.P15859194998336216725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016007 (A369991 n).toNat + (n : ℤ)

end

end A370581.P15859194998336216725

/-!
# A370582: Number of subsets of {1..n} such that it is possible to choose a different prime factor of each element.

The programs for A370582, there is no canonical definition to state claims against.
-/

/-! ## A370582.P12085356510072253275

`2^n-A370583(n)`
-/

namespace A370582.P12085356510072253275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A370583 n

end

end A370582.P12085356510072253275

/-! ## A370582.P10316600533103592476

`∑[A370586(n)]+1`
-/

namespace A370582.P10316600533103592476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A370582.P10316600533103592476

/-! ## A370582.P2945784624770647770

`∑[or(A000007(n), A370586(n))]`
-/

namespace A370582.P2945784624770647770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A370586 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370582.P2945784624770647770

/-! ## A370582.P10104554589782281956

`A370586(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A370582.P10104554589782281956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A370586 n + a (A023443 n).toNat

end

end A370582.P10104554589782281956

/-! ## A370582.P11253152509249122752

`2^n-∑[A370587(n)]`
-/

namespace A370582.P11253152509249122752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370582.P11253152509249122752

/-!
# A370583: Number of subsets of {1..n} such that it is not possible to choose a different prime factor of each element.

The programs for A370583, there is no canonical definition to state claims against.
-/

/-! ## A370583.P9580109437192373078

`2^n-A370582(n)`
-/

namespace A370583.P9580109437192373078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A370582 n

end

end A370583.P9580109437192373078

/-! ## A370583.P10175086212225652213

`∑[A370587(n)]`
-/

namespace A370583.P10175086212225652213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370583.P10175086212225652213

/-! ## A370583.P12127382824963028025

`∑[floor(2^(n-1))-A370586(n)]`
-/

namespace A370583.P12127382824963028025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A370586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370583.P12127382824963028025

/-! ## A370583.P11444144000435192459

`abs(A000079(n)-A370582(n))`
-/

namespace A370583.P11444144000435192459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A370582 n|

end

end A370583.P11444144000435192459

/-! ## A370583.P10649317256274690277

`A000225(n)-∑[A370586(n)]`
-/

namespace A370583.P10649317256274690277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370583.P10649317256274690277

/-!
# A370584: Number of subsets of {1..n} such that only one set can be obtained by choosing a different prime factor of each element.

The programs for A370584, there is no canonical definition to state claims against.
-/

/-! ## A370584.P6762966861792552244

`∑[A370588(n)]+1`
-/

namespace A370584.P6762966861792552244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A370584.P6762966861792552244

/-! ## A370584.P5424213508488325242

`∑[or(A000007(n), A370588(n))]`
-/

namespace A370584.P5424213508488325242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A370588 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370584.P5424213508488325242

/-! ## A370584.P1312692583244784919

`A049599(A048803(n))`
-/

namespace A370584.P1312692583244784919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (A048803 n).toNat

end

end A370584.P1312692583244784919

/-! ## A370584.P1424089636961881072

`A183089(A359039(n))`
-/

namespace A370584.P1424089636961881072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183089 (A359039 n).toNat

end

end A370584.P1424089636961881072

/-! ## A370584.P6712000291221610476

`A130211(A005754(n+1))`
-/

namespace A370584.P6712000291221610476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130211 (A005754 (n + 1)).toNat

end

end A370584.P6712000291221610476

/-!
# A370585: Number of maximal subsets of {1..n} such that it is possible to choose a different prime factor of each element.

The programs for A370585, there is no canonical definition to state claims against.
-/

/-! ## A370585.P16555355794455609457

`A307984(A065033(2*n)*A369340(n))`
-/

namespace A370585.P16555355794455609457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307984 (A065033 (2 * n) * A369340 n).toNat

end

end A370585.P16555355794455609457

/-! ## A370585.P7429340846063666097

`A307984(A294892(2^n)+1)`
-/

namespace A370585.P7429340846063666097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307984 (A294892 (2 ^ n) + 1).toNat

end

end A370585.P7429340846063666097

/-! ## A370585.P17179363534163917185

`A307984(abs(n-∏{d}[n, A001221(n)-#]))`
-/

namespace A370585.P17179363534163917185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307984 |(n : ℤ) - ∏ d ∈ Nat.divisors (f1 n), (A001221 n - (d : ℤ))|.toNat

end

end A370585.P17179363534163917185

/-!
# A370586: Number of subsets of {1..n} containing n such that it is possible to choose a different prime factor of each element (choosable).

The programs for A370586, there is no canonical definition to state claims against.
-/

/-! ## A370586.P3969977562064074532

`Δ[A370582(abs(1-n))]`
-/

namespace A370586.P3969977562064074532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370582 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370586.P3969977562064074532

/-! ## A370586.P18337684299054148074

`floor(2^(n-1))-A370587(n)`
-/

namespace A370586.P18337684299054148074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A370587 n

end

end A370586.P18337684299054148074

/-!
# A370587: Number of subsets of {1..n} containing n such that it is not possible to choose a different prime factor of each element (non-choosable).

The programs for A370587, there is no canonical definition to state claims against.
-/

/-! ## A370587.P11279325435271388261

`floor(2^(n-1))-A370586(n)`
-/

namespace A370587.P11279325435271388261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A370586 n

end

end A370587.P11279325435271388261

/-!
# A370588: Number of subsets of {1..n} containing n such that only one set can be obtained by choosing a different prime factor of each element.

The programs for A370588, there is no canonical definition to state claims against.
-/

/-! ## A370588.P1413756084608509586

`Δ[A370584(abs(1-n))]`
-/

namespace A370588.P1413756084608509586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370584 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370588.P1413756084608509586

/-! ## A370588.P3116920139789999692

`A370584(n)-A370584(abs(1-n))`
-/

namespace A370588.P3116920139789999692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370584 n - A370584 |1 - (n : ℤ)|.toNat

end

end A370588.P3116920139789999692

/-!
# A370589: Number of subsets of {1..n} containing n such that it is not possible to choose a different binary index of each element.

The programs for A370589, there is no canonical definition to state claims against.
-/

/-! ## A370589.P2112195888030581274

`floor(2^(n-1))-A370639(n)`
-/

namespace A370589.P2112195888030581274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A370639 n

end

end A370589.P2112195888030581274

/-! ## A370589.P7675717848424093021

`A056469(n)-(A370639(n)+2)`
-/

namespace A370589.P7675717848424093021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - (A370639 n + 2)

end

end A370589.P7675717848424093021

/-! ## A370589.P3096806168200667356

`Δ[A370637(abs(1-n))]`
-/

namespace A370589.P3096806168200667356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370637 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370589.P3096806168200667356

/-!
# A370592: Number of integer partitions of n such that it is possible to choose a different prime factor of each part.

The programs for A370592, there is no canonical definition to state claims against.
-/

/-! ## A370592.P11283764458833933565

`A000041(n)-A370593(n)`
-/

namespace A370592.P11283764458833933565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A370593 n

end

end A370592.P11283764458833933565

/-! ## A370592.P237851963123669400

`A213598(n)-A370593(n)`
-/

namespace A370592.P237851963123669400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A370593 n

end

end A370592.P237851963123669400

/-! ## A370592.P11816298669013430561

`sqrt(A001255(n))-A370593(n)`
-/

namespace A370592.P11816298669013430561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A370593 n : ℝ)

end

end A370592.P11816298669013430561

/-! ## A370592.P9621989581631545819

`∑[A002865(n)]-A370593(n)`
-/

namespace A370592.P9621989581631545819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A370593 n

end

end A370592.P9621989581631545819

/-! ## A370592.P12397061364294199424

`A035363(2*n)-A370593(n)`
-/

namespace A370592.P12397061364294199424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A370593 n

end

end A370592.P12397061364294199424

/-!
# A370593: Number of integer partitions of n such that it is not possible to choose a different prime factor of each part.

The programs for A370593, there is no canonical definition to state claims against.
-/

/-! ## A370593.P18195160162344219664

`A000041(n)-A370592(n)`
-/

namespace A370593.P18195160162344219664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A370592 n

end

end A370593.P18195160162344219664

/-! ## A370593.P9253607143231266302

`A213598(n)-A370592(n)`
-/

namespace A370593.P9253607143231266302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A370592 n

end

end A370593.P9253607143231266302

/-! ## A370593.P841154462179068682

`∑[A002865(n)]-A370592(n)`
-/

namespace A370593.P841154462179068682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A370592 n

end

end A370593.P841154462179068682

/-! ## A370593.P7831088929561398203

`A239830(∑[n])-A370592(n)`
-/

namespace A370593.P7831088929561398203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (∑ j ∈ Finset.range (n + 1), f1 j) - A370592 n

end

end A370593.P7831088929561398203

/-! ## A370593.P4288221280772054583

`A035363(2*n)-A370592(n)`
-/

namespace A370593.P4288221280772054583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A370592 n

end

end A370593.P4288221280772054583

/-!
# A370595: Number of integer partitions of n such that only one set can be obtained by choosing a different divisor of each part.

The programs for A370595, there is no canonical definition to state claims against.
-/

/-! ## A370595.P6015513798573544132

`A239312(n)-A370803(n)`
-/

namespace A370595.P6015513798573544132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n - A370803 n

end

end A370595.P6015513798573544132

/-!
# A370596: Numbers k such that A007814(k) is a prime number.

The programs for A370596, the canonical program `A370596.P16435059816555867442` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370596 has offset 1).

The definition of A370596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370596.P16435059816555867442

`eq[(-1)^n, A003415(A327491(n))]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A370596

/-- `eq[(-1)^n, A003415(A327491(n))]` -/
def P16435059816555867442.Spec : Prop :=
  ∀ n, (P16435059816555867442.a n : ℤ) = A370596 (n + 1)

theorem P16435059816555867442.correct : P16435059816555867442.Spec := by
  intro n
  simp only [A370596, Nat.add_sub_cancel]

end A370596

/-! ## A370596.P10577231281276939730

`eq[A001222(A136480(n)), A009001(n)]`
-/

namespace A370596.P10577231281276939730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A136480 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P10577231281276939730

namespace A370596

/-- `eq[A001222(A136480(n)), A009001(n)]` -/
def P10577231281276939730.Spec : Prop :=
  ∀ n, (P10577231281276939730.a n : ℤ) = A370596 (n + 1)

end A370596

/-! ## A370596.P15309495780108704236

`eq[A001222(A136480(n)), A001511(n+1)]`
-/

namespace A370596.P15309495780108704236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A136480 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P15309495780108704236

namespace A370596

/-- `eq[A001222(A136480(n)), A001511(n+1)]` -/
def P15309495780108704236.Spec : Prop :=
  ∀ n, (P15309495780108704236.a n : ℤ) = A370596 (n + 1)

end A370596

/-! ## A370596.P4574294312270717704

`eq[A000005(A136480(n)), A027760(n+1)]`
-/

namespace A370596.P4574294312270717704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A136480 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P4574294312270717704

namespace A370596

/-- `eq[A000005(A136480(n)), A027760(n+1)]` -/
def P4574294312270717704.Spec : Prop :=
  ∀ n, (P4574294312270717704.a n : ℤ) = A370596 (n + 1)

end A370596

/-! ## A370596.P3034142032550707970

`eq[A000005(A136480(n)), A079612(n+1)]`
-/

namespace A370596.P3034142032550707970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A136480 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P3034142032550707970

namespace A370596

/-- `eq[A000005(A136480(n)), A079612(n+1)]` -/
def P3034142032550707970.Spec : Prop :=
  ∀ n, (P3034142032550707970.a n : ℤ) = A370596 (n + 1)

end A370596

/-! ## A370596.P10969058485856237088

`eq[A003415(A136480(n)), A136480(2*(n+1))]`
-/

namespace A370596.P10969058485856237088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A136480 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P10969058485856237088

namespace A370596

/-- `eq[A003415(A136480(n)), A136480(2*(n+1))]` -/
def P10969058485856237088.Spec : Prop :=
  ∀ n, (P10969058485856237088.a n : ℤ) = A370596 (n + 1)

end A370596

/-! ## A370596.P10951668327400628337

`eq[A003415(A327491(n)), A327491(2*(n+1))]`
-/

namespace A370596.P10951668327400628337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A327491 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P10951668327400628337

namespace A370596

/-- `eq[A003415(A327491(n)), A327491(2*(n+1))]` -/
def P10951668327400628337.Spec : Prop :=
  ∀ n, (P10951668327400628337.a n : ℤ) = A370596 (n + 1)

end A370596

/-! ## A370596.P11794202170126047472

`eq[A001222(A136480(n)), A136480(3*n+2)]`
-/

namespace A370596.P11794202170126047472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A136480 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P11794202170126047472

namespace A370596

/-- `eq[A001222(A136480(n)), A136480(3*n+2)]` -/
def P11794202170126047472.Spec : Prop :=
  ∀ n, (P11794202170126047472.a n : ℤ) = A370596 (n + 1)

end A370596

/-! ## A370596.P9377055891015260357

`eq[A001222(A136480(n)), A193267(n+1)]`
-/

namespace A370596.P9377055891015260357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A136480 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P9377055891015260357

namespace A370596

/-- `eq[A001222(A136480(n)), A193267(n+1)]` -/
def P9377055891015260357.Spec : Prop :=
  ∀ n, (P9377055891015260357.a n : ℤ) = A370596 (n + 1)

end A370596

/-! ## A370596.P14952193125040782066

`A008574(A359794(n+1)²)/A359794(n+1)`
-/

namespace A370596.P14952193125040782066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A359794 (n + 1) ^ 2).toNat : ℚ) / (A359794 (n + 1) : ℚ)

end

end A370596.P14952193125040782066

namespace A370596

/-- `A008574(A359794(n+1)²)/A359794(n+1)` -/
def P14952193125040782066.Spec : Prop :=
  ∀ n, P14952193125040782066.a n = (A370596 (n + 1) : ℚ)

end A370596

/-!
# A370597: Even numbers k such that gcd(k, A007814(k)) = 1.

The programs for A370597, the canonical program `A370597.P7414276233010119171` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370597 has offset 1).

The definition of A370597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370597.P7414276233010119171

`record[root(A000027(2*(n+1)), A378887(n+1))]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A370597

/-- `record[root(A000027(2*(n+1)), A378887(n+1))]` -/
def P7414276233010119171.Spec : Prop :=
  ∀ n, P7414276233010119171.a n = (A370597 (n + 1) : ℝ)

end A370597

/-! ## A370597.P16498039786196273497

`eq[(-1)^n, gcd(n, A285099(3*n+1))]`
-/

namespace A370597.P16498039786196273497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A285099 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A370597.P16498039786196273497

namespace A370597

/-- `eq[(-1)^n, gcd(n, A285099(3*n+1))]` -/
def P16498039786196273497.Spec : Prop :=
  ∀ n, (P16498039786196273497.a n : ℤ) = A370597 (n + 1)

end A370597

/-! ## A370597.P7687165928750573491

`∩[A194372(n+1), A372439(n+1)]`
-/

namespace A370597.P7687165928750573491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370597.P7687165928750573491

namespace A370597

/-- `∩[A194372(n+1), A372439(n+1)]` -/
def P7687165928750573491.Spec : Prop :=
  ∀ n, (P7687165928750573491.a n : ℤ) = A370597 (n + 1)

end A370597

/-! ## A370597.P763526609904237359

`lt[A229764(n), A101676(A224613(n+3))]`
-/

namespace A370597.P763526609904237359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101676 (A224613 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370597.P763526609904237359

namespace A370597

/-- `lt[A229764(n), A101676(A224613(n+3))]` -/
def P763526609904237359.Spec : Prop :=
  ∀ n, (P763526609904237359.a n : ℤ) = A370597 (n + 1)

end A370597

/-! ## A370597.P7274228710766048281

`filter[A101616(2*n+1), A168185(#)]`
-/

namespace A370597.P7274228710766048281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101616 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A370597.P7274228710766048281

namespace A370597

/-- `filter[A101616(2*n+1), A168185(#)]` -/
def P7274228710766048281.Spec : Prop :=
  ∀ n, P7274228710766048281.a n = A370597 (n + 1)

end A370597

/-!
# A370598: Characteristic function of exponentially squarefree numbers (A209061).

The programs for A370598, the canonical program `A370598.P3615362313586893228` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370598 has offset 1).

The definition of A370598 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166234, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370598.P3615362313586893228

`abs(A166234(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A370598

/-- `abs(A166234(n+1))` -/
def P3615362313586893228.Spec : Prop :=
  ∀ n, P3615362313586893228.a n = A370598 (n + 1)

theorem P3615362313586893228.correct : P3615362313586893228.Spec := by
  intro n
  simp only [A370598, Nat.add_sub_cancel]

end A370598

/-! ## A370598.P1989266169674132408

`C(A338782(n+1), n+1)`
-/

namespace A370598.P1989266169674132408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A338782 (n + 1)).toNat (n + 1)

end

end A370598.P1989266169674132408

namespace A370598

/-- `C(A338782(n+1), n+1)` -/
def P1989266169674132408.Spec : Prop :=
  ∀ n, (P1989266169674132408.a n : ℤ) = A370598 (n + 1)

end A370598

/-! ## A370598.P5132760434044581080

`C(n+1, A365684(n+1))`
-/

namespace A370598.P5132760434044581080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A365684 (n + 1)).toNat

end

end A370598.P5132760434044581080

namespace A370598

/-- `C(n+1, A365684(n+1))` -/
def P5132760434044581080.Spec : Prop :=
  ∀ n, (P5132760434044581080.a n : ℤ) = A370598 (n + 1)

end A370598

/-! ## A370598.P10207734456002885719

`C(A365683(n+1), n+1)`
-/

namespace A370598.P10207734456002885719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A365683 (n + 1)).toNat (n + 1)

end

end A370598.P10207734456002885719

namespace A370598

/-- `C(A365683(n+1), n+1)` -/
def P10207734456002885719.Spec : Prop :=
  ∀ n, (P10207734456002885719.a n : ℤ) = A370598 (n + 1)

end A370598

/-! ## A370598.P17999418380806036279

`C(A383764(n+1), n+1)`
-/

namespace A370598.P17999418380806036279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A383764 (n + 1)).toNat (n + 1)

end

end A370598.P17999418380806036279

namespace A370598

/-- `C(A383764(n+1), n+1)` -/
def P17999418380806036279.Spec : Prop :=
  ∀ n, (P17999418380806036279.a n : ℤ) = A370598 (n + 1)

end A370598

/-! ## A370598.P16324919213352837109

`A008966(A072411(n+1))`
-/

namespace A370598.P16324919213352837109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A072411 (n + 1)).toNat

end

end A370598.P16324919213352837109

namespace A370598

/-- `A008966(A072411(n+1))` -/
def P16324919213352837109.Spec : Prop :=
  ∀ n, P16324919213352837109.a n = A370598 (n + 1)

end A370598

/-! ## A370598.P7359457863613880490

`gcd(A000038(n), A166234(n+1))`
-/

namespace A370598.P7359457863613880490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A166234 (n + 1))

end

end A370598.P7359457863613880490

namespace A370598

/-- `gcd(A000038(n), A166234(n+1))` -/
def P7359457863613880490.Spec : Prop :=
  ∀ n, (P7359457863613880490.a n : ℤ) = A370598 (n + 1)

end A370598

/-! ## A370598.P9041320552033589645

`lcm(A020985(n), A166234(n+1))`
-/

namespace A370598.P9041320552033589645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A166234 (n + 1))

end

end A370598.P9041320552033589645

namespace A370598

/-- `lcm(A020985(n), A166234(n+1))` -/
def P9041320552033589645.Spec : Prop :=
  ∀ n, (P9041320552033589645.a n : ℤ) = A370598 (n + 1)

end A370598

/-! ## A370598.P4480027087040612914

`and(A158388(n), A166234(n+1))`
-/

namespace A370598.P4480027087040612914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A166234 (n + 1))

end

end A370598.P4480027087040612914

namespace A370598

/-- `and(A158388(n), A166234(n+1))` -/
def P4480027087040612914.Spec : Prop :=
  ∀ n, P4480027087040612914.a n = A370598 (n + 1)

end A370598

/-! ## A370598.P11490828314976645079

`∑{d}[n+1, A008683(#)*A365680((n+1)/#)]`
-/

namespace A370598.P11490828314976645079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A365680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370598.P11490828314976645079

namespace A370598

/-- `∑{d}[n+1, A008683(#)*A365680((n+1)/#)]` -/
def P11490828314976645079.Spec : Prop :=
  ∀ n, P11490828314976645079.a n = A370598 (n + 1)

end A370598

/-! ## A370598.P15859604710004996405

`char[A338782(n+1)-1]`
-/

namespace A370598.P15859604710004996405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A370598.P15859604710004996405

namespace A370598

/-- `char[A338782(n+1)-1]` -/
def P15859604710004996405.Spec : Prop :=
  ∀ n, (P15859604710004996405.a n : ℤ) = A370598 (n + 1)

end A370598

/-!
# A370599: a(n) is the number of distinct triangles with integral side-lengths for which the perimeter 2*n divides the area.

The programs for A370599, there is no canonical definition to state claims against.
-/

/-! ## A370599.P6579326062353374693

`A290501(A061040(n+3))%A051064(2*n+5)`
-/

namespace A370599.P6579326062353374693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290501 (A061040 (n + 3)).toNat) (A051064 (2 * n + 5))

end

end A370599.P6579326062353374693

/-! ## A370599.P17354633726357729542

`and(A001222(A167053(2*n+1)), A211159(2*(n+2)))`
-/

namespace A370599.P17354633726357729542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A167053 (2 * n + 1)).toNat) (A211159 (2 * (n + 2)))

end

end A370599.P17354633726357729542

/-! ## A370599.P7955747913348259949

`and(A007949(2*n+5), A335456(A003160(2*n+1)))`
-/

namespace A370599.P7955747913348259949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007949 (2 * n + 5)) (A335456 (A003160 (2 * n + 1)).toNat)

end

end A370599.P7955747913348259949

/-! ## A370599.P6105194910042252662

`A015010(A158000(n+1))`
-/

namespace A370599.P6105194910042252662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015010 (A158000 (n + 1)).toNat

end

end A370599.P6105194910042252662

/-! ## A370599.P8203170732201729026

`A125005(A229347(n+1))`
-/

namespace A370599.P8203170732201729026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A229347 (n + 1)).toNat

end

end A370599.P8203170732201729026

