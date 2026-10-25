import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A225500: Expansion of 1/(1 - x - x^5 + x^6 - x^7 - x^11 + x^12).

The programs for A225500, the canonical program `A225500.P2129066495036101014` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225500 has offset 0).

The definition of A225500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^5+x^6-x^7-x^11+x^12))` (program `A225500.P2129066495036101014`, by `A225500.P2129066495036101014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225500.P2129066495036101014

`ogf(1/(1-x-x^5+x^6-x^7-x^11+x^12))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225500

/-- `ogf(1/(1-x-x^5+x^6-x^7-x^11+x^12))` -/
def P2129066495036101014.Spec : Prop :=
  ∀ n, P2129066495036101014.a n = A225500 n

theorem P2129066495036101014.correct : P2129066495036101014.Spec := by
  intro n
  simp only [A225500]

end A225500

/-! ## A225500.P13048474787792002152

`A000196(Δ[A000720(A164388(n))])`
-/

namespace A225500.P13048474787792002152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A164388 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A225500.P13048474787792002152

namespace A225500

/-- `A000196(Δ[A000720(A164388(n))])` -/
def P13048474787792002152.Spec : Prop :=
  ∀ n, P13048474787792002152.a n = A225500 n

end A225500

/-! ## A225500.P328265689361122334

`ceil(A307675(2*(n+1))/A290709(n+1))`
-/

namespace A225500.P328265689361122334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307675 (2 * (n + 1)) : ℚ) / (A290709 (n + 1) : ℚ)⌉

end

end A225500.P328265689361122334

namespace A225500

/-- `ceil(A307675(2*(n+1))/A290709(n+1))` -/
def P328265689361122334.Spec : Prop :=
  ∀ n, P328265689361122334.a n = A225500 n

end A225500

/-! ## A225500.P575501238984959795

`floor(A007323(n)/A073188(A115993(n)))`
-/

namespace A225500.P575501238984959795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007323 n : ℚ) / (A073188 (A115993 n).toNat : ℚ)⌋

end

end A225500.P575501238984959795

namespace A225500

/-- `floor(A007323(n)/A073188(A115993(n)))` -/
def P575501238984959795.Spec : Prop :=
  ∀ n, P575501238984959795.a n = A225500 n

end A225500

/-!
# A225501: Expansion of 1/(1 - x^4 - x^5 - x^6 - x^7 - x^8 + x^12).

The programs for A225501, the canonical program `A225501.P895901704853747776` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225501 has offset 0).

The definition of A225501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^7-x^8+x^12))` (program `A225501.P895901704853747776`, by `A225501.P895901704853747776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225501.P895901704853747776

`ogf(1/(1-x^4-x^5-x^6-x^7-x^8+x^12))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225501

/-- `ogf(1/(1-x^4-x^5-x^6-x^7-x^8+x^12))` -/
def P895901704853747776.Spec : Prop :=
  ∀ n, P895901704853747776.a n = A225501 n

theorem P895901704853747776.correct : P895901704853747776.Spec := by
  intro n
  simp only [A225501]

end A225501

/-! ## A225501.P13281084115620744487

`floor(A005843(A289115(n))/A014209(n+1))`
-/

namespace A225501.P13281084115620744487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005843 (A289115 n).toNat : ℚ) / (A014209 (n + 1) : ℚ)⌋

end

end A225501.P13281084115620744487

namespace A225501

/-- `floor(A005843(A289115(n))/A014209(n+1))` -/
def P13281084115620744487.Spec : Prop :=
  ∀ n, P13281084115620744487.a n = A225501 n

end A225501

/-! ## A225501.P9976435123375316550

`floor(A006355(n)/A253926(n))`
-/

namespace A225501.P9976435123375316550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006355 n : ℚ) / (A253926 (n + 15) : ℚ)⌋

end

end A225501.P9976435123375316550

namespace A225501

/-- `floor(A006355(n)/A253926(n))` -/
def P9976435123375316550.Spec : Prop :=
  ∀ n, P9976435123375316550.a n = A225501 n

end A225501

/-! ## A225501.P4619453069087356030

`A086707(A188674(n)+A060576(n))`
-/

namespace A225501.P4619453069087356030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086707 (A188674 n + A060576 n).toNat

end

end A225501.P4619453069087356030

namespace A225501

/-- `A086707(A188674(n)+A060576(n))` -/
def P4619453069087356030.Spec : Prop :=
  ∀ n, P4619453069087356030.a n = A225501 n

end A225501

/-! ## A225501.P2368558520036909051

`A048766(xor(A176510(n), A190591(n)))`
-/

namespace A225501.P2368558520036909051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.xor (A176510 n) (A190591 n)).toNat

end

end A225501.P2368558520036909051

namespace A225501

/-- `A048766(xor(A176510(n), A190591(n)))` -/
def P2368558520036909051.Spec : Prop :=
  ∀ n, P2368558520036909051.a n = A225501 n

end A225501

/-!
# A225502: Least m > 0 such that prime(n)*triangular(m) is a triangular number, or 0 if no such m exists.

The programs for A225502, there is no canonical definition to state claims against.
-/

/-! ## A225502.P9605049128095503074

`A120744(2*A001749(n+1))`
-/

namespace A225502.P9605049128095503074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (2 * A001749 (n + 1)).toNat

end

end A225502.P9605049128095503074

/-! ## A225502.P5184207004234871608

`A120744(4*A100484(n+1))`
-/

namespace A225502.P5184207004234871608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (4 * A100484 (n + 1)).toNat

end

end A225502.P5184207004234871608

/-! ## A225502.P6678044914918446692

`A120744(8*A000040(n+1))`
-/

namespace A225502.P6678044914918446692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (8 * A000040 (n + 1)).toNat

end

end A225502.P6678044914918446692

/-! ## A225502.P2441289121583185874

`A120744(A022144(p?[A344180(n)]))`
-/

namespace A225502.P2441289121583185874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (A022144 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A225502.P2441289121583185874

/-! ## A225502.P4507577513545062068

`A120744(A008590(A000040(n+1)))`
-/

namespace A225502.P4507577513545062068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (A008590 (A000040 (n + 1)).toNat).toNat

end

end A225502.P4507577513545062068

/-! ## A225502.P7589310055959401896

`A120744(A008574(A100484(n+1)))`
-/

namespace A225502.P7589310055959401896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (A008574 (A100484 (n + 1)).toNat).toNat

end

end A225502.P7589310055959401896

/-!
# A225503: Least triangular number t such that t = prime(n)*triangular(m) for some m>0, or 0 if no such t exists.

The programs for A225503, there is no canonical definition to state claims against.
-/

/-! ## A225503.P9607346801018680571

`Δ[A007504(n)]*A000217(A225502(n+1))`
-/

namespace A225503.P9607346801018680571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 (A225502 (n + 1)).toNat

end

end A225503.P9607346801018680571

/-! ## A225503.P13469665745805997775

`p?[A001057(n)]*A000217(A225502(n+1))`
-/

namespace A225503.P13469665745805997775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000217 (A225502 (n + 1)).toNat

end

end A225503.P13469665745805997775

/-! ## A225503.P8300339129259138120

`A000040(n+1)*A000217(A225502(n+1))`
-/

namespace A225503.P8300339129259138120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000217 (A225502 (n + 1)).toNat

end

end A225503.P8300339129259138120

/-! ## A225503.P2774008184295955618

`record[A006530(n+2)]*A000217(A225502(n+1))`
-/

namespace A225503.P2774008184295955618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000217 (A225502 (n + 1)).toNat

end

end A225503.P2774008184295955618

/-! ## A225503.P8488516934125750948

`record[A014963(n+2)]*A000217(A225502(n+1))`
-/

namespace A225503.P8488516934125750948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000217 (A225502 (n + 1)).toNat

end

end A225503.P8488516934125750948

/-!
# A225504: a(n) = prime((a(n-1) + a(n-2)) / 2) for n>1, with a(0) = 3, a(1) = 5.

The programs for A225504, there is no canonical definition to state claims against.
-/

/-! ## A225504.P8489085858911611365

`A073846(a(n-1)+a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A225504.P8489085858911611365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  A073846 (a (n - 1) + a (n - 2)).toNat

end

end A225504.P8489085858911611365

/-! ## A225504.P8083079631301282091

`A082500(a(n-1)+a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A225504.P8083079631301282091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  A082500 (a (n - 1) + a (n - 2)).toNat

end

end A225504.P8083079631301282091

/-! ## A225504.P449189505178058927

`A162753(a(n-1)+a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A225504.P449189505178058927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  A162753 (a (n - 1) + a (n - 2)).toNat

end

end A225504.P449189505178058927

/-! ## A225504.P1238530548402367322

`A207790(a(n-1)+a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A225504.P1238530548402367322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  A207790 (a (n - 1) + a (n - 2)).toNat

end

end A225504.P1238530548402367322

/-! ## A225504.P16603679171276419213

`A093515(a(n-1)+a(n-2)-2)` with `a(0)=3, a(1)=5`
-/

namespace A225504.P16603679171276419213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  A093515 (a (n - 1) + a (n - 2) - 2).toNat

end

end A225504.P16603679171276419213

/-!
# A225505: a(n) = triangular(a(n-1)+a(n-2)) if n > 1, else a(n) = n.

The programs for A225505, there is no canonical definition to state claims against.
-/

/-! ## A225505.P340859809928794883

`C(a(n-1)+a(n-2)+1, 2)` with `a(0)=0, a(1)=1`
-/

namespace A225505.P340859809928794883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose (a (n - 1) + (a (n - 2) + 1)) 2

end

end A225505.P340859809928794883

/-! ## A225505.P4379698149546871555

`C(a(n-1)-xor(-1, a(n-2)), 2)` with `a(0)=0, a(1)=1`
-/

namespace A225505.P4379698149546871555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose ((a (n - 1) : ℤ) - Int.xor (-1) (a (n - 2) : ℤ)).toNat 2

end

end A225505.P4379698149546871555

/-! ## A225505.P16199053500531947381

`C(2-floor(1-a(n-1)-a(n-2)), 2)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A225505.P16199053500531947381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose (2 - (1 - (a (n - 1) : ℤ) - (a (n - 2) : ℤ))).toNat 2

end

end A225505.P16199053500531947381

/-! ## A225505.P8713635827295757499

`C(4/2-(1-a(n-1)-a(n-2)), 2)` with `a(0)=0, a(1)=1`
-/

namespace A225505.P8713635827295757499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose (SequenceMachineLib.roundAway ((4 : ℚ) / 2 - (1 - (a (n - 1) : ℤ) - (a (n - 2) : ℤ) : ℚ))).toNat 2

end

end A225505.P8713635827295757499

/-! ## A225505.P13699647991871886411

`C(A091957(n+1)+1, 2)`
-/

namespace A225505.P13699647991871886411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091957 (n + 1) + 1).toNat 2

end

end A225505.P13699647991871886411

/-!
# A225506: -2-Knödel numbers.

The programs for A225506, there is no canonical definition to state claims against.
-/

/-! ## A225506.P16975451532013004258

`eq[1, round(gcd(n, A079612(n+2))/(n+3))]`
-/

namespace A225506.P16975451532013004258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.gcd (n : ℤ) (A079612 (n + 2)) : ℚ) / (n + 3 : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225506.P16975451532013004258

/-! ## A225506.P3559512084877175126

`eq[1, (n+4)%A002322(n+1)]+1`
-/

namespace A225506.P3559512084877175126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 4 : ℤ) (A002322 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225506.P3559512084877175126

/-! ## A225506.P941320004218704806

`∩[A176526(n+1), A181055(n+1)]`
-/

namespace A225506.P941320004218704806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225506.P941320004218704806

/-! ## A225506.P16649046014824319139

`∩[A018676(n+1), A258068(A000430(n+4))]`
-/

namespace A225506.P16649046014824319139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258068 (A000430 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225506.P16649046014824319139

/-!
# A225507: -3-Knödel numbers.

The programs for A225507, there is no canonical definition to state claims against.
-/

/-! ## A225507.P1958878000168414798

`eq[4, (n+8)%A002322(n+1)]+1`
-/

namespace A225507.P1958878000168414798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 8 : ℤ) (A002322 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225507.P1958878000168414798

/-! ## A225507.P6960174688218803210

`∩[A020137(n+1), A122620(n+1)]`
-/

namespace A225507.P6960174688218803210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225507.P6960174688218803210

/-! ## A225507.P9295856924101067829

`∩[A122620(n+1), A231570(n+1)]`
-/

namespace A225507.P9295856924101067829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225507.P9295856924101067829

/-!
# A225508: -4-Knödel numbers.

The programs for A225508, there is no canonical definition to state claims against.
-/

/-! ## A225508.P3546879565288658207

`record[gcd(A004277(n+2), A006863(n+4))]`
-/

namespace A225508.P3546879565288658207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004277 (n + 2)) (A006863 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225508.P3546879565288658207

/-! ## A225508.P11009018584473655695

`record[gcd(n+4, A079612(n+8))]`
-/

namespace A225508.P11009018584473655695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 4 : ℤ) (A079612 (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225508.P11009018584473655695

/-! ## A225508.P12451918718724552763

`eq[1, (n+6)%A002322(n+1)]+1`
-/

namespace A225508.P12451918718724552763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 6 : ℤ) (A002322 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225508.P12451918718724552763

/-! ## A225508.P13974968590364803944

`lt[A073101(3*n+2), A069497(A183093(3*n+2))]`
-/

namespace A225508.P13974968590364803944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073101 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (A183093 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225508.P13974968590364803944

/-! ## A225508.P16942501204310719804

`lt[A106609(n), A030132(n)]`
-/

namespace A225508.P16942501204310719804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225508.P16942501204310719804

/-!
# A225509: -5-Knödel numbers.

The programs for A225509, there is no canonical definition to state claims against.
-/

/-! ## A225509.P4282635331539556587

`lt[10, C(gcd(n, A079612(n+5))+1, n)]`
-/

namespace A225509.P4282635331539556587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (n : ℤ) (A079612 (n + 5)) + 1) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225509.P4282635331539556587

/-! ## A225509.P6936084397330722726

`A343338(xor(A262891(3*n+2), A351204(3*n)))`
-/

namespace A225509.P6936084397330722726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (Int.xor (A262891 (3 * n + 2)) (A351204 (3 * n))).toNat

end

end A225509.P6936084397330722726

/-!
# A225510: -6-Knödel numbers.

The programs for A225510, there is no canonical definition to state claims against.
-/

/-! ## A225510.P8700826138107920140

`record[gcd(abs(1-n)+3, A079612(n+8))]`
-/

namespace A225510.P8700826138107920140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|1 - (n : ℤ)| + 3) (A079612 (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225510.P8700826138107920140

/-! ## A225510.P16495577745975677868

`eq[1, (n+8)%A002322(n+1)]+1`
-/

namespace A225510.P16495577745975677868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 8 : ℤ) (A002322 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225510.P16495577745975677868

/-! ## A225510.P16568818833517172154

`lt[A185709(A091012(n+1)), A284683(n+4)]`
-/

namespace A225510.P16568818833517172154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185709 (A091012 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225510.P16568818833517172154

/-! ## A225510.P16848563346439422296

`eq[A001511(A117159(3*n+5)), A284683(n+4)]`
-/

namespace A225510.P16848563346439422296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A117159 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225510.P16848563346439422296

/-! ## A225510.P5133716138340194748

`2*lt[((n-3)/gcd(3, n))², 2*n]`
-/

namespace A225510.P5133716138340194748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3 : ℚ) / (Nat.gcd 3 n : ℚ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A225510.P5133716138340194748

/-!
# A225512: -8-Knödel numbers.

The programs for A225512, there is no canonical definition to state claims against.
-/

/-! ## A225512.P7211551090499133882

`∑[A034444(A026554(n+1)+5)]`
-/

namespace A225512.P7211551090499133882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A026554 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225512.P7211551090499133882

/-! ## A225512.P1444589877928767822

`lt[A003602(n+1), A087467(2*(n+1))]+1`
-/

namespace A225512.P1444589877928767822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087467 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A225512.P1444589877928767822

/-! ## A225512.P16369848291138241009

`A000463(lt[A003602(n+1), A087467(n+1)])`
-/

namespace A225512.P16369848291138241009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225512.P16369848291138241009

/-! ## A225512.P8456668369784146459

`A001057(lt[A003602(n+1), A087467(n+1)])`
-/

namespace A225512.P8456668369784146459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225512.P8456668369784146459

/-! ## A225512.P8094756427622271523

`A189221(lt[A378037(2*(n+2)), A281962(3*n+1)])`
-/

namespace A225512.P8094756427622271523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378037 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281962 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189221 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225512.P8094756427622271523

/-!
# A225513: -9-Knödel numbers.

The programs for A225513, there is no canonical definition to state claims against.
-/

/-! ## A225513.P10703986075683992451

`A354958(A308510(n+1)%A354958(n+4))`
-/

namespace A225513.P10703986075683992451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354958 (Int.tmod (A308510 (n + 1)) (A354958 (n + 4))).toNat

end

end A225513.P10703986075683992451

/-! ## A225513.P9473258617144631005

`∩[A351467(A351467(n+1)), A014957(n+4)]`
-/

namespace A225513.P9473258617144631005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351467 (A351467 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225513.P9473258617144631005

/-! ## A225513.P278624661206934396

`A354958(A084736(n+1))`
-/

namespace A225513.P278624661206934396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354958 (A084736 (n + 1)).toNat

end

end A225513.P278624661206934396

/-!
# A225515: First differences of A121347.

The programs for A225515, there is no canonical definition to state claims against.
-/

/-! ## A225515.P12252676835617461174

`A121347(n+3)-A121347(n+2)`
-/

namespace A225515.P12252676835617461174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121347 (n + 3) - A121347 (n + 2)

end

end A225515.P12252676835617461174

/-! ## A225515.P6139171506754277941

`Δ[A121347(n+2)]`
-/

namespace A225515.P6139171506754277941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121347 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225515.P6139171506754277941

/-! ## A225515.P3459714785851532023

`ceil(ratio[A075357(n+2)])`
-/

namespace A225515.P3459714785851532023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A225515.P3459714785851532023

/-! ## A225515.P3085119682016994488

`ceil(ratio[A094331(n+2)])`
-/

namespace A225515.P3085119682016994488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A225515.P3085119682016994488

/-! ## A225515.P7049442087276836032

`A000029(Δ[A075357(n+2)])`
-/

namespace A225515.P7049442087276836032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (f1 (n + 1) - f1 n).toNat

end

end A225515.P7049442087276836032

/-! ## A225515.P17047613170851469756

`A000031(Δ[A075357(n+2)])`
-/

namespace A225515.P17047613170851469756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f1 (n + 1) - f1 n).toNat

end

end A225515.P17047613170851469756

/-! ## A225515.P8153221163066837464

`A000034(Δ[A075357(n+2)])`
-/

namespace A225515.P8153221163066837464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f1 (n + 1) - f1 n).toNat

end

end A225515.P8153221163066837464

/-! ## A225515.P6940680256562839556

`A000050(Δ[A075357(n+2)])`
-/

namespace A225515.P6940680256562839556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000050 (f1 (n + 1) - f1 n).toNat

end

end A225515.P6940680256562839556

/-! ## A225515.P6847656695013036842

`A000070(Δ[A075357(n+2)])`
-/

namespace A225515.P6847656695013036842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (f1 (n + 1) - f1 n).toNat

end

end A225515.P6847656695013036842

/-! ## A225515.P12687259478723181027

`A075371(Δ[A075357(n+2)])`
-/

namespace A225515.P12687259478723181027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075371 (f1 (n + 1) - f1 n).toNat

end

end A225515.P12687259478723181027

/-! ## A225515.P14826003253700510155

`A000005(Δ[Δ[A075357(n+1)]]+2)`
-/

namespace A225515.P14826003253700510155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n + 2).toNat

end

end A225515.P14826003253700510155

/-! ## A225515.P13330611180453553758

`A000041(Δ[A075357(n+2)+n+1])`
-/

namespace A225515.P13330611180453553758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A225515.P13330611180453553758

/-! ## A225515.P15097979030722103016

`A000108(Δ[A075357(n+2)+n+1])`
-/

namespace A225515.P15097979030722103016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (n + 1) - f1 n).toNat

end

end A225515.P15097979030722103016

/-! ## A225515.P7433177419546455919

`A014963(Δ[A075357(n+2)+n+1])`
-/

namespace A225515.P7433177419546455919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A225515.P7433177419546455919

/-! ## A225515.P3807769449096303789

`A121347(A121347(n+3)%A121347(n+2)+2)%3`
-/

namespace A225515.P3807769449096303789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121347 (Int.tmod (A121347 (n + 3)) (A121347 (n + 2)) + 2).toNat) 3

end

end A225515.P3807769449096303789

/-!
# A225516: Primes corresponding to terms of A225430.

The programs for A225516, there is no canonical definition to state claims against.
-/

/-! ## A225516.P3147142542755550036

`p?[A165355(A131042(n+2))]`
-/

namespace A225516.P3147142542755550036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (A131042 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225516.P3147142542755550036

/-! ## A225516.P3015793646727631203

`A000265(∑{digits}[A225430(n+1)², #])`
-/

namespace A225516.P3015793646727631203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225430 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A225516.P3015793646727631203

/-! ## A225516.P3983327040390457234

`A006530(∑{digits}[A225430(n+1)², #])`
-/

namespace A225516.P3983327040390457234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225430 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A225516.P3983327040390457234

/-! ## A225516.P11439259997576570281

`A093411(∑{digits}[A225430(n+1)², #])`
-/

namespace A225516.P11439259997576570281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225430 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A225516.P11439259997576570281

/-!
# A225517: Integers m > 1 such that expression m!/(prime(m-1)+1) is not an integer.

The programs for A225517, there is no canonical definition to state claims against.
-/

/-! ## A225517.P8352848923448986786

`record[(n+2)%A060000(A023509(n+1))]`
-/

namespace A225517.P8352848923448986786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A060000 (A023509 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225517.P8352848923448986786

/-!
# A225519: Primes of the form p + sum of squares of digits of p, where p is prime.

The programs for A225519, there is no canonical definition to state claims against.
-/

/-! ## A225519.P10939267726376419697

`A076503(A081606(n+3)%A220578(n+1))`
-/

namespace A225519.P10939267726376419697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (Int.tmod (A081606 (n + 3)) (A220578 (n + 1))).toNat

end

end A225519.P10939267726376419697

/-!
# A225520: The number of subsets of the set of divisors of n in which elements are pairwise coprime.

The programs for A225520, the canonical program `A225520.P8131934353027779697` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225520 has offset 1).

The definition of A225520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225520.P8131934353027779697

`2*∑{d}[n+1, A259936(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A225520

/-- `2*∑{d}[n+1, A259936(#)]` -/
def P8131934353027779697.Spec : Prop :=
  ∀ n, P8131934353027779697.a n = A225520 (n + 1)

theorem P8131934353027779697.correct : P8131934353027779697.Spec := by
  intro n
  simp only [A225520, Nat.add_sub_cancel]

end A225520

/-! ## A225520.P6433818420009222345

`A004277(∑{d}[n+1, A259936(#)])`
-/

namespace A225520.P6433818420009222345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ d ∈ Nat.divisors (f1 n), A259936 d).toNat

end

end A225520.P6433818420009222345

namespace A225520

/-- `A004277(∑{d}[n+1, A259936(#)])` -/
def P6433818420009222345.Spec : Prop :=
  ∀ n, P6433818420009222345.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P11930345335546586086

`A005843(∑{d}[n+1, A259936(#)])`
-/

namespace A225520.P11930345335546586086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ d ∈ Nat.divisors (f1 n), A259936 d).toNat

end

end A225520.P11930345335546586086

namespace A225520

/-- `A005843(∑{d}[n+1, A259936(#)])` -/
def P11930345335546586086.Spec : Prop :=
  ∀ n, P11930345335546586086.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P10435034902865131913

`A005843(A179797(A100565(n+1)))`
-/

namespace A225520.P10435034902865131913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A179797 (A100565 (n + 1)).toNat).toNat

end

end A225520.P10435034902865131913

namespace A225520

/-- `A005843(A179797(A100565(n+1)))` -/
def P10435034902865131913.Spec : Prop :=
  ∀ n, P10435034902865131913.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P13545256834112143737

`A179797(A100565(n+1))*A328579(2*n+1)`
-/

namespace A225520.P13545256834112143737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179797 (A100565 (n + 1)).toNat * A328579 (2 * n + 1)

end

end A225520.P13545256834112143737

namespace A225520

/-- `A179797(A100565(n+1))*A328579(2*n+1)` -/
def P13545256834112143737.Spec : Prop :=
  ∀ n, P13545256834112143737.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P10217481046228673993

`A118759(2*A100565(n+1))`
-/

namespace A225520.P10217481046228673993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (2 * A100565 (n + 1)).toNat

end

end A225520.P10217481046228673993

namespace A225520

/-- `A118759(2*A100565(n+1))` -/
def P10217481046228673993.Spec : Prop :=
  ∀ n, P10217481046228673993.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P16726449359412275840

`A000196((2*A100565(n+1))²)`
-/

namespace A225520.P16726449359412275840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((2 * A100565 (n + 1)) ^ 2).toNat

end

end A225520.P16726449359412275840

namespace A225520

/-- `A000196((2*A100565(n+1))²)` -/
def P16726449359412275840.Spec : Prop :=
  ∀ n, P16726449359412275840.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P3483668792995361321

`A000196(A004277(A100565(n+1))²)`
-/

namespace A225520.P3483668792995361321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004277 (A100565 (n + 1)).toNat ^ 2).toNat

end

end A225520.P3483668792995361321

namespace A225520

/-- `A000196(A004277(A100565(n+1))²)` -/
def P3483668792995361321.Spec : Prop :=
  ∀ n, P3483668792995361321.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P8932386890848635492

`A000196(A005843(A100565(n+1))²)`
-/

namespace A225520.P8932386890848635492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005843 (A100565 (n + 1)).toNat ^ 2).toNat

end

end A225520.P8932386890848635492

namespace A225520

/-- `A000196(A005843(A100565(n+1))²)` -/
def P8932386890848635492.Spec : Prop :=
  ∀ n, P8932386890848635492.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P15252229398001375649

`A137735(A005843(A100565(n+1))²)`
-/

namespace A225520.P15252229398001375649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A005843 (A100565 (n + 1)).toNat ^ 2).toNat

end

end A225520.P15252229398001375649

namespace A225520

/-- `A137735(A005843(A100565(n+1))²)` -/
def P15252229398001375649.Spec : Prop :=
  ∀ n, P15252229398001375649.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P7944978625560390071

`A016009(A061238(n+1))*A100565(n+1)`
-/

namespace A225520.P7944978625560390071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016009 (A061238 (n + 1)).toNat * A100565 (n + 1)

end

end A225520.P7944978625560390071

namespace A225520

/-- `A016009(A061238(n+1))*A100565(n+1)` -/
def P7944978625560390071.Spec : Prop :=
  ∀ n, P7944978625560390071.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P8462740214237896012

`A100565(p?[A002541(n+1)])*A100565(n+1)`
-/

namespace A225520.P8462740214237896012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100565 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A100565 (n + 1)

end

end A225520.P8462740214237896012

namespace A225520

/-- `A100565(p?[A002541(n+1)])*A100565(n+1)` -/
def P8462740214237896012.Spec : Prop :=
  ∀ n, P8462740214237896012.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P12197583364474396918

`2*A100565(n+1)%A194232(n+1)`
-/

namespace A225520.P12197583364474396918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A100565 (n + 1)) (A194232 (n + 1))

