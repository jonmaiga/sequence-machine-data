import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A058900: Inconsummate numbers in base 4: no number is this multiple of the sum of its digits (in base 4).

The programs for A058900, there is no canonical definition to state claims against.
-/

/-! ## A058900.P337740502556848972

`lt[A277250(n), n]`
-/

namespace A058900.P337740502556848972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277250 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058900.P337740502556848972

/-! ## A058900.P9754831141402592575

`eq[A000007(n), A277250(n)]`
-/

namespace A058900.P9754831141402592575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058900.P9754831141402592575

/-! ## A058900.P18079000858637428781

`eq[A000038(n), A277250(n)]`
-/

namespace A058900.P18079000858637428781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058900.P18079000858637428781

/-! ## A058900.P1054512336006623762

`eq[A012245(n+1), A277250(n)]`
-/

namespace A058900.P1054512336006623762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058900.P1054512336006623762

/-! ## A058900.P52970044794391420

`eq[and(1, A000010(n+1)), A277250(n)]`
-/

namespace A058900.P52970044794391420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058900.P52970044794391420

/-! ## A058900.P3416104963797737172

`eq[A204843(A204843(n)+n), A277250(n)]`
-/

namespace A058900.P3416104963797737172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A204843 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058900.P3416104963797737172

/-! ## A058900.P5589807557902862390

`eq[1, A262412(A277250(n+1)+1)]+1`
-/

namespace A058900.P5589807557902862390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262412 (A277250 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058900.P5589807557902862390

/-! ## A058900.P13345610134123444537

`eq[A209614(n+1), A277250(n)]`
-/

namespace A058900.P13345610134123444537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058900.P13345610134123444537

/-!
# A058901: Inconsummate numbers in base 5: no number is this multiple of the sum of its digits (in base 5).

The programs for A058901, there is no canonical definition to state claims against.
-/

/-! ## A058901.P14685323413088564169

`eq[0, A277291(n+1)]+1`
-/

namespace A058901.P14685323413088564169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058901.P14685323413088564169

/-! ## A058901.P11893818958980694692

`eq[A012245(n+1), A277291(n)]`
-/

namespace A058901.P11893818958980694692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058901.P11893818958980694692

/-! ## A058901.P6648736821810302251

`eq[A010056(n), A277291(n)]`
-/

namespace A058901.P6648736821810302251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058901.P6648736821810302251

/-! ## A058901.P15933050107465876712

`eq[A000038(n), A277291(n)]`
-/

namespace A058901.P15933050107465876712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058901.P15933050107465876712

/-! ## A058901.P8398282071306671939

`eq[A000007(n), A277291(n)]`
-/

namespace A058901.P8398282071306671939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058901.P8398282071306671939

/-! ## A058901.P11114356210228474372

`eq[A277291(A008458(n)-n), A277291(n)]`
-/

namespace A058901.P11114356210228474372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277291 (A008458 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058901.P11114356210228474372

/-! ## A058901.P2099391872526347598

`eq[A209614(n+1), A277291(n)]`
-/

namespace A058901.P2099391872526347598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058901.P2099391872526347598

/-!
# A058903: Inconsummate numbers in base 7: no number is this multiple of the sum of its digits (in base 7).

The programs for A058903, there is no canonical definition to state claims against.
-/

/-! ## A058903.P17301448553088882393

`∩[A072568(n+1), A196547(n+1)]`
-/

namespace A058903.P17301448553088882393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058903.P17301448553088882393

/-!
# A058904: Inconsummate numbers in base 8: no number is this multiple of the sum of its digits (in base 8).

The programs for A058904, there is no canonical definition to state claims against.
-/

/-! ## A058904.P18438766655026657455

`A340605(A011531(2*n+5))-A141112(n+1)`
-/

namespace A058904.P18438766655026657455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340605 (A011531 (2 * n + 5)).toNat - A141112 (n + 1)

end

end A058904.P18438766655026657455

/-!
# A058907: Inconsummate numbers in base 12: no number is this multiple of the sum of its digits (in base 12).

The programs for A058907, there is no canonical definition to state claims against.
-/

/-! ## A058907.P1891812730170474144

`∑[gcd(A224180(3*(n+1)), A224187(n+1))]`
-/

namespace A058907.P1891812730170474144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224180 (3 * (n + 1))) (A224187 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058907.P1891812730170474144

/-! ## A058907.P7312890308903217140

`A080535(A175222(n+1))-A001223(n+1)`
-/

namespace A058907.P7312890308903217140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080535 (A175222 (n + 1)).toNat - A001223 (n + 1)

end

end A058907.P7312890308903217140

/-!
# A058909: Integers whose set of prime factors (taken with multiplicity) uses each digit exactly once (i.e., is pandigital) in base 10.

The programs for A058909, there is no canonical definition to state claims against.
-/

/-! ## A058909.P3478133226289017078

`A290385(A288819(n+2))%A290385(A067599(3*n+2))`
-/

namespace A058909.P3478133226289017078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290385 (A288819 (n + 2)).toNat) (A290385 (A067599 (3 * n + 2)).toNat)

end

end A058909.P3478133226289017078

/-! ## A058909.P9799697088271548610

`A290385(A288818(A288820(n+2)))`
-/

namespace A058909.P9799697088271548610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290385 (A288818 (A288820 (n + 2)).toNat).toNat

end

end A058909.P9799697088271548610

/-!
# A058910: Smallest prime number, not already in sequence, such that the product M of it and all prior numbers in sequence satisfies 2^(M+1) = 1 (mod M).

The programs for A058910, there is no canonical definition to state claims against.
-/

/-! ## A058910.P4840154585993621065

`A023394(n+1)%A090785(A007931(n+1))`
-/

namespace A058910.P4840154585993621065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023394 (n + 1)) (A090785 (A007931 (n + 1)).toNat)

end

end A058910.P4840154585993621065

/-! ## A058910.P7973349416318364731

`A001414(A023394(n+1))%A074149(3*n+5)`
-/

namespace A058910.P7973349416318364731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (A023394 (n + 1)).toNat) (A074149 (3 * n + 5))

end

end A058910.P7973349416318364731

/-!
# A058911: Numbers k such that k^k + k + 1 is prime.

The programs for A058911, there is no canonical definition to state claims against.
-/

/-! ## A058911.P17557640562070427508

`(a(n-2)+8)*(∑[n+1]+5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=9`
-/

namespace A058911.P17557640562070427508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 6, 9] fun n a =>
  (a (n - 2) + 8) * (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A058911.P17557640562070427508

/-! ## A058911.P6318856506360594707

`lcm(a(n-2)+8, C(n, 2)+2*a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=9`
-/

namespace A058911.P6318856506360594707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 6, 9] fun n a =>
  Nat.lcm (a (n - 2) + 8) (Nat.choose n 2 + 2 * a (n - 1))

end

end A058911.P6318856506360594707

/-! ## A058911.P6225600206026324317

`record[C(n, A114294(3*n))]`
-/

namespace A058911.P6225600206026324317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A114294 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058911.P6225600206026324317

/-!
# A058912: Numbers k such that k^k + k - 1 is prime.

The programs for A058912, there is no canonical definition to state claims against.
-/

/-! ## A058912.P12525077264898327734

`A003605(A008960(n)+A000178(n))`
-/

namespace A058912.P12525077264898327734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (A008960 n + A000178 n).toNat

end

end A058912.P12525077264898327734

/-!
# A058914: Continued fraction expansion of one of four fixed points (mod 1) of Minkowski's question mark function (specifically, the only positive fixed point (mod 1) less than 1/2).

The programs for A058914, there is no canonical definition to state claims against.
-/

/-! ## A058914.P10964528575101155727

`A048821(A289207(n)+1)-A000038(n)`
-/

namespace A058914.P10964528575101155727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048821 (A289207 n + 1).toNat - A000038 n

end

end A058914.P10964528575101155727

/-! ## A058914.P16965911425293288818

`char[A048673(n+1)]*A048821(A289207(n)+1)`
-/

namespace A058914.P16965911425293288818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048821 (A289207 n + 1).toNat

end

end A058914.P16965911425293288818

/-! ## A058914.P13689918957994306288

`char[A065190(n+1)]*A048821(A289207(n)+1)`
-/

namespace A058914.P13689918957994306288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048821 (A289207 n + 1).toNat

end

end A058914.P13689918957994306288

/-! ## A058914.P2635519063262301383

`A048821(A289207(n)+1)*A069283(A034444(n+1)+3)`
-/

namespace A058914.P2635519063262301383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048821 (A289207 n + 1).toNat * A069283 (A034444 (n + 1) + 3).toNat

end

end A058914.P2635519063262301383

/-! ## A058914.P3920932291153850152

`A120221(xor(n+1, C(n, n²)))`
-/

namespace A058914.P3920932291153850152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (Nat.xor (n + 1) (Nat.choose n (n ^ 2)))

end

end A058914.P3920932291153850152

/-! ## A058914.P2855170334757650647

`A120221(floor(acot(n-1))+n+1)`
-/

namespace A058914.P2855170334757650647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (⌊SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌋ + (n : ℤ) + 1).toNat

end

end A058914.P2855170334757650647

/-! ## A058914.P2410041514917830802

`A120221(xor(1, A169585(n))+n)`
-/

namespace A058914.P2410041514917830802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (Int.xor 1 (A169585 n) + (n : ℤ)).toNat

end

end A058914.P2410041514917830802

/-! ## A058914.P14210960582289007903

`A120221(1-A154955(n+1)+n)`
-/

namespace A058914.P14210960582289007903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (1 - A154955 (n + 1) + (n : ℤ)).toNat

end

end A058914.P14210960582289007903

/-! ## A058914.P10857145092205195526

`A120221(char[1]+(n+1)%A062408(n))`
-/

namespace A058914.P10857145092205195526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (n + 1 : ℤ) (A062408 n)).toNat

end

end A058914.P10857145092205195526

/-! ## A058914.P12521374035499474452

`A120221(char[1]+char[A175500(n+1)]+n)`
-/

namespace A058914.P12521374035499474452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 ((if ∃ j, f1 j = n then 1 else 0) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n))

end

end A058914.P12521374035499474452

/-! ## A058914.P16881683760129361603

`lcm(A008836(a(n-1)), A120221(n+1))` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A058914.P16881683760129361603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  Int.lcm (A008836 (a (n - 1))) (A120221 (n + 1))

end

end A058914.P16881683760129361603

/-! ## A058914.P11553388498808768962

`A120221(n+1)-A008683(A062383(n))`
-/

namespace A058914.P11553388498808768962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (n + 1) - A008683 (A062383 n).toNat

end

end A058914.P11553388498808768962

/-! ## A058914.P5109503004776580998

`A120221(A254667(n)+char[A050000(n+1)])`
-/

