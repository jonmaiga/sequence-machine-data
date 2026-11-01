import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A394000: Achilles numbers whose prime power factor exponents are not all pairwise coprime.

The programs for A394000, there is no canonical definition to state claims against.
-/

/-! ## A394000.P1645501794771601764

`∩[A052486(n+1), A072413(n+1)]`
-/

namespace A394000.P1645501794771601764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394000.P1645501794771601764

/-!
# A394013: Numbers that are neither the sum nor difference of two 3-smooth numbers.

The programs for A394013, there is no canonical definition to state claims against.
-/

/-! ## A394013.P15463936280514808094

`∩[A081329(n+1), A290365(n+1)]`
-/

namespace A394013.P15463936280514808094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394013.P15463936280514808094

/-! ## A394013.P4278842392842793726

`∩[A290365(n+1), A323046(n+1)]`
-/

namespace A394013.P4278842392842793726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394013.P4278842392842793726

/-! ## A394013.P9696594791063956880

`∩[comp[A081330(n+1)], A290365(n+1)]`
-/

namespace A394013.P9696594791063956880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081330 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A394013.P9696594791063956880

/-! ## A394013.P12317795908813849538

`∩[lt[2, A237442(1+n)]+1, A290365(n+1)]`
-/

namespace A394013.P12317795908813849538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A394013.P12317795908813849538

/-! ## A394013.P16634376245790537564

`∩[lt[A081326(n+2), 1]+2, A290365(n+1)]`
-/

namespace A394013.P16634376245790537564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A394013.P16634376245790537564

/-!
# A394014: a(1)=1; for n >= 1, a(n+1) = prime(k) where k > a(n) is least k such that prime(k) - k is prime.

The programs for A394014, there is no canonical definition to state claims against.
-/

/-! ## A394014.P15159819232405044498

`A109257(a(n-1))` with `a(0)=1`
-/

namespace A394014.P15159819232405044498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109257 (a (n - 1)).toNat

end

end A394014.P15159819232405044498

/-!
# A394015: a(n) = (2*n)! * [x^(2*n)] cos(x) * cos(2*x) / cos(4*x).

The programs for A394015, there is no canonical definition to state claims against.
-/

/-! ## A394015.P11072795378544534709

`(A225109(2*n)+A006873(2*n))/2`
-/

namespace A394015.P11072795378544534709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225109 (2 * n) + A006873 (2 * n) : ℚ) / 2

end

end A394015.P11072795378544534709

/-!
# A394016: Triangle read by rows: T(n, k) = 1 if k appears in the n X n multiplication table, otherwise 0.

The programs for A394016, there is no canonical definition to state claims against.
-/

/-! ## A394016.P15899581459646894919

`1-A000007(A395373(n+1))`
-/

namespace A394016.P15899581459646894919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A395373 (n + 1)).toNat

end

end A394016.P15899581459646894919

/-! ## A394016.P6395600988996301926

`A019425(2*A395373(n+1))`
-/

namespace A394016.P6395600988996301926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * A395373 (n + 1)).toNat

end

end A394016.P6395600988996301926

/-! ## A394016.P2646048056476555265

`A001221(2^A395373(n+1))`
-/

namespace A394016.P2646048056476555265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A395373 (n + 1) : ℤ))).toNat

end

end A394016.P2646048056476555265

/-! ## A394016.P16965678936118361180

`A240328(A395373(n+1)+1)+1`
-/

namespace A394016.P16965678936118361180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A395373 (n + 1) + 1).toNat + 1

end

end A394016.P16965678936118361180

/-! ## A394016.P16394987610296925035

`2%A068374(A395373(n+1)+1)/2`
-/

namespace A394016.P16394987610296925035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod 2 (A068374 (A395373 (n + 1) + 1).toNat) : ℚ) / 2

end

end A394016.P16394987610296925035

/-! ## A394016.P3552027399449930726

`A116449(A007814(2*n+3)^A395373(n+1))`
-/

namespace A394016.P3552027399449930726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116449 (SequenceMachineLib.roundAway ((A007814 (2 * n + 3) : ℚ) ^ (A395373 (n + 1) : ℤ))).toNat

end

end A394016.P3552027399449930726

/-! ## A394016.P7505398614155711736

`A342556(A007814(2*n+3)^A395373(n+1))`
-/

namespace A394016.P7505398614155711736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342556 (SequenceMachineLib.roundAway ((A007814 (2 * n + 3) : ℚ) ^ (A395373 (n + 1) : ℤ))).toNat

end

end A394016.P7505398614155711736

/-! ## A394016.P2775763640504214589

`A116449(C(A007814(2*n+3), A395373(n+1)))`
-/

namespace A394016.P2775763640504214589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116449 (Nat.choose (A007814 (2 * n + 3)).toNat (A395373 (n + 1)).toNat)

end

end A394016.P2775763640504214589

/-! ## A394016.P12382952338853145743

`(A301298(3*(n+1))^A395373(n+1)+1)%2`
-/

namespace A394016.P12382952338853145743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A301298 (3 * (n + 1)) : ℚ) ^ (A395373 (n + 1) : ℤ) + 1)) 2

end

end A394016.P12382952338853145743

/-! ## A394016.P12752240663393456842

`A062339(3*(n+1))%A395364(A395373(n+1))`
-/

namespace A394016.P12752240663393456842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062339 (3 * (n + 1))) (A395364 (A395373 (n + 1)).toNat)

end

end A394016.P12752240663393456842

/-! ## A394016.P3454839611110159702

`A023533(gcd(A106856(n+1), A395373(n+1)))`
-/

namespace A394016.P3454839611110159702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (Int.gcd (A106856 (n + 1)) (A395373 (n + 1)))

end

end A394016.P3454839611110159702

/-!
# A394017: Expansion of g.f.: Product_{k>=1} 1 / (1 - x^(k^2 + 2)).

The programs for A394017, there is no canonical definition to state claims against.
-/

/-! ## A394017.P447896689306069516

`A025907((char[1]*A075046(n+1)+2)*n)`
-/

namespace A394017.P447896689306069516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 ((((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A075046 (n + 1) + 2) * (n : ℤ)).toNat

end

end A394017.P447896689306069516

/-! ## A394017.P14363922193491176716

`and(A025844(n), A065235(A000285(n)))`
-/

namespace A394017.P14363922193491176716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025844 n) (A065235 (A000285 n).toNat)

end

end A394017.P14363922193491176716

/-! ## A394017.P17994098254969568950

`A025844(n)*A057427(A374632(n)+1)`
-/

namespace A394017.P17994098254969568950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025844 n * A057427 (A374632 n + 1).toNat

end

end A394017.P17994098254969568950

/-! ## A394017.P3956624166378301620

`A025844(n)^A191340(A000045(n+3))`
-/

namespace A394017.P3956624166378301620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025844 n : ℚ) ^ (A191340 (A000045 (n + 3)).toNat : ℤ)

