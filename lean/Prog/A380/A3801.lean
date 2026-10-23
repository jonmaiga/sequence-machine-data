import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A380101: Numbers k such that omega(k-th triangular number) = 2, where omega = A001221.

The programs for A380101, the canonical program `A380101.P1884681769082390554` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380101 has offset 1).

The definition of A380101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380101.P1884681769082390554

`eq[2, A069903(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A380101

/-- `eq[2, A069903(n+1)]+1` -/
def P1884681769082390554.Spec : Prop :=
  ∀ n, (P1884681769082390554.a n : ℤ) = A380101 (n + 1)

theorem P1884681769082390554.correct : P1884681769082390554.Spec := by
  intro n
  simp only [A380101, Nat.add_sub_cancel]

end A380101

/-! ## A380101.P1220523493023209863

`eq[2, A061395(A278253(n+1))]+1`
-/

namespace A380101.P1220523493023209863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A278253 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380101.P1220523493023209863

namespace A380101

/-- `eq[2, A061395(A278253(n+1))]+1` -/
def P1220523493023209863.Spec : Prop :=
  ∀ n, (P1220523493023209863.a n : ℤ) = A380101 (n + 1)

end A380101

/-! ## A380101.P13906331112433895244

`eq[2, A001221(C(n+2, 2))]+1`
-/

namespace A380101.P13906331112433895244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380101.P13906331112433895244

namespace A380101

/-- `eq[2, A001221(C(n+2, 2))]+1` -/
def P13906331112433895244.Spec : Prop :=
  ∀ n, (P13906331112433895244.a n : ℤ) = A380101 (n + 1)

end A380101

/-! ## A380101.P16801871024503099724

`eq[2, A001221(A179865(n+1))]`
-/

namespace A380101.P16801871024503099724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380101.P16801871024503099724

namespace A380101

/-- `eq[2, A001221(A179865(n+1))]` -/
def P16801871024503099724.Spec : Prop :=
  ∀ n, (P16801871024503099724.a n : ℤ) = A380101 (n + 1)

end A380101

/-! ## A380101.P3233189190712378792

`eq[2, A001221(A000217(n+1))]+1`
-/

namespace A380101.P3233189190712378792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380101.P3233189190712378792

namespace A380101

/-- `eq[2, A001221(A000217(n+1))]+1` -/
def P3233189190712378792.Spec : Prop :=
  ∀ n, (P3233189190712378792.a n : ℤ) = A380101 (n + 1)

end A380101

/-!
# A380105: Perimeter-magic triangles of order 3 with magic sum n, bracelet symmetry, and minimum term 1.

The programs for A380105, there is no canonical definition to state claims against.
-/

/-! ## A380105.P1283849808788940026

`A380853(n+9)-A380853(n+6)`
-/

namespace A380105.P1283849808788940026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380853 (n + 9) - A380853 (n + 6)

end

end A380105.P1283849808788940026

/-!
# A380106: a(1) = 0; for n >= 1, if there exists an m < n such that a(m) = a(n), take the largest such m and let a(n+1) be the number of runs in the subsequence a(m)..a(n-1). Otherwise, a(n+1) = 0.

The programs for A380106, there is no canonical definition to state claims against.
-/

/-! ## A380106.P10435262346435423049

`A029931(A181391(n+1))%A295771(n)`
-/

namespace A380106.P10435262346435423049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029931 (A181391 (n + 1)).toNat) (A295771 n)

end

end A380106.P10435262346435423049

/-! ## A380106.P6616004631113975759

`A171917(n+2)-A171894(A171869(n+4))`
-/

namespace A380106.P6616004631113975759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 (n + 2) - A171894 (A171869 (n + 4)).toNat

end

end A380106.P6616004631113975759

/-! ## A380106.P4131588237492113655

`A333355(A000010(n+1)^A333359(n+1))`
-/

namespace A380106.P4131588237492113655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333355 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) ^ (A333359 (n + 1) : ℤ))).toNat

end

end A380106.P4131588237492113655

/-! ## A380106.P18117022473943229007

`A353853(A181391(n+1)%A119752(n+1))`
-/

namespace A380106.P18117022473943229007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (Int.tmod (A181391 (n + 1)) (A119752 (n + 1))).toNat

end

end A380106.P18117022473943229007

/-! ## A380106.P8978457953947512810

`A181391(n+1)-A000035(A389995(2*(n+2)))`
-/

namespace A380106.P8978457953947512810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1) - A000035 (A389995 (2 * (n + 2))).toNat

end

end A380106.P8978457953947512810

/-!
# A380107: a(1) = 0; for n >= 1, if there exists an m < n such that a(m) = a(n), take the largest such m and let a(n+1) be the number of distinct runs in the subsequence a(m)..a(n-1). Otherwise, a(n+1) = 0.

The programs for A380107, there is no canonical definition to state claims against.
-/

/-! ## A380107.P10378954665297369771

`and(A090739(n+1), A129308(n!/floor(n/2)!²))`
-/

namespace A380107.P10378954665297369771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090739 (n + 1)) (A129308 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ))).toNat)

end

end A380107.P10378954665297369771

/-! ## A380107.P10158077075669588720

`and(A302939(n+3), A342915(A182098(3*(n+1))+1))`
-/

namespace A380107.P10158077075669588720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A302939 (n + 3)) (A342915 (A182098 (3 * (n + 1)) + 1).toNat)

end

end A380107.P10158077075669588720

/-! ## A380107.P15402254952869611607

`and(A082116(n), A250193(A209660(n)))`
-/

namespace A380107.P15402254952869611607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082116 n) (A250193 (A209660 n).toNat)

end

end A380107.P15402254952869611607

/-! ## A380107.P15989401893839304697

`and(A181391(n+1), A318464(A353850(2*n)))`
-/

namespace A380107.P15989401893839304697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181391 (n + 1)) (A318464 (A353850 (2 * n)).toNat)

end

end A380107.P15989401893839304697

/-! ## A380107.P926199370160805270

`and(A098550(A098886(n+5)), A181391(n+1))`
-/

namespace A380107.P926199370160805270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098550 (A098886 (n + 5)).toNat) (A181391 (n + 1))

end

end A380107.P926199370160805270

/-!
# A380108: Number of distinct partitions of length n binary strings into maximal constant substrings up to permutation.

The programs for A380108, there is no canonical definition to state claims against.
-/

/-! ## A380108.P3360740664145206943

`2*A342528(n)-A114921(n)`
-/

namespace A380108.P3360740664145206943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342528 n - A114921 n

end

end A380108.P3360740664145206943

/-! ## A380108.P913078898240363004

`A001523(n+1)+A001523(n+1)-A000712(n)`
-/

namespace A380108.P913078898240363004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (n + 1) + (A001523 (n + 1) - A000712 n)

end

end A380108.P913078898240363004

/-! ## A380108.P14706862395846516877

`A000712(n+1)-(A114921(n+1)+A000712(n))`
-/

namespace A380108.P14706862395846516877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 1) - (A114921 (n + 1) + A000712 n)

end

end A380108.P14706862395846516877

/-! ## A380108.P10526671068464939321

`A005843(A342528(n))-A114921(n)`
-/

namespace A380108.P10526671068464939321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A342528 n).toNat - A114921 n

end

end A380108.P10526671068464939321

/-! ## A380108.P6766185779311052367

`A137735(A261384(n)-1)`
-/

namespace A380108.P6766185779311052367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A261384 n - 1).toNat

end

end A380108.P6766185779311052367

/-!
# A380110: In the base 4 expansion of n: map 0->0, 1->1, 2->1, 3->2.

The programs for A380110, the canonical program `A380110.P5586239892308066860` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380110 has offset 0).

The definition of A380110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380110.P5586239892308066860

`n-A063695(n)/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A380110

/-- `n-A063695(n)/2` -/
def P5586239892308066860.Spec : Prop :=
  ∀ n, P5586239892308066860.a n = (A380110 n : ℚ)

end A380110

/-! ## A380110.P15297552615636386497

`(A063694(n)+n)/2`
-/

namespace A380110.P15297552615636386497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063694 n + (n : ℤ) : ℚ) / 2

end

end A380110.P15297552615636386497

namespace A380110

/-- `(A063694(n)+n)/2` -/
def P15297552615636386497.Spec : Prop :=
  ∀ n, P15297552615636386497.a n = (A380110 n : ℚ)

end A380110

/-! ## A380110.P15495138891103939593

`(A057300(n)+n)/3`
-/

namespace A380110.P15495138891103939593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057300 n + (n : ℤ) : ℚ) / 3

end

end A380110.P15495138891103939593

namespace A380110

/-- `(A057300(n)+n)/3` -/
def P15495138891103939593.Spec : Prop :=
  ∀ n, P15495138891103939593.a n = (A380110 n : ℚ)

end A380110

/-! ## A380110.P7376049395763793072

`n-xor(n, A163241(n))`
-/

namespace A380110.P7376049395763793072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A163241 n)

end

end A380110.P7376049395763793072

namespace A380110

/-- `n-xor(n, A163241(n))` -/
def P7376049395763793072.Spec : Prop :=
  ∀ n, P7376049395763793072.a n = A380110 n

end A380110

/-! ## A380110.P8482529134188888978

`n-A000695(A059906(n))`
-/

namespace A380110.P8482529134188888978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000695 (A059906 n).toNat

end

end A380110.P8482529134188888978

namespace A380110

/-- `n-A000695(A059906(n))` -/
def P8482529134188888978.Spec : Prop :=
  ∀ n, P8482529134188888978.a n = A380110 n

end A380110

/-! ## A380110.P5130773628327191485

`n-A063694(A004526(n))`
-/

namespace A380110.P5130773628327191485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A063694 (A004526 n).toNat

end

end A380110.P5130773628327191485

namespace A380110

/-- `n-A063694(A004526(n))` -/
def P5130773628327191485.Spec : Prop :=
  ∀ n, P5130773628327191485.a n = A380110 n

end A380110

/-! ## A380110.P3237558099316631574

`n-A004526(A063695(n))`
-/

namespace A380110.P3237558099316631574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A063695 n).toNat

end

end A380110.P3237558099316631574

namespace A380110

/-- `n-A004526(A063695(n))` -/
def P3237558099316631574.Spec : Prop :=
  ∀ n, P3237558099316631574.a n = A380110 n

end A380110

/-! ## A380110.P10472900583019849819

`A057300(n)-A063694(n)`
-/

namespace A380110.P10472900583019849819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n - A063694 n

end

end A380110.P10472900583019849819

namespace A380110

/-- `A057300(n)-A063694(n)` -/
def P10472900583019849819.Spec : Prop :=
  ∀ n, P10472900583019849819.a n = A380110 n

end A380110

/-! ## A380110.P13559831224736567492

`and(A004468(n), A163241(n))`
-/

namespace A380110.P13559831224736567492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004468 n) (A163241 n)

end

end A380110.P13559831224736567492

namespace A380110

/-- `and(A004468(n), A163241(n))` -/
def P13559831224736567492.Spec : Prop :=
  ∀ n, P13559831224736567492.a n = A380110 n

end A380110

/-! ## A380110.P9202014108109730669

`(A063695(n)+A004514(n))/2`
-/

namespace A380110.P9202014108109730669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063695 n + A004514 n : ℚ) / 2

end

end A380110.P9202014108109730669

namespace A380110

/-- `(A063695(n)+A004514(n))/2` -/
def P9202014108109730669.Spec : Prop :=
  ∀ n, P9202014108109730669.a n = (A380110 n : ℚ)

end A380110

/-! ## A380110.P4332084152791419155

`A057300(n)+A063695(n)-n`
-/

namespace A380110.P4332084152791419155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n + (A063695 n - (n : ℤ))

end

end A380110.P4332084152791419155

namespace A380110

/-- `A057300(n)+A063695(n)-n` -/
def P4332084152791419155.Spec : Prop :=
  ∀ n, P4332084152791419155.a n = A380110 n

end A380110

/-! ## A380110.P17774619741146551731

`n+1-A225381(A090569(n+1))`
-/

namespace A380110.P17774619741146551731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A225381 (A090569 (n + 1)).toNat

end

end A380110.P17774619741146551731

namespace A380110

/-- `n+1-A225381(A090569(n+1))` -/
def P17774619741146551731.Spec : Prop :=
  ∀ n, P17774619741146551731.a n = A380110 n

end A380110

/-! ## A380110.P5532342835119609531

`A057300(n)-A000695(A059905(n))`
-/

namespace A380110.P5532342835119609531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n - A000695 (A059905 n).toNat

end

end A380110.P5532342835119609531

namespace A380110

/-- `A057300(n)-A000695(A059905(n))` -/
def P5532342835119609531.Spec : Prop :=
  ∀ n, P5532342835119609531.a n = A380110 n

end A380110

/-! ## A380110.P6831365033514850110

`A057300(n)-xor(A004468(n), A057300(n))`
-/

namespace A380110.P6831365033514850110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n - Int.xor (A004468 n) (A057300 n)

end

end A380110.P6831365033514850110

namespace A380110

/-- `A057300(n)-xor(A004468(n), A057300(n))` -/
def P6831365033514850110.Spec : Prop :=
  ∀ n, P6831365033514850110.a n = A380110 n

end A380110

/-! ## A380110.P16105236095806259003

`xor(A004468(n), A063694(n))-A063694(n)`
-/

namespace A380110.P16105236095806259003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A063694 n) - A063694 n

end

end A380110.P16105236095806259003

namespace A380110

/-- `xor(A004468(n), A063694(n))-A063694(n)` -/
def P16105236095806259003.Spec : Prop :=
  ∀ n, P16105236095806259003.a n = A380110 n

end A380110

/-! ## A380110.P14457750413909906590

`A004525(A063694(n)+n)`
-/

namespace A380110.P14457750413909906590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A063694 n + (n : ℤ)).toNat

end

end A380110.P14457750413909906590

namespace A380110

/-- `A004525(A063694(n)+n)` -/
def P14457750413909906590.Spec : Prop :=
  ∀ n, P14457750413909906590.a n = A380110 n

end A380110

/-! ## A380110.P17988044299060397417

`A004526(A063694(n)+n)`
-/

namespace A380110.P17988044299060397417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063694 n + (n : ℤ)).toNat

end

end A380110.P17988044299060397417

namespace A380110

/-- `A004526(A063694(n)+n)` -/
def P17988044299060397417.Spec : Prop :=
  ∀ n, P17988044299060397417.a n = A380110 n