namespace A058914.P5109503004776580998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (A254667 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A058914.P5109503004776580998

/-! ## A058914.P12154041482632248003

`A120221(A254667(n)+char[A050001(n+1)])`
-/

namespace A058914.P12154041482632248003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050001 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (A254667 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A058914.P12154041482632248003

/-! ## A058914.P3929880270032726092

`A120221(A254667(n)+char[A050004(n+1)])`
-/

namespace A058914.P3929880270032726092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050004 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (A254667 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A058914.P3929880270032726092

/-! ## A058914.P3883937931577851181

`A120221(A254667(n)+char[A050012(n+1)])`
-/

namespace A058914.P3883937931577851181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050012 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (A254667 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A058914.P3883937931577851181

/-! ## A058914.P11129887036606626279

`A120221(A254667(n)+char[A050020(n+1)])`
-/

namespace A058914.P11129887036606626279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050020 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (A254667 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A058914.P11129887036606626279

/-! ## A058914.P3890335266854099002

`A120221(A254667(n)+char[A175500(n+1)])`
-/

namespace A058914.P3890335266854099002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (A254667 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A058914.P3890335266854099002

/-! ## A058914.P6663666317079638807

`A120221(n+1)-A008683(A048166(n+1))`
-/

namespace A058914.P6663666317079638807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (n + 1) - A008683 (A048166 (n + 1)).toNat

end

end A058914.P6663666317079638807

/-!
# A058915: Number of graphs with 3 distinct components.

The programs for A058915, there is no canonical definition to state claims against.
-/

/-! ## A058915.P15552558559015369123

`A005117(2*A322118(2*n+1))`
-/

namespace A058915.P15552558559015369123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (2 * A322118 (2 * n + 1)).toNat

end

end A058915.P15552558559015369123

/-!
# A058919: a(n) = n^4/2 - n^3 + 3*n^2/2 - n + 1 = (n^2 + 1)*(n^2 - 2*n + 2)/2.

The programs for A058919, the canonical program `A058919.P2977155251623331247` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058919 has offset 0).

The definition of A058919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058919.P8188159488215329341

`(n²+1)*(n²-2*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058919.P8188159488215329341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 1 : ℤ) * ((n ^ 2 : ℤ) - (2 * n : ℤ) + 2) : ℚ) / 2

end

end A058919.P8188159488215329341

namespace A058919

/-- `(n²+1)*(n²-2*n+2)/2` -/
def P8188159488215329341.Spec : Prop :=
  ∀ n, P8188159488215329341.a n = (A058919 n : ℚ)

end A058919

/-! ## A058919.P3514120645495868844

`n^4/2-n^3+3*n²/2-n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058919.P3514120645495868844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℚ) / 2 - (n ^ 3 : ℚ) + (3 * n ^ 2 : ℚ) / 2 - (n : ℚ) + 1

end

end A058919.P3514120645495868844

namespace A058919

/-- `n^4/2-n^3+3*n²/2-n+1` -/
def P3514120645495868844.Spec : Prop :=
  ∀ n, P3514120645495868844.a n = (A058919 n : ℚ)

end A058919

/-! ## A058919.P2977155251623331247

`A080827(n²-n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058919

/-- `A080827(n²-n+1)` -/
def P2977155251623331247.Spec : Prop :=
  ∀ n, P2977155251623331247.a n = A058919 n

theorem P2977155251623331247.correct : P2977155251623331247.Spec := by
  intro n
  simp only [A058919]

end A058919

/-! ## A058919.P14966084722709776512

`floor(cosh(log(((1-n)²+n)²+2)))`
-/

namespace A058919.P14966084722709776512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ^ 2 + 2 : ℝ))⌋

end

end A058919.P14966084722709776512

namespace A058919

/-- `floor(cosh(log(((1-n)²+n)²+2)))` -/
def P14966084722709776512.Spec : Prop :=
  ∀ n, P14966084722709776512.a n = A058919 n

end A058919

/-! ## A058919.P15833177524853316709

`A001844(C(n, 2))`
-/

namespace A058919.P15833177524853316709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (Nat.choose n 2)

end

end A058919.P15833177524853316709

namespace A058919

/-- `A001844(C(n, 2))` -/
def P15833177524853316709.Spec : Prop :=
  ∀ n, P15833177524853316709.a n = A058919 n

end A058919

/-! ## A058919.P11471328516953166501

`A001844(∑[n]-n)`
-/

namespace A058919.P11471328516953166501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A058919.P11471328516953166501

namespace A058919

/-- `A001844(∑[n]-n)` -/
def P11471328516953166501.Spec : Prop :=
  ∀ n, P11471328516953166501.a n = A058919 n

end A058919

/-! ## A058919.P439415003005604069

`A266723(n²-n)`
-/

namespace A058919.P439415003005604069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 (n ^ 2 - n)

end

end A058919.P439415003005604069

namespace A058919

/-- `A266723(n²-n)` -/
def P439415003005604069.Spec : Prop :=
  ∀ n, P439415003005604069.a n = A058919 n

end A058919

/-! ## A058919.P13197995602031777541

`A271391(n²-n)`
-/

namespace A058919.P13197995602031777541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271391 (n ^ 2 - n)

end

end A058919.P13197995602031777541

namespace A058919

/-- `A271391(n²-n)` -/
def P13197995602031777541.Spec : Prop :=
  ∀ n, P13197995602031777541.a n = A058919 n

end A058919

/-! ## A058919.P12714601936589212801

`A290268(n²-n)`
-/

namespace A058919.P12714601936589212801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290268 (n ^ 2 - n)

end

end A058919.P12714601936589212801

namespace A058919

/-- `A290268(n²-n)` -/
def P12714601936589212801.Spec : Prop :=
  ∀ n, P12714601936589212801.a n = A058919 n

end A058919

/-! ## A058919.P908828373764988941

`A326657(n²-n)`
-/

namespace A058919.P908828373764988941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326657 (n ^ 2 - n)

end

end A058919.P908828373764988941

namespace A058919

/-- `A326657(n²-n)` -/
def P908828373764988941.Spec : Prop :=
  ∀ n, P908828373764988941.a n = A058919 n

end A058919

/-! ## A058919.P12276546052124421497

`A000982(n²+1-n)`
-/

namespace A058919.P12276546052124421497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n ^ 2 + 1 - n)

end

end A058919.P12276546052124421497

namespace A058919

/-- `A000982(n²+1-n)` -/
def P12276546052124421497.Spec : Prop :=
  ∀ n, P12276546052124421497.a n = A058919 n

end A058919

/-! ## A058919.P2246140785267568799

`A178218(A103505(n))`
-/

namespace A058919.P2246140785267568799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178218 (A103505 n).toNat

end

end A058919.P2246140785267568799

namespace A058919

/-- `A178218(A103505(n))` -/
def P2246140785267568799.Spec : Prop :=
  ∀ n, P2246140785267568799.a n = A058919 n

end A058919

/-! ## A058919.P6773940995248330512

`A099392(A386480(n))`
-/

namespace A058919.P6773940995248330512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A386480 n).toNat

end

end A058919.P6773940995248330512

namespace A058919

/-- `A099392(A386480(n))` -/
def P6773940995248330512.Spec : Prop :=
  ∀ n, P6773940995248330512.a n = A058919 n

end A058919

/-! ## A058919.P848762241666821223

`A031878(A002061(n)+1)`
-/

namespace A058919.P848762241666821223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031878 (A002061 n + 1).toNat

end

end A058919.P848762241666821223

namespace A058919

/-- `A031878(A002061(n)+1)` -/
def P848762241666821223.Spec : Prop :=
  ∀ n, P848762241666821223.a n = A058919 n

end A058919

/-! ## A058919.P15367263354176150158

`A104563(A002522(n)-n)`
-/

namespace A058919.P15367263354176150158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (A002522 n - (n : ℤ)).toNat

end

end A058919.P15367263354176150158

namespace A058919

/-- `A104563(A002522(n)-n)` -/
def P15367263354176150158.Spec : Prop :=
  ∀ n, P15367263354176150158.a n = A058919 n

end A058919

/-! ## A058919.P12043743466796957546

`A099392(A059100(n)-n)`
-/

namespace A058919.P12043743466796957546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A059100 n - (n : ℤ)).toNat

end

end A058919.P12043743466796957546

namespace A058919

/-- `A099392(A059100(n)-n)` -/
def P12043743466796957546.Spec : Prop :=
  ∀ n, P12043743466796957546.a n = A058919 n

end A058919

/-! ## A058919.P17307445668945087958

`A228564(A002522(n)-n)`
-/

namespace A058919.P17307445668945087958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (A002522 n - (n : ℤ)).toNat

end

end A058919.P17307445668945087958

namespace A058919

/-- `A228564(A002522(n)-n)` -/
def P17307445668945087958.Spec : Prop :=
  ∀ n, P17307445668945087958.a n = A058919 n

end A058919

/-! ## A058919.P4802334175860842908

`A104563(A059100(n)-(n+1))`
-/

namespace A058919.P4802334175860842908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (A059100 n - (n + 1 : ℤ)).toNat

end

end A058919.P4802334175860842908

namespace A058919

/-- `A104563(A059100(n)-(n+1))` -/
def P4802334175860842908.Spec : Prop :=
  ∀ n, P4802334175860842908.a n = A058919 n

end A058919

/-! ## A058919.P11536373543353989701

`A228564(A059100(n)-(n+1))`
-/

namespace A058919.P11536373543353989701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (A059100 n - (n + 1 : ℤ)).toNat

end

end A058919.P11536373543353989701

namespace A058919

/-- `A228564(A059100(n)-(n+1))` -/
def P11536373543353989701.Spec : Prop :=
  ∀ n, P11536373543353989701.a n = A058919 n

end A058919

/-!
# A058920: a(n) = 2*n^4 + 2*n^3 + 3*n^2 + 2*n + 1.

The programs for A058920, the canonical program `A058920.P1405776691228502744` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058920 has offset 0).

The definition of A058920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^4+2*n^3+3*n²+2*n+1` (program `A058920.P1405776691228502744`, by `A058920.P1405776691228502744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058920.P2132914606667088353

`n²²+(n²+n+1)²`
-/

namespace A058920.P2132914606667088353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 + (n ^ 2 + n + 1) ^ 2

end

end A058920.P2132914606667088353

namespace A058920

/-- `n²²+(n²+n+1)²` -/
def P2132914606667088353.Spec : Prop :=
  ∀ n, (P2132914606667088353.a n : ℤ) = A058920 n

theorem P2132914606667088353.correct : P2132914606667088353.Spec := by
  intro n
  simp only [A058920, Nat.add_sub_cancel, A058920.P2132914606667088353.a, A058920.P1405776691228502744.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A058920

/-! ## A058920.P1405776691228502744

`2*n^4+2*n^3+3*n²+2*n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058920

/-- `2*n^4+2*n^3+3*n²+2*n+1` -/
def P1405776691228502744.Spec : Prop :=
  ∀ n, (P1405776691228502744.a n : ℤ) = A058920 n

theorem P1405776691228502744.correct : P1405776691228502744.Spec := by
  intro n
  simp only [A058920]

end A058920

/-! ## A058920.P693616460689821891

`A001844(n)*(n²+1)`
-/

namespace A058920.P693616460689821891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n * (n ^ 2 + 1 : ℤ)

end

end A058920.P693616460689821891

namespace A058920

/-- `A001844(n)*(n²+1)` -/
def P693616460689821891.Spec : Prop :=
  ∀ n, P693616460689821891.a n = A058920 n

end A058920

/-! ## A058920.P6890077136736584967

`((n+1)²+n²)*A002522(n)`
-/

namespace A058920.P6890077136736584967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n ^ 2 : ℤ) * A002522 n

end

end A058920.P6890077136736584967

namespace A058920

/-- `((n+1)²+n²)*A002522(n)` -/
def P6890077136736584967.Spec : Prop :=
  ∀ n, P6890077136736584967.a n = A058920 n

end A058920

/-! ## A058920.P9033979021827255351

`(A099392(n+1)+A000982(n))*A001844(n)`
-/

namespace A058920.P9033979021827255351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099392 (n + 1) + A000982 n) * A001844 n

end

end A058920.P9033979021827255351

namespace A058920

/-- `(A099392(n+1)+A000982(n))*A001844(n)` -/
def P9033979021827255351.Spec : Prop :=
  ∀ n, P9033979021827255351.a n = A058920 n

end A058920

/-! ## A058920.P8621790897578066152

`A002522(n)*A099392(2*(n+1))`
-/

namespace A058920.P8621790897578066152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A099392 (2 * (n + 1))

end

end A058920.P8621790897578066152

namespace A058920

/-- `A002522(n)*A099392(2*(n+1))` -/
def P8621790897578066152.Spec : Prop :=
  ∀ n, P8621790897578066152.a n = A058920 n

end A058920

/-! ## A058920.P10831861474086067574

`A033638(2*n)*A099392(2*n+2)`
-/

namespace A058920.P10831861474086067574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * n) * A099392 (2 * n + 2)

end

end A058920.P10831861474086067574

namespace A058920

/-- `A033638(2*n)*A099392(2*n+2)` -/
def P10831861474086067574.Spec : Prop :=
  ∀ n, P10831861474086067574.a n = A058920 n

end A058920

/-! ## A058920.P5879521687492971153

`A002522(n)*A080827(2*n+1)`
-/

namespace A058920.P5879521687492971153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A080827 (2 * n + 1)

end

end A058920.P5879521687492971153

namespace A058920

/-- `A002522(n)*A080827(2*n+1)` -/
def P5879521687492971153.Spec : Prop :=
  ∀ n, P5879521687492971153.a n = A058920 n

end A058920

/-! ## A058920.P3109619325327409751

`A002522(n)*A104563(2*n+1)`
-/

namespace A058920.P3109619325327409751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A104563 (2 * n + 1)

end

end A058920.P3109619325327409751

namespace A058920

/-- `A002522(n)*A104563(2*n+1)` -/
def P3109619325327409751.Spec : Prop :=
  ∀ n, P3109619325327409751.a n = A058920 n

end A058920

/-! ## A058920.P8177567572837906265

`A002522(n)*A228564(2*n+1)`
-/

namespace A058920.P8177567572837906265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A228564 (2 * n + 1)

end

end A058920.P8177567572837906265

namespace A058920

/-- `A002522(n)*A228564(2*n+1)` -/
def P8177567572837906265.Spec : Prop :=
  ∀ n, P8177567572837906265.a n = A058920 n

end A058920

/-! ## A058920.P13818294078765594214

`A002522(n)*A363267(2*(n+1))`
-/

namespace A058920.P13818294078765594214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A363267 (2 * (n + 1))

end

end A058920.P13818294078765594214

namespace A058920

/-- `A002522(n)*A363267(2*(n+1))` -/
def P13818294078765594214.Spec : Prop :=
  ∀ n, P13818294078765594214.a n = A058920 n

end A058920

/-! ## A058920.P11005308182902889431

`A000982(2*n+1)*A160457(n+1)`
-/

namespace A058920.P11005308182902889431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (2 * n + 1) * A160457 (n + 1)

end

end A058920.P11005308182902889431

namespace A058920

/-- `A000982(2*n+1)*A160457(n+1)` -/
def P11005308182902889431.Spec : Prop :=
  ∀ n, P11005308182902889431.a n = A058920 n

end A058920

/-! ## A058920.P11717281880469999

`A000982(2*n+1)*A033638(2*n)`
-/

namespace A058920.P11717281880469999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (2 * n + 1) * A033638 (2 * n)

end

end A058920.P11717281880469999

namespace A058920

/-- `A000982(2*n+1)*A033638(2*n)` -/
def P11717281880469999.Spec : Prop :=
  ∀ n, P11717281880469999.a n = A058920 n

end A058920

/-! ## A058920.P15128204873220334760

`A000982(2*n+1)*A389413(2*n+1)`
-/

namespace A058920.P15128204873220334760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (2 * n + 1) * A389413 (2 * n + 1)

end

end A058920.P15128204873220334760

namespace A058920

/-- `A000982(2*n+1)*A389413(2*n+1)` -/
def P15128204873220334760.Spec : Prop :=
  ∀ n, P15128204873220334760.a n = A058920 n

end A058920

/-! ## A058920.P15630278711863381523

`A363267(2*(n+1))*A363268(2*(n+1))`
-/

namespace A058920.P15630278711863381523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363267 (2 * (n + 1)) * A363268 (2 * (n + 1))

end

end A058920.P15630278711863381523

namespace A058920

/-- `A363267(2*(n+1))*A363268(2*(n+1))` -/
def P15630278711863381523.Spec : Prop :=
  ∀ n, P15630278711863381523.a n = A058920 n

end A058920

/-!
# A058921: a(n) = round((6*n)!/( 2^(3*n)*(3*n)!*6^(2*n) )).

The programs for A058921, there is no canonical definition to state claims against.
-/

/-! ## A058921.P3511788876478824369

`round(A001147(3*n)/A000400(n)²)`
-/

namespace A058921.P3511788876478824369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001147 (3 * n) : ℚ) / (A000400 n ^ 2 : ℚ))

end

end A058921.P3511788876478824369

/-! ## A058921.P9086610204199762936

`round(A001147(3*n)/A000400(2*n))`
-/

namespace A058921.P9086610204199762936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001147 (3 * n) : ℚ) / (A000400 (2 * n) : ℚ))

end

end A058921.P9086610204199762936

/-! ## A058921.P11474600737526569301

`round((6*n)!/(8^n*(3*n)!*(6^n)²))`
-/

namespace A058921.P11474600737526569301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (6 * n) : ℚ) / (8 ^ n * Nat.factorial (3 * n) * (6 ^ n) ^ 2 : ℚ))

end

end A058921.P11474600737526569301

/-!
# A058922: a(n) = n*2^n - 2^n = 2^n*(n-1).

The programs for A058922, the canonical program `A058922.P3560394704057486784` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058922 has offset 1).

The definition of A058922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*n` (program `A058922.P3560394704057486784`, by `A058922.P3560394704057486784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058922.P3560394704057486784

`2^(n+1)*n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058922

/-- `2^(n+1)*n` -/
def P3560394704057486784.Spec : Prop :=
  ∀ n, (P3560394704057486784.a n : ℤ) = A058922 (n + 1)

theorem P3560394704057486784.correct : P3560394704057486784.Spec := by
  intro n
  simp only [A058922, Nat.add_sub_cancel]

end A058922

/-! ## A058922.P2663477642760446754

`(n+1)*2^(n+1)-2^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058922.P2663477642760446754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ)

end

end A058922.P2663477642760446754

namespace A058922

/-- `(n+1)*2^(n+1)-2^(n+1)` -/
def P2663477642760446754.Spec : Prop :=
  ∀ n, P2663477642760446754.a n = A058922 (n + 1)

theorem P2663477642760446754.correct : P2663477642760446754.Spec := by
  intro n
  simp only [A058922, Nat.add_sub_cancel, A058922.P2663477642760446754.a, A058922.P3560394704057486784.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A058922

/-! ## A058922.P9397080886599281817

`ogf(4x/(1-4x+4x^2))`
-/

namespace A058922.P9397080886599281817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -4, 4] n

end

end A058922.P9397080886599281817

namespace A058922

/-- `ogf(4x/(1-4x+4x^2))` -/
def P9397080886599281817.Spec : Prop :=
  ∀ n, P9397080886599281817.a n = A058922 (n + 1)

end A058922

/-! ## A058922.P6355136295515889276

`n/2^xor(n, -1)`
-/

namespace A058922.P6355136295515889276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (Int.xor (n : ℤ) (-1) : ℤ)

end

end A058922.P6355136295515889276

namespace A058922

/-- `n/2^xor(n, -1)` -/
def P6355136295515889276.Spec : Prop :=
  ∀ n, P6355136295515889276.a n = (A058922 (n + 1) : ℚ)

end A058922

/-! ## A058922.P7035494562338280830

`record[n*(-sqrt(2))^n]`
-/

namespace A058922.P7035494562338280830
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (-Real.sqrt (2 : ℝ)) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058922.P7035494562338280830

namespace A058922

/-- `record[n*(-sqrt(2))^n]` -/
def P7035494562338280830.Spec : Prop :=
  ∀ n, P7035494562338280830.a n = (A058922 (n + 1) : ℝ)

end A058922

/-! ## A058922.P10329582452086160327

`lcm(2, 2*n*2^n)`
-/

namespace A058922.P10329582452086160327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n * 2 ^ n)

end

end A058922.P10329582452086160327

namespace A058922

/-- `lcm(2, 2*n*2^n)` -/
def P10329582452086160327.Spec : Prop :=
  ∀ n, (P10329582452086160327.a n : ℤ) = A058922 (n + 1)

end A058922

/-! ## A058922.P8977260532732940887

`floor(n/acot(2^(n+1)))`
-/

namespace A058922.P8977260532732940887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (2 ^ (n + 1) : ℝ)⌋

end

end A058922.P8977260532732940887

namespace A058922

/-- `floor(n/acot(2^(n+1)))` -/
def P8977260532732940887.Spec : Prop :=
  ∀ n, P8977260532732940887.a n = A058922 (n + 1)

end A058922

/-! ## A058922.P9903341791940534121

`round(n/acot(2^(n+1)))`
-/

namespace A058922.P9903341791940534121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (2 ^ (n + 1) : ℝ))

end

end A058922.P9903341791940534121

namespace A058922

/-- `round(n/acot(2^(n+1)))` -/
def P9903341791940534121.Spec : Prop :=
  ∀ n, P9903341791940534121.a n = A058922 (n + 1)

end A058922

/-! ## A058922.P16329788946749117939

`n/tan(acot(2^(n+1)))`
-/

namespace A058922.P16329788946749117939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot (2 ^ (n + 1) : ℝ))

end

end A058922.P16329788946749117939

namespace A058922

/-- `n/tan(acot(2^(n+1)))` -/
def P16329788946749117939.Spec : Prop :=
  ∀ n, P16329788946749117939.a n = (A058922 (n + 1) : ℝ)

end A058922

/-! ## A058922.P1396815218988217312

`2*n/tan(acot(2))^n`
-/

namespace A058922.P1396815218988217312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ)) ^ n

end

end A058922.P1396815218988217312

namespace A058922

/-- `2*n/tan(acot(2))^n` -/
def P1396815218988217312.Spec : Prop :=
  ∀ n, P1396815218988217312.a n = (A058922 (n + 1) : ℝ)

end A058922

/-! ## A058922.P13061877797613646939

`and(2*n*2^n, -2)`
-/

namespace A058922.P13061877797613646939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n * 2 ^ n : ℤ) (-2)

end

end A058922.P13061877797613646939

namespace A058922

/-- `and(2*n*2^n, -2)` -/
def P13061877797613646939.Spec : Prop :=
  ∀ n, P13061877797613646939.a n = A058922 (n + 1)

end A058922

/-! ## A058922.P934405626536750531

`n/2^-C(n+1, n)`
-/

namespace A058922.P934405626536750531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (-(Nat.choose (n + 1) n : ℤ) : ℤ)

end

end A058922.P934405626536750531

namespace A058922

/-- `n/2^-C(n+1, n)` -/
def P934405626536750531.Spec : Prop :=
  ∀ n, P934405626536750531.a n = (A058922 (n + 1) : ℚ)

end A058922

/-! ## A058922.P5732318371304162847

`n/(cos(atan(1))^(n+1))²`
-/

namespace A058922.P5732318371304162847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.cos (Real.arctan (1 : ℝ)) ^ (n + 1)) ^ 2

end

end A058922.P5732318371304162847

namespace A058922

/-- `n/(cos(atan(1))^(n+1))²` -/
def P5732318371304162847.Spec : Prop :=
  ∀ n, P5732318371304162847.a n = (A058922 (n + 1) : ℝ)

end A058922

/-! ## A058922.P11884215460571721295