end

end A394017.P3956624166378301620

/-! ## A394017.P11910703711313165103

`and(A025844(n), A057428(A169622(n+1)))`
-/

namespace A394017.P11910703711313165103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025844 n) (A057428 (A169622 (n + 1)).toNat)

end

end A394017.P11910703711313165103

/-!
# A394018: Expansion of g.f.: Product_{k>=1} 1 / (1 - x^(k^2 + 3)).

The programs for A394018, there is no canonical definition to state claims against.
-/

/-! ## A394018.P12122845638097739213

`A025871(n)^A360289(n)^n`
-/

namespace A394018.P12122845638097739213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025871 n : ℚ) ^ (A360289 n ^ n : ℤ)

end

end A394018.P12122845638097739213

/-! ## A394018.P4353623418136922190

`and(∑[A319646(n+2)], A025871(n))`
-/

namespace A394018.P4353623418136922190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319646 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A025871 n)

end

end A394018.P4353623418136922190

/-! ## A394018.P16296717375672028096

`A025871(n)^A069293(n+1)^(n+1)`
-/

namespace A394018.P16296717375672028096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025871 n : ℚ) ^ (A069293 (n + 1) ^ (n + 1) : ℤ)

end

end A394018.P16296717375672028096

/-! ## A394018.P2049838265511066281

`A025871(n)%xor(n-3, A117823(2*n+1))`
-/

namespace A394018.P2049838265511066281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025871 n) (Int.xor ((n : ℤ) - 3) (A117823 (2 * n + 1)))

end

end A394018.P2049838265511066281

/-! ## A394018.P15216405198761625739

`A025871(n)^A000110(A360289(n))`
-/

namespace A394018.P15216405198761625739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025871 n : ℚ) ^ (A000110 (A360289 n).toNat : ℤ)

end

end A394018.P15216405198761625739

/-!
# A394019: Expansion of g.f.: Product_{k>=1} 1 / (1 - x^(k^2 + 4)).

The programs for A394019, there is no canonical definition to state claims against.
-/

/-! ## A394019.P13272085594718480501

`and(A191340(A126706(n+1)), A270929(2*n+1))`
-/

namespace A394019.P13272085594718480501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A191340 (A126706 (n + 1)).toNat) (A270929 (2 * n + 1))

end

end A394019.P13272085594718480501

/-! ## A394019.P13102509741034316047

`A070445(A194052(3*n+4))%3`
-/

namespace A394019.P13102509741034316047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070445 (A194052 (3 * n + 4)).toNat) 3

end

end A394019.P13102509741034316047

/-! ## A394019.P13400069657586246991

`A352516(A000705(n+1)*A105825(n+5))`
-/

namespace A394019.P13400069657586246991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (A000705 (n + 1) * A105825 (n + 5)).toNat

end

end A394019.P13400069657586246991

/-! ## A394019.P5278466970212097208

`and(A096258(n), A340061(A134922(2*n+5)))`
-/

namespace A394019.P5278466970212097208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096258 n) (A340061 (A134922 (2 * n + 5)).toNat)

end

end A394019.P5278466970212097208

/-! ## A394019.P1631110207939801697

`A007949(A378082(3*n+4)+A082647(n+1))`
-/

namespace A394019.P1631110207939801697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A378082 (3 * n + 4) + A082647 (n + 1)).toNat

end

end A394019.P1631110207939801697

/-!
# A394020: Expansion of g.f.: Product_{k>=1} 1 / (1 - x^(k^2 + 5)).

The programs for A394020, there is no canonical definition to state claims against.
-/

/-! ## A394020.P3044426164993107283

`A330986(A314969(n))`
-/

namespace A394020.P3044426164993107283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330986 (A314969 n).toNat

end

end A394020.P3044426164993107283

/-! ## A394020.P4873646124321950871

`and(A025902(n), A158235(A007318(3*n)))`
-/

namespace A394020.P4873646124321950871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025902 n) (A158235 (A007318 (3 * n)).toNat)

end

end A394020.P4873646124321950871

/-! ## A394020.P5967005294807342722

`A320841(A003972(n+1)*A274608(n+1))`
-/

namespace A394020.P5967005294807342722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A003972 (n + 1) * A274608 (n + 1)).toNat

end

end A394020.P5967005294807342722

/-! ## A394020.P7677948284046312596

`and(A000217(A000285(n)), A075053(2*(n+1)))`
-/

namespace A394020.P7677948284046312596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A000285 n).toNat) (A075053 (2 * (n + 1)))

end

end A394020.P7677948284046312596

/-! ## A394020.P14813037893491861718

`A035162(A000005(n+1)*A075195(3*n+2))`
-/

namespace A394020.P14813037893491861718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (A000005 (n + 1) * A075195 (3 * n + 2)).toNat

end

end A394020.P14813037893491861718

/-!
# A394021: Number of partitions p of n with multiplicity of each part at most 2, satisfying max(p) <= 2 * min(p).

The programs for A394021, there is no canonical definition to state claims against.
-/

/-! ## A394021.P3525594299779646749

`row(A055238(A328105(n)))`
-/

namespace A394021.P3525594299779646749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A055238 (A328105 n).toNat).toNat

end

end A394021.P3525594299779646749

/-! ## A394021.P1361999697067217429

`A226029(A288587(n+1))`
-/

namespace A394021.P1361999697067217429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A288587 (n + 1)).toNat

end

end A394021.P1361999697067217429

/-! ## A394021.P1798143369677052690

`A081604(A154929(n)+A056040(n))`
-/

namespace A394021.P1798143369677052690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A154929 n + A056040 n).toNat

end

end A394021.P1798143369677052690

/-! ## A394021.P11660007910622055225

`A081604(A056040(n)+A030548(n+1))`
-/

namespace A394021.P11660007910622055225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A056040 n + A030548 (n + 1)).toNat

end

end A394021.P11660007910622055225

/-! ## A394021.P3991951250622454105

`A081604(A070082(n+1)+A056040(n))`
-/

namespace A394021.P3991951250622454105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A070082 (n + 1) + A056040 n).toNat

end

end A394021.P3991951250622454105

/-!
# A394024: Number of partitions p of n with multiplicity of each part at most 3, satisfying max(p) <= 3 * min(p).

The programs for A394024, there is no canonical definition to state claims against.
-/

/-! ## A394024.P10399671063769645366

`A156253(lt[A143588(n+3), A257505(n+1)])`
-/

namespace A394024.P10399671063769645366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143588 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A394024.P10399671063769645366

/-!
# A394030: a(0) = 1; a(n) = n * Sum_{j=0..n-1} Sum_{i=0..j} a(i) * a(j-i).

The programs for A394030, there is no canonical definition to state claims against.
-/

/-! ## A394030.P4486099528210278847

`A047994(A162117(n+1)+A192388(n+1)-A225409(n))`
-/

namespace A394030.P4486099528210278847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A162117 (n + 1) + (A192388 (n + 1) - A225409 n)).toNat