end A380110

/-! ## A380110.P5856079048038470125

`A004526(A063695(n)+A004514(n))`
-/

namespace A380110.P5856079048038470125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063695 n + A004514 n).toNat

end

end A380110.P5856079048038470125

namespace A380110

/-- `A004526(A063695(n)+A004514(n))` -/
def P5856079048038470125.Spec : Prop :=
  ∀ n, P5856079048038470125.a n = A380110 n

end A380110

/-! ## A380110.P6760033903366491370

`2*n-A303787(A023729(n+1))`
-/

namespace A380110.P6760033903366491370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A303787 (A023729 (n + 1)).toNat

end

end A380110.P6760033903366491370

namespace A380110

/-- `2*n-A303787(A023729(n+1))` -/
def P6760033903366491370.Spec : Prop :=
  ∀ n, P6760033903366491370.a n = A380110 n

end A380110

/-! ## A380110.P18319016756485663993

`A289831(A037463(n))`
-/

namespace A380110.P18319016756485663993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A037463 n).toNat

end

end A380110.P18319016756485663993

namespace A380110

/-- `A289831(A037463(n))` -/
def P18319016756485663993.Spec : Prop :=
  ∀ n, P18319016756485663993.a n = A380110 n

end A380110

/-!
# A380112: Lexicographically earliest infinite sequence of positive integers whose XOR difference triangle contains only distinct values.

The programs for A380112, there is no canonical definition to state claims against.
-/

/-! ## A380112.P16563055588475689187

`A378141(∑[floor(n/8)!])`
-/

namespace A380112.P16563055588475689187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 8⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380112.P16563055588475689187

/-! ## A380112.P9557348520355297724

`A378141(A067080(n+4)-3)`
-/

namespace A380112.P9557348520355297724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378141 (A067080 (n + 4) - 3).toNat

end

end A380112.P9557348520355297724

/-! ## A380112.P17972239415937376394

`filter[A378141(n+1), A109720(#)]`
-/

namespace A380112.P17972239415937376394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A380112.P17972239415937376394

/-! ## A380112.P13695841940558293220

`filter[A378141(n+1), A188470(#)]`
-/

namespace A380112.P13695841940558293220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188470 (f1 j).toNat = 1) n)

end

end A380112.P13695841940558293220

/-! ## A380112.P11237155250520645423

`A378141(∑[A000142(floor(n/8))])`
-/

namespace A380112.P11237155250520645423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ⌊(n : ℚ) / 8⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378141 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A380112.P11237155250520645423

/-!
# A380113: Triangle read by rows: The inverse matrix of the central factorials A370707, row n normalized by (-1)^(n - k)*A370707(n, n).

The programs for A380113, the canonical program `A380113.P2900189167819423770` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380113 has offset 0).

The definition of A380113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380113.P2900189167819423770

`A110608(n)/A132749(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A380113

/-- `A110608(n)/A132749(n)` -/
def P2900189167819423770.Spec : Prop :=
  ∀ n, P2900189167819423770.a n = (A380113 n : ℚ)

end A380113

/-! ## A380113.P13817997462583776230

`A128413(n)/A130321(n)`
-/

namespace A380113.P13817997462583776230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128413 n : ℚ) / (A130321 n : ℚ)

end

end A380113.P13817997462583776230

namespace A380113

/-- `A128413(n)/A130321(n)` -/
def P13817997462583776230.Spec : Prop :=
  ∀ n, P13817997462583776230.a n = (A380113 n : ℚ)

end A380113

/-! ## A380113.P15205137230227964156

`A094527(n)/A128417(n)*A128413(n)`
-/

namespace A380113.P15205137230227964156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094527 n : ℚ) / (A128417 n : ℚ) * (A128413 n : ℚ)

end

end A380113.P15205137230227964156

namespace A380113

/-- `A094527(n)/A128417(n)*A128413(n)` -/
def P15205137230227964156.Spec : Prop :=
  ∀ n, P15205137230227964156.a n = (A380113 n : ℚ)

end A380113

/-! ## A380113.P13507243282273952181

`A110162(n)/A128414(n)*A128413(n)`
-/

namespace A380113.P13507243282273952181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110162 n : ℚ) / (A128414 n : ℚ) * (A128413 n : ℚ)

end

end A380113.P13507243282273952181

namespace A380113

/-- `A110162(n)/A128414(n)*A128413(n)` -/
def P13507243282273952181.Spec : Prop :=
  ∀ n, P13507243282273952181.a n = (A380113 n : ℚ)

end A380113

/-! ## A380113.P11518798956744946291

`A008311(A061885(n))`
-/

namespace A380113.P11518798956744946291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (A061885 n).toNat

end

end A380113.P11518798956744946291

namespace A380113

/-- `A008311(A061885(n))` -/
def P11518798956744946291.Spec : Prop :=
  ∀ n, P11518798956744946291.a n = A380113 n

end A380113

/-! ## A380113.P697376650593416325

`A127673(A061579(n))`
-/

namespace A380113.P697376650593416325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127673 (A061579 n).toNat

end

end A380113.P697376650593416325

namespace A380113

/-- `A127673(A061579(n))` -/
def P697376650593416325.Spec : Prop :=
  ∀ n, P697376650593416325.a n = A380113 n

end A380113

/-! ## A380113.P12296982163078053909

`A273943(A380120(n))`
-/

namespace A380113.P12296982163078053909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A380120 n).toNat

end

end A380113.P12296982163078053909

namespace A380113

/-- `A273943(A380120(n))` -/
def P12296982163078053909.Spec : Prop :=
  ∀ n, P12296982163078053909.a n = A380113 n

end A380113

/-! ## A380113.P13557659865509832874

`A127673(A038722(n+1)-1)`
-/

namespace A380113.P13557659865509832874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127673 (A038722 (n + 1) - 1).toNat

end

end A380113.P13557659865509832874

namespace A380113

/-- `A127673(A038722(n+1)-1)` -/
def P13557659865509832874.Spec : Prop :=
  ∀ n, P13557659865509832874.a n = A380113 n

end A380113

/-! ## A380113.P10976290709883083991

`A380120(n)/A036452(n+1)`
-/

namespace A380113.P10976290709883083991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380120 n : ℚ) / (A036452 (n + 1) : ℚ)

end

end A380113.P10976290709883083991

namespace A380113

/-- `A380120(n)/A036452(n+1)` -/
def P10976290709883083991.Spec : Prop :=
  ∀ n, P10976290709883083991.a n = (A380113 n : ℚ)

end A380113

/-!
# A380114: Triangle read by rows: The convolution triangle of 2^n, where the convolution triangle of a sequence is defined in A357368.

The programs for A380114, the canonical program `A380114.P703305606341716703` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380114 has offset 0).

The definition of A380114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380114.P703305606341716703

`A097805(n)*A137688(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A380114

/-- `A097805(n)*A137688(n)` -/
def P703305606341716703.Spec : Prop :=
  ∀ n, P703305606341716703.a n = A380114 n

theorem P703305606341716703.correct : P703305606341716703.Spec := by
  intro n
  simp only [A380114]

end A380114

/-! ## A380114.P1377189537522525520

`Δ[A007664(n)]*A097805(n)`
-/

namespace A380114.P1377189537522525520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097805 n

end

end A380114.P1377189537522525520

namespace A380114

/-- `Δ[A007664(n)]*A097805(n)` -/
def P1377189537522525520.Spec : Prop :=
  ∀ n, P1377189537522525520.a n = A380114 n

end A380114

/-! ## A380114.P3457498260064627935

`A130453(n+1)*A198792(n)`
-/

namespace A380114.P3457498260064627935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130453 (n + 1) * A198792 n

end

end A380114.P3457498260064627935

namespace A380114

/-- `A130453(n+1)*A198792(n)` -/
def P3457498260064627935.Spec : Prop :=
  ∀ n, P3457498260064627935.a n = A380114 n

end A380114

/-! ## A380114.P3244578518856198000

`A000079(comp[∑[n]]%(n+2))*A097805(n)`
-/

namespace A380114.P3244578518856198000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2)) * A097805 n

end

end A380114.P3244578518856198000

namespace A380114

/-- `A000079(comp[∑[n]]%(n+2))*A097805(n)` -/
def P3244578518856198000.Spec : Prop :=
  ∀ n, P3244578518856198000.a n = A380114 n

end A380114

/-! ## A380114.P17739431001709852265

`A000079(A003056(n))*A097805(n)`
-/

namespace A380114.P17739431001709852265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat * A097805 n

end

end A380114.P17739431001709852265

namespace A380114

/-- `A000079(A003056(n))*A097805(n)` -/
def P17739431001709852265.Spec : Prop :=
  ∀ n, P17739431001709852265.a n = A380114 n

end A380114

/-! ## A380114.P18078450053465105065

`A097805(n)*A102363(A057944(n))`
-/

namespace A380114.P18078450053465105065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A102363 (A057944 n).toNat

end

end A380114.P18078450053465105065

namespace A380114

/-- `A097805(n)*A102363(A057944(n))` -/
def P18078450053465105065.Spec : Prop :=
  ∀ n, P18078450053465105065.a n = A380114 n

end A380114

/-! ## A380114.P2413095074949401461

`A000007(n)+A110552(n+1)-A071919(n)`
-/

namespace A380114.P2413095074949401461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A110552 (n + 1) - A071919 n)

end

end A380114.P2413095074949401461

namespace A380114

/-- `A000007(n)+A110552(n+1)-A071919(n)` -/
def P2413095074949401461.Spec : Prop :=
  ∀ n, P2413095074949401461.a n = A380114 n

end A380114

/-!
# A380115: a(n) = max{A380114(n, k) : k = 0..n}.

The programs for A380115, there is no canonical definition to state claims against.
-/

/-! ## A380115.P4345795059548473179

`2*(n-1)*a(n-1)/floor(n/2)` with `a(0)=1, a(1)=2`
-/

namespace A380115.P4345795059548473179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (((n : ℤ) - 1 : ℚ) * (a (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ)))

end

end A380115.P4345795059548473179

/-! ## A380115.P16425208779233324366

`ceil(A304940(n)/2)`
-/

namespace A380115.P16425208779233324366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304940 n : ℚ) / 2⌉

end

end A380115.P16425208779233324366

/-! ## A380115.P15545359307590379727

`2^n*A210736(n)`
-/

namespace A380115.P15545359307590379727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A210736 n

end

end A380115.P15545359307590379727

/-! ## A380115.P10292519660279712805

`ceil(2^(n-1))*A063886(n)`
-/

namespace A380115.P10292519660279712805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A063886 n

end

end A380115.P10292519660279712805

/-! ## A380115.P1514165411365532713

`2^n*A007318(∑[and(n, -2)])`
-/

namespace A380115.P1514165411365532713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A380115.P1514165411365532713

/-!
# A380116: a(n) = Sum_{k=0..n} A011971(n, k)*k. The Aitken-Bell triangle considered as a linear transform applied to the nonnegative numbers.

The programs for A380116, there is no canonical definition to state claims against.
-/

/-! ## A380116.P4046185612717347764

`A278677(n)-A005493(n)`
-/

namespace A380116.P4046185612717347764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278677 n - A005493 n

end

end A380116.P4046185612717347764

/-! ## A380116.P18086733372177421669

`A278677(n)-∑[A011965(n)]`
-/

namespace A380116.P18086733372177421669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278677 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380116.P18086733372177421669

/-!
# A380117: a(n) = n - A380118(n).

The programs for A380117, the canonical program `A380117.P852758399818597968` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380117 has offset 1).

The definition of A380117 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380118, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380117.P852758399818597968