`n/(sin(atan(1))^(n+1))²`
-/

namespace A058922.P11884215460571721295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.sin (Real.arctan (1 : ℝ)) ^ (n + 1)) ^ 2

end

end A058922.P11884215460571721295

namespace A058922

/-- `n/(sin(atan(1))^(n+1))²` -/
def P11884215460571721295.Spec : Prop :=
  ∀ n, P11884215460571721295.a n = (A058922 (n + 1) : ℝ)

end A058922

/-! ## A058922.P15294986010978420988

`n/(cos(acot(1))^(n+1))²`
-/

namespace A058922.P15294986010978420988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.cos (SequenceMachineLib.acot (1 : ℝ)) ^ (n + 1)) ^ 2

end

end A058922.P15294986010978420988

namespace A058922

/-- `n/(cos(acot(1))^(n+1))²` -/
def P15294986010978420988.Spec : Prop :=
  ∀ n, P15294986010978420988.a n = (A058922 (n + 1) : ℝ)

end A058922

/-! ## A058922.P605736590790322464

`n/(sin(acot(1))^(n+1))²`
-/

namespace A058922.P605736590790322464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.sin (SequenceMachineLib.acot (1 : ℝ)) ^ (n + 1)) ^ 2

end

end A058922.P605736590790322464

namespace A058922

/-- `n/(sin(acot(1))^(n+1))²` -/
def P605736590790322464.Spec : Prop :=
  ∀ n, P605736590790322464.a n = (A058922 (n + 1) : ℝ)

end A058922

/-! ## A058922.P2153372113483376801

`floor(n*Δ[2*a(n-1)])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A058922.P2153372113483376801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A058922.P2153372113483376801

namespace A058922

/-- `floor(n*Δ[2*a(n-1)])` -/
def P2153372113483376801.Spec : Prop :=
  ∀ n, P2153372113483376801.a n = A058922 (n + 1)

end A058922

/-! ## A058922.P8140381596222556541

`2*n/cos(atan(1))^(2*n)`
-/

namespace A058922.P8140381596222556541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) / Real.cos (Real.arctan (1 : ℝ)) ^ (2 * n)

end

end A058922.P8140381596222556541

namespace A058922

/-- `2*n/cos(atan(1))^(2*n)` -/
def P8140381596222556541.Spec : Prop :=
  ∀ n, P8140381596222556541.a n = (A058922 (n + 1) : ℝ)

end A058922

/-! ## A058922.P10511841206289635449

`2*n/sin(atan(1))^(2*n)`
-/

namespace A058922.P10511841206289635449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) / Real.sin (Real.arctan (1 : ℝ)) ^ (2 * n)

end

end A058922.P10511841206289635449

namespace A058922

/-- `2*n/sin(atan(1))^(2*n)` -/
def P10511841206289635449.Spec : Prop :=
  ∀ n, P10511841206289635449.a n = (A058922 (n + 1) : ℝ)

end A058922

/-! ## A058922.P7899149984276207049

`floor(n*∑[2*a(n-1)])` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A058922.P7899149984276207049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058922.P7899149984276207049

namespace A058922

/-- `floor(n*∑[2*a(n-1)])` -/
def P7899149984276207049.Spec : Prop :=
  ∀ n, (P7899149984276207049.a n : ℤ) = A058922 (n + 1)

end A058922

/-!
# A058923: a(n) = binomial(n,0) - binomial(n,2) + binomial(n,4).

The programs for A058923, the canonical program `A058923.P10239066423386123872` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058923 has offset 0).

The definition of A058923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 0)-C(n, 2)+C(n, 4)` (program `A058923.P10239066423386123872`, by `A058923.P10239066423386123872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058923.P11958256295217199035

`1-C(n, 2)+C(n, 4)`
-/

namespace A058923.P11958256295217199035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n 2 : ℤ) + (Nat.choose n 4 : ℤ)

end

end A058923.P11958256295217199035

namespace A058923

/-- `1-C(n, 2)+C(n, 4)` -/
def P11958256295217199035.Spec : Prop :=
  ∀ n, P11958256295217199035.a n = A058923 n

theorem P11958256295217199035.correct : P11958256295217199035.Spec := by
  intro n
  simp only [A058923, Nat.add_sub_cancel, A058923.P11958256295217199035.a, A058923.P10239066423386123872.a, SequenceMachineLib.memo_apply]
  try simp

end A058923

/-! ## A058923.P10239066423386123872

`C(n, 0)-C(n, 2)+C(n, 4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058923

/-- `C(n, 0)-C(n, 2)+C(n, 4)` -/
def P10239066423386123872.Spec : Prop :=
  ∀ n, P10239066423386123872.a n = A058923 n

theorem P10239066423386123872.correct : P10239066423386123872.Spec := by
  intro n
  simp only [A058923]

end A058923

/-! ## A058923.P5253313560360970499

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=-2, a(4)=-4`
-/

namespace A058923.P5253313560360970499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, -2, -4] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A058923.P5253313560360970499

namespace A058923

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5253313560360970499.Spec : Prop :=
  ∀ n, P5253313560360970499.a n = A058923 n

end A058923

/-! ## A058923.P6120254938914041312

`∑[1-n]+C(n, 4)`
-/

namespace A058923.P6120254938914041312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 4 : ℤ)

end

end A058923.P6120254938914041312

namespace A058923

/-- `∑[1-n]+C(n, 4)` -/
def P6120254938914041312.Spec : Prop :=
  ∀ n, P6120254938914041312.a n = A058923 n

end A058923

/-! ## A058923.P17078889963302750827

`C(n, 4)-∑[n-1]`
-/

namespace A058923.P17078889963302750827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058923.P17078889963302750827

namespace A058923

/-- `C(n, 4)-∑[n-1]` -/
def P17078889963302750827.Spec : Prop :=
  ∀ n, P17078889963302750827.a n = A058923 n

end A058923

/-! ## A058923.P12402939165219888517

`1-(C(n, 2)-C(n, 4))`
-/

namespace A058923.P12402939165219888517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose n 2 : ℤ) - (Nat.choose n 4 : ℤ))

end

end A058923.P12402939165219888517

namespace A058923

/-- `1-(C(n, 2)-C(n, 4))` -/
def P12402939165219888517.Spec : Prop :=
  ∀ n, P12402939165219888517.a n = A058923 n

theorem P12402939165219888517.correct : P12402939165219888517.Spec := by
  intro n
  simp only [A058923, Nat.add_sub_cancel, A058923.P12402939165219888517.a, A058923.P10239066423386123872.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A058923

/-! ## A058923.P5808925929090630497

`∑[∑[∑[n]]]+1-n*∑[n]`
-/

namespace A058923.P5808925929090630497
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - ((n * (∑ j ∈ Finset.range (n + 1), f4 j) : ℕ) : ℤ))

end

end A058923.P5808925929090630497

namespace A058923

/-- `∑[∑[∑[n]]]+1-n*∑[n]` -/
def P5808925929090630497.Spec : Prop :=
  ∀ n, P5808925929090630497.a n = A058923 n

end A058923

/-! ## A058923.P1515026805438606084

`∑[∑[∑[a(n-1)+1]]]` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=0`
-/

namespace A058923.P1515026805438606084
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 0] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058923.P1515026805438606084

namespace A058923

/-- `∑[∑[∑[a(n-1)+1]]]` -/
def P1515026805438606084.Spec : Prop :=
  ∀ n, P1515026805438606084.a n = A058923 n

end A058923

/-! ## A058923.P3730763400018034419

`∑[∑[a(n-1)-(3-n)]]` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A058923.P3730763400018034419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n f2 =>
  f2 (n - 1) - (3 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058923.P3730763400018034419

namespace A058923

/-- `∑[∑[a(n-1)-(3-n)]]` -/
def P3730763400018034419.Spec : Prop :=
  ∀ n, P3730763400018034419.a n = A058923 n

end A058923

/-! ## A058923.P10544242451925391168

`∑[A201347(n+1)-(n+1)²]`
-/

namespace A058923.P10544242451925391168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201347 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058923.P10544242451925391168

namespace A058923

/-- `∑[A201347(n+1)-(n+1)²]` -/
def P10544242451925391168.Spec : Prop :=
  ∀ n, P10544242451925391168.a n = A058923 n

end A058923

/-! ## A058923.P10212092446875241143

`ceil(∑[1-n]+A052762(n)/24)`
-/

namespace A058923.P10212092446875241143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A052762 n : ℚ) / 24⌉

end

end A058923.P10212092446875241143

namespace A058923

/-- `ceil(∑[1-n]+A052762(n)/24)` -/
def P10212092446875241143.Spec : Prop :=
  ∀ n, P10212092446875241143.a n = A058923 n

end A058923

/-! ## A058923.P4542491208843309817

`ceil((∑[∑[n²]-A192136(n)+1]+1)/2)`
-/

namespace A058923.P4542491208843309817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A192136 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2⌉

end

end A058923.P4542491208843309817

namespace A058923

/-- `ceil((∑[∑[n²]-A192136(n)+1]+1)/2)` -/
def P4542491208843309817.Spec : Prop :=
  ∀ n, P4542491208843309817.a n = A058923 n

end A058923

/-! ## A058923.P7949280873963004882

`∑[A000125(n)+1-A010000(n)]`
-/

namespace A058923.P7949280873963004882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (1 - A010000 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058923.P7949280873963004882

namespace A058923

/-- `∑[A000125(n)+1-A010000(n)]` -/
def P7949280873963004882.Spec : Prop :=
  ∀ n, P7949280873963004882.a n = A058923 n

end A058923

/-! ## A058923.P15853667472813203778

`Δ[A161701(n)-Δ[A161701(n)]]`
-/

namespace A058923.P15853667472813203778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058923.P15853667472813203778

namespace A058923

/-- `Δ[A161701(n)-Δ[A161701(n)]]` -/
def P15853667472813203778.Spec : Prop :=
  ∀ n, P15853667472813203778.a n = A058923 n

end A058923

/-! ## A058923.P6136462165200055699

`∑[A055803(2*n+3)-n²]`
-/

namespace A058923.P6136462165200055699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055803 (2 * n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058923.P6136462165200055699

namespace A058923

/-- `∑[A055803(2*n+3)-n²]` -/
def P6136462165200055699.Spec : Prop :=
  ∀ n, P6136462165200055699.a n = A058923 n

end A058923

/-!
# A058924: Number of independent dominating sets in rooted labeled trees with n nodes.

The programs for A058924, there is no canonical definition to state claims against.
-/

/-! ## A058924.P11206992492312304962

`(n+1)*A058925(n+1)`
-/

namespace A058924.P11206992492312304962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058925 (n + 1)

end

end A058924.P11206992492312304962

/-!
# A058925: Number of independent dominating sets in labeled trees with n nodes.

The programs for A058925, there is no canonical definition to state claims against.
-/

/-! ## A058925.P3889504305121749166

`A058924(n+1)/(n+1)`
-/

namespace A058925.P3889504305121749166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058924 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A058925.P3889504305121749166

/-! ## A058925.P14949032848769000448

`A007947(A058924(n+1))*A227349(n)`
-/

namespace A058925.P14949032848769000448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A058924 (n + 1)).toNat * A227349 n

end

end A058925.P14949032848769000448

/-!
# A058926: Number of independent dominating sets in recursive trees with n nodes.

The programs for A058926, there is no canonical definition to state claims against.
-/

/-! ## A058926.P7200262102618658212

`A061017(A220097(n)+n)`
-/

namespace A058926.P7200262102618658212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A220097 n + (n : ℤ)).toNat

end

end A058926.P7200262102618658212

/-! ## A058926.P2962552774443617808

`A243491(lcm(n, A324167(n)))`
-/

namespace A058926.P2962552774443617808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (Int.lcm (n : ℤ) (A324167 n))

end

end A058926.P2962552774443617808

/-!
# A058927: Numerators of series related to triangular cacti.

The programs for A058927, there is no canonical definition to state claims against.
-/

/-! ## A058927.P18819463450289900

`A052750(n)/A000165(n)*A058928(n)`
-/

namespace A058927.P18819463450289900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052750 n : ℚ) / (A000165 n : ℚ) * (A058928 n : ℚ)

end

end A058927.P18819463450289900

/-! ## A058927.P15950554084183948293

`A052750(n)/gcd(A000142(n), A052750(n))`
-/

namespace A058927.P15950554084183948293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052750 n : ℚ) / (Int.gcd (A000142 n) (A052750 n) : ℚ)

end

end A058927.P15950554084183948293

/-! ## A058927.P1239833261956506844

`A052750(n)/gcd(A000165(n), A085527(n))`
-/

namespace A058927.P1239833261956506844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052750 n : ℚ) / (Int.gcd (A000165 n) (A085527 n) : ℚ)

end

end A058927.P1239833261956506844

/-! ## A058927.P4595210037053886034

`lcm(A000142(2*n), A034941(n))/A000142(2*n)`
-/

namespace A058927.P4595210037053886034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 (2 * n)) (A034941 n) : ℚ) / (A000142 (2 * n) : ℚ)

end

end A058927.P4595210037053886034

/-!
# A058928: Denominators of series related to triangular cacti.

The programs for A058928, there is no canonical definition to state claims against.
-/

/-! ## A058928.P11421935220640032263

`A000165(n)/A052750(n)*A058927(n)`
-/

namespace A058928.P11421935220640032263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A052750 n : ℚ) * (A058927 n : ℚ)

end

end A058928.P11421935220640032263

/-! ## A058928.P14037799854084396900

`A000165(n)/gcd(A000165(n), A085527(n))`
-/

namespace A058928.P14037799854084396900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (Int.gcd (A000165 n) (A085527 n) : ℚ)

end

end A058928.P14037799854084396900

/-! ## A058928.P13131608311037385930

`gcd(A000165(n), A346066(Δ[n²]))`
-/

namespace A058928.P13131608311037385930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000165 n) (A346066 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A058928.P13131608311037385930

/-! ## A058928.P6865241976960899409

`gcd(Δ[A000165(n)], A346066(2*n+1))`
-/

namespace A058928.P6865241976960899409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A346066 (2 * n + 1))

end

end A058928.P6865241976960899409

/-! ## A058928.P6537647937618905092

`gcd(∏[A028310(2*n)], A036503(2*n+1))`
-/

namespace A058928.P6537647937618905092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A036503 (2 * n + 1))

end

end A058928.P6537647937618905092

/-!
# A058929: Number of 2-connected claw-free labeled cubic graphs with 2n nodes.

The programs for A058929, there is no canonical definition to state claims against.
-/

/-! ## A058929.P9490740412249317591

`A057848(∑[A156939(or(1, n))])`
-/

namespace A058929.P9490740412249317591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156939 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057848 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058929.P9490740412249317591

/-! ## A058929.P16956042469563558768

`A057848(A162225(n+1)+1)`
-/

namespace A058929.P16956042469563558768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057848 (A162225 (n + 1) + 1).toNat

end

end A058929.P16956042469563558768

/-!
# A058933: Let k be bigomega(n) (i.e., n is a k-almost-prime). a(n) = number of k-almost-primes <= n.

The programs for A058933, there is no canonical definition to state claims against.
-/

/-! ## A058933.P12378332362550673907

`A335097(n+1)+1`
-/

namespace A058933.P12378332362550673907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335097 (n + 1) + 1

end

end A058933.P12378332362550673907

/-! ## A058933.P5235968642158105085

`1-A070961(n+1)+n`
-/

namespace A058933.P5235968642158105085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070961 (n + 1) + (n : ℤ)

end

end A058933.P5235968642158105085

/-! ## A058933.P14223422575417635519

`log2(Δ[A339511(n)])+1`
-/

namespace A058933.P14223422575417635519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339511 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ) + 1

end

end A058933.P14223422575417635519

/-! ## A058933.P10071376227111449605

`1-A001489(log2(Δ[A339511(n)]))`
-/

namespace A058933.P10071376227111449605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A058933.P10071376227111449605

/-! ## A058933.P2419480172739578642

`A008624(4*log2(Δ[A339511(n)]))`
-/