end

end A225520.P12197583364474396918

namespace A225520

/-- `2*A100565(n+1)%A194232(n+1)` -/
def P12197583364474396918.Spec : Prop :=
  ∀ n, P12197583364474396918.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P10634257209936866286

`A005843(A100565(n+1))%p?[A168171(n+1)]`
-/

namespace A225520.P10634257209936866286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A100565 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A225520.P10634257209936866286

namespace A225520

/-- `A005843(A100565(n+1))%p?[A168171(n+1)]` -/
def P10634257209936866286.Spec : Prop :=
  ∀ n, P10634257209936866286.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P12193237773602611474

`A000034(A034964(2*(n+1)))*A100565(n+1)`
-/

namespace A225520.P12193237773602611474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A034964 (2 * (n + 1))).toNat * A100565 (n + 1)

end

end A225520.P12193237773602611474

namespace A225520

/-- `A000034(A034964(2*(n+1)))*A100565(n+1)` -/
def P12193237773602611474.Spec : Prop :=
  ∀ n, P12193237773602611474.a n = A225520 (n + 1)

end A225520

/-! ## A225520.P8415576191602243974

`A020639(A096277(A096277(n+1)))*A100565(n+1)`
-/

namespace A225520.P8415576191602243974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A096277 (A096277 (n + 1)).toNat).toNat * A100565 (n + 1)

end

end A225520.P8415576191602243974

namespace A225520

/-- `A020639(A096277(A096277(n+1)))*A100565(n+1)` -/
def P8415576191602243974.Spec : Prop :=
  ∀ n, P8415576191602243974.a n = A225520 (n + 1)

end A225520

/-!
# A225523: Number of distinct products i*j over all pairs (i,j) with |i| + |j| <= n.

The programs for A225523, there is no canonical definition to state claims against.
-/

/-! ## A225523.P11458535868688693076

`2*A225527(n)-1`
-/

namespace A225523.P11458535868688693076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225527 n - 1

end

end A225523.P11458535868688693076

/-! ## A225523.P13326116567486773598

`2*A227800(n+1)+1`
-/

namespace A225523.P13326116567486773598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227800 (n + 1) + 1

end

end A225523.P13326116567486773598

/-! ## A225523.P9913860410671704280

`A227800(n+1)+A225527(n)`
-/

namespace A225523.P9913860410671704280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227800 (n + 1) + A225527 n

end

end A225523.P9913860410671704280

/-! ## A225523.P11813944182748422310

`A227800(A000027(n+1))+A227800(n+1)+1`
-/

namespace A225523.P11813944182748422310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227800 (A000027 (n + 1)).toNat + (A227800 (n + 1) + 1)

end

end A225523.P11813944182748422310

/-! ## A225523.P18218345659401783105

`A004273(A225527(n))`
-/

namespace A225523.P18218345659401783105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A225527 n).toNat

end

end A225523.P18218345659401783105

/-! ## A225523.P225921614182946198

`A004273(A227800(n+1)+1)`
-/

namespace A225523.P225921614182946198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A227800 (n + 1) + 1).toNat

end

end A225523.P225921614182946198

/-! ## A225523.P13715737226168047895

`A141310(2*A227800(n+1))`
-/

namespace A225523.P13715737226168047895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A227800 (n + 1)).toNat

end

end A225523.P13715737226168047895

/-! ## A225523.P10016253068805190420

`A023443(2*A225527(n))`
-/

namespace A225523.P10016253068805190420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A225527 n).toNat

end

end A225523.P10016253068805190420

/-! ## A225523.P1188268110272138710

`A004442(2*A227800(n+1))`
-/

namespace A225523.P1188268110272138710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A227800 (n + 1)).toNat

end

end A225523.P1188268110272138710

/-! ## A225523.P14468063869845631758

`A004442(A227800(n+1)+A227800(n+1))`
-/

namespace A225523.P14468063869845631758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A227800 (n + 1) + A227800 (n + 1)).toNat

end

end A225523.P14468063869845631758

/-! ## A225523.P18087770070568490376

`A242112(4*A227800(n+1))`
-/

namespace A225523.P18087770070568490376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (4 * A227800 (n + 1)).toNat

end

end A225523.P18087770070568490376

/-!
# A225524: G.f.: exp( Sum_{n>=1} (sigma(2*n) - sigma(n))*Lucas(n)*x^n/n ), where Lucas(n) = A000204(n) and sigma(n) = A000203(n) is the sum of divisors of n.

The programs for A225524, there is no canonical definition to state claims against.
-/

/-! ## A225524.P14208819872396856126

`A174726(2*A025182(n+4))`
-/

namespace A225524.P14208819872396856126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (2 * A025182 (n + 4)).toNat

end

end A225524.P14208819872396856126

/-! ## A225524.P10516301655161963946

`A258341(n)+A179770(A258341(n))`
-/

namespace A225524.P10516301655161963946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258341 n + A179770 (A258341 n).toNat

end

end A225524.P10516301655161963946

/-! ## A225524.P10773937255325783205

`A258341(n)+A124760(A330989(n))`
-/

namespace A225524.P10773937255325783205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258341 n + A124760 (A330989 n).toNat

end

end A225524.P10773937255325783205

/-!
# A225525: a(n) = (sigma(2*n) - sigma(n))*Lucas(n) where Lucas(n) = A000204(n) and sigma(n) = A000203(n) is the sum of divisors of n.

The programs for A225525, the canonical program `A225525.P7624985902735853994` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225525 has offset 1).

The definition of A225525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225525.P13018336158490182033

`Δ[floor(∑[ϕ^n])]*A054785(n+1)`
-/

namespace A225525.P13018336158490182033
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054785 (n + 1)

end

end A225525.P13018336158490182033

namespace A225525

/-- `Δ[floor(∑[ϕ^n])]*A054785(n+1)` -/
def P13018336158490182033.Spec : Prop :=
  ∀ n, P13018336158490182033.a n = A225525 (n + 1)

end A225525

/-! ## A225525.P7624985902735853994

`∑{d}[n+1, lcm(2, #)*A000032(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A225525

/-- `∑{d}[n+1, lcm(2, #)*A000032(n+1)]` -/
def P7624985902735853994.Spec : Prop :=
  ∀ n, P7624985902735853994.a n = A225525 (n + 1)

theorem P7624985902735853994.correct : P7624985902735853994.Spec := by
  intro n
  simp only [A225525, Nat.add_sub_cancel]

end A225525

/-! ## A225525.P5744956336645364574

`A002131(n+1)*A022112(n)`
-/

namespace A225525.P5744956336645364574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) * A022112 n

end

end A225525.P5744956336645364574

namespace A225525

/-- `A002131(n+1)*A022112(n)` -/
def P5744956336645364574.Spec : Prop :=
  ∀ n, P5744956336645364574.a n = A225525 (n + 1)

end A225525

/-! ## A225525.P8396801459508678861

`A054785(n+1)*A000204(n+1)`
-/

namespace A225525.P8396801459508678861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) * A000204 (n + 1)

end

end A225525.P8396801459508678861

namespace A225525

/-- `A054785(n+1)*A000204(n+1)` -/
def P8396801459508678861.Spec : Prop :=
  ∀ n, P8396801459508678861.a n = A225525 (n + 1)

end A225525

/-! ## A225525.P1569459230142971391

`2*A000032(n+1)*A002131(n+1)`
-/

namespace A225525.P1569459230142971391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (n + 1) * A002131 (n + 1))

end

end A225525.P1569459230142971391

namespace A225525

/-- `2*A000032(n+1)*A002131(n+1)` -/
def P1569459230142971391.Spec : Prop :=
  ∀ n, P1569459230142971391.a n = A225525 (n + 1)

end A225525

/-! ## A225525.P6570823519529576671

`A000204(n+1)*A326066(2*(n+1))`
-/

namespace A225525.P6570823519529576671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A326066 (2 * (n + 1))

end

end A225525.P6570823519529576671

namespace A225525

/-- `A000204(n+1)*A326066(2*(n+1))` -/
def P6570823519529576671.Spec : Prop :=
  ∀ n, P6570823519529576671.a n = A225525 (n + 1)

end A225525

/-!
# A225526: Number of distinct products i*j over all pairs (i,j) with |i| + |j| <= n and gcd(i,j) <= 1.

The programs for A225526, there is no canonical definition to state claims against.
-/

/-! ## A225526.P12076256725761659764

`2*A225529(n)-1`
-/

namespace A225526.P12076256725761659764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225529 n - 1

end

end A225526.P12076256725761659764

/-! ## A225526.P12819397510768018612

`A004273(A225529(n))`
-/

namespace A225526.P12819397510768018612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A225529 n).toNat

end

end A225526.P12819397510768018612

/-! ## A225526.P5877072357627821503

`A005408(A225529(n)-1)`
-/

namespace A225526.P5877072357627821503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A225529 n - 1).toNat

end

end A225526.P5877072357627821503

/-! ## A225526.P14365845764605610757

`A346468(2*A225529(n))`
-/

namespace A225526.P14365845764605610757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (2 * A225529 n).toNat

end

end A225526.P14365845764605610757

/-! ## A225526.P1012628258227852721

`A005843(A225529(n))-char[A001281(n)]`
-/

namespace A225526.P1012628258227852721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A225529 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A225526.P1012628258227852721

/-! ## A225526.P5762032147972612628

`A005843(A225529(n))-A001222(A060264(n))`
-/

namespace A225526.P5762032147972612628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A225529 n).toNat - A001222 (A060264 n).toNat

end

end A225526.P5762032147972612628

/-! ## A225526.P10017663378526573921

`A005843(A225529(n))-A057979(A005843(n))`
-/

namespace A225526.P10017663378526573921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A225529 n).toNat - A057979 (A005843 n).toNat

end

end A225526.P10017663378526573921

/-! ## A225526.P13444732667685386425

`A005843(A225529(n))-A001222(A151800(n))`
-/

namespace A225526.P13444732667685386425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A225529 n).toNat - A001222 (A151800 n).toNat

end

end A225526.P13444732667685386425

/-! ## A225526.P10346353134362567324

`A014681(2*A225529(n))`
-/

namespace A225526.P10346353134362567324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A225529 n).toNat

end

end A225526.P10346353134362567324

/-! ## A225526.P6213110142723097184

`A279119(4*A225529(n))`
-/

namespace A225526.P6213110142723097184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (4 * A225529 n).toNat

end

end A225526.P6213110142723097184

/-!
# A225527: Number of distinct products i*j over all pairs (i,j) with i,j>=0 and i+j <= n.

The programs for A225527, there is no canonical definition to state claims against.
-/

/-! ## A225527.P11625417853822246814

`ceil(A225523(n)/2)`
-/

namespace A225527.P11625417853822246814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A225523 n : ℚ) / 2⌉

end

end A225527.P11625417853822246814

/-! ## A225527.P15132093795730212329

`A227800(n+1)+1`
-/

namespace A225527.P15132093795730212329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227800 (n + 1) + 1

end

end A225527.P15132093795730212329

/-! ## A225527.P17779172899204362614

`A014682(A225523(n)+1)`
-/

namespace A225527.P17779172899204362614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A225523 n + 1).toNat

end

end A225527.P17779172899204362614

/-! ## A225527.P5403875623249693434

`(A225523(n)%A228210(n+1)+1)/2`
-/

namespace A225527.P5403875623249693434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A225523 n) (A228210 (n + 1)) + 1 : ℚ) / 2

end

end A225527.P5403875623249693434

/-! ## A225527.P9523071596316597735

`(A225523(n)+A003557(∏{p}[n+1, #]))/2`
-/

namespace A225527.P9523071596316597735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225523 n + A003557 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) / 2

end

end A225527.P9523071596316597735

/-! ## A225527.P18412057107922904757

`A038572(A225523(n)+1)`
-/

namespace A225527.P18412057107922904757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A225523 n + 1).toNat

end

end A225527.P18412057107922904757

/-! ## A225527.P763394190582559167

`A000463(A225523(n))`
-/

namespace A225527.P763394190582559167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A225523 n).toNat

end

end A225527.P763394190582559167

/-! ## A225527.P3387890830955254876

`A004525(A225523(n)+1)`
-/

namespace A225527.P3387890830955254876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A225523 n + 1).toNat

end

end A225527.P3387890830955254876

/-! ## A225527.P16631850548465391509

`A032742(A225523(n)+1)`
-/

namespace A225527.P16631850548465391509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A225523 n + 1).toNat

end

end A225527.P16631850548465391509

/-! ## A225527.P10896791404171088525

`A078898(A225523(n)+1)`
-/

namespace A225527.P10896791404171088525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A225523 n + 1).toNat

end

end A225527.P10896791404171088525

/-! ## A225527.P17039235966522967436

`A004524(A225523(n)+2)`
-/

namespace A225527.P17039235966522967436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A225523 n + 2).toNat

end

end A225527.P17039235966522967436

/-! ## A225527.P9329495454180567047

`A008619(A225523(n)-1)`
-/

namespace A225527.P9329495454180567047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A225523 n - 1).toNat

end

end A225527.P9329495454180567047

/-! ## A225527.P10948682829429236463

`A003602(or(1, A225523(n)))`
-/

namespace A225527.P10948682829429236463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lor 1 (A225523 n)).toNat

end

end A225527.P10948682829429236463

/-! ## A225527.P7250381893932551913

`A008619(or(1, A225523(n)))`
-/

namespace A225527.P7250381893932551913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A225523 n)).toNat

end

end A225527.P7250381893932551913

/-! ## A225527.P450069279694483948

`A110657(2*(A225523(n)+1))`
-/

namespace A225527.P450069279694483948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * (A225523 n + 1)).toNat

end

end A225527.P450069279694483948

/-! ## A225527.P10363166045630105832

`A110657(2*A225523(n)-1)`
-/

namespace A225527.P10363166045630105832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A225523 n - 1).toNat

end

end A225527.P10363166045630105832

/-! ## A225527.P2382092089778467277

`A008619(2*A225523(n))/2`
-/

namespace A225527.P2382092089778467277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * A225523 n).toNat : ℚ) / 2

end

end A225527.P2382092089778467277

/-! ## A225527.P11825545849566239643

`A110657(A225523(n)+A225523(n)-1)`
-/

namespace A225527.P11825545849566239643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A225523 n + (A225523 n - 1)).toNat

end

end A225527.P11825545849566239643

/-! ## A225527.P14661994997564001919

`A110657(A225523(n)-(1-A225523(n)))`
-/

namespace A225527.P14661994997564001919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A225523 n - (1 - A225523 n)).toNat

end

end A225527.P14661994997564001919

/-!
# A225528: a(n) = sigma(n)*Lucas(n) where Lucas(n) = A000204(n) and sigma(n) = A000203(n) is the sum of divisors of n.

The programs for A225528, the canonical program `A225528.P3112333280416957281` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225528 has offset 1).

The definition of A225528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225528.P3112333280416957281

`∑{d}[n+1, #*A000032(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A225528

/-- `∑{d}[n+1, #*A000032(n+1)]` -/
def P3112333280416957281.Spec : Prop :=
  ∀ n, P3112333280416957281.a n = A225528 (n + 1)

theorem P3112333280416957281.correct : P3112333280416957281.Spec := by
  intro n
  simp only [A225528, Nat.add_sub_cancel]

end A225528

/-! ## A225528.P15033659320917807880

`A075193(n)*A143348(n+1)`
-/

namespace A225528.P15033659320917807880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n * A143348 (n + 1)

end

end A225528.P15033659320917807880

namespace A225528

/-- `A075193(n)*A143348(n+1)` -/
def P15033659320917807880.Spec : Prop :=
  ∀ n, P15033659320917807880.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P6060854886994954596

`A000032(n+1)*A000203(n+1)`
-/

namespace A225528.P6060854886994954596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A000203 (n + 1)

end

end A225528.P6060854886994954596

namespace A225528

/-- `A000032(n+1)*A000203(n+1)` -/
def P6060854886994954596.Spec : Prop :=
  ∀ n, P6060854886994954596.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P371553990857343450

`A000203(n+1)*A000204(n+1)`
-/

namespace A225528.P371553990857343450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A000204 (n + 1)

end

end A225528.P371553990857343450

namespace A225528

/-- `A000203(n+1)*A000204(n+1)` -/
def P371553990857343450.Spec : Prop :=
  ∀ n, P371553990857343450.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P17924069927735641460

`(A001610(n)+1)*A000203(n+1)`
-/

namespace A225528.P17924069927735641460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 n + 1) * A000203 (n + 1)

end

end A225528.P17924069927735641460

namespace A225528

/-- `(A001610(n)+1)*A000203(n+1)` -/
def P17924069927735641460.Spec : Prop :=
  ∀ n, P17924069927735641460.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P4629754903358365300

`A000203(n+1)*A329723(n+3)`
-/

namespace A225528.P4629754903358365300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A329723 (n + 3)

end

end A225528.P4629754903358365300

namespace A225528

/-- `A000203(n+1)*A329723(n+3)` -/
def P4629754903358365300.Spec : Prop :=
  ∀ n, P4629754903358365300.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P13872704498676159031

`A000203(n+1)*A090244(2*n)`
-/

namespace A225528.P13872704498676159031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A090244 (2 * n)

end

end A225528.P13872704498676159031

namespace A225528

/-- `A000203(n+1)*A090244(2*n)` -/
def P13872704498676159031.Spec : Prop :=
  ∀ n, P13872704498676159031.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P10027411305101492610

`A000203(n+1)/2*A022112(n)`
-/

namespace A225528.P10027411305101492610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / 2 * (A022112 n : ℚ)

end

end A225528.P10027411305101492610

namespace A225528

/-- `A000203(n+1)/2*A022112(n)` -/
def P10027411305101492610.Spec : Prop :=
  ∀ n, P10027411305101492610.a n = (A225528 (n + 1) : ℚ)

end A225528

/-! ## A225528.P11992502113440158439

`A000203(n+1)*A082587(Δ[n²])`
-/