`n+1-A380118(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A380117

/-- `n+1-A380118(n+1)` -/
def P852758399818597968.Spec : Prop :=
  ∀ n, P852758399818597968.a n = A380117 (n + 1)

theorem P852758399818597968.correct : P852758399818597968.Spec := by
  intro n
  simp only [A380117, Nat.add_sub_cancel]

end A380117

/-! ## A380117.P9308152723411687702

`∑[(∏{p}[n+1, #+1]-(n+1))%ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A380117.P9308152723411687702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ) - (n + 1 : ℤ)) ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f3 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380117.P9308152723411687702

namespace A380117

/-- `∑[(∏{p}[n+1, #+1]-(n+1))%ceil((n+1)/∏{p}[n+1, (n+1)/#])]` -/
def P9308152723411687702.Spec : Prop :=
  ∀ n, P9308152723411687702.a n = A380117 (n + 1)

end A380117

/-! ## A380117.P4448570432285711012

`n-∑[A182936(n+1)]`
-/

namespace A380117.P4448570432285711012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380117.P4448570432285711012

namespace A380117

/-- `n-∑[A182936(n+1)]` -/
def P4448570432285711012.Spec : Prop :=
  ∀ n, P4448570432285711012.a n = A380117 (n + 1)

end A380117

/-! ## A380117.P2505552281803389688

`n-∑[A014963(n+1)%(n+1)]`
-/

namespace A380117.P2505552281803389688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380117.P2505552281803389688

namespace A380117

/-- `n-∑[A014963(n+1)%(n+1)]` -/
def P2505552281803389688.Spec : Prop :=
  ∀ n, P2505552281803389688.a n = A380117 (n + 1)

end A380117

/-! ## A380117.P14227597149640691824

`∑[A325313(n+1)%ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A380117.P14227597149640691824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325313 (n + 1)) ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380117.P14227597149640691824

namespace A380117

/-- `∑[A325313(n+1)%ceil((n+1)/∏{p}[n+1, (n+1)/#])]` -/
def P14227597149640691824.Spec : Prop :=
  ∀ n, P14227597149640691824.a n = A380117 (n + 1)

end A380117

/-! ## A380117.P2142804603299869779

`∑[A325313(n+1)%A014963(n+1)]`
-/

namespace A380117.P2142804603299869779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325313 (n + 1)) (A014963 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380117.P2142804603299869779

namespace A380117

/-- `∑[A325313(n+1)%A014963(n+1)]` -/
def P2142804603299869779.Spec : Prop :=
  ∀ n, P2142804603299869779.a n = A380117 (n + 1)

end A380117

/-!
# A380118: a(n) = Sum_{k=1..n} (A014963(k) - A061397(k)).

The programs for A380118, the canonical program `A380118.P5292018243931778813` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380118 has offset 1).

The definition of A380118 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A072107, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380118.P5292018243931778813

`A072107(n+1)-A034387(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A380118

/-- `A072107(n+1)-A034387(n+1)` -/
def P5292018243931778813.Spec : Prop :=
  ∀ n, P5292018243931778813.a n = A380118 (n + 1)

theorem P5292018243931778813.correct : P5292018243931778813.Spec := by
  intro n
  simp only [A380118, Nat.add_sub_cancel]

end A380118

/-! ## A380118.P13820856571444458158

`∑[ceil((n+1)/∏{p}[n+1, (n+1)/#])%(n+1)]+1`
-/

namespace A380118.P13820856571444458158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉ (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A380118.P13820856571444458158

namespace A380118

/-- `∑[ceil((n+1)/∏{p}[n+1, (n+1)/#])%(n+1)]+1` -/
def P13820856571444458158.Spec : Prop :=
  ∀ n, P13820856571444458158.a n = A380118 (n + 1)

end A380118

/-! ## A380118.P6686842184248259404

`∑[A182936(n+1)]+1`
-/

namespace A380118.P6686842184248259404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A380118.P6686842184248259404

namespace A380118

/-- `∑[A182936(n+1)]+1` -/
def P6686842184248259404.Spec : Prop :=
  ∀ n, P6686842184248259404.a n = A380118 (n + 1)

end A380118

/-! ## A380118.P17782379294280019356

`1-A380117(n+1)+n`
-/

namespace A380118.P17782379294280019356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A380117 (n + 1) + (n : ℤ)

end

end A380118.P17782379294280019356

namespace A380118

/-- `1-A380117(n+1)+n` -/
def P17782379294280019356.Spec : Prop :=
  ∀ n, P17782379294280019356.a n = A380118 (n + 1)

end A380118

/-! ## A380118.P2679890484632143445

`∑[A014963(n+1)%(n+1)]+1`
-/

namespace A380118.P2679890484632143445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A380118.P2679890484632143445

namespace A380118

/-- `∑[A014963(n+1)%(n+1)]+1` -/
def P2679890484632143445.Spec : Prop :=
  ∀ n, P2679890484632143445.a n = A380118 (n + 1)

end A380118

/-! ## A380118.P17967949076837285304

`∑[ceil((n+1)/∏{p}[n+1, (n+1)/#])%A151800(n)]`
-/

namespace A380118.P17967949076837285304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉ (A151800 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380118.P17967949076837285304

namespace A380118

/-- `∑[ceil((n+1)/∏{p}[n+1, (n+1)/#])%A151800(n)]` -/
def P17967949076837285304.Spec : Prop :=
  ∀ n, P17967949076837285304.a n = A380118 (n + 1)

end A380118

/-!
# A380120: Triangle read by rows: T(n, k) is the number of walks of length n on the Z X Z grid with unit steps in all four directions (NSWE) starting at (0, 0). k is the absolute value of the x-coordinate of the endpoint of the walk.

The programs for A380120, there is no canonical definition to state claims against.
-/

/-! ## A380120.P17735806163397116124

`A094527(n)*A238303(n)`
-/

namespace A380120.P17735806163397116124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A238303 n

end

end A380120.P17735806163397116124

/-! ## A380120.P6145996201455664351

`A036452(n+1)*A380113(n)`
-/

namespace A380120.P6145996201455664351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A380113 n

end

end A380120.P6145996201455664351

/-! ## A380120.P4960717994803251474

`A036453(n+1)*A380113(n)`
-/

namespace A380120.P4960717994803251474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A380113 n

end

end A380120.P4960717994803251474

/-! ## A380120.P2623106658424082157

`A036453(A013609(n))*A094527(n)`
-/

namespace A380120.P2623106658424082157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A013609 n).toNat * A094527 n

end

end A380120.P2623106658424082157

/-! ## A380120.P4881742802818549896

`A020639(A124927(n))*A094527(n)`
-/

namespace A380120.P4881742802818549896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124927 n).toNat * A094527 n

end

end A380120.P4881742802818549896

/-! ## A380120.P18428711270466545229

`A000005(A008578(n+1))*A380113(n)`
-/

namespace A380120.P18428711270466545229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A380113 n

end

end A380120.P18428711270466545229

/-!
# A380121: a(n) = C(n, Q(n+3, 4)-1)*C(n, Q(n+1, 4)) + C(n, Q(3*n+1, 4))*C(n, Q(3*n+3, 4)) where C = binomial and Q(x, y) = floor(x/y).

The programs for A380121, there is no canonical definition to state claims against.
-/

/-! ## A380121.P16462659072060349757

`A378067(∑[2*n-a(n-1)])` with `a(0)=1`
-/

namespace A380121.P16462659072060349757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378067 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A380121.P16462659072060349757

/-! ## A380121.P3301410604182614955

`A378067(ceil(((n+1)²+4)/2)-2)`
-/

namespace A380121.P3301410604182614955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378067 (⌈((n + 1) ^ 2 + 4 : ℚ) / 2⌉ - 2).toNat

end

end A380121.P3301410604182614955

/-! ## A380121.P15661713285736814436

`A191225(A162269(n))`
-/

namespace A380121.P15661713285736814436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191225 (A162269 n).toNat

end

end A380121.P15661713285736814436

/-!
# A380122: a(n) is the number of integers m (possibly negative) such that the nonzero digits in the nonadjacent form for m appear in the nonadjacent form for n.

The programs for A380122, the canonical program `A380122.P11414663002027706338` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380122 has offset 0).

The definition of A380122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380122.P11414663002027706338

`A001316(A184617(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A380122

/-- `A001316(A184617(n))` -/
def P11414663002027706338.Spec : Prop :=
  ∀ n, P11414663002027706338.a n = A380122 n

theorem P11414663002027706338.correct : P11414663002027706338.Spec := by
  intro n
  simp only [A380122]

end A380122

/-! ## A380122.P12280420381024808157

`2^A007302(n)`
-/

namespace A380122.P12280420381024808157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007302 n : ℤ)

end

end A380122.P12280420381024808157

namespace A380122

/-- `2^A007302(n)` -/
def P12280420381024808157.Spec : Prop :=
  ∀ n, P12280420381024808157.a n = (A380122 n : ℚ)

end A380122

/-! ## A380122.P10206963017416069038

`A001316(A178729(n))`
-/

namespace A380122.P10206963017416069038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A178729 n).toNat

end

end A380122.P10206963017416069038

namespace A380122

/-- `A001316(A178729(n))` -/
def P10206963017416069038.Spec : Prop :=
  ∀ n, P10206963017416069038.a n = A380122 n

end A380122

/-! ## A380122.P2833184899264819371

`A001316(A184616(2*n)+n)`
-/

namespace A380122.P2833184899264819371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A184616 (2 * n) + (n : ℤ)).toNat

end

end A380122.P2833184899264819371

namespace A380122

/-- `A001316(A184616(2*n)+n)` -/
def P2833184899264819371.Spec : Prop :=
  ∀ n, P2833184899264819371.a n = A380122 n

end A380122

/-! ## A380122.P2751489158141374101

`A001316(A184615(2*n)-n)`
-/

namespace A380122.P2751489158141374101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A184615 (2 * n) - (n : ℤ)).toNat

end

end A380122.P2751489158141374101

namespace A380122

/-- `A001316(A184615(2*n)-n)` -/
def P2751489158141374101.Spec : Prop :=
  ∀ n, P2751489158141374101.a n = A380122 n

end A380122

/-! ## A380122.P14552753828961898248

`A071044(xor(n, 3*n))`
-/

namespace A380122.P14552753828961898248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (Nat.xor n (3 * n))

end

end A380122.P14552753828961898248

namespace A380122

/-- `A071044(xor(n, 3*n))` -/
def P14552753828961898248.Spec : Prop :=
  ∀ n, P14552753828961898248.a n = A380122 n

end A380122

/-! ## A380122.P10322714285041691146

`A048896(A184617(2*n))`
-/

namespace A380122.P10322714285041691146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A184617 (2 * n)).toNat

end

end A380122.P10322714285041691146

namespace A380122

/-- `A048896(A184617(2*n))` -/
def P10322714285041691146.Spec : Prop :=
  ∀ n, P10322714285041691146.a n = A380122 n

end A380122

/-!
# A380124: Total number of ways of partitioning n and any natural number less than n into the same number of parts.

The programs for A380124, there is no canonical definition to state claims against.
-/

/-! ## A380124.P5778786741333270250

`A380125(n)-A238312(n)`
-/

namespace A380124.P5778786741333270250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380125 n - A238312 n

end

end A380124.P5778786741333270250

/-! ## A380124.P2531639170786610125

`A380126(n)-A387259(n)`
-/

namespace A380124.P2531639170786610125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380126 n - A387259 n

end

end A380124.P2531639170786610125

/-! ## A380124.P14457026546370710962

`A320222(n+1)-A289741(A390658(n))`
-/

namespace A380124.P14457026546370710962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320222 (n + 1) - A289741 (A390658 n).toNat

end

end A380124.P14457026546370710962

/-!
# A380125: Total number of ways of partitioning n and any natural number less than or equal to n into the same number of parts, treating partitions of n and itself in a different order as distinct.

The programs for A380125, there is no canonical definition to state claims against.
-/

/-! ## A380125.P11034574166389974508

`A380124(n)+A238312(n)`
-/

namespace A380125.P11034574166389974508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380124 n + A238312 n

end

end A380125.P11034574166389974508

/-! ## A380125.P14236164046382033369

`A238312(n)+A380126(n)-A387259(n)`
-/

namespace A380125.P14236164046382033369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238312 n + (A380126 n - A387259 n)

end

end A380125.P14236164046382033369

/-! ## A380125.P6677565677397729479

`A086737(n)-A185136(A043313(n+1))`
-/

namespace A380125.P6677565677397729479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086737 n - A185136 (A043313 (n + 1)).toNat

end

end A380125.P6677565677397729479

/-!
# A380126: Total number of ways of partitioning n and any natural number less than or equal to n into the same number of parts, not treating partitions of n and itself in a different order as distinct.

The programs for A380126, there is no canonical definition to state claims against.
-/

/-! ## A380126.P3670079296189810208

`A380124(n)+A387259(n)`
-/

namespace A380126.P3670079296189810208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380124 n + A387259 n

end

end A380126.P3670079296189810208

/-! ## A380126.P1297518445221906606

`A380125(n)+A387259(n)-A238312(n)`
-/

namespace A380126.P1297518445221906606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380125 n + (A387259 n - A238312 n)

end

end A380126.P1297518445221906606

/-! ## A380126.P10286918350296038020

`A296241(A030435(n))`
-/

namespace A380126.P10286918350296038020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296241 (A030435 n).toNat

end

end A380126.P10286918350296038020

/-! ## A380126.P14049324725555293516

`A325399(A026621(n))`
-/

namespace A380126.P14049324725555293516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325399 (A026621 n).toNat

end

end A380126.P14049324725555293516

/-!
# A380128: Triangle read by rows: Riordan array (1/(C(x)*sqrt(1-4*x)), x/C(x)) where C(x) is g.f. of A000108.

The programs for A380128, there is no canonical definition to state claims against.
-/

/-! ## A380128.P4067756831051358347

`A267338(n+2)-A083892(A369288(2*n+1))`
-/

namespace A380128.P4067756831051358347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (n + 2) - A083892 (A369288 (2 * n + 1)).toNat

end

end A380128.P4067756831051358347

/-!
# A380129: Strong Birthday Problem: Number of people needed so that probability of everyone sharing a birthday out of n possible days is at least 1/2.

The programs for A380129, there is no canonical definition to state claims against.
-/

/-! ## A380129.P17568912780052973309

`A277675(n+1)+A055642(A001006(n))`
-/

namespace A380129.P17568912780052973309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277675 (n + 1) + A055642 (A001006 n).toNat

end

end A380129.P17568912780052973309

/-! ## A380129.P13859574570071454236

`∑[A324923(∑[A269303(3*n+4)])]`
-/

namespace A380129.P13859574570071454236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380129.P13859574570071454236

/-! ## A380129.P14550989588841913569

`A056556(A264851(n))+A004526(2*(n+2))`
-/

namespace A380129.P14550989588841913569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A264851 n).toNat + A004526 (2 * (n + 2))

end

end A380129.P14550989588841913569

/-! ## A380129.P6439690991925781098

`∑[A000195(A107007(n+1)+A054764(n+4))]`
-/

namespace A380129.P6439690991925781098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A107007 (n + 1) + A054764 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380129.P6439690991925781098

/-! ## A380129.P3733588155827058796

`∑[A168231(∑[A034583(n)])]`
-/

namespace A380129.P3733588155827058796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168231 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380129.P3733588155827058796

/-!
# A380130: For n >= 2, let b(n) = 1 if A379784(n) is 3 mod 4, 0 if A379784(n) is 1 mod 4; form the RUNS transform of {b(n), n >= 2}.

The programs for A380130, there is no canonical definition to state claims against.
-/

/-! ## A380130.P6054376607068069410

`A277192(A196976(n+1))`
-/

namespace A380130.P6054376607068069410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A196976 (n + 1)).toNat

end

end A380130.P6054376607068069410

/-! ## A380130.P7926574858035944800

`A300430(n+1)+A107078(A010462(2*(n+1)))`
-/

namespace A380130.P7926574858035944800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300430 (n + 1) + A107078 (A010462 (2 * (n + 1))).toNat

end

end A380130.P7926574858035944800

/-!
# A380135: High water marks for number of primes between prime(n)^2 and prime(n+1)^2.

The programs for A380135, there is no canonical definition to state claims against.
-/

/-! ## A380135.P8315061175243632812

`record[A050216(n)]`
-/

namespace A380135.P8315061175243632812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380135.P8315061175243632812

/-! ## A380135.P6993532285391573762

`record[Δ[A000879(n+1)]]`
-/

namespace A380135.P6993532285391573762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380135.P6993532285391573762

/-! ## A380135.P4316363803452760705

`record[Δ[A062773(n+1)]]`
-/

namespace A380135.P4316363803452760705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380135.P4316363803452760705

/-! ## A380135.P17699329645693643501

`record[A251723(n+1)+1]`
-/

namespace A380135.P17699329645693643501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380135.P17699329645693643501

/-! ## A380135.P12018170043278573814

`A050216(A380136(n+1))`
-/

namespace A380135.P12018170043278573814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (A380136 (n + 1)).toNat

end

end A380135.P12018170043278573814

/-!
# A380138: a(n) is the largest value in the '3x+1' trajectory of starting points producing a record number of steps.

The programs for A380138, there is no canonical definition to state claims against.
-/

/-! ## A380138.P13959904229744242086

`A025586(A006877(n+1))`
-/

namespace A380138.P13959904229744242086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (A006877 (n + 1)).toNat

end

end A380138.P13959904229744242086

/-!
# A380144: Sum of divisors d | k such that rad(d) = rad(k/d) where k is in A001694 and rad = A007947.

The programs for A380144, there is no canonical definition to state claims against.
-/

/-! ## A380144.P1338177000298710222

`A364988(A001694(n+1))`
-/

namespace A380144.P1338177000298710222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364988 (A001694 (n + 1)).toNat

end

end A380144.P1338177000298710222

/-! ## A380144.P17518934743794860478

`A057723(A306458(n+1))`
-/

namespace A380144.P17518934743794860478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A306458 (n + 1)).toNat

end

end A380144.P17518934743794860478

/-! ## A380144.P5948177203820448856

`A364988(A224866(n+1)-1)`
-/

namespace A380144.P5948177203820448856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364988 (A224866 (n + 1) - 1).toNat

end

end A380144.P5948177203820448856

/-! ## A380144.P15458734783505005788

`A364988(∪[A001597(n+1), A359280(n+1)])`
-/

namespace A380144.P15458734783505005788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364988 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A380144.P15458734783505005788

/-! ## A380144.P2267012748238046309

`A364988(A369429(n+1)²*A342477(n+1))`
-/

namespace A380144.P2267012748238046309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364988 (A369429 (n + 1) ^ 2 * A342477 (n + 1)).toNat

end

end A380144.P2267012748238046309

/-!
# A380147: Number of isoclinism classes of groups of order n.

The programs for A380147, there is no canonical definition to state claims against.
-/

/-! ## A380147.P12989059686111161004

`A241276(n+1)+A185708(A047993(2*n+3))`
-/

namespace A380147.P12989059686111161004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241276 (n + 1) + A185708 (A047993 (2 * n + 3)).toNat

end

end A380147.P12989059686111161004

/-! ## A380147.P16761898266509730099

`A043562(C(A237984(n+1), A000034(n)))`
-/

namespace A380147.P16761898266509730099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (Nat.choose (A237984 (n + 1)).toNat (A000034 n).toNat)

end

end A380147.P16761898266509730099

/-! ## A380147.P3529556280309381409

`A043562(C(A237984(n+1), A257993(3*n+5)))`
-/

namespace A380147.P3529556280309381409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (Nat.choose (A237984 (n + 1)).toNat (A257993 (3 * n + 5)).toNat)

end

end A380147.P3529556280309381409

/-! ## A380147.P5411330215758201143

`A296132(A086767(n)*A260739(n+1))`
-/

namespace A380147.P5411330215758201143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296132 (A086767 n * A260739 (n + 1)).toNat

end

end A380147.P5411330215758201143

/-! ## A380147.P7319290800252142590

`C(A069016(n+1), A230000(A303242(n+5)))`
-/

namespace A380147.P7319290800252142590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A069016 (n + 1)).toNat (A230000 (A303242 (n + 5)).toNat).toNat

end

end A380147.P7319290800252142590

/-!
# A380149: Characteristic polynomial of the tesseract graph: a(n) = n^6*(n^2-16)*(n^2-4)^4.

The programs for A380149, the canonical program `A380149.P18355942737113195445` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380149 has offset 0).

The definition of A380149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n²-16)*(n²-4)^4` (program `A380149.P18355942737113195445`, by `A380149.P18355942737113195445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A380149.P18355942737113195445

`n^6*(n²-16)*(n²-4)^4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A380149

/-- `n^6*(n²-16)*(n²-4)^4` -/
def P18355942737113195445.Spec : Prop :=
  ∀ n, P18355942737113195445.a n = A380149 n

theorem P18355942737113195445.correct : P18355942737113195445.Spec := by
  intro n
  simp only [A380149]

end A380149

/-!
# A380151: Classification sequence for the Stolarsky array A035506.

The programs for A380151, the canonical program `A380151.P6636326723691283784` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380151 has offset 1).

The definition of A380151 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, A380804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380151.P6636326723691283784

`A035487(n+1)-A380804(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380151

/-- `A035487(n+1)-A380804(n+1)` -/
def P6636326723691283784.Spec : Prop :=
  ∀ n, P6636326723691283784.a n = A380151 (n + 1)

theorem P6636326723691283784.correct : P6636326723691283784.Spec := by
  intro n
  simp only [A380151, Nat.add_sub_cancel]

end A380151

/-! ## A380151.P1755037328087581128

`and(1, floor(Δ[ϕ*n²]))`
-/

namespace A380151.P1755037328087581128
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊f1 (n + 1) - f1 n⌋

end

end A380151.P1755037328087581128

namespace A380151

/-- `and(1, floor(Δ[ϕ*n²]))` -/
def P1755037328087581128.Spec : Prop :=
  ∀ n, P1755037328087581128.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P7406387317293706318

`floor(ϕ*(2*n+1))%2`
-/

namespace A380151.P7406387317293706318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ 2

end

end A380151.P7406387317293706318

namespace A380151

/-- `floor(ϕ*(2*n+1))%2` -/
def P7406387317293706318.Spec : Prop :=
  ∀ n, P7406387317293706318.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P16128751094559267268

`(ceil((2*n+1)/ϕ)%2)²`
-/

namespace A380151.P16128751094559267268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 * n + 1 : ℝ) / Real.goldenRatio⌉ 2 ^ 2

end

end A380151.P16128751094559267268

namespace A380151

/-- `(ceil((2*n+1)/ϕ)%2)²` -/
def P16128751094559267268.Spec : Prop :=
  ∀ n, P16128751094559267268.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P6594990267240116614

`and(1, floor(ϕ*(2*n+1)))²`
-/

namespace A380151.P6594990267240116614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ ^ 2

end

end A380151.P6594990267240116614

namespace A380151

/-- `and(1, floor(ϕ*(2*n+1)))²` -/
def P6594990267240116614.Spec : Prop :=
  ∀ n, P6594990267240116614.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P7961547164691534165

`2-gcd(2, floor(ϕ*(2*n+1)))`
-/

namespace A380151.P7961547164691534165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ : ℤ)

end

end A380151.P7961547164691534165

namespace A380151

/-- `2-gcd(2, floor(ϕ*(2*n+1)))` -/
def P7961547164691534165.Spec : Prop :=
  ∀ n, P7961547164691534165.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P15374277025697881426

`1-and(1, floor((2*n+1)/ϕ))`
-/

namespace A380151.P15374277025697881426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋

end

end A380151.P15374277025697881426

namespace A380151

/-- `1-and(1, floor((2*n+1)/ϕ))` -/
def P15374277025697881426.Spec : Prop :=
  ∀ n, P15374277025697881426.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P10211805919204323669

`and(1, ceil((2*n+1)/ϕ))^3`
-/

namespace A380151.P10211805919204323669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈(2 * n + 1 : ℝ) / Real.goldenRatio⌉ ^ 3

end

end A380151.P10211805919204323669

namespace A380151

/-- `and(1, ceil((2*n+1)/ϕ))^3` -/
def P10211805919204323669.Spec : Prop :=
  ∀ n, P10211805919204323669.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P2154577086682242046

`a(and(1, floor((2*n+1)/ϕ)))` with `a(0)=1, a(1)=0`
-/

namespace A380151.P2154577086682242046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (Int.land 1 ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋).toNat

end

end A380151.P2154577086682242046

namespace A380151

/-- `a(and(1, floor((2*n+1)/ϕ)))` -/
def P2154577086682242046.Spec : Prop :=
  ∀ n, (P2154577086682242046.a n : ℤ) = A380151 (n + 1)

end A380151

/-! ## A380151.P11336513930311901436

`floor(ϕ*and(1, floor(ϕ*(2*n+1))))`
-/

namespace A380151.P11336513930311901436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Int.land 1 ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ : ℝ)⌋

end

end A380151.P11336513930311901436

namespace A380151

/-- `floor(ϕ*and(1, floor(ϕ*(2*n+1))))` -/
def P11336513930311901436.Spec : Prop :=
  ∀ n, P11336513930311901436.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P12384733412064616283

`gcd(2, A001965(n))-1`
-/

namespace A380151.P12384733412064616283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001965 n) : ℤ) - 1

end

end A380151.P12384733412064616283

namespace A380151

/-- `gcd(2, A001965(n))-1` -/
def P12384733412064616283.Spec : Prop :=
  ∀ n, P12384733412064616283.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P15420009784471371998

`1-A387348(n+1)²`
-/

namespace A380151.P15420009784471371998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A387348 (n + 1) ^ 2

end

end A380151.P15420009784471371998

namespace A380151

/-- `1-A387348(n+1)²` -/
def P15420009784471371998.Spec : Prop :=
  ∀ n, P15420009784471371998.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P16355955287171494209

`A339052(A007067(n))`
-/

namespace A380151.P16355955287171494209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A007067 n).toNat

end

end A380151.P16355955287171494209

namespace A380151

/-- `A339052(A007067(n))` -/
def P16355955287171494209.Spec : Prop :=
  ∀ n, P16355955287171494209.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P6663161542588873215

`A339052(A022342(n+1))`
-/

namespace A380151.P6663161542588873215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A022342 (n + 1)).toNat

end

end A380151.P6663161542588873215

namespace A380151

/-- `A339052(A022342(n+1))` -/
def P6663161542588873215.Spec : Prop :=
  ∀ n, P6663161542588873215.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P241778407408166452

`A339052(A005206(n)+n)`
-/

namespace A380151.P241778407408166452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A005206 n + (n : ℤ)).toNat

end

end A380151.P241778407408166452

namespace A380151

/-- `A339052(A005206(n)+n)` -/
def P241778407408166452.Spec : Prop :=
  ∀ n, P241778407408166452.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P13221296703800449491

`A096270(A339052(n)+n)`
-/

namespace A380151.P13221296703800449491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A339052 n + (n : ℤ)).toNat

end

end A380151.P13221296703800449491

namespace A380151

/-- `A096270(A339052(n)+n)` -/
def P13221296703800449491.Spec : Prop :=
  ∀ n, P13221296703800449491.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P16747429590539909683

`A339052(A101803(n)+n)`
-/

namespace A380151.P16747429590539909683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A101803 n + (n : ℤ)).toNat

end

end A380151.P16747429590539909683

namespace A380151

/-- `A339052(A101803(n)+n)` -/
def P16747429590539909683.Spec : Prop :=
  ∀ n, P16747429590539909683.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P4864217070891920257

`A114986(A339052(n)+n)`
-/

namespace A380151.P4864217070891920257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A339052 n + (n : ℤ)).toNat

end

end A380151.P4864217070891920257

namespace A380151

/-- `A114986(A339052(n)+n)` -/
def P4864217070891920257.Spec : Prop :=
  ∀ n, P4864217070891920257.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P8129055045291364867

`A334414(A339052(n)+n)`
-/

namespace A380151.P8129055045291364867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334414 (A339052 n + (n : ℤ)).toNat

end

end A380151.P8129055045291364867

namespace A380151

/-- `A334414(A339052(n)+n)` -/
def P8129055045291364867.Spec : Prop :=
  ∀ n, P8129055045291364867.a n = A380151 (n + 1)

end A380151

/-! ## A380151.P5971814693653328629

`A005614(n-A339824(n))`
-/

namespace A380151.P5971814693653328629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 ((n : ℤ) - A339824 n).toNat

end

end A380151.P5971814693653328629

namespace A380151

/-- `A005614(n-A339824(n))` -/
def P5971814693653328629.Spec : Prop :=
  ∀ n, P5971814693653328629.a n = A380151 (n + 1)

end A380151

/-!
# A380152: Decimal expansion of 864/275.

The programs for A380152, the canonical program `A380152.P516761780317253962` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380152 has offset 1).

The definition of A380152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380152.P516761780317253962

`a(n-2)` with `a(0)=3, a(1)=1, a(2)=4, a(3)=1, a(4)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A380152

/-- `a(n-2)` -/
def P516761780317253962.Spec : Prop :=
  ∀ n, (P516761780317253962.a n : ℤ) = A380152 (n + 1)

theorem P516761780317253962.correct : P516761780317253962.Spec := by
  intro n
  simp only [A380152, Nat.add_sub_cancel]

end A380152

/-!
# A380155: Expansion of e.g.f. 1/sqrt(1 - 2*x*exp(2*x)).

The programs for A380155, there is no canonical definition to state claims against.
-/

/-! ## A380155.P8800404864530270713

`A309408(A001444(n))`
-/

namespace A380155.P8800404864530270713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309408 (A001444 n).toNat

end

end A380155.P8800404864530270713

/-!
# A380156: Expansion of e.g.f. 1/(1 - 3*x*exp(3*x))^(1/3).

The programs for A380156, there is no canonical definition to state claims against.
-/

/-! ## A380156.P12029218462151533331

`A330953(A126573(n+1))`
-/

namespace A380156.P12029218462151533331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330953 (A126573 (n + 1)).toNat

end

end A380156.P12029218462151533331

/-!
# A380160: a(n) is the value of the Euler totient function when applied to the powerful part of n.

The programs for A380160, the canonical program `A380160.P4546654920462723161` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380160 has offset 1).

The definition of A380160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380160.P4546654920462723161

`A000010(A057521(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A380160

/-- `A000010(A057521(n+1))` -/
def P4546654920462723161.Spec : Prop :=
  ∀ n, P4546654920462723161.a n = A380160 (n + 1)

theorem P4546654920462723161.correct : P4546654920462723161.Spec := by
  intro n
  simp only [A380160, Nat.add_sub_cancel]

end A380160

/-! ## A380160.P15971798468053458365

`A299822(A003557(n+1))`
-/

namespace A380160.P15971798468053458365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299822 (A003557 (n + 1)).toNat

end

end A380160.P15971798468053458365

namespace A380160

/-- `A299822(A003557(n+1))` -/
def P15971798468053458365.Spec : Prop :=
  ∀ n, P15971798468053458365.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P13502137117225350475

`A055229(n+1)*A380162(n+1)`
-/

namespace A380160.P13502137117225350475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) * A380162 (n + 1)

end

end A380160.P13502137117225350475

namespace A380160

/-- `A055229(n+1)*A380162(n+1)` -/
def P13502137117225350475.Spec : Prop :=
  ∀ n, P13502137117225350475.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P10882902796636507465

`A000010((n+1)/A055231(n+1))`
-/

namespace A380160.P10882902796636507465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A380160.P10882902796636507465

namespace A380160

/-- `A000010((n+1)/A055231(n+1))` -/
def P10882902796636507465.Spec : Prop :=
  ∀ n, P10882902796636507465.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P9595170635697348974

`A076685((n+1)/A055231(n+1))`
-/

namespace A380160.P9595170635697348974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076685 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A380160.P9595170635697348974

namespace A380160

/-- `A076685((n+1)/A055231(n+1))` -/
def P9595170635697348974.Spec : Prop :=
  ∀ n, P9595170635697348974.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P17087556236862787919

`A299822((n+1)/A007947(n+1))`
-/

namespace A380160.P17087556236862787919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A380160.P17087556236862787919

namespace A380160

/-- `A299822((n+1)/A007947(n+1))` -/
def P17087556236862787919.Spec : Prop :=
  ∀ n, P17087556236862787919.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P808630805347106089

`A254503((n+1)/A055231(n+1))`
-/

namespace A380160.P808630805347106089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A380160.P808630805347106089

namespace A380160

/-- `A254503((n+1)/A055231(n+1))` -/
def P808630805347106089.Spec : Prop :=
  ∀ n, P808630805347106089.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P3346586876438000689

`A000010(n+1)/A380161(n+1)`
-/

namespace A380160.P3346586876438000689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A380161 (n + 1) : ℚ)

end

end A380160.P3346586876438000689

namespace A380160

/-- `A000010(n+1)/A380161(n+1)` -/
def P3346586876438000689.Spec : Prop :=
  ∀ n, P3346586876438000689.a n = (A380160 (n + 1) : ℚ)

end A380160

/-! ## A380160.P459526446892320746

`A390755((n+1)/A055231(n+1))`
-/

namespace A380160.P459526446892320746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390755 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A380160.P459526446892320746

namespace A380160

/-- `A390755((n+1)/A055231(n+1))` -/
def P459526446892320746.Spec : Prop :=
  ∀ n, P459526446892320746.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P10406582577223172458

`A254503(A057521(2*n+1-n))`
-/

namespace A380160.P10406582577223172458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (A057521 (2 * n + 1 - n)).toNat

end

end A380160.P10406582577223172458

namespace A380160

/-- `A254503(A057521(2*n+1-n))` -/
def P10406582577223172458.Spec : Prop :=
  ∀ n, P10406582577223172458.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P6267690074522203976

`A000010(A003557(n+1)*A071773(n+1))`
-/

namespace A380160.P6267690074522203976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003557 (n + 1) * A071773 (n + 1)).toNat

end

end A380160.P6267690074522203976

namespace A380160

/-- `A000010(A003557(n+1)*A071773(n+1))` -/
def P6267690074522203976.Spec : Prop :=
  ∀ n, P6267690074522203976.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P7094910891305772198

`A000010(A064549((n+1)/A007947(n+1)))`
-/

namespace A380160.P7094910891305772198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A064549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A380160.P7094910891305772198

namespace A380160

/-- `A000010(A064549((n+1)/A007947(n+1)))` -/
def P7094910891305772198.Spec : Prop :=
  ∀ n, P7094910891305772198.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P4998955759191629221

`A299822(A000010(n+1)/A173557(n+1))`
-/

namespace A380160.P4998955759191629221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299822 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ))).toNat

end

end A380160.P4998955759191629221

namespace A380160

/-- `A299822(A000010(n+1)/A173557(n+1))` -/
def P4998955759191629221.Spec : Prop :=
  ∀ n, P4998955759191629221.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P6898783011586084043

`A299822(A002618(n+1)/A299822(n+1))`
-/

namespace A380160.P6898783011586084043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299822 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (A299822 (n + 1) : ℚ))).toNat

end

end A380160.P6898783011586084043

namespace A380160

/-- `A299822(A002618(n+1)/A299822(n+1))` -/
def P6898783011586084043.Spec : Prop :=
  ∀ n, P6898783011586084043.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P5365091344720843093

`A057521(n+1)-A348513(n+1)/A055231(n+1)`
-/

namespace A380160.P5365091344720843093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) - (A348513 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A380160.P5365091344720843093

namespace A380160

/-- `A057521(n+1)-A348513(n+1)/A055231(n+1)` -/
def P5365091344720843093.Spec : Prop :=
  ∀ n, P5365091344720843093.a n = (A380160 (n + 1) : ℚ)

end A380160

/-! ## A380160.P6582978870824469188

`A003557(n+1)*A173557(A003557(n+1)²)`
-/

namespace A380160.P6582978870824469188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A173557 (A003557 (n + 1) ^ 2).toNat

end

end A380160.P6582978870824469188

namespace A380160

/-- `A003557(n+1)*A173557(A003557(n+1)²)` -/
def P6582978870824469188.Spec : Prop :=
  ∀ n, P6582978870824469188.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P4328231462499390155

`A003557(n+1)*A322351(A003557(n+1)²)`
-/

namespace A380160.P4328231462499390155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A322351 (A003557 (n + 1) ^ 2).toNat

end

end A380160.P4328231462499390155

namespace A380160

/-- `A003557(n+1)*A322351(A003557(n+1)²)` -/
def P4328231462499390155.Spec : Prop :=
  ∀ n, P4328231462499390155.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P5630884321108232996

`A000010(A000189((n+1)*A000189(n+1)))`
-/

namespace A380160.P5630884321108232996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000189 ((n + 1 : ℤ) * A000189 (n + 1)).toNat).toNat

end

end A380160.P5630884321108232996

namespace A380160

/-- `A000010(A000189((n+1)*A000189(n+1)))` -/
def P5630884321108232996.Spec : Prop :=
  ∀ n, P5630884321108232996.a n = A380160 (n + 1)

end A380160

/-! ## A380160.P2339746992244608819

`A254503(A057521(n+1)²)/A057521(n+1)`
-/

namespace A380160.P2339746992244608819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254503 (A057521 (n + 1) ^ 2).toNat : ℚ) / (A057521 (n + 1) : ℚ)

end

end A380160.P2339746992244608819

namespace A380160

/-- `A254503(A057521(n+1)²)/A057521(n+1)` -/
def P2339746992244608819.Spec : Prop :=
  ∀ n, P2339746992244608819.a n = (A380160 (n + 1) : ℚ)

end A380160

/-! ## A380160.P2646735473233005493

`A000010(A000190(A000190((n+1)²)))`
-/

namespace A380160.P2646735473233005493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000190 (A000190 ((n + 1) ^ 2)).toNat).toNat

end

end A380160.P2646735473233005493

namespace A380160

/-- `A000010(A000190(A000190((n+1)²)))` -/
def P2646735473233005493.Spec : Prop :=
  ∀ n, P2646735473233005493.a n = A380160 (n + 1)

end A380160

/-!
# A380161: a(n) is the value of the Euler totient function when applied to the powerfree part of n.

The programs for A380161, the canonical program `A380161.P11294645984776540590` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380161 has offset 1).

The definition of A380161 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A055231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380161.P11294645984776540590

`A000010(A055231(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A380161

/-- `A000010(A055231(n+1))` -/
def P11294645984776540590.Spec : Prop :=
  ∀ n, P11294645984776540590.a n = A380161 (n + 1)

theorem P11294645984776540590.correct : P11294645984776540590.Spec := by
  intro n
  simp only [A380161, Nat.add_sub_cancel]

end A380161

/-! ## A380161.P15184749434361574581

`A380163(A007948(n+1))`
-/

namespace A380161.P15184749434361574581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380163 (A007948 (n + 1)).toNat

end

end A380161.P15184749434361574581

namespace A380161

/-- `A380163(A007948(n+1))` -/
def P15184749434361574581.Spec : Prop :=
  ∀ n, P15184749434361574581.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P2327574869686836816

`A380163(A056192(n+1))`
-/

namespace A380161.P2327574869686836816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380163 (A056192 (n + 1)).toNat

end

end A380161.P2327574869686836816

namespace A380161

/-- `A380163(A056192(n+1))` -/
def P2327574869686836816.Spec : Prop :=
  ∀ n, P2327574869686836816.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P6037648922004588257

`A380163(A353897(n+1))`
-/

namespace A380161.P6037648922004588257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380163 (A353897 (n + 1)).toNat

end

end A380161.P6037648922004588257

namespace A380161

/-- `A380163(A353897(n+1))` -/
def P6037648922004588257.Spec : Prop :=
  ∀ n, P6037648922004588257.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P16788472472334157732

`A380163(A367168(n+1))`
-/

namespace A380161.P16788472472334157732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380163 (A367168 (n + 1)).toNat

end

end A380161.P16788472472334157732

namespace A380161

/-- `A380163(A367168(n+1))` -/
def P16788472472334157732.Spec : Prop :=
  ∀ n, P16788472472334157732.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P16300307702025426911

`A349442(A055231(2*(n+1)))`
-/

namespace A380161.P16300307702025426911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349442 (A055231 (2 * (n + 1))).toNat

end

end A380161.P16300307702025426911

namespace A380161

/-- `A349442(A055231(2*(n+1)))` -/
def P16300307702025426911.Spec : Prop :=
  ∀ n, P16300307702025426911.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P6122706586882195933

`A000010((n+1)/A057521(n+1))`
-/

namespace A380161.P6122706586882195933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A380161.P6122706586882195933

namespace A380161

/-- `A000010((n+1)/A057521(n+1))` -/
def P6122706586882195933.Spec : Prop :=
  ∀ n, P6122706586882195933.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P2820271014386153446

`A000010(A197863(n+1)/(n+1))`
-/

namespace A380161.P2820271014386153446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A380161.P2820271014386153446

namespace A380161

/-- `A000010(A197863(n+1)/(n+1))` -/
def P2820271014386153446.Spec : Prop :=
  ∀ n, P2820271014386153446.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P7350844645402120308

`A047994(A197863(n+1)/(n+1))`
-/

namespace A380161.P7350844645402120308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A380161.P7350844645402120308

namespace A380161

/-- `A047994(A197863(n+1)/(n+1))` -/
def P7350844645402120308.Spec : Prop :=
  ∀ n, P7350844645402120308.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P11811520171280564644

`A000010(n+1)/A380160(n+1)`
-/

namespace A380161.P11811520171280564644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A380160 (n + 1) : ℚ)

end

end A380161.P11811520171280564644

namespace A380161

/-- `A000010(n+1)/A380160(n+1)` -/
def P11811520171280564644.Spec : Prop :=
  ∀ n, P11811520171280564644.a n = (A380161 (n + 1) : ℚ)

end A380161

/-! ## A380161.P13122317623640221819

`A206369(A197863(n+1)/(n+1))`
-/

namespace A380161.P13122317623640221819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A380161.P13122317623640221819

namespace A380161

/-- `A206369(A197863(n+1)/(n+1))` -/
def P13122317623640221819.Spec : Prop :=
  ∀ n, P13122317623640221819.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P18099297383722157201

`A349442((n+1)/A057521(n+1))`
-/

namespace A380161.P18099297383722157201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A380161.P18099297383722157201

namespace A380161

/-- `A349442((n+1)/A057521(n+1))` -/
def P18099297383722157201.Spec : Prop :=
  ∀ n, P18099297383722157201.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P5346399389434543085

`A384050((n+1)/A057521(n+1))`
-/

namespace A380161.P5346399389434543085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A380161.P5346399389434543085

namespace A380161

/-- `A384050((n+1)/A057521(n+1))` -/
def P5346399389434543085.Spec : Prop :=
  ∀ n, P5346399389434543085.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P1718223961076523114

`A384051((n+1)/A057521(n+1))`
-/

namespace A380161.P1718223961076523114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A380161.P1718223961076523114

namespace A380161

/-- `A384051((n+1)/A057521(n+1))` -/
def P1718223961076523114.Spec : Prop :=
  ∀ n, P1718223961076523114.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P15153842894551526053

`A390755(n+1)/A254503(n+1)`
-/

namespace A380161.P15153842894551526053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390755 (n + 1) : ℚ) / (A254503 (n + 1) : ℚ)

end

end A380161.P15153842894551526053

namespace A380161

/-- `A390755(n+1)/A254503(n+1)` -/
def P15153842894551526053.Spec : Prop :=
  ∀ n, P15153842894551526053.a n = (A380161 (n + 1) : ℚ)

end A380161

/-! ## A380161.P16293698303134243379

`A384040(A055231(2*n+1-n))`
-/

namespace A380161.P16293698303134243379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384040 (A055231 (2 * n + 1 - n)).toNat

end

end A380161.P16293698303134243379

namespace A380161

/-- `A384040(A055231(2*n+1-n))` -/
def P16293698303134243379.Spec : Prop :=
  ∀ n, P16293698303134243379.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P15156437953602321079

`A384052(A367168(A350389(n+1)))`
-/

namespace A380161.P15156437953602321079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384052 (A367168 (A350389 (n + 1)).toNat).toNat

end

end A380161.P15156437953602321079

namespace A380161

/-- `A384052(A367168(A350389(n+1)))` -/
def P15156437953602321079.Spec : Prop :=
  ∀ n, P15156437953602321079.a n = A380161 (n + 1)

end A380161

/-! ## A380161.P10493173499759003171

`A173557(n+1)/A173557(A000188(n+1))`
-/

namespace A380161.P10493173499759003171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A173557 (A000188 (n + 1)).toNat : ℚ)

end

end A380161.P10493173499759003171

namespace A380161

/-- `A173557(n+1)/A173557(A000188(n+1))` -/
def P10493173499759003171.Spec : Prop :=
  ∀ n, P10493173499759003171.a n = (A380161 (n + 1) : ℚ)

end A380161

/-! ## A380161.P123435390628394571

`A173557(n+1)/A173557(A003557(n+1))`
-/

namespace A380161.P123435390628394571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A173557 (A003557 (n + 1)).toNat : ℚ)

end

end A380161.P123435390628394571

namespace A380161

/-- `A173557(n+1)/A173557(A003557(n+1))` -/
def P123435390628394571.Spec : Prop :=
  ∀ n, P123435390628394571.a n = (A380161 (n + 1) : ℚ)

end A380161

/-! ## A380161.P17229703972040106830

`A114810(2*A055231(n+1))`
-/

namespace A380161.P17229703972040106830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114810 (2 * A055231 (n + 1)).toNat

end

end A380161.P17229703972040106830

namespace A380161

/-- `A114810(2*A055231(n+1))` -/
def P17229703972040106830.Spec : Prop :=
  ∀ n, P17229703972040106830.a n = A380161 (n + 1)

end A380161

/-!
# A380162: a(n) is the value of the Euler totient function when applied to the largest square dividing n.

The programs for A380162, the canonical program `A380162.P3923099972505538438` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380162 has offset 1).

The definition of A380162 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008833, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380162.P3923099972505538438

`A000010(A008833(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A380162

/-- `A000010(A008833(n+1))` -/
def P3923099972505538438.Spec : Prop :=
  ∀ n, P3923099972505538438.a n = A380162 (n + 1)

theorem P3923099972505538438.correct : P3923099972505538438.Spec := by
  intro n
  simp only [A380162, Nat.add_sub_cancel]

end A380162

/-! ## A380162.P11924300814896061783

`A002618(A000188(n+1))`
-/

namespace A380162.P11924300814896061783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A000188 (n + 1)).toNat

end

end A380162.P11924300814896061783

namespace A380162

/-- `A002618(A000188(n+1))` -/
def P11924300814896061783.Spec : Prop :=
  ∀ n, P11924300814896061783.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P10059062553744624598

`A327171(A003557(n+1))`
-/

namespace A380162.P10059062553744624598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (A003557 (n + 1)).toNat

end

end A380162.P10059062553744624598

namespace A380162

/-- `A327171(A003557(n+1))` -/
def P10059062553744624598.Spec : Prop :=
  ∀ n, P10059062553744624598.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P7497238668526320636

`A000010(A000188(n+1)²)`
-/

namespace A380162.P7497238668526320636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000188 (n + 1) ^ 2).toNat

end

end A380162.P7497238668526320636

namespace A380162

/-- `A000010(A000188(n+1)²)` -/
def P7497238668526320636.Spec : Prop :=
  ∀ n, P7497238668526320636.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P11385733992334005168

`A076685(A000188(n+1)²)`
-/

namespace A380162.P11385733992334005168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076685 (A000188 (n + 1) ^ 2).toNat

end

end A380162.P11385733992334005168

namespace A380162

/-- `A076685(A000188(n+1)²)` -/
def P11385733992334005168.Spec : Prop :=
  ∀ n, P11385733992334005168.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P10622067116299347304

`A327171(A000188(n+1)²)`
-/

namespace A380162.P10622067116299347304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (A000188 (n + 1) ^ 2).toNat

end

end A380162.P10622067116299347304

namespace A380162

/-- `A327171(A000188(n+1)²)` -/
def P10622067116299347304.Spec : Prop :=
  ∀ n, P10622067116299347304.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P14424054005448458945

`A000010(A336642(n+1)+1)`
-/

namespace A380162.P14424054005448458945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A336642 (n + 1) + 1).toNat

end

end A380162.P14424054005448458945

namespace A380162

/-- `A000010(A336642(n+1)+1)` -/
def P14424054005448458945.Spec : Prop :=
  ∀ n, P14424054005448458945.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P5824150839311428390

`A000010((n+1)/A007913(n+1))`
-/

namespace A380162.P5824150839311428390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A380162.P5824150839311428390

namespace A380162

/-- `A000010((n+1)/A007913(n+1))` -/
def P5824150839311428390.Spec : Prop :=
  ∀ n, P5824150839311428390.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P11520570930983476396

`A002618((n+1)/A019554(n+1))`
-/

namespace A380162.P11520570930983476396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A380162.P11520570930983476396

namespace A380162

/-- `A002618((n+1)/A019554(n+1))` -/
def P11520570930983476396.Spec : Prop :=
  ∀ n, P11520570930983476396.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P2976023930763390723

`A076685((n+1)/A007913(n+1))`
-/

namespace A380162.P2976023930763390723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076685 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A380162.P2976023930763390723

namespace A380162

/-- `A076685((n+1)/A007913(n+1))` -/
def P2976023930763390723.Spec : Prop :=
  ∀ n, P2976023930763390723.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P17970945683219423719

`A254503(n+1)/A007913(n+1)`
-/

namespace A380162.P17970945683219423719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254503 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A380162.P17970945683219423719

namespace A380162

/-- `A254503(n+1)/A007913(n+1)` -/
def P17970945683219423719.Spec : Prop :=
  ∀ n, P17970945683219423719.a n = (A380162 (n + 1) : ℚ)

end A380162

/-! ## A380162.P11042653705229191597

`A327171((n+1)/A007913(n+1))`
-/

namespace A380162.P11042653705229191597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A380162.P11042653705229191597

namespace A380162

/-- `A327171((n+1)/A007913(n+1))` -/
def P11042653705229191597.Spec : Prop :=
  ∀ n, P11042653705229191597.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P11906746649713791497

`A327171((n+1)/A007947(n+1))`
-/

namespace A380162.P11906746649713791497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A380162.P11906746649713791497

namespace A380162

/-- `A327171((n+1)/A007947(n+1))` -/
def P11906746649713791497.Spec : Prop :=
  ∀ n, P11906746649713791497.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P1327729955057078092

`A327171(A102631(n+1)/(n+1))`
-/

namespace A380162.P1327729955057078092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (SequenceMachineLib.roundAway ((A102631 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A380162.P1327729955057078092

namespace A380162

/-- `A327171(A102631(n+1)/(n+1))` -/
def P1327729955057078092.Spec : Prop :=
  ∀ n, P1327729955057078092.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P14640128025953827466

`A380160(n+1)/A055229(n+1)`
-/

namespace A380162.P14640128025953827466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380160 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

end

end A380162.P14640128025953827466

namespace A380162

/-- `A380160(n+1)/A055229(n+1)` -/
def P14640128025953827466.Spec : Prop :=
  ∀ n, P14640128025953827466.a n = (A380162 (n + 1) : ℚ)

end A380162

/-! ## A380162.P15642192379962021787

`A327171(A008833(2*n+1-n))`
-/

namespace A380162.P15642192379962021787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (A008833 (2 * n + 1 - n)).toNat

end

end A380162.P15642192379962021787

namespace A380162

/-- `A327171(A008833(2*n+1-n))` -/
def P15642192379962021787.Spec : Prop :=
  ∀ n, P15642192379962021787.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P3565142658439921752

`∑{d}[n+1, A055210(#)*A271102((n+1)/#)]`
-/

namespace A380162.P3565142658439921752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055210 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A380162.P3565142658439921752

namespace A380162

/-- `∑{d}[n+1, A055210(#)*A271102((n+1)/#)]` -/
def P3565142658439921752.Spec : Prop :=
  ∀ n, P3565142658439921752.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P12845508525971997914

`A000010(A000188(n+1)*A000188(n+1))`
-/

namespace A380162.P12845508525971997914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000188 (n + 1) * A000188 (n + 1)).toNat

end

end A380162.P12845508525971997914

namespace A380162

/-- `A000010(A000188(n+1)*A000188(n+1))` -/
def P12845508525971997914.Spec : Prop :=
  ∀ n, P12845508525971997914.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P5571502010381039976

`A000010(A008836(n+1)*A358272(n+1))`
-/

namespace A380162.P5571502010381039976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008836 (n + 1) * A358272 (n + 1)).toNat

end

end A380162.P5571502010381039976

namespace A380162

/-- `A000010(A008836(n+1)*A358272(n+1))` -/
def P5571502010381039976.Spec : Prop :=
  ∀ n, P5571502010381039976.a n = A380162 (n + 1)

end A380162

/-! ## A380162.P10502155100002347676

`A000010(A002618(n+1)/A327171(n+1))`
-/

namespace A380162.P10502155100002347676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (A327171 (n + 1) : ℚ))).toNat

end

end A380162.P10502155100002347676

namespace A380162

/-- `A000010(A002618(n+1)/A327171(n+1))` -/
def P10502155100002347676.Spec : Prop :=
  ∀ n, P10502155100002347676.a n = A380162 (n + 1)

end A380162

/-!
# A380163: a(n) is the value of the Euler totient function when applied to the squarefree part of n.

The programs for A380163, the canonical program `A380163.P2401699286330584637` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380163 has offset 1).