namespace A058933.P2419480172739578642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (SequenceMachineLib.roundAway (4 * Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A058933.P2419480172739578642

/-! ## A058933.P4347691475282415785

`log2(A339511(n+1)-A339511(n))+1`
-/

namespace A058933.P4347691475282415785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A339511 (n + 1) - A339511 n : ℝ) + 1

end

end A058933.P4347691475282415785

/-! ## A058933.P18218911361883199512

`A008624(log2(Δ[A339511(n)]²²))`
-/

namespace A058933.P18218911361883199512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (SequenceMachineLib.roundAway (Real.logb 2 (((f1 (n + 1) - f1 n) ^ 2) ^ 2 : ℝ))).toNat

end

end A058933.P18218911361883199512

/-! ## A058933.P872745132379444591

`A331295(A053024(n+1))`
-/

namespace A058933.P872745132379444591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331295 (A053024 (n + 1)).toNat

end

end A058933.P872745132379444591

/-! ## A058933.P17056702233089036840

`A331295((n+1)*A151800(n))`
-/

namespace A058933.P17056702233089036840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331295 ((n + 1 : ℤ) * A151800 n).toNat

end

end A058933.P17056702233089036840

/-! ## A058933.P9751738636481352410

`A331295((n+1)*A007918(n+1))`
-/

namespace A058933.P9751738636481352410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331295 ((n + 1 : ℤ) * A007918 (n + 1)).toNat

end

end A058933.P9751738636481352410

/-! ## A058933.P1637172218792217370

`A331295(A013636(n+1))`
-/

namespace A058933.P1637172218792217370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331295 (A013636 (n + 1)).toNat

end

end A058933.P1637172218792217370

/-!
# A058934: Numbers k such that 2*5^k + 1 is prime.

The programs for A058934, there is no canonical definition to state claims against.
-/

/-! ## A058934.P1629937102514373397

`eq[A000034(n), A397103(n)]`
-/

namespace A058934.P1629937102514373397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058934.P1629937102514373397

/-! ## A058934.P1355889445306646669

`eq[A068073(n), A397103(n)]`
-/

namespace A058934.P1355889445306646669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058934.P1355889445306646669

/-! ## A058934.P114046321620804026

`eq[A071222(n), A397103(n)]`
-/

namespace A058934.P114046321620804026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058934.P114046321620804026

/-! ## A058934.P18149574363224195981

`eq[A083952(n), A397103(n)]`
-/

namespace A058934.P18149574363224195981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058934.P18149574363224195981

/-!
# A058935: Concatenation of first n binary numbers.

The programs for A058935, there is no canonical definition to state claims against.
-/

/-! ## A058935.P12228211487064375496

`a(n-1)*10^A029837(n+1)+A007088(n)` with `a(0)=0`
-/

namespace A058935.P12228211487064375496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * (10 : ℚ) ^ (A029837 (n + 1) : ℤ) + (A007088 n : ℚ)

end

end A058935.P12228211487064375496

/-! ## A058935.P16594231220738329110

`A007088(∑{e}[A000079(n), A047778(#)])`
-/

namespace A058935.P16594231220738329110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A047778 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A058935.P16594231220738329110

/-!
# A058937: Maximal exponent of x in all terms of Somos polynomial of order n.

The programs for A058937, the canonical program `A058937.P12633337397278639824` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058937 has offset 1).

The definition of A058937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058937.P12633337397278639824

`1+a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058937

/-- `1+a(n-1)+a(n-3)-a(n-4)` -/
def P12633337397278639824.Spec : Prop :=
  ∀ n, P12633337397278639824.a n = A058937 (n + 1)

theorem P12633337397278639824.correct : P12633337397278639824.Spec := by
  intro n
  simp only [A058937, Nat.add_sub_cancel]

end A058937

/-! ## A058937.P4389203519527993609

`floor((5/2-n)²/6)`
-/

namespace A058937.P4389203519527993609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 2 - (n : ℚ)) ^ 2 / 6⌋

end

end A058937.P4389203519527993609

namespace A058937

/-- `floor((5/2-n)²/6)` -/
def P4389203519527993609.Spec : Prop :=
  ∀ n, P4389203519527993609.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P3005773063341981757

`ceil((cos(1)+∑[n])/3-n)`
-/

namespace A058937.P3005773063341981757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cos (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3 - (n : ℝ)⌉

end

end A058937.P3005773063341981757

namespace A058937

/-- `ceil((cos(1)+∑[n])/3-n)` -/
def P3005773063341981757.Spec : Prop :=
  ∀ n, P3005773063341981757.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P6335813654134358468

`ceil((sin(1)+∑[n])/3-n)`
-/

namespace A058937.P6335813654134358468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3 - (n : ℝ)⌉

end

end A058937.P6335813654134358468

namespace A058937

/-- `ceil((sin(1)+∑[n])/3-n)` -/
def P6335813654134358468.Spec : Prop :=
  ∀ n, P6335813654134358468.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P18359959891581357596

`ceil((tan(1)+∑[n])/3-n)`
-/

namespace A058937.P18359959891581357596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tan (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3 - (n : ℝ)⌉

end

end A058937.P18359959891581357596

namespace A058937

/-- `ceil((tan(1)+∑[n])/3-n)` -/
def P18359959891581357596.Spec : Prop :=
  ∀ n, P18359959891581357596.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P1926672593780907597

`ceil((∑[n]-cos(2))/3-n)`
-/

namespace A058937.P1926672593780907597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (2 : ℝ)) / 3 - (n : ℝ)⌉

end

end A058937.P1926672593780907597

namespace A058937

/-- `ceil((∑[n]-cos(2))/3-n)` -/
def P1926672593780907597.Spec : Prop :=
  ∀ n, P1926672593780907597.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P1023941415256912305

`ceil((asin(1)+∑[n])/3-n)`
-/

namespace A058937.P1023941415256912305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arcsin (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3 - (n : ℝ)⌉

end

end A058937.P1023941415256912305

namespace A058937

/-- `ceil((asin(1)+∑[n])/3-n)` -/
def P1023941415256912305.Spec : Prop :=
  ∀ n, P1023941415256912305.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P7371854636955376998

`ceil((cosh(1)+∑[n])/3-n)`
-/

namespace A058937.P7371854636955376998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cosh (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3 - (n : ℝ)⌉

end

end A058937.P7371854636955376998

namespace A058937

/-- `ceil((cosh(1)+∑[n])/3-n)` -/
def P7371854636955376998.Spec : Prop :=
  ∀ n, P7371854636955376998.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P12464111668462815233

`round((cosh(1)+∑[n])/3-n)`
-/

namespace A058937.P12464111668462815233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cosh (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3 - (n : ℝ))

end

end A058937.P12464111668462815233

namespace A058937

/-- `round((cosh(1)+∑[n])/3-n)` -/
def P12464111668462815233.Spec : Prop :=
  ∀ n, P12464111668462815233.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P4584416173795917877

`ceil((tanh(1)+∑[n])/3-n)`
-/

namespace A058937.P4584416173795917877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tanh (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3 - (n : ℝ)⌉

end

end A058937.P4584416173795917877

namespace A058937

/-- `ceil((tanh(1)+∑[n])/3-n)` -/
def P4584416173795917877.Spec : Prop :=
  ∀ n, P4584416173795917877.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P2265653384501857262

`a(n-3)-4+n` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A058937.P2265653384501857262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) - 4 + (n : ℤ)

end

end A058937.P2265653384501857262

namespace A058937

/-- `a(n-3)-4+n` -/
def P2265653384501857262.Spec : Prop :=
  ∀ n, P2265653384501857262.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P16132669476142386417

`a(n-3)-(4-n)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A058937.P16132669476142386417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) - (4 - (n : ℤ))

end

end A058937.P16132669476142386417

namespace A058937

/-- `a(n-3)-(4-n)` -/
def P16132669476142386417.Spec : Prop :=
  ∀ n, P16132669476142386417.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P2757324005723013840

`∑[∑[C(n, 2)%3]]-(n-1)`
-/

namespace A058937.P2757324005723013840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)

end

end A058937.P2757324005723013840

namespace A058937

/-- `∑[∑[C(n, 2)%3]]-(n-1)` -/
def P2757324005723013840.Spec : Prop :=
  ∀ n, P2757324005723013840.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P14337868829251124665

`round((n-2)/(6*acot(n-3)))`
-/

namespace A058937.P14337868829251124665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℝ) / (6 * SequenceMachineLib.acot ((n : ℤ) - 3 : ℝ)))

end

end A058937.P14337868829251124665

namespace A058937

/-- `round((n-2)/(6*acot(n-3)))` -/
def P14337868829251124665.Spec : Prop :=
  ∀ n, P14337868829251124665.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P3626926026546763538

`floor(C(n+1, 2)/3)-(n-1)`
-/

namespace A058937.P3626926026546763538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 2 : ℚ) / 3⌋ - ((n : ℤ) - 1)

end

end A058937.P3626926026546763538

namespace A058937

/-- `floor(C(n+1, 2)/3)-(n-1)` -/
def P3626926026546763538.Spec : Prop :=
  ∀ n, P3626926026546763538.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P12474134862970909837

`round(C(n+1, 2)/3-(n-1))`
-/

namespace A058937.P12474134862970909837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) 2 : ℚ) / 3 - ((n : ℤ) - 1 : ℚ))

end

end A058937.P12474134862970909837

namespace A058937

/-- `round(C(n+1, 2)/3-(n-1))` -/
def P12474134862970909837.Spec : Prop :=
  ∀ n, P12474134862970909837.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P4372659968124652934

`floor(lcm(n-2, n-3)/3)/2`
-/

namespace A058937.P4372659968124652934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Int.lcm ((n : ℤ) - 2) ((n : ℤ) - 3) : ℚ) / 3⌋ : ℚ) / 2

end

end A058937.P4372659968124652934

namespace A058937

/-- `floor(lcm(n-2, n-3)/3)/2` -/
def P4372659968124652934.Spec : Prop :=
  ∀ n, P4372659968124652934.a n = (A058937 (n + 1) : ℚ)

end A058937

/-! ## A058937.P13867084334675479389

`A008748(n)-n`
-/

namespace A058937.P13867084334675479389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n - (n : ℤ)

end

end A058937.P13867084334675479389

namespace A058937

/-- `A008748(n)-n` -/
def P13867084334675479389.Spec : Prop :=
  ∀ n, P13867084334675479389.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P5675714679533727604

`Δ[A014125(n)-n²]`
-/

namespace A058937.P5675714679533727604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058937.P5675714679533727604

namespace A058937

/-- `Δ[A014125(n)-n²]` -/
def P5675714679533727604.Spec : Prop :=
  ∀ n, P5675714679533727604.a n = A058937 (n + 1)

end A058937

/-! ## A058937.P13806074065399696192

`∑[A086161(n)-2]+2`
-/

namespace A058937.P13806074065399696192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A058937.P13806074065399696192

namespace A058937

/-- `∑[A086161(n)-2]+2` -/
def P13806074065399696192.Spec : Prop :=
  ∀ n, P13806074065399696192.a n = A058937 (n + 1)

end A058937

/-!
# A058938: Numbers k such that the sum of the first k digits of the decimal expansion of Pi is prime.

The programs for A058938, there is no canonical definition to state claims against.
-/

/-! ## A058938.P6741214670872344638

`eq[1, A001222(A046974(n))]+1`
-/

namespace A058938.P6741214670872344638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046974 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058938.P6741214670872344638

/-! ## A058938.P17857564209124876104

`record[(n+1)%A020639(A046974(n%(n+1)))]`
-/

namespace A058938.P17857564209124876104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (A046974 (n % (n + 1))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058938.P17857564209124876104

/-! ## A058938.P10026526767184597337

`record[A000027(n+1)%A020639(A046974(n))]`
-/

namespace A058938.P10026526767184597337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A020639 (A046974 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058938.P10026526767184597337

/-! ## A058938.P15790768244842813951

`record[(A005408(n)-n)%A020639(A046974(n))]`
-/

namespace A058938.P15790768244842813951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n - (n : ℤ)) (A020639 (A046974 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058938.P15790768244842813951

/-! ## A058938.P9722159855498072010

`eq[1, A053989(A059582(n))]`
-/

namespace A058938.P9722159855498072010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A059582 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058938.P9722159855498072010

/-! ## A058938.P14338693228444841968

`eq[1, A032741(A059582(n)-1)]`
-/

namespace A058938.P14338693228444841968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A059582 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058938.P14338693228444841968

/-!
# A058940: Triangle of coefficients of Euler polynomials rescaled to integers by multiplication with 2^(binary carry sequence (A007814)).

The programs for A058940, there is no canonical definition to state claims against.
-/

/-! ## A058940.P4964420869869673843

`A213620(∑[2*n]%comp[∑[n]])`
-/

namespace A058940.P4964420869869673843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213620 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A058940.P4964420869869673843

/-! ## A058940.P14654193224906717476

`A213620(∑[char[∑[n]]]²-(n+1))`
-/

namespace A058940.P14654193224906717476
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213620 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A058940.P14654193224906717476

/-! ## A058940.P15493706870842518980

`or(A154955(n+1), A213620(A061579(n)))`
-/

namespace A058940.P15493706870842518980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154955 (n + 1)) (A213620 (A061579 n).toNat)

end

end A058940.P15493706870842518980

/-! ## A058940.P3944795133083816502

`A004174(n)/A084623(A002024(n+1))`
-/

namespace A058940.P3944795133083816502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004174 n : ℚ) / (A084623 (A002024 (n + 1)).toNat : ℚ)

end

end A058940.P3944795133083816502

/-! ## A058940.P13958850054991977228

`A059268(n)/A084623(A002024(n+1))*A081733(n)`
-/

namespace A058940.P13958850054991977228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / (A084623 (A002024 (n + 1)).toNat : ℚ) * (A081733 n : ℚ)

end

end A058940.P13958850054991977228

/-! ## A058940.P2503741785578792555

`A004175(A061579(n))/A084623(A002024(n+1))`
-/

namespace A058940.P2503741785578792555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004175 (A061579 n).toNat : ℚ) / (A084623 (A002024 (n + 1)).toNat : ℚ)

end

end A058940.P2503741785578792555

/-! ## A058940.P946927898704572353

`A004175(A114327(n)+n)/A084623(A002024(n+1))`
-/

namespace A058940.P946927898704572353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004175 (A114327 n + (n : ℤ)).toNat : ℚ) / (A084623 (A002024 (n + 1)).toNat : ℚ)

end

end A058940.P946927898704572353

/-! ## A058940.P4167442377658057954

`A004175(A038722(n+1)-1)/A084623(A002024(n+1))`
-/

namespace A058940.P4167442377658057954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004175 (A038722 (n + 1) - 1).toNat : ℚ) / (A084623 (A002024 (n + 1)).toNat : ℚ)

end

end A058940.P4167442377658057954

/-!
# A058943: Coefficients of irreducible polynomials over GF(2) listed in lexicographic order.

The programs for A058943, there is no canonical definition to state claims against.
-/

/-! ## A058943.P3999375777855827574

`A007088(A014580(n+1))`
-/

namespace A058943.P3999375777855827574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A014580 (n + 1)).toNat

end

end A058943.P3999375777855827574

/-! ## A058943.P1094224762759469392

`A007088(eq[1, A304529(n+1)]+1)`
-/

namespace A058943.P1094224762759469392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A058943.P1094224762759469392

/-! ## A058943.P2646694550843192630

`A007088(A091202(Δ[A007504(n)]))`
-/

namespace A058943.P2646694550843192630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A091202 (f1 (n + 1) - f1 n).toNat).toNat

end

end A058943.P2646694550843192630

/-! ## A058943.P12761575363585321800

`A007088(A091202(p?[A014681(n)]))`
-/

namespace A058943.P12761575363585321800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A091202 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A058943.P12761575363585321800

/-! ## A058943.P7160221796284697241

`A007088(A091202(A000040(n+1)))`
-/

namespace A058943.P7160221796284697241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A091202 (A000040 (n + 1)).toNat).toNat

end

end A058943.P7160221796284697241

/-! ## A058943.P3942022394804003201

`A185544(2*A014580(n+1))`
-/

namespace A058943.P3942022394804003201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A014580 (n + 1)).toNat

end

end A058943.P3942022394804003201

/-! ## A058943.P16426837799672020285

`A007088(A091202(p?[A000463(n+1)]))`
-/

namespace A058943.P16426837799672020285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A091202 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A058943.P16426837799672020285

/-!
# A058944: Coefficients of monic irreducible polynomials over GF(3) listed in lexicographic order.

The programs for A058944, there is no canonical definition to state claims against.
-/

/-! ## A058944.P6942794860742622059

`∩[A207671(n+1), A125098(n)]`
-/

namespace A058944.P6942794860742622059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058944.P6942794860742622059

/-! ## A058944.P14803815389012392855

`∩[A045855(n+1), A207671(n+1)]`
-/

namespace A058944.P14803815389012392855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058944.P14803815389012392855

/-! ## A058944.P14495306114493296269

`∩[A089951(n+1), A207671(n+1)]`
-/

namespace A058944.P14495306114493296269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058944.P14495306114493296269

/-! ## A058944.P13009209488190039492

`∩[A144582(n+1), A207671(n+1)]`
-/

namespace A058944.P13009209488190039492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058944.P13009209488190039492

/-! ## A058944.P1869259122992178199

`A207671(∑[A057856(n+1)²])`
-/

namespace A058944.P1869259122992178199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057856 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207671 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058944.P1869259122992178199

/-!
# A058945: Coefficients of monic irreducible polynomials over GF(5) listed in lexicographic order.

The programs for A058945, there is no canonical definition to state claims against.
-/

/-! ## A058945.P16779737990186812921

`A133506(A037328(n+1))`
-/

namespace A058945.P16779737990186812921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133506 (A037328 (n + 1)).toNat

end

end A058945.P16779737990186812921

/-! ## A058945.P17833365736090788026

`A062997(∑[A152990(n+1)!])`
-/

namespace A058945.P17833365736090788026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A152990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058945.P17833365736090788026

/-! ## A058945.P13967741761817503631

`A282764(A160555(n))+A257340(n+1)`
-/

namespace A058945.P13967741761817503631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282764 (A160555 n).toNat + A257340 (n + 1)

end

end A058945.P13967741761817503631

/-!
# A058946: Coefficients of monic irreducible polynomials over GF(7) listed in lexicographic order.

The programs for A058946, there is no canonical definition to state claims against.
-/

/-! ## A058946.P4974385008868937113