namespace A225528.P11992502113440158439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A082587 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A225528.P11992502113440158439

namespace A225528

/-- `A000203(n+1)*A082587(Δ[n²])` -/
def P11992502113440158439.Spec : Prop :=
  ∀ n, P11992502113440158439.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P992541315350242967

`A000032(n+1)*A245092(2*n+1)`
-/

namespace A225528.P992541315350242967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A245092 (2 * n + 1)

end

end A225528.P992541315350242967

namespace A225528

/-- `A000032(n+1)*A245092(2*n+1)` -/
def P992541315350242967.Spec : Prop :=
  ∀ n, P992541315350242967.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P4930860409439682067

`(A001612(n+1)-1)*A245092(2*n+1)`
-/

namespace A225528.P4930860409439682067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 (n + 1) - 1) * A245092 (2 * n + 1)

end

end A225528.P4930860409439682067

namespace A225528

/-- `(A001612(n+1)-1)*A245092(2*n+1)` -/
def P4930860409439682067.Spec : Prop :=
  ∀ n, P4930860409439682067.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P1896818241864923491

`(A155085(n+1)-(n+1))*A000032(n+1)`
-/

namespace A225528.P1896818241864923491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155085 (n + 1) - (n + 1 : ℤ)) * A000032 (n + 1)

end

end A225528.P1896818241864923491

namespace A225528

/-- `(A155085(n+1)-(n+1))*A000032(n+1)` -/
def P1896818241864923491.Spec : Prop :=
  ∀ n, P1896818241864923491.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P11430521649348416651

`A064987(n+1)/(n+1)*A000032(n+1)`
-/

namespace A225528.P11430521649348416651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000032 (n + 1) : ℚ)

end

end A225528.P11430521649348416651

namespace A225528

/-- `A064987(n+1)/(n+1)*A000032(n+1)` -/
def P11430521649348416651.Spec : Prop :=
  ∀ n, P11430521649348416651.a n = (A225528 (n + 1) : ℚ)

end A225528

/-! ## A225528.P15460509452199670666

`(A000285(n)-A000045(n))*A000203(n+1)`
-/

namespace A225528.P15460509452199670666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000285 n - A000045 n) * A000203 (n + 1)

end

end A225528.P15460509452199670666

namespace A225528

/-- `(A000285(n)-A000045(n))*A000203(n+1)` -/
def P15460509452199670666.Spec : Prop :=
  ∀ n, P15460509452199670666.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P14899936722730489294

`(A000045(n+2)+A000045(n))*A000203(n+1)`
-/

namespace A225528.P14899936722730489294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) + A000045 n) * A000203 (n + 1)

end

end A225528.P14899936722730489294

namespace A225528

/-- `(A000045(n+2)+A000045(n))*A000203(n+1)` -/
def P14899936722730489294.Spec : Prop :=
  ∀ n, P14899936722730489294.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P4366051792582523177

`(A003961(n+1)-A286385(n+1))*A000204(n+1)`
-/

namespace A225528.P4366051792582523177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A286385 (n + 1)) * A000204 (n + 1)

end

end A225528.P4366051792582523177

namespace A225528

/-- `(A003961(n+1)-A286385(n+1))*A000204(n+1)` -/
def P4366051792582523177.Spec : Prop :=
  ∀ n, P4366051792582523177.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P7122710432960876949

`(A003973(n+1)-A336852(n+1))*A000204(n+1)`
-/

namespace A225528.P7122710432960876949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) - A336852 (n + 1)) * A000204 (n + 1)

end

end A225528.P7122710432960876949

namespace A225528

/-- `(A003973(n+1)-A336852(n+1))*A000204(n+1)` -/
def P7122710432960876949.Spec : Prop :=
  ∀ n, P7122710432960876949.a n = A225528 (n + 1)

end A225528

/-! ## A225528.P18378008288181198733

`A000204(n+1)/A000045(n+1)*A203848(n+1)`
-/

namespace A225528.P18378008288181198733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A203848 (n + 1) : ℚ)

end

end A225528.P18378008288181198733

namespace A225528

/-- `A000204(n+1)/A000045(n+1)*A203848(n+1)` -/
def P18378008288181198733.Spec : Prop :=
  ∀ n, P18378008288181198733.a n = (A225528 (n + 1) : ℚ)

end A225528

/-! ## A225528.P8353936318476326751

`(A053602(2*n+1)+A053602(2*n))*A326065(2*(n+1))`
-/

namespace A225528.P8353936318476326751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053602 (2 * n + 1) + A053602 (2 * n)) * A326065 (2 * (n + 1))

end

end A225528.P8353936318476326751

namespace A225528

/-- `(A053602(2*n+1)+A053602(2*n))*A326065(2*(n+1))` -/
def P8353936318476326751.Spec : Prop :=
  ∀ n, P8353936318476326751.a n = A225528 (n + 1)

end A225528

/-!
# A225529: Number of distinct products i*j over all pairs (i,j) with i,j >= 0 and i+j <= n and gcd(i,j) <= 1.

The programs for A225529, there is no canonical definition to state claims against.
-/

/-! ## A225529.P8632113340139767900

`ceil(A225526(n)/2)`
-/

namespace A225529.P8632113340139767900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A225526 n : ℚ) / 2⌉

end

end A225529.P8632113340139767900

/-! ## A225529.P3163483630845127997

`A014682(A225526(n)+1)`
-/

namespace A225529.P3163483630845127997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A225526 n + 1).toNat

end

end A225529.P3163483630845127997

/-! ## A225529.P3481652854542988468

`A339913(2*A225526(n))`
-/

namespace A225529.P3481652854542988468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (2 * A225526 n).toNat

end

end A225529.P3481652854542988468

/-! ## A225529.P6954818650095779673

`A339913(lcm(2, A225526(n)))`
-/

namespace A225529.P6954818650095779673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (Int.lcm 2 (A225526 n))

end

end A225529.P6954818650095779673

/-! ## A225529.P10406340724028649814

`A175126(A225526(n)+1)`
-/

namespace A225529.P10406340724028649814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A225526 n + 1).toNat

end

end A225529.P10406340724028649814

/-! ## A225529.P13640599912675218732

`∑{d}[A225526(n), A004525(A000010(#))]`
-/

namespace A225529.P13640599912675218732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A004525 (A000010 d).toNat

end

end A225529.P13640599912675218732

/-! ## A225529.P5429418788775156211

`A000463(A225526(n))`
-/

namespace A225529.P5429418788775156211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A225526 n).toNat

end

end A225529.P5429418788775156211

/-! ## A225529.P16035425204106985239

`A004525(A225526(n)+1)`
-/

namespace A225529.P16035425204106985239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A225526 n + 1).toNat

end

end A225529.P16035425204106985239

/-! ## A225529.P12867350398224272157

`A032742(A225526(n)+1)`
-/

namespace A225529.P12867350398224272157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A225526 n + 1).toNat

end

end A225529.P12867350398224272157

/-! ## A225529.P14858894438068976817

`A110654(A225526(n)+1)`
-/

namespace A225529.P14858894438068976817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A225526 n + 1).toNat

end

end A225529.P14858894438068976817

/-! ## A225529.P10979799063335860138

`A008619(A225526(n)-1)`
-/

namespace A225529.P10979799063335860138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A225526 n - 1).toNat

end

end A225529.P10979799063335860138

/-! ## A225529.P18228340970176754857

`A008619(or(1, A225526(n)))`
-/

namespace A225529.P18228340970176754857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A225526 n)).toNat

end

end A225529.P18228340970176754857

/-! ## A225529.P1008083733645872126

`A110654(A225526(n)%A167499(n))`
-/

namespace A225529.P1008083733645872126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A225526 n) (A167499 n)).toNat

end

end A225529.P1008083733645872126

/-! ## A225529.P4874398042430194087

`A110654(2*A225526(n)-A225526(n))`
-/

namespace A225529.P4874398042430194087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A225526 n - A225526 n).toNat

end

end A225529.P4874398042430194087

/-!
# A225530: Number of ordered pairs (i,j) with i,j >= 0, i + j = n and gcd(i,j) <= 1.

The programs for A225530, the canonical program `A225530.P14142544683776780979` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225530 has offset 0).

The definition of A225530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225530.P14142544683776780979

`A000010(C(2, n²)+n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A225530

/-- `A000010(C(2, n²)+n)` -/
def P14142544683776780979.Spec : Prop :=
  ∀ n, P14142544683776780979.a n = A225530 n

theorem P14142544683776780979.correct : P14142544683776780979.Spec := by
  intro n
  simp only [A225530]

end A225530

/-! ## A225530.P16238364625130017385

`A000010(or(n, C(2, n²)))`
-/

namespace A225530.P16238364625130017385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor n (Nat.choose 2 (n ^ 2)))

end

end A225530.P16238364625130017385

namespace A225530

/-- `A000010(or(n, C(2, n²)))` -/
def P16238364625130017385.Spec : Prop :=
  ∀ n, P16238364625130017385.a n = A225530 n

end A225530

/-! ## A225530.P6722328334709265035

`A000010(xor(n, C(2, n²)))`
-/

namespace A225530.P6722328334709265035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.xor n (Nat.choose 2 (n ^ 2)))

end

end A225530.P6722328334709265035

namespace A225530

/-- `A000010(xor(n, C(2, n²)))` -/
def P6722328334709265035.Spec : Prop :=
  ∀ n, P6722328334709265035.a n = A225530 n

end A225530

/-! ## A225530.P1028532674161252411

`A000010(n*a(2%n))` with `a(0)=1, a(1)=2`
-/

namespace A225530.P1028532674161252411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 ((n : ℤ) * a (2 % n)).toNat

end

end A225530.P1028532674161252411

namespace A225530

/-- `A000010(n*a(2%n))` -/
def P1028532674161252411.Spec : Prop :=
  ∀ n, P1028532674161252411.a n = A225530 n

end A225530

/-! ## A225530.P17841068794627875166

`A000010(n*a(and(1, n)))` with `a(0)=1, a(1)=2`
-/

namespace A225530.P17841068794627875166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 ((n : ℤ) * a (Nat.land 1 n)).toNat

end

end A225530.P17841068794627875166

namespace A225530

/-- `A000010(n*a(and(1, n)))` -/
def P17841068794627875166.Spec : Prop :=
  ∀ n, P17841068794627875166.a n = A225530 n

end A225530

/-! ## A225530.P15139128958092660086

`A000010(n/a(C(2, n)))` with `a(0)=1, a(1)=2`
-/

namespace A225530.P15139128958092660086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 (SequenceMachineLib.roundAway ((n : ℚ) / (a (Nat.choose 2 n) : ℚ))).toNat

end

end A225530.P15139128958092660086

namespace A225530

/-- `A000010(n/a(C(2, n)))` -/
def P15139128958092660086.Spec : Prop :=
  ∀ n, P15139128958092660086.a n = A225530 n

end A225530

/-! ## A225530.P14478868349333481206

`A000010(lcm(2, C(2, n)²-n))`
-/

namespace A225530.P14478868349333481206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm 2 ((Nat.choose 2 n ^ 2 : ℤ) - (n : ℤ)))

end

end A225530.P14478868349333481206

namespace A225530

/-- `A000010(lcm(2, C(2, n)²-n))` -/
def P14478868349333481206.Spec : Prop :=
  ∀ n, P14478868349333481206.a n = A225530 n

end A225530

/-! ## A225530.P13791030583995070381

`A000010(2*C(n, ∑[n])+n)`
-/

namespace A225530.P13791030583995070381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) + n)

end

end A225530.P13791030583995070381

namespace A225530

/-- `A000010(2*C(n, ∑[n])+n)` -/
def P13791030583995070381.Spec : Prop :=
  ∀ n, P13791030583995070381.a n = A225530 n

end A225530

/-! ## A225530.P5062370321441363042

`A000010((3*n)%(n+1)+2)`
-/

namespace A225530.P5062370321441363042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n % (n + 1) + 2)

end

end A225530.P5062370321441363042

namespace A225530

/-- `A000010((3*n)%(n+1)+2)` -/
def P5062370321441363042.Spec : Prop :=
  ∀ n, P5062370321441363042.a n = A225530 n

end A225530

/-! ## A225530.P2201294444920789452

`A000010(n+3-3%(n+2))`
-/

namespace A225530.P2201294444920789452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3 - 3 % (n + 2))

end

end A225530.P2201294444920789452

namespace A225530

/-- `A000010(n+3-3%(n+2))` -/
def P2201294444920789452.Spec : Prop :=
  ∀ n, P2201294444920789452.a n = A225530 n

end A225530

/-! ## A225530.P14585248287508350239

`A000010(gcd(n-1, C(2, n))+1)`
-/

namespace A225530.P14585248287508350239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd ((n : ℤ) - 1) (Nat.choose 2 n : ℤ) + 1)

end

end A225530.P14585248287508350239

namespace A225530

/-- `A000010(gcd(n-1, C(2, n))+1)` -/
def P14585248287508350239.Spec : Prop :=
  ∀ n, P14585248287508350239.a n = A225530 n

end A225530

/-! ## A225530.P11808162747922969209

`A000010(n-(n-2)*C(2, n))`
-/

namespace A225530.P11808162747922969209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n : ℤ) - ((n : ℤ) - 2) * (Nat.choose 2 n : ℤ)).toNat

end

end A225530.P11808162747922969209

namespace A225530

/-- `A000010(n-(n-2)*C(2, n))` -/
def P11808162747922969209.Spec : Prop :=
  ∀ n, P11808162747922969209.a n = A225530 n

end A225530

/-! ## A225530.P6982428820928681677

`A000010(n*a(C(n, n²)))` with `a(0)=1, a(1)=2`
-/

namespace A225530.P6982428820928681677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 ((n : ℤ) * a (Nat.choose n (n ^ 2))).toNat

end

end A225530.P6982428820928681677

namespace A225530

/-- `A000010(n*a(C(n, n²)))` -/
def P6982428820928681677.Spec : Prop :=
  ∀ n, P6982428820928681677.a n = A225530 n

end A225530

/-! ## A225530.P7632045283534462675

`A000010(and(1, a(n-1))+n)` with `a(0)=1, a(1)=2`
-/

namespace A225530.P7632045283534462675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 (Int.land 1 (a (n - 1)) + (n : ℤ)).toNat

end

end A225530.P7632045283534462675

namespace A225530

/-- `A000010(and(1, a(n-1))+n)` -/
def P7632045283534462675.Spec : Prop :=
  ∀ n, P7632045283534462675.a n = A225530 n

end A225530

/-! ## A225530.P11324109580631296348

`A000010(n+1-a(C(2, n)))` with `a(0)=1, a(1)=2`
-/

namespace A225530.P11324109580631296348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 ((n + 1 : ℤ) - a (Nat.choose 2 n)).toNat

end

end A225530.P11324109580631296348

namespace A225530

/-- `A000010(n+1-a(C(2, n)))` -/
def P11324109580631296348.Spec : Prop :=
  ∀ n, P11324109580631296348.a n = A225530 n

end A225530

/-! ## A225530.P16060099342321910334

`a(C(2, n+1))*A000010(n)` with `a(0)=1, a(1)=2`
-/

namespace A225530.P16060099342321910334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Nat.choose 2 (n + 1)) * A000010 n

end

end A225530.P16060099342321910334

namespace A225530

/-- `a(C(2, n+1))*A000010(n)` -/
def P16060099342321910334.Spec : Prop :=
  ∀ n, P16060099342321910334.a n = A225530 n

end A225530

/-! ## A225530.P9870889880386539441

`A000010(n-and(1, a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A225530.P9870889880386539441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 ((n : ℤ) - Int.land 1 (a (n - 2))).toNat

end

end A225530.P9870889880386539441

namespace A225530

/-- `A000010(n-and(1, a(n-2)))` -/
def P9870889880386539441.Spec : Prop :=
  ∀ n, P9870889880386539441.a n = A225530 n

end A225530

/-! ## A225530.P10490054226449475007

`A000010(n/a(and(2, n+2)))` with `a(0)=1, a(1)=2`
-/

namespace A225530.P10490054226449475007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 (SequenceMachineLib.roundAway ((n : ℚ) / (a (Nat.land 2 (n + 2)) : ℚ))).toNat

end

end A225530.P10490054226449475007

namespace A225530

/-- `A000010(n/a(and(2, n+2)))` -/
def P10490054226449475007.Spec : Prop :=
  ∀ n, P10490054226449475007.a n = A225530 n

end A225530

/-! ## A225530.P4713653082125142782

`A000010(gcd(n, n*a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A225530.P4713653082125142782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))

end

end A225530.P4713653082125142782

namespace A225530

/-- `A000010(gcd(n, n*a(n-1)))` -/
def P4713653082125142782.Spec : Prop :=
  ∀ n, P4713653082125142782.a n = A225530 n

end A225530

/-! ## A225530.P4481043946440824648

`A000010(n-C(a(n-1), n))` with `a(0)=1, a(1)=2`
-/

namespace A225530.P4481043946440824648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 (n - Nat.choose (a (n - 1)).toNat n)

end

end A225530.P4481043946440824648

namespace A225530

/-- `A000010(n-C(a(n-1), n))` -/
def P4481043946440824648.Spec : Prop :=
  ∀ n, P4481043946440824648.a n = A225530 n

end A225530

/-!
# A225531: Number of ordered pairs (i, j) with i, j >= 0, i + j <= n and gcd(i, j) <= 1.

The programs for A225531, the canonical program `A225531.P17187753474832379472` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225531 has offset 0).

The definition of A225531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225531.P15662736483742348452

`A049643(n)+1`
-/

namespace A225531.P15662736483742348452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + 1

end

end A225531.P15662736483742348452

namespace A225531

/-- `A049643(n)+1` -/
def P15662736483742348452.Spec : Prop :=
  ∀ n, P15662736483742348452.a n = A225531 n

end A225531

/-! ## A225531.P15661667612270488333

`∑[A384710(n)]+1`
-/

namespace A225531.P15661667612270488333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225531.P15661667612270488333

namespace A225531

/-- `∑[A384710(n)]+1` -/
def P15661667612270488333.Spec : Prop :=
  ∀ n, P15661667612270488333.a n = A225531 n

end A225531

/-! ## A225531.P17187753474832379472

`floor(A049632(n)/2)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A225531

/-- `floor(A049632(n)/2)+1` -/
def P17187753474832379472.Spec : Prop :=
  ∀ n, P17187753474832379472.a n = A225531 n

theorem P17187753474832379472.correct : P17187753474832379472.Spec := by
  intro n
  simp only [A225531]

end A225531

/-! ## A225531.P6166892181626365703

`∑[A000010(C(2, n²)+n)]`
-/

namespace A225531.P6166892181626365703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225531.P6166892181626365703

namespace A225531

/-- `∑[A000010(C(2, n²)+n)]` -/
def P6166892181626365703.Spec : Prop :=
  ∀ n, P6166892181626365703.a n = A225531 n

end A225531

/-! ## A225531.P5472133784306411652

`A000010(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A225531.P5472133784306411652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000010 n + a (n - 1)

end

end A225531.P5472133784306411652

namespace A225531

/-- `A000010(n)+a(n-1)` -/
def P5472133784306411652.Spec : Prop :=
  ∀ n, P5472133784306411652.a n = A225531 n

end A225531

/-! ## A225531.P14874519144263674353

`A005728(n)%(n+1)²+1`
-/

namespace A225531.P14874519144263674353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005728 n) ((n + 1) ^ 2 : ℤ) + 1

end

end A225531.P14874519144263674353

namespace A225531

/-- `A005728(n)%(n+1)²+1` -/
def P14874519144263674353.Spec : Prop :=
  ∀ n, P14874519144263674353.a n = A225531 n

end A225531

/-! ## A225531.P8938105115718572546

`a(n-1)+A109606(n)+1` with `a(0)=1, a(1)=3`
-/

namespace A225531.P8938105115718572546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (A109606 n + 1)

end

end A225531.P8938105115718572546

namespace A225531

/-- `a(n-1)+A109606(n)+1` -/
def P8938105115718572546.Spec : Prop :=
  ∀ n, P8938105115718572546.a n = A225531 n

end A225531

/-! ## A225531.P12428329274057519212

`∑[A000010(n+2-2%(n+1))]`
-/

namespace A225531.P12428329274057519212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2 - 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225531.P12428329274057519212

namespace A225531

/-- `∑[A000010(n+2-2%(n+1))]` -/
def P12428329274057519212.Spec : Prop :=
  ∀ n, P12428329274057519212.a n = A225531 n

end A225531

/-! ## A225531.P17656874073206637130

`∑[A000010(2*C(2, 2*n)+n)]`
-/

namespace A225531.P17656874073206637130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * Nat.choose 2 (2 * n) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225531.P17656874073206637130

namespace A225531

/-- `∑[A000010(2*C(2, 2*n)+n)]` -/
def P17656874073206637130.Spec : Prop :=
  ∀ n, P17656874073206637130.a n = A225531 n

end A225531

/-! ## A225531.P5334316797632434742

`∑[A000010(n-(n-2)*C(2, n))]`
-/

namespace A225531.P5334316797632434742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n : ℤ) - ((n : ℤ) - 2) * (Nat.choose 2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225531.P5334316797632434742

namespace A225531

/-- `∑[A000010(n-(n-2)*C(2, n))]` -/
def P5334316797632434742.Spec : Prop :=
  ∀ n, P5334316797632434742.a n = A225531 n

end A225531

/-! ## A225531.P4195114262364516596

`A057427(n)+A005728(n)`
-/

namespace A225531.P4195114262364516596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A005728 n

end

end A225531.P4195114262364516596

namespace A225531

/-- `A057427(n)+A005728(n)` -/
def P4195114262364516596.Spec : Prop :=
  ∀ n, P4195114262364516596.a n = A225531 n

end A225531

/-! ## A225531.P581309198053470583

`A049632(n)-A002088(n)`
-/

namespace A225531.P581309198053470583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A002088 n

end

end A225531.P581309198053470583

namespace A225531

/-- `A049632(n)-A002088(n)` -/
def P581309198053470583.Spec : Prop :=
  ∀ n, P581309198053470583.a n = A225531 n

end A225531

/-! ## A225531.P16639060888134176778

`A005728(n)-A057428(n)`
-/

namespace A225531.P16639060888134176778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - A057428 n

end

end A225531.P16639060888134176778

namespace A225531

/-- `A005728(n)-A057428(n)` -/
def P16639060888134176778.Spec : Prop :=
  ∀ n, P16639060888134176778.a n = A225531 n

end A225531

/-! ## A225531.P13138877300141828237

`A036453(n+1)+A002088(n)`
-/

namespace A225531.P13138877300141828237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + A002088 n

end

end A225531.P13138877300141828237

namespace A225531

/-- `A036453(n+1)+A002088(n)` -/
def P13138877300141828237.Spec : Prop :=
  ∀ n, P13138877300141828237.a n = A225531 n

end A225531

/-! ## A225531.P8547181171392558270

`A002088(n)+A057427(n)+1`
-/

namespace A225531.P8547181171392558270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + (A057427 n + 1)

end

end A225531.P8547181171392558270

namespace A225531

/-- `A002088(n)+A057427(n)+1` -/
def P8547181171392558270.Spec : Prop :=
  ∀ n, P8547181171392558270.a n = A225531 n

end A225531

/-! ## A225531.P481366920143912613

`A005728(n)+1-A000007(n)`
-/

namespace A225531.P481366920143912613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n + (1 - A000007 n)

end

end A225531.P481366920143912613

namespace A225531

/-- `A005728(n)+1-A000007(n)` -/
def P481366920143912613.Spec : Prop :=
  ∀ n, P481366920143912613.a n = A225531 n

end A225531

/-! ## A225531.P16817259357762319462

`A002088(n)+2-A000007(n)`
-/

namespace A225531.P16817259357762319462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + (2 - A000007 n)

end

end A225531.P16817259357762319462

namespace A225531

/-- `A002088(n)+2-A000007(n)` -/
def P16817259357762319462.Spec : Prop :=
  ∀ n, P16817259357762319462.a n = A225531 n

end A225531

/-! ## A225531.P6967715323421706101

`A049633(n)-∑[A000010(n+1)]`
-/

namespace A225531.P6967715323421706101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225531.P6967715323421706101

namespace A225531

/-- `A049633(n)-∑[A000010(n+1)]` -/
def P6967715323421706101.Spec : Prop :=
  ∀ n, P6967715323421706101.a n = A225531 n

end A225531

/-!
# A225534: Numbers whose sum of cubed digits is prime.

The programs for A225534, the canonical program `A225534.P13308665992946786377` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225534 has offset 1).

The definition of A225534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1754 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225534.P13308665992946786377

`eq[0, A007920(A055012(n))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A225534

/-- `eq[0, A007920(A055012(n))]` -/
def P13308665992946786377.Spec : Prop :=
  ∀ n, (P13308665992946786377.a n : ℤ) = A225534 (n + 1)

theorem P13308665992946786377.correct : P13308665992946786377.Spec := by
  intro n
  simp only [A225534, Nat.add_sub_cancel]

end A225534

/-! ## A225534.P7696704203771055574

`eq[1, A001222(A055012(n+1))]+1`
-/

namespace A225534.P7696704203771055574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055012 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225534.P7696704203771055574

namespace A225534

/-- `eq[1, A001222(A055012(n+1))]+1` -/
def P7696704203771055574.Spec : Prop :=
  ∀ n, (P7696704203771055574.a n : ℤ) = A225534 (n + 1)

end A225534

/-! ## A225534.P13172900420103164295

`lt[A055012(n+1), A055671(A055012(n))]`
-/

namespace A225534.P13172900420103164295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225534.P13172900420103164295

namespace A225534

/-- `lt[A055012(n+1), A055671(A055012(n))]` -/
def P13172900420103164295.Spec : Prop :=
  ∀ n, (P13172900420103164295.a n : ℤ) = A225534 (n + 1)

end A225534

/-! ## A225534.P11616997667949530995

`eq[A032741(A055012(n)), A158388(n)]`
-/

namespace A225534.P11616997667949530995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A055012 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225534.P11616997667949530995

namespace A225534

/-- `eq[A032741(A055012(n)), A158388(n)]` -/
def P11616997667949530995.Spec : Prop :=
  ∀ n, (P11616997667949530995.a n : ℤ) = A225534 (n + 1)

end A225534

/-! ## A225534.P17735731031007375346

`lt[A001876(n), A055671(A055012(n))]`
-/

namespace A225534.P17735731031007375346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225534.P17735731031007375346

namespace A225534

/-- `lt[A001876(n), A055671(A055012(n))]` -/
def P17735731031007375346.Spec : Prop :=
  ∀ n, (P17735731031007375346.a n : ℤ) = A225534 (n + 1)

end A225534

/-! ## A225534.P1012102771791785180

`lt[A007953(n), A055671(A055012(n))]`
-/

namespace A225534.P1012102771791785180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225534.P1012102771791785180

namespace A225534

/-- `lt[A007953(n), A055671(A055012(n))]` -/
def P1012102771791785180.Spec : Prop :=
  ∀ n, (P1012102771791785180.a n : ℤ) = A225534 (n + 1)

end A225534

/-! ## A225534.P6972851213157873197

`lt[A014577(n), A055671(A055012(n))]`
-/

namespace A225534.P6972851213157873197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225534.P6972851213157873197

namespace A225534

/-- `lt[A014577(n), A055671(A055012(n))]` -/
def P6972851213157873197.Spec : Prop :=
  ∀ n, (P6972851213157873197.a n : ℤ) = A225534 (n + 1)

end A225534

/-! ## A225534.P12635340838862184656

`lt[A043561(n), A055671(A055012(n))]`
-/

namespace A225534.P12635340838862184656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225534.P12635340838862184656

namespace A225534

/-- `lt[A043561(n), A055671(A055012(n))]` -/
def P12635340838862184656.Spec : Prop :=
  ∀ n, (P12635340838862184656.a n : ℤ) = A225534 (n + 1)

end A225534

/-! ## A225534.P2248222095047409868

`lt[A057427(n), A055671(A055012(n))]`
-/

namespace A225534.P2248222095047409868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225534.P2248222095047409868

namespace A225534

/-- `lt[A057427(n), A055671(A055012(n))]` -/
def P2248222095047409868.Spec : Prop :=
  ∀ n, (P2248222095047409868.a n : ℤ) = A225534 (n + 1)

end A225534

/-! ## A225534.P9624369808269087536

`lt[A102679(n), A055671(A055012(n))]`
-/

namespace A225534.P9624369808269087536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225534.P9624369808269087536

namespace A225534

/-- `lt[A102679(n), A055671(A055012(n))]` -/
def P9624369808269087536.Spec : Prop :=
  ∀ n, (P9624369808269087536.a n : ℤ) = A225534 (n + 1)

end A225534

/-! ## A225534.P8034081404270844909

`eq[0, A007920(A065137(n)-A007953(n))]`
-/

namespace A225534.P8034081404270844909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A065137 n - A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225534.P8034081404270844909

namespace A225534

/-- `eq[0, A007920(A065137(n)-A007953(n))]` -/
def P8034081404270844909.Spec : Prop :=
  ∀ n, (P8034081404270844909.a n : ℤ) = A225534 (n + 1)

theorem P8034081404270844909.correct : P8034081404270844909.Spec := by
  intro n
  simp only [A225534, Nat.add_sub_cancel, A225534.P8034081404270844909.f1, A225534.P8034081404270844909.f2, A225534.P8034081404270844909.a, A225534.P13308665992946786377.f1, A225534.P13308665992946786377.f2, A225534.P13308665992946786377.a, A007920, A007920.P3719263903022372137.a, A007953, A007953.P3472751987379697826.a, A055012, A055012.P4592185717369733238.f1, A055012.P4592185717369733238.a, A065137, A065137.P7010743803192741555.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A054899, A054899.P10770181254942084517.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225534

/-! ## A225534.P7875558088906058651

`eq[2, A077982(A065137(n)-A007953(n))]`
-/

namespace A225534.P7875558088906058651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A065137 n - A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225534.P7875558088906058651

namespace A225534

/-- `eq[2, A077982(A065137(n)-A007953(n))]` -/
def P7875558088906058651.Spec : Prop :=
  ∀ n, (P7875558088906058651.a n : ℤ) = A225534 (n + 1)

end A225534

/-! ## A225534.P2272845599396927723

`lt[A055671(2*n), A055671(A055012(n))]`
-/

namespace A225534.P2272845599396927723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225534.P2272845599396927723

namespace A225534

/-- `lt[A055671(2*n), A055671(A055012(n))]` -/
def P2272845599396927723.Spec : Prop :=
  ∀ n, (P2272845599396927723.a n : ℤ) = A225534 (n + 1)

end A225534

/-!
# A225535: Numbers whose cubed digits sum to a cube, and have more than one nonzero digit.

The programs for A225535, there is no canonical definition to state claims against.
-/

/-! ## A225535.P12310415688983257886

`A255408(A254960(n+10))`
-/

namespace A225535.P12310415688983257886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A254960 (n + 10)).toNat

end

end A225535.P12310415688983257886

/-! ## A225535.P9977801663226298353

`∩[A254960(n+1), A288353(n+1)]`
-/

namespace A225535.P9977801663226298353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225535.P9977801663226298353

/-! ## A225535.P15961730078241868019

`A254960(A062399(n)+10)`
-/

namespace A225535.P15961730078241868019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254960 (A062399 n + 10).toNat

end

end A225535.P15961730078241868019

/-!
# A225536: Numbers of triples {x, y, z} such that z >= y > 1 and prime(x) + prime(y) * prime(z) = 2^n.

The programs for A225536, there is no canonical definition to state claims against.
-/

/-! ## A225536.P16713918174210021743

`A339708(ceil(2^(n-1)))`
-/

namespace A225536.P16713918174210021743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339708 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A225536.P16713918174210021743

/-! ## A225536.P15087841327428184295

`and(-1, A339708(A220469(n+1)))`
-/

namespace A225536.P15087841327428184295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A339708 (A220469 (n + 1)).toNat)

end

end A225536.P15087841327428184295

/-! ## A225536.P2091991450232203438

`and(-1, A339708(A220493(n+1)))`
-/

namespace A225536.P2091991450232203438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A339708 (A220493 (n + 1)).toNat)

end

end A225536.P2091991450232203438

/-! ## A225536.P16721736260306925534

`A339708(A011782(n))%∑{d}[n+1, #^5]`
-/

namespace A225536.P16721736260306925534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339708 (A011782 n).toNat) ((∑ d ∈ Nat.divisors (f1 n), d ^ 5 : ℕ) : ℤ)