end

end A394030.P4486099528210278847

/-!
# A394031: Maximum size of a subset of GF(2)^n being a Sidon set.

The programs for A394031, there is no canonical definition to state claims against.
-/

/-! ## A394031.P1678320805578228272

`ogf((2+x+x^2+2x^3+x^4+2x^5+3x^6+6x^7+6x^8+10x^9)/(1-x))`
-/

namespace A394031.P1678320805578228272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 1, 2, 1, 2, 3, 6, 6, 10] [1, -1] n

end

end A394031.P1678320805578228272

/-! ## A394031.P18130368936817018388

`∑[∏{p}[A339372(n), #]]+1`
-/

namespace A394031.P18130368936817018388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339372 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A394031.P18130368936817018388

/-! ## A394031.P9013450280034920301

`A320270(n+4)-floor((n+1)/6)`
-/

namespace A394031.P9013450280034920301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320270 (n + 4) - ⌊(n + 1 : ℚ) / 6⌋

end

end A394031.P9013450280034920301

/-! ## A394031.P3734332542451956912

`A144968(2^∑{e}[1+n, #]+2^n+1)`
-/

namespace A394031.P3734332542451956912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + (2 ^ n + 1))

end

end A394031.P3734332542451956912

/-! ## A394031.P10124277006551588616

`A022306(A343942(n))+1`
-/

namespace A394031.P10124277006551588616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022306 (A343942 n).toNat + 1

end

end A394031.P10124277006551588616

/-!
# A394033: Rectangular array, read by descending antidiagonals: denominators in the best lower approximating array to the golden ratio, phi (A001622). (See Comments).

The programs for A394033, there is no canonical definition to state claims against.
-/

/-! ## A394033.P824722978748448693

`ceil(A394034(n+1)/ϕ)`
-/

namespace A394033.P824722978748448693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A394034 (n + 1) : ℝ) / Real.goldenRatio⌉

end

end A394033.P824722978748448693

/-! ## A394033.P4535666044323361333

`A005206(A394034(n+1))`
-/

namespace A394033.P4535666044323361333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A394034 (n + 1)).toNat

end

end A394033.P4535666044323361333

/-!
# A394034: Rectangular array, read by descending antidiagonals: numerators in the best lower approximating array to the golden ratio, phi (A001622). (See A394033.)

The programs for A394034, there is no canonical definition to state claims against.
-/

/-! ## A394034.P2439117609834767878

`floor(ϕ*A394033(n+1))`
-/

namespace A394034.P2439117609834767878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A394033 (n + 1) : ℝ)⌋

end

end A394034.P2439117609834767878

/-! ## A394034.P16126282845462176423

`A000201(A394033(1+n))`
-/

namespace A394034.P16126282845462176423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A394033 (1 + n)).toNat

end

end A394034.P16126282845462176423

/-!
# A394035: Rectangular array, read by descending antidiagonals: denominators in the best upper approximating array to the golden ratio, phi (A001622) (see Comments).

The programs for A394035, there is no canonical definition to state claims against.
-/

/-! ## A394035.P18144409382644263185

`floor(A394036(n+1)/ϕ)`
-/

namespace A394035.P18144409382644263185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A394036 (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A394035.P18144409382644263185

/-! ## A394035.P18162831229091032266

`A319433(A394036(1+n))`
-/

namespace A394035.P18162831229091032266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (A394036 (1 + n)).toNat

end

end A394035.P18162831229091032266

/-! ## A394035.P13998335983234230596

`A005206(A394036(n+1)-1)`
-/

namespace A394035.P13998335983234230596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A394036 (n + 1) - 1).toNat

end

end A394035.P13998335983234230596

/-! ## A394035.P12411142222428137678

`A060143(A394036(n+1))`
-/

namespace A394035.P12411142222428137678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A394036 (n + 1)).toNat

end

end A394035.P12411142222428137678

/-!
# A394036: Rectangular array, read by descending antidiagonals: numerators in the best upper approximating array to the golden ratio, phi (A001622). (See A394035.)

The programs for A394036, there is no canonical definition to state claims against.
-/

/-! ## A394036.P5936360968692856228

`ceil(ϕ*A394035(n+1))`
-/

namespace A394036.P5936360968692856228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A394035 (n + 1) : ℝ)⌉

end

end A394036.P5936360968692856228

/-! ## A394036.P11193781693697652859

`A004956(A394035(1+n))`
-/

namespace A394036.P11193781693697652859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A394035 (1 + n)).toNat

end

end A394036.P11193781693697652859

/-!
# A394038: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are positive integers satisfying 0 < x < y < z.

The programs for A394038, there is no canonical definition to state claims against.
-/

/-! ## A394038.P7108569342970306930

`A394788(n)-A338732(n)`
-/

namespace A394038.P7108569342970306930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394788 n - A338732 n

end

end A394038.P7108569342970306930

/-! ## A394038.P7498672705394695366

`A001971(A394788(n))^A123305(n)`
-/

namespace A394038.P7498672705394695366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001971 (A394788 n).toNat : ℚ) ^ (A123305 n : ℤ)

end

end A394038.P7498672705394695366

/-! ## A394038.P3729326892764853238

`A057355(A394788(n))^A398484(n)`
-/

namespace A394038.P3729326892764853238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057355 (A394788 n).toNat : ℚ) ^ (A398484 n : ℤ)

end

end A394038.P3729326892764853238

/-! ## A394038.P3913149684148632960

`A391932(A304704(3*n+5))%A001227(n+1)`
-/

namespace A394038.P3913149684148632960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391932 (A304704 (3 * n + 5)).toNat) (A001227 (n + 1))

end

end A394038.P3913149684148632960

/-! ## A394038.P2667960909745279623

`A001971(A394788(n)%A382429(n))`
-/

namespace A394038.P2667960909745279623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (Int.tmod (A394788 n) (A382429 n)).toNat

end

end A394038.P2667960909745279623

/-!
# A394045: a(0) = 0, a(n) = Sum_{k=1..n} binomial(n+1, k+1)*A053507(k) for n > 0.

The programs for A394045, the canonical program `A394045.P572451701111646751` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394045 has offset 0).

The definition of A394045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394045.P572451701111646751

`∑{#}[n-1, C(n+1, #+1+1)*A053507(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394045

/-- `∑{#}[n-1, C(n+1, #+1+1)*A053507(#+1)]` -/
def P572451701111646751.Spec : Prop :=
  ∀ n, P572451701111646751.a n = A394045 n

theorem P572451701111646751.correct : P572451701111646751.Spec := by
  intro n
  simp only [A394045]

end A394045

/-! ## A394045.P2724484190923879206

`A020069(3*n+4)%A007782(A000392(n))`
-/

namespace A394045.P2724484190923879206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020069 (3 * n + 4)) (A007782 (A000392 n).toNat)

end

end A394045.P2724484190923879206