`A180131(A289119(n+1))+n`
-/

namespace A058946.P4974385008868937113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180131 (A289119 (n + 1)).toNat + (n : ℤ)

end

end A058946.P4974385008868937113

/-! ## A058946.P4965189045366425926

`∑[A146766(A146736(n+1))]+9`
-/

namespace A058946.P4965189045366425926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146766 (A146736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9

end

end A058946.P4965189045366425926

/-! ## A058946.P3499827267157868868

`A066087(A066051(n+1))+n+10`
-/

namespace A058946.P3499827267157868868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (A066051 (n + 1)).toNat + (n + 10 : ℤ)

end

end A058946.P3499827267157868868

/-! ## A058946.P17869818748474407238

`A057947(n)%A235884(A356250(3*n+4))`
-/

namespace A058946.P17869818748474407238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057947 n) (A235884 (A356250 (3 * n + 4)).toNat)

end

end A058946.P17869818748474407238

/-!
# A058947: Coefficients of primitive irreducible polynomials over GF(2) listed in lexicographic order.

The programs for A058947, there is no canonical definition to state claims against.
-/

/-! ## A058947.P11886709958297711686

`A007088(A091250(n+1))`
-/

namespace A058947.P11886709958297711686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A091250 (n + 1)).toNat

end

end A058947.P11886709958297711686

/-! ## A058947.P8015374865568116630

`A185544(2*A091250(n+1))`
-/

namespace A058947.P8015374865568116630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A091250 (n + 1)).toNat

end

end A058947.P8015374865568116630

/-! ## A058947.P2545661291472674610

`A185544(lcm(2, A091250(n+1)))`
-/

namespace A058947.P2545661291472674610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A091250 (n + 1)))

end

end A058947.P2545661291472674610

/-! ## A058947.P8693268251319750339

`A185544(A091250(n+1)+A091250(n+1))`
-/

namespace A058947.P8693268251319750339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A091250 (n + 1) + A091250 (n + 1)).toNat

end

end A058947.P8693268251319750339

/-! ## A058947.P16393522506270916303

`A058943(A091249(n+1))`
-/

namespace A058947.P16393522506270916303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058943 (A091249 (n + 1)).toNat

end

end A058947.P16393522506270916303

/-! ## A058947.P4212630421022390309

`A007088(or(1, A014580(A091249(n+1))))`
-/

namespace A058947.P4212630421022390309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A014580 (A091249 (n + 1)).toNat)).toNat

end

end A058947.P4212630421022390309

/-!
# A058948: Coefficients of monic irreducible polynomials over GF(4) listed in lexicographic order.

The programs for A058948, there is no canonical definition to state claims against.
-/

/-! ## A058948.P14580755697927185327

`∑[A121524(A080871(n))]+9`
-/

namespace A058948.P14580755697927185327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (A080871 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9

end

end A058948.P14580755697927185327

/-! ## A058948.P11404978549185052040

`A099083(A336416(n))+n+5`
-/

namespace A058948.P11404978549185052040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099083 (A336416 n).toNat + (n + 5 : ℤ)

end

end A058948.P11404978549185052040

/-!
# A058950: Coefficients of monic primitive irreducible polynomials over GF(5) listed in lexicographic order.

The programs for A058950, there is no canonical definition to state claims against.
-/

/-! ## A058950.P10255800797845838351

`A342944(n+2)+A002117(A000533(n))`
-/

namespace A058950.P10255800797845838351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342944 (n + 2) + A002117 (A000533 n).toNat

end

end A058950.P10255800797845838351

/-!
# A058951: Coefficients of monic primitive irreducible polynomials over GF(7) listed in lexicographic order.

The programs for A058951, there is no canonical definition to state claims against.
-/

/-! ## A058951.P13082730487994956641

`A367221(A344223(n+1))+A058952(n+1)`
-/

namespace A058951.P13082730487994956641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367221 (A344223 (n + 1)).toNat + A058952 (n + 1)

end

end A058951.P13082730487994956641

/-!
# A058952: Coefficients of monic primitive irreducible polynomials over GF(4) listed in lexicographic order.

The programs for A058952, there is no canonical definition to state claims against.
-/

/-! ## A058952.P17640214189608001961

`eq[8, A103609(A337864(n))]`
-/

namespace A058952.P17640214189608001961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A337864 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058952.P17640214189608001961

/-!
# A058953: Numbers k of the form k=p*2^x, with p prime and x>=0, such that tau(k)-m = A058933(k) where tau(k) is the number of divisors of k and m is 0 or 1.

The programs for A058953, there is no canonical definition to state claims against.
-/

/-! ## A058953.P5551727330006794318

`Δ[A007504(n)]*A072376(A093129(n))`
-/

namespace A058953.P5551727330006794318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A072376 (A093129 n).toNat

end

end A058953.P5551727330006794318

/-! ## A058953.P17849513036828156374

`A000040(n+1)*A053644(A101879(n))`
-/

namespace A058953.P17849513036828156374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A053644 (A101879 n).toNat

end

end A058953.P17849513036828156374

/-! ## A058953.P11902064547376283277

`A000040(n+1)*A072376(A093129(n))`
-/

namespace A058953.P11902064547376283277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A072376 (A093129 n).toNat

end

end A058953.P11902064547376283277

/-! ## A058953.P14257977149399154552

`A000040(n+1)*A053644(A279561(n))`
-/

namespace A058953.P14257977149399154552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A053644 (A279561 n).toNat

end

end A058953.P14257977149399154552

/-! ## A058953.P5878966121028665487

`A000040(n+1)*A053644(A294824(n))`
-/

namespace A058953.P5878966121028665487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A053644 (A294824 n).toNat

end

end A058953.P5878966121028665487

/-!
# A058956: Let S(t) = 1 + s_1*t + s_2*t^2 + ... satisfy S' = -S/(2 + S); sequence gives denominators of s_n.

The programs for A058956, there is no canonical definition to state claims against.
-/

/-! ## A058956.P16235565460098571274

`A204896((4-gcd(3, n))^A000032(n))`
-/

namespace A058956.P16235565460098571274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204896 (SequenceMachineLib.roundAway ((4 - (Nat.gcd 3 n : ℤ) : ℚ) ^ (A000032 n : ℤ))).toNat

end

end A058956.P16235565460098571274

/-!
# A058957: Numbers having at least two representations as b^2 - c^2 with b > c >= 0.

The programs for A058957, the canonical program `A058957.P5083467042790607208` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058957 has offset 1).

The definition of A058957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058957.P5083467042790607208