end

end A225536.P16721736260306925534

/-! ## A225536.P2987007547111341584

`A339708(A011782(n))+A137579(n)`
-/

namespace A225536.P2987007547111341584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339708 (A011782 n).toNat + A137579 n

end

end A225536.P2987007547111341584

/-!
# A225538: Let r(n) denote the reverse of n. For every n, consider the sequence n_1 = n + 1 + r(n+1), and for m >= 2, n_m = n_(m-1) + 1 + r(n_(m-1) + 1). a(n) is the least m for which n_m is a palindrome, or 0 if there is no such m.

The programs for A225538, there is no canonical definition to state claims against.
-/

/-! ## A225538.P12228343258364895153

`A016016(n+1)-A015703(A034260(n+1))`
-/

namespace A225538.P12228343258364895153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1) - A015703 (A034260 (n + 1)).toNat

end

end A225538.P12228343258364895153

/-! ## A225538.P7841790408386121966

`A016016(n+1)+A015703(2*A034260(n+1))`
-/

namespace A225538.P7841790408386121966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1) + A015703 (2 * A034260 (n + 1)).toNat

end

end A225538.P7841790408386121966

/-! ## A225538.P11153031323432789581

`or(A014707(A038207(n)), A016016(n+1))`
-/

namespace A225538.P11153031323432789581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014707 (A038207 n).toNat) (A016016 (n + 1))

end

end A225538.P11153031323432789581

/-! ## A225538.P4929130805677138356

`A016016(n+1)+A010051(A069877(n+2))`
-/

namespace A225538.P4929130805677138356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1) + A010051 (A069877 (n + 2)).toNat

end

end A225538.P4929130805677138356

/-! ## A225538.P5820676564635761247

`or(A010052(A116045(n+1)), A016016(n+1))`
-/

namespace A225538.P5820676564635761247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A116045 (n + 1)).toNat) (A016016 (n + 1))

end

end A225538.P5820676564635761247

/-! ## A225538.P7283137794747935366

`or(A016016(n+1), A295308(A242247(n+1)))`
-/

namespace A225538.P7283137794747935366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016016 (n + 1)) (A295308 (A242247 (n + 1)).toNat)

end

end A225538.P7283137794747935366

/-! ## A225538.P15849889784702989104

`or(A016016(n+1), A036987(A002865(n)))`
-/

namespace A225538.P15849889784702989104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016016 (n + 1)) (A036987 (A002865 n).toNat)

end

end A225538.P15849889784702989104

/-! ## A225538.P8825782886036293773

`A007318(A016016(n+1)^A022912(A158777(n+1)+1))`
-/

namespace A225538.P8825782886036293773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A016016 (n + 1) : ℚ) ^ (A022912 (A158777 (n + 1) + 1).toNat : ℤ))).toNat

end

end A225538.P8825782886036293773

/-! ## A225538.P3737601816814688755

`or(A016016(n+1), A262693(A171167(n+1)))`
-/

namespace A225538.P3737601816814688755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016016 (n + 1)) (A262693 (A171167 (n + 1)).toNat)

end

end A225538.P3737601816814688755

/-!
# A225539: Numbers n where 2^n and n have the same digital root.

The programs for A225539, the canonical program `A225539.P4392157660942888490` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225539 has offset 1).

The definition of A225539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225539.P4392157660942888490

`9*(n+1)-3+(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225539

/-- `9*(n+1)-3+(-1)^(n+1)` -/
def P4392157660942888490.Spec : Prop :=
  ∀ n, P4392157660942888490.a n = A225539 (n + 1)

theorem P4392157660942888490.correct : P4392157660942888490.Spec := by
  intro n
  simp only [A225539, Nat.add_sub_cancel]

end A225539

/-! ## A225539.P6388033038633952987

`∑[abs(a(n-2))]` with `a(0)=5, a(1)=11, a(2)=7`
-/

namespace A225539.P6388033038633952987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 11, 7] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225539.P6388033038633952987

namespace A225539

/-- `∑[abs(a(n-2))]` -/
def P6388033038633952987.Spec : Prop :=
  ∀ n, (P6388033038633952987.a n : ℤ) = A225539 (n + 1)

end A225539

/-! ## A225539.P13781753764278028152

`∑[18-a(n-1)]` with `a(0)=5, a(1)=11`
-/

namespace A225539.P13781753764278028152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 11] fun n f1 =>
  18 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225539.P13781753764278028152

namespace A225539

/-- `∑[18-a(n-1)]` -/
def P13781753764278028152.Spec : Prop :=
  ∀ n, P13781753764278028152.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P6389419227069829905

`∑[A213671(a(n-1))]` with `a(0)=5`
-/

namespace A225539.P6389419227069829905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A213671 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225539.P6389419227069829905

namespace A225539

/-- `∑[A213671(a(n-1))]` -/
def P6389419227069829905.Spec : Prop :=
  ∀ n, P6389419227069829905.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P8046552098232191902

`∑[A340612(a(n-1))]` with `a(0)=5`
-/

namespace A225539.P8046552098232191902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A340612 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225539.P8046552098232191902

namespace A225539

/-- `∑[A340612(a(n-1))]` -/
def P8046552098232191902.Spec : Prop :=
  ∀ n, P8046552098232191902.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P8447507234676818537

`∪[A242215(n), A350522(n)]`
-/

namespace A225539.P8447507234676818537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225539.P8447507234676818537

namespace A225539

/-- `∪[A242215(n), A350522(n)]` -/
def P8447507234676818537.Spec : Prop :=
  ∀ n, (P8447507234676818537.a n : ℤ) = A225539 (n + 1)

end A225539

/-! ## A225539.P18215264635480972477

`A072557(A047219(n+1))`
-/

namespace A225539.P18215264635480972477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072557 (A047219 (n + 1)).toNat

end

end A225539.P18215264635480972477

namespace A225539

/-- `A072557(A047219(n+1))` -/
def P18215264635480972477.Spec : Prop :=
  ∀ n, P18215264635480972477.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P7527255463118474944

`Δ[A084263(3*n)]`
-/

namespace A225539.P7527255463118474944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084263 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225539.P7527255463118474944

namespace A225539

/-- `Δ[A084263(3*n)]` -/
def P7527255463118474944.Spec : Prop :=
  ∀ n, P7527255463118474944.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P4754718166188787934

`A047257(3*n+2)`
-/

namespace A225539.P4754718166188787934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047257 (3 * n + 2)

end

end A225539.P4754718166188787934

namespace A225539

/-- `A047257(3*n+2)` -/
def P4754718166188787934.Spec : Prop :=
  ∀ n, P4754718166188787934.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P8573991807378507700

`A350666(A007310(n+1))`
-/

namespace A225539.P8573991807378507700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350666 (A007310 (n + 1)).toNat

end

end A225539.P8573991807378507700

namespace A225539

/-- `A350666(A007310(n+1))` -/
def P8573991807378507700.Spec : Prop :=
  ∀ n, P8573991807378507700.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P3336148230642342239

`∩[A047257(n+1), A350666(n)]`
-/

namespace A225539.P3336148230642342239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350666 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225539.P3336148230642342239

namespace A225539

/-- `∩[A047257(n+1), A350666(n)]` -/
def P3336148230642342239.Spec : Prop :=
  ∀ n, (P3336148230642342239.a n : ℤ) = A225539 (n + 1)

end A225539

/-! ## A225539.P16250625236846927126

`filter[A350666(2*n+1), A369653(#)]`
-/

namespace A225539.P16250625236846927126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350666 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A225539.P16250625236846927126

namespace A225539

/-- `filter[A350666(2*n+1), A369653(#)]` -/
def P16250625236846927126.Spec : Prop :=
  ∀ n, P16250625236846927126.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P15484688745584330363

`A028835(A047470(n+2))`
-/

namespace A225539.P15484688745584330363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (A047470 (n + 2)).toNat

end

end A225539.P15484688745584330363

namespace A225539

/-- `A028835(A047470(n+2))` -/
def P15484688745584330363.Spec : Prop :=
  ∀ n, P15484688745584330363.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P15146799244557198286

`A056527(A007310(n+1)+n+2)`
-/

namespace A225539.P15146799244557198286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056527 (A007310 (n + 1) + (n + 2 : ℤ)).toNat

end

end A225539.P15146799244557198286

namespace A225539

/-- `A056527(A007310(n+1)+n+2)` -/
def P15146799244557198286.Spec : Prop :=
  ∀ n, P15146799244557198286.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P6647955817977480782

`filter[A350666(2*n+1), A116178(#)]`
-/

namespace A225539.P6647955817977480782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350666 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A225539.P6647955817977480782

namespace A225539

/-- `filter[A350666(2*n+1), A116178(#)]` -/
def P6647955817977480782.Spec : Prop :=
  ∀ n, P6647955817977480782.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P17430011758589979064

`A064537(A268044(n+1))`
-/

namespace A225539.P17430011758589979064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064537 (A268044 (n + 1)).toNat

end

end A225539.P17430011758589979064

namespace A225539

/-- `A064537(A268044(n+1))` -/
def P17430011758589979064.Spec : Prop :=
  ∀ n, P17430011758589979064.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P16079884153872179801

`filter[A187318(2*n+1), A116178(#)]`
-/

namespace A225539.P16079884153872179801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A225539.P16079884153872179801

namespace A225539

/-- `filter[A187318(2*n+1), A116178(#)]` -/
def P16079884153872179801.Spec : Prop :=
  ∀ n, P16079884153872179801.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P9155440228792328714

`A165367(A165988(n+1)-2)`
-/

namespace A225539.P9155440228792328714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 (A165988 (n + 1) - 2).toNat

end

end A225539.P9155440228792328714

namespace A225539

/-- `A165367(A165988(n+1)-2)` -/
def P9155440228792328714.Spec : Prop :=
  ∀ n, P9155440228792328714.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P2822980253180931042

`A165367(A298028(n+1)-2)`
-/

namespace A225539.P2822980253180931042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 (A298028 (n + 1) - 2).toNat

end

end A225539.P2822980253180931042

namespace A225539

/-- `A165367(A298028(n+1)-2)` -/
def P2822980253180931042.Spec : Prop :=
  ∀ n, P2822980253180931042.a n = A225539 (n + 1)

end A225539

/-! ## A225539.P7316469952392325914

`A001651(A090772(n+1)+n+2)`
-/

namespace A225539.P7316469952392325914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A090772 (n + 1) + (n + 2 : ℤ)).toNat

end

end A225539.P7316469952392325914

namespace A225539

/-- `A001651(A090772(n+1)+n+2)` -/
def P7316469952392325914.Spec : Prop :=
  ∀ n, P7316469952392325914.a n = A225539 (n + 1)

end A225539

/-!
# A225540: Triangle of functions in a size n set for which the sequence of composition powers starts with a length k stem (index) before entering a cycle (period).

The programs for A225540, there is no canonical definition to state claims against.
-/

/-! ## A225540.P15867586824034357366

`A389585(A216118(n+4))`
-/

namespace A225540.P15867586824034357366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389585 (A216118 (n + 4)).toNat

end

end A225540.P15867586824034357366

/-! ## A225540.P2592817347791648338

`A256607(∑[A327068(2*n+3)])`
-/

namespace A225540.P2592817347791648338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327068 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256607 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225540.P2592817347791648338

/-!
# A225541: Floor(W(n)) where W is the Lambert W function.

The programs for A225541, the canonical program `A225541.P14151932172831400690` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225541 has offset 0).

The definition of A225541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225541.P14151932172831400690