namespace A394045

/-- `A020069(3*n+4)%A007782(A000392(n))` -/
def P2724484190923879206.Spec : Prop :=
  ∀ n, P2724484190923879206.a n = A394045 n

end A394045

/-!
# A394047: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A393889.

The programs for A394047, there is no canonical definition to state claims against.
-/

/-! ## A394047.P11994281205217753016

`A384804(n)-A193496(A108411(n))`
-/

namespace A394047.P11994281205217753016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384804 n - A193496 (A108411 n).toNat

end

end A394047.P11994281205217753016

/-! ## A394047.P10129449346328916575

`A384804(n)/A246600(2^n)-A020987(A210215(n+1))`
-/

namespace A394047.P10129449346328916575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384804 n : ℚ) / (A246600 (2 ^ n) : ℚ) - (A020987 (A210215 (n + 1)).toNat : ℚ)

end

end A394047.P10129449346328916575

/-!
# A394048: The product of the smallest primes in every congruence class modulo n which are relatively prime to n.

The programs for A394048, there is no canonical definition to state claims against.
-/

/-! ## A394048.P4259657880195004408

`A000720(2*A379527(2*n+1))`
-/

namespace A394048.P4259657880195004408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A379527 (2 * n + 1)).toNat

end

end A394048.P4259657880195004408

/-!
# A394049: Smallest number k that is neither squarefree nor squareful such that rad(k) | s(n), where s = A120944 is the sequence of squarefree composite numbers and rad = A007947.

The programs for A394049, there is no canonical definition to state claims against.
-/

/-! ## A394049.P14023928957558719581

`A020639(A120944(n+1))²*A119288(A120944(n+1))`
-/

namespace A394049.P14023928957558719581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120944 (n + 1)).toNat ^ 2 * A119288 (A120944 (n + 1)).toNat

end

end A394049.P14023928957558719581

/-!
# A394050: Achilles numbers with more than 2 distinct prime factors, whose exponents that are all pairwise indivisible.

The programs for A394050, there is no canonical definition to state claims against.
-/

/-! ## A394050.P4491249029564125814

`∩[A317102(n+1), A393708(n+1)]`
-/

namespace A394050.P4491249029564125814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394050.P4491249029564125814

/-!
# A394051: Hofstadter Q-sequence perturbed by (-1)^n.

The programs for A394051, the canonical program `A394051.P14398310074069352782` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394051 has offset 1).

The definition of A394051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394051.P14398310074069352782