`lt[1, A325937(n+1)²]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A058957

/-- `lt[1, A325937(n+1)²]+1` -/
def P5083467042790607208.Spec : Prop :=
  ∀ n, (P5083467042790607208.a n : ℤ) = A058957 (n + 1)

theorem P5083467042790607208.correct : P5083467042790607208.Spec := by
  intro n
  simp only [A058957, Nat.add_sub_cancel]

end A058957

/-! ## A058957.P14269946138900045644

`lt[log2(gcd(2, n)), A220400(n)]`
-/

namespace A058957.P14269946138900045644
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A058957.P14269946138900045644

namespace A058957

/-- `lt[log2(gcd(2, n)), A220400(n)]` -/
def P14269946138900045644.Spec : Prop :=
  ∀ n, (P14269946138900045644.a n : ℤ) = A058957 (n + 1)

end A058957

/-! ## A058957.P15503998715234458475

`lt[1, A034178(n+1)]+1`
-/

namespace A058957.P15503998715234458475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058957.P15503998715234458475

namespace A058957

/-- `lt[1, A034178(n+1)]+1` -/
def P15503998715234458475.Spec : Prop :=
  ∀ n, (P15503998715234458475.a n : ℤ) = A058957 (n + 1)

end A058957

/-! ## A058957.P18091245210301805999

`lt[2, A112329(n+1)]+1`
-/

namespace A058957.P18091245210301805999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058957.P18091245210301805999

namespace A058957

/-- `lt[2, A112329(n+1)]+1` -/
def P18091245210301805999.Spec : Prop :=
  ∀ n, (P18091245210301805999.a n : ℤ) = A058957 (n + 1)

end A058957

/-! ## A058957.P15007142538852963583

`lt[4, A094572(n+1)]+1`
-/

namespace A058957.P15007142538852963583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094572 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058957.P15007142538852963583

namespace A058957

/-- `lt[4, A094572(n+1)]+1` -/
def P15007142538852963583.Spec : Prop :=
  ∀ n, (P15007142538852963583.a n : ℤ) = A058957 (n + 1)

end A058957

/-! ## A058957.P13458906158426324847

`lt[4, A048272(n+1)²]+1`
-/

namespace A058957.P13458906158426324847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058957.P13458906158426324847

namespace A058957

/-- `lt[4, A048272(n+1)²]+1` -/
def P13458906158426324847.Spec : Prop :=
  ∀ n, (P13458906158426324847.a n : ℤ) = A058957 (n + 1)

end A058957

/-! ## A058957.P5570680754215455892

`lt[0, A277894(A316631(n))]`
-/

namespace A058957.P5570680754215455892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 (A316631 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058957.P5570680754215455892

namespace A058957

/-- `lt[0, A277894(A316631(n))]` -/
def P5570680754215455892.Spec : Prop :=
  ∀ n, (P5570680754215455892.a n : ℤ) = A058957 (n + 1)

end A058957

/-! ## A058957.P18350617658316920693

`lt[1, A034178(A028310(n))]`
-/

namespace A058957.P18350617658316920693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058957.P18350617658316920693

namespace A058957

/-- `lt[1, A034178(A028310(n))]` -/
def P18350617658316920693.Spec : Prop :=
  ∀ n, (P18350617658316920693.a n : ℤ) = A058957 (n + 1)

end A058957

/-! ## A058957.P14296744844503969722

`lt[2, A332032(n+1)]+1`
-/

namespace A058957.P14296744844503969722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058957.P14296744844503969722

namespace A058957

/-- `lt[2, A332032(n+1)]+1` -/
def P14296744844503969722.Spec : Prop :=
  ∀ n, (P14296744844503969722.a n : ℤ) = A058957 (n + 1)

end A058957

/-! ## A058957.P14490674108545728964

`∪[A227650(n+1), A306102(n+1)]`
-/

namespace A058957.P14490674108545728964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A058957.P14490674108545728964

namespace A058957

/-- `∪[A227650(n+1), A306102(n+1)]` -/
def P14490674108545728964.Spec : Prop :=
  ∀ n, (P14490674108545728964.a n : ℤ) = A058957 (n + 1)

end A058957

/-!
# A058958: Numbers k such that 3^k + 4 is prime.

The programs for A058958, there is no canonical definition to state claims against.
-/

/-! ## A058958.P18051964126650821204

`eq[3, A381041(n)]`
-/

namespace A058958.P18051964126650821204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058958.P18051964126650821204

/-! ## A058958.P832010881027219005

`eq[3, A243095(A028310(n))]`
-/

namespace A058958.P832010881027219005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243095 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058958.P832010881027219005

/-! ## A058958.P17618076387855999654

`eq[3, A243095(A233583(n+1))]`
-/

namespace A058958.P17618076387855999654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243095 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058958.P17618076387855999654

/-! ## A058958.P14581775405149764770

`eq[3, A243095(A065033(2*n))]`
-/

namespace A058958.P14581775405149764770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243095 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058958.P14581775405149764770

/-! ## A058958.P10080235590165047515

`eq[3, A243095(A000007(n)+n)]`
-/

namespace A058958.P10080235590165047515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243095 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058958.P10080235590165047515

/-!
# A058962: a(n) = 2^(2*n)*(2*n+1).

The programs for A058962, the canonical program `A058962.P13237648842440734434` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058962 has offset 0).

The definition of A058962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n)*(2*n+1)` (program `A058962.P13237648842440734434`, by `A058962.P13237648842440734434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058962.P13237648842440734434

`2^(2*n)*(2*n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058962

/-- `2^(2*n)*(2*n+1)` -/
def P13237648842440734434.Spec : Prop :=
  ∀ n, (P13237648842440734434.a n : ℤ) = A058962 n

theorem P13237648842440734434.correct : P13237648842440734434.Spec := by
  intro n
  simp only [A058962]

end A058962

/-! ## A058962.P17749683032983754343

`8*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A058962.P17749683032983754343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  8 * a (n - 1) - 16 * a (n - 2)

end

end A058962.P17749683032983754343

namespace A058962

/-- `8*a(n-1)-16*a(n-2)` -/
def P17749683032983754343.Spec : Prop :=
  ∀ n, P17749683032983754343.a n = A058962 n

theorem P17749683032983754343.correct : P17749683032983754343.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A058962, Nat.add_sub_cancel, A058962.P17749683032983754343.a, A058962.P13237648842440734434.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A058962, Nat.add_sub_cancel, A058962.P17749683032983754343.a, A058962.P13237648842440734434.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058962

/-! ## A058962.P1492234615154377494

`lcm(4^n, Δ[n²])`
-/

namespace A058962.P1492234615154377494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 ^ n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A058962.P1492234615154377494

namespace A058962

/-- `lcm(4^n, Δ[n²])` -/
def P1492234615154377494.Spec : Prop :=
  ∀ n, (P1492234615154377494.a n : ℤ) = A058962 n

end A058962

/-! ## A058962.P12401721910235331900

`ogf((1+4x)/(1-8x+16x^2))`
-/

namespace A058962.P12401721910235331900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -8, 16] n

end

end A058962.P12401721910235331900

namespace A058962

/-- `ogf((1+4x)/(1-8x+16x^2))` -/
def P12401721910235331900.Spec : Prop :=
  ∀ n, P12401721910235331900.a n = A058962 n

end A058962

/-! ## A058962.P6492928279152895671

`record[lcm(2^n, xor(1, n))]`
-/

namespace A058962.P6492928279152895671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058962.P6492928279152895671

namespace A058962

/-- `record[lcm(2^n, xor(1, n))]` -/
def P6492928279152895671.Spec : Prop :=
  ∀ n, (P6492928279152895671.a n : ℤ) = A058962 n

end A058962

/-! ## A058962.P13290495404523437639

`record[(n+1)*(-2)^n]`
-/

namespace A058962.P13290495404523437639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058962.P13290495404523437639

namespace A058962

/-- `record[(n+1)*(-2)^n]` -/
def P13290495404523437639.Spec : Prop :=
  ∀ n, P13290495404523437639.a n = A058962 n

end A058962

/-! ## A058962.P7933094878184094192

`or(1, 2*n)/4^-n`
-/

namespace A058962.P7933094878184094192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A058962.P7933094878184094192

namespace A058962

/-- `or(1, 2*n)/4^-n` -/
def P7933094878184094192.Spec : Prop :=
  ∀ n, P7933094878184094192.a n = (A058962 n : ℚ)

end A058962

/-! ## A058962.P11387186779543766908

`xor(1, 2*n)/4^-n`
-/

namespace A058962.P11387186779543766908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A058962.P11387186779543766908

namespace A058962

/-- `xor(1, 2*n)/4^-n` -/
def P11387186779543766908.Spec : Prop :=
  ∀ n, P11387186779543766908.a n = (A058962 n : ℚ)

end A058962

/-! ## A058962.P4440778532367169363

`A288443(n)/2`
-/

namespace A058962.P4440778532367169363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288443 n : ℚ) / 2

end

end A058962.P4440778532367169363

namespace A058962

/-- `A288443(n)/2` -/
def P4440778532367169363.Spec : Prop :=
  ∀ n, P4440778532367169363.a n = (A058962 n : ℚ)

end A058962

/-! ## A058962.P7518918475592183060

`A001787(Δ[n²])`
-/

namespace A058962.P7518918475592183060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A058962.P7518918475592183060

namespace A058962

/-- `A001787(Δ[n²])` -/
def P7518918475592183060.Spec : Prop :=
  ∀ n, P7518918475592183060.a n = A058962 n

end A058962

/-! ## A058962.P8133479121237829349

`A014964(Δ[n²])`
-/

namespace A058962.P8133479121237829349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014964 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A058962.P8133479121237829349

namespace A058962

/-- `A014964(Δ[n²])` -/
def P8133479121237829349.Spec : Prop :=
  ∀ n, P8133479121237829349.a n = A058962 n

end A058962

/-! ## A058962.P5357480213618932657

`∑[A339252(2*n)]`
-/

namespace A058962.P5357480213618932657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058962.P5357480213618932657

namespace A058962

/-- `∑[A339252(2*n)]` -/
def P5357480213618932657.Spec : Prop :=
  ∀ n, P5357480213618932657.a n = A058962 n

end A058962

/-! ## A058962.P6367561266048534625

`A087323(2*n)+1`
-/

namespace A058962.P6367561266048534625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 (2 * n) + 1

end

end A058962.P6367561266048534625

namespace A058962

/-- `A087323(2*n)+1` -/
def P6367561266048534625.Spec : Prop :=
  ∀ n, P6367561266048534625.a n = A058962 n

end A058962

/-! ## A058962.P17772696041294392036

`A097067(2*(n+1))`
-/

namespace A058962.P17772696041294392036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (2 * (n + 1))

end

end A058962.P17772696041294392036

namespace A058962

/-- `A097067(2*(n+1))` -/
def P17772696041294392036.Spec : Prop :=
  ∀ n, P17772696041294392036.a n = A058962 n

end A058962

/-! ## A058962.P16828917657857843200

`A139756(2*(n+1))`
-/

namespace A058962.P16828917657857843200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (2 * (n + 1))

end

end A058962.P16828917657857843200

namespace A058962

/-- `A139756(2*(n+1))` -/
def P16828917657857843200.Spec : Prop :=
  ∀ n, P16828917657857843200.a n = A058962 n

end A058962

/-! ## A058962.P5171558674874129973

`(A098713(n)+1)/2`
-/

namespace A058962.P5171558674874129973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098713 n + 1 : ℚ) / 2

end

end A058962.P5171558674874129973

namespace A058962

/-- `(A098713(n)+1)/2` -/
def P5171558674874129973.Spec : Prop :=
  ∀ n, P5171558674874129973.a n = (A058962 n : ℚ)

end A058962

/-! ## A058962.P12369109090143448147

`A268898(n+1)/3`
-/

namespace A058962.P12369109090143448147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268898 (n + 1) : ℚ) / 3

end

end A058962.P12369109090143448147

namespace A058962

/-- `A268898(n+1)/3` -/
def P12369109090143448147.Spec : Prop :=
  ∀ n, P12369109090143448147.a n = (A058962 n : ℚ)

end A058962

/-! ## A058962.P17966086960930507357

`A005183(Δ[n²])-1`
-/

namespace A058962.P17966086960930507357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A058962.P17966086960930507357

namespace A058962

/-- `A005183(Δ[n²])-1` -/
def P17966086960930507357.Spec : Prop :=
  ∀ n, P17966086960930507357.a n = A058962 n

end A058962

/-! ## A058962.P17374577958164561804

`A036289(Δ[n²])/2`
-/

namespace A058962.P17374577958164561804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A058962.P17374577958164561804

namespace A058962

/-- `A036289(Δ[n²])/2` -/
def P17374577958164561804.Spec : Prop :=
  ∀ n, P17374577958164561804.a n = (A058962 n : ℚ)

end A058962

/-! ## A058962.P10389596214844490253

`A134401(Δ[n²])/2`
-/

namespace A058962.P10389596214844490253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134401 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A058962.P10389596214844490253

namespace A058962

/-- `A134401(Δ[n²])/2` -/
def P10389596214844490253.Spec : Prop :=
  ∀ n, P10389596214844490253.a n = (A058962 n : ℚ)

end A058962

/-!
# A058966: a(3) = 1, otherwise a(n) = n*2^(n-3) - 2^(n-2) - 2.

The programs for A058966, the canonical program `A058966.P8213914120730808587` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058966 has offset 3).

The definition of A058966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058966.P12146808932571274744

`abs((n+3)*2^n-2^(n+1)-2)`
-/

namespace A058966.P12146808932571274744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 3) * 2 ^ n : ℤ) - (2 ^ (n + 1) : ℤ) - 2|

end

end A058966.P12146808932571274744

namespace A058966

/-- `abs((n+3)*2^n-2^(n+1)-2)` -/
def P12146808932571274744.Spec : Prop :=
  ∀ n, P12146808932571274744.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P8213914120730808587

`5*a(n-1)-8*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=30`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058966

/-- `5*a(n-1)-8*a(n-2)+4*a(n-3)` -/
def P8213914120730808587.Spec : Prop :=
  ∀ n, P8213914120730808587.a n = A058966 (n + 3)

theorem P8213914120730808587.correct : P8213914120730808587.Spec := by
  intro n
  simp only [A058966, Nat.add_sub_cancel]

end A058966

/-! ## A058966.P9487113789200489203

`xor(1, (n+1)*2^n-1)`
-/

namespace A058966.P9487113789200489203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n + 1) * 2 ^ n : ℤ) - 1)

end

end A058966.P9487113789200489203

namespace A058966

/-- `xor(1, (n+1)*2^n-1)` -/
def P9487113789200489203.Spec : Prop :=
  ∀ n, P9487113789200489203.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P15606820321247018519

`2^n+2*a(n-1)+2` with `a(0)=1, a(1)=2`
-/

namespace A058966.P15606820321247018519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 ^ n + 2 * a (n - 1) + 2

end

end A058966.P15606820321247018519

namespace A058966

/-- `2^n+2*a(n-1)+2` -/
def P15606820321247018519.Spec : Prop :=
  ∀ n, (P15606820321247018519.a n : ℤ) = A058966 (n + 3)

end A058966

/-! ## A058966.P17958161666639694246

`(2/n+2)*(a(n-1)+2)-2` with `a(0)=1, a(1)=2`
-/

namespace A058966.P17958161666639694246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 / (n : ℚ) + 2) * (a (n - 1) + 2) - 2

end

end A058966.P17958161666639694246

namespace A058966

/-- `(2/n+2)*(a(n-1)+2)-2` -/
def P17958161666639694246.Spec : Prop :=
  ∀ n, P17958161666639694246.a n = (A058966 (n + 3) : ℚ)

end A058966

/-! ## A058966.P18098478375042052058

`∑[A001792(n-char[1])]`
-/

namespace A058966.P18098478375042052058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058966.P18098478375042052058

namespace A058966

/-- `∑[A001792(n-char[1])]` -/
def P18098478375042052058.Spec : Prop :=
  ∀ n, P18098478375042052058.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P6808194674443733276

`(n+1)*A171559(n)-2`
-/

namespace A058966.P6808194674443733276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A171559 n - 2

end

end A058966.P6808194674443733276

namespace A058966

/-- `(n+1)*A171559(n)-2` -/
def P6808194674443733276.Spec : Prop :=
  ∀ n, P6808194674443733276.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P11590750003713366160

`A001792(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A058966.P11590750003713366160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001792 n + a (n - 1)

end

end A058966.P11590750003713366160

namespace A058966

/-- `A001792(n)+a(n-1)` -/
def P11590750003713366160.Spec : Prop :=
  ∀ n, P11590750003713366160.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P4641790576295690545

`A049610(n+2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A058966.P4641790576295690545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A049610 (n + 2) + a (n - 1)

end

end A058966.P4641790576295690545

namespace A058966

/-- `A049610(n+2)+a(n-1)` -/
def P4641790576295690545.Spec : Prop :=
  ∀ n, P4641790576295690545.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P937599740483143353

`(n+1)*A239678(n+2)+n-1`
-/

namespace A058966.P937599740483143353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A239678 (n + 2) + ((n : ℤ) - 1)

end

end A058966.P937599740483143353

namespace A058966

/-- `(n+1)*A239678(n+2)+n-1` -/
def P937599740483143353.Spec : Prop :=
  ∀ n, P937599740483143353.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P11690851419284122362

`(n+1)*A240277(n+2)-(n+3)`
-/

namespace A058966.P11690851419284122362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A240277 (n + 2) - (n + 3 : ℤ)

end

end A058966.P11690851419284122362

namespace A058966

/-- `(n+1)*A240277(n+2)-(n+3)` -/
def P11690851419284122362.Spec : Prop :=
  ∀ n, P11690851419284122362.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P3232495541452611555

`A087323(n)-A158388(n)`
-/

namespace A058966.P3232495541452611555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n - A158388 n

end

end A058966.P3232495541452611555

namespace A058966

/-- `A087323(n)-A158388(n)` -/
def P3232495541452611555.Spec : Prop :=
  ∀ n, P3232495541452611555.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P14604470761140265498

`A239632(A004277(n)+1)-2`
-/

namespace A058966.P14604470761140265498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (A004277 n + 1).toNat - 2

end

end A058966.P14604470761140265498

namespace A058966

/-- `A239632(A004277(n)+1)-2` -/
def P14604470761140265498.Spec : Prop :=
  ∀ n, P14604470761140265498.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P8558768816240332187

`A239632(A004273(n)+2)-2`
-/

namespace A058966.P8558768816240332187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (A004273 n + 2).toNat - 2

end

end A058966.P8558768816240332187

namespace A058966

/-- `A239632(A004273(n)+2)-2` -/
def P8558768816240332187.Spec : Prop :=
  ∀ n, P8558768816240332187.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P17912120373418234339

`A153881(n+1)+A087323(n)`
-/

namespace A058966.P17912120373418234339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + A087323 n

end

end A058966.P17912120373418234339

namespace A058966

/-- `A153881(n+1)+A087323(n)` -/
def P17912120373418234339.Spec : Prop :=
  ∀ n, P17912120373418234339.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P17229342462313068990

`A134401(n)+A255047(n)-1`
-/

namespace A058966.P17229342462313068990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 n + (A255047 n - 1)

end

end A058966.P17229342462313068990

namespace A058966

/-- `A134401(n)+A255047(n)-1` -/
def P17229342462313068990.Spec : Prop :=
  ∀ n, P17229342462313068990.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P5379183691082686642

`A000038(n)+∑[A001792(n)]-2`
-/

namespace A058966.P5379183691082686642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A058966.P5379183691082686642

namespace A058966

/-- `A000038(n)+∑[A001792(n)]-2` -/
def P5379183691082686642.Spec : Prop :=
  ∀ n, P5379183691082686642.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P18064910914500248672

`∑[A001792(n)]+2*A057428(n)`
-/

namespace A058966.P18064910914500248672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A057428 n

end

end A058966.P18064910914500248672

namespace A058966

/-- `∑[A001792(n)]+2*A057428(n)` -/
def P18064910914500248672.Spec : Prop :=
  ∀ n, P18064910914500248672.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P3620365587066903312

`∑[A001792(n)]-2*A057427(n)`
-/

namespace A058966.P3620365587066903312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A057427 n

end

end A058966.P3620365587066903312

namespace A058966

/-- `∑[A001792(n)]-2*A057427(n)` -/
def P3620365587066903312.Spec : Prop :=
  ∀ n, P3620365587066903312.a n = A058966 (n + 3)

end A058966

/-! ## A058966.P17707253397146627897

`A113679(n+1)+A001787(n+1)`
-/

namespace A058966.P17707253397146627897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (n + 1) + A001787 (n + 1)

end

end A058966.P17707253397146627897

namespace A058966

/-- `A113679(n+1)+A001787(n+1)` -/
def P17707253397146627897.Spec : Prop :=
  ∀ n, P17707253397146627897.a n = A058966 (n + 3)

end A058966

/-!
# A058967: If n < 8 then A058966(n), else n*2^(n - 3) - 2*n - 50.

The programs for A058967, there is no canonical definition to state claims against.
-/

/-! ## A058967.P12003498490595503509

`xor(A087323(n), A088347(A235496(n)))`
-/

namespace A058967.P12003498490595503509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087323 n) (A088347 (A235496 n).toNat)

end

end A058967.P12003498490595503509

/-!
# A058968: a(n) = 2^n + 2^(n - 1) - n - 8.

The programs for A058968, the canonical program `A058968.P10462157645897289924` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058968 has offset 3).

The definition of A058968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+3)+2^(n+2)-(n+3)-8` (program `A058968.P10462157645897289924`, by `A058968.P10462157645897289924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058968.P10462157645897289924

`2^(n+3)+2^(n+2)-(n+3)-8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058968

/-- `2^(n+3)+2^(n+2)-(n+3)-8` -/
def P10462157645897289924.Spec : Prop :=
  ∀ n, P10462157645897289924.a n = A058968 (n + 3)

theorem P10462157645897289924.correct : P10462157645897289924.Spec := by
  intro n
  simp only [A058968, Nat.add_sub_cancel]

end A058968

/-! ## A058968.P1510871455018093554

`∑[ogf((1+8x-8x^2)/(1-3x+2x^2))]`
-/

namespace A058968.P1510871455018093554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -8] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058968.P1510871455018093554

namespace A058968

/-- `∑[ogf((1+8x-8x^2)/(1-3x+2x^2))]` -/
def P1510871455018093554.Spec : Prop :=
  ∀ n, P1510871455018093554.a n = A058968 (n + 3)

end A058968

/-! ## A058968.P5000246344033419268

`ogf((1+8x-8x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A058968.P5000246344033419268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -8] [1, -4, 5, -2] n

end

end A058968.P5000246344033419268

namespace A058968

/-- `ogf((1+8x-8x^2)/(1-4x+5x^2-2x^3))` -/
def P5000246344033419268.Spec : Prop :=
  ∀ n, P5000246344033419268.a n = A058968 (n + 3)

end A058968

/-! ## A058968.P10800811964898614502

`∑[2*a(n-1)+1]` with `a(0)=1, a(1)=11`
-/

namespace A058968.P10800811964898614502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058968.P10800811964898614502

namespace A058968

/-- `∑[2*a(n-1)+1]` -/
def P10800811964898614502.Spec : Prop :=
  ∀ n, (P10800811964898614502.a n : ℤ) = A058968 (n + 3)

end A058968

/-! ## A058968.P3857481227470893735

`∑[xor(2, ∑[2*a(n-1)])]` with `a(0)=3`
-/

namespace A058968.P3857481227470893735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058968.P3857481227470893735

namespace A058968

/-- `∑[xor(2, ∑[2*a(n-1)])]` -/
def P3857481227470893735.Spec : Prop :=
  ∀ n, (P3857481227470893735.a n : ℤ) = A058968 (n + 3)

end A058968

/-! ## A058968.P17530453315072487764

`abs(2*a(n-1)+9+n)` with `a(0)=1`
-/

namespace A058968.P17530453315072487764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 9 + n

end

end A058968.P17530453315072487764

namespace A058968

/-- `abs(2*a(n-1)+9+n)` -/
def P17530453315072487764.Spec : Prop :=
  ∀ n, (P17530453315072487764.a n : ℤ) = A058968 (n + 3)

theorem P17530453315072487764.correct : P17530453315072487764.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058968, Nat.add_sub_cancel, A058968.P17530453315072487764.a, A058968.P10462157645897289924.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058968, Nat.add_sub_cancel, A058968.P17530453315072487764.a, A058968.P10462157645897289924.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058968

/-! ## A058968.P2856839595059971028

`floor(2*a(n-1)+9+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058968.P2856839595059971028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 9 + n

end

end A058968.P2856839595059971028

namespace A058968

/-- `floor(2*a(n-1)+9+n)` -/
def P2856839595059971028.Spec : Prop :=
  ∀ n, (P2856839595059971028.a n : ℤ) = A058968 (n + 3)

theorem P2856839595059971028.correct : P2856839595059971028.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058968, Nat.add_sub_cancel, A058968.P2856839595059971028.a, A058968.P10462157645897289924.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058968, Nat.add_sub_cancel, A058968.P2856839595059971028.a, A058968.P10462157645897289924.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058968

/-! ## A058968.P7887487571799320495

`ceil(2*a(n-1)+9+n)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A058968.P7887487571799320495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 9 + n

end

end A058968.P7887487571799320495

namespace A058968

/-- `ceil(2*a(n-1)+9+n)` -/
def P7887487571799320495.Spec : Prop :=
  ∀ n, (P7887487571799320495.a n : ℤ) = A058968 (n + 3)

theorem P7887487571799320495.correct : P7887487571799320495.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058968, Nat.add_sub_cancel, A058968.P7887487571799320495.a, A058968.P10462157645897289924.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058968, Nat.add_sub_cancel, A058968.P7887487571799320495.a, A058968.P10462157645897289924.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058968

/-! ## A058968.P13629129779170978648

`round(2*a(n-1)+9+n)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A058968.P13629129779170978648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 9 + n

end

end A058968.P13629129779170978648

namespace A058968

/-- `round(2*a(n-1)+9+n)` -/
def P13629129779170978648.Spec : Prop :=
  ∀ n, (P13629129779170978648.a n : ℤ) = A058968 (n + 3)

theorem P13629129779170978648.correct : P13629129779170978648.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058968, Nat.add_sub_cancel, A058968.P13629129779170978648.a, A058968.P10462157645897289924.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058968, Nat.add_sub_cancel, A058968.P13629129779170978648.a, A058968.P10462157645897289924.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058968

/-! ## A058968.P1165615758012675401

`∑[xor(2, ∑[A007283(n)])]`
-/

namespace A058968.P1165615758012675401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058968.P1165615758012675401

namespace A058968

/-- `∑[xor(2, ∑[A007283(n)])]` -/
def P1165615758012675401.Spec : Prop :=
  ∀ n, P1165615758012675401.a n = A058968 (n + 3)

end A058968

/-! ## A058968.P12047939097807636553

`abs(4-∑[A033484(n+1)+1])`
-/

namespace A058968.P12047939097807636553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A058968.P12047939097807636553

namespace A058968

/-- `abs(4-∑[A033484(n+1)+1])` -/
def P12047939097807636553.Spec : Prop :=
  ∀ n, P12047939097807636553.a n = A058968 (n + 3)

end A058968

/-! ## A058968.P3676210116548894150

`∑[xor(2, ∑[A063759(2*n+1)])]`
-/

namespace A058968.P3676210116548894150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058968.P3676210116548894150

namespace A058968

/-- `∑[xor(2, ∑[A063759(2*n+1)])]` -/
def P3676210116548894150.Spec : Prop :=
  ∀ n, P3676210116548894150.a n = A058968 (n + 3)

end A058968

/-! ## A058968.P10708987358505658022

`∑[A052955(A004442(A103517(n)))]`
-/

namespace A058968.P10708987358505658022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004442 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058968.P10708987358505658022

namespace A058968

/-- `∑[A052955(A004442(A103517(n)))]` -/
def P10708987358505658022.Spec : Prop :=
  ∀ n, P10708987358505658022.a n = A058968 (n + 3)

end A058968

/-!
# A058970: Denominators of expansion of a function eta(x) related to Cremer points.

The programs for A058970, there is no canonical definition to state claims against.
-/

/-! ## A058970.P1278184507832638717

`A001316(or(A006858(n), A055998(n)))`
-/

namespace A058970.P1278184507832638717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.lor (A006858 n) (A055998 n)).toNat

end

end A058970.P1278184507832638717

/-! ## A058970.P2021139158589816984

`A001316(A176362(n+1)-A238241(n))`
-/

namespace A058970.P2021139158589816984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A176362 (n + 1) - A238241 n).toNat

end

end A058970.P2021139158589816984

/-! ## A058970.P4047225881233265162

`A130065(2^n*comp[3*n])`
-/

namespace A058970.P4047225881233265162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (2 ^ n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A058970.P4047225881233265162

/-! ## A058970.P12933002707059396703

`A061142((xor(n, floor(n/2))+1)*2^n)`
-/

namespace A058970.P12933002707059396703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 ((Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1) * (2 ^ n : ℤ)).toNat

end

end A058970.P12933002707059396703

/-! ## A058970.P4095472524063485603

`A061142(2^n*A110882(n))`
-/

namespace A058970.P4095472524063485603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 ((2 ^ n : ℤ) * A110882 n).toNat

end

end A058970.P4095472524063485603

/-!
# A058974: a(n) = 0 if n = 1 or a prime, otherwise a(n) = s + a(s) iterated until no change occurs, where s (A008472) is sum of distinct primes dividing n.

The programs for A058974, there is no canonical definition to state claims against.
-/

/-! ## A058974.P16607714797123458549

`A061376((n+1)^3)%(n+1)`
-/

namespace A058974.P16607714797123458549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061376 ((n + 1) ^ 3)) (n + 1 : ℤ)

end

end A058974.P16607714797123458549

/-! ## A058974.P15015638533387705187

`A061376(A048671(n+1)^3)`
-/

namespace A058974.P15015638533387705187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061376 (A048671 (n + 1) ^ 3).toNat

end

end A058974.P15015638533387705187

/-! ## A058974.P10453607908144325721

`A061376(n+1)/A290971(2*n+1)!`
-/

namespace A058974.P10453607908144325721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061376 (n + 1) : ℚ) / (Nat.factorial (A290971 (2 * n + 1)).toNat : ℚ)

end

end A058974.P10453607908144325721

/-! ## A058974.P10573503785688336537

`A061376(n+1)+A000007(A001248(n+1))`
-/

namespace A058974.P10573503785688336537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061376 (n + 1) + A000007 (A001248 (n + 1)).toNat

end

end A058974.P10573503785688336537

/-! ## A058974.P248583493101752536

`A061376(n+1)+A000122(A003373(n+1))`
-/

namespace A058974.P248583493101752536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061376 (n + 1) + A000122 (A003373 (n + 1)).toNat

end

end A058974.P248583493101752536

/-!
# A058977: For a rational number p/q let f(p/q) = sum of distinct prime factors (A008472) of p+q divided by number of distinct prime factors (A001221) of p+q; a(n) is obtained by iterating f, starting at n/1, until an integer is reached, or if no integer is ever reached then a(n) = 0.

The programs for A058977, there is no canonical definition to state claims against.
-/

/-! ## A058977.P7280791213300955450

`A337246(A337246(n+2)^A337763(n))`
-/

namespace A058977.P7280791213300955450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337246 (SequenceMachineLib.roundAway ((A337246 (n + 2) : ℚ) ^ (A337763 n : ℤ))).toNat

end

end A058977.P7280791213300955450

/-! ## A058977.P256355116119181911

`A008472(A337246(n+2)^A334954(2*n+1))`
-/

namespace A058977.P256355116119181911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((A337246 (n + 2) : ℚ) ^ (A334954 (2 * n + 1) : ℤ))).toNat