`∑[char[A058749(n+1)]]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A225541

/-- `∑[char[A058749(n+1)]]` -/
def P14151932172831400690.Spec : Prop :=
  ∀ n, (P14151932172831400690.a n : ℤ) = A225541 n

theorem P14151932172831400690.correct : P14151932172831400690.Spec := by
  intro n
  simp only [A225541]

end A225541

/-! ## A225541.P14614941051073843195

`∑[char[A058749(n)]]-1`
-/

namespace A225541.P14614941051073843195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A225541.P14614941051073843195

namespace A225541

/-- `∑[char[A058749(n)]]-1` -/
def P14614941051073843195.Spec : Prop :=
  ∀ n, P14614941051073843195.a n = A225541 n

end A225541

/-! ## A225541.P13253219120847553549

`A023443(∑[char[A058749(n)]])`
-/

namespace A225541.P13253219120847553549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225541.P13253219120847553549

namespace A225541

/-- `A023443(∑[char[A058749(n)]])` -/
def P13253219120847553549.Spec : Prop :=
  ∀ n, P13253219120847553549.a n = A225541 n

end A225541

/-! ## A225541.P10284016998968015345

`A117055(∑[char[A058749(n)]])`
-/

namespace A225541.P10284016998968015345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225541.P10284016998968015345

namespace A225541

/-- `A117055(∑[char[A058749(n)]])` -/
def P10284016998968015345.Spec : Prop :=
  ∀ n, P10284016998968015345.a n = A225541 n

end A225541

/-! ## A225541.P9367555576380021518

`A117056(∑[char[A058749(n)]])`
-/

namespace A225541.P9367555576380021518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225541.P9367555576380021518

namespace A225541

/-- `A117056(∑[char[A058749(n)]])` -/
def P9367555576380021518.Spec : Prop :=
  ∀ n, P9367555576380021518.a n = A225541 n

end A225541

/-! ## A225541.P8460661038909346836

`A004216(∑[A005940(A067824(n+3))])`
-/

namespace A225541.P8460661038909346836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A067824 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225541.P8460661038909346836

namespace A225541

/-- `A004216(∑[A005940(A067824(n+3))])` -/
def P8460661038909346836.Spec : Prop :=
  ∀ n, P8460661038909346836.a n = A225541 n

end A225541

/-! ## A225541.P14513371709970407576

`A004216(∑[A050252(5*n+3)!])`
-/

namespace A225541.P14513371709970407576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A050252 (5 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225541.P14513371709970407576

namespace A225541

/-- `A004216(∑[A050252(5*n+3)!])` -/
def P14513371709970407576.Spec : Prop :=
  ∀ n, P14513371709970407576.a n = A225541 n

end A225541

/-! ## A225541.P4895924546012515942

`A004216(or(A024206(n+1), A049409(n+1)))`
-/

namespace A225541.P4895924546012515942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Int.lor (A024206 (n + 1)) (A049409 (n + 1))).toNat

end

end A225541.P4895924546012515942

namespace A225541

/-- `A004216(or(A024206(n+1), A049409(n+1)))` -/
def P4895924546012515942.Spec : Prop :=
  ∀ n, P4895924546012515942.a n = A225541 n

end A225541

/-! ## A225541.P3158167299374413361

`A048766(∑[A285073(A052905(n))])`
-/

namespace A225541.P3158167299374413361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225541.P3158167299374413361

namespace A225541

/-- `A048766(∑[A285073(A052905(n))])` -/
def P3158167299374413361.Spec : Prop :=
  ∀ n, P3158167299374413361.a n = A225541 n

end A225541

/-!
# A225543: G.f.: Product_{k>0} (1 - x^k)^4 * (1 - (-x)^k)^8.

The programs for A225543, there is no canonical definition to state claims against.
-/

/-! ## A225543.P17013236268462965095

`A000735(n)+16*A225872(n)`
-/

namespace A225543.P17013236268462965095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000735 n + 16 * A225872 n

end

end A225543.P17013236268462965095

/-! ## A225543.P17977656621854501183

`(A225923(n)+A000735(n))/2`
-/

namespace A225543.P17977656621854501183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225923 n + A000735 n : ℚ) / 2

end

end A225543.P17977656621854501183

/-! ## A225543.P3878911254796413013

`A225923(n)-16*A225872(n)`
-/

namespace A225543.P3878911254796413013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225923 n - 16 * A225872 n

end

end A225543.P3878911254796413013

/-! ## A225543.P6305792396465020589

`(A227239(Δ[n²])+A225923(n))/2`
-/

namespace A225543.P6305792396465020589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227239 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A225923 n : ℚ) / 2

end

end A225543.P6305792396465020589

/-! ## A225543.P10034185665171091711

`A227239(2*n+1)+16*A225872(n)`
-/

namespace A225543.P10034185665171091711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227239 (2 * n + 1) + 16 * A225872 n

end

end A225543.P10034185665171091711

/-!
# A225545: Floor(exp(w(n))) where W is the Lambert W function.

The programs for A225545, the canonical program `A225545.P6608865961525872656` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225545 has offset 0).

The definition of A225545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225545.P14221405714499298805

`floor(n/log(a(n-1)+1))` with `a(0)=1`
-/

namespace A225545.P14221405714499298805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℝ) / Real.log (a (n - 1) + 1 : ℝ)⌋

end

end A225545.P14221405714499298805

namespace A225545

/-- `floor(n/log(a(n-1)+1))` -/
def P14221405714499298805.Spec : Prop :=
  ∀ n, P14221405714499298805.a n = A225545 n

end A225545

/-! ## A225545.P5112805914347753827

`∑[char[ceil((n+1)*log(n+1))]]`
-/

namespace A225545.P5112805914347753827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225545.P5112805914347753827

namespace A225545

/-- `∑[char[ceil((n+1)*log(n+1))]]` -/
def P5112805914347753827.Spec : Prop :=
  ∀ n, (P5112805914347753827.a n : ℤ) = A225545 n

end A225545

/-! ## A225545.P16135749589476273587

`∑[char[A050502(n+2)]]+1`
-/

namespace A225545.P16135749589476273587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225545.P16135749589476273587

namespace A225545

/-- `∑[char[A050502(n+2)]]+1` -/
def P16135749589476273587.Spec : Prop :=
  ∀ n, (P16135749589476273587.a n : ℤ) = A225545 n

end A225545

/-! ## A225545.P6608865961525872656

`A070984(C(2, n+2)+n)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A225545

/-- `A070984(C(2, n+2)+n)-1` -/
def P6608865961525872656.Spec : Prop :=
  ∀ n, P6608865961525872656.a n = A225545 n

theorem P6608865961525872656.correct : P6608865961525872656.Spec := by
  intro n
  simp only [A225545]

end A225545

/-! ## A225545.P15570763211076412412

`A070984(n)-a((n+1)%2)` with `a(0)=1`
-/

namespace A225545.P15570763211076412412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070984 n - a ((n + 1) % 2)

end

end A225545.P15570763211076412412

namespace A225545

/-- `A070984(n)-a((n+1)%2)` -/
def P15570763211076412412.Spec : Prop :=
  ∀ n, P15570763211076412412.a n = A225545 n

end A225545

/-! ## A225545.P1352813654413386270

`∑[char[A050504(n+2)+1]]+1`
-/

namespace A225545.P1352813654413386270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 2) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225545.P1352813654413386270

namespace A225545

/-- `∑[char[A050504(n+2)+1]]+1` -/
def P1352813654413386270.Spec : Prop :=
  ∀ n, (P1352813654413386270.a n : ℤ) = A225545 n

end A225545

/-! ## A225545.P11656384441412956360

`a(n-1)+C(n, A050502(a(n-1)+1))` with `a(0)=1`
-/

namespace A225545.P11656384441412956360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose n (A050502 (a (n - 1) + 1)).toNat

end

end A225545.P11656384441412956360

namespace A225545

/-- `a(n-1)+C(n, A050502(a(n-1)+1))` -/
def P11656384441412956360.Spec : Prop :=
  ∀ n, (P11656384441412956360.a n : ℤ) = A225545 n

end A225545

/-! ## A225545.P12521487007131329989

`A070984(A000007(n)+n)-1`
-/

namespace A225545.P12521487007131329989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070984 (A000007 n + (n : ℤ)).toNat - 1

end

end A225545.P12521487007131329989

namespace A225545

/-- `A070984(A000007(n)+n)-1` -/
def P12521487007131329989.Spec : Prop :=
  ∀ n, P12521487007131329989.a n = A225545 n

end A225545

/-! ## A225545.P5471158001921152111

`A028310(a(n-1))+char[A050504(n+2)+1]` with `a(0)=1`
-/

namespace A225545.P5471158001921152111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 2) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A225545.P5471158001921152111

namespace A225545

/-- `A028310(a(n-1))+char[A050504(n+2)+1]` -/
def P5471158001921152111.Spec : Prop :=
  ∀ n, P5471158001921152111.a n = A225545 n

end A225545

/-!
# A225546: Tek's flip: Write n as the product of distinct factors of the form prime(i)^(2^(j-1)) with i and j integers, and replace each such factor with prime(j)^(2^(i-1)).

The programs for A225546, there is no canonical definition to state claims against.
-/

/-! ## A225546.P11558608413839724771

`A122111(A336321(n+1))`
-/

namespace A225546.P11558608413839724771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A336321 (n + 1)).toNat

end

end A225546.P11558608413839724771

/-! ## A225546.P2163813144980611960

`∑{d}[A336321(n+1), A329034(#)]`
-/

namespace A225546.P2163813144980611960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A225546.P2163813144980611960

/-! ## A225546.P5090666254288278495

`A293442(n+1)*A331312(n+1)`
-/

namespace A225546.P5090666254288278495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1) * A331312 (n + 1)

end

end A225546.P5090666254288278495

/-! ## A225546.P11577777488533457455

`A318470(n+1)*A331312(n+1)`
-/

namespace A225546.P11577777488533457455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318470 (n + 1) * A331312 (n + 1)

end

end A225546.P11577777488533457455

/-! ## A225546.P10095358760352614272

`A335914(n+1)/A331309(n+1)`
-/

namespace A225546.P10095358760352614272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335914 (n + 1) : ℚ) / (A331309 (n + 1) : ℚ)

end

end A225546.P10095358760352614272

/-!
# A225547: Fixed points of A225546.

The programs for A225547, there is no canonical definition to state claims against.
-/

/-! ## A225547.P14571025093292658707

`record[A331310(n+1)*A331311(n+1)]`
-/

namespace A225547.P14571025093292658707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331310 (n + 1) * A331311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225547.P14571025093292658707

/-! ## A225547.P7786361814271087468

`record[A331287(n+1)]`
-/

namespace A225547.P7786361814271087468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225547.P7786361814271087468

/-! ## A225547.P10145686349642734625

`eq[A331287(n+1), A331288(n+1)]+1`
-/

namespace A225547.P10145686349642734625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A225547.P10145686349642734625

/-! ## A225547.P15700714435278055853

`eq[n, A331287(A028310(n))]`
-/

namespace A225547.P15700714435278055853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331287 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225547.P15700714435278055853

/-! ## A225547.P10503398187631247805

`record[A331287(A028310(n))%A016948(2*n)]`
-/

namespace A225547.P10503398187631247805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331287 (A028310 n).toNat) (A016948 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225547.P10503398187631247805

/-!
# A225548: Numbers of the form prime(i)^2^(i-1) or prime(i)^2^(j-1)*prime(j)^2^(i-1) with i and j distinct integers.

The programs for A225548, there is no canonical definition to state claims against.
-/

/-! ## A225548.P16465933537103138919

`A087653(A334633(n+2))`
-/

namespace A225548.P16465933537103138919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087653 (A334633 (n + 2)).toNat

end

end A225548.P16465933537103138919

/-!
# A225549: a(n) is the number of terms in the expansion of (x-y)*(x^4-y^4)*(x^9-y^9)*...*(x^(n^2)-y^(n^2)).

The programs for A225549, there is no canonical definition to state claims against.
-/

/-! ## A225549.P3807924097572347977

`A295653(A036387(n+1))+A036451(2*n+1)`
-/

namespace A225549.P3807924097572347977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295653 (A036387 (n + 1)).toNat + A036451 (2 * n + 1)

end

end A225549.P3807924097572347977

/-!
# A225550: Primes p such that p^2 mod 37 is prime.

The programs for A225550, there is no canonical definition to state claims against.
-/

/-! ## A225550.P17185150578904921744

`or(A106950(n+1), A302982(A351584(3*n+2)))`
-/

namespace A225550.P17185150578904921744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106950 (n + 1)) (A302982 (A351584 (3 * n + 2)).toNat)

end

end A225550.P17185150578904921744

/-!
# A225551: Longest checkmate in king and queen versus king endgame on an n X n chessboard.

The programs for A225551, the canonical program `A225551.P10737030824268377223` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225551 has offset 3).

The definition of A225551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225551.P10737030824268377223

`floor(∑[abs(1-9*n)]/A033627(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A225551

/-- `floor(∑[abs(1-9*n)]/A033627(n+1))` -/
def P10737030824268377223.Spec : Prop :=
  ∀ n, P10737030824268377223.a n = A225551 (n + 3)

theorem P10737030824268377223.correct : P10737030824268377223.Spec := by
  intro n
  simp only [A225551, Nat.add_sub_cancel]

end A225551

/-! ## A225551.P1206755900226556845

`round(A080859(n)/A113127(n))`
-/

namespace A225551.P1206755900226556845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080859 n : ℚ) / (A113127 n : ℚ))

end

end A225551.P1206755900226556845

namespace A225551

/-- `round(A080859(n)/A113127(n))` -/
def P1206755900226556845.Spec : Prop :=
  ∀ n, P1206755900226556845.a n = A225551 (n + 3)

end A225551

/-! ## A225551.P3456547563194231484

`ceil(log2(A096227(n+1)+n-1))+1`
-/

namespace A225551.P3456547563194231484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A096227 (n + 1) + ((n : ℤ) - 1) : ℝ)⌉ + 1

end

end A225551.P3456547563194231484

namespace A225551

/-- `ceil(log2(A096227(n+1)+n-1))+1` -/
def P3456547563194231484.Spec : Prop :=
  ∀ n, P3456547563194231484.a n = A225551 (n + 3)

end A225551

/-! ## A225551.P4048709458763632854

`∑[A084642(record[(3*n²-2*n+2-((3-n)²-7)*(-1)^n)/16])]`
-/

namespace A225551.P4048709458763632854
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 2 : ℤ) - (2 * n : ℤ) + (2 - ((3 - (n : ℤ)) ^ 2 - 7) * (-1) ^ n) : ℚ) / 16

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225551.P4048709458763632854

namespace A225551

/-- `∑[A084642(record[(3*n²-2*n+2-((3-n)²-7)*(-1)^n)/16])]` -/
def P4048709458763632854.Spec : Prop :=
  ∀ n, P4048709458763632854.a n = A225551 (n + 3)

end A225551

/-! ## A225551.P4527712531362795757

`A000194(A103698(n)+A002620(3*(n+1)))`
-/

namespace A225551.P4527712531362795757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A103698 n + A002620 (3 * (n + 1))).toNat

end

end A225551.P4527712531362795757

namespace A225551

/-- `A000194(A103698(n)+A002620(3*(n+1)))` -/
def P4527712531362795757.Spec : Prop :=
  ∀ n, P4527712531362795757.a n = A225551 (n + 3)

end A225551

/-!
# A225552: Longest checkmate in king and rook versus king endgame on an n X n chessboard.

The programs for A225552, there is no canonical definition to state claims against.
-/

/-! ## A225552.P6172657238018854744

`A004219(A018170(n+1)+2*n)`
-/

namespace A225552.P6172657238018854744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (A018170 (n + 1) + (2 * n : ℤ)).toNat

end

end A225552.P6172657238018854744

/-! ## A225552.P712435351079606097

`lt[Δ[A360179(A344710(2*n+1))²], 1]+n+1`
-/

namespace A225552.P712435351079606097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360179 (A344710 (2 * n + 1)).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + (n + 1)

end

end A225552.P712435351079606097

/-!
# A225553: Longest checkmate in king and amazon versus king endgame on an n X n chessboard.

The programs for A225553, the canonical program `A225553.P7726018306778470284` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225553 has offset 3).

The definition of A225553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225553.P8925171746573741921

`ceil((atan(n)^3+n)/2)`
-/

namespace A225553.P8925171746573741921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (n : ℝ) ^ 3 + (n : ℝ)) / 2⌉

end

end A225553.P8925171746573741921

namespace A225553

/-- `ceil((atan(n)^3+n)/2)` -/
def P8925171746573741921.Spec : Prop :=
  ∀ n, P8925171746573741921.a n = A225553 (n + 3)

end A225553

/-! ## A225553.P7726018306778470284

`floor(∑[a(n-1)+1]/(n+1))` with `a(0)=0, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225553

/-- `floor(∑[a(n-1)+1]/(n+1))` -/
def P7726018306778470284.Spec : Prop :=
  ∀ n, P7726018306778470284.a n = A225553 (n + 3)

theorem P7726018306778470284.correct : P7726018306778470284.Spec := by
  intro n
  simp only [A225553, Nat.add_sub_cancel]

end A225553

/-! ## A225553.P13152883668928490898

`round(A055999(n)/(n+2))`
-/

namespace A225553.P13152883668928490898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055999 n : ℚ) / (n + 2 : ℚ))

end

end A225553.P13152883668928490898

namespace A225553

/-- `round(A055999(n)/(n+2))` -/
def P13152883668928490898.Spec : Prop :=
  ∀ n, P13152883668928490898.a n = A225553 (n + 3)

end A225553

/-! ## A225553.P12898708811509293777

`round(sqrt(A047242(n+1)+A002620(n+1)))`
-/

namespace A225553.P12898708811509293777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A047242 (n + 1) + A002620 (n + 1) : ℝ))

end

end A225553.P12898708811509293777

namespace A225553

/-- `round(sqrt(A047242(n+1)+A002620(n+1)))` -/
def P12898708811509293777.Spec : Prop :=
  ∀ n, P12898708811509293777.a n = A225553 (n + 3)

end A225553

/-! ## A225553.P43916960761461954

`ceil(∑[A033999(A060632(n))+n+1]/(n+1))`
-/

namespace A225553.P43916960761461954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A060632 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A225553.P43916960761461954

namespace A225553

/-- `ceil(∑[A033999(A060632(n))+n+1]/(n+1))` -/
def P43916960761461954.Spec : Prop :=
  ∀ n, P43916960761461954.a n = A225553 (n + 3)

end A225553

/-! ## A225553.P17763733913228579763

`round(log2(∑[A265386(n+1)]))`
-/

namespace A225553.P17763733913228579763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A225553.P17763733913228579763

namespace A225553

/-- `round(log2(∑[A265386(n+1)]))` -/
def P17763733913228579763.Spec : Prop :=
  ∀ n, P17763733913228579763.a n = A225553 (n + 3)

end A225553

/-! ## A225553.P11777855172181409039

`A307707(A183905(n+1))`
-/

namespace A225553.P11777855172181409039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A183905 (n + 1)).toNat

end

end A225553.P11777855172181409039

namespace A225553

/-- `A307707(A183905(n+1))` -/
def P11777855172181409039.Spec : Prop :=
  ∀ n, P11777855172181409039.a n = A225553 (n + 3)

end A225553

/-!
# A225554: Longest checkmate in king and empress versus king endgame on an n X n chessboard.

The programs for A225554, there is no canonical definition to state claims against.
-/

/-! ## A225554.P11453834004153591455

`A005843(n+3)-A003056(A164528(n+4))`
-/

namespace A225554.P11453834004153591455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 3) - A003056 (A164528 (n + 4)).toNat

end

end A225554.P11453834004153591455

/-! ## A225554.P10203307842604003061

`A004257(A000029(n))+3+n`
-/

namespace A225554.P10203307842604003061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (A000029 n).toNat + 3 + (n : ℤ)

end

end A225554.P10203307842604003061

/-! ## A225554.P5695784033956216431

`A249728(A000267(n)+record[A198456(n+1)])`
-/

namespace A225554.P5695784033956216431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A000267 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225554.P5695784033956216431

/-! ## A225554.P5933691471079752764

`A316846(A143785(n+1)+A033499(n+2))`
-/

namespace A225554.P5933691471079752764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A143785 (n + 1) + A033499 (n + 2)).toNat

end

end A225554.P5933691471079752764

/-! ## A225554.P751189823941605165

`A033676(A001359(n+1)*A137620(n+4))`
-/

namespace A225554.P751189823941605165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A001359 (n + 1) * A137620 (n + 4)).toNat

end

end A225554.P751189823941605165

/-!
# A225555: Longest checkmate in king and princess versus king endgame on an n X n chessboard.

The programs for A225555, there is no canonical definition to state claims against.
-/

/-! ## A225555.P5406670865802336758

`A187690(n+1)+A037213(A152548(n))`
-/

namespace A225555.P5406670865802336758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187690 (n + 1) + A037213 (A152548 n).toNat

end

end A225555.P5406670865802336758

/-!
# A225557: Longest checkmate in king and two bishops versus king endgame on an n X n chessboard.

The programs for A225557, there is no canonical definition to state claims against.
-/

/-! ## A225557.P3707568508991410711

`lt[A225485(2*(n+1)), A007920(A027187(n))]`
-/

namespace A225557.P3707568508991410711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225485 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A027187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225557.P3707568508991410711

/-! ## A225557.P16849212398729208596

`A022415(n)-A275437(A097341(n))`
-/

namespace A225557.P16849212398729208596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022415 n - A275437 (A097341 n).toNat

end

end A225557.P16849212398729208596

/-!
# A225558: a(n) = A003418(n)/A000793(n).

The programs for A225558, there is no canonical definition to state claims against.
-/

/-! ## A225558.P10612590438900644635

`A003418(n)/A000793(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225558.P10612590438900644635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A000793 n : ℚ)

end

end A225558.P10612590438900644635

/-! ## A225558.P8547489232597515692

`A056040(n)/A000793(n)*A180000(n)`
-/

namespace A225558.P8547489232597515692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A000793 n : ℚ) * (A180000 n : ℚ)

end

end A225558.P8547489232597515692

/-! ## A225558.P18281794380841169726

`A001405(n)/A000793(n)*A263673(n)`
-/

namespace A225558.P18281794380841169726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A000793 n : ℚ) * (A263673 n : ℚ)

end

end A225558.P18281794380841169726

/-! ## A225558.P10170142952409553047

`A002944(n+1)/A000793(n)*A048671(n+1)`
-/

namespace A225558.P10170142952409553047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A000793 n : ℚ) * (A048671 (n + 1) : ℚ)

end

end A225558.P10170142952409553047

/-! ## A225558.P8066696749704802387

`floor(A065500(n)/A000793(n))`
-/

namespace A225558.P8066696749704802387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065500 n : ℚ) / (A000793 n : ℚ)⌋

end

end A225558.P8066696749704802387

/-! ## A225558.P9417023288019751336

`∏[A014963(∏{p}[n, #])]/A000793(n)`
-/

namespace A225558.P9417023288019751336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000793 n : ℚ)

end

end A225558.P9417023288019751336

/-! ## A225558.P11445986732575963467

`(A060357(n)-A060361(n))/A000793(n)`
-/

namespace A225558.P11445986732575963467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060357 n - A060361 n : ℚ) / (A000793 n : ℚ)

end

end A225558.P11445986732575963467

/-! ## A225558.P4907248577801140012

`lcm(A065033(n), A067391(n+1))/A000793(n)`
-/

namespace A225558.P4907248577801140012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A065033 n) (A067391 (n + 1)) : ℚ) / (A000793 n : ℚ)

end

end A225558.P4907248577801140012

/-! ## A225558.P8003642185435628534

`∏[A014963(n+1)]/(A000793(n)*A014963(n+1))`
-/

namespace A225558.P8003642185435628534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000793 n * A014963 (n + 1) : ℚ)

end

end A225558.P8003642185435628534

/-! ## A225558.P1137484356781580503

`A120108(A161680(n))/A000793(n)`
-/

namespace A225558.P1137484356781580503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120108 (A161680 n).toNat : ℚ) / (A000793 n : ℚ)

end

end A225558.P1137484356781580503