`a(n-a(n-1))+a(n-a(n-2))+(-1)^(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394051

/-- `a(n-a(n-1))+a(n-a(n-2))+(-1)^(n+1)` -/
def P14398310074069352782.Spec : Prop :=
  ∀ n, P14398310074069352782.a n = A394051 (n + 1)

theorem P14398310074069352782.correct : P14398310074069352782.Spec := by
  intro n
  simp only [A394051, Nat.add_sub_cancel]

end A394051

/-!
# A394052: Irregular triangle read by rows: T(n,k) is the number of positive integers <= n with exactly k divisors.

The programs for A394052, there is no canonical definition to state claims against.
-/

/-! ## A394052.P2725662401654314528

`runs[A032563(2*n+3)*A210951(A028310(n))]`
-/

namespace A394052.P2725662401654314528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032563 (2 * n + 3) * A210951 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A394052.P2725662401654314528

/-! ## A394052.P9701743080183451796

`A249809(n+1)+A000007(A160967(n))`
-/

namespace A394052.P9701743080183451796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249809 (n + 1) + A000007 (A160967 n).toNat

end

end A394052.P9701743080183451796

/-! ## A394052.P10172430989919518333

`A249809(n+1)+A019590(A381424(n))`
-/

namespace A394052.P10172430989919518333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249809 (n + 1) + A019590 (A381424 n).toNat

end

end A394052.P10172430989919518333

/-! ## A394052.P17997624866803257257

`gcd(A173682(A000045(n)), A249809(n+1))`
-/

namespace A394052.P17997624866803257257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173682 (A000045 n).toNat) (A249809 (n + 1))

end

end A394052.P17997624866803257257

/-! ## A394052.P9218831797666315304

`A249809(n+1)+A010815(A233540(n+1))`
-/

namespace A394052.P9218831797666315304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249809 (n + 1) + A010815 (A233540 (n + 1)).toNat

end

end A394052.P9218831797666315304

/-!
# A394054: Irregular triangle read by rows: T(n,k) is the number of positive integers <= n with exactly k 2-dense sublists of divisors.

The programs for A394054, there is no canonical definition to state claims against.
-/

/-! ## A394054.P12123024078133426895

`A325837(A252424(n+2))`
-/

namespace A394054.P12123024078133426895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A252424 (n + 2)).toNat

end

end A394054.P12123024078133426895

/-! ## A394054.P9260613023053024807

`A343029(A040000(n)+A001045(n))`
-/

namespace A394054.P9260613023053024807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A040000 n + A001045 n).toNat

end

end A394054.P9260613023053024807

/-! ## A394054.P4328945222201601923

`A102885(A106466(n+2))%A098653(A094693(2*(n+1)))`
-/

namespace A394054.P4328945222201601923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102885 (A106466 (n + 2)).toNat) (A098653 (A094693 (2 * (n + 1))).toNat)

end

end A394054.P4328945222201601923

/-! ## A394054.P11824815538157224993

`A000120(Δ[A138587(n)²])`
-/

namespace A394054.P11824815538157224993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138587 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A394054.P11824815538157224993

/-! ## A394054.P10757716605498314718

`A044947(A030144(2*n+1)+A000803(n+3))`
-/

namespace A394054.P10757716605498314718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A030144 (2 * n + 1) + A000803 (n + 3)).toNat

end

end A394054.P10757716605498314718

/-!
# A394056: Number of positive integers <= n with 4 divisors.

The programs for A394056, the canonical program `A394056.P9651377908040561774` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394056 has offset 1).

The definition of A394056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394056.P9651377908040561774

`A000720(floor((n+1)^(1/3)))+∑{#}[A000720(floor(sqrt(n+1)))-1, A000720(floor((n+1)/A000040(#+1)))-(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394056

/-- `A000720(floor((n+1)^(1/3)))+∑{#}[A000720(floor(sqrt(n+1)))-1, A000720(floor((n+1)/A000040(#+1)))-(#+1)]` -/
def P9651377908040561774.Spec : Prop :=
  ∀ n, P9651377908040561774.a n = A394056 (n + 1)

theorem P9651377908040561774.correct : P9651377908040561774.Spec := by
  intro n
  simp only [A394056, Nat.add_sub_cancel]

end A394056

/-! ## A394056.P3927308580667489067

`∑[C(4, ∑{e}[n+1, #+1])%2]-1`
-/

namespace A394056.P3927308580667489067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A394056.P3927308580667489067

namespace A394056

/-- `∑[C(4, ∑{e}[n+1, #+1])%2]-1` -/
def P3927308580667489067.Spec : Prop :=
  ∀ n, P3927308580667489067.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P8361360073461754038

`∑[A354927(1+n)]-1`
-/

namespace A394056.P8361360073461754038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354927 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A394056.P8361360073461754038

namespace A394056

/-- `∑[A354927(1+n)]-1` -/
def P8361360073461754038.Spec : Prop :=
  ∀ n, P8361360073461754038.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P9652516392292926027

`∑[val(A105555(n+1), 7)]`
-/

namespace A394056.P9652516392292926027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105555 (n + 1)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P9652516392292926027

namespace A394056

/-- `∑[val(A105555(n+1), 7)]` -/
def P9652516392292926027.Spec : Prop :=
  ∀ n, (P9652516392292926027.a n : ℤ) = A394056 (n + 1)

end A394056

/-! ## A394056.P2145391206919642798

`fp[A030513(n+1)-1]`
-/

namespace A394056.P2145391206919642798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A394056.P2145391206919642798

namespace A394056

/-- `fp[A030513(n+1)-1]` -/
def P2145391206919642798.Spec : Prop :=
  ∀ n, (P2145391206919642798.a n : ℤ) = A394056 (n + 1)

end A394056

/-! ## A394056.P4712311047393946836

`∑[char[eq[4, A000005(n+1)]]]`
-/

namespace A394056.P4712311047393946836
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P4712311047393946836

namespace A394056

/-- `∑[char[eq[4, A000005(n+1)]]]` -/
def P4712311047393946836.Spec : Prop :=
  ∀ n, (P4712311047393946836.a n : ℤ) = A394056 (n + 1)

end A394056

/-! ## A394056.P83623190179177750

`fp[A007422(n+1)-1]-1`
-/

namespace A394056.P83623190179177750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - 1

end

end A394056.P83623190179177750

namespace A394056

/-- `fp[A007422(n+1)-1]-1` -/
def P83623190179177750.Spec : Prop :=
  ∀ n, P83623190179177750.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P5612638347492100917

`∑[A240467(∏{e}[n+1, #+1])]`
-/

namespace A394056.P5612638347492100917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P5612638347492100917

namespace A394056

/-- `∑[A240467(∏{e}[n+1, #+1])]` -/
def P5612638347492100917.Spec : Prop :=
  ∀ n, P5612638347492100917.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P4500631119398380850

`∑[A185014(A000005(n+1))]`
-/

namespace A394056.P4500631119398380850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P4500631119398380850

namespace A394056

/-- `∑[A185014(A000005(n+1))]` -/
def P4500631119398380850.Spec : Prop :=
  ∀ n, P4500631119398380850.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P10996430039034563402

`∑[and(A047789(n), A354927(n+1))]`
-/

namespace A394056.P10996430039034563402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047789 n) (A354927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P10996430039034563402

namespace A394056

/-- `∑[and(A047789(n), A354927(n+1))]` -/
def P10996430039034563402.Spec : Prop :=
  ∀ n, P10996430039034563402.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P12452471509852294130

`∑[and(A000040(n+1), A354927(n+1))]`
-/

namespace A394056.P12452471509852294130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A354927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P12452471509852294130

namespace A394056

/-- `∑[and(A000040(n+1), A354927(n+1))]` -/
def P12452471509852294130.Spec : Prop :=
  ∀ n, P12452471509852294130.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P2987091308541899038

`∑[char[eq[4, A286605(n+1)]]]`
-/

namespace A394056.P2987091308541899038
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286605 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P2987091308541899038

namespace A394056

/-- `∑[char[eq[4, A286605(n+1)]]]` -/
def P2987091308541899038.Spec : Prop :=
  ∀ n, (P2987091308541899038.a n : ℤ) = A394056 (n + 1)

end A394056

/-! ## A394056.P14147460757773904440

`∑[char[eq[2, A088433(n+1)]]]`
-/

namespace A394056.P14147460757773904440
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088433 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P14147460757773904440

namespace A394056

/-- `∑[char[eq[2, A088433(n+1)]]]` -/
def P14147460757773904440.Spec : Prop :=
  ∀ n, (P14147460757773904440.a n : ℤ) = A394056 (n + 1)

end A394056

/-! ## A394056.P8932176156172231573

`∑[char[eq[1, A334739(n+1)]]]`
-/

namespace A394056.P8932176156172231573
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334739 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P8932176156172231573

namespace A394056

/-- `∑[char[eq[1, A334739(n+1)]]]` -/
def P8932176156172231573.Spec : Prop :=
  ∀ n, (P8932176156172231573.a n : ℤ) = A394056 (n + 1)

end A394056

/-! ## A394056.P16892931014876328374

`∑[A051344(A029968(∏{e}[n+1, #+1]))]`
-/

namespace A394056.P16892931014876328374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (A029968 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P16892931014876328374

namespace A394056

/-- `∑[A051344(A029968(∏{e}[n+1, #+1]))]` -/
def P16892931014876328374.Spec : Prop :=
  ∀ n, P16892931014876328374.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P7843447218547688948

`∑[A333755(A190180(2^∏{e}[n+1, #+1]-1))]`
-/

namespace A394056.P7843447218547688948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A190180 (2 ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P7843447218547688948

namespace A394056

/-- `∑[A333755(A190180(2^∏{e}[n+1, #+1]-1))]` -/
def P7843447218547688948.Spec : Prop :=
  ∀ n, P7843447218547688948.a n = A394056 (n + 1)

end A394056

/-!
# A394060: a(n+1) = a(n) + 2*d(a(n)) if s(a(n)) <= a(n), else 2*a(n) - s(a(n)), with a(1) = 1; d(k) is the number of divisors of k A000005 and s(k) is the aliquot sum of k A001065.

The programs for A394060, there is no canonical definition to state claims against.
-/

/-! ## A394060.P6318351451053764061

`∑[A372715(record[A350820(2*(n+2))])]`
-/

namespace A394060.P6318351451053764061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350820 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372715 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394060.P6318351451053764061

/-!
# A394061: Prime number produced by summing the distinct prime factors of the numbers in A393096.

The programs for A394061, there is no canonical definition to state claims against.
-/

/-! ## A394061.P9735354741453901521

`A008472(A393096(n+1))`
-/

namespace A394061.P9735354741453901521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A393096 (n + 1)).toNat

end

end A394061.P9735354741453901521

/-! ## A394061.P1454036204193694857

`∑{p}[A393096(n+1), #]`
-/

namespace A394061.P1454036204193694857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A394061.P1454036204193694857

/-! ## A394061.P11508670004367060932

`A393096(n+1)-A394062(n+1)`
-/

namespace A394061.P11508670004367060932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393096 (n + 1) - A394062 (n + 1)

end

end A394061.P11508670004367060932

/-! ## A394061.P8103693255097999310

`A058974(A393096(n+1)+A393096(n+1))`
-/

namespace A394061.P8103693255097999310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058974 (A393096 (n + 1) + A393096 (n + 1)).toNat

end

end A394061.P8103693255097999310

/-! ## A394061.P1557365696243957889

`A318675(A318675(A393096(n+1))²)`
-/

namespace A394061.P1557365696243957889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318675 (A318675 (A393096 (n + 1)).toNat ^ 2).toNat

end

end A394061.P1557365696243957889

/-!
# A394062: a(n) = A393096(n) - sopf(A393096(n)) where sopf(n) is the sum of distinct primes of n.

The programs for A394062, there is no canonical definition to state claims against.
-/

/-! ## A394062.P6572708915363787056

`A393096(n+1)-A008472(A393096(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394062.P6572708915363787056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393096 (n + 1) - A008472 (A393096 (n + 1)).toNat

end

end A394062.P6572708915363787056

/-! ## A394062.P9829672467555544201

`A393096(1+n)-A394061(n+1)`
-/

namespace A394062.P9829672467555544201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393096 (1 + n) - A394061 (n + 1)

end

end A394062.P9829672467555544201

/-! ## A394062.P17727216119589616513

`A076694(A393096(1+n))`
-/

namespace A394062.P17727216119589616513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076694 (A393096 (1 + n)).toNat

end

end A394062.P17727216119589616513

/-! ## A394062.P12749253199835919236

`A154363(A124027(n+1)+A005117(n+1))`
-/

namespace A394062.P12749253199835919236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (A124027 (n + 1) + A005117 (n + 1)).toNat

end

end A394062.P12749253199835919236

/-! ## A394062.P2649186865896785834

`A154363(A348506(n+1)+A124027(n+1))`
-/

namespace A394062.P2649186865896785834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (A348506 (n + 1) + A124027 (n + 1)).toNat

end

end A394062.P2649186865896785834

/-!
# A394063: a(n) = n^n * numerator(hypergeom([1, -n], [], -1/(n + 1))).

The programs for A394063, there is no canonical definition to state claims against.
-/

/-! ## A394063.P17071249617430535916

`n^n*A393141(n)`
-/

namespace A394063.P17071249617430535916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A393141 n

end

end A394063.P17071249617430535916

/-! ## A394063.P828054461714897038

`(A090878(n+1)-A036505(n))*A000312(n)`
-/

namespace A394063.P828054461714897038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090878 (n + 1) - A036505 n) * A000312 n

end

end A394063.P828054461714897038

/-! ## A394063.P3904709183478104714

`lcm(A090878(1+n)-A036505(n), A000312(n))`
-/

namespace A394063.P3904709183478104714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090878 (1 + n) - A036505 n) (A000312 n)

end

end A394063.P3904709183478104714

/-! ## A394063.P9385094329778918994

`A000312(n)*A398484(∑[n+1]+1)`
-/

namespace A394063.P9385094329778918994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A398484 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A394063.P9385094329778918994

/-!
# A394064: a(n) = n^n * denominator(hypergeom([1, -n], [], -1/(n + 1))).

The programs for A394064, there is no canonical definition to state claims against.
-/

/-! ## A394064.P10197311577731249756

`n^n*A036505(n)`
-/

namespace A394064.P10197311577731249756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A036505 n

end

end A394064.P10197311577731249756

/-! ## A394064.P7493557017174670461

`abs(A264234(n+1))*n^n`
-/

namespace A394064.P7493557017174670461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A264234 (n + 1)| * (n ^ n : ℤ)

end

end A394064.P7493557017174670461

/-! ## A394064.P5848188118198731556

`lcm(A000312(n), A036505(n))`
-/

namespace A394064.P5848188118198731556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000312 n) (A036505 n)

end

end A394064.P5848188118198731556

/-! ## A394064.P10979710134634965573

`(n+1)*A036504(n+1)*A000312(n)`
-/

namespace A394064.P10979710134634965573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036504 (n + 1) * A000312 n

end

end A394064.P10979710134634965573

/-! ## A394064.P6865497032547389487

`A395543(n+1)/(n+1)*A000312(n)`
-/

namespace A394064.P6865497032547389487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395543 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000312 n : ℚ)

end

end A394064.P6865497032547389487

/-!
# A394067: Number of undirected cycles in the n X n grid graph, reduced for symmetry (with rotations, reflections, and translations not counted as distinct).

The programs for A394067, there is no canonical definition to state claims against.
-/

/-! ## A394067.P12864517894314180808

`A000001(A256235(n))-n%∑[char[n!]]!`
-/

namespace A394067.P12864517894314180808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A256235 n).toNat - ((n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A394067.P12864517894314180808

/-!
# A394069: Number of unsatisfiable 3-SAT formulas with 2 variables and n clauses in the multiset clause model.

The programs for A394069, there is no canonical definition to state claims against.
-/

/-! ## A394069.P16013497985465413006

`A396351(∑[1+n]+2)`
-/

namespace A394069.P16013497985465413006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A394069.P16013497985465413006

/-!
# A394078: a(n) = Sum_{k=0..n} (-1)^(k + 1) * k^(n - k) * Gamma(k, -k) / exp(k). Row sums of A393142.

The programs for A394078, there is no canonical definition to state claims against.
-/

/-! ## A394078.P15548558460906792896

`A115384(A136217(∑[n]))`
-/

namespace A394078.P15548558460906792896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A136217 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A394078.P15548558460906792896

/-! ## A394078.P13264621362124430228

`A283472(A005411(n)+3)`
-/

namespace A394078.P13264621362124430228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283472 (A005411 n + 3).toNat

end

end A394078.P13264621362124430228

/-!
# A394079: Row sums of A394080.

The programs for A394079, there is no canonical definition to state claims against.
-/

/-! ## A394079.P10557681185014359007

`A241763(a(n-1)-n)` with `a(0)=1, a(1)=3`
-/

namespace A394079.P10557681185014359007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A241763 (a (n - 1) - (n : ℤ)).toNat

end

end A394079.P10557681185014359007

/-!
# A394080: Triangle read by rows. T(n, k) = T(n, k - 1) + Sum_{j=0..floor((n-1)/2)} T(2 * j, k - 1) * T(n - 1 - 2 * j, k) if n, k > 0, otherwise 1.

The programs for A394080, there is no canonical definition to state claims against.
-/

/-! ## A394080.P16283327272078211849

`A050446(A245300(n))`
-/

namespace A394080.P16283327272078211849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A245300 n).toNat

end

end A394080.P16283327272078211849

/-!
# A394085: a(n) = sigma(n) - Sum_{p|n, p prime, gcd(p,n/p) = 1} (p-1).

The programs for A394085, the canonical program `A394085.P10152136709517601280` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394085 has offset 1).

The definition of A394085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394085.P10152136709517601280

`A000203(n+1)-A063956(n+1)+A056169(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A394085

/-- `A000203(n+1)-A063956(n+1)+A056169(n+1)` -/
def P10152136709517601280.Spec : Prop :=
  ∀ n, P10152136709517601280.a n = A394085 (n + 1)

theorem P10152136709517601280.correct : P10152136709517601280.Spec := by
  intro n
  simp only [A394085, Nat.add_sub_cancel]

end A394085

/-! ## A394085.P3804688199268464711

`∑{d}[1+n, 1+#]-A394651(n+1)`
-/

namespace A394085.P3804688199268464711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (1 + d) : ℕ) : ℤ) - A394651 (n + 1)

end

end A394085.P3804688199268464711

namespace A394085

/-- `∑{d}[1+n, 1+#]-A394651(n+1)` -/
def P3804688199268464711.Spec : Prop :=
  ∀ n, P3804688199268464711.a n = A394085 (n + 1)

end A394085

/-! ## A394085.P16749846573006377115

`Δ[A257644(n)]-A394651(n+1)`
-/

namespace A394085.P16749846573006377115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A394651 (n + 1)

end

end A394085.P16749846573006377115

namespace A394085

/-- `Δ[A257644(n)]-A394651(n+1)` -/
def P16749846573006377115.Spec : Prop :=
  ∀ n, P16749846573006377115.a n = A394085 (n + 1)

end A394085

/-! ## A394085.P1793778327002818888

`A345266(1+n)+A023890(n+1)`
-/

namespace A394085.P1793778327002818888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345266 (1 + n) + A023890 (n + 1)

end

end A394085.P1793778327002818888

namespace A394085

/-- `A345266(1+n)+A023890(n+1)` -/
def P1793778327002818888.Spec : Prop :=
  ∀ n, P1793778327002818888.a n = A394085 (n + 1)

end A394085

/-! ## A394085.P13717228168277772706

`A007503(n+1)-A394651(n+1)`
-/

namespace A394085.P13717228168277772706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A394651 (n + 1)

end

end A394085.P13717228168277772706

namespace A394085

/-- `A007503(n+1)-A394651(n+1)` -/
def P13717228168277772706.Spec : Prop :=
  ∀ n, P13717228168277772706.a n = A394085 (n + 1)

theorem P13717228168277772706.correct : P13717228168277772706.Spec := by
  intro n
  simp only [A394085, Nat.add_sub_cancel, A394085.P13717228168277772706.a, A394085.P10152136709517601280.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007503, A007503.P13484425310514315912.a, A056169, A056169.P17430176249366647977.a, A063956, A063956.P10696679261973728554.a, A394651, A394651.P12518876512393771500.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055231, A055231.P8962300905713718501.a, A063958, A063958.P11394189410281115173.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A071773, A071773.P10551485978970375506.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A394085

/-! ## A394085.P9740178570489949794

`A163163(n+1)+1+n-A394651(n+1)`
-/

namespace A394085.P9740178570489949794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (n + 1) + 1 + (n : ℤ) - A394651 (n + 1)

end

end A394085.P9740178570489949794

namespace A394085

/-- `A163163(n+1)+1+n-A394651(n+1)` -/
def P9740178570489949794.Spec : Prop :=
  ∀ n, P9740178570489949794.a n = A394085 (n + 1)

theorem P9740178570489949794.correct : P9740178570489949794.Spec := by
  intro n
  simp only [A394085, Nat.add_sub_cancel, A394085.P9740178570489949794.a, A394085.P10152136709517601280.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A056169, A056169.P17430176249366647977.a, A063956, A063956.P10696679261973728554.a, A163163, A163163.P5673829929796067677.a, A394651, A394651.P12518876512393771500.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055231, A055231.P8962300905713718501.a, A063958, A063958.P11394189410281115173.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A071773, A071773.P10551485978970375506.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A394085

/-! ## A394085.P1762638639602037532

`A000203(n+1)-A059975(A055231(n+1))`
-/

namespace A394085.P1762638639602037532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A059975 (A055231 (n + 1)).toNat

end

end A394085.P1762638639602037532

namespace A394085

/-- `A000203(n+1)-A059975(A055231(n+1))` -/
def P1762638639602037532.Spec : Prop :=
  ∀ n, P1762638639602037532.a n = A394085 (n + 1)

end A394085

/-! ## A394085.P16147096766788732879

`A257644(n+1)-A257644(n)-A394651(n+1)`
-/

namespace A394085.P16147096766788732879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 (n + 1) - A257644 n - A394651 (n + 1)

end

end A394085.P16147096766788732879

namespace A394085

/-- `A257644(n+1)-A257644(n)-A394651(n+1)` -/
def P16147096766788732879.Spec : Prop :=
  ∀ n, P16147096766788732879.a n = A394085 (n + 1)

end A394085

/-! ## A394085.P15295340525251163371

`A000203(n+1)+Δ[A006218(n)]-A394651(n+1)`
-/

namespace A394085.P15295340525251163371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (f1 (n + 1) - f1 n) - A394651 (n + 1)

end

end A394085.P15295340525251163371

namespace A394085

/-- `A000203(n+1)+Δ[A006218(n)]-A394651(n+1)` -/
def P15295340525251163371.Spec : Prop :=
  ∀ n, P15295340525251163371.a n = A394085 (n + 1)

end A394085

/-! ## A394085.P12209518531660933900

`A000203(n+1)+Δ[A054519(n)]-A394651(n+1)`
-/

namespace A394085.P12209518531660933900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (f1 (n + 1) - f1 n) - A394651 (n + 1)

end

end A394085.P12209518531660933900

namespace A394085

/-- `A000203(n+1)+Δ[A054519(n)]-A394651(n+1)` -/
def P12209518531660933900.Spec : Prop :=
  ∀ n, P12209518531660933900.a n = A394085 (n + 1)

end A394085

/-! ## A394085.P11958951200347794827

`A000005(n+1)+A000203(n+1)-A394651(n+1)`
-/

namespace A394085.P11958951200347794827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000203 (n + 1) - A394651 (n + 1)

end

end A394085.P11958951200347794827

namespace A394085

/-- `A000005(n+1)+A000203(n+1)-A394651(n+1)` -/
def P11958951200347794827.Spec : Prop :=
  ∀ n, P11958951200347794827.a n = A394085 (n + 1)

theorem P11958951200347794827.correct : P11958951200347794827.Spec := by
  intro n
  simp only [A394085, Nat.add_sub_cancel, A394085.P11958951200347794827.a, A394085.P10152136709517601280.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A056169, A056169.P17430176249366647977.a, A063956, A063956.P10696679261973728554.a, A394651, A394651.P12518876512393771500.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A055231, A055231.P8962300905713718501.a, A063958, A063958.P11394189410281115173.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A071773, A071773.P10551485978970375506.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A394085

/-! ## A394085.P17799315879138750325

`A140482(n+1)+A033880(n+1)-A394651(n+1)`
-/

namespace A394085.P17799315879138750325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140482 (n + 1) + A033880 (n + 1) - A394651 (n + 1)

end

end A394085.P17799315879138750325

namespace A394085

/-- `A140482(n+1)+A033880(n+1)-A394651(n+1)` -/
def P17799315879138750325.Spec : Prop :=
  ∀ n, P17799315879138750325.a n = A394085 (n + 1)

theorem P17799315879138750325.correct : P17799315879138750325.Spec := by
  intro n
  simp only [A394085, Nat.add_sub_cancel, A394085.P17799315879138750325.a, A394085.P10152136709517601280.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A056169, A056169.P17430176249366647977.a, A063956, A063956.P10696679261973728554.a, A140482, A140482.P11303161972345714232.a, A394651, A394651.P12518876512393771500.a, A000005, A000005.P16091521709108585461.a, A001065, A001065.P4097147489331274860.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055231, A055231.P8962300905713718501.a, A063958, A063958.P11394189410281115173.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A071773, A071773.P10551485978970375506.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A394085

/-! ## A394085.P6026365344750388663

`A349211(n+1)+A348915(n+1)-A394651(n+1)`
-/

namespace A394085.P6026365344750388663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349211 (n + 1) + A348915 (n + 1) - A394651 (n + 1)

end

end A394085.P6026365344750388663

namespace A394085

/-- `A349211(n+1)+A348915(n+1)-A394651(n+1)` -/
def P6026365344750388663.Spec : Prop :=
  ∀ n, P6026365344750388663.a n = A394085 (n + 1)

end A394085

/-!
# A394086: Number of partitions of n where the smallest part divides all others, has multiplicity at most 2, and all larger parts are distinct.

The programs for A394086, there is no canonical definition to state claims against.
-/

/-! ## A394086.P15147052437503272740

`∑{d}[n+1, A000009(#-1)]`
-/

namespace A394086.P15147052437503272740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000009 (d - 1)

end

end A394086.P15147052437503272740

/-!
# A394091: Greatest partial alternating sum of the n-th composition in standard order (row n of A066099). Row-maxima of A391983.

The programs for A394091, there is no canonical definition to state claims against.
-/

/-! ## A394091.P18352804599709937414

`A334029(A033630(n)*A153141(n))`
-/

namespace A394091.P18352804599709937414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (A033630 n * A153141 n).toNat

end

end A394091.P18352804599709937414

/-! ## A394091.P6901010838710753768

`A335520(A246102(2*n+3))+A065120(n)`
-/

namespace A394091.P6901010838710753768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A246102 (2 * n + 3)).toNat + A065120 n

end

end A394091.P6901010838710753768

/-! ## A394091.P2579278172144439087

`A385213(A163511(n))`
-/

namespace A394091.P2579278172144439087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (A163511 n).toNat

end

end A394091.P2579278172144439087

/-! ## A394091.P9530210124012916404

`A385213(A332817(n))`
-/

namespace A394091.P9530210124012916404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (A332817 n).toNat

end

end A394091.P9530210124012916404

/-! ## A394091.P3301940965289065818

`A079979(A346606(n+1))+A065120(n)`
-/

namespace A394091.P3301940965289065818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A346606 (n + 1)).toNat + A065120 n

end

end A394091.P3301940965289065818

/-!
# A394092: Negated least part of the partial alternating sums of the n-th composition in standard order (row n of A391983).

The programs for A394092, there is no canonical definition to state claims against.
-/

/-! ## A394092.P15255069066905447699

`A392705(A151622(2*n)+n)`
-/

namespace A394092.P15255069066905447699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392705 (A151622 (2 * n) + (n : ℤ)).toNat

end

end A394092.P15255069066905447699

/-!
# A394093: Greatest 0-based partial alternating sum of the prime indices of n.

The programs for A394093, there is no canonical definition to state claims against.
-/

/-! ## A394093.P16109944756657463983

`A394091(A333220(n+1))`
-/

namespace A394093.P16109944756657463983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394091 (A333220 (n + 1)).toNat

end

end A394093.P16109944756657463983

/-! ## A394093.P12063647141041641673

`A286469(n+1)+A185644(A242784(2*n+3))`
-/

namespace A394093.P12063647141041641673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (n + 1) + A185644 (A242784 (2 * n + 3)).toNat

end

end A394093.P12063647141041641673

/-! ## A394093.P6186010891277434459

`A335446(A003961(n+1))+A286469(n+1)`
-/

namespace A394093.P6186010891277434459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A003961 (n + 1)).toNat + A286469 (n + 1)

end

end A394093.P6186010891277434459

/-! ## A394093.P18256099062343588753

`A000120(A297172(n+1))%A268252(n+3)`
-/

namespace A394093.P18256099062343588753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A297172 (n + 1)).toNat) (A268252 (n + 3))