The definition of A380163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380163.P2401699286330584637

`A000010(A007913(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A380163

/-- `A000010(A007913(n+1))` -/
def P2401699286330584637.Spec : Prop :=
  ∀ n, P2401699286330584637.a n = A380163 (n + 1)

theorem P2401699286330584637.correct : P2401699286330584637.Spec := by
  intro n
  simp only [A380163, Nat.add_sub_cancel]

end A380163

/-! ## A380163.P12954338637240581295

`∏{p}[A071975(n+1), #-1]`
-/

namespace A380163.P12954338637240581295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A380163.P12954338637240581295

namespace A380163

/-- `∏{p}[A071975(n+1), #-1]` -/
def P12954338637240581295.Spec : Prop :=
  ∀ n, P12954338637240581295.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P3879519932940378669

`∏{p}[A350389(n+1), #-1]`
-/

namespace A380163.P3879519932940378669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A380163.P3879519932940378669

namespace A380163

/-- `∏{p}[A350389(n+1), #-1]` -/
def P3879519932940378669.Spec : Prop :=
  ∀ n, P3879519932940378669.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P5300193765443716366

`A000010(A364900(n))`
-/

namespace A380163.P5300193765443716366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A364900 n).toNat

end

end A380163.P5300193765443716366

namespace A380163