/-!
# A225559: The number of practical numbers <= n where the practical numbers are A005153.

The programs for A225559, there is no canonical definition to state claims against.
-/

/-! ## A225559.P15158597857460638020

`∑[and(A004614(n+2), A322860(n+1))]`
-/

namespace A225559.P15158597857460638020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004614 (n + 2)) (A322860 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P15158597857460638020

/-! ## A225559.P4836194582646238328

`∑[A322860(A206075(n+2))+A322860(n+1)]`
-/

namespace A225559.P4836194582646238328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A206075 (n + 2)).toNat + A322860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P4836194582646238328

/-! ## A225559.P12812739902154326424

`∑[and(A000040(n+5), A322860(n+1))]`
-/

namespace A225559.P12812739902154326424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 5)) (A322860 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P12812739902154326424

/-! ## A225559.P2256761874480830847

`∑[and(A106564(n+5), A322860(n+1))]`
-/

namespace A225559.P2256761874480830847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106564 (n + 5)) (A322860 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P2256761874480830847

/-! ## A225559.P4580739304647611327

`∑[A322860(A071053(2*(n+1)))+A322860(n+1)]`
-/

namespace A225559.P4580739304647611327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A071053 (2 * (n + 1))).toNat + A322860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P4580739304647611327

/-! ## A225559.P4420477769461828704

`∑[A322860(A086096(n+1))+A322860(n+1)]`
-/

namespace A225559.P4420477769461828704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A086096 (n + 1)).toNat + A322860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P4420477769461828704

/-! ## A225559.P12021684885709469701

`∑[A322860(A005278(n+1)+1)+A322860(n+1)]`
-/

namespace A225559.P12021684885709469701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A005278 (n + 1) + 1).toNat + A322860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P12021684885709469701

/-! ## A225559.P7995411331697639154

`∑[A322860(A000040(n+2))+A322860(n+1)]`
-/

namespace A225559.P7995411331697639154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A000040 (n + 2)).toNat + A322860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P7995411331697639154

/-! ## A225559.P3508975979981218139

`∑[floor(acot(A279048(n+1)))]`
-/

namespace A225559.P3508975979981218139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A279048 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P3508975979981218139

/-! ## A225559.P18072561907452806734

`∑[A000007(A279048(n+1))]`
-/

namespace A225559.P18072561907452806734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A279048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P18072561907452806734

/-! ## A225559.P6286363873374890562

`∑[A122698(A279048(n+1)²+2)]`
-/

namespace A225559.P6286363873374890562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122698 (A279048 (n + 1) ^ 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P6286363873374890562

/-! ## A225559.P6710271865831571019

`∑[A122698(n+1)^A279048(n+1)]`
-/

namespace A225559.P6710271865831571019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122698 (n + 1) : ℚ) ^ (A279048 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P6710271865831571019

/-! ## A225559.P18388910793674911945

`∑[A279048(a(A279048(n+1))+1)]-1` with `a(0)=2`
-/

namespace A225559.P18388910793674911945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A279048 (f1 (A279048 (n + 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A225559.P18388910793674911945

/-! ## A225559.P14091498344939920696

`∑[C(2, C(n+1, A030057(n+1)))]`
-/

namespace A225559.P14091498344939920696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose (n + 1) (A030057 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P14091498344939920696

/-! ## A225559.P12166337737566640958

`∑[A322860(A106564(n+1))+A322860(n+1)]`
-/

namespace A225559.P12166337737566640958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A106564 (n + 1)).toNat + A322860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225559.P12166337737566640958

/-!
# A225561: Largest number m such that 1, 2, ..., m can be represented as the sum of distinct divisors of n.

The programs for A225561, there is no canonical definition to state claims against.
-/

/-! ## A225561.P12130025345559036900

`A030057(n+1)-1`
-/

namespace A225561.P12130025345559036900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (n + 1) - 1

end

end A225561.P12130025345559036900

/-! ## A225561.P5532716705474390769

`A000203(A327832(n+1))`
-/

namespace A225561.P5532716705474390769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A327832 (n + 1)).toNat

end

end A225561.P5532716705474390769

/-! ## A225561.P15124428523987705234

`A119347(A327832(2*n+1-n))`
-/

namespace A225561.P15124428523987705234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119347 (A327832 (2 * n + 1 - n)).toNat

end

end A225561.P15124428523987705234

/-! ## A225561.P17848111650816135207

`A117886(A020639(2*(n+1)))+A030057(n+1)`
-/

namespace A225561.P17848111650816135207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117886 (A020639 (2 * (n + 1))).toNat + A030057 (n + 1)

end

end A225561.P17848111650816135207

/-! ## A225561.P17318538602273688181

`A033999(2*n+1)+A030057(n+1)`
-/

namespace A225561.P17318538602273688181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A030057 (n + 1)

end

end A225561.P17318538602273688181

/-! ## A225561.P11622044506274633115

`A023443(A030057(n+1))`
-/

namespace A225561.P11622044506274633115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A030057 (n + 1)).toNat

end

end A225561.P11622044506274633115

/-! ## A225561.P711713514551961484

`A267182(2*A030057(n+1))`
-/

namespace A225561.P711713514551961484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * A030057 (n + 1)).toNat

end

end A225561.P711713514551961484

/-!
# A225562: a(n) = smallest k such that n is the n-th largest divisor of k.

The programs for A225562, there is no canonical definition to state claims against.
-/

/-! ## A225562.P8704652746491403509

`A182535(A065197(n+1))*A364956(n+1)`
-/

namespace A225562.P8704652746491403509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182535 (A065197 (n + 1)).toNat * A364956 (n + 1)

end

end A225562.P8704652746491403509

/-! ## A225562.P12388068579273671315

`A029744(A007095(n)+1)*A182535(A065197(n+1))`
-/

namespace A225562.P12388068579273671315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A007095 n + 1).toNat * A182535 (A065197 (n + 1)).toNat

end

end A225562.P12388068579273671315

/-! ## A225562.P16914138840694819111

`A029744(A353838(n+1))*A182535(A065197(n+1))`
-/

namespace A225562.P16914138840694819111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A353838 (n + 1)).toNat * A182535 (A065197 (n + 1)).toNat

end

end A225562.P16914138840694819111

/-! ## A225562.P8239512330273464792

`A029744(A211226(n)+n)*A182535(A065197(n+1))`
-/

namespace A225562.P8239512330273464792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A211226 n + (n : ℤ)).toNat * A182535 (A065197 (n + 1)).toNat

end

end A225562.P8239512330273464792

/-!
# A225563: Numbers whose totient-trajectory can be partitioned into two sets with the same sum.

The programs for A225563, there is no canonical definition to state claims against.
-/

/-! ## A225563.P1590575548001042947

`record[A099375(∑[A344117(n+1)])]`
-/

namespace A225563.P1590575548001042947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225563.P1590575548001042947

/-! ## A225563.P665790372888305143

`∑[2*A124010(A052531(n))]+1`
-/

namespace A225563.P665790372888305143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124010 (A052531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225563.P665790372888305143

/-! ## A225563.P3194699988478194483

`A005408(∑[A124010(A052531(n))])`
-/

namespace A225563.P3194699988478194483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A052531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225563.P3194699988478194483

/-! ## A225563.P3015177414795546828

`record[A099375(A316211(n))]`
-/

namespace A225563.P3015177414795546828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A316211 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225563.P3015177414795546828

/-! ## A225563.P203014637591022754

`eq[A266070(n), A335123(A122386(2*(n+2)))]`
-/

namespace A225563.P203014637591022754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335123 (A122386 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225563.P203014637591022754

/-!
# A225565: Numbers with repeated digits, whose squares do not contain any repeated digits.

The programs for A225565, there is no canonical definition to state claims against.
-/

/-! ## A225565.P1764324791327328675

`∩[A109303(n+1), A119509(n+1)]`
-/

namespace A225565.P1764324791327328675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225565.P1764324791327328675

/-!
# A225566: The set of magic numbers for an idealized harmonic oscillator atomic nucleus with a biaxially deformed prolate ellipsoid shape and an oscillator ratio of 3:1.

The programs for A225566, the canonical program `A225566.P56903620178109860` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225566 has offset 1).

The definition of A225566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225566.P15610015302924023075

`2*∑[C(∑[char[3*n]]+1, 2)]`
-/

namespace A225566.P15610015302924023075
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225566.P15610015302924023075

namespace A225566

/-- `2*∑[C(∑[char[3*n]]+1, 2)]` -/
def P15610015302924023075.Spec : Prop :=
  ∀ n, (P15610015302924023075.a n : ℤ) = A225566 (n + 1)

end A225566

/-! ## A225566.P7083269569598696382

`∑[∑[n+3-(n+3)/gcd(3, n)]]`
-/

namespace A225566.P7083269569598696382
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) - (n + 3 : ℚ) / (Nat.gcd 3 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225566.P7083269569598696382

namespace A225566

/-- `∑[∑[n+3-(n+3)/gcd(3, n)]]` -/
def P7083269569598696382.Spec : Prop :=
  ∀ n, P7083269569598696382.a n = (A225566 (n + 1) : ℚ)

end A225566

/-! ## A225566.P56903620178109860

`2*∑[∑[∑[∑[n+1]]%(n+3)]]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225566

/-- `2*∑[∑[∑[∑[n+1]]%(n+3)]]` -/
def P56903620178109860.Spec : Prop :=
  ∀ n, (P56903620178109860.a n : ℤ) = A225566 (n + 1)

theorem P56903620178109860.correct : P56903620178109860.Spec := by
  intro n
  simp only [A225566, Nat.add_sub_cancel]

end A225566

/-! ## A225566.P4426007718813733265

`2*A144677(n)`
-/

namespace A225566.P4426007718813733265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144677 n

end

end A225566.P4426007718813733265

namespace A225566

/-- `2*A144677(n)` -/
def P4426007718813733265.Spec : Prop :=
  ∀ n, P4426007718813733265.a n = A225566 (n + 1)

theorem P4426007718813733265.correct : P4426007718813733265.Spec := by
  intro n
  simp only [A225566, Nat.add_sub_cancel, A225566.P4426007718813733265.a, A225566.P56903620178109860.f4, A225566.P56903620178109860.f3, A225566.P56903620178109860.f2, A225566.P56903620178109860.f1, A225566.P56903620178109860.a, A144677, A144677.P3181928791554283987.f4, A144677.P3181928791554283987.f3, A144677.P3181928791554283987.f2, A144677.P3181928791554283987.f1, A144677.P3181928791554283987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225566

/-! ## A225566.P8956284794047059804

`2*(A382819(n)+n)`
-/

namespace A225566.P8956284794047059804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A382819 n + (n : ℤ))

end

end A225566.P8956284794047059804

namespace A225566

/-- `2*(A382819(n)+n)` -/
def P8956284794047059804.Spec : Prop :=
  ∀ n, P8956284794047059804.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P6613315548834195933

`∑[A002378(∑[char[3*n]])]`
-/

namespace A225566.P6613315548834195933
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225566.P6613315548834195933

namespace A225566

/-- `∑[A002378(∑[char[3*n]])]` -/
def P6613315548834195933.Spec : Prop :=
  ∀ n, P6613315548834195933.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P9465957288546641448

`∑[A028387(floor(n/3))+1]`
-/

namespace A225566.P9465957288546641448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 ⌊(n : ℚ) / 3⌋.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225566.P9465957288546641448

namespace A225566

/-- `∑[A028387(floor(n/3))+1]` -/
def P9465957288546641448.Spec : Prop :=
  ∀ n, P9465957288546641448.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P8991637518024466514

`∑[2*A000217(∑[char[3*n]])]`
-/

namespace A225566.P8991637518024466514
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225566.P8991637518024466514

namespace A225566

/-- `∑[2*A000217(∑[char[3*n]])]` -/
def P8991637518024466514.Spec : Prop :=
  ∀ n, P8991637518024466514.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P4062621737025882050

`∑[A046092(∑[char[3*n]])]/2`
-/

namespace A225566.P4062621737025882050
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A225566.P4062621737025882050

namespace A225566

/-- `∑[A046092(∑[char[3*n]])]/2` -/
def P4062621737025882050.Spec : Prop :=
  ∀ n, P4062621737025882050.a n = (A225566 (n + 1) : ℚ)

end A225566

/-! ## A225566.P16509810363137087045

`∑[2*A008805(A004396(n))]`
-/

namespace A225566.P16509810363137087045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008805 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225566.P16509810363137087045

namespace A225566

/-- `∑[2*A008805(A004396(n))]` -/
def P16509810363137087045.Spec : Prop :=
  ∀ n, P16509810363137087045.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P8843842907679559899

`A211004(n+1)+A092353(n)`
-/

namespace A225566.P8843842907679559899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (n + 1) + A092353 n

end

end A225566.P8843842907679559899

namespace A225566

/-- `A211004(n+1)+A092353(n)` -/
def P8843842907679559899.Spec : Prop :=
  ∀ n, P8843842907679559899.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P9326313298628126765

`A006501(n)+∑[A087508(n+1)]`
-/

namespace A225566.P9326313298628126765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225566.P9326313298628126765

namespace A225566

/-- `A006501(n)+∑[A087508(n+1)]` -/
def P9326313298628126765.Spec : Prop :=
  ∀ n, P9326313298628126765.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P14385751980821163364

`∑[(A002264(n)+2)*A008620(n)]`
-/

namespace A225566.P14385751980821163364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 n + 2) * A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225566.P14385751980821163364

namespace A225566

/-- `∑[(A002264(n)+2)*A008620(n)]` -/
def P14385751980821163364.Spec : Prop :=
  ∀ n, P14385751980821163364.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P16854168652704048614

`2*(A000601(n)-A307872(n+1))`
-/

namespace A225566.P16854168652704048614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000601 n - A307872 (n + 1))

end

end A225566.P16854168652704048614

namespace A225566

/-- `2*(A000601(n)-A307872(n+1))` -/
def P16854168652704048614.Spec : Prop :=
  ∀ n, P16854168652704048614.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P18091592695723653933

`(A008620(n)+A008620(n)²)*A194960(n+1)`
-/

namespace A225566.P18091592695723653933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008620 n + A008620 n ^ 2) * A194960 (n + 1)

end

end A225566.P18091592695723653933

namespace A225566

/-- `(A008620(n)+A008620(n)²)*A194960(n+1)` -/
def P18091592695723653933.Spec : Prop :=
  ∀ n, P18091592695723653933.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P9624648134735416035

`A006446(n+1)+A006446(n+1)²/A194960(n+1)`
-/

namespace A225566.P9624648134735416035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006446 (n + 1) : ℚ) + (A006446 (n + 1) ^ 2 : ℚ) / (A194960 (n + 1) : ℚ)

end

end A225566.P9624648134735416035

namespace A225566

/-- `A006446(n+1)+A006446(n+1)²/A194960(n+1)` -/
def P9624648134735416035.Spec : Prop :=
  ∀ n, P9624648134735416035.a n = (A225566 (n + 1) : ℚ)

end A225566

/-! ## A225566.P14179144069959541944

`∑[∑[3-(A145064(n+1)-n)]]`
-/

namespace A225566.P14179144069959541944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A145064 (n + 1) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225566.P14179144069959541944

namespace A225566

/-- `∑[∑[3-(A145064(n+1)-n)]]` -/
def P14179144069959541944.Spec : Prop :=
  ∀ n, P14179144069959541944.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P15110088768145442074

`2*(A014125(n+1)-A006501(n+1))`
-/

namespace A225566.P15110088768145442074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014125 (n + 1) - A006501 (n + 1))

end

end A225566.P15110088768145442074

namespace A225566

/-- `2*(A014125(n+1)-A006501(n+1))` -/
def P15110088768145442074.Spec : Prop :=
  ∀ n, P15110088768145442074.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P13422564056300670785

`(A194960(n+1)-A049347(n+1))*A006446(n+1)`
-/

namespace A225566.P13422564056300670785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194960 (n + 1) - A049347 (n + 1)) * A006446 (n + 1)

end

end A225566.P13422564056300670785

namespace A225566

/-- `(A194960(n+1)-A049347(n+1))*A006446(n+1)` -/
def P13422564056300670785.Spec : Prop :=
  ∀ n, P13422564056300670785.a n = A225566 (n + 1)

end A225566

/-! ## A225566.P15842680349675096784

`∑[A002620(A008611(2*n)+2)]`
-/

namespace A225566.P15842680349675096784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008611 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225566.P15842680349675096784

namespace A225566

/-- `∑[A002620(A008611(2*n)+2)]` -/
def P15842680349675096784.Spec : Prop :=
  ∀ n, P15842680349675096784.a n = A225566 (n + 1)

end A225566

/-!
# A225567: Primes with nonzero digits such that sum of cubes of digits equal to square of sums.

The programs for A225567, there is no canonical definition to state claims against.
-/

/-! ## A225567.P7303227851780021988

`p?[A227073(n+1)]`
-/

namespace A225567.P7303227851780021988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225567.P7303227851780021988

/-! ## A225567.P13486420083750507287

`record[p?[A227073(A052938(n))]]`
-/

namespace A225567.P13486420083750507287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225567.P13486420083750507287

/-! ## A225567.P1544305939231129163

`record[p?[A227073(A133310(n))]]`
-/

namespace A225567.P1544305939231129163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225567.P1544305939231129163

/-! ## A225567.P15475984853277541200

`record[p?[A227073(A328399(n))]]`
-/

namespace A225567.P15475984853277541200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225567.P15475984853277541200

/-! ## A225567.P9014323631726354410

`∩[A000040(n+1), A227073(n+1)]`
-/

namespace A225567.P9014323631726354410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225567.P9014323631726354410

/-!
# A225568: Number of entries in each row of the irregular triangles specified in A225777 and A225542.

The programs for A225568, there is no canonical definition to state claims against.
-/

/-! ## A225568.P15801318856616972483

`A143844(n)+A020639(A106800(n)!)`
-/

namespace A225568.P15801318856616972483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A020639 (Nat.factorial (A106800 n).toNat)

end

end A225568.P15801318856616972483

/-! ## A225568.P16874193524559582669

`A020639(A106800(n)!)+A002262(n)²`
-/

namespace A225568.P16874193524559582669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A106800 n).toNat) + A002262 n ^ 2

end

end A225568.P16874193524559582669

/-! ## A225568.P3945554535651847298

`or(A056924(A002678(n+3)), A059268(n))`
-/

namespace A225568.P3945554535651847298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056924 (A002678 (n + 3)).toNat) (A059268 n)

end

end A225568.P3945554535651847298

/-! ## A225568.P2791247101425343518

`A082429(A378377(n+1))`
-/

namespace A225568.P2791247101425343518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082429 (A378377 (n + 1)).toNat

end

end A225568.P2791247101425343518

/-! ## A225568.P5745527486654979086

`A070939(A132924(n+1)^A002262(n))`
-/

namespace A225568.P5745527486654979086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A132924 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A225568.P5745527486654979086

/-!
# A225569: Decimal expansion of Sum_{n>=0} 1/10^(3^n), a transcendental number.

The programs for A225569, the canonical program `A225569.P15635823222923067752` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225569 has offset 0).

The definition of A225569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225569.P2618918532037115398

`abs(A154271(1+n))`
-/

namespace A225569.P2618918532037115398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A154271 (1 + n)|

end

end A225569.P2618918532037115398

namespace A225569

/-- `abs(A154271(1+n))` -/
def P2618918532037115398.Spec : Prop :=
  ∀ n, P2618918532037115398.a n = A225569 n

end A225569

/-! ## A225569.P15635823222923067752

`A063524(A053735(1+n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A225569

/-- `A063524(A053735(1+n))` -/
def P15635823222923067752.Spec : Prop :=
  ∀ n, P15635823222923067752.a n = A225569 n

theorem P15635823222923067752.correct : P15635823222923067752.Spec := by
  intro n
  simp only [A225569]

end A225569

/-! ## A225569.P92917420437567866

`char[3^n-1]`
-/

namespace A225569.P92917420437567866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A225569.P92917420437567866

namespace A225569

/-- `char[3^n-1]` -/
def P92917420437567866.Spec : Prop :=
  ∀ n, (P92917420437567866.a n : ℤ) = A225569 n

end A225569

/-! ## A225569.P3910093875919893545

`∏{p}[n+1, val(#, 3)]`
-/

namespace A225569.P3910093875919893545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 3

end

end A225569.P3910093875919893545

namespace A225569

/-- `∏{p}[n+1, val(#, 3)]` -/
def P3910093875919893545.Spec : Prop :=
  ∀ n, (P3910093875919893545.a n : ℤ) = A225569 n

end A225569

/-! ## A225569.P13291348665675807686

`C(3, ∑{p}[3*(n+1), #])`
-/

namespace A225569.P13291348665675807686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A225569.P13291348665675807686

namespace A225569

/-- `C(3, ∑{p}[3*(n+1), #])` -/
def P13291348665675807686.Spec : Prop :=
  ∀ n, (P13291348665675807686.a n : ℤ) = A225569 n

end A225569

/-! ## A225569.P6715949579859325403

`C(3, ∏{p}[3*(n+1), #])`
-/

namespace A225569.P6715949579859325403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A225569.P6715949579859325403

namespace A225569

/-- `C(3, ∏{p}[3*(n+1), #])` -/
def P6715949579859325403.Spec : Prop :=
  ∀ n, (P6715949579859325403.a n : ℤ) = A225569 n

end A225569

/-! ## A225569.P13596134018951194976

`∏{p}[n+1, (4%#)%2]`
-/

namespace A225569.P13596134018951194976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 4 % p % 2

end

end A225569.P13596134018951194976

namespace A225569

/-- `∏{p}[n+1, (4%#)%2]` -/
def P13596134018951194976.Spec : Prop :=
  ∀ n, (P13596134018951194976.a n : ℤ) = A225569 n

end A225569

/-! ## A225569.P3713129478338174729

`C(∑[val((n+1)², 3)], n)`
-/

namespace A225569.P3713129478338174729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A225569.P3713129478338174729

namespace A225569

/-- `C(∑[val((n+1)², 3)], n)` -/
def P3713129478338174729.Spec : Prop :=
  ∀ n, (P3713129478338174729.a n : ℤ) = A225569 n

end A225569

/-! ## A225569.P14518786340598648303

`C(∑[2*val(n+1, 3)], n)`
-/

namespace A225569.P14518786340598648303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A225569.P14518786340598648303

namespace A225569

/-- `C(∑[2*val(n+1, 3)], n)` -/
def P14518786340598648303.Spec : Prop :=
  ∀ n, (P14518786340598648303.a n : ℤ) = A225569 n

end A225569

/-! ## A225569.P10842980900498553332

`floor(3/∑{p}[3*(n+1), #])`
-/

namespace A225569.P10842980900498553332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A225569.P10842980900498553332

namespace A225569

/-- `floor(3/∑{p}[3*(n+1), #])` -/
def P10842980900498553332.Spec : Prop :=
  ∀ n, P10842980900498553332.a n = A225569 n

end A225569

/-! ## A225569.P16265270781223586610

`round(2/∑{p}[3*(n+1), #])`
-/

namespace A225569.P16265270781223586610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))

end

end A225569.P16265270781223586610

namespace A225569

/-- `round(2/∑{p}[3*(n+1), #])` -/
def P16265270781223586610.Spec : Prop :=
  ∀ n, P16265270781223586610.a n = A225569 n

end A225569

/-! ## A225569.P212888150547221075

`floor(3/∏{p}[3*(n+1), #])`
-/

namespace A225569.P212888150547221075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A225569.P212888150547221075

namespace A225569

/-- `floor(3/∏{p}[3*(n+1), #])` -/
def P212888150547221075.Spec : Prop :=
  ∀ n, P212888150547221075.a n = A225569 n

end A225569

/-! ## A225569.P8440472738929384266

`round(2/∏{p}[3*(n+1), #])`
-/

namespace A225569.P8440472738929384266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))