end

end A394093.P18256099062343588753

/-! ## A394093.P2980790082840427677

`A051903(A122111(n+1)*A383753(n))`
-/

namespace A394093.P2980790082840427677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A122111 (n + 1) * A383753 n).toNat

end

end A394093.P2980790082840427677

/-!
# A394095: Number of 2-ary convexities on a set of n elements.

The programs for A394095, there is no canonical definition to state claims against.
-/

/-! ## A394095.P1929792204604892002

`A394616(n)+A364656(n)`
-/

namespace A394095.P1929792204604892002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394616 n + A364656 n

end

end A394095.P1929792204604892002

/-!
# A394096: Number of sets S of nonempty ternary words with n total letters such that no words in S share letters.

The programs for A394096, the canonical program `A394096.P14938851520592758722` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394096 has offset 0).

The definition of A394096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394096.P14938851520592758722

`ogf((1-5x+12x^2-18x^3+6x^4+6x^5)/(1-8x+24x^2-34x^3+23x^4-6x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394096

/-- `ogf((1-5x+12x^2-18x^3+6x^4+6x^5)/(1-8x+24x^2-34x^3+23x^4-6x^5))` -/
def P14938851520592758722.Spec : Prop :=
  ∀ n, P14938851520592758722.a n = A394096 n

theorem P14938851520592758722.correct : P14938851520592758722.Spec := by
  intro n
  simp only [A394096]

end A394096

/-! ## A394096.P17953761783595877979

`A318759(A326354(n))`
-/

namespace A394096.P17953761783595877979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318759 (A326354 n).toNat

end

end A394096.P17953761783595877979

namespace A394096

/-- `A318759(A326354(n))` -/
def P17953761783595877979.Spec : Prop :=
  ∀ n, P17953761783595877979.a n = A394096 n

end A394096

/-!
# A394099: Largest composite number m with n <= m <= n^2 such that the largest divisor of n*m not exceeding sqrt(n*m) is equal to n.

The programs for A394099, there is no canonical definition to state claims against.
-/

/-! ## A394099.P3901040449934948985

`A163925(∑[A163926(n+2)]+1)`
-/

namespace A394099.P3901040449934948985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163926 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163925 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A394099.P3901040449934948985