/-- `A000010(A364900(n))` -/
def P5300193765443716366.Spec : Prop :=
  ∀ n, P5300193765443716366.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P4453996026652054542

`A003958(A037449(n+1))`
-/

namespace A380163.P4453996026652054542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A037449 (n + 1)).toNat

end

end A380163.P4453996026652054542

namespace A380163

/-- `A003958(A037449(n+1))` -/
def P4453996026652054542.Spec : Prop :=
  ∀ n, P4453996026652054542.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P2326323061982338438

`A003958(A038387(n+1))`
-/

namespace A380163.P2326323061982338438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A038387 (n + 1)).toNat

end

end A380163.P2326323061982338438

namespace A380163

/-- `A003958(A038387(n+1))` -/
def P2326323061982338438.Spec : Prop :=
  ∀ n, P2326323061982338438.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P1010508742961718996

`A003958(A056135(n+1))`
-/

namespace A380163.P1010508742961718996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A056135 (n + 1)).toNat

end

end A380163.P1010508742961718996

namespace A380163

/-- `A003958(A056135(n+1))` -/
def P1010508742961718996.Spec : Prop :=
  ∀ n, P1010508742961718996.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P4829082779158728482

`A003958(A204993(n+1))`
-/

namespace A380163.P4829082779158728482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A204993 (n + 1)).toNat