end

end A058977.P256355116119181911

/-! ## A058977.P11989591688117836869

`A337246(A337246(n+2)^A038548(3*n+1))`
-/

namespace A058977.P11989591688117836869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337246 (SequenceMachineLib.roundAway ((A337246 (n + 2) : ℚ) ^ (A038548 (3 * n + 1) : ℤ))).toNat

end

end A058977.P11989591688117836869

/-! ## A058977.P8015779453884072901

`A337246(A337246(n+2)^∑[char[4*n]])`
-/

namespace A058977.P8015779453884072901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337246 (A337246 (n + 2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A058977.P8015779453884072901

/-!
# A058978: Minimal number of (non-consecutive) Fibonacci numbers needed to get n by addition and subtraction.

The programs for A058978, there is no canonical definition to state claims against.
-/

/-! ## A058978.P10235034311149542224

`A214973(A256662(n+1))`
-/

namespace A058978.P10235034311149542224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214973 (A256662 (n + 1)).toNat

end

end A058978.P10235034311149542224

/-! ## A058978.P14588944658109774304

`A105446(n+1)-char[A038764(3*n+4)]`
-/

namespace A058978.P14588944658109774304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A058978.P14588944658109774304

/-! ## A058978.P2009125924378718570

`A105446(n-char[79*n]*A188171(n+1)+1)`
-/

namespace A058978.P2009125924378718570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  79 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A188171 (n + 1) + 1).toNat

end

end A058978.P2009125924378718570

/-! ## A058978.P15511731415636593505

`A105446(n+1)-A335446(A318274(n))`
-/

namespace A058978.P15511731415636593505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (n + 1) - A335446 (A318274 n).toNat

end

end A058978.P15511731415636593505

/-! ## A058978.P13399000384445251446

`A105446(n+1)-A063665(A000217(n+1))`
-/

namespace A058978.P13399000384445251446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (n + 1) - A063665 (A000217 (n + 1)).toNat

end

end A058978.P13399000384445251446

/-! ## A058978.P18079346029198171660

`A105446(n+1)-A185118(A034380(n+1))`
-/

namespace A058978.P18079346029198171660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (n + 1) - A185118 (A034380 (n + 1)).toNat

end

end A058978.P18079346029198171660

/-! ## A058978.P4748889583858566475

`A105446(n+1)-A025428(A252459(n+3))`
-/

namespace A058978.P4748889583858566475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (n + 1) - A025428 (A252459 (n + 3)).toNat

end

end A058978.P4748889583858566475

/-! ## A058978.P2283485607694504459

`A105446(n+1)-A185246(A000720(3*(n+1)))`
-/

namespace A058978.P2283485607694504459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (n + 1) - A185246 (A000720 (3 * (n + 1))).toNat

end

end A058978.P2283485607694504459

/-!
# A058979: Number of numbers m such that phi(m) = 4n.

The programs for A058979, there is no canonical definition to state claims against.
-/

/-! ## A058979.P18285883904483612108

`A014197(4*(n+1))`
-/

namespace A058979.P18285883904483612108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (4 * (n + 1))

end

end A058979.P18285883904483612108

/-! ## A058979.P11126038524515266911

`A032446(2*(n+1))`
-/

namespace A058979.P11126038524515266911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * (n + 1))

end

end A058979.P11126038524515266911

/-! ## A058979.P3079101860649113702

`or(char[1], A032446(Δ[n²+n]))`
-/

namespace A058979.P3079101860649113702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A032446 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

end

end A058979.P3079101860649113702

/-! ## A058979.P254059175589457906

`∑{d}[A032446(Δ[n²+n]), A000010(#)]`
-/

namespace A058979.P254059175589457906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A058979.P254059175589457906

/-! ## A058979.P4006060183837530456

`A032446(A005843(n+1))+A000035(A005843(n+1))`
-/

namespace A058979.P4006060183837530456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (A005843 (n + 1)).toNat + A000035 (A005843 (n + 1)).toNat

end

end A058979.P4006060183837530456

/-!
# A058980: Positive numbers of form 4*k such that card(invphi(4*k)) = 0 (the nontotients congruent to 0 modulo 4).

The programs for A058980, the canonical program `A058980.P1253605902020111693` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058980 has offset 1).

The definition of A058980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058980.P1253605902020111693

`∩[4*n, A005277(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A058980

/-- `∩[4*n, A005277(n+1)]` -/
def P1253605902020111693.Spec : Prop :=
  ∀ n, (P1253605902020111693.a n : ℤ) = A058980 (n + 1)

theorem P1253605902020111693.correct : P1253605902020111693.Spec := by
  intro n
  simp only [A058980, Nat.add_sub_cancel]

end A058980

/-! ## A058980.P10578363404504980882

`∩[A005277(n+1), A136724(n+1)]`
-/

namespace A058980.P10578363404504980882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P10578363404504980882

namespace A058980

/-- `∩[A005277(n+1), A136724(n+1)]` -/
def P10578363404504980882.Spec : Prop :=
  ∀ n, (P10578363404504980882.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P4257414934646157201

`∩[A005277(n+1), A173035(n)]`
-/

namespace A058980.P4257414934646157201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173035 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P4257414934646157201

namespace A058980

/-- `∩[A005277(n+1), A173035(n)]` -/
def P4257414934646157201.Spec : Prop :=
  ∀ n, (P4257414934646157201.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P9579435160306133194

`∩[A005277(n+1), A192544(n+1)]`
-/

namespace A058980.P9579435160306133194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P9579435160306133194

namespace A058980

/-- `∩[A005277(n+1), A192544(n+1)]` -/
def P9579435160306133194.Spec : Prop :=
  ∀ n, (P9579435160306133194.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P3979479151430977787

`filter[A008574(n), A355451(#)]`
-/

namespace A058980.P3979479151430977787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A058980.P3979479151430977787

namespace A058980

/-- `filter[A008574(n), A355451(#)]` -/
def P3979479151430977787.Spec : Prop :=
  ∀ n, P3979479151430977787.a n = A058980 (n + 1)

end A058980

/-! ## A058980.P15520383888403033715

`∩[A005277(n+1), A008574(n)]`
-/

namespace A058980.P15520383888403033715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P15520383888403033715

namespace A058980

/-- `∩[A005277(n+1), A008574(n)]` -/
def P15520383888403033715.Spec : Prop :=
  ∀ n, (P15520383888403033715.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P4984023049148985321

`∩[A005277(n+1), A008586(n)]`
-/

namespace A058980.P4984023049148985321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P4984023049148985321

namespace A058980

/-- `∩[A005277(n+1), A008586(n)]` -/
def P4984023049148985321.Spec : Prop :=
  ∀ n, (P4984023049148985321.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P3754633250830784761

`∩[A005277(n+1), A265046(n)]`
-/

namespace A058980.P3754633250830784761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P3754633250830784761

namespace A058980

/-- `∩[A005277(n+1), A265046(n)]` -/
def P3754633250830784761.Spec : Prop :=
  ∀ n, (P3754633250830784761.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P3333322154619950731

`∩[A005277(n+1), A336705(n)]`
-/

namespace A058980.P3333322154619950731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P3333322154619950731

namespace A058980

/-- `∩[A005277(n+1), A336705(n)]` -/
def P3333322154619950731.Spec : Prop :=
  ∀ n, (P3333322154619950731.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P12088652811746155219

`∩[A005277(n+1), A337120(n)]`
-/

namespace A058980.P12088652811746155219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337120 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P12088652811746155219

namespace A058980

/-- `∩[A005277(n+1), A337120(n)]` -/
def P12088652811746155219.Spec : Prop :=
  ∀ n, (P12088652811746155219.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P8014543167599406781

`∩[A005277(n+1), A102211(n+1)]`
-/

namespace A058980.P8014543167599406781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P8014543167599406781

namespace A058980

/-- `∩[A005277(n+1), A102211(n+1)]` -/
def P8014543167599406781.Spec : Prop :=
  ∀ n, (P8014543167599406781.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P7278535147152692301

`∩[2*A079695(n+1), 4*n]`
-/

namespace A058980.P7278535147152692301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079695 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A058980.P7278535147152692301

namespace A058980

/-- `∩[2*A079695(n+1), 4*n]` -/
def P7278535147152692301.Spec : Prop :=
  ∀ n, (P7278535147152692301.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P363925440668209846

`filter[A005277(n+1), A073089(#)]`
-/

namespace A058980.P363925440668209846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A058980.P363925440668209846

namespace A058980

/-- `filter[A005277(n+1), A073089(#)]` -/
def P363925440668209846.Spec : Prop :=
  ∀ n, P363925440668209846.a n = A058980 (n + 1)

end A058980

/-! ## A058980.P12349442735168582702

`filter[A005277(n+1), A121262(#)]`
-/

namespace A058980.P12349442735168582702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A058980.P12349442735168582702

namespace A058980

/-- `filter[A005277(n+1), A121262(#)]` -/
def P12349442735168582702.Spec : Prop :=
  ∀ n, P12349442735168582702.a n = A058980 (n + 1)

end A058980

/-! ## A058980.P11743512888988928222

`filter[A005277(n+1), A152822(#)]`
-/

namespace A058980.P11743512888988928222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A058980.P11743512888988928222

namespace A058980

/-- `filter[A005277(n+1), A152822(#)]` -/
def P11743512888988928222.Spec : Prop :=
  ∀ n, P11743512888988928222.a n = A058980 (n + 1)

end A058980

/-! ## A058980.P15497637022045052962

`filter[A005277(n+1), A319710(#)]`
-/

namespace A058980.P15497637022045052962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A058980.P15497637022045052962

namespace A058980

/-- `filter[A005277(n+1), A319710(#)]` -/
def P15497637022045052962.Spec : Prop :=
  ∀ n, P15497637022045052962.a n = A058980 (n + 1)

end A058980

/-! ## A058980.P13791684141044179187

`filter[A005277(n+1), A353494(#)]`
-/

namespace A058980.P13791684141044179187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A058980.P13791684141044179187

namespace A058980

/-- `filter[A005277(n+1), A353494(#)]` -/
def P13791684141044179187.Spec : Prop :=
  ∀ n, P13791684141044179187.a n = A058980 (n + 1)

end A058980

/-! ## A058980.P14298022141298341739

`filter[A005277(n+1), A358680(#)]`
-/

namespace A058980.P14298022141298341739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A058980.P14298022141298341739

namespace A058980

/-- `filter[A005277(n+1), A358680(#)]` -/
def P14298022141298341739.Spec : Prop :=
  ∀ n, P14298022141298341739.a n = A058980 (n + 1)

end A058980

/-! ## A058980.P15997478018287213416

`2*∩[A079695(n+1), A004277(n)]`
-/

namespace A058980.P15997478018287213416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P15997478018287213416

namespace A058980

/-- `2*∩[A079695(n+1), A004277(n)]` -/
def P15997478018287213416.Spec : Prop :=
  ∀ n, (P15997478018287213416.a n : ℤ) = A058980 (n + 1)

end A058980

/-! ## A058980.P3666764779614828388

`∩[A005277(n+1), A086133(n+1)]`
-/

namespace A058980.P3666764779614828388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P3666764779614828388

namespace A058980

/-- `∩[A005277(n+1), A086133(n+1)]` -/
def P3666764779614828388.Spec : Prop :=
  ∀ n, (P3666764779614828388.a n : ℤ) = A058980 (n + 1)

end A058980

/-!
# A058982: Increasing values of the Improperly Reduced Fibonacci Sequence (A058981).

The programs for A058982, there is no canonical definition to state claims against.
-/

/-! ## A058982.P5169272068322956543

`record[A058981(n)]`
-/

namespace A058982.P5169272068322956543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058982.P5169272068322956543

/-! ## A058982.P10997637354876310608

`A058981(A058983(n))`
-/

namespace A058982.P10997637354876310608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058981 (A058983 n).toNat

end

end A058982.P10997637354876310608

/-! ## A058982.P17711521816814648924

`record[A259153(record[A369916(n+1)])]`
-/

namespace A058982.P17711521816814648924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058982.P17711521816814648924

/-! ## A058982.P8683109842693536762

`eq[A003415(n), A051903(A017980(n))]`
-/

namespace A058982.P8683109842693536762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A017980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058982.P8683109842693536762

/-! ## A058982.P17101767789465329969

`eq[A226762(A327759(n+1)), A327766(n)]`
-/

namespace A058982.P17101767789465329969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A327759 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058982.P17101767789465329969

/-!
# A058984: Number of partitions of n in which number of parts is not 2.

The programs for A058984, there is no canonical definition to state claims against.
-/

/-! ## A058984.P11962108912956862290

`A000041(n)-floor(n/2)`
-/

namespace A058984.P11962108912956862290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ⌊(n : ℚ) / 2⌋

end

end A058984.P11962108912956862290

/-! ## A058984.P17100199011026384893

`A117995(n)+a(n-1)` with `a(0)=1`
-/

namespace A058984.P17100199011026384893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117995 n + a (n - 1)

end

end A058984.P17100199011026384893

/-! ## A058984.P13209102703055947145

`∑[A002865(n)]-(∑[char[2*n]]-1)`
-/

namespace A058984.P13209102703055947145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

end

end A058984.P13209102703055947145

/-! ## A058984.P16074727960125576257

`A004250(A028310(n))+1`
-/

namespace A058984.P16074727960125576257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (A028310 n).toNat + 1

end

end A058984.P16074727960125576257

/-! ## A058984.P185850130130894737

`A133041(n)-A032766(n)`
-/

namespace A058984.P185850130130894737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - A032766 n

end

end A058984.P185850130130894737

/-! ## A058984.P16313379105189110674

`A065033(n)+A000094(n+1)`
-/

namespace A058984.P16313379105189110674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A000094 (n + 1)

end

end A058984.P16313379105189110674

/-! ## A058984.P18223908384049211076

`A000065(n)+1-A004526(n)`
-/

namespace A058984.P18223908384049211076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A004526 n)

end

end A058984.P18223908384049211076

/-! ## A058984.P6294966736113420281

`A000065(n)+2-A008619(n)`
-/

namespace A058984.P6294966736113420281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (2 - A008619 n)

end

end A058984.P6294966736113420281

/-! ## A058984.P14640258194288086650

`A000041(n)+n-A032766(n)`
-/

namespace A058984.P14640258194288086650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (n : ℤ) - A032766 n

end

end A058984.P14640258194288086650

/-! ## A058984.P13056000163078419170

`A133041(n)-(A004526(n)+n)`
-/

namespace A058984.P13056000163078419170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A004526 n + (n : ℤ))

end

end A058984.P13056000163078419170

/-! ## A058984.P8165112526820477840

`n²+A000041(n)-A035608(n)`
-/

namespace A058984.P8165112526820477840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A000041 n - A035608 n)

end

end A058984.P8165112526820477840

/-! ## A058984.P10107123337476501288

`∑[A002865(n)+A000035(n)]-n`
-/

namespace A058984.P10107123337476501288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A058984.P10107123337476501288

/-! ## A058984.P16783853580377556390

`A128422(n+1)+A000041(n)-A337484(n+1)`
-/

namespace A058984.P16783853580377556390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (n + 1) + (A000041 n - A337484 (n + 1))

end

end A058984.P16783853580377556390

/-! ## A058984.P668949678999517509

`∑[A117995(n+1)]+1-A117995(n+1)`
-/

namespace A058984.P668949678999517509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A117995 (n + 1))

end

end A058984.P668949678999517509

/-! ## A058984.P15983148100651958006

`ceil((A139582(n)-n)/2)`
-/

namespace A058984.P15983148100651958006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139582 n - (n : ℤ) : ℚ) / 2⌉

end

end A058984.P15983148100651958006

/-! ## A058984.P11080195928818943273

`A035363(2*n)-A004526(n)`
-/

namespace A058984.P11080195928818943273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A004526 n

end

end A058984.P11080195928818943273

/-! ## A058984.P17047373219980064680

`A035363(2*n)-A140106(n+2)`
-/

namespace A058984.P17047373219980064680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A140106 (n + 2)

end

end A058984.P17047373219980064680

/-! ## A058984.P18191645825609004104

`A119620(2*n)-A002265(2*n)`
-/

namespace A058984.P18191645825609004104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A002265 (2 * n)

end

end A058984.P18191645825609004104

/-! ## A058984.P11980121006547434548

`A035363(2*n)+A110654(n)-n`
-/

namespace A058984.P11980121006547434548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) + (A110654 n - (n : ℤ))

end

end A058984.P11980121006547434548

/-! ## A058984.P17219961843214153691

`A035363(2*n)+1-A065033(n+1)`
-/

namespace A058984.P17219961843214153691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) + (1 - A065033 (n + 1))

end

end A058984.P17219961843214153691

/-!
# A058985: a(n) = 6 + 33*n + 6*binomial(n, 2) - 28*binomial(n, 3) + 20*binomial(n, 4) - 47*binomial(n, 5).

The programs for A058985, the canonical program `A058985.P17407091298122236970` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058985 has offset 0).

The definition of A058985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6+33*n+6*C(n, 2)-28*C(n, 3)+20*C(n, 4)-47*C(n, 5)` (program `A058985.P17407091298122236970`, by `A058985.P17407091298122236970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058985.P17407091298122236970

`6+33*n+6*C(n, 2)-28*C(n, 3)+20*C(n, 4)-47*C(n, 5)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058985

/-- `6+33*n+6*C(n, 2)-28*C(n, 3)+20*C(n, 4)-47*C(n, 5)` -/
def P17407091298122236970.Spec : Prop :=
  ∀ n, P17407091298122236970.a n = A058985 n

theorem P17407091298122236970.correct : P17407091298122236970.Spec := by
  intro n
  simp only [A058985]

end A058985

/-!
# A058987: a(n) = Catalan(n) - Motzkin(n-1).

The programs for A058987, the canonical program `A058987.P11261467021102399372` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058987 has offset 1).

The definition of A058987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058987.P11261467021102399372

`A000108(n+1)-A001006(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058987

/-- `A000108(n+1)-A001006(n)` -/
def P11261467021102399372.Spec : Prop :=
  ∀ n, P11261467021102399372.a n = A058987 (n + 1)

theorem P11261467021102399372.correct : P11261467021102399372.Spec := by
  intro n
  simp only [A058987, Nat.add_sub_cancel]

end A058987

/-! ## A058987.P15007422720528304983

`A153008(n)+A000245(n)`
-/

namespace A058987.P15007422720528304983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153008 n + A000245 n

end

end A058987.P15007422720528304983

namespace A058987

/-- `A153008(n)+A000245(n)` -/
def P15007422720528304983.Spec : Prop :=
  ∀ n, P15007422720528304983.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P2970804985726402408

`A106640(n)-A005043(n)`
-/

namespace A058987.P2970804985726402408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106640 n - A005043 n

end

end A058987.P2970804985726402408

namespace A058987

/-- `A106640(n)-A005043(n)` -/
def P2970804985726402408.Spec : Prop :=
  ∀ n, P2970804985726402408.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P4574074720662385778

`∑[A071724(n)]-A001006(n)`
-/

namespace A058987.P4574074720662385778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001006 n

end

end A058987.P4574074720662385778

namespace A058987

/-- `∑[A071724(n)]-A001006(n)` -/
def P4574074720662385778.Spec : Prop :=
  ∀ n, P4574074720662385778.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P14103332898348643163

`record[A097331(n)]-A001006(n)`
-/

namespace A058987.P14103332898348643163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001006 n

end

end A058987.P14103332898348643163

namespace A058987

/-- `record[A097331(n)]-A001006(n)` -/
def P14103332898348643163.Spec : Prop :=
  ∀ n, P14103332898348643163.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P17507617800084367436

`record[A126120(n)]-A001006(n)`
-/

namespace A058987.P17507617800084367436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001006 n

end

end A058987.P17507617800084367436

namespace A058987

/-- `record[A126120(n)]-A001006(n)` -/
def P17507617800084367436.Spec : Prop :=
  ∀ n, P17507617800084367436.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P7365154409070281501

`record[A120588(n)-A168049(n)]`
-/

namespace A058987.P7365154409070281501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n - A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058987.P7365154409070281501

namespace A058987

/-- `record[A120588(n)-A168049(n)]` -/
def P7365154409070281501.Spec : Prop :=
  ∀ n, P7365154409070281501.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P2961048698032981080

`A153008(n+1)+A002026(n)`
-/

namespace A058987.P2961048698032981080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153008 (n + 1) + A002026 n

end

end A058987.P2961048698032981080

namespace A058987

/-- `A153008(n+1)+A002026(n)` -/
def P2961048698032981080.Spec : Prop :=
  ∀ n, P2961048698032981080.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P9272812736095041250

`A120588(n+2)-A001006(n)`
-/

namespace A058987.P9272812736095041250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2) - A001006 n

end

end A058987.P9272812736095041250

namespace A058987

/-- `A120588(n+2)-A001006(n)` -/
def P9272812736095041250.Spec : Prop :=
  ∀ n, P9272812736095041250.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P5393397544643214992

`A026008(2*n)-A001006(n)`
-/

namespace A058987.P5393397544643214992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n) - A001006 n