end

end A225569.P8440472738929384266

namespace A225569

/-- `round(2/∏{p}[3*(n+1), #])` -/
def P8440472738929384266.Spec : Prop :=
  ∀ n, P8440472738929384266.a n = A225569 n

end A225569

/-! ## A225569.P13844625650629216039

`C(3^val(n+1, 3), n+1)`
-/

namespace A225569.P13844625650629216039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 ^ SequenceMachineLib.valuation (n + 1) 3) (n + 1)

end

end A225569.P13844625650629216039

namespace A225569

/-- `C(3^val(n+1, 3), n+1)` -/
def P13844625650629216039.Spec : Prop :=
  ∀ n, (P13844625650629216039.a n : ℤ) = A225569 n

end A225569

/-! ## A225569.P7869061805383673580

`∏{e}[n+1, val(3^#, n+1)]`
-/

namespace A225569.P7869061805383673580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (3 ^ Nat.factorization (f1 n) p) (n + 1)

end

end A225569.P7869061805383673580

namespace A225569

/-- `∏{e}[n+1, val(3^#, n+1)]` -/
def P7869061805383673580.Spec : Prop :=
  ∀ n, (P7869061805383673580.a n : ℤ) = A225569 n

end A225569

/-! ## A225569.P13216137256311893272

`floor(3^val(n+1, 3)/(n+1))`
-/

namespace A225569.P13216137256311893272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) / (n + 1 : ℚ)⌋

end

end A225569.P13216137256311893272

namespace A225569

/-- `floor(3^val(n+1, 3)/(n+1))` -/
def P13216137256311893272.Spec : Prop :=
  ∀ n, P13216137256311893272.a n = A225569 n

end A225569

/-! ## A225569.P13743170423519435541

`round(3^val(n+1, 3)/(n+2))`
-/

namespace A225569.P13743170423519435541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) / (n + 2 : ℚ))

end

end A225569.P13743170423519435541

namespace A225569

/-- `round(3^val(n+1, 3)/(n+2))` -/
def P13743170423519435541.Spec : Prop :=
  ∀ n, P13743170423519435541.a n = A225569 n

end A225569

/-! ## A225569.P10132497944466642300

`C(n, A167878(n))`
-/

namespace A225569.P10132497944466642300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A167878 n).toNat

end

end A225569.P10132497944466642300

namespace A225569

/-- `C(n, A167878(n))` -/
def P10132497944466642300.Spec : Prop :=
  ∀ n, (P10132497944466642300.a n : ℤ) = A225569 n

end A225569

/-! ## A225569.P15443494637050983618

`Δ[A081604(n)]^n`
-/

namespace A225569.P15443494637050983618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A225569.P15443494637050983618

namespace A225569

/-- `Δ[A081604(n)]^n` -/
def P15443494637050983618.Spec : Prop :=
  ∀ n, P15443494637050983618.a n = A225569 n

end A225569

/-! ## A225569.P12071495598026384917

`∑{d}[n+1, A156277(#)]`
-/

namespace A225569.P12071495598026384917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A156277 d

end

end A225569.P12071495598026384917

namespace A225569

/-- `∑{d}[n+1, A156277(#)]` -/
def P12071495598026384917.Spec : Prop :=
  ∀ n, P12071495598026384917.a n = A225569 n

end A225569

/-!
# A225570: The greedy smallest infinite reverse Collatz (3x+1) sequence.

The programs for A225570, there is no canonical definition to state claims against.
-/

/-! ## A225570.P5257741092723052179

`A070165(A156841(A034544(2*(n+1)))-n)`
-/

namespace A225570.P5257741092723052179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (A156841 (A034544 (2 * (n + 1))).toNat - (n : ℤ)).toNat

end

end A225570.P5257741092723052179

/-! ## A225570.P5390457689737828568

`A008878(A008903(54*(n+1)²-1)-n)`
-/

namespace A225570.P5390457689737828568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008878 (A008903 (54 * (n + 1) ^ 2 - 1) - (n : ℤ)).toNat

end

end A225570.P5390457689737828568

/-! ## A225570.P7953525575462283635

`A018416(∑[∑{p}[n+1, gcd(n, #)]]+1)%41`
-/

namespace A225570.P7953525575462283635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018416 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 41

end

end A225570.P7953525575462283635

/-! ## A225570.P12405893680355975727

`(2*a(n-1))%eq[1, A037273(n+1)]` with `a(0)=1`
-/

namespace A225570.P12405893680355975727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225570.P12405893680355975727

/-! ## A225570.P13661634303305237550

`A381431(A378107(n+1))`
-/

namespace A225570.P13661634303305237550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381431 (A378107 (n + 1)).toNat

end

end A225570.P13661634303305237550

/-!
# A225572: Continued fraction expansion of Pi/(4*e) + e/(3*Pi).

The programs for A225572, there is no canonical definition to state claims against.
-/

/-! ## A225572.P18404151174408396006

`A001222(∑{d}[A000124(n), A300498(#)])`
-/

namespace A225572.P18404151174408396006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n).natAbs, A300498 d).toNat

end

end A225572.P18404151174408396006

/-! ## A225572.P17347601536461866781

`A001222(∑{d}[A000124(n), A300937(#)])`
-/

namespace A225572.P17347601536461866781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n).natAbs, A300937 d).toNat

end

end A225572.P17347601536461866781

/-! ## A225572.P5494017745116698555

`A299772(A329345(n+1))-A321750(A008277(n+1))`
-/

namespace A225572.P5494017745116698555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299772 (A329345 (n + 1)).toNat - A321750 (A008277 (n + 1)).toNat

end

end A225572.P5494017745116698555

/-! ## A225572.P6124966316246517938

`A005090(A100316(n))`
-/

namespace A225572.P6124966316246517938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (A100316 n).toNat

end

end A225572.P6124966316246517938

/-!
# A225573: Number of trees over all forests of labeled rooted trees in which some (possibly all or none) of the trees have been specially designated.

The programs for A225573, the canonical program `A225573.P13317868289305221387` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225573 has offset 0).

The definition of A225573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225573.P13317868289305221387

`6*n*(n+2)^(n-2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225573

/-- `6*n*(n+2)^(n-2)` -/
def P13317868289305221387.Spec : Prop :=
  ∀ n, P13317868289305221387.a n = (A225573 n : ℚ)

end A225573

/-! ## A225573.P12805135357687456438

`record[(A074909(n)-A089258(n))*A089463(n)]`
-/

namespace A225573.P12805135357687456438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074909 n - A089258 n) * A089463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225573.P12805135357687456438

namespace A225573

/-- `record[(A074909(n)-A089258(n))*A089463(n)]` -/
def P12805135357687456438.Spec : Prop :=
  ∀ n, P12805135357687456438.a n = A225573 n

end A225573

/-!
# A225574: Additive endpoints: range of A225561.

The programs for A225574, there is no canonical definition to state claims against.
-/

/-! ## A225574.P2186827434784268301

`record[A225561(A085790(n+1))]`
-/

namespace A225574.P2186827434784268301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225574.P2186827434784268301

/-! ## A225574.P13773257266000899361

`record[A030057(A085790(n+1))]-A033999(n)²`
-/

namespace A225574.P13773257266000899361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A033999 n ^ 2

end

end A225574.P13773257266000899361

/-! ## A225574.P2363661193728697681

`record[A030057(A085790(n+1))]-A034947(n+1)²`
-/

namespace A225574.P2363661193728697681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A034947 (n + 1) ^ 2

end

end A225574.P2363661193728697681

/-! ## A225574.P17737532418586973807

`record[A030057(A085790(n+1))]%A050278(n+1)-1`
-/

namespace A225574.P17737532418586973807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A050278 (n + 1)) - 1

end

end A225574.P17737532418586973807

/-! ## A225574.P3449333911179136983

`(record[A030057(A085790(n+1))]-1)%A336607(n+1)`
-/

namespace A225574.P3449333911179136983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1) (A336607 (n + 1))

end

end A225574.P3449333911179136983

/-! ## A225574.P5228419374989054325

`record[A225561(A002192(n+1))%A102431(n+2)]`
-/

namespace A225574.P5228419374989054325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225561 (A002192 (n + 1)).toNat) (A102431 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225574.P5228419374989054325

/-! ## A225574.P2972027236420492045

`A200997(n+1)²%3*record[A225561(A002192(n+1))]`
-/

namespace A225574.P2972027236420492045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (A002192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200997 (n + 1) ^ 2) 3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225574.P2972027236420492045

/-! ## A225574.P4622335474523941793

`A151933(n)!*record[A225561(A002192(n+1))]`
-/

namespace A225574.P4622335474523941793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (A002192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151933 n).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225574.P4622335474523941793

/-! ## A225574.P12830191528292703495

`A030058(n+1)-1`
-/

namespace A225574.P12830191528292703495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030058 (n + 1) - 1

end

end A225574.P12830191528292703495

/-! ## A225574.P7491249019170712848

`A023443(A030058(n+1))`
-/

namespace A225574.P7491249019170712848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A030058 (n + 1)).toNat

end

end A225574.P7491249019170712848

/-!
# A225575: Primes p such that if q is the next prime after p then the concatenation of p with q and the concatenation of q with p are both primes.

The programs for A225575, there is no canonical definition to state claims against.
-/

/-! ## A225575.P12326720253803218858

`∩[A030459(n+1), A178466(n+1)]`
-/

namespace A225575.P12326720253803218858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225575.P12326720253803218858

/-! ## A225575.P9779491242126798841

`∩[A030459(n+1), A034595(n+1)]`
-/

namespace A225575.P9779491242126798841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225575.P9779491242126798841

/-! ## A225575.P9941132202513139769

`∩[A034595(n+1), A178466(n+1)]`
-/

namespace A225575.P9941132202513139769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225575.P9941132202513139769

/-! ## A225575.P6282716658408603405

`p?[A034595(n+1)]`
-/

namespace A225575.P6282716658408603405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225575.P6282716658408603405

/-! ## A225575.P14206432698583762843

`p?[A034821(n)-1]`
-/

namespace A225575.P14206432698583762843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034821 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225575.P14206432698583762843

/-! ## A225575.P1301159156554676896

`∩[A034595(n+1), A258578(n+1)]`
-/

namespace A225575.P1301159156554676896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225575.P1301159156554676896

/-! ## A225575.P6816678308258148480

`∩[A030459(n+1), A034594(n+1)]`
-/

namespace A225575.P6816678308258148480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225575.P6816678308258148480

/-! ## A225575.P11642414876696736115

`∩[A034595(n+1), A083370(n+1)]`
-/

namespace A225575.P11642414876696736115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225575.P11642414876696736115

/-! ## A225575.P1653223870725818298

`∩[A009087(n+1), A034595(n+1)]`
-/

namespace A225575.P1653223870725818298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225575.P1653223870725818298

/-! ## A225575.P1475026166391711344

`∩[A034595(n+1), A049591(n+1)]`
-/

namespace A225575.P1475026166391711344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225575.P1475026166391711344

/-! ## A225575.P16354029917532810236

`∩[A034595(n+1), A067774(n+1)]`
-/

namespace A225575.P16354029917532810236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225575.P16354029917532810236

/-! ## A225575.P10942961475890273802

`∩[A034595(n+1), A067775(n+1)]`
-/

namespace A225575.P10942961475890273802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225575.P10942961475890273802

/-!
# A225577: Least integer m>1 such that 1^2,2^2,...,n^2 are pairwise incongruent modulo 2^m-1.

The programs for A225577, there is no canonical definition to state claims against.
-/

/-! ## A225577.P4355764879526116587

`A126058(A332220(ceil(log2(n+2)))+1)`
-/

namespace A225577.P4355764879526116587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126058 (A332220 ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat + 1).toNat

end

end A225577.P4355764879526116587

/-! ## A225577.P11055030171299571070

`A000043(∑[A209229(A335876(2*n+1))])`
-/

namespace A225577.P11055030171299571070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A335876 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225577.P11055030171299571070

/-! ## A225577.P10957227773157822028

`p?[A342658(A029837(n+1)+1)]`
-/

namespace A225577.P10957227773157822028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342658 (A029837 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225577.P10957227773157822028

/-! ## A225577.P4866488567786411477

`p?[A035531(A003817(2*n+1))]`
-/

namespace A225577.P4866488567786411477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (A003817 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225577.P4866488567786411477

/-! ## A225577.P70942162014654792

`A060308(A006530(ceil(log2(n+2))!))`
-/

namespace A225577.P70942162014654792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A006530 (Nat.factorial ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat)).toNat

end

end A225577.P70942162014654792

/-! ## A225577.P12355214702172557356

`A006530(a(n-1)*A302781(n+1))` with `a(0)=2`
-/

namespace A225577.P12355214702172557356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) * A302781 (n + 1)).toNat

end

end A225577.P12355214702172557356

/-! ## A225577.P5692467099843504682

`A006530(lcm(A052330(n+1), A302781(n+1)))`
-/

namespace A225577.P5692467099843504682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A052330 (n + 1)) (A302781 (n + 1)))

end

end A225577.P5692467099843504682

/-! ## A225577.P3128042435394909042

`p?[A007456(A003056(A052905(n)))]`
-/

namespace A225577.P3128042435394909042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A003056 (A052905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225577.P3128042435394909042

/-! ## A225577.P5691073049844846065

`A070939(A326782(A070939(A326782(n+2))))`
-/

namespace A225577.P5691073049844846065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A326782 (A070939 (A326782 (n + 2)).toNat).toNat).toNat

end

end A225577.P5691073049844846065

/-! ## A225577.P16188617679190369499

`A006530(∏{p}[A276086(2*n+1), #])`
-/

namespace A225577.P16188617679190369499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A225577.P16188617679190369499

/-!
# A225578: Sum of first (prime(n) - 1) (prime(n) - 1)th powers.

The programs for A225578, there is no canonical definition to state claims against.
-/

/-! ## A225578.P609981714809257000

`A031971(record[A000010(n+1)])`
-/

namespace A225578.P609981714809257000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225578.P609981714809257000

/-! ## A225578.P4518497730466267839

`A031971(A000040(n+1)-1)`
-/

namespace A225578.P4518497730466267839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (A000040 (n + 1) - 1).toNat

end

end A225578.P4518497730466267839

/-! ## A225578.P12432958220189921985

`A031971(A175221(n+1)-5)`
-/

namespace A225578.P12432958220189921985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (A175221 (n + 1) - 5).toNat

end

end A225578.P12432958220189921985

/-! ## A225578.P16896156750992095494

`A031971(eq[1, A010051(n+1)])`
-/

namespace A225578.P16896156750992095494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225578.P16896156750992095494

/-! ## A225578.P12075796896779960229

`A031971(eq[1, A054024(n+1)])`
-/

namespace A225578.P12075796896779960229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225578.P12075796896779960229

/-!
# A225580: The sum of all substrings of n (including n).

The programs for A225580, there is no canonical definition to state claims against.
-/

/-! ## A225580.P12930834006591115402

`A138953(n+1)+n+1`
-/

namespace A225580.P12930834006591115402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138953 (n + 1) + (n + 1 : ℤ)

end

end A225580.P12930834006591115402

/-! ## A225580.P12949252708669570868

`∑[Δ[A138953(n)]+1]`
-/

namespace A225580.P12949252708669570868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138953 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225580.P12949252708669570868

/-! ## A225580.P2892478991099634268

`A071980(n+1)%A285223(n+1)`
-/

namespace A225580.P2892478991099634268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071980 (n + 1)) (A285223 (n + 1))

end

end A225580.P2892478991099634268

/-! ## A225580.P9287285826454091265

`A071980(A003056(record[A255548(n+1)]))`
-/

namespace A225580.P9287285826454091265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 (A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A225580.P9287285826454091265

/-! ## A225580.P11615935031186559537

`A071980(n+1)*A083888(A328572(n+9))`
-/

namespace A225580.P11615935031186559537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 (n + 1) * A083888 (A328572 (n + 9)).toNat

end

end A225580.P11615935031186559537

/-! ## A225580.P14333703077402898379

`A071980(n+1)+A008966(A063734(n+2))`
-/

namespace A225580.P14333703077402898379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 (n + 1) + A008966 (A063734 (n + 2)).toNat

end

end A225580.P14333703077402898379

/-! ## A225580.P11532462647423129386

`A071980(n+1)%A019428(A273410(n))`
-/

namespace A225580.P11532462647423129386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071980 (n + 1)) (A019428 (A273410 n).toNat)

end

end A225580.P11532462647423129386

/-! ## A225580.P4154914037688922453

`A071980(n+1)+A010054(∏[A010054(n+1)+1])`
-/

namespace A225580.P4154914037688922453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 (n + 1) + A010054 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225580.P4154914037688922453

/-! ## A225580.P2289626524338352921

`A071980(n+1)+A053188(n²)`
-/

namespace A225580.P2289626524338352921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 (n + 1) + A053188 (n ^ 2)

end

end A225580.P2289626524338352921

/-! ## A225580.P11448703389193775280

`A093882(A000120(n²))+A071980(n+1)`
-/

namespace A225580.P11448703389193775280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 (A000120 (n ^ 2)).toNat + A071980 (n + 1)

end

end A225580.P11448703389193775280

/-! ## A225580.P8212123382815537064

`A071980(n+1)-A093882(A000120(n*n))`
-/

namespace A225580.P8212123382815537064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 (n + 1) - A093882 (A000120 (n * n)).toNat

end

end A225580.P8212123382815537064

/-! ## A225580.P14476667036729999011

`A071980(A053188(∑[n+n])+1)`
-/

namespace A225580.P14476667036729999011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 (A053188 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A225580.P14476667036729999011

/-!
# A225581: a(n) is the minimal odd prime q such that prime(n)*q + prime(n) + q is prime.

The programs for A225581, there is no canonical definition to state claims against.
-/

/-! ## A225581.P3567825864404519805

`A225587(n+1)%A100484(n+1)`
-/

namespace A225581.P3567825864404519805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225587 (n + 1)) (A100484 (n + 1))

end

end A225581.P3567825864404519805

/-! ## A225581.P7310525745169689868

`floor(A225587(n+1)/A008864(n+1))`
-/

namespace A225581.P7310525745169689868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225587 (n + 1) : ℚ) / (A008864 (n + 1) : ℚ)⌋

end

end A225581.P7310525745169689868

/-! ## A225581.P11362225907303976755

`A088732(p?[A225587(n+1)]%A072055(n+1))`
-/

namespace A225581.P11362225907303976755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A072055 (n + 1))).toNat

end

end A225581.P11362225907303976755

/-! ## A225581.P9727687834469882222

`A225587(n+1)%A087112(A000124(n))`
-/

namespace A225581.P9727687834469882222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225587 (n + 1)) (A087112 (A000124 n).toNat)

end

end A225581.P9727687834469882222

/-! ## A225581.P11145918455458961029

`A005408(A225587(n+1))%A072055(n+1)`
-/

namespace A225581.P11145918455458961029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A225587 (n + 1)).toNat) (A072055 (n + 1))

end

end A225581.P11145918455458961029

/-! ## A225581.P16199907124941147710

`A014963(A225587(n+1))%A123108(A001749(n+1))`
-/

namespace A225581.P16199907124941147710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A225587 (n + 1)).toNat) (A123108 (A001749 (n + 1)).toNat)

end

end A225581.P16199907124941147710

/-!
# A225582: Primes in the chain of repeated application of x->2*x+3, starting at x=11.

The programs for A225582, there is no canonical definition to state claims against.
-/

/-! ## A225582.P15922659497997070846

`A156127(A058593(n+1))`
-/

namespace A225582.P15922659497997070846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156127 (A058593 (n + 1)).toNat

end

end A225582.P15922659497997070846

/-! ## A225582.P12680705674663740894

`A133257(2*A058593(n+1))`
-/

namespace A225582.P12680705674663740894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133257 (2 * A058593 (n + 1)).toNat

end

end A225582.P12680705674663740894

/-! ## A225582.P6460891929156736898

`A133257(A058593(n+1)+A058593(n+1))`
-/

namespace A225582.P6460891929156736898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133257 (A058593 (n + 1) + A058593 (n + 1)).toNat

end

end A225582.P6460891929156736898

/-! ## A225582.P15154167636224027864

`∩[7*2^n-3, A127703(n+1)]`
-/

namespace A225582.P15154167636224027864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * 2 ^ n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225582.P15154167636224027864

/-!
# A225583: Primes in the chain of repeated application of x->2*x+3, starting at x=19.

The programs for A225583, there is no canonical definition to state claims against.
-/

/-! ## A225583.P16987616580014525833

`p?[11*2^n-3]`
-/

namespace A225583.P16987616580014525833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * 2 ^ n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225583.P16987616580014525833

/-! ## A225583.P5875157072375674717

`or(1, p?[2*a(n-1)+3])` with `a(0)=8`
-/

namespace A225583.P5875157072375674717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A225583.P5875157072375674717

/-! ## A225583.P3373751550165673208

`record[p?[2*a(n-2)+3]]` with `a(0)=8, a(1)=0`
-/

namespace A225583.P3373751550165673208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 0] fun n f2 =>
  2 * f2 (n - 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225583.P3373751550165673208

/-! ## A225583.P772379609016401221

`∏{d}[p?[2*a(n-1)+3], #]` with `a(0)=8`
-/

namespace A225583.P772379609016401221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  2 * f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A225583.P772379609016401221

/-!
# A225584: Primes in the chain of repeated application of x->2*x+3, starting at x=23.

The programs for A225584, there is no canonical definition to state claims against.
-/

/-! ## A225584.P3381812152694167254

`p?[13*2^n-3]`
-/

namespace A225584.P3381812152694167254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * 2 ^ n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225584.P3381812152694167254

/-!
# A225585: Floor((3^n-1)/n).

The programs for A225585, the canonical program `A225585.P9183838766118248076` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225585 has offset 1).