end

end A380163.P4829082779158728482

namespace A380163

/-- `A003958(A204993(n+1))` -/
def P4829082779158728482.Spec : Prop :=
  ∀ n, P4829082779158728482.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P9770037983939816999

`A173557(A071975(n+1))`
-/

namespace A380163.P9770037983939816999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A071975 (n + 1)).toNat

end

end A380163.P9770037983939816999

namespace A380163

/-- `A173557(A071975(n+1))` -/
def P9770037983939816999.Spec : Prop :=
  ∀ n, P9770037983939816999.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P8282458829407454135

`A380161(A066990(n+1))`
-/

namespace A380163.P8282458829407454135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380161 (A066990 (n + 1)).toNat

end

end A380163.P8282458829407454135

namespace A380163

/-- `A380161(A066990(n+1))` -/
def P8282458829407454135.Spec : Prop :=
  ∀ n, P8282458829407454135.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P7876302994328275317

`A173557(A350389(n+1))`
-/

namespace A380163.P7876302994328275317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A350389 (n + 1)).toNat

end

end A380163.P7876302994328275317

namespace A380163

/-- `A173557(A350389(n+1))` -/
def P7876302994328275317.Spec : Prop :=
  ∀ n, P7876302994328275317.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P18275428775937630619

`A380161(A365296(n+1))`
-/

namespace A380163.P18275428775937630619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380161 (A365296 (n + 1)).toNat

end

end A380163.P18275428775937630619

namespace A380163

/-- `A380161(A365296(n+1))` -/
def P18275428775937630619.Spec : Prop :=
  ∀ n, P18275428775937630619.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P6198338670084172790

`A173557(A007913(2*(n+1)))`
-/

namespace A380163.P6198338670084172790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A007913 (2 * (n + 1))).toNat

end

end A380163.P6198338670084172790

namespace A380163

/-- `A173557(A007913(2*(n+1)))` -/
def P6198338670084172790.Spec : Prop :=
  ∀ n, P6198338670084172790.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P2132843269280437819

`A000010(n+1-A326128(n+1))`
-/

namespace A380163.P2132843269280437819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) - A326128 (n + 1)).toNat

end

end A380163.P2132843269280437819

namespace A380163

/-- `A000010(n+1-A326128(n+1))` -/
def P2132843269280437819.Spec : Prop :=
  ∀ n, P2132843269280437819.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P11523785588189655429

`A000010((n+1)/A008833(n+1))`
-/

namespace A380163.P11523785588189655429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A380163.P11523785588189655429

namespace A380163

/-- `A000010((n+1)/A008833(n+1))` -/
def P11523785588189655429.Spec : Prop :=
  ∀ n, P11523785588189655429.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P14551912727979864292

`A000010(A053143(n+1)/(n+1))`
-/

namespace A380163.P14551912727979864292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A380163.P14551912727979864292

namespace A380163

/-- `A000010(A053143(n+1)/(n+1))` -/
def P14551912727979864292.Spec : Prop :=
  ∀ n, P14551912727979864292.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P9717376141032705824

`A047994(A053143(n+1)/(n+1))`
-/

namespace A380163.P9717376141032705824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A380163.P9717376141032705824

namespace A380163

/-- `A047994(A053143(n+1)/(n+1))` -/
def P9717376141032705824.Spec : Prop :=
  ∀ n, P9717376141032705824.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P13434009340490250325

`A114810((n+1)/A008833(n+1))`
-/

namespace A380163.P13434009340490250325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114810 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A380163.P13434009340490250325

namespace A380163