end

end A058987.P5393397544643214992

namespace A058987

/-- `A026008(2*n)-A001006(n)` -/
def P5393397544643214992.Spec : Prop :=
  ∀ n, P5393397544643214992.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P14799969103638837471

`abs(A168491(n+1))-A001006(n)`
-/

namespace A058987.P14799969103638837471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 1)| - A001006 n

end

end A058987.P14799969103638837471

namespace A058987

/-- `abs(A168491(n+1))-A001006(n)` -/
def P14799969103638837471.Spec : Prop :=
  ∀ n, P14799969103638837471.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P9094183556135308780

`A000108(n+1)-Δ[A097332(n)]`
-/

namespace A058987.P9094183556135308780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - (f1 (n + 1) - f1 n)

end

end A058987.P9094183556135308780

namespace A058987

/-- `A000108(n+1)-Δ[A097332(n)]` -/
def P9094183556135308780.Spec : Prop :=
  ∀ n, P9094183556135308780.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P4934255747233719363

`A168051(n+2)+A000108(n+1)`
-/

namespace A058987.P4934255747233719363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 2) + A000108 (n + 1)

end

end A058987.P4934255747233719363

namespace A058987

/-- `A168051(n+2)+A000108(n+1)` -/
def P4934255747233719363.Spec : Prop :=
  ∀ n, P4934255747233719363.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P14240905913556045481

`A292440(n+2)+A000108(n+1)`
-/

namespace A058987.P14240905913556045481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 2) + A000108 (n + 1)

end

end A058987.P14240905913556045481

namespace A058987

/-- `A292440(n+2)+A000108(n+1)` -/
def P14240905913556045481.Spec : Prop :=
  ∀ n, P14240905913556045481.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P1560987639256997813

`A000108(n+1)-A086246(n+2)`
-/

namespace A058987.P1560987639256997813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A086246 (n + 2)

end

end A058987.P1560987639256997813

namespace A058987

/-- `A000108(n+1)-A086246(n+2)` -/
def P1560987639256997813.Spec : Prop :=
  ∀ n, P1560987639256997813.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P17948097903642014582

`A000108(n+1)-A168049(n+2)`
-/

namespace A058987.P17948097903642014582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A168049 (n + 2)

end

end A058987.P17948097903642014582

namespace A058987

/-- `A000108(n+1)-A168049(n+2)` -/
def P17948097903642014582.Spec : Prop :=
  ∀ n, P17948097903642014582.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P16146215513849769353

`A126120(2*(n+1))-A001006(n)`
-/

namespace A058987.P16146215513849769353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * (n + 1)) - A001006 n

end

end A058987.P16146215513849769353

namespace A058987

/-- `A126120(2*(n+1))-A001006(n)` -/
def P16146215513849769353.Spec : Prop :=
  ∀ n, P16146215513849769353.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P9451810385149554797

`A097331(2*n+3)-A001006(n)`
-/

namespace A058987.P9451810385149554797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 3) - A001006 n

end

end A058987.P9451810385149554797

namespace A058987

/-- `A097331(2*n+3)-A001006(n)` -/
def P9451810385149554797.Spec : Prop :=
  ∀ n, P9451810385149554797.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P2710912409602331727

`abs(A168491(n+1)+A166587(n+1))`
-/

namespace A058987.P2710912409602331727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 1) + A166587 (n + 1)|

end

end A058987.P2710912409602331727

namespace A058987

/-- `abs(A168491(n+1)+A166587(n+1))` -/
def P2710912409602331727.Spec : Prop :=
  ∀ n, P2710912409602331727.a n = A058987 (n + 1)

end A058987

/-! ## A058987.P17236688325193125345

`A000108(n+1)-abs(A166587(n+1))`
-/

namespace A058987.P17236688325193125345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - |A166587 (n + 1)|

end

end A058987.P17236688325193125345

namespace A058987

/-- `A000108(n+1)-abs(A166587(n+1))` -/
def P17236688325193125345.Spec : Prop :=
  ∀ n, P17236688325193125345.a n = A058987 (n + 1)

end A058987

/-!
# A058989: Largest number of consecutive integers such that each is divisible by a prime <= the n-th prime.

The programs for A058989, there is no canonical definition to state claims against.
-/

/-! ## A058989.P4199024360315185205

`A048670(n+1)-1`
-/

namespace A058989.P4199024360315185205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048670 (n + 1) - 1

end

end A058989.P4199024360315185205

/-! ## A058989.P6259241057353596713

`A014681(A048670(n+1))`
-/

namespace A058989.P6259241057353596713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A048670 (n + 1)).toNat

end

end A058989.P6259241057353596713

/-! ## A058989.P3595524365535009115

`record[A048670(A134478(n))-1]`
-/

namespace A058989.P3595524365535009115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048670 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058989.P3595524365535009115

/-! ## A058989.P13778336328262838980

`record[A048670(A286626(n))-1]`
-/

namespace A058989.P13778336328262838980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048670 (A286626 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058989.P13778336328262838980

/-! ## A058989.P14732736169032918537

`record[A048670(A328395(n))-1]`
-/

namespace A058989.P14732736169032918537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048670 (A328395 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058989.P14732736169032918537

/-! ## A058989.P16774766299065969023

`record[A048670(A328397(n))-1]`
-/

namespace A058989.P16774766299065969023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048670 (A328397 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058989.P16774766299065969023

/-! ## A058989.P15236868658355931409

`record[A048670(A328399(n))-1]`
-/

namespace A058989.P15236868658355931409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048670 (A328399 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058989.P15236868658355931409

/-! ## A058989.P6976312294858583132

`A023444(A048670(n+1)+1)`
-/

namespace A058989.P6976312294858583132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A048670 (n + 1) + 1).toNat

end

end A058989.P6976312294858583132

/-! ## A058989.P14155977852876284215

`A065164(A048670(n+1)+1)`
-/

namespace A058989.P14155977852876284215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A048670 (n + 1) + 1).toNat

end

end A058989.P14155977852876284215

/-! ## A058989.P6496843136748570660

`A171950(A048670(n+1)+1)`
-/

namespace A058989.P6496843136748570660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A048670 (n + 1) + 1).toNat

end

end A058989.P6496843136748570660

/-!
# A058992: Gossip Problem: there are n people and each of them knows some item of gossip not known to the others. They communicate by telephone and whenever one person calls another, they tell each other all that they know at that time. How many calls are required before each gossip knows everything?

The programs for A058992, the canonical program `A058992.P3288272267061037836` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058992 has offset 1).

The definition of A058992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058992.P3288272267061037836

`comp[record[xor(1, n+3)]]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058992

/-- `comp[record[xor(1, n+3)]]` -/
def P3288272267061037836.Spec : Prop :=
  ∀ n, (P3288272267061037836.a n : ℤ) = A058992 (n + 1)

theorem P3288272267061037836.correct : P3288272267061037836.Spec := by
  intro n
  simp only [A058992, Nat.add_sub_cancel]

end A058992

/-!
# A058994: Numbers m such that 7^m reversed is prime.

The programs for A058994, there is no canonical definition to state claims against.
-/

/-! ## A058994.P16304606040409340703

`A097825(A000602(3*(n+1)))*A134376(n+1)`
-/

namespace A058994.P16304606040409340703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097825 (A000602 (3 * (n + 1))).toNat * A134376 (n + 1)

end

end A058994.P16304606040409340703

/-!
# A058998: Least exponent k for which n^k reversed (leading zeros are not allowed) is a prime, or 0 if impossible.

The programs for A058998, there is no canonical definition to state claims against.
-/

/-! ## A058998.P13347818097669489414

`A085324(A199343(n)%(n+3))`
-/

namespace A058998.P13347818097669489414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085324 (Int.tmod (A199343 n) (n + 3 : ℤ)).toNat

end

end A058998.P13347818097669489414

/-! ## A058998.P14381066315763200333

`Δ[A028904(n)]*A085324(n+1)`
-/

namespace A058998.P14381066315763200333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A085324 (n + 1)

end

end A058998.P14381066315763200333

/-! ## A058998.P14948399522187297916

`Δ[A081600(n)]*A085324(n+1)`
-/

namespace A058998.P14948399522187297916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A085324 (n + 1)

end

end A058998.P14948399522187297916

/-! ## A058998.P4458865658985749464

`lcm(Δ[A179081(n)], A085324(n+1))`
-/

namespace A058998.P4458865658985749464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A085324 (n + 1))

end

end A058998.P4458865658985749464

/-! ## A058998.P5489244032242790907

`A085324(n+1)*A168184(n+1)`
-/

namespace A058998.P5489244032242790907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085324 (n + 1) * A168184 (n + 1)

end

end A058998.P5489244032242790907

/-! ## A058998.P16121803785617162839

`A000007(A083910(n+1))*A085324(n+1)`
-/

namespace A058998.P16121803785617162839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A083910 (n + 1)).toNat * A085324 (n + 1)

end

end A058998.P16121803785617162839

/-! ## A058998.P4158900768090379235

`A085324(n+1)%A008486(A074157(n+1))`
-/

namespace A058998.P4158900768090379235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085324 (n + 1)) (A008486 (A074157 (n + 1)).toNat)

end

end A058998.P4158900768090379235

/-!
# A058999: Primes p such that x^17 = 2 has no solution mod p.

The programs for A058999, there is no canonical definition to state claims against.
-/

/-! ## A058999.P18026743188098883455

`p?[A051552(2*(n+1))*A151978(2*(n+1))]`
-/

namespace A058999.P18026743188098883455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051552 (2 * (n + 1)) * A151978 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058999.P18026743188098883455