The definition of A225585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3^(n+1)-1)/(n+1))` (program `A225585.P9183838766118248076`, by `A225585.P9183838766118248076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225585.P9183838766118248076

`floor((3^(n+1)-1)/(n+1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225585

/-- `floor((3^(n+1)-1)/(n+1))` -/
def P9183838766118248076.Spec : Prop :=
  ∀ n, P9183838766118248076.a n = A225585 (n + 1)

theorem P9183838766118248076.correct : P9183838766118248076.Spec := by
  intro n
  simp only [A225585, Nat.add_sub_cancel]

end A225585

/-! ## A225585.P4488776854350769885

`A129787(n+1)-1`
-/

namespace A225585.P4488776854350769885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129787 (n + 1) - 1

end

end A225585.P4488776854350769885

namespace A225585

/-- `A129787(n+1)-1` -/
def P4488776854350769885.Spec : Prop :=
  ∀ n, P4488776854350769885.a n = A225585 (n + 1)

end A225585

/-! ## A225585.P16311443705190531773

`A092763(n+1)-A000007(A066440(n+1))`
-/

namespace A225585.P16311443705190531773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092763 (n + 1) - A000007 (A066440 (n + 1)).toNat

end

end A225585.P16311443705190531773

namespace A225585

/-- `A092763(n+1)-A000007(A066440(n+1))` -/
def P16311443705190531773.Spec : Prop :=
  ∀ n, P16311443705190531773.a n = A225585 (n + 1)

end A225585

/-! ## A225585.P11966519035903190554

`A057427(A066601(n+1))+A092763(n+1)-1`
-/

namespace A225585.P11966519035903190554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A066601 (n + 1)).toNat + (A092763 (n + 1) - 1)

end

end A225585.P11966519035903190554

namespace A225585

/-- `A057427(A066601(n+1))+A092763(n+1)-1` -/
def P11966519035903190554.Spec : Prop :=
  ∀ n, P11966519035903190554.a n = A225585 (n + 1)

end A225585

/-! ## A225585.P14195563427111899425

`xor(A000007(A082511(2*(n+1))%(n+1)), A092763(n+1))`
-/

namespace A225585.P14195563427111899425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (Int.tmod (A082511 (2 * (n + 1))) (n + 1 : ℤ)).toNat) (A092763 (n + 1))

end

end A225585.P14195563427111899425

namespace A225585

/-- `xor(A000007(A082511(2*(n+1))%(n+1)), A092763(n+1))` -/
def P14195563427111899425.Spec : Prop :=
  ∀ n, P14195563427111899425.a n = A225585 (n + 1)

end A225585

/-! ## A225585.P7213625761372996746

`ceil(3*3^n/(n+1))-ceil(sin(n)²)!`
-/

namespace A225585.P7213625761372996746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((3 ^ n : ℚ) / (n + 1 : ℚ))⌉ - (Nat.factorial ⌈Real.sin (n : ℝ) ^ 2⌉.toNat : ℤ)

end

end A225585.P7213625761372996746

namespace A225585

/-- `ceil(3*3^n/(n+1))-ceil(sin(n)²)!` -/
def P7213625761372996746.Spec : Prop :=
  ∀ n, P7213625761372996746.a n = A225585 (n + 1)

end A225585

/-! ## A225585.P14418153797136213105

`ceil(∑[(3-ceil(sin(n)²))*3^n-1]/(n+1))`
-/

namespace A225585.P14418153797136213105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ⌈Real.sin (n : ℝ) ^ 2⌉) * (3 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A225585.P14418153797136213105

namespace A225585

/-- `ceil(∑[(3-ceil(sin(n)²))*3^n-1]/(n+1))` -/
def P14418153797136213105.Spec : Prop :=
  ∀ n, P14418153797136213105.a n = A225585 (n + 1)

end A225585

/-! ## A225585.P3673334663926837004

`ceil(A024024(n+1)/(n+1))`
-/

namespace A225585.P3673334663926837004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024024 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A225585.P3673334663926837004

namespace A225585

/-- `ceil(A024024(n+1)/(n+1))` -/
def P3673334663926837004.Spec : Prop :=
  ∀ n, P3673334663926837004.a n = A225585 (n + 1)

end A225585

/-! ## A225585.P3551726387927781229

`ceil(A000244(n+1)/(n+1))-1`
-/

namespace A225585.P3551726387927781229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000244 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A225585.P3551726387927781229

namespace A225585

/-- `ceil(A000244(n+1)/(n+1))-1` -/
def P3551726387927781229.Spec : Prop :=
  ∀ n, P3551726387927781229.a n = A225585 (n + 1)

end A225585

/-! ## A225585.P14491902633786353595

`xor(A000007(A066440(n+1)²), A092763(n+1))`
-/

namespace A225585.P14491902633786353595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A066440 (n + 1) ^ 2).toNat) (A092763 (n + 1))

end

end A225585.P14491902633786353595

namespace A225585

/-- `xor(A000007(A066440(n+1)²), A092763(n+1))` -/
def P14491902633786353595.Spec : Prop :=
  ∀ n, P14491902633786353595.a n = A225585 (n + 1)

end A225585

/-!
# A225586: Floor((5^n-1)/n).

The programs for A225586, the canonical program `A225586.P1401653297029098718` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225586 has offset 1).

The definition of A225586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((5^(n+1)-1)/(n+1))` (program `A225586.P1401653297029098718`, by `A225586.P1401653297029098718.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225586.P1401653297029098718

`floor((5^(n+1)-1)/(n+1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225586

/-- `floor((5^(n+1)-1)/(n+1))` -/
def P1401653297029098718.Spec : Prop :=
  ∀ n, P1401653297029098718.a n = A225586 (n + 1)

theorem P1401653297029098718.correct : P1401653297029098718.Spec := by
  intro n
  simp only [A225586, Nat.add_sub_cancel]

end A225586

/-! ## A225586.P1152551414626117652

`A129789(n+1)-1`
-/

namespace A225586.P1152551414626117652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129789 (n + 1) - 1

end

end A225586.P1152551414626117652

namespace A225586

/-- `A129789(n+1)-1` -/
def P1152551414626117652.Spec : Prop :=
  ∀ n, P1152551414626117652.a n = A225586 (n + 1)

end A225586

/-! ## A225586.P8728220168187172515

`A129795(n+1)-char[A024049(n)]`
-/

namespace A225586.P8728220168187172515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129795 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A225586.P8728220168187172515

namespace A225586

/-- `A129795(n+1)-char[A024049(n)]` -/
def P8728220168187172515.Spec : Prop :=
  ∀ n, P8728220168187172515.a n = A225586 (n + 1)

end A225586

/-! ## A225586.P14609119126657544673

`A316441(A000040(n+1))+A129789(n+1)`
-/

namespace A225586.P14609119126657544673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A129789 (n + 1)

end

end A225586.P14609119126657544673

namespace A225586

/-- `A316441(A000040(n+1))+A129789(n+1)` -/
def P14609119126657544673.Spec : Prop :=
  ∀ n, P14609119126657544673.a n = A225586 (n + 1)

end A225586

/-! ## A225586.P17813070178776826556

`A316441(A322443(n+1))+A129789(n+1)`
-/

namespace A225586.P17813070178776826556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A322443 (n + 1)).toNat + A129789 (n + 1)

end

end A225586.P17813070178776826556

namespace A225586

/-- `A316441(A322443(n+1))+A129789(n+1)` -/
def P17813070178776826556.Spec : Prop :=
  ∀ n, P17813070178776826556.a n = A225586 (n + 1)

end A225586

/-! ## A225586.P6234764892612652871

`A316441(A007917(n+2))+A129789(n+1)`
-/

namespace A225586.P6234764892612652871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A007917 (n + 2)).toNat + A129789 (n + 1)

end

end A225586.P6234764892612652871

namespace A225586

/-- `A316441(A007917(n+2))+A129789(n+1)` -/
def P6234764892612652871.Spec : Prop :=
  ∀ n, P6234764892612652871.a n = A225586 (n + 1)

end A225586

/-!
# A225587: a(n) is the smallest prime of the form prime(n)*q + prime(n) + q, where q is an odd prime.

The programs for A225587, there is no canonical definition to state claims against.
-/

/-! ## A225587.P2436355425015783005

`A183098(A000040(n+1)*A225581(n+1))`
-/

namespace A225587.P2436355425015783005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183098 (A000040 (n + 1) * A225581 (n + 1)).toNat

end

end A225587.P2436355425015783005

/-! ## A225587.P7543268655537204277

`A088732(A005408(p?[A232749(n+1)]))`
-/

namespace A225587.P7543268655537204277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A225587.P7543268655537204277

/-! ## A225587.P11851405134614743373

`A088732(A005408(p?[A268182(n+1)]))`
-/

namespace A225587.P11851405134614743373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A225587.P11851405134614743373

/-! ## A225587.P4742581377229623670

`A088732(A144396(p?[A268182(n+1)]))`
-/

namespace A225587.P4742581377229623670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A144396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A225587.P4742581377229623670

/-! ## A225587.P17319782090476404669

`A088732(A008864(n+1)+p?[A232749(n+1)])`
-/

namespace A225587.P17319782090476404669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A008864 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A225587.P17319782090476404669

/-!
# A225588: Number of descent sequences of length n.

The programs for A225588, there is no canonical definition to state claims against.
-/

/-! ## A225588.P162389171911229165

`A001462(A372545(n))`
-/

namespace A225588.P162389171911229165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A372545 n).toNat

end

end A225588.P162389171911229165

/-! ## A225588.P6249284068829593350

`A361978(A204352(n))`
-/

namespace A225588.P6249284068829593350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361978 (A204352 n).toNat

end

end A225588.P6249284068829593350

/-! ## A225588.P4670434950395048374

`A024417(ceil(sqrt(A319292(n+1))))`
-/

namespace A225588.P4670434950395048374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 ⌈Real.sqrt (A319292 (n + 1) : ℝ)⌉.toNat

end

end A225588.P4670434950395048374

/-! ## A225588.P13902510290463917869

`A265370(∑[A317022(n)]+n²)`
-/

namespace A225588.P13902510290463917869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)).toNat

end

end A225588.P13902510290463917869

/-!
# A225589: Inverse of permutation in A217122.

The programs for A225589, there is no canonical definition to state claims against.
-/

/-! ## A225589.P7495378847004022356

`A242706(A242704(n+1)%A097486(n))`
-/

namespace A225589.P7495378847004022356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242706 (Int.tmod (A242704 (n + 1)) (A097486 n)).toNat

end

end A225589.P7495378847004022356

/-! ## A225589.P2174924275888563913

`A242706(A242704(n+1))%A083518(n+1)`
-/

namespace A225589.P2174924275888563913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242706 (A242704 (n + 1)).toNat) (A083518 (n + 1))

end

end A225589.P2174924275888563913

/-!
# A225593: The integer closest to n/e.

The programs for A225593, the canonical program `A225593.P1324195465147006761` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225593 has offset 1).

The definition of A225593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225593.P1324195465147006761

`round((n+1)/e)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A225593

/-- `round((n+1)/e)` -/
def P1324195465147006761.Spec : Prop :=
  ∀ n, P1324195465147006761.a n = A225593 (n + 1)

theorem P1324195465147006761.correct : P1324195465147006761.Spec := by
  intro n
  simp only [A225593, Nat.add_sub_cancel]

end A225593

/-! ## A225593.P17206266160449170683

`∑[dr(Δ[round(n/e)])]`
-/

namespace A225593.P17206266160449170683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.exp 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225593.P17206266160449170683

namespace A225593

/-- `∑[dr(Δ[round(n/e)])]` -/
def P17206266160449170683.Spec : Prop :=
  ∀ n, (P17206266160449170683.a n : ℤ) = A225593 (n + 1)

end A225593

/-! ## A225593.P7026533395623594345

`∑[char[A060644(n)]]`
-/

namespace A225593.P7026533395623594345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060644 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225593.P7026533395623594345

namespace A225593

/-- `∑[char[A060644(n)]]` -/
def P7026533395623594345.Spec : Prop :=
  ∀ n, (P7026533395623594345.a n : ℤ) = A225593 (n + 1)

end A225593

/-! ## A225593.P14418808272021770619

`A184744(n+1)-(n+1)`
-/

namespace A225593.P14418808272021770619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184744 (n + 1) - (n + 1 : ℤ)

end

end A225593.P14418808272021770619

namespace A225593

/-- `A184744(n+1)-(n+1)` -/
def P14418808272021770619.Spec : Prop :=
  ∀ n, P14418808272021770619.a n = A225593 (n + 1)

end A225593

/-! ## A225593.P720105658054417961

`∑[char[A279607(2*n+1)]]`
-/

namespace A225593.P720105658054417961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225593.P720105658054417961

namespace A225593

/-- `∑[char[A279607(2*n+1)]]` -/
def P720105658054417961.Spec : Prop :=
  ∀ n, (P720105658054417961.a n : ℤ) = A225593 (n + 1)

end A225593

/-! ## A225593.P17104108829092680178

`A184744(n+1)%A000027(n+1)`
-/

namespace A225593.P17104108829092680178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184744 (n + 1)) (A000027 (n + 1))

end

end A225593.P17104108829092680178

namespace A225593

/-- `A184744(n+1)%A000027(n+1)` -/
def P17104108829092680178.Spec : Prop :=
  ∀ n, P17104108829092680178.a n = A225593 (n + 1)

end A225593

/-! ## A225593.P17003700858635298419

`A032634(A005843(n+1))-A032634(n+1)`
-/

namespace A225593.P17003700858635298419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A005843 (n + 1)).toNat - A032634 (n + 1)

end

end A225593.P17003700858635298419

namespace A225593

/-- `A032634(A005843(n+1))-A032634(n+1)` -/
def P17003700858635298419.Spec : Prop :=
  ∀ n, P17003700858635298419.a n = A225593 (n + 1)

end A225593

/-! ## A225593.P3459620574593664135

`A032634(A066043(2*(n+1)))-A032634(n+1)`
-/

namespace A225593.P3459620574593664135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A066043 (2 * (n + 1))).toNat - A032634 (n + 1)

end

end A225593.P3459620574593664135

namespace A225593

/-- `A032634(A066043(2*(n+1)))-A032634(n+1)` -/
def P3459620574593664135.Spec : Prop :=
  ∀ n, P3459620574593664135.a n = A225593 (n + 1)

end A225593

/-!
# A225595: Conjectured square array T(n,k) read by antidiagonals related to the existence of rectangles of size n*k in the toothpick structure of A139250.

The programs for A225595, there is no canonical definition to state claims against.
-/

/-! ## A225595.P8567609152160998043

`round(acot(∏{e}[A003986(n), #]))`
-/

namespace A225595.P8567609152160998043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℝ))

end

end A225595.P8567609152160998043

/-! ## A225595.P13721731423118799863

`floor(atan(dr(A265258(n+1))))`
-/

namespace A225595.P13721731423118799863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (SequenceMachineLib.digitalRoot (A265258 (n + 1)) : ℝ)⌋

end

end A225595.P13721731423118799863

/-! ## A225595.P16892907247465789915

`1-val(A327489(n+1), 4)`
-/

namespace A225595.P16892907247465789915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A327489 (n + 1)).toNat 4 : ℤ)

end

end A225595.P16892907247465789915

/-! ## A225595.P16191801043596803444

`(A262457(n+1)%2)^n`
-/

namespace A225595.P16191801043596803444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262457 (n + 1)) 2 ^ n

end

end A225595.P16191801043596803444

/-! ## A225595.P10034291754175911412

`char[A375114(2*(n+1))-3]`
-/

namespace A225595.P10034291754175911412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375114 (2 * (n + 1)) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A225595.P10034291754175911412

/-!
# A225596: Sum of largest parts of all partitions of n plus n. Also, total number of parts in all partitions of n plus n.

The programs for A225596, there is no canonical definition to state claims against.
-/

/-! ## A225596.P6388650695697552304

`A006128(n)+n`
-/

namespace A225596.P6388650695697552304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (n : ℤ)

end

end A225596.P6388650695697552304

/-! ## A225596.P14246441335054203829

`A225610(n)-A093694(n)`
-/

namespace A225596.P14246441335054203829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225610 n - A093694 n

end

end A225596.P14246441335054203829

/-! ## A225596.P5426247092916536384

`∑{d}[n, A085410(#)]+n`
-/

namespace A225596.P5426247092916536384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085410 d + (n : ℤ)

end

end A225596.P5426247092916536384

/-! ## A225596.P9792385877443024937

`∑[A278602(n)/4]+n`
-/

namespace A225596.P9792385877443024937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278602 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A225596.P9792385877443024937

/-! ## A225596.P15560296177584734888

`A093694(n)+n-A000041(n)`
-/

namespace A225596.P15560296177584734888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + ((n : ℤ) - A000041 n)

end

end A225596.P15560296177584734888

/-! ## A225596.P16670816903074361018

`A005843(n)-(n-A006128(n))`
-/

namespace A225596.P16670816903074361018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A006128 n)

end

end A225596.P16670816903074361018

/-! ## A225596.P1921941131034214956

`A093694(n)+n-∑[A002865(n)]`
-/

namespace A225596.P1921941131034214956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225596.P1921941131034214956

/-! ## A225596.P2413477916491894038

`A024786(n+1)+A194452(n)+n`
-/

namespace A225596.P2413477916491894038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) + (A194452 n + (n : ℤ))

end

end A225596.P2413477916491894038

/-! ## A225596.P14018531889214707264

`A093694(n)-(A047967(n)+A000009(n))+n`
-/

namespace A225596.P14018531889214707264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A047967 n + A000009 n) + (n : ℤ)

end

end A225596.P14018531889214707264

/-! ## A225596.P11620967859938401197

`∑[A138137(n+1)]-A138137(n+1)+n`
-/

namespace A225596.P11620967859938401197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A138137 (n + 1) + (n : ℤ)

end

end A225596.P11620967859938401197

/-! ## A225596.P17076835286496077211

`A211978(n)/2+n`
-/

namespace A225596.P17076835286496077211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211978 n : ℚ) / 2 + (n : ℚ)

end

end A225596.P17076835286496077211

/-! ## A225596.P17043599184113196511

`n-(A006128(n)-A211978(n))`
-/

namespace A225596.P17043599184113196511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A006128 n - A211978 n)

end

end A225596.P17043599184113196511

/-! ## A225596.P6102393961783056989

`A278355(n)/4+n`
-/

namespace A225596.P6102393961783056989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278355 n : ℚ) / 4 + (n : ℚ)

end

end A225596.P6102393961783056989

/-! ## A225596.P5805167287858746118

`A296010(n)+n-A094533(n)`
-/

namespace A225596.P5805167287858746118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n + ((n : ℤ) - A094533 n)

end

end A225596.P5805167287858746118

/-! ## A225596.P8755647710698267477

`A256010(n)/A028310(n)+n`
-/

namespace A225596.P8755647710698267477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256010 n : ℚ) / (A028310 n : ℚ) + (n : ℚ)

end

end A225596.P8755647710698267477

/-! ## A225596.P13357331303071283752

`A093694(n)-A035363(2*n)+n`
-/

namespace A225596.P13357331303071283752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A035363 (2 * n) + (n : ℤ)

end

end A225596.P13357331303071283752

/-! ## A225596.P16046408964241265946

`A256010(n)/A006370(A004277(n))+n`
-/

namespace A225596.P16046408964241265946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256010 n : ℚ) / (A006370 (A004277 n).toNat : ℚ) + (n : ℚ)

end

end A225596.P16046408964241265946

/-! ## A225596.P4563227059987659857

`A222047(n)+A222048(n)+n`
-/

namespace A225596.P4563227059987659857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n + (A222048 n + (n : ℤ))

end

end A225596.P4563227059987659857

/-! ## A225596.P3573900624267941351

`A093694(n)-(A332284(n)+A332283(n))+n`
-/

namespace A225596.P3573900624267941351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A332284 n + A332283 n) + (n : ℤ)

end

end A225596.P3573900624267941351

/-!
# A225597: Triangle read by rows: T(n,k) = total number of parts of all regions of the set of partitions of n whose largest part is k.

The programs for A225597, there is no canonical definition to state claims against.
-/

/-! ## A225597.P6413740730178370160

`A176572(A066181(n+1))`
-/

namespace A225597.P6413740730178370160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176572 (A066181 (n + 1)).toNat

end

end A225597.P6413740730178370160

/-! ## A225597.P5145208639966077092

`A176572(A132119(n+2))`
-/

namespace A225597.P5145208639966077092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176572 (A132119 (n + 2)).toNat

end

end A225597.P5145208639966077092

/-! ## A225597.P16538077914612066534

`A176572(Δ[A002262(n)+A000124(n)])`
-/

namespace A225597.P16538077914612066534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176572 (f1 (n + 1) - f1 n).toNat

end

end A225597.P16538077914612066534

/-! ## A225597.P622868531002605187

`A176572(Δ[A002260(n+1)+A000217(n)])`
-/

namespace A225597.P622868531002605187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176572 (f1 (n + 1) - f1 n).toNat

end

end A225597.P622868531002605187

/-! ## A225597.P4148383099941595900

`A016009(3^A238158(n+1))`
-/

namespace A225597.P4148383099941595900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016009 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A238158 (n + 1) : ℤ))).toNat

end

end A225597.P4148383099941595900

/-!
# A225598: Triangle read by rows: T(n,k) = sum of all parts of all regions of the set of partitions of n whose largest part is k.

The programs for A225598, there is no canonical definition to state claims against.
-/

/-! ## A225598.P17412795981020497007

`A343114(A225597(n+1)%A101043(3*(n+1)))`
-/

namespace A225598.P17412795981020497007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343114 (Int.tmod (A225597 (n + 1)) (A101043 (3 * (n + 1)))).toNat

end

end A225598.P17412795981020497007

/-! ## A225598.P7310070934180305747

`A349190(or(1, A157751(n)))`
-/

namespace A225598.P7310070934180305747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (Int.lor 1 (A157751 n)).toNat

end

end A225598.P7310070934180305747

/-! ## A225598.P13084736475923517867

`∑{e}[A276086(A112830(n)), #]`
-/

namespace A225598.P13084736475923517867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A112830 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A225598.P13084736475923517867

/-! ## A225598.P10913059244634298998

`A349190(or(1, abs(A244419(n))))`
-/

namespace A225598.P10913059244634298998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (Int.lor 1 |A244419 n|).toNat

end

end A225598.P10913059244634298998

/-! ## A225598.P13613680279662946938

`or(1, dr(A244419(A062003(n))))`
-/

namespace A225598.P13613680279662946938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.digitalRoot (A244419 (A062003 n).toNat))

end

end A225598.P13613680279662946938