/-- `A114810((n+1)/A008833(n+1))` -/
def P13434009340490250325.Spec : Prop :=
  ∀ n, P13434009340490250325.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P12302252890900172021

`A152958((n+1)/A008833(n+1))`
-/

namespace A380163.P12302252890900172021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A380163.P12302252890900172021

namespace A380163

/-- `A152958((n+1)/A008833(n+1))` -/
def P12302252890900172021.Spec : Prop :=
  ∀ n, P12302252890900172021.a n = A380163 (n + 1)

end A380163

/-! ## A380163.P13461321450480659151

`A062570((n+1)/A235872(n+1))`
-/

namespace A380163.P13461321450480659151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A235872 (n + 1) : ℚ))).toNat

end

end A380163.P13461321450480659151

namespace A380163

/-- `A062570((n+1)/A235872(n+1))` -/
def P13461321450480659151.Spec : Prop :=
  ∀ n, P13461321450480659151.a n = A380163 (n + 1)

end A380163

/-!
# A380164: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is a square.

The programs for A380164, the canonical program `A380164.P6797350675087028144` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380164 has offset 1).

The definition of A380164 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380164.P6797350675087028144

`A000010(A350388(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A380164

/-- `A000010(A350388(n+1))` -/
def P6797350675087028144.Spec : Prop :=
  ∀ n, P6797350675087028144.a n = A380164 (n + 1)

theorem P6797350675087028144.correct : P6797350675087028144.Spec := by
  intro n
  simp only [A380164, Nat.add_sub_cancel]

end A380164

/-! ## A380164.P14745103977299543305

`A002618(A071974(n+1))`
-/

namespace A380164.P14745103977299543305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A071974 (n + 1)).toNat

end

end A380164.P14745103977299543305

namespace A380164

/-- `A002618(A071974(n+1))` -/
def P14745103977299543305.Spec : Prop :=
  ∀ n, P14745103977299543305.a n = A380164 (n + 1)

end A380164

/-! ## A380164.P9457107864686577856

`A000010(A071974(n+1)²)`
-/

namespace A380164.P9457107864686577856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A071974 (n + 1) ^ 2).toNat

end

end A380164.P9457107864686577856

namespace A380164

/-- `A000010(A071974(n+1)²)` -/
def P9457107864686577856.Spec : Prop :=
  ∀ n, P9457107864686577856.a n = A380164 (n + 1)

end A380164

/-! ## A380164.P9800686943963978013

`A254503(A071974(n+1)²)`
-/

namespace A380164.P9800686943963978013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (A071974 (n + 1) ^ 2).toNat

end

end A380164.P9800686943963978013

namespace A380164

/-- `A254503(A071974(n+1)²)` -/
def P9800686943963978013.Spec : Prop :=
  ∀ n, P9800686943963978013.a n = A380164 (n + 1)

end A380164

/-! ## A380164.P17696761619445204939

`A380162(A071974(n+1)²)`
-/

namespace A380164.P17696761619445204939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380162 (A071974 (n + 1) ^ 2).toNat

end

end A380164.P17696761619445204939

namespace A380164

/-- `A380162(A071974(n+1)²)` -/
def P17696761619445204939.Spec : Prop :=
  ∀ n, P17696761619445204939.a n = A380164 (n + 1)

end A380164

/-! ## A380164.P14521680981356519098

`A000010((n+1)/A350389(n+1))`
-/

namespace A380164.P14521680981356519098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A380164.P14521680981356519098

namespace A380164

/-- `A000010((n+1)/A350389(n+1))` -/
def P14521680981356519098.Spec : Prop :=
  ∀ n, P14521680981356519098.a n = A380164 (n + 1)

end A380164

/-! ## A380164.P16622895692861835671

`A000010(n+1)/A380165(n+1)`
-/

namespace A380164.P16622895692861835671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A380165 (n + 1) : ℚ)

end

end A380164.P16622895692861835671

namespace A380164

/-- `A000010(n+1)/A380165(n+1)` -/
def P16622895692861835671.Spec : Prop :=
  ∀ n, P16622895692861835671.a n = (A380164 (n + 1) : ℚ)

end A380164

/-! ## A380164.P11134746929295057135

`A380160((n+1)/A368167(n+1))`
-/

namespace A380164.P11134746929295057135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380160 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368167 (n + 1) : ℚ))).toNat

end

end A380164.P11134746929295057135

namespace A380164

/-- `A380160((n+1)/A368167(n+1))` -/
def P11134746929295057135.Spec : Prop :=
  ∀ n, P11134746929295057135.a n = A380164 (n + 1)

end A380164

/-! ## A380164.P12320654375154052559

`A000010(A071974(n+1)*A071974(n+1))`
-/

namespace A380164.P12320654375154052559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A071974 (n + 1) * A071974 (n + 1)).toNat

end

end A380164.P12320654375154052559

namespace A380164

/-- `A000010(A071974(n+1)*A071974(n+1))` -/
def P12320654375154052559.Spec : Prop :=
  ∀ n, P12320654375154052559.a n = A380164 (n + 1)

end A380164

/-! ## A380164.P2114728045985454111

`A380162(A071974(n+1)*A071974(n+1))`
-/

namespace A380164.P2114728045985454111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380162 (A071974 (n + 1) * A071974 (n + 1)).toNat

end

end A380164.P2114728045985454111

namespace A380164

/-- `A380162(A071974(n+1)*A071974(n+1))` -/
def P2114728045985454111.Spec : Prop :=
  ∀ n, P2114728045985454111.a n = A380164 (n + 1)

end A380164

/-!
# A380165: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is an exponentially odd number.

The programs for A380165, the canonical program `A380165.P2435245022523968233` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380165 has offset 1).

The definition of A380165 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380165.P2435245022523968233

`A000010(A350389(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A380165

/-- `A000010(A350389(n+1))` -/
def P2435245022523968233.Spec : Prop :=
  ∀ n, P2435245022523968233.a n = A380165 (n + 1)

theorem P2435245022523968233.correct : P2435245022523968233.Spec := by
  intro n
  simp only [A380165, Nat.add_sub_cancel]

end A380165

/-! ## A380165.P1816279399864626244

`A000010((n+1)/A350388(n+1))`
-/

namespace A380165.P1816279399864626244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A380165.P1816279399864626244

namespace A380165

/-- `A000010((n+1)/A350388(n+1))` -/
def P1816279399864626244.Spec : Prop :=
  ∀ n, P1816279399864626244.a n = A380165 (n + 1)

end A380165

/-! ## A380165.P17167803760541525997

`A000010(n+1)/A380164(n+1)`
-/

namespace A380165.P17167803760541525997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A380164 (n + 1) : ℚ)

end

end A380165.P17167803760541525997

namespace A380165

/-- `A000010(n+1)/A380164(n+1)` -/
def P17167803760541525997.Spec : Prop :=
  ∀ n, P17167803760541525997.a n = (A380165 (n + 1) : ℚ)

end A380165

/-! ## A380165.P15660735606260094880

`A000010(n+1)/A000010(A071974(n+1)²)`
-/

namespace A380165.P15660735606260094880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (A071974 (n + 1) ^ 2).toNat : ℚ)

end

end A380165.P15660735606260094880

namespace A380165

/-- `A000010(n+1)/A000010(A071974(n+1)²)` -/
def P15660735606260094880.Spec : Prop :=
  ∀ n, P15660735606260094880.a n = (A380165 (n + 1) : ℚ)

end A380165

/-! ## A380165.P17570718676453371589

`A000252(n+1)/(A000056(n+1)*A380164(n+1))`
-/

namespace A380165.P17570718676453371589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000056 (n + 1) * A380164 (n + 1) : ℚ)

end

end A380165.P17570718676453371589

namespace A380165

/-- `A000252(n+1)/(A000056(n+1)*A380164(n+1))` -/
def P17570718676453371589.Spec : Prop :=
  ∀ n, P17570718676453371589.a n = (A380165 (n + 1) : ℚ)

end A380165

/-! ## A380165.P4762598481400487375

`A000010((n+1)/(A019554(n+1)/A071975(n+1))²)`
-/

namespace A380165.P4762598481400487375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((A019554 (n + 1) : ℚ) / (A071975 (n + 1) : ℚ)) ^ 2)).toNat

end

end A380165.P4762598481400487375

namespace A380165

/-- `A000010((n+1)/(A019554(n+1)/A071975(n+1))²)` -/
def P4762598481400487375.Spec : Prop :=
  ∀ n, P4762598481400487375.a n = A380165 (n + 1)

end A380165

/-!
# A380168: Nonsquares whose square part is greater than their squarefree part.

The programs for A380168, there is no canonical definition to state claims against.
-/

/-! ## A380168.P1195747248871254142

`filter[A069189(n+1), A049240(#)]`
-/

namespace A380168.P1195747248871254142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A380168.P1195747248871254142

/-! ## A380168.P5287834614190929622

`∩[A051144(n+1), A069189(n+1)]`
-/

namespace A380168.P5287834614190929622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380168.P5287834614190929622

/-! ## A380168.P15655769924175858807

`∩[A069189(n+1), A089229(n+1)]`
-/

namespace A380168.P15655769924175858807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380168.P15655769924175858807

/-! ## A380168.P11528802335098544572

`∩[A000037(n+1), A069189(n+1)]`
-/

namespace A380168.P11528802335098544572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380168.P11528802335098544572

/-! ## A380168.P9694057448051391745

`∩[A069189(n+1), A164514(n+1)]`
-/

namespace A380168.P9694057448051391745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380168.P9694057448051391745

/-! ## A380168.P11344176327913112167

`filter[A069189(n+1), A267594(#)]`
-/

namespace A380168.P11344176327913112167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A380168.P11344176327913112167

/-! ## A380168.P12401183205353364858

`filter[A069189(n+1), A267635(#)]`
-/

namespace A380168.P12401183205353364858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A380168.P12401183205353364858

/-!
# A380170: Coefficient [k^1] of Wynn's converging polynomial p_n(k) of Weber functions.

The programs for A380170, there is no canonical definition to state claims against.
-/

/-! ## A380170.P12242983846565923295

`A380169(∑[n+1]+1)`
-/

namespace A380170.P12242983846565923295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380169 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A380170.P12242983846565923295

/-! ## A380170.P2850440915014334431

`A001663(n+1)-A132013(A256966(3*(n+1)))`
-/

namespace A380170.P2850440915014334431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001663 (n + 1) - A132013 (A256966 (3 * (n + 1))).toNat

end

end A380170.P2850440915014334431

/-!
# A380171: Numerators of coefficients in expansion of exp(-1 + 1 / Product_{k>=1} (1 - x^k)).

The programs for A380171, there is no canonical definition to state claims against.
-/

/-! ## A380171.P10670709820547609517

`A058892(n)/A049559(A240321(3*(n+1)))`
-/

namespace A380171.P10670709820547609517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058892 n : ℚ) / (A049559 (A240321 (3 * (n + 1))).toNat : ℚ)

end

end A380171.P10670709820547609517

/-! ## A380171.P10524595026158403803

`A058892(n)/A306345(A306388(n+5))`
-/

namespace A380171.P10524595026158403803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058892 n : ℚ) / (A306345 (A306388 (n + 5)).toNat : ℚ)

end

end A380171.P10524595026158403803

/-!
# A380172: Second center column of elementary triangular automaton rule 54, starting from a lone 1 cell.

The programs for A380172, there is no canonical definition to state claims against.
-/

/-! ## A380172.P17456696231474515345

`A038189(A376618(n+1)+A376604(n+1))`
-/

namespace A380172.P17456696231474515345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A376618 (n + 1) + A376604 (n + 1)).toNat

end

end A380172.P17456696231474515345

/-! ## A380172.P8453687109964847120

`A025427(A331040(n+1)%A068613(n))`
-/

namespace A380172.P8453687109964847120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (Int.tmod (A331040 (n + 1)) (A068613 n)).toNat

end

end A380172.P8453687109964847120

/-! ## A380172.P13441573412414859743

`A102243(A017377(3*n+1)+A000040(2*(n+2)))`
-/

namespace A380172.P13441573412414859743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102243 (A017377 (3 * n + 1) + A000040 (2 * (n + 2))).toNat

end

end A380172.P13441573412414859743

/-! ## A380172.P16469567374113076788

`A080846(2*A034878(2*n+3))`
-/

namespace A380172.P16469567374113076788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (2 * A034878 (2 * n + 3)).toNat

end

end A380172.P16469567374113076788

/-! ## A380172.P7287299199669752379

`A011655(A075680(2*(n+2))*A239455(n))`
-/

namespace A380172.P7287299199669752379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A075680 (2 * (n + 2)) * A239455 n).toNat

end

end A380172.P7287299199669752379

/-!
# A380173: Third center column of elementary triangular automaton rule 54, starting from a lone 1 cell.

The programs for A380173, there is no canonical definition to state claims against.
-/

/-! ## A380173.P17709136837981832741

`Δ[A380172(A028310(n))]²`
-/

namespace A380173.P17709136837981832741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380172 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A380173.P17709136837981832741

/-! ## A380173.P14679933658201425771

`Δ[A380172(A233583(n+1))]²`
-/

namespace A380173.P14679933658201425771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380172 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A380173.P14679933658201425771

/-! ## A380173.P11385345481570187793

`A010060(xor(A036584(n+3), A359862(2*n+1)))`
-/

namespace A380173.P11385345481570187793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (A036584 (n + 3)) (A359862 (2 * n + 1))).toNat

end

end A380173.P11385345481570187793

/-! ## A380173.P1839386638058957290

`A101688(3*A132576(n+1))`
-/

namespace A380173.P1839386638058957290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 (3 * A132576 (n + 1)).toNat

end

end A380173.P1839386638058957290

/-! ## A380173.P1967644306645367171

`A190227(lcm(∏{e}[n+1, #+1], A318636(2*(n+1))))`
-/

namespace A380173.P1967644306645367171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190227 (Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A318636 (2 * (n + 1))))

end

end A380173.P1967644306645367171

/-!
# A380175: Greedy sums of distinct squares.

The programs for A380175, there is no canonical definition to state claims against.
-/

/-! ## A380175.P13259551769082733691

`eq[0, A111755(A028310(n))]`
-/

namespace A380175.P13259551769082733691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111755 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380175.P13259551769082733691

/-! ## A380175.P10579378845241034724

`∪[n², A242307(n+1)]`
-/

namespace A380175.P10579378845241034724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380175.P10579378845241034724

/-! ## A380175.P18387639162879269669

`eq[1, Δ[A157477(n)]]`
-/

namespace A380175.P18387639162879269669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380175.P18387639162879269669

/-!
# A380176: Number of pairs of adjacent equal parts in all gap-free compositions of n.

The programs for A380176, there is no canonical definition to state claims against.
-/

/-! ## A380176.P8617887831243673458

`A284359(A287254(n))-2`
-/

namespace A380176.P8617887831243673458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A287254 n).toNat - 2

end

end A380176.P8617887831243673458

/-! ## A380176.P12752478155310210310

`A003056(A123922(n)-A010054(n))`
-/

namespace A380176.P12752478155310210310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A123922 n - A010054 n).toNat

end

end A380176.P12752478155310210310

/-!
# A380178: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A162659.

The programs for A380178, there is no canonical definition to state claims against.
-/

/-! ## A380178.P11354043001875256160

`A118759(A384802(n))`
-/

namespace A380178.P11354043001875256160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A384802 n).toNat

end

end A380178.P11354043001875256160

/-! ## A380178.P13728454638032542052

`filter[A384802(n), A102609(#)]`
-/

namespace A380178.P13728454638032542052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A380178.P13728454638032542052

/-! ## A380178.P7949950508522996757

`filter[A384802(n), A337263(#)]`
-/

namespace A380178.P7949950508522996757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337263 (f1 j).toNat = 1) n)

end

end A380178.P7949950508522996757

/-! ## A380178.P3036535277791259105

`filter[A384802(n), A114213(#)]`
-/

namespace A380178.P3036535277791259105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A380178.P3036535277791259105

/-! ## A380178.P3758228102043538822

`filter[A384802(n), A267959(#)]`
-/

namespace A380178.P3758228102043538822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A380178.P3758228102043538822

/-!
# A380181: Distinct nonpositive values of A380180, negated, in order of appearance and with offset 0.

The programs for A380181, there is no canonical definition to state claims against.
-/

/-! ## A380181.P17646191746795805258

`A368239(A380182(A368239(n)))`
-/

namespace A380181.P17646191746795805258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368239 (A380182 (A368239 n).toNat).toNat

end

end A380181.P17646191746795805258

/-!
# A380183: Distinct nonnegative values of A380123, in order of appearance and with offset 0.

The programs for A380183, there is no canonical definition to state claims against.
-/

/-! ## A380183.P631061446255952697

`A354182(A380185(n))`
-/

namespace A380183.P631061446255952697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354182 (A380185 n).toNat

end

end A380183.P631061446255952697

/-!
# A380184: Inverse permutation to A380183.

The programs for A380184, there is no canonical definition to state claims against.
-/

/-! ## A380184.P11105434787209351439

`A380186(A354182(n))`
-/

namespace A380184.P11105434787209351439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380186 (A354182 n).toNat

end

end A380184.P11105434787209351439

/-! ## A380184.P9167641819809885050

`A380186(A380183(A380186(n)))`
-/

namespace A380184.P9167641819809885050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380186 (A380183 (A380186 n).toNat).toNat

end

end A380184.P9167641819809885050

/-!
# A380185: Distinct nonpositive values of A380123, negated, in order of appearance and with offset 0.

The programs for A380185, there is no canonical definition to state claims against.
-/

/-! ## A380185.P17316271211873316886

`A354182(A380183(n))`
-/

namespace A380185.P17316271211873316886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354182 (A380183 n).toNat

end

end A380185.P17316271211873316886

/-!
# A380186: Inverse permutation to A380185.

The programs for A380186, there is no canonical definition to state claims against.
-/

/-! ## A380186.P9727668808988785701

`A380184(A354182(n))`
-/

namespace A380186.P9727668808988785701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380184 (A354182 n).toNat

end

end A380186.P9727668808988785701

/-! ## A380186.P14357840671906964901

`A380184(A380185(A380184(n)))`
-/

namespace A380186.P14357840671906964901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380184 (A380185 (A380184 n).toNat).toNat

end

end A380186.P14357840671906964901

/-!
# A380187: Smallest integer not yet present in the sequence such that the sum of the first a(n) terms of the sequence is odd for n odd and even for n even.

The programs for A380187, the canonical program `A380187.P15241773472283240603` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380187 has offset 1).

The definition of A380187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380187.P15241773472283240603

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=7, a(5)=2, a(6)=9, a(7)=6, a(8)=8, a(9)=11`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A380187

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P15241773472283240603.Spec : Prop :=
  ∀ n, P15241773472283240603.a n = A380187 (n + 1)

theorem P15241773472283240603.correct : P15241773472283240603.Spec := by
  intro n
  simp only [A380187, Nat.add_sub_cancel]

end A380187

/-!
# A380188: a(n) is the maximum number of coincidences of the first n terms of this sequence and a cyclic shift of the first n terms of A380189, i.e., the number of equalities a(k) = A380189((s+k) mod n) for 0 <= k < n, maximized over s.

The programs for A380188, there is no canonical definition to state claims against.
-/

/-! ## A380188.P2724835978420560346

`∑[char[A380190(n+1)]]`
-/

namespace A380188.P2724835978420560346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380188.P2724835978420560346

/-!
# A380192: Sum mod(10) of digits of n-th prime.

The programs for A380192, the canonical program `A380192.P1180676149005535308` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380192 has offset 1).

The definition of A380192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380192.P1180676149005535308

`A010879(A007605(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A380192

/-- `A010879(A007605(n+1))` -/
def P1180676149005535308.Spec : Prop :=
  ∀ n, P1180676149005535308.a n = A380192 (n + 1)

theorem P1180676149005535308.correct : P1180676149005535308.Spec := by
  intro n
  simp only [A380192, Nat.add_sub_cancel]

end A380192

/-! ## A380192.P16233181002907741502

`A007605(n+1)%A040020(n)`
-/

namespace A380192.P16233181002907741502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007605 (n + 1)) (A040020 n)

end

end A380192.P16233181002907741502

namespace A380192

/-- `A007605(n+1)%A040020(n)` -/
def P16233181002907741502.Spec : Prop :=
  ∀ n, P16233181002907741502.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P1633330353856077773

`A031216(n+1)%A040020(n)`
-/

namespace A380192.P1633330353856077773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031216 (n + 1)) (A040020 n)

end

end A380192.P1633330353856077773

namespace A380192

/-- `A031216(n+1)%A040020(n)` -/
def P1633330353856077773.Spec : Prop :=
  ∀ n, P1633330353856077773.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P14488136324634692187

`A053837(A028905(n+1))`
-/

namespace A380192.P14488136324634692187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A028905 (n + 1)).toNat

end

end A380192.P14488136324634692187

namespace A380192

/-- `A053837(A028905(n+1))` -/
def P14488136324634692187.Spec : Prop :=
  ∀ n, P14488136324634692187.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P814968316524131824

`A053837(A000040(n+1))`
-/

namespace A380192.P814968316524131824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A000040 (n + 1)).toNat

end

end A380192.P814968316524131824

namespace A380192

/-- `A053837(A000040(n+1))` -/
def P814968316524131824.Spec : Prop :=
  ∀ n, P814968316524131824.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P15370139586111838869

`A053837(A004087(n+1))`
-/

namespace A380192.P15370139586111838869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A004087 (n + 1)).toNat

end

end A380192.P15370139586111838869

namespace A380192

/-- `A053837(A004087(n+1))` -/
def P15370139586111838869.Spec : Prop :=
  ∀ n, P15370139586111838869.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P3174462478823376450

`A053837(A028906(n+1))`
-/

namespace A380192.P3174462478823376450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A028906 (n + 1)).toNat

end

end A380192.P3174462478823376450

namespace A380192

/-- `A053837(A028906(n+1))` -/
def P3174462478823376450.Spec : Prop :=
  ∀ n, P3174462478823376450.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P17878091100168638866

`A053837(A008578(n+2))`
-/

namespace A380192.P17878091100168638866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A008578 (n + 2)).toNat

end

end A380192.P17878091100168638866

namespace A380192

/-- `A053837(A008578(n+2))` -/
def P17878091100168638866.Spec : Prop :=
  ∀ n, P17878091100168638866.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P8254040732636830259

`A053837(A182986(n+2))`
-/

namespace A380192.P8254040732636830259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A182986 (n + 2)).toNat

end

end A380192.P8254040732636830259

namespace A380192

/-- `A053837(A182986(n+2))` -/
def P8254040732636830259.Spec : Prop :=
  ∀ n, P8254040732636830259.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P1305230218853692768

`A053837(A007504(n+1)-A007504(n))`
-/

namespace A380192.P1305230218853692768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A007504 (n + 1) - A007504 n).toNat

end

end A380192.P1305230218853692768

namespace A380192

/-- `A053837(A007504(n+1)-A007504(n))` -/
def P1305230218853692768.Spec : Prop :=
  ∀ n, P1305230218853692768.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P14963531001707807172

`A053837(A101989(n+1))`
-/

namespace A380192.P14963531001707807172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A101989 (n + 1)).toNat

end

end A380192.P14963531001707807172

namespace A380192

/-- `A053837(A101989(n+1))` -/
def P14963531001707807172.Spec : Prop :=
  ∀ n, P14963531001707807172.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P16872151140562437693

`A010879(A031216(n+1))`
-/

namespace A380192.P16872151140562437693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A031216 (n + 1)).toNat

end

end A380192.P16872151140562437693

namespace A380192

/-- `A010879(A031216(n+1))` -/
def P16872151140562437693.Spec : Prop :=
  ∀ n, P16872151140562437693.a n = A380192 (n + 1)

end A380192

/-! ## A380192.P8178370500320613880

`A053837(A142342(n+1))`
-/

namespace A380192.P8178370500320613880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A142342 (n + 1)).toNat

end

end A380192.P8178370500320613880

namespace A380192

/-- `A053837(A142342(n+1))` -/
def P8178370500320613880.Spec : Prop :=
  ∀ n, P8178370500320613880.a n = A380192 (n + 1)

end A380192

/-!
# A380193: a(n) is the largest number whose sixth power is an n-digit sixth power which has the maximum sum of digits (A373994(n)).

The programs for A380193, there is no canonical definition to state claims against.
-/

/-! ## A380193.P14094406781791556361

`A083398(A042261(n+1))`
-/

namespace A380193.P14094406781791556361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083398 (A042261 (n + 1)).toNat

end

end A380193.P14094406781791556361

/-! ## A380193.P12205084743619617268

`eq[1, A001221(A193988(n+1))]`
-/

namespace A380193.P12205084743619617268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A193988 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380193.P12205084743619617268

/-! ## A380193.P15521716313924546176

`∑[A094076(A082733(n+1))]+1`
-/

namespace A380193.P15521716313924546176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094076 (A082733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A380193.P15521716313924546176

/-! ## A380193.P13643337238113629490

`eq[A343856(n+1), A347161(n+1)]`
-/

namespace A380193.P13643337238113629490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380193.P13643337238113629490

/-! ## A380193.P16646646122867891106

`eq[A343856(n+1), A347162(n+1)]`
-/

namespace A380193.P16646646122867891106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380193.P16646646122867891106

/-!
# A380195: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and under-under-down dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A380195, there is no canonical definition to state claims against.
-/

/-! ## A380195.P17314770000681366302

`A382354(A066182(n+1))`
-/

namespace A380195.P17314770000681366302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382354 (A066182 (n + 1)).toNat

end

end A380195.P17314770000681366302

/-! ## A380195.P15803524686302928913

`A215366(A025657(n+1))+A010051(A056363(n))`
-/

namespace A380195.P15803524686302928913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (A025657 (n + 1)).toNat + A010051 (A056363 n).toNat

end

end A380195.P15803524686302928913

/-! ## A380195.P2047648713614473466

`A005086(A063189(n+1))`
-/

namespace A380195.P2047648713614473466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (A063189 (n + 1)).toNat

end

end A380195.P2047648713614473466

/-! ## A380195.P16626281485048225348

`A110549(n*A018805(3*(n+1)))`
-/

namespace A380195.P16626281485048225348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110549 ((n : ℤ) * A018805 (3 * (n + 1))).toNat

end

end A380195.P16626281485048225348

/-! ## A380195.P8880827360305323555

`A003324(A132364(n)+A084927(n+1))`
-/

namespace A380195.P8880827360305323555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A132364 n + A084927 (n + 1)).toNat

end

end A380195.P8880827360305323555

/-!
# A380197: Number of ways to choose a simple labeled graph on [n] and properly color the vertices using the minimum number of colors.

The programs for A380197, there is no canonical definition to state claims against.
-/

/-! ## A380197.P286105493830404173

`A166104(n*a(n-1))` with `a(0)=1`
-/

namespace A380197.P286105493830404173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A166104 ((n : ℤ) * a (n - 1)).toNat

end

end A380197.P286105493830404173

/-!
# A380198: Difference between pi(2^n) and the integer nearest to 2^n / log(2^n).

The programs for A380198, the canonical program `A380198.P8091464907111529259` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380198 has offset 1).

The definition of A380198 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053622, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380198.P8091464907111529259

`-A053622(2^(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A380198

/-- `-A053622(2^(n+1))` -/
def P8091464907111529259.Spec : Prop :=
  ∀ n, P8091464907111529259.a n = A380198 (n + 1)

theorem P8091464907111529259.correct : P8091464907111529259.Spec := by
  intro n
  simp only [A380198, Nat.add_sub_cancel]

end A380198

/-! ## A380198.P16448988999498282052

`A007053(n+1)-A050499(2^(n+1))`
-/

namespace A380198.P16448988999498282052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1) - A050499 (2 ^ (n + 1))

end

end A380198.P16448988999498282052

namespace A380198

/-- `A007053(n+1)-A050499(2^(n+1))` -/
def P16448988999498282052.Spec : Prop :=
  ∀ n, P16448988999498282052.a n = A380198 (n + 1)

end A380198

/-!
# A380199: Smallest number of leading digits of A002110(n) (primorial(n)) that form a prime (or 0 if none exist).

The programs for A380199, there is no canonical definition to state claims against.
-/

/-! ## A380199.P10903062551871980320

`A364911(A364749(3*n+2))%A273506(3*n+5)`
-/

namespace A380199.P10903062551871980320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364911 (A364749 (3 * n + 2)).toNat) (A273506 (3 * n + 5))

end

end A380199.P10903062551871980320

