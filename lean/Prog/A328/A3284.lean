import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C003
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
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

/-!
# A328400: Smallest number with the same set of distinct prime exponents as n.

The programs for A328400, the canonical program `A328400.P16643099546107320923` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328400 has offset 1).

The definition of A328400 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A181819, A181821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328400.P16643099546107320923

`A181821(A007947(A181819(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A328400

/-- `A181821(A007947(A181819(n+1)))` -/
def P16643099546107320923.Spec : Prop :=
  ∀ n, P16643099546107320923.a n = A328400 (n + 1)

theorem P16643099546107320923.correct : P16643099546107320923.Spec := by
  intro n
  simp only [A328400, Nat.add_sub_cancel]

end A328400

/-! ## A328400.P10952569251269904277

`A181821(A329601(n+1))`
-/

namespace A328400.P10952569251269904277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A329601 (n + 1)).toNat

end

end A328400.P10952569251269904277

namespace A328400

/-- `A181821(A329601(n+1))` -/
def P10952569251269904277.Spec : Prop :=
  ∀ n, P10952569251269904277.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P5659607380839731996

`A329600(A238745(n+1))`
-/

namespace A328400.P5659607380839731996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (A238745 (n + 1)).toNat

end

end A328400.P5659607380839731996

namespace A328400

/-- `A329600(A238745(n+1))` -/
def P5659607380839731996.Spec : Prop :=
  ∀ n, P5659607380839731996.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P4773892620891674658

`A362227(A297404(n+1))`
-/

namespace A328400.P4773892620891674658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 (A297404 (n + 1)).toNat

end

end A328400.P4773892620891674658

namespace A328400

/-- `A362227(A297404(n+1))` -/
def P4773892620891674658.Spec : Prop :=
  ∀ n, P4773892620891674658.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P5789789208623243347

`A181821(∏{p}[A181819(n+1), #])`
-/

namespace A328400.P5789789208623243347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328400.P5789789208623243347

namespace A328400

/-- `A181821(∏{p}[A181819(n+1), #])` -/
def P5789789208623243347.Spec : Prop :=
  ∀ n, P5789789208623243347.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P15556669666291412243

`A181821(∏{p}[∏{e}[n+1, A000040(#)], #])`
-/

namespace A328400.P15556669666291412243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000040 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328400.P15556669666291412243

namespace A328400

/-- `A181821(∏{p}[∏{e}[n+1, A000040(#)], #])` -/
def P15556669666291412243.Spec : Prop :=
  ∀ n, P15556669666291412243.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P11520555808830966311

`A181821(∏{p}[∏{e}[n+1, A095313(#)], #])`
-/

namespace A328400.P11520555808830966311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A095313 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328400.P11520555808830966311

namespace A328400

/-- `A181821(∏{p}[∏{e}[n+1, A095313(#)], #])` -/
def P11520555808830966311.Spec : Prop :=
  ∀ n, P11520555808830966311.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P12288701444681427919

`A181821(∏{p}[∏{e}[n+1, A219697(#)], #])`
-/

namespace A328400.P12288701444681427919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A219697 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328400.P12288701444681427919

namespace A328400

/-- `A181821(∏{p}[∏{e}[n+1, A219697(#)], #])` -/
def P12288701444681427919.Spec : Prop :=
  ∀ n, P12288701444681427919.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P2065322146215678772

`A181821(∏{p}[∏{e}[n+1, A233360(#)], #])`
-/

namespace A328400.P2065322146215678772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A233360 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328400.P2065322146215678772

namespace A328400

/-- `A181821(∏{p}[∏{e}[n+1, A233360(#)], #])` -/
def P2065322146215678772.Spec : Prop :=
  ∀ n, P2065322146215678772.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P14614807102356212719

`A181821(A181819(n+1)/A351944(n+1))`
-/

namespace A328400.P14614807102356212719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (SequenceMachineLib.roundAway ((A181819 (n + 1) : ℚ) / (A351944 (n + 1) : ℚ))).toNat

end

end A328400.P14614807102356212719

namespace A328400

/-- `A181821(A181819(n+1)/A351944(n+1))` -/
def P14614807102356212719.Spec : Prop :=
  ∀ n, P14614807102356212719.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P12110832684705026895

`A181821(gcd(A086568(n+1), A181819(n+1)))`
-/

namespace A328400.P12110832684705026895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (Int.gcd (A086568 (n + 1)) (A181819 (n + 1)))

end

end A328400.P12110832684705026895

namespace A328400

/-- `A181821(gcd(A086568(n+1), A181819(n+1)))` -/
def P12110832684705026895.Spec : Prop :=
  ∀ n, P12110832684705026895.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P18364847587368819088

`A329600(A122111(A181819(n+1)²))`
-/

namespace A328400.P18364847587368819088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (A122111 (A181819 (n + 1) ^ 2).toNat).toNat

end

end A328400.P18364847587368819088

namespace A328400

/-- `A329600(A122111(A181819(n+1)²))` -/
def P18364847587368819088.Spec : Prop :=
  ∀ n, P18364847587368819088.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P4869152914512246792

`A329600(A122111(A329601(n+1)²))`
-/

namespace A328400.P4869152914512246792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (A122111 (A329601 (n + 1) ^ 2).toNat).toNat

end

end A328400.P4869152914512246792

namespace A328400

/-- `A329600(A122111(A329601(n+1)²))` -/
def P4869152914512246792.Spec : Prop :=
  ∀ n, P4869152914512246792.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P1430069791738423125

`A108951(A122111(A329601(A071364(n+1))))`
-/

namespace A328400.P1430069791738423125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A122111 (A329601 (A071364 (n + 1)).toNat).toNat).toNat

end

end A328400.P1430069791738423125

namespace A328400

/-- `A108951(A122111(A329601(A071364(n+1))))` -/
def P1430069791738423125.Spec : Prop :=
  ∀ n, P1430069791738423125.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P1835984786391769888

`A108951(A122111(A329601(A122111(A329607(n+1)))))`
-/

namespace A328400.P1835984786391769888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A122111 (A329601 (A122111 (A329607 (n + 1)).toNat).toNat).toNat).toNat

end

end A328400.P1835984786391769888

namespace A328400

/-- `A108951(A122111(A329601(A122111(A329607(n+1)))))` -/
def P1835984786391769888.Spec : Prop :=
  ∀ n, P1835984786391769888.a n = A328400 (n + 1)

end A328400

/-! ## A328400.P5669958054975856836

`A046523(A048767(A048767(A003961(A046523(n+1)))))`
-/

namespace A328400.P5669958054975856836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A048767 (A048767 (A003961 (A046523 (n + 1)).toNat).toNat).toNat).toNat

end

end A328400.P5669958054975856836

namespace A328400

/-- `A046523(A048767(A048767(A003961(A046523(n+1)))))` -/
def P5669958054975856836.Spec : Prop :=
  ∀ n, P5669958054975856836.a n = A328400 (n + 1)

end A328400

/-!
# A328401: Lexicographically earliest infinite sequence such that a(i) = a(j) => A328400(i) = A328400(j) for all i, j.

The programs for A328401, there is no canonical definition to state claims against.
-/

/-! ## A328401.P12865699914968767799

`A320110(A328400(n+1)%A156997(n+1))`
-/

namespace A328401.P12865699914968767799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320110 (Int.tmod (A328400 (n + 1)) (A156997 (n + 1))).toNat

end

end A328401.P12865699914968767799

/-! ## A328401.P1177028862752502520

`A338719(A328400(n+1))%A136735(n+1)`
-/

namespace A328401.P1177028862752502520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338719 (A328400 (n + 1)).toNat) (A136735 (n + 1))

end

end A328401.P1177028862752502520

/-! ## A328401.P7190690684752606969

`A092510(A078722(n))*A320110(A328400(n+1))`
-/

namespace A328401.P7190690684752606969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092510 (A078722 n).toNat * A320110 (A328400 (n + 1)).toNat

end

end A328401.P7190690684752606969

/-! ## A328401.P12833189921221083839

`A320110(A328400(n+1))%A003188(A202141(n))`
-/

namespace A328401.P12833189921221083839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320110 (A328400 (n + 1)).toNat) (A003188 (A202141 n).toNat)

end

end A328401.P12833189921221083839

/-! ## A328401.P4613252988112335622

`A062571(A328400(n+1))`
-/

namespace A328401.P4613252988112335622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 (A328400 (n + 1)).toNat

end

end A328401.P4613252988112335622

/-!
# A328402: Number of terms of A048103 found in range A002110(n-1) .. A002110(n)-1.

The programs for A328402, there is no canonical definition to state claims against.
-/

/-! ## A328402.P17553335895645001813

`Δ[A372575(A002110(n))]`
-/

namespace A328402.P17553335895645001813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372575 (A002110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328402.P17553335895645001813

/-! ## A328402.P16040645854599704501

`Δ[A377982(A002110(n)+1)]`
-/

namespace A328402.P16040645854599704501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377982 (A002110 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328402.P16040645854599704501

/-!
# A328403: a(n) = A276086(A276086(A276086(n))), where A276086(n) converts primorial base expansion of n into its prime product form.

The programs for A328403, there is no canonical definition to state claims against.
-/

/-! ## A328403.P12029622012272456401

`A276086(A276087(n))`
-/

namespace A328403.P12029622012272456401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A276087 n).toNat

end

end A328403.P12029622012272456401

/-! ## A328403.P13205175010019855732

`A276086(A276086(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328403.P13205175010019855732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A276086 (A276086 n).toNat).toNat

end

end A328403.P13205175010019855732

/-! ## A328403.P17684542383195233429

`A276087(A276076(n))`
-/

namespace A328403.P17684542383195233429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276087 (A276076 n).toNat

end

end A328403.P17684542383195233429

/-! ## A328403.P12704571776362272081

`A276087(A351225(n)+n)`
-/

namespace A328403.P12704571776362272081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276087 (A351225 n + (n : ℤ)).toNat

end

end A328403.P12704571776362272081

/-! ## A328403.P9006263251281181604

`A276087(A328580(n)+A328476(n))`
-/

namespace A328403.P9006263251281181604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276087 (A328580 n + A328476 n).toNat

end

end A328403.P9006263251281181604

/-!
# A328404: The length of primorial base expansion (number of significant digits) of A276086(n), where A276086(n) converts primorial base expansion of n into its prime product form.

The programs for A328404, there is no canonical definition to state claims against.
-/

/-! ## A328404.P2098731581617852746

`A235224(A276086(n))`
-/

namespace A328404.P2098731581617852746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A276086 n).toNat

end

end A328404.P2098731581617852746

/-! ## A328404.P17502385497920820935

`A061395(A276087(n))`
-/

namespace A328404.P17502385497920820935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A276087 n).toNat

end

end A328404.P17502385497920820935

/-! ## A328404.P14838458078659973645

`A111972(A328843(n))+1`
-/

namespace A328404.P14838458078659973645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A328843 n).toNat + 1

end

end A328404.P14838458078659973645

/-! ## A328404.P2480841773500280986

`A328766(n)+A328614(A328843(n))`
-/

namespace A328404.P2480841773500280986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328766 n + A328614 (A328843 n).toNat

end

end A328404.P2480841773500280986

/-! ## A328404.P17853888418672192164

`A084558(A328843(n)%A127118(n+1))`
-/

namespace A328404.P17853888418672192164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (Int.tmod (A328843 n) (A127118 (n + 1))).toNat

end

end A328404.P17853888418672192164

/-! ## A328404.P6800174608880557001

`A252735(∏{p}[A328763(n), #])`
-/

namespace A328404.P6800174608880557001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328404.P6800174608880557001

/-! ## A328404.P10313287385917369599

`A061395(∏{p}[A328763(n), #])-1`
-/

namespace A328404.P10313287385917369599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) - 1

end

end A328404.P10313287385917369599

/-! ## A328404.P15337134114680352484

`2-(A007318(C(2, n))-A111972(A276086(n)))`
-/

namespace A328404.P15337134114680352484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A111972 (A276086 n).toNat)

end

end A328404.P15337134114680352484

/-! ## A328404.P1347723202663732362

`A084558(A328843(n))`
-/

namespace A328404.P1347723202663732362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A328843 n).toNat

end

end A328404.P1347723202663732362

/-!
# A328405: The length of primorial base expansion (number of significant digits) of A276086(A276086(n)), where A276086(n) converts primorial base expansion of n into its prime product form.

The programs for A328405, there is no canonical definition to state claims against.
-/

/-! ## A328405.P18116412267762960515

`A328404(A276086(n))`
-/

namespace A328405.P18116412267762960515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A276086 n).toNat

end

end A328405.P18116412267762960515

/-! ## A328405.P1181560122293680498

`A328404(A351225(n)+n)`
-/

namespace A328405.P1181560122293680498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A351225 n + (n : ℤ)).toNat

end

end A328405.P1181560122293680498

/-! ## A328405.P14241711574837519631

`A328404(A373849(n)+A003415(n))`
-/

namespace A328405.P14241711574837519631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A373849 n + A003415 n).toNat

end

end A328405.P14241711574837519631

/-! ## A328405.P16785852957553334957

`A328404(A328580(n)+A328476(n))`
-/

namespace A328405.P16785852957553334957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A328580 n + A328476 n).toNat

end

end A328405.P16785852957553334957

/-! ## A328405.P11686141948428266776

`A328404(A328844(n)+A328843(n))`
-/

namespace A328405.P11686141948428266776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A328844 n + A328843 n).toNat

end

end A328405.P11686141948428266776

/-! ## A328405.P901769852373111528

`A328404(A358764(n)+A324895(n))`
-/

namespace A328405.P901769852373111528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A358764 n + A324895 n).toNat

end

end A328405.P901769852373111528

/-! ## A328405.P7857587964225312823

`A328404(A327860(n)-A342016(n))`
-/

namespace A328405.P7857587964225312823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A327860 n - A342016 n).toNat

end

end A328405.P7857587964225312823

/-! ## A328405.P13463956192201116008

`A328404(A328475(n)*A328580(n))`
-/

namespace A328405.P13463956192201116008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A328475 n * A328580 n).toNat

end

end A328405.P13463956192201116008

/-! ## A328405.P849388620601939684

`A328404(A328571(n)*A328572(n))`
-/

namespace A328405.P849388620601939684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A328571 n * A328572 n).toNat

end

end A328405.P849388620601939684

/-!
# A328406: The length of primorial base expansion (number of significant digits) of A276086(A276086(A276086(n))), where A276086(n) converts primorial base expansion of n into its prime product form.

The programs for A328406, there is no canonical definition to state claims against.
-/

/-! ## A328406.P14435868277349776052

`A328405(A276086(n))`
-/

namespace A328406.P14435868277349776052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328405 (A276086 n).toNat

end

end A328406.P14435868277349776052

/-! ## A328406.P1357222180229612223

`A328404(A276087(n))`
-/

namespace A328406.P1357222180229612223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A276087 n).toNat

end

end A328406.P1357222180229612223

/-! ## A328406.P1990654760294652008

`A328405(A351225(n)+n)`
-/

namespace A328406.P1990654760294652008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328405 (A351225 n + (n : ℤ)).toNat

end

end A328406.P1990654760294652008

/-! ## A328406.P8535008376600220084

`A328405(A373849(n)+A003415(n))`
-/

namespace A328406.P8535008376600220084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328405 (A373849 n + A003415 n).toNat

end

end A328406.P8535008376600220084

/-! ## A328406.P15804007260519891646

`A328405(A328580(n)+A328476(n))`
-/

namespace A328406.P15804007260519891646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328405 (A328580 n + A328476 n).toNat

end

end A328406.P15804007260519891646

/-! ## A328406.P12575953920683429548

`A328405(A328844(n)+A328843(n))`
-/

namespace A328406.P12575953920683429548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328405 (A328844 n + A328843 n).toNat

end

end A328406.P12575953920683429548

/-! ## A328406.P960052208627020718

`A328405(A327860(n)-A342016(n))`
-/

namespace A328406.P960052208627020718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328405 (A327860 n - A342016 n).toNat

end

end A328406.P960052208627020718

/-! ## A328406.P14117095661603086000

`A328405(A328475(n)*A328580(n))`
-/

namespace A328406.P14117095661603086000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328405 (A328475 n * A328580 n).toNat

end

end A328406.P14117095661603086000

/-! ## A328406.P700731663979858655

`A328405(A328571(n)*A328572(n))`
-/

namespace A328406.P700731663979858655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328405 (A328571 n * A328572 n).toNat

end

end A328406.P700731663979858655

/-! ## A328406.P5225398389089676485

`A328405(A324580(n)/A028310(n))`
-/

namespace A328406.P5225398389089676485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328405 (SequenceMachineLib.roundAway ((A324580 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A328406.P5225398389089676485

/-!
# A328407: G.f. A(x) satisfies: A(x) = A(x^2) + x * (1 + x) / (1 - x)^3.

The programs for A328407, the canonical program `A328407.P14348967757254063720` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328407 has offset 1).

The definition of A328407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328407.P16453977879759307714

`A000265(n+1)²*A296306(n+1)`
-/

namespace A328407.P16453977879759307714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) ^ 2 * A296306 (n + 1)

end

end A328407.P16453977879759307714

namespace A328407

/-- `A000265(n+1)²*A296306(n+1)` -/
def P16453977879759307714.Spec : Prop :=
  ∀ n, P16453977879759307714.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P14348967757254063720

`∑{d}[A006519(n+1), A000290((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A328407

/-- `∑{d}[A006519(n+1), A000290((n+1)/#)]` -/
def P14348967757254063720.Spec : Prop :=
  ∀ n, P14348967757254063720.a n = A328407 (n + 1)

theorem P14348967757254063720.correct : P14348967757254063720.Spec := by
  intro n
  simp only [A328407, Nat.add_sub_cancel]

end A328407

/-! ## A328407.P18439690325053436387

`∑{d}[A006519(n+1), (#*A000265(n+1))²]`
-/

namespace A328407.P18439690325053436387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) * A000265 (n + 1)) ^ 2

end

end A328407.P18439690325053436387

namespace A328407

/-- `∑{d}[A006519(n+1), (#*A000265(n+1))²]` -/
def P18439690325053436387.Spec : Prop :=
  ∀ n, P18439690325053436387.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P9938511943911776339

`∑{d}[A118827(n+1), (#*A000265(n+1))²]`
-/

namespace A328407.P9938511943911776339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) * A000265 (n + 1)) ^ 2

end

end A328407.P9938511943911776339

namespace A328407

/-- `∑{d}[A118827(n+1), (#*A000265(n+1))²]` -/
def P9938511943911776339.Spec : Prop :=
  ∀ n, P9938511943911776339.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P4424590336298323745

`∑{d}[A000079(A007814(n+1)), ((n+1)/#)²]`
-/

namespace A328407.P4424590336298323745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 2

end

end A328407.P4424590336298323745

namespace A328407

/-- `∑{d}[A000079(A007814(n+1)), ((n+1)/#)²]` -/
def P4424590336298323745.Spec : Prop :=
  ∀ n, P4424590336298323745.a n = (A328407 (n + 1) : ℚ)

end A328407

/-! ## A328407.P9488663058395866702

`∑{d}[n+1, A001511(#)*A007434((n+1)/#)]`
-/

namespace A328407.P9488663058395866702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P9488663058395866702

namespace A328407

/-- `∑{d}[n+1, A001511(#)*A007434((n+1)/#)]` -/
def P9488663058395866702.Spec : Prop :=
  ∀ n, P9488663058395866702.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P17315699028393384189

`∑{d}[n+1, A001157(#)*A087003((n+1)/#)]`
-/

namespace A328407.P17315699028393384189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P17315699028393384189

namespace A328407

/-- `∑{d}[n+1, A001157(#)*A087003((n+1)/#)]` -/
def P17315699028393384189.Spec : Prop :=
  ∀ n, P17315699028393384189.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P12013735034009124528

`∑{d}[n+1, A057660(#)*A062570((n+1)/#)]`
-/

namespace A328407.P12013735034009124528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P12013735034009124528

namespace A328407

/-- `∑{d}[n+1, A057660(#)*A062570((n+1)/#)]` -/
def P12013735034009124528.Spec : Prop :=
  ∀ n, P12013735034009124528.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P6932462099688323000

`∑{d}[n+1, A002618(#)*A129527((n+1)/#)]`
-/

namespace A328407.P6932462099688323000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A129527 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P6932462099688323000

namespace A328407

/-- `∑{d}[n+1, A002618(#)*A129527((n+1)/#)]` -/
def P6932462099688323000.Spec : Prop :=
  ∀ n, P6932462099688323000.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P2864283918989819196

`∑{d}[n+1, A000290(#)*A209229((n+1)/#)]`
-/

namespace A328407.P2864283918989819196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P2864283918989819196

namespace A328407

/-- `∑{d}[n+1, A000290(#)*A209229((n+1)/#)]` -/
def P2864283918989819196.Spec : Prop :=
  ∀ n, P2864283918989819196.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P1799537932106008179

`∑{d}[n+1, A076577(#)*A209635((n+1)/#)]`
-/

namespace A328407.P1799537932106008179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076577 d * A209635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P1799537932106008179

namespace A328407

/-- `∑{d}[n+1, A076577(#)*A209635((n+1)/#)]` -/
def P1799537932106008179.Spec : Prop :=
  ∀ n, P1799537932106008179.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P8089437439527320332

`∑{d}[n+1, A001001(#)*A326938((n+1)/#)]`
-/

namespace A328407.P8089437439527320332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P8089437439527320332

namespace A328407

/-- `∑{d}[n+1, A001001(#)*A326938((n+1)/#)]` -/
def P8089437439527320332.Spec : Prop :=
  ∀ n, P8089437439527320332.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P8167976962759117728

`∑{d}[n+1, A007433(#)*A327276((n+1)/#)]`
-/

namespace A328407.P8167976962759117728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P8167976962759117728

namespace A328407

/-- `∑{d}[n+1, A007433(#)*A327276((n+1)/#)]` -/
def P8167976962759117728.Spec : Prop :=
  ∀ n, P8167976962759117728.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P13024105592989351265

`∑{d}[n+1, A064987(#)*A349341((n+1)/#)]`
-/

namespace A328407.P13024105592989351265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P13024105592989351265

namespace A328407

/-- `∑{d}[n+1, A064987(#)*A349341((n+1)/#)]` -/
def P13024105592989351265.Spec : Prop :=
  ∀ n, P13024105592989351265.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P2425042042663159737

`∑{d}[n+1, A129628(#)*A321322((n+1)/#)]`
-/

namespace A328407.P2425042042663159737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P2425042042663159737

namespace A328407

/-- `∑{d}[n+1, A129628(#)*A321322((n+1)/#)]` -/
def P2425042042663159737.Spec : Prop :=
  ∀ n, P2425042042663159737.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P5154930939855751123

`∑{d}[n+1, A340850(#)*A344372((n+1)/#)]`
-/

namespace A328407.P5154930939855751123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A340850 d * A344372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P5154930939855751123

namespace A328407

/-- `∑{d}[n+1, A340850(#)*A344372((n+1)/#)]` -/
def P5154930939855751123.Spec : Prop :=
  ∀ n, P5154930939855751123.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P8678484131972011457

`A338045(n+1)+A338045(n+1)-A129527(n+1)`
-/

namespace A328407.P8678484131972011457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338045 (n + 1) + (A338045 (n + 1) - A129527 (n + 1))

end

end A328407.P8678484131972011457

namespace A328407

/-- `A338045(n+1)+A338045(n+1)-A129527(n+1)` -/
def P8678484131972011457.Spec : Prop :=
  ∀ n, P8678484131972011457.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P11892364168974750730

`A135013(2*(n+1))-A135013(A000265(n+1))`
-/

namespace A328407.P11892364168974750730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135013 (2 * (n + 1)) - A135013 (A000265 (n + 1)).toNat

end

end A328407.P11892364168974750730

namespace A328407

/-- `A135013(2*(n+1))-A135013(A000265(n+1))` -/
def P11892364168974750730.Spec : Prop :=
  ∀ n, P11892364168974750730.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P9843174575200316445

`A000265(n+1)*A000265(A000265(n+1)*A296306(n+1))`
-/

namespace A328407.P9843174575200316445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A000265 (A000265 (n + 1) * A296306 (n + 1)).toNat

end

end A328407.P9843174575200316445

namespace A328407

/-- `A000265(n+1)*A000265(A000265(n+1)*A296306(n+1))` -/
def P9843174575200316445.Spec : Prop :=
  ∀ n, P9843174575200316445.a n = A328407 (n + 1)

end A328407

/-! ## A328407.P7895253953779137413

`A373188((n+1)²)`
-/

namespace A328407.P7895253953779137413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373188 ((n + 1) ^ 2)

end

end A328407.P7895253953779137413

namespace A328407

/-- `A373188((n+1)²)` -/
def P7895253953779137413.Spec : Prop :=
  ∀ n, P7895253953779137413.a n = A328407 (n + 1)

end A328407

/-!
# A328408: G.f. A(x) satisfies: A(x) = A(x^2) + x * (1 + 4*x + x^2) / (1 - x)^4.

The programs for A328408, the canonical program `A328408.P6379189173016059792` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328408 has offset 1).

The definition of A328408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328408.P14379757580318887952

`∑{d}[2^val(n+1, 2), ((n+1)/#)^3]`
-/

namespace A328408.P14379757580318887952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ 3

end

end A328408.P14379757580318887952

namespace A328408

/-- `∑{d}[2^val(n+1, 2), ((n+1)/#)^3]` -/
def P14379757580318887952.Spec : Prop :=
  ∀ n, P14379757580318887952.a n = (A328408 (n + 1) : ℚ)

end A328408

/-! ## A328408.P12019558655966538131

`∑{d}[Δ[A003188(n)], ((n+1)/#)^3]`
-/

namespace A328408.P12019558655966538131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 3

end

end A328408.P12019558655966538131

namespace A328408

/-- `∑{d}[Δ[A003188(n)], ((n+1)/#)^3]` -/
def P12019558655966538131.Spec : Prop :=
  ∀ n, P12019558655966538131.a n = (A328408 (n + 1) : ℚ)

end A328408

/-! ## A328408.P1386651865366679516

`∑{d}[A006519(n+1), ((n+1)/#)^3]`
-/

namespace A328408.P1386651865366679516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 3

end

end A328408.P1386651865366679516

namespace A328408

/-- `∑{d}[A006519(n+1), ((n+1)/#)^3]` -/
def P1386651865366679516.Spec : Prop :=
  ∀ n, P1386651865366679516.a n = (A328408 (n + 1) : ℚ)

end A328408

/-! ## A328408.P6379189173016059792

`∑{d}[n+1, A001511(#)*A059376((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328408

/-- `∑{d}[n+1, A001511(#)*A059376((n+1)/#)]` -/
def P6379189173016059792.Spec : Prop :=
  ∀ n, P6379189173016059792.a n = A328408 (n + 1)

theorem P6379189173016059792.correct : P6379189173016059792.Spec := by
  intro n
  simp only [A328408, Nat.add_sub_cancel]

end A328408

/-! ## A328408.P2344896478565658702

`∑{d}[n+1, A001158(#)*A087003((n+1)/#)]`
-/

namespace A328408.P2344896478565658702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328408.P2344896478565658702

namespace A328408

/-- `∑{d}[n+1, A001158(#)*A087003((n+1)/#)]` -/
def P2344896478565658702.Spec : Prop :=
  ∀ n, P2344896478565658702.a n = A328408 (n + 1)

end A328408

/-! ## A328408.P9129753274090740157

`∑{d}[n+1, A000265(#)*A208895((n+1)/#)]`
-/

namespace A328408.P9129753274090740157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A208895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328408.P9129753274090740157

namespace A328408

/-- `∑{d}[n+1, A000265(#)*A208895((n+1)/#)]` -/
def P9129753274090740157.Spec : Prop :=
  ∀ n, P9129753274090740157.a n = A328408 (n + 1)

end A328408

/-! ## A328408.P729263717521596313

`∑{d}[n+1, A027847(#)*A326938((n+1)/#)]`
-/

namespace A328408.P729263717521596313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027847 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328408.P729263717521596313

namespace A328408

/-- `∑{d}[n+1, A027847(#)*A326938((n+1)/#)]` -/
def P729263717521596313.Spec : Prop :=
  ∀ n, P729263717521596313.a n = A328408 (n + 1)

end A328408

/-! ## A328408.P1660125739979798016

`∑{d}[n+1, A053191(#)*A328407((n+1)/#)]`
-/

namespace A328408.P1660125739979798016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A328407 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328408.P1660125739979798016

namespace A328408

/-- `∑{d}[n+1, A053191(#)*A328407((n+1)/#)]` -/
def P1660125739979798016.Spec : Prop :=
  ∀ n, P1660125739979798016.a n = A328408 (n + 1)

end A328408

/-! ## A328408.P14779990128387202862

`∑{d}[n+1, A062570(#)*A350156((n+1)/#)]`
-/

namespace A328408.P14779990128387202862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328408.P14779990128387202862

namespace A328408

/-- `∑{d}[n+1, A062570(#)*A350156((n+1)/#)]` -/
def P14779990128387202862.Spec : Prop :=
  ∀ n, P14779990128387202862.a n = A328408 (n + 1)

end A328408

/-! ## A328408.P7417065784840895669

`∑{d}[n+1, A321140(#)*A327276((n+1)/#)]`
-/

namespace A328408.P7417065784840895669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321140 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328408.P7417065784840895669

namespace A328408

/-- `∑{d}[n+1, A321140(#)*A327276((n+1)/#)]` -/
def P7417065784840895669.Spec : Prop :=
  ∀ n, P7417065784840895669.a n = A328408 (n + 1)

end A328408

/-! ## A328408.P8170530558382529006

`∑{d}[n+1, A328259(#)*A349341((n+1)/#)]`
-/

namespace A328408.P8170530558382529006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328259 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328408.P8170530558382529006

namespace A328408

/-- `∑{d}[n+1, A328259(#)*A349341((n+1)/#)]` -/
def P8170530558382529006.Spec : Prop :=
  ∀ n, P8170530558382529006.a n = A328408 (n + 1)

end A328408

/-! ## A328408.P14556029490681524899

`Δ[a(floor(n/2))+∑[n]²]` with `a(0)=0`
-/

namespace A328408.P14556029490681524899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A328408.P14556029490681524899

namespace A328408

/-- `Δ[a(floor(n/2))+∑[n]²]` -/
def P14556029490681524899.Spec : Prop :=
  ∀ n, P14556029490681524899.a n = A328408 (n + 1)

end A328408

/-! ## A328408.P4829246359327818215

`-Δ[a(floor(n/2))-A000537(n)]` with `a(0)=0`
-/

namespace A328408.P4829246359327818215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A328408.P4829246359327818215

namespace A328408

/-- `-Δ[a(floor(n/2))-A000537(n)]` -/
def P4829246359327818215.Spec : Prop :=
  ∀ n, P4829246359327818215.a n = A328408 (n + 1)

end A328408

/-!
# A328409: Number of inversion sequences of length n where all consecutive subsequences i,j,k satisfy i > j < k or i <= j >= k.

The programs for A328409, there is no canonical definition to state claims against.
-/

/-! ## A328409.P17358841305817238305

`A023193(A333018(n)+A084635(n))`
-/

namespace A328409.P17358841305817238305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A333018 n + A084635 n).toNat

end

end A328409.P17358841305817238305

/-! ## A328409.P10338022761838783141

`A023193(A333018(n)+A257300(n))`
-/

namespace A328409.P10338022761838783141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A333018 n + A257300 n).toNat

end

end A328409.P10338022761838783141

/-!
# A328413: Numbers k such that (Z/mZ)* = C_2 X C_(2k) has solutions m, where (Z/mZ)* is the multiplicative group of integers modulo m.

The programs for A328413, there is no canonical definition to state claims against.
-/

/-! ## A328413.P1755087286340267530

`lt[0, A328412(n+1)]+1`
-/

namespace A328413.P1755087286340267530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328413.P1755087286340267530

/-! ## A328413.P72667381792452608

`lt[0, n*A328412(A028310(n))]`
-/

namespace A328413.P72667381792452608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328412 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328413.P72667381792452608

/-! ## A328413.P9930014225742766930

`eq[1, A134323(A328412(n+1)+2)²]+1`
-/

namespace A328413.P9930014225742766930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (A328412 (n + 1) + 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328413.P9930014225742766930

/-! ## A328413.P13919948764911566470

`lt[2, 2*n*A328412(abs(A000038(n)-n))]`
-/

namespace A328413.P13919948764911566470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A328412 |A000038 n - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328413.P13919948764911566470

/-! ## A328413.P12161615103615226406

`eq[0, A000010(A328412(n+1)+2)%2]+1`
-/

namespace A328413.P12161615103615226406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A328412 (n + 1) + 2).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328413.P12161615103615226406

/-! ## A328413.P11916229914233533450

`lt[A000038(n), A328412(A028310(n))]`
-/

namespace A328413.P11916229914233533450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328413.P11916229914233533450

/-!
# A328414: Numbers k such that (Z/mZ)* = C_2 X C_(2k) has no solutions m, where (Z/mZ)* is the multiplicative group of integers modulo m.

The programs for A328414, there is no canonical definition to state claims against.
-/

/-! ## A328414.P2032940475377341765

`eq[0, A328412(n+1)]+1`
-/

namespace A328414.P2032940475377341765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328414.P2032940475377341765

/-! ## A328414.P16778369545924360772

`lt[A328412(n+2), 1]+2`
-/

namespace A328414.P16778369545924360772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A328414.P16778369545924360772

/-! ## A328414.P12954196922860146402

`lt[A328412(or(n, and(1, n)^n)), 1]`
-/

namespace A328414.P12954196922860146402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (Nat.lor n (Nat.land 1 n ^ n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328414.P12954196922860146402

/-! ## A328414.P10389693789581492510

`lt[A328412(n*a(((-1)^n)²-1)), 1]` with `a(0)=1`
-/

namespace A328414.P10389693789581492510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A328412 ((n : ℤ) * f1 (((-1) ^ n) ^ 2 - 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328414.P10389693789581492510

/-! ## A328414.P7116150755648563345

`eq[0, A328412(A028310(n))]`
-/

namespace A328414.P7116150755648563345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328414.P7116150755648563345

/-! ## A328414.P3707915405186322935

`A020725(eq[0, A328412(n+1)])`
-/

namespace A328414.P3707915405186322935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328414.P3707915405186322935

/-! ## A328414.P14918985988801095306

`A065475(eq[0, A328412(n+1)])`
-/

namespace A328414.P14918985988801095306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328414.P14918985988801095306

/-! ## A328414.P5214731066212804934

`A153152(eq[0, A328412(n+1)])`
-/

namespace A328414.P5214731066212804934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328414.P5214731066212804934

/-! ## A328414.P15680474424830921396

`eq[0, A328412(A233583(n+1))]`
-/

namespace A328414.P15680474424830921396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328414.P15680474424830921396

/-!
# A328415: Numbers k such that (Z/mZ)* = C_2 X C_(2k) has exactly one solution, where (Z/mZ)* is the multiplicative group of integers modulo m.

The programs for A328415, there is no canonical definition to state claims against.
-/

/-! ## A328415.P6537689117491120152

`eq[1, A328412(A028310(n))]`
-/

namespace A328415.P6537689117491120152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328415.P6537689117491120152

/-! ## A328415.P8933299005997677167

`A065475(eq[1, A328412(n+1)])`
-/

namespace A328415.P8933299005997677167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328415.P8933299005997677167

/-! ## A328415.P17557862844708803641

`record[A327502(A328909(n+4))]`
-/

namespace A328415.P17557862844708803641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327502 (A328909 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328415.P17557862844708803641

/-! ## A328415.P2753021250089977170

`record[A119318(Δ[A242417(3*n+2)])]`
-/

namespace A328415.P2753021250089977170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328415.P2753021250089977170

/-!
# A328417: Numbers k such that A328412(k) sets a new record; numbers k such that (Z/mZ)* = C_2 X C_(2k) has more solutions for m than all k' < k, where (Z/mZ)* is the multiplicative group of integers modulo m.

The programs for A328417, there is no canonical definition to state claims against.
-/

/-! ## A328417.P8894914762361182029

`A328416(A328418(n+1))`
-/

namespace A328417.P8894914762361182029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328416 (A328418 (n + 1)).toNat

end

end A328417.P8894914762361182029

/-! ## A328417.P233864934035741696

`A328416(record[A328412(n+1)])`
-/

namespace A328417.P233864934035741696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328417.P233864934035741696

/-!
# A328419: Number of unlabeled minimally rigid graphs in 3D on n vertices.

The programs for A328419, there is no canonical definition to state claims against.
-/

/-! ## A328419.P12599590465331611619

`A333755((2^n+3)*2*∑[char[or(n, n+1)+2+n]])`
-/

namespace A328419.P12599590465331611619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 ((2 ^ n + 3) * (2 * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A328419.P12599590465331611619

/-! ## A328419.P7395978667457434956

`A020902(A079227(n))`
-/

namespace A328419.P7395978667457434956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020902 (A079227 n).toNat

end

end A328419.P7395978667457434956

/-!
# A328420: Numbers k such that A317993(k) sets a new record; numbers k such that (Z/mZ)* = (Z/kZ)* has more solutions for m than all k' < k, where (Z/mZ)* is the multiplicative group of integers modulo m.

The programs for A328420, there is no canonical definition to state claims against.
-/

/-! ## A328420.P1972445896739015721

`A303712(A328421(n+1))`
-/

namespace A328420.P1972445896739015721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303712 (A328421 (n + 1)).toNat

end

end A328420.P1972445896739015721

/-! ## A328420.P12983742006826116957

`A303712(record[A317993(n+1)])`
-/

namespace A328420.P12983742006826116957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303712 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328420.P12983742006826116957

/-! ## A328420.P3072395225989346744

`A303712(A166087(n)+2)`
-/

namespace A328420.P3072395225989346744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303712 (A166087 n + 2).toNat

end

end A328420.P3072395225989346744

/-!
# A328421: Records in A317993.

The programs for A328421, there is no canonical definition to state claims against.
-/

/-! ## A328421.P2510224691113441122

`A317993(A328420(n+1))`
-/

namespace A328421.P2510224691113441122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317993 (A328420 (n + 1)).toNat

end

end A328421.P2510224691113441122

/-! ## A328421.P12326601600051509096

`record[A317993(A288631(n+1))]`
-/

namespace A328421.P12326601600051509096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317993 (A288631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328421.P12326601600051509096

/-! ## A328421.P4747796206903407170

`record[A317993(A008642(n))]`
-/

namespace A328421.P4747796206903407170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317993 (A008642 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328421.P4747796206903407170

/-! ## A328421.P11551248814675485834

`A124771(A032298(n))+n`
-/

namespace A328421.P11551248814675485834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 (A032298 n).toNat + (n : ℤ)

end

end A328421.P11551248814675485834

/-! ## A328421.P4220575175308539563

`record[A317993(A278103(n+1))]`
-/

namespace A328421.P4220575175308539563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317993 (A278103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328421.P4220575175308539563

/-!
# A328422: Number of paths from 2 to n via maps of the form x -> x + x^j, where j is a nonnegative integer.

The programs for A328422, there is no canonical definition to state claims against.
-/

/-! ## A328422.P2039264225129807329

`A328423(∑[char[2*n]])`
-/

namespace A328422.P2039264225129807329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328423 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328422.P2039264225129807329

/-! ## A328422.P10275490553974714480

`or(A000007(n), A328423(A008619(n)))`
-/

namespace A328422.P10275490553974714480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A328423 (A008619 n).toNat)

end

end A328422.P10275490553974714480

/-! ## A328422.P10590205886838604180

`A328423(A008619(n))%(2*A006330(n))`
-/

namespace A328422.P10590205886838604180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328423 (A008619 n).toNat) (2 * A006330 n)

end

end A328422.P10590205886838604180

/-! ## A328422.P4080182779558986503

`A328423(A008619(n))%∑[A000051(n)]`
-/

namespace A328422.P4080182779558986503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328423 (A008619 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328422.P4080182779558986503

/-! ## A328422.P874945105283345710

`and(A000225(n+1), A328423(A008619(n)))`
-/

namespace A328422.P874945105283345710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A328423 (A008619 n).toNat)

end

end A328422.P874945105283345710

/-!
# A328423: Numbers in A328422.

The programs for A328423, there is no canonical definition to state claims against.
-/

/-! ## A328423.P7525798625928828250

`A328422(2*(n+1))`
-/

namespace A328423.P7525798625928828250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328422 (2 * (n + 1))

end

end A328423.P7525798625928828250

/-! ## A328423.P14670278279025973829

`record[A328422(n+2)-A000035(n)]`
-/

namespace A328423.P14670278279025973829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328422 (n + 2) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328423.P14670278279025973829

/-! ## A328423.P16415675774670375769

`record[A328422(n+2)/A033999(n)]`
-/

namespace A328423.P16415675774670375769
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328422 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328423.P16415675774670375769

/-! ## A328423.P12440689160292196193

`record[A328422(n+2)-A007814(n+1)]`
-/

namespace A328423.P12440689160292196193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328422 (n + 2) - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328423.P12440689160292196193

/-! ## A328423.P17268124314304154213

`record[A328422(A286544(n)+1)]`
-/

namespace A328423.P17268124314304154213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328422 (A286544 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328423.P17268124314304154213

/-! ## A328423.P16874371838529321855

`record[A328422(A056239(n+1)+2)]`
-/

namespace A328423.P16874371838529321855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328422 (A056239 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328423.P16874371838529321855

/-! ## A328423.P11719328427181953902

`record[A328422(A056239(n+5))]`
-/

namespace A328423.P11719328427181953902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328422 (A056239 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328423.P11719328427181953902

/-! ## A328423.P4435505719774101571

`record[A328422(n+2)-A169765(n+4)]`
-/

namespace A328423.P4435505719774101571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328422 (n + 2) - A169765 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328423.P4435505719774101571

/-! ## A328423.P6111302284386081052

`record[A328422(n+2)%A024743(n+1)]`
-/

namespace A328423.P6111302284386081052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328422 (n + 2)) (A024743 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328423.P6111302284386081052

/-!
# A328425: Number of inversion sequences of length n where all consecutive subsequences i,j,k satisfy i < j > k or i >= j <= k.

The programs for A328425, there is no canonical definition to state claims against.
-/

/-! ## A328425.P9318707456776619601

`A307482(-∏[n-C(2, n+2)])+A158092(n+1)`
-/

namespace A328425.P9318707456776619601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307482 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat + A158092 (n + 1)

end

end A328425.P9318707456776619601

/-! ## A328425.P652665829754815752

`A307482(A000142(n))+A158092(n+1)`
-/

namespace A328425.P652665829754815752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307482 (A000142 n).toNat + A158092 (n + 1)

end

end A328425.P652665829754815752

/-! ## A328425.P2143751626252183885

`A307482(A276843(n))+A158092(n+1)`
-/

namespace A328425.P2143751626252183885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307482 (A276843 n).toNat + A158092 (n + 1)

end

end A328425.P2143751626252183885

/-! ## A328425.P8183691283123727697

`A307482(A260965(n+2)+A000142(n))`
-/

namespace A328425.P8183691283123727697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307482 (A260965 (n + 2) + A000142 n).toNat

end

end A328425.P8183691283123727697

/-!
# A328426: Number of 2n-step walks on cubic lattice starting at (0,0,0), ending at (0,n,n) and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1).

The programs for A328426, there is no canonical definition to state claims against.
-/

/-! ## A328426.P15265113433273800409

`A328347(∑[4*n])`
-/

namespace A328426.P15265113433273800409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328426.P15265113433273800409

/-! ## A328426.P6523933849345751136

`record[gcd(A037012(n), A328347(n))]`
-/

namespace A328426.P6523933849345751136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A328347 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328426.P6523933849345751136

/-! ## A328426.P12640033991159522658

`lcm(n+1, A328347(A046092(n)))`
-/

namespace A328426.P12640033991159522658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A328347 (A046092 n).toNat)

end

end A328426.P12640033991159522658

/-! ## A328426.P8251016082087757437

`record[A328347(A007590(A004442(n)))]`
-/

namespace A328426.P8251016082087757437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328347 (A007590 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328426.P8251016082087757437

/-! ## A328426.P4831886194104066439

`record[A328347(A007590(A198954(n)))]`
-/

namespace A328426.P4831886194104066439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328347 (A007590 (A198954 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328426.P4831886194104066439

/-!
# A328427: Number of 2n-step walks on cubic lattice starting at (0,0,0), ending at (n,y,z), remaining in the first (nonnegative) octant and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1).

The programs for A328427, there is no canonical definition to state claims against.
-/

/-! ## A328427.P8226365664699575399

`A328297(∑[4*n])`
-/

namespace A328427.P8226365664699575399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328427.P8226365664699575399

/-! ## A328427.P7271074854895000466

`record[A003982(n)*A328297(n)]`
-/

namespace A328427.P7271074854895000466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A328297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328427.P7271074854895000466

/-! ## A328427.P13526813287545719171

`record[gcd(A008482(n), A328297(n))]`
-/

namespace A328427.P13526813287545719171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A328297 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328427.P13526813287545719171

/-! ## A328427.P2413007789652005293

`lcm(A033999(n), A328297(A046092(n)))`
-/

namespace A328427.P2413007789652005293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A328297 (A046092 n).toNat)

end

end A328427.P2413007789652005293

/-! ## A328427.P18217161487218934505

`or(A000007(n), A328297(A046092(n)))`
-/

namespace A328427.P18217161487218934505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A328297 (A046092 n).toNat)

end

end A328427.P18217161487218934505

/-!
# A328428: Numbers that appear twice consecutively in the Van Eck Sequence, in order of appearance.

The programs for A328428, there is no canonical definition to state claims against.
-/

/-! ## A328428.P10564315438905340922

`A181391(A171951(n+1)-1)`
-/

namespace A328428.P10564315438905340922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A171951 (n + 1) - 1).toNat

end

end A328428.P10564315438905340922

/-! ## A328428.P11274040436265727063

`A181391(eq[1, A181391(n+1)])`
-/

namespace A328428.P11274040436265727063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328428.P11274040436265727063

/-! ## A328428.P12389603749948796945

`1-A171958(A171951(n+1)-1)`
-/

namespace A328428.P12389603749948796945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171958 (A171951 (n + 1) - 1).toNat

end

end A328428.P12389603749948796945

/-! ## A328428.P10225573007777281818

`A181391(record[gcd(n+2, A171958(n+1))])`
-/

namespace A328428.P10225573007777281818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A171958 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A328428.P10225573007777281818

/-! ## A328428.P12412076887934292722

`A337980(A171951(n+1))+A057428(n)`
-/

namespace A328428.P12412076887934292722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A171951 (n + 1)).toNat + A057428 n

end

end A328428.P12412076887934292722

/-! ## A328428.P15722241069549123716

`A337980(A171951(n+1))-A057427(n)`
-/

namespace A328428.P15722241069549123716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A171951 (n + 1)).toNat - A057427 n

end

end A328428.P15722241069549123716

/-! ## A328428.P11177670011067671217

`A337980(A171951(n+1))-A178334(n)`
-/

namespace A328428.P11177670011067671217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A171951 (n + 1)).toNat - A178334 n

end

end A328428.P11177670011067671217

/-! ## A328428.P14550464377118596113

`A337980(A171951(n+1))-char[A007306(n)]`
-/

namespace A328428.P14550464377118596113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A171951 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328428.P14550464377118596113

/-! ## A328428.P4654971377072350497

`A337980(A171951(n+1))-char[A052938(n)]`
-/

namespace A328428.P4654971377072350497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A171951 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328428.P4654971377072350497

/-! ## A328428.P5978281781897037212

`A337980(A171951(n+1))-char[A262519(n)]`
-/

namespace A328428.P5978281781897037212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A171951 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328428.P5978281781897037212

/-! ## A328428.P1784375215102580930

`A337980(A171951(n+1))+A000007(n)-1`
-/

namespace A328428.P1784375215102580930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A171951 (n + 1)).toNat + (A000007 n - 1)

end

end A328428.P1784375215102580930

/-! ## A328428.P647347966435121792

`A337980(A171951(n+1))-ceil(n/A000041(n))`
-/

namespace A328428.P647347966435121792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A171951 (n + 1)).toNat - ⌈(n : ℚ) / (A000041 n : ℚ)⌉

end

end A328428.P647347966435121792

/-! ## A328428.P8553399050672625365

`A337980(A171951(n+1))-A000040(n+1)%2`
-/

namespace A328428.P8553399050672625365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A171951 (n + 1)).toNat - Int.tmod (A000040 (n + 1)) 2

end

end A328428.P8553399050672625365

/-! ## A328428.P1630085092468485165

`∑{e}[A006530(n+1), A337980(A171951(n+1))-#]`
-/

namespace A328428.P1630085092468485165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A337980 (A171951 (n + 1)).toNat - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A328428.P1630085092468485165

/-! ## A328428.P12196645709333247168

`A337980(A171951(n+1))-A000045(n²%(n+1))`
-/

namespace A328428.P12196645709333247168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A171951 (n + 1)).toNat - A000045 (n ^ 2 % (n + 1))

end

end A328428.P12196645709333247168

/-!
# A328429: Number of inversion sequences of length n avoiding the consecutive patterns 012, 101, 102, and 201.

The programs for A328429, there is no canonical definition to state claims against.
-/

/-! ## A328429.P13578493552197336868

`Δ[A328358(n+1)]/(n+1)`
-/

namespace A328429.P13578493552197336868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328358 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A328429.P13578493552197336868

/-! ## A328429.P15009364218739899035

`A089859(floor(n/sqrt(8))+or(1, 2^n-1))`
-/

namespace A328429.P15009364218739899035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (⌊(n : ℝ) / Real.sqrt (8 : ℝ)⌋ + Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat

end

end A328429.P15009364218739899035

/-! ## A328429.P16047199211341901665

`A106432(A149448(n))`
-/

namespace A328429.P16047199211341901665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A149448 n).toNat

end

end A328429.P16047199211341901665

/-!
# A328431: Number of inversion sequences of length n avoiding the consecutive patterns 010, 021, 120, and 210.

The programs for A328431, there is no canonical definition to state claims against.
-/

/-! ## A328431.P2626417394192579287

`A028310(Δ[A328434(n)]/A028310(n))`
-/

namespace A328431.P2626417394192579287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A328431.P2626417394192579287

/-! ## A328431.P5556625134087125062

`A360052(n)+A014082(A001096(n))`
-/

namespace A328431.P5556625134087125062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360052 n + A014082 (A001096 n).toNat

end

end A328431.P5556625134087125062

/-! ## A328431.P4848179965658023536

`A360052(n)+A097795(A027432(n))`
-/

namespace A328431.P4848179965658023536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360052 n + A097795 (A027432 n).toNat

end

end A328431.P4848179965658023536

/-! ## A328431.P11705321414603638668

`A360052(n)+A086079(A060103(n))`
-/

namespace A328431.P11705321414603638668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360052 n + A086079 (A060103 n).toNat

end

end A328431.P11705321414603638668

/-!
# A328432: Number of inversion sequences of length n avoiding the consecutive patterns 010, 021, and 120.

The programs for A328432, there is no canonical definition to state claims against.
-/

/-! ## A328432.P14225265464727775808

`A022493(n)-A078431(A068041(n))`
-/

namespace A328432.P14225265464727775808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022493 n - A078431 (A068041 n).toNat

end

end A328432.P14225265464727775808

/-! ## A328432.P17476503345197283195

`A022493(n)-A210717(A005043(n))`
-/

namespace A328432.P17476503345197283195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022493 n - A210717 (A005043 n).toNat

end

end A328432.P17476503345197283195

/-! ## A328432.P11048406718000790187

`A022493(n)-A210717(A002215(n+1))`
-/

namespace A328432.P11048406718000790187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022493 n - A210717 (A002215 (n + 1)).toNat

end

end A328432.P11048406718000790187

/-! ## A328432.P3418784211877401260

`A175579(∑[n]+1)-A210717(A005043(n))`
-/

namespace A328432.P3418784211877401260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A210717 (A005043 n).toNat

end

end A328432.P3418784211877401260

/-!
# A328433: Number of inversion sequences of length n avoiding the consecutive patterns 011 and 012.

The programs for A328433, there is no canonical definition to state claims against.
-/

/-! ## A328433.P15458938807470317129

`A366142(A058585(n))`
-/

namespace A328433.P15458938807470317129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366142 (A058585 n).toNat

end

end A328433.P15458938807470317129

/-! ## A328433.P7362866085612738630

`A383110(A059019(n))`
-/

namespace A328433.P7362866085612738630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (A059019 n).toNat

end

end A328433.P7362866085612738630

/-! ## A328433.P2280092474949706751

`A383110(A092920(n))`
-/

namespace A328433.P2280092474949706751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (A092920 n).toNat

end

end A328433.P2280092474949706751

/-!
# A328434: Number of inversion sequences of length n avoiding the consecutive patterns 101, 102, 201, and 210.

The programs for A328434, there is no canonical definition to state claims against.
-/

/-! ## A328434.P10838325122587921543

`∑[abs(1-n)*A328431(abs(1-n))]`
-/

namespace A328434.P10838325122587921543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A328431 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328434.P10838325122587921543

/-! ## A328434.P5361363071887338583

`A054404(A149472(n))+1`
-/

namespace A328434.P5361363071887338583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A149472 n).toNat + 1

end

end A328434.P5361363071887338583

/-! ## A328434.P4914574031666460456

`A340763(A007226(n))+1`
-/

namespace A328434.P4914574031666460456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A007226 n).toNat + 1

end

end A328434.P4914574031666460456

/-!
# A328435: Number of inversion sequences of length n avoiding the consecutive patterns 101, 102, and 201.

The programs for A328435, there is no canonical definition to state claims against.
-/

/-! ## A328435.P1246158111046715879

`A387141(A196018(n+1))`
-/

namespace A328435.P1246158111046715879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A196018 (n + 1)).toNat

end

end A328435.P1246158111046715879

/-! ## A328435.P10210620282980033547

`A061017(A331684(∑[∑{d}[n+1, (#+n)%2]]))`
-/

namespace A328435.P10210620282980033547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d + n) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A331684 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328435.P10210620282980033547

/-! ## A328435.P15073965711965841482

`A034973(A148116(n)+A122951(n))`
-/

namespace A328435.P15073965711965841482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A148116 n + A122951 n).toNat

end

end A328435.P15073965711965841482

/-!
# A328436: Number of inversion sequences of length n avoiding the consecutive patterns 000 and 001.

The programs for A328436, there is no canonical definition to state claims against.
-/

/-! ## A328436.P3298527308505998516

`round(sqrt(A096061(n!)+1))`
-/

namespace A328436.P3298527308505998516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A096061 (Nat.factorial n) + 1 : ℝ))

end

end A328436.P3298527308505998516

/-! ## A328436.P17271904503726457782

`A339279(ceil(2^(n-1)))-floor(n/3)`
-/

namespace A328436.P17271904503726457782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339279 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ⌊(n : ℚ) / 3⌋

end

end A328436.P17271904503726457782

/-! ## A328436.P9664106851210338325

`A340763(A028342(n))+A028364(n)`
-/

namespace A328436.P9664106851210338325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A028342 n).toNat + A028364 n

end

end A328436.P9664106851210338325

/-!
# A328437: Number of inversion sequences of length n avoiding the consecutive pattern 001.

The programs for A328437, there is no canonical definition to state claims against.
-/

/-! ## A328437.P15247518678123762025

`A215395(A373080(n))`
-/

namespace A328437.P15247518678123762025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215395 (A373080 n).toNat

end

end A328437.P15247518678123762025

/-! ## A328437.P8593517204060201981

`A110655(A213401(n!))`
-/

namespace A328437.P8593517204060201981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A213401 (Nat.factorial n)).toNat

end

end A328437.P8593517204060201981

/-! ## A328437.P13570364924421391784

`A373067(A164429(n+1))`
-/

namespace A328437.P13570364924421391784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373067 (A164429 (n + 1)).toNat

end

end A328437.P13570364924421391784

/-!
# A328438: Number of inversion sequences of length n avoiding the consecutive patterns 000 and 011.

The programs for A328438, there is no canonical definition to state claims against.
-/

/-! ## A328438.P302880100851742000

`A340764(A088715(n)+A000258(n))`
-/

namespace A328438.P302880100851742000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A088715 n + A000258 n).toNat

end

end A328438.P302880100851742000

/-! ## A328438.P14480628903253683762

`A301608(n+1)+A126257(A038119(n+1))`
-/

namespace A328438.P14480628903253683762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (n + 1) + A126257 (A038119 (n + 1)).toNat

end

end A328438.P14480628903253683762

/-! ## A328438.P10978427485754663596

`A332086(A286077(n+1)+A000593(n+2))`
-/

namespace A328438.P10978427485754663596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A286077 (n + 1) + A000593 (n + 2)).toNat

end

end A328438.P10978427485754663596

/-!
# A328439: Number of inversion sequences of length n avoiding the consecutive pattern 011.

The programs for A328439, there is no canonical definition to state claims against.
-/

/-! ## A328439.P2604491096322571445

`∑[A020075(A073788(n))]`
-/

namespace A328439.P2604491096322571445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020075 (A073788 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328439.P2604491096322571445

/-! ## A328439.P8423327160141110839

`A036468(or(n, A001710(n+1)))`
-/

namespace A328439.P8423327160141110839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036468 (Int.lor (n : ℤ) (A001710 (n + 1))).toNat

end

end A328439.P8423327160141110839

/-! ## A328439.P2520192911953300

`∑[A020075(n*A059025(n+6))]`
-/

namespace A328439.P2520192911953300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020075 ((n : ℤ) * A059025 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328439.P2520192911953300

/-!
# A328440: Number of inversion sequences of length n avoiding the consecutive patterns 000 and 100.

The programs for A328440, there is no canonical definition to state claims against.
-/

/-! ## A328440.P11325534182829568725

`A264749(A150119(n)+A000670(n))`
-/

namespace A328440.P11325534182829568725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A150119 n + A000670 n).toNat

end

end A328440.P11325534182829568725

/-! ## A328440.P5900476754277575081

`A138997(A139047(n)+A138911(n))`
-/

namespace A328440.P5900476754277575081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A139047 n + A138911 n).toNat

end

end A328440.P5900476754277575081

/-! ## A328440.P2084668142137720615

`A156562(A125273(n))+A144507(n)`
-/

namespace A328440.P2084668142137720615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A125273 n).toNat + A144507 n

end

end A328440.P2084668142137720615

/-!
# A328441: Number of inversion sequences of length n avoiding the consecutive pattern 100.

The programs for A328441, there is no canonical definition to state claims against.
-/

/-! ## A328441.P15351896416633849303

`A214701(A117156(n))`
-/

namespace A328441.P15351896416633849303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A117156 n).toNat

end

end A328441.P15351896416633849303

/-! ## A328441.P9123198602768077578

`A328507(n)-A368094(A368094(n))`
-/

namespace A328441.P9123198602768077578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328507 n - A368094 (A368094 n).toNat

end

end A328441.P9123198602768077578

/-! ## A328441.P925909979408061021

`A008617(A110414(n+1)+A049027(n))`
-/

namespace A328441.P925909979408061021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A110414 (n + 1) + A049027 n).toNat

end

end A328441.P925909979408061021

/-!
# A328442: Number of inversion sequences of length n avoiding the consecutive pattern 210.

The programs for A328442, there is no canonical definition to state claims against.
-/

/-! ## A328442.P12040083362609416564

`A049317(A151300(n))`
-/

namespace A328442.P12040083362609416564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (A151300 n).toNat

end

end A328442.P12040083362609416564

/-! ## A328442.P4143784658088421975

`filter[A328501(n), A011750(#)]`
-/

namespace A328442.P4143784658088421975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011750 (f1 j).toNat = 1) n)

end

end A328442.P4143784658088421975

/-! ## A328442.P4041366168410345592

`filter[A328501(n), A070887(#)]`
-/

namespace A328442.P4041366168410345592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070887 (f1 j).toNat = 1) n)

end

end A328442.P4041366168410345592

/-!
# A328446: Table read by rows: the n-th row gives the nonnegative integers k such that n - k is a power of k.

The programs for A328446, there is no canonical definition to state claims against.
-/

/-! ## A328446.P8510663999937872288

`A103183(A118416(n+1)+A103183(n+1))`
-/

namespace A328446.P8510663999937872288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103183 (A118416 (n + 1) + A103183 (n + 1)).toNat

end

end A328446.P8510663999937872288

/-! ## A328446.P2029093650124463930

`A346699(A000961(n+1)*A187188(2*n+5))`
-/

namespace A328446.P2029093650124463930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (A000961 (n + 1) * A187188 (2 * n + 5)).toNat

end

end A328446.P2029093650124463930

/-!
# A328447: Smallest representative of the class of numbers having the same digits as n up to permutation.

The programs for A328447, there is no canonical definition to state claims against.
-/

/-! ## A328447.P16526680836363212450

`A333659(A004186(n))`
-/

namespace A328447.P16526680836363212450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A004186 n).toNat

end

end A328447.P16526680836363212450

/-! ## A328447.P7969854100255416410

`A333659(A108782(n)+n)`
-/

namespace A328447.P7969854100255416410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A108782 n + (n : ℤ)).toNat

end

end A328447.P7969854100255416410

/-! ## A328447.P17512877573355689105

`A333659(9*A283001(n)+n)`
-/

namespace A328447.P17512877573355689105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (9 * A283001 n + (n : ℤ)).toNat

end

end A328447.P17512877573355689105

/-! ## A328447.P15866975193690712171

`A333659(A151949(n)+A004185(n))`
-/

namespace A328447.P15866975193690712171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A151949 n + A004185 n).toNat

end

end A328447.P15866975193690712171

/-! ## A328447.P7599261580162443057

`A333659(A052008(n)-A004185(n))`
-/

namespace A328447.P7599261580162443057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A052008 n - A004185 n).toNat

end

end A328447.P7599261580162443057

/-! ## A328447.P2305833154943745091

`A333659(A070196(n)+A151949(n)-n)`
-/

namespace A328447.P2305833154943745091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A070196 n + (A151949 n - (n : ℤ))).toNat

end

end A328447.P2305833154943745091

/-! ## A328447.P18049010488706597525

`A109014(n²)*A227362(n)-A151949(A004185(n))`
-/

namespace A328447.P18049010488706597525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 (n ^ 2) * A227362 n - A151949 (A004185 n).toNat

end

end A328447.P18049010488706597525

/-!
# A328448: Smallest number whose divisors > 1 have a longest run of length n, and 0 if none exists.

The programs for A328448, there is no canonical definition to state claims against.
-/

/-! ## A328448.P4603202317651008734

`A284650(A004914(n+3)*A279495(n+1))`
-/

namespace A328448.P4603202317651008734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284650 (A004914 (n + 3) * A279495 (n + 1)).toNat

end

end A328448.P4603202317651008734

/-! ## A328448.P15884275640969374791

`A284650(lcm(A004914(n+3), A279495(n+1)))`
-/

namespace A328448.P15884275640969374791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284650 (Int.lcm (A004914 (n + 3)) (A279495 (n + 1)))

end

end A328448.P15884275640969374791

/-! ## A328448.P15660926845359792348

`A284650(C(A004914(n+3), A279495(n+1)))`
-/

namespace A328448.P15660926845359792348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284650 (Nat.choose (A004914 (n + 3)).toNat (A279495 (n + 1)).toNat)

end

end A328448.P15660926845359792348

/-!
# A328449: Smallest number in whose divisors the longest run is of length n, and 0 if none exists.

The programs for A328449, there is no canonical definition to state claims against.
-/

/-! ## A328449.P17931565956287207990

`∏{p}[n+1, (n+1)/#]%(n+1)*A002944(n+1)`
-/

namespace A328449.P17931565956287207990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ) * A002944 (n + 1)

end

end A328449.P17931565956287207990

/-! ## A328449.P1097936023354930810

`A119944(n)/A249151(n)`
-/

namespace A328449.P1097936023354930810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119944 n : ℚ) / (A249151 n : ℚ)

end

end A328449.P1097936023354930810

/-! ## A328449.P8454350972955229931

`A119944(n)/A374840(n)`
-/

namespace A328449.P8454350972955229931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119944 n : ℚ) / (A374840 n : ℚ)

end

end A328449.P8454350972955229931

/-! ## A328449.P1055714094806564205

`A003418(n)%Δ[A173185(n)]`
-/

namespace A328449.P1055714094806564205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003418 n) (f1 (n + 1) - f1 n)

end

end A328449.P1055714094806564205

/-! ## A328449.P15958399194833511475

`A003418(n)*A069513(n+1)`
-/

namespace A328449.P15958399194833511475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A069513 (n + 1)

end

end A328449.P15958399194833511475

/-!
# A328450: Numbers that are a smallest number with k pairs of successive divisors, for some k.

The programs for A328450, there is no canonical definition to state claims against.
-/

/-! ## A328450.P14604985077225052564

`record[A287142(A129308(n+1))]`
-/

namespace A328450.P14604985077225052564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287142 (A129308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328450.P14604985077225052564

/-! ## A328450.P17871195437298916727

`record[A253258(A328368(n+1))*A279693(n+1)]`
-/

namespace A328450.P17871195437298916727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253258 (A328368 (n + 1)).toNat * A279693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328450.P17871195437298916727

/-! ## A328450.P6370903902307437958

`A181826(n+1)*A265404(A196709(n+1))`
-/

namespace A328450.P6370903902307437958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181826 (n + 1) * A265404 (A196709 (n + 1)).toNat

end

end A328450.P6370903902307437958

/-!
# A328452: Primes p such that p=prime(k), prime(k+1), and prime(k+2) end in the same digit.

The programs for A328452, there is no canonical definition to state claims against.
-/

/-! ## A328452.P600615225853810380

`A079068(p?[A298075(n+1)])`
-/

namespace A328452.P600615225853810380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A328452.P600615225853810380

/-! ## A328452.P1163633657786284381

`A079068(or(1, A298075(n+1)))`
-/

namespace A328452.P1163633657786284381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (Int.lor 1 (A298075 (n + 1))).toNat

end

end A328452.P1163633657786284381

/-! ## A328452.P2795441222948966496

`A079068(∏{d}[A298075(n+1), #])`
-/

namespace A328452.P2795441222948966496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A328452.P2795441222948966496

/-! ## A328452.P12522770032768000838

`A079068(∑{p}[A298075(n+1), #])`
-/

namespace A328452.P12522770032768000838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328452.P12522770032768000838

/-!
# A328453: Numbers k such that y!/x! + 1 = k^2 has a nonnegative integer solution with y - x <> 1 or 4.

The programs for A328453, there is no canonical definition to state claims against.
-/

/-! ## A328453.P7878421736025240349

`p?[ceil(sqrt(A100934(n+2)))]`
-/

namespace A328453.P7878421736025240349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A100934 (n + 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328453.P7878421736025240349

/-!
# A328456: LCM of the prime indices of 2n + 1, all minus 1; a(0) = 0.

The programs for A328456, there is no canonical definition to state claims against.
-/

/-! ## A328456.P4463734215398539635

`A290103(A064216(n+1))%(n+1)`
-/

namespace A328456.P4463734215398539635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A064216 (n + 1)).toNat) (n + 1 : ℤ)

end

end A328456.P4463734215398539635

/-! ## A328456.P7205570640936364917

`A290103(A243502(n+1))%(n+1)`
-/

namespace A328456.P7205570640936364917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A243502 (n + 1)).toNat) (n + 1 : ℤ)

end

end A328456.P7205570640936364917

/-! ## A328456.P16868232707134426601

`A290103(A064989(Δ[n²]))%(n+1)`
-/

namespace A328456.P16868232707134426601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A064989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat) (n + 1 : ℤ)

end

end A328456.P16868232707134426601

/-! ## A328456.P5547005576558978517

`A290103(A349122(2*n+1))%(n+1)`
-/

namespace A328456.P5547005576558978517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A349122 (2 * n + 1)).toNat) (n + 1 : ℤ)

end

end A328456.P5547005576558978517

/-! ## A328456.P16053629221813110147

`Δ[A290103(A064216(n))+a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A328456.P16053629221813110147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A290103 (A064216 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328456.P16053629221813110147

/-! ## A328456.P15690078836115649852

`A290103(A064216(n+1))-A000007(n)`
-/

namespace A328456.P15690078836115649852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A064216 (n + 1)).toNat - A000007 n

end

end A328456.P15690078836115649852

/-! ## A328456.P8134833436897048090

`A057427(n)*A290103(A064216(n+1))`
-/

namespace A328456.P8134833436897048090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A290103 (A064216 (n + 1)).toNat

end

end A328456.P8134833436897048090

/-! ## A328456.P5565977233866500740

`and(A003817(n), A290103(A064216(n+1)))`
-/

namespace A328456.P5565977233866500740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A290103 (A064216 (n + 1)).toNat)

end

end A328456.P5565977233866500740

/-! ## A328456.P16748009745936648184

`A290103(A064216(n+1))-val(A000040(n+1), 2)`
-/

namespace A328456.P16748009745936648184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A064216 (n + 1)).toNat - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A328456.P16748009745936648184

/-! ## A328456.P7429298754521160788

`A290103(A243502(n+1))-A000045(C(2, n+2))`
-/

namespace A328456.P7429298754521160788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A243502 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A328456.P7429298754521160788

/-!
# A328457: Length of the longest run of divisors > 1 of n.

The programs for A328457, there is no canonical definition to state claims against.
-/

/-! ## A328457.P11966539673359861203

`A328458(C(2, C(3, n²))+n-n%or(1, n))`
-/

namespace A328457.P11966539673359861203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n - n % Nat.lor 1 n)

end

end A328457.P11966539673359861203

/-! ## A328457.P6027918010397939596

`xor(A080339(n+1), A328458(n+1))`
-/

namespace A328457.P6027918010397939596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080339 (n + 1)) (A328458 (n + 1))

end

end A328457.P6027918010397939596

/-! ## A328457.P10692770705755667761

`A328458(n+1)-A008683(A061142(n+1))`
-/

namespace A328457.P10692770705755667761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 1) - A008683 (A061142 (n + 1)).toNat

end

end A328457.P10692770705755667761

/-! ## A328457.P16821366250837896061

`A328458(n+1)-A008683(A068794(n+1))`
-/

namespace A328457.P16821366250837896061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 1) - A008683 (A068794 (n + 1)).toNat

end

end A328457.P16821366250837896061

/-! ## A328457.P1100500161381359724

`A328458(n+1)-A008683(A130065(n+1))`
-/

namespace A328457.P1100500161381359724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 1) - A008683 (A130065 (n + 1)).toNat

end

end A328457.P1100500161381359724

/-! ## A328457.P14491628350649700274

`A328458(n+1)-A008683(A165824(n+1))`
-/

namespace A328457.P14491628350649700274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 1) - A008683 (A165824 (n + 1)).toNat

end

end A328457.P14491628350649700274

/-! ## A328457.P14084934333305919244

`A328458(n+1)-A008683(A046644(n+1))`
-/

namespace A328457.P14084934333305919244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 1) - A008683 (A046644 (n + 1)).toNat

end

end A328457.P14084934333305919244

/-! ## A328457.P9346747561065156511

`A328458(n+1)+A008683(2*A165824(n+1))`
-/

namespace A328457.P9346747561065156511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 1) + A008683 (2 * A165824 (n + 1)).toNat

end

end A328457.P9346747561065156511

/-! ## A328457.P2290612860240026850

`A328458(n+1)-A008683(A326578(n+1))`
-/

namespace A328457.P2290612860240026850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 1) - A008683 (A326578 (n + 1)).toNat

end

end A328457.P2290612860240026850

/-! ## A328457.P2575338869494644414

`A328458(A129598(n+1))`
-/

namespace A328457.P2575338869494644414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (A129598 (n + 1)).toNat

end

end A328457.P2575338869494644414

/-! ## A328457.P8229357287441561233

`A328458(A004928(n+1))`
-/

namespace A328457.P8229357287441561233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (A004928 (n + 1)).toNat

end

end A328457.P8229357287441561233

/-! ## A328457.P11430472183948158443

`A328458(n+1)-A008683(A100577(n+1))`
-/

namespace A328457.P11430472183948158443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 1) - A008683 (A100577 (n + 1)).toNat

end

end A328457.P11430472183948158443

/-! ## A328457.P7255865317451560810

`A328458(A117495(n+2))`
-/

namespace A328457.P7255865317451560810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (A117495 (n + 2)).toNat

end

end A328457.P7255865317451560810

/-! ## A328457.P1582481263872391052

`A328458((n+1)*A000040(n+2))`
-/

namespace A328457.P1582481263872391052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 ((n + 1 : ℤ) * A000040 (n + 2)).toNat

end

end A328457.P1582481263872391052

/-! ## A328457.P7793998728814658911

`xor(A008683(A165827(n+1)), A328458(n+1))`
-/

namespace A328457.P7793998728814658911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A165827 (n + 1)).toNat) (A328458 (n + 1))

end

end A328457.P7793998728814658911

/-! ## A328457.P17995072168886877122

`A328458(A135639(n+1))`
-/

namespace A328457.P17995072168886877122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (A135639 (n + 1)).toNat

end

end A328457.P17995072168886877122

/-!
# A328458: Maximum run-length of the nontrivial divisors (greater than 1 and less than n) of n.

The programs for A328458, there is no canonical definition to state claims against.
-/

/-! ## A328458.P16704012106454703611

`xor(A080339(n+1), A328457(n+1))`
-/

namespace A328458.P16704012106454703611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080339 (n + 1)) (A328457 (n + 1))

end

end A328458.P16704012106454703611

/-! ## A328458.P15078938871588152650

`A328457(A048671(n+1)+A000007(n))`
-/

namespace A328458.P15078938871588152650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (A048671 (n + 1) + A000007 n).toNat

end

end A328458.P15078938871588152650

/-! ## A328458.P2632705280907298636

`A328457(n+1)+A008683(A061142(n+1))`
-/

namespace A328458.P2632705280907298636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (n + 1) + A008683 (A061142 (n + 1)).toNat

end

end A328458.P2632705280907298636

/-! ## A328458.P16574720165097187514

`A328457(n+1)+A008683(A068794(n+1))`
-/

namespace A328458.P16574720165097187514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (n + 1) + A008683 (A068794 (n + 1)).toNat

end

end A328458.P16574720165097187514

/-! ## A328458.P16710341543705498061

`A328457(n+1)+A008683(A130065(n+1))`
-/

namespace A328458.P16710341543705498061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (n + 1) + A008683 (A130065 (n + 1)).toNat

end

end A328458.P16710341543705498061

/-! ## A328458.P13767308867591142170

`A328457(n+1)+A008683(A165824(n+1))`
-/

namespace A328458.P13767308867591142170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (n + 1) + A008683 (A165824 (n + 1)).toNat

end

end A328458.P13767308867591142170

/-! ## A328458.P11710770280149262461

`A328457(n+1)+A008683(A329600(n+1))`
-/

namespace A328458.P11710770280149262461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (n + 1) + A008683 (A329600 (n + 1)).toNat

end

end A328458.P11710770280149262461

/-! ## A328458.P7539570066123348832

`A328457(n+1)+A008683(A326578(n+1))`
-/

namespace A328458.P7539570066123348832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (n + 1) + A008683 (A326578 (n + 1)).toNat

end

end A328458.P7539570066123348832

/-! ## A328458.P17200262239075765579

`A328457(n+1)+A008683(A165826(n+1))`
-/

namespace A328458.P17200262239075765579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (n + 1) + A008683 (A165826 (n + 1)).toNat

end

end A328458.P17200262239075765579

/-! ## A328458.P8893947490440325731

`A328457(n+1)+A008683(A100577(n+1))`
-/

namespace A328458.P8893947490440325731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (n + 1) + A008683 (A100577 (n + 1)).toNat

end

end A328458.P8893947490440325731

/-!
# A328459: Sorted positions of first appearances in A328458 (maximum run-length of nontrivial divisors) of each positive integer in the image.

The programs for A328459, there is no canonical definition to state claims against.
-/

/-! ## A328459.P9444881221865846954

`record[A179661(A194752(n+1))]`
-/

namespace A328459.P9444881221865846954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179661 (A194752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328459.P9444881221865846954

/-! ## A328459.P1706350582693776543

`record[A094307(A058398(n+1)²+n)]`
-/

namespace A328459.P1706350582693776543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094307 (A058398 (n + 1) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328459.P1706350582693776543

/-! ## A328459.P6061547107176306736

`record[gcd(A125901(n+1), A253945(n+4))]`
-/

namespace A328459.P6061547107176306736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125901 (n + 1)) (A253945 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328459.P6061547107176306736

/-!
# A328461: a(n) = A276156(n) / A002110(A007814(n)).

The programs for A328461, there is no canonical definition to state claims against.
-/

/-! ## A328461.P13449219027605293323

`A276156(n+1)/A002110(val(n+1, 2))`
-/

namespace A328461.P13449219027605293323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (n + 1) : ℚ) / (A002110 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A328461.P13449219027605293323

/-! ## A328461.P17235010685520277441

`A276156(n+1)/A002110(A007814(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328461.P17235010685520277441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (n + 1) : ℚ) / (A002110 (A007814 (n + 1)).toNat : ℚ)

end

end A328461.P17235010685520277441

/-! ## A328461.P14291030800157257130

`A111701(A276156(n+1))`
-/

namespace A328461.P14291030800157257130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A276156 (n + 1)).toNat

end

end A328461.P14291030800157257130

/-! ## A328461.P1083871797494009100

`A276156(n+1)/A019565(n-A129760(n+1))`
-/

namespace A328461.P1083871797494009100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (n + 1) : ℚ) / (A019565 ((n : ℤ) - A129760 (n + 1)).toNat : ℚ)

end

end A328461.P1083871797494009100

/-! ## A328461.P9548485466154375844

`A276156(n+1)/A276156(n+1-A129760(n+1))`
-/

namespace A328461.P9548485466154375844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (n + 1) : ℚ) / (A276156 ((n + 1 : ℤ) - A129760 (n + 1)).toNat : ℚ)

end

end A328461.P9548485466154375844

/-! ## A328461.P4380871320926033719

`A276156(n+1)/(A276156(n+1)-A328473(n+1))`
-/

namespace A328461.P4380871320926033719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (n + 1) : ℚ) / (A276156 (n + 1) - A328473 (n + 1) : ℚ)

end

end A328461.P4380871320926033719

/-! ## A328461.P4297566971148637151

`A276156(n+1)/A276156((n+1)/A000265(n+1))`
-/

namespace A328461.P4297566971148637151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (n + 1) : ℚ) / (A276156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000265 (n + 1) : ℚ))).toNat : ℚ)

end

end A328461.P4297566971148637151

/-! ## A328461.P9414532908929786205

`A328464(A075303(n)+1)`
-/

namespace A328461.P9414532908929786205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A075303 n + 1).toNat

end

end A328461.P9414532908929786205

/-! ## A328461.P15035514013472133504

`A328464(A249725(n+1))`
-/

namespace A328461.P15035514013472133504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A249725 (n + 1)).toNat

end

end A328461.P15035514013472133504

/-! ## A328461.P9807708379513761932

`A328463(A209268(n+1))`
-/

namespace A328461.P9807708379513761932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328463 (A209268 (n + 1)).toNat

end

end A328461.P9807708379513761932

/-!
# A328462: Numbers obtained by reinterpreting base-2 representation of odd numbers in primorial base.

The programs for A328462, there is no canonical definition to state claims against.
-/

/-! ## A328462.P17222874343841588078

`A276156(n+1+n)`
-/

namespace A328462.P17222874343841588078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (n + 1 + n)

end

end A328462.P17222874343841588078

/-! ## A328462.P6000332809600898209

`A328461(Δ[n²])`
-/

namespace A328462.P6000332809600898209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A328462.P6000332809600898209

/-! ## A328462.P9232258977273128243

`record[A328461(n+1)]`
-/

namespace A328462.P9232258977273128243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328462.P9232258977273128243

/-! ## A328462.P606412778912756262

`record[A276156(xor(1, n))]`
-/

namespace A328462.P606412778912756262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328462.P606412778912756262

/-! ## A328462.P5597624521811402642

`A328473(Δ[n²])+1`
-/

namespace A328462.P5597624521811402642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328473 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A328462.P5597624521811402642

/-! ## A328462.P10617012262506347450

`record[A328473(n+1)+1]`
-/

namespace A328462.P10617012262506347450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328473 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328462.P10617012262506347450

/-! ## A328462.P15827972700595645719

`A283985(2*n+1)-A283985(n)`
-/

namespace A328462.P15827972700595645719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283985 (2 * n + 1) - A283985 n

end

end A328462.P15827972700595645719

/-! ## A328462.P1968306641055850591

`2-(A328570(2*n)-A276156(2*n))`
-/

namespace A328462.P1968306641055850591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A328570 (2 * n) - A276156 (2 * n))

end

end A328462.P1968306641055850591

/-! ## A328462.P16891490590689074236

`A328461(2*n+1)+A007814(2*n+1)`
-/

namespace A328462.P16891490590689074236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (2 * n + 1) + A007814 (2 * n + 1)

end

end A328462.P16891490590689074236

/-! ## A328462.P14294650894859300381

`A328461(2*n+1)*A328479(2*n+1)`
-/

namespace A328462.P14294650894859300381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (2 * n + 1) * A328479 (2 * n + 1)

end

end A328462.P14294650894859300381

/-! ## A328462.P13294997756474067876

`A370132(A191106(n+1)+1)`
-/

namespace A328462.P13294997756474067876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370132 (A191106 (n + 1) + 1).toNat

end

end A328462.P13294997756474067876

/-! ## A328462.P10687350213550946626

`A328464(∑[n]+1)`
-/

namespace A328462.P10687350213550946626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A328462.P10687350213550946626

/-! ## A328462.P4149036102364239448

`record[A328464(A249725(n+1))]`
-/

namespace A328462.P4149036102364239448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A249725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328462.P4149036102364239448

/-! ## A328462.P2145472193159912359

`A277021(A124108(n))+1`
-/

namespace A328462.P2145472193159912359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A124108 n).toNat + 1

end

end A328462.P2145472193159912359

/-! ## A328462.P7308931810908156330

`A277021(A048678(2*n))+1`
-/

namespace A328462.P7308931810908156330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A048678 (2 * n)).toNat + 1

end

end A328462.P7308931810908156330

/-!
# A328463: Transpose of square array A328464.

The programs for A328463, there is no canonical definition to state claims against.
-/

/-! ## A328463.P6445646742996052089

`A328464(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A328463.P6445646742996052089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A328463.P6445646742996052089

/-! ## A328463.P11558733403144434579

`A328464(A038722(n+1))`
-/

namespace A328463.P11558733403144434579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A038722 (n + 1)).toNat

end

end A328463.P11558733403144434579

/-! ## A328463.P8821837637080660397

`A328464(A061579(n)+1)`
-/

namespace A328463.P8821837637080660397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A061579 n + 1).toNat

end

end A328463.P8821837637080660397

/-! ## A328463.P16091366621588696031

`A328464(A114327(n)+1+n)`
-/

namespace A328463.P16091366621588696031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A114327 n + 1 + (n : ℤ)).toNat

end

end A328463.P16091366621588696031

/-! ## A328463.P11495664911311844785

`A328464(A002024(n+1)²-n)`
-/

namespace A328463.P11495664911311844785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A328463.P11495664911311844785

/-! ## A328463.P14156486528941912297

`A328464(A057944(n)+A004736(n+1))`
-/

namespace A328463.P14156486528941912297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A057944 n + A004736 (n + 1)).toNat

end

end A328463.P14156486528941912297

/-! ## A328463.P17957628194041673467

`A328461(A054582(n))`
-/

namespace A328463.P17957628194041673467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A054582 n).toNat

end

end A328463.P17957628194041673467

/-!
# A328464: Square array A(n,k) = A276156((2^(n-1)) * (2k-1)) / A002110(n-1), read by descending antidiagonals.

The programs for A328464, there is no canonical definition to state claims against.
-/

/-! ## A328464.P4739483437980459988

`A328461(A135764(n+1))`
-/

namespace A328464.P4739483437980459988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A135764 (n + 1)).toNat

end

end A328464.P4739483437980459988

/-! ## A328464.P12280753486312967962

`A328463(A038722(n+1))`
-/

namespace A328464.P12280753486312967962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328463 (A038722 (n + 1)).toNat

end

end A328464.P12280753486312967962

/-! ## A328464.P676481794068407894

`A328463(A061579(n)+1)`
-/

namespace A328464.P676481794068407894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328463 (A061579 n + 1).toNat

end

end A328464.P676481794068407894

/-! ## A328464.P18255495317754501973

`A328463(∑[A198954(n)]-n)`
-/

namespace A328464.P18255495317754501973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328463 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A328464.P18255495317754501973

/-! ## A328464.P5053609052169574774

`A328463(A114327(n)+1+n)`
-/

namespace A328464.P5053609052169574774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328463 (A114327 n + 1 + (n : ℤ)).toNat

end

end A328464.P5053609052169574774

/-! ## A328464.P13327614422347373965

`A328463(A093995(n+1)-n)`
-/

namespace A328464.P13327614422347373965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328463 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A328464.P13327614422347373965

/-! ## A328464.P372050337617434074

`A328461(A075302(n)+1)`
-/

namespace A328464.P372050337617434074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A075302 n + 1).toNat

end

end A328464.P372050337617434074

/-!
# A328465: Row 2 of A328464: a(n) = A276156(4n - 2) / 2.

The programs for A328465, there is no canonical definition to state claims against.
-/

/-! ## A328465.P8853246862039612877

`A276156(4*(n+1)-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328465.P8853246862039612877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (4 * (n + 1) - 2) : ℚ) / 2

end

end A328465.P8853246862039612877

/-! ## A328465.P18318630440985463197

`ceil(A328462(2*n+1)/2)`
-/

namespace A328465.P18318630440985463197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328462 (2 * n + 1) : ℚ) / 2⌉

end

end A328465.P18318630440985463197

/-! ## A328465.P10099839554118656452

`A328461(4*n+2)`
-/

namespace A328465.P10099839554118656452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (4 * n + 2)

end

end A328465.P10099839554118656452

/-! ## A328465.P4577779130212858270

`record[A328461(n+2+n)]`
-/

namespace A328465.P4577779130212858270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328465.P4577779130212858270

/-! ## A328465.P9427924219223832540

`A276156(4*n)/2+1`
-/

namespace A328465.P9427924219223832540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (4 * n) : ℚ) / 2 + 1

end

end A328465.P9427924219223832540

/-! ## A328465.P5684278990782715602

`A328473(4*n+3)/2`
-/

namespace A328465.P5684278990782715602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328473 (4 * n + 3) : ℚ) / 2

end

end A328465.P5684278990782715602

/-! ## A328465.P6114291322237859245

`A328464(∑[n+1]+2)`
-/

namespace A328465.P6114291322237859245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A328465.P6114291322237859245

/-! ## A328465.P10686184688188249641

`record[A328464(A249725(2*(n+1)))]`
-/

namespace A328465.P10686184688188249641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A249725 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328465.P10686184688188249641

/-! ## A328465.P16105479104329235196

`A370132(A191106(2*(n+1)))/2`
-/

namespace A328465.P16105479104329235196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370132 (A191106 (2 * (n + 1))).toNat : ℚ) / 2

end

end A328465.P16105479104329235196

/-!
# A328466: Row 3 of A328464: a(n) = A276156(8n - 4) / 6.

The programs for A328466, there is no canonical definition to state claims against.
-/

/-! ## A328466.P13098405276468705517

`A276156(8*(n+1)-4)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328466.P13098405276468705517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (8 * (n + 1) - 4) : ℚ) / 6

end

end A328466.P13098405276468705517

/-! ## A328466.P14531639534398009988

`ceil(A328465(2*n+1)/3)`
-/

namespace A328466.P14531639534398009988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328465 (2 * n + 1) : ℚ) / 3⌉

end

end A328466.P14531639534398009988

/-! ## A328466.P3568280329089924294

`A328461(8*n+4)`
-/

namespace A328466.P3568280329089924294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (8 * n + 4)

end

end A328466.P3568280329089924294

/-! ## A328466.P13859598255657857561

`record[A328461(A008574(n))]`
-/

namespace A328466.P13859598255657857561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328466.P13859598255657857561

/-! ## A328466.P9042185801236219254

`record[A328461(A008486(n)+n)]`
-/

namespace A328466.P9042185801236219254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A008486 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328466.P9042185801236219254

/-! ## A328466.P2802654336581271138

`record[gcd(2-A007814(n+1), A328461(n+1))]`
-/

namespace A328466.P2802654336581271138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A007814 (n + 1)) (A328461 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328466.P2802654336581271138

/-! ## A328466.P6440526007093381903

`record[A328461((n+1)%(A007814(n+2)+n)+1)]`
-/

namespace A328466.P6440526007093381903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (Int.tmod (n + 1 : ℤ) (A007814 (n + 2) + (n : ℤ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328466.P6440526007093381903

/-! ## A328466.P14555425869794783478

`A328464(∑[n+2]+4)`
-/

namespace A328466.P14555425869794783478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A328466.P14555425869794783478

/-!
# A328467: Row 4 of A328464: a(n) = A276156(16n - 8) / 30.

The programs for A328467, there is no canonical definition to state claims against.
-/

/-! ## A328467.P623739564057972201

`A276156(16*(n+1)-8)/30`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328467.P623739564057972201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (16 * (n + 1) - 8) : ℚ) / 30

end

end A328467.P623739564057972201

/-! ## A328467.P5120313515800052174

`record[A328461(8*(n+1))]`
-/

namespace A328467.P5120313515800052174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (8 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328467.P5120313515800052174

/-! ## A328467.P57052253388764840

`A328461(4*(4*n+2))`
-/

namespace A328467.P57052253388764840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (4 * (4 * n + 2))

end

end A328467.P57052253388764840

/-! ## A328467.P11122542445398287549

`record[A328461(n+2+n)^(C(n, 3)%2)]`
-/

namespace A328467.P11122542445398287549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (n + 2 + n) ^ (Nat.choose n 3 % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328467.P11122542445398287549

/-! ## A328467.P6180287793917150172

`record[A033999(n)*A328461(A008574(n))]`
-/

namespace A328467.P6180287793917150172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A328461 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328467.P6180287793917150172

/-! ## A328467.P6350449588015327200

`record[A328461(A008486(n)+n)/A033999(n)]`
-/

namespace A328467.P6350449588015327200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328461 (A008486 n + (n : ℤ)).toNat : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328467.P6350449588015327200

/-! ## A328467.P10573074272010778601

`A328464(A167614(n+2)+1)`
-/

namespace A328467.P10573074272010778601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A167614 (n + 2) + 1).toNat

end

end A328467.P10573074272010778601

/-! ## A328467.P9151215466680810680

`A328464(A134869(n+3)+3)`
-/

namespace A328467.P9151215466680810680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A134869 (n + 3) + 3).toNat

end

end A328467.P9151215466680810680

/-!
# A328468: Row 5 of A328464: a(n) = A276156(32n - 16) / 210.

The programs for A328468, there is no canonical definition to state claims against.
-/

/-! ## A328468.P17028104056921220295

`A276156(32*(n+1)-16)/210`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328468.P17028104056921220295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (32 * (n + 1) - 16) : ℚ) / 210

end

end A328468.P17028104056921220295

/-! ## A328468.P11238511090258654326

`floor(A328467(2*(n+1))/7)`
-/

namespace A328468.P11238511090258654326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A328467 (2 * (n + 1)) : ℚ) / 7⌋

end

end A328468.P11238511090258654326

/-! ## A328468.P4262822926646152988

`ceil(A328467(2*n+1)/7)`
-/

namespace A328468.P4262822926646152988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328467 (2 * n + 1) : ℚ) / 7⌉

end

end A328468.P4262822926646152988

/-! ## A328468.P1086043308937527371

`floor(A328467(A005843(n)+1)/7)+1`
-/

namespace A328468.P1086043308937527371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A328467 (A005843 n + 1).toNat : ℚ) / 7⌋ + 1

end

end A328468.P1086043308937527371

/-! ## A328468.P12683893448734599054

`A328461(8*(4*n+2))`
-/

namespace A328468.P12683893448734599054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (8 * (4 * n + 2))

end

end A328468.P12683893448734599054

/-! ## A328468.P6417872342288485192

`record[A328461(A008574(4*n))]`
-/

namespace A328468.P6417872342288485192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A008574 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328468.P6417872342288485192

/-! ## A328468.P13718187403755707293

`A328464(A056000(n)+15)`
-/

namespace A328468.P13718187403755707293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A056000 n + 15).toNat

end

end A328468.P13718187403755707293

/-! ## A328468.P788189125486820047

`A328464(A000124(n+4)+4)`
-/

namespace A328468.P788189125486820047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A000124 (n + 4) + 4).toNat

end

end A328468.P788189125486820047

/-! ## A328468.P5946955349840555918

`A328464(A134869(n+4)+4)`
-/

namespace A328468.P5946955349840555918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A134869 (n + 4) + 4).toNat

end

end A328468.P5946955349840555918

/-! ## A328468.P17534022066461279292

`A328464(A000217(n+4)+5)`
-/

namespace A328468.P17534022066461279292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (A000217 (n + 4) + 5).toNat

end

end A328468.P17534022066461279292

/-! ## A328468.P6487040133238934690

`A328464(6-A080956(n+5))`
-/

namespace A328468.P6487040133238934690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328464 (6 - A080956 (n + 5)).toNat

end

end A328468.P6487040133238934690

/-!
# A328470: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(i) = A046523(j) and A053669(i) = A053669(j) for all i, j.

The programs for A328470, there is no canonical definition to state claims against.
-/

/-! ## A328470.P11802371655244064012

`(A324203(2*(n+1))-1)%A326908(n)`
-/

namespace A328470.P11802371655244064012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324203 (2 * (n + 1)) - 1) (A326908 n)

end

end A328470.P11802371655244064012

/-! ## A328470.P4334549223763278204

`A326192(n+1)+A031346(A007088(n))`
-/

namespace A328470.P4334549223763278204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1) + A031346 (A007088 n).toNat

end

end A328470.P4334549223763278204

/-! ## A328470.P3494416906828846046

`A326192(n+1)+A304096(A000079(n))`
-/

namespace A328470.P3494416906828846046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1) + A304096 (A000079 n).toNat

end

end A328470.P3494416906828846046

/-! ## A328470.P7625885892596904391

`A290110(2*n+2)-A006519(A000213(n))`
-/

namespace A328470.P7625885892596904391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290110 (2 * n + 2) - A006519 (A000213 n).toNat

end

end A328470.P7625885892596904391

/-!
# A328471: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(A328461(i)) = A046523(A328461(j)) for all i, j.

The programs for A328471, there is no canonical definition to state claims against.
-/

/-! ## A328471.P9216612003236535009

`A194295(A010846(A328461(n+1)²))`
-/

namespace A328471.P9216612003236535009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194295 (A010846 (A328461 (n + 1) ^ 2).toNat).toNat

end

end A328471.P9216612003236535009

/-! ## A328471.P12722547640575544789

`A007318(A000005(A328461(n+1)^3))`
-/

namespace A328471.P12722547640575544789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000005 (A328461 (n + 1) ^ 3).toNat).toNat

end

end A328471.P12722547640575544789

/-! ## A328471.P498443237536204135

`A122922(A089239(n+2)*(n+4))`
-/

namespace A328471.P498443237536204135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A089239 (n + 2) * (n + 4 : ℤ)).toNat

end

end A328471.P498443237536204135

/-! ## A328471.P10587412573520600773

`A001221(C(2*(n+1), A007318(n+2)))`
-/

namespace A328471.P10587412573520600773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (2 * (n + 1)) (A007318 (n + 2)).toNat)

end

end A328471.P10587412573520600773

/-! ## A328471.P16363443581021287117

`A001221(C(2*(n+1), A256141(n+2)))`
-/

namespace A328471.P16363443581021287117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (2 * (n + 1)) (A256141 (n + 2)).toNat)

end

end A328471.P16363443581021287117

/-!
# A328472: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278226(A328461(i)) = A278226(A328461(j)) for all i, j.

The programs for A328472, there is no canonical definition to state claims against.
-/

/-! ## A328472.P12383388463036653751

`A210763(A034707(3*n+5)+10)`
-/

namespace A328472.P12383388463036653751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210763 (A034707 (3 * n + 5) + 10).toNat

end

end A328472.P12383388463036653751

/-! ## A328472.P14648177031642032674

`A051700(A082605(n)+A008486(n))`
-/

namespace A328472.P14648177031642032674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A082605 n + A008486 n).toNat

end

end A328472.P14648177031642032674

/-! ## A328472.P10129589662162351823

`A051700(A082605(n)+A008585(n))`
-/

namespace A328472.P10129589662162351823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A082605 n + A008585 n).toNat

end

end A328472.P10129589662162351823

/-! ## A328472.P18262002004354469702

`gcd(A008576(A282004(n)), A238279(n))`
-/

namespace A328472.P18262002004354469702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008576 (A282004 n).toNat) (A238279 n)

end

end A328472.P18262002004354469702

/-! ## A328472.P37708401087468566

`A036989(A297618(n+1)-A239261(n))`
-/

namespace A328472.P37708401087468566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A297618 (n + 1) - A239261 n).toNat

end

end A328472.P37708401087468566

/-!
# A328473: a(n) = A276156(n) - A002110(A007814(n)).

The programs for A328473, there is no canonical definition to state claims against.
-/

/-! ## A328473.P7175873413650584145

`A276156(A129760(n+1))`
-/

namespace A328473.P7175873413650584145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (A129760 (n + 1)).toNat

end

end A328473.P7175873413650584145

/-! ## A328473.P2543164729592589649

`A276156(n+1)-A002110(val(n+1, 2))`
-/

namespace A328473.P2543164729592589649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (n + 1) - A002110 (SequenceMachineLib.valuation (n + 1) 2)

end

end A328473.P2543164729592589649

/-! ## A328473.P4590918357471139429

`A276156(n+1)-A002110(A007814(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328473.P4590918357471139429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (n + 1) - A002110 (A007814 (n + 1)).toNat

end

end A328473.P4590918357471139429

/-! ## A328473.P13483493778146925618

`A276151(A276156(n+1))`
-/

namespace A328473.P13483493778146925618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276151 (A276156 (n + 1)).toNat

end

end A328473.P13483493778146925618

/-! ## A328473.P14189685786299580079

`A276156(and(n, n+1))`
-/

namespace A328473.P14189685786299580079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (Nat.land n (n + 1))

end

end A328473.P14189685786299580079

/-! ## A328473.P5999930386401305880

`A328461(and(n, n+1)+1)-1`
-/

namespace A328473.P5999930386401305880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (Nat.land n (n + 1) + 1) - 1

end

end A328473.P5999930386401305880

/-! ## A328473.P1428533650086458845

`A276156(n+1-A006519(n+1))`
-/

namespace A328473.P1428533650086458845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 ((n + 1 : ℤ) - A006519 (n + 1)).toNat

end

end A328473.P1428533650086458845

/-! ## A328473.P11212662704139187110

`A276156(n+1)-A276156(n+1)/A328461(n+1)`
-/

namespace A328473.P11212662704139187110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (n + 1) : ℚ) - (A276156 (n + 1) : ℚ) / (A328461 (n + 1) : ℚ)

end

end A328473.P11212662704139187110

/-! ## A328473.P7919341931459344993

`A328842(A276156(n+1)+A276156(n))`
-/

namespace A328473.P7919341931459344993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328842 (A276156 (n + 1) + A276156 n).toNat

end

end A328473.P7919341931459344993

/-!
# A328474: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(A276156(i)) = A046523(A276156(j)) for all i, j.

The programs for A328474, there is no canonical definition to state claims against.
-/

/-! ## A328474.P15251549735205926406

`∑{e}[A008776(n), A318310(#)]`
-/

namespace A328474.P15251549735205926406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A318310 (Nat.factorization (f1 n).natAbs p)

end

end A328474.P15251549735205926406

/-! ## A328474.P15845928206342034552

`A000120(lcm(A182522(n), A268391(n+1)))`
-/

namespace A328474.P15845928206342034552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A182522 n) (A268391 (n + 1)))

end

end A328474.P15845928206342034552

/-! ## A328474.P8154698742314977144

`A001222(∪[A190914(3*n+2), A127220(n+1)])`
-/

namespace A328474.P8154698742314977144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190914 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127220 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A328474.P8154698742314977144

/-!
# A328475: Convert the primorial base expansion of n into its prime product form, then divide by the largest primorial which divides that product: a(n) = A111701(A276086(n)).

The programs for A328475, there is no canonical definition to state claims against.
-/

/-! ## A328475.P10840039233587488768

`A111701(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328475.P10840039233587488768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A276086 n).toNat

end

end A328475.P10840039233587488768

/-! ## A328475.P15103993128650672177

`A328572(n)*A328573(n)`
-/

namespace A328475.P15103993128650672177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A328573 n

end

end A328475.P15103993128650672177

/-! ## A328475.P7952503463870834870

`A276086(n)/A328580(n)`
-/

namespace A328475.P7952503463870834870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A328580 n : ℚ)

end

end A328475.P7952503463870834870

/-! ## A328475.P8384731367430292947

`A276086(2*(A328399(n)-1))`
-/

namespace A328475.P8384731367430292947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (2 * (A328399 n - 1)).toNat

end

end A328475.P8384731367430292947

/-! ## A328475.P6446503713995687553

`A328476(n)/A328580(n)+1`
-/

namespace A328475.P6446503713995687553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328476 n : ℚ) / (A328580 n : ℚ) + 1

end

end A328475.P6446503713995687553

/-! ## A328475.P7954308076608970723

`A346101(A289234(n))/A328580(n)`
-/

namespace A328475.P7954308076608970723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346101 (A289234 n).toNat : ℚ) / (A328580 n : ℚ)

end

end A328475.P7954308076608970723

/-! ## A328475.P15235594196483214303

`A276086(A328399(n)+A328399(n)-2)`
-/

namespace A328475.P15235594196483214303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328399 n + (A328399 n - 2)).toNat

end

end A328475.P15235594196483214303

/-! ## A328475.P14962606472211830083

`A276086(A328399(n)-(2-A328399(n)))`
-/

namespace A328475.P14962606472211830083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328399 n - (2 - A328399 n)).toNat

end

end A328475.P14962606472211830083

/-! ## A328475.P18212766998297970212

`A276086(n)/(A276086(n)-A328476(n))`
-/

namespace A328475.P18212766998297970212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A276086 n - A328476 n : ℚ)

end

end A328475.P18212766998297970212

/-! ## A328475.P14370228336846986779

`A276086(n)/A328571(n)*A328573(n)`
-/

namespace A328475.P14370228336846986779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A328571 n : ℚ) * (A328573 n : ℚ)

end

end A328475.P14370228336846986779

/-! ## A328475.P2654427369442940347

`A328624(A328626(n))/A328580(n)`
-/

namespace A328475.P2654427369442940347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328624 (A328626 n).toNat : ℚ) / (A328580 n : ℚ)

end

end A328475.P2654427369442940347

/-!
# A328476: Convert the primorial base expansion of n into its prime product form, then subtract the largest primorial which divides that product: a(n) = A276151(A276086(n)).

The programs for A328476, there is no canonical definition to state claims against.
-/

/-! ## A328476.P13889086448788800309

`A276151(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328476.P13889086448788800309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276151 (A276086 n).toNat

end

end A328476.P13889086448788800309

/-! ## A328476.P11742721114925726976

`A276086(n)-A328580(n)`
-/

namespace A328476.P11742721114925726976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A328580 n

end

end A328476.P11742721114925726976

/-! ## A328476.P7968915879827812184

`(A328475(n)-1)*A328580(n)`
-/

namespace A328476.P7968915879827812184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A328475 n - 1) * A328580 n

end

end A328476.P7968915879827812184

/-! ## A328476.P13138170475140494558

`A276086(n)-A328479(A328571(n))`
-/

namespace A328476.P13138170475140494558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A328479 (A328571 n).toNat

end

end A328476.P13138170475140494558

/-! ## A328476.P5400685818832789732

`A346101(A289234(n))-A328580(n)`
-/

namespace A328476.P5400685818832789732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A289234 n).toNat - A328580 n

end

end A328476.P5400685818832789732

/-! ## A328476.P9055426075117948196

`A276086(n)-A276086(n)/A328475(n)`
-/

namespace A328476.P9055426075117948196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) - (A276086 n : ℚ) / (A328475 n : ℚ)

end

end A328476.P9055426075117948196

/-! ## A328476.P4942324890319971327

`A276086(n)-A328571(n)/A328573(n)`
-/

namespace A328476.P4942324890319971327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) - (A328571 n : ℚ) / (A328573 n : ℚ)

end

end A328476.P4942324890319971327

/-! ## A328476.P1041077545558802893

`A328624(A328626(n))-A328580(n)`
-/

namespace A328476.P1041077545558802893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328624 (A328626 n).toNat - A328580 n

end

end A328476.P1041077545558802893

/-!
# A328478: Divide n by the largest primorial that divides it and repeat until a fixed point is reached; a(n) is the fixed point.

The programs for A328478, there is no canonical definition to state claims against.
-/

/-! ## A328478.P7764847265311889636

`(n+1)/A328479(n+1)`
-/

namespace A328478.P7764847265311889636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A328479 (n + 1) : ℚ)

end

end A328478.P7764847265311889636

/-! ## A328478.P16779830183213625931

`(n+1)*A328479(n+1)^A323202(n)`
-/

namespace A328478.P16779830183213625931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A328479 (n + 1) : ℚ) ^ (A323202 n : ℤ)

end

end A328478.P16779830183213625931

/-! ## A328478.P12853432545790573161

`A111701((n+1)/A331188(A329900(n+1)))`
-/

namespace A328478.P12853432545790573161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A331188 (A329900 (n + 1)).toNat : ℚ))).toNat

end

end A328478.P12853432545790573161

/-! ## A328478.P9985893878724422040

`A276147(n+1)/A003961(A329900(n+1))`
-/

namespace A328478.P9985893878724422040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276147 (n + 1) : ℚ) / (A003961 (A329900 (n + 1)).toNat : ℚ)

end

end A328478.P9985893878724422040

/-! ## A328478.P5046169352572798529

`(n+1)/A331188(A329900(A114562(n+1)))`
-/

namespace A328478.P5046169352572798529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A331188 (A329900 (A114562 (n + 1)).toNat).toNat : ℚ)

end

end A328478.P5046169352572798529

/-! ## A328478.P13352665113032888643

`(n+1)/A108951(A329900(n+1))`
-/

namespace A328478.P13352665113032888643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A108951 (A329900 (n + 1)).toNat : ℚ)

end

end A328478.P13352665113032888643

/-! ## A328478.P8403301701434619757

`(n+1)/A329348(A151800(n)*A329900(n+1))`
-/

namespace A328478.P8403301701434619757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A329348 (A151800 n * A329900 (n + 1)).toNat : ℚ)

end

end A328478.P8403301701434619757

/-! ## A328478.P8157682090268999989

`A093411(A111701(n+1)²)^(1/2)`
-/

namespace A328478.P8157682090268999989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A093411 (A111701 (n + 1) ^ 2).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A328478.P8157682090268999989

/-! ## A328478.P14372349926995786037

`A126988(A328479(n+1)+∑[n])`
-/

namespace A328478.P14372349926995786037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A328479 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A328478.P14372349926995786037

/-! ## A328478.P8043043259018633224

`A054531(A328479(n+1)+A000217(n))`
-/

namespace A328478.P8043043259018633224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A328479 (n + 1) + A000217 n).toNat

end

end A328478.P8043043259018633224

/-! ## A328478.P13512425727788980946

`A093411((n+1)*A003324((n+1)²))`
-/

namespace A328478.P13512425727788980946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 ((n + 1 : ℤ) * A003324 ((n + 1) ^ 2)).toNat

end

end A328478.P13512425727788980946

/-!
# A328479: a(n) = n/A328478(n), where A328478(n) is obtained by repeatedly dividing n by the largest primorial that divides it until a fixed point is reached.

The programs for A328479, there is no canonical definition to state claims against.
-/

/-! ## A328479.P16354249921025433976

`(n+1)/A328478(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328479.P16354249921025433976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A328478 (n + 1) : ℚ)

end

end A328479.P16354249921025433976

/-! ## A328479.P9362631195115633296

`(n+1)*A328478(n+1)^A163805(A016813(n))`
-/

namespace A328479.P9362631195115633296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A328478 (n + 1) : ℚ) ^ (A163805 (A016813 n).toNat : ℤ)

end

end A328479.P9362631195115633296

/-! ## A328479.P680309382787634668

`A331188(A329900(A114562(n+1)))`
-/

namespace A328479.P680309382787634668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A329900 (A114562 (n + 1)).toNat).toNat

end

end A328479.P680309382787634668

/-! ## A328479.P1450584515881114976

`A108951(A329900(n+1))`
-/

namespace A328479.P1450584515881114976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A329900 (n + 1)).toNat

end

end A328479.P1450584515881114976

/-! ## A328479.P17726158056413256135

`A329348(A151800(n)*A329900(n+1))`
-/

namespace A328479.P17726158056413256135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (A151800 n * A329900 (n + 1)).toNat

end

end A328479.P17726158056413256135

/-! ## A328479.P16503742055792690426

`A329348(A020482(n+2)*A329900(n+1))`
-/

namespace A328479.P16503742055792690426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (A020482 (n + 2) * A329900 (n + 1)).toNat

end

end A328479.P16503742055792690426

/-! ## A328479.P5571428788654209443

`A331188(A329900((n+1)²))/A331188(A329900(n+1))`
-/

namespace A328479.P5571428788654209443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A329900 ((n + 1) ^ 2)).toNat : ℚ) / (A331188 (A329900 (n + 1)).toNat : ℚ)

end

end A328479.P5571428788654209443

/-! ## A328479.P1292349264613239196

`gcd(A016391(n), A083258(A083258(n+1)))`
-/

namespace A328479.P1292349264613239196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016391 n) (A083258 (A083258 (n + 1)).toNat)

end

end A328479.P1292349264613239196

/-! ## A328479.P8528574896388016376

`A329602(A329900((n+1)²))`
-/

namespace A328479.P8528574896388016376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (A329900 ((n + 1) ^ 2)).toNat

end

end A328479.P8528574896388016376

/-! ## A328479.P2602704164275769277

`A329602(A329900(n+1)*A329900(n+1))`
-/

namespace A328479.P2602704164275769277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (A329900 (n + 1) * A329900 (n + 1)).toNat

end

end A328479.P2602704164275769277

/-! ## A328479.P10362882623600511209

`A083258(A083258(n+1)%A252861(3*(n+1)))`
-/

namespace A328479.P10362882623600511209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083258 (Int.tmod (A083258 (n + 1)) (A252861 (3 * (n + 1)))).toNat

end

end A328479.P10362882623600511209

/-! ## A328479.P15333455579128711075

`A083258(A083258(n+1)+A053188(n²))`
-/

namespace A328479.P15333455579128711075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083258 (A083258 (n + 1) + A053188 (n ^ 2)).toNat

end

end A328479.P15333455579128711075

/-! ## A328479.P4466310355909509032

`A083258(sqrt(A083258((n+1)²)))`
-/

namespace A328479.P4466310355909509032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083258 (SequenceMachineLib.roundAway (Real.sqrt (A083258 ((n + 1) ^ 2) : ℝ))).toNat

end

end A328479.P4466310355909509032

/-! ## A328479.P16175951407928778780

`gcd(n+1, A046523(gcd(n+1, A046523((n+1)²))))`
-/

namespace A328479.P16175951407928778780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A046523 (Int.gcd (n + 1 : ℤ) (A046523 ((n + 1) ^ 2))))

end

end A328479.P16175951407928778780

/-! ## A328479.P3064347991218146981

`A083258(A083258(n+1))%A022544((n+1)²)`
-/

namespace A328479.P3064347991218146981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083258 (A083258 (n + 1)).toNat) (A022544 ((n + 1) ^ 2))

end

end A328479.P3064347991218146981

/-!
# A328481: Number of terms required when n is expressed as a greedy sum of terms of A129912 (digital sum of n when written in greedy A129912-base).

The programs for A328481, there is no canonical definition to state claims against.
-/

/-! ## A328481.P11648968742125367559

`1+a(A328480(n))` with `a(0)=0`
-/

namespace A328481.P11648968742125367559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A328480 n).toNat

end

end A328481.P11648968742125367559

/-! ## A328481.P17320985991961228075

`A005496(a(A328480(n)))` with `a(0)=0`
-/

namespace A328481.P17320985991961228075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005496 (a (A328480 n).toNat).toNat

end

end A328481.P17320985991961228075

/-! ## A328481.P1317293986550316023

`A005555(a(A328480(n)))` with `a(0)=0`
-/

namespace A328481.P1317293986550316023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005555 (a (A328480 n).toNat).toNat

end

end A328481.P1317293986550316023

/-! ## A328481.P13702357347387274638

`A077168(a(A328480(n)))` with `a(0)=0`
-/

namespace A328481.P13702357347387274638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077168 (a (A328480 n).toNat).toNat

end

end A328481.P13702357347387274638

/-! ## A328481.P4646913130268612048

`A291769(a(A328480(n)))` with `a(0)=0`
-/

namespace A328481.P4646913130268612048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A291769 (a (A328480 n).toNat).toNat

end

end A328481.P4646913130268612048

/-! ## A328481.P11206425771333672478

`A348553(a(A328480(n)))` with `a(0)=0`
-/

namespace A328481.P11206425771333672478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A348553 (a (A328480 n).toNat).toNat

end

end A328481.P11206425771333672478

/-!
# A328482: Number of distinct terms required when n is expressed as a greedy sum of terms of A129912 (number of nonzero digits when n is expressed in greedy A129912-base).

The programs for A328482, there is no canonical definition to state claims against.
-/

/-! ## A328482.P8695622521231154899

`∑{e}[A278226(n), A034693(#)]`
-/

namespace A328482.P8695622521231154899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A034693 (Nat.factorization (f1 n).natAbs p)

end

end A328482.P8695622521231154899

/-! ## A328482.P1230260726963024154

`∑{e}[A278226(n), A267263(#)]`
-/

namespace A328482.P1230260726963024154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A267263 (Nat.factorization (f1 n).natAbs p)

end

end A328482.P1230260726963024154

/-! ## A328482.P9909270399923967897

`∑{e}[A278226(n), A046523(A002033(#))]`
-/

namespace A328482.P9909270399923967897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A046523 (A002033 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A328482.P9909270399923967897

/-! ## A328482.P6061710323283631059

`∑{e}[A278226(n), A001221(A276086(#))]`
-/

namespace A328482.P6061710323283631059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (A276086 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A328482.P6061710323283631059

/-! ## A328482.P7375166735893497723

`∑{e}[A278226(n), A001221(A278226(#))]`
-/

namespace A328482.P7375166735893497723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (A278226 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A328482.P7375166735893497723

/-!
# A328483: Maximum number of times any term appears when n is expressed as a greedy sum of terms of A129912 (maximal digit when n is expressed in greedy A129912-base).

The programs for A328483, there is no canonical definition to state claims against.
-/

/-! ## A328483.P6698345259827197887

`A056171(A328577(n)%A097502(n+1))`
-/

namespace A328483.P6698345259827197887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (Int.tmod (A328577 n) (A097502 (n + 1))).toNat

end

end A328483.P6698345259827197887

/-! ## A328483.P3195840796095227649

`A056171(A328577(n))%A343064(n+1)`
-/

namespace A328483.P3195840796095227649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056171 (A328577 n).toNat) (A343064 (n + 1))

end

end A328483.P3195840796095227649

/-! ## A328483.P1556771998760490406

`A056171(A328577(n))+A000007(A034869(n))`
-/

namespace A328483.P1556771998760490406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A328577 n).toNat + A000007 (A034869 n).toNat

end

end A328483.P1556771998760490406

/-! ## A328483.P5147193817945524993

`A154955(A193301(n+1))+A056171(A328577(n))`
-/

namespace A328483.P5147193817945524993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A193301 (n + 1)).toNat + A056171 (A328577 n).toNat

end

end A328483.P5147193817945524993

/-! ## A328483.P6213014782436882434

`A166926(A166934(n+1))+A056171(A328577(n))`
-/

namespace A328483.P6213014782436882434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 (A166934 (n + 1)).toNat + A056171 (A328577 n).toNat

end

end A328483.P6213014782436882434

/-! ## A328483.P16049940138715757070

`A056171(A328577(n))%A246311(n)`
-/

namespace A328483.P16049940138715757070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056171 (A328577 n).toNat) (A246311 n)

end

end A328483.P16049940138715757070

/-!
# A328484: Dirichlet g.f.: zeta(s)^2 / (1 - 3^(-s)).

The programs for A328484, the canonical program `A328484.P15261960755088240361` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328484 has offset 1).

The definition of A328484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035191, A373438, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328484.P15261960755088240361

`A373438(n+1)*A035191(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A328484

/-- `A373438(n+1)*A035191(n+1)` -/
def P15261960755088240361.Spec : Prop :=
  ∀ n, P15261960755088240361.a n = A328484 (n + 1)

theorem P15261960755088240361.correct : P15261960755088240361.Spec := by
  intro n
  simp only [A328484, Nat.add_sub_cancel]

end A328484

/-! ## A328484.P3267686625815060896

`1/2*A051064(n+1)*A372713(n+1)`
-/

namespace A328484.P3267686625815060896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A051064 (n + 1) : ℚ) * (A372713 (n + 1) : ℚ)

end

end A328484.P3267686625815060896

namespace A328484

/-- `1/2*A051064(n+1)*A372713(n+1)` -/
def P3267686625815060896.Spec : Prop :=
  ∀ n, P3267686625815060896.a n = (A328484 (n + 1) : ℚ)

end A328484

/-! ## A328484.P15035011096642636774

`1/2*(A051064(n+1)+1)*A000005(n+1)`
-/

namespace A328484.P15035011096642636774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((A051064 (n + 1) + 1) * A000005 (n + 1) : ℚ)

end

end A328484.P15035011096642636774

namespace A328484

/-- `1/2*(A051064(n+1)+1)*A000005(n+1)` -/
def P15035011096642636774.Spec : Prop :=
  ∀ n, P15035011096642636774.a n = (A328484 (n + 1) : ℚ)

end A328484

/-! ## A328484.P13784779929798770827

`∑{d}[n+1, val(#, 3)+1]`
-/

namespace A328484.P13784779929798770827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (SequenceMachineLib.valuation d 3 + 1)

end

end A328484.P13784779929798770827

namespace A328484

/-- `∑{d}[n+1, val(#, 3)+1]` -/
def P13784779929798770827.Spec : Prop :=
  ∀ n, (P13784779929798770827.a n : ℤ) = A328484 (n + 1)

end A328484

/-! ## A328484.P10734284429092845810

`∑{d}[n+1, A051064(#)]`
-/

namespace A328484.P10734284429092845810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051064 d

end

end A328484.P10734284429092845810

namespace A328484

/-- `∑{d}[n+1, A051064(#)]` -/
def P10734284429092845810.Spec : Prop :=
  ∀ n, P10734284429092845810.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P7355278588607161980

`(A007949(n+1)/2+1)*∏{e}[n+1, #+1]`
-/

namespace A328484.P7355278588607161980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007949 (n + 1) : ℚ) / 2 + 1) * ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ)

end

end A328484.P7355278588607161980

namespace A328484

/-- `(A007949(n+1)/2+1)*∏{e}[n+1, #+1]` -/
def P7355278588607161980.Spec : Prop :=
  ∀ n, P7355278588607161980.a n = (A328484 (n + 1) : ℚ)

end A328484

/-! ## A328484.P14109912810798151583

`∑{d}[n+1, A254046(A025480(#-1)+1)]`
-/

namespace A328484.P14109912810798151583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254046 (A025480 (d - 1) + 1).toNat

end

end A328484.P14109912810798151583

namespace A328484

/-- `∑{d}[n+1, A254046(A025480(#-1)+1)]` -/
def P14109912810798151583.Spec : Prop :=
  ∀ n, P14109912810798151583.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P12888666324769687218

`∑{d}[n+1, A001227(#)*A065333((n+1)/#)]`
-/

namespace A328484.P12888666324769687218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A065333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328484.P12888666324769687218

namespace A328484

/-- `∑{d}[n+1, A001227(#)*A065333((n+1)/#)]` -/
def P12888666324769687218.Spec : Prop :=
  ∀ n, P12888666324769687218.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P8234833526719448240

`∑{d}[n+1, A007425(#)*A156277((n+1)/#)]`
-/

namespace A328484.P8234833526719448240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A156277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328484.P8234833526719448240

namespace A328484

/-- `∑{d}[n+1, A007425(#)*A156277((n+1)/#)]` -/
def P8234833526719448240.Spec : Prop :=
  ∀ n, P8234833526719448240.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P9191271338410823856

`∑{d}[n+1, A001511(#)*A284413((n+1)/#)]`
-/

namespace A328484.P9191271338410823856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A284413 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328484.P9191271338410823856

namespace A328484

/-- `∑{d}[n+1, A001511(#)*A284413((n+1)/#)]` -/
def P9191271338410823856.Spec : Prop :=
  ∀ n, P9191271338410823856.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P8125641367232840570

`∑{d}[n+1, A130054(#)*A327625((n+1)/#)]`
-/

namespace A328484.P8125641367232840570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A327625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328484.P8125641367232840570

namespace A328484

/-- `∑{d}[n+1, A130054(#)*A327625((n+1)/#)]` -/
def P8125641367232840570.Spec : Prop :=
  ∀ n, P8125641367232840570.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P13189231135278734931

`∑{d}[n+1, A133700(#)*A355688((n+1)/#)]`
-/

namespace A328484.P13189231135278734931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133700 d * A355688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328484.P13189231135278734931

namespace A328484

/-- `∑{d}[n+1, A133700(#)*A355688((n+1)/#)]` -/
def P13189231135278734931.Spec : Prop :=
  ∀ n, P13189231135278734931.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P4442568799186619749

`lcm(A000005(2*n+n+3), A000005(n+1))/2`
-/

namespace A328484.P4442568799186619749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000005 (2 * n + (n + 3))) (A000005 (n + 1)) : ℚ) / 2

end

end A328484.P4442568799186619749

namespace A328484

/-- `lcm(A000005(2*n+n+3), A000005(n+1))/2` -/
def P4442568799186619749.Spec : Prop :=
  ∀ n, P4442568799186619749.a n = (A328484 (n + 1) : ℚ)

end A328484

/-! ## A328484.P12681370051084251384

`∑{d}[n+1, A059841(#-1)*A072078((n+1)/#)]`
-/

namespace A328484.P12681370051084251384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A072078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328484.P12681370051084251384

namespace A328484

/-- `∑{d}[n+1, A059841(#-1)*A072078((n+1)/#)]` -/
def P12681370051084251384.Spec : Prop :=
  ∀ n, P12681370051084251384.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P9035900517711045458

`A026741(lcm(A000005(3*(n+1)), A000005(n+1)))`
-/

namespace A328484.P9035900517711045458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.lcm (A000005 (3 * (n + 1))) (A000005 (n + 1)))

end

end A328484.P9035900517711045458

namespace A328484

/-- `A026741(lcm(A000005(3*(n+1)), A000005(n+1)))` -/
def P9035900517711045458.Spec : Prop :=
  ∀ n, P9035900517711045458.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P6060092552523245534

`(A372713(n+1)-A000005(n+1))*A373438(n+1)`
-/

namespace A328484.P6060092552523245534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A372713 (n + 1) - A000005 (n + 1)) * A373438 (n + 1)

end

end A328484.P6060092552523245534

namespace A328484

/-- `(A372713(n+1)-A000005(n+1))*A373438(n+1)` -/
def P6060092552523245534.Spec : Prop :=
  ∀ n, P6060092552523245534.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P9530037714559741375

`val(∏{d}[n+1, 3*#], 3)`
-/

namespace A328484.P9530037714559741375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f1 n), 3 * d) 3

end

end A328484.P9530037714559741375

namespace A328484

/-- `val(∏{d}[n+1, 3*#], 3)` -/
def P9530037714559741375.Spec : Prop :=
  ∀ n, (P9530037714559741375.a n : ℤ) = A328484 (n + 1)

end A328484

/-! ## A328484.P16418968657559698678

`A129628(A061898(n+1))`
-/

namespace A328484.P16418968657559698678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129628 (A061898 (n + 1)).toNat

end

end A328484.P16418968657559698678

namespace A328484

/-- `A129628(A061898(n+1))` -/
def P16418968657559698678.Spec : Prop :=
  ∀ n, P16418968657559698678.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P6332721318873013146

`A129628(A064614(n+1))`
-/

namespace A328484.P6332721318873013146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129628 (A064614 (n + 1)).toNat

end

end A328484.P6332721318873013146

namespace A328484

/-- `A129628(A064614(n+1))` -/
def P6332721318873013146.Spec : Prop :=
  ∀ n, P6332721318873013146.a n = A328484 (n + 1)

end A328484

/-! ## A328484.P16240986941834111847

`A129628(A072027(n+1))`
-/

namespace A328484.P16240986941834111847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129628 (A072027 (n + 1)).toNat

end

end A328484.P16240986941834111847

namespace A328484

/-- `A129628(A072027(n+1))` -/
def P16240986941834111847.Spec : Prop :=
  ∀ n, P16240986941834111847.a n = A328484 (n + 1)

end A328484

/-!
# A328485: Dirichlet g.f.: zeta(s)^2 * zeta(s-1) / zeta(2*s-1).

The programs for A328485, the canonical program `A328485.P15693459629659054742` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328485 has offset 1).

The definition of A328485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328485.P15892047175691278866

`∑{d}[n+1, A034448(#)]`
-/

namespace A328485.P15892047175691278866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d

end

end A328485.P15892047175691278866

namespace A328485

/-- `∑{d}[n+1, A034448(#)]` -/
def P15892047175691278866.Spec : Prop :=
  ∀ n, P15892047175691278866.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P305534883445873843

`∑{d}[n+1, A034460(#)+#]`
-/

namespace A328485.P305534883445873843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A034460 d + (d : ℤ))

end

end A328485.P305534883445873843

namespace A328485

/-- `∑{d}[n+1, A034460(#)+#]` -/
def P305534883445873843.Spec : Prop :=
  ∀ n, P305534883445873843.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P5696305462973648708

`∑{d}[n+1, #*A344326((n+1)/#)]`
-/

namespace A328485.P5696305462973648708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A344326 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328485.P5696305462973648708

namespace A328485

/-- `∑{d}[n+1, #*A344326((n+1)/#)]` -/
def P5696305462973648708.Spec : Prop :=
  ∀ n, P5696305462973648708.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P9888047272299240247

`∑{d}[n+1, A048250(#)*A055210((n+1)/#)]`
-/

namespace A328485.P9888047272299240247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A055210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328485.P9888047272299240247

namespace A328485

/-- `∑{d}[n+1, A048250(#)*A055210((n+1)/#)]` -/
def P9888047272299240247.Spec : Prop :=
  ∀ n, P9888047272299240247.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P15693459629659054742

`∑{d}[n+1, A055615(#)*A064840((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A328485

/-- `∑{d}[n+1, A055615(#)*A064840((n+1)/#)]` -/
def P15693459629659054742.Spec : Prop :=
  ∀ n, P15693459629659054742.a n = A328485 (n + 1)

theorem P15693459629659054742.correct : P15693459629659054742.Spec := by
  intro n
  simp only [A328485, Nat.add_sub_cancel]

end A328485

/-! ## A328485.P15332399338342654028

`∑{d}[n+1, A000005(#)*A254503((n+1)/#)]`
-/

namespace A328485.P15332399338342654028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A254503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328485.P15332399338342654028

namespace A328485

/-- `∑{d}[n+1, A000005(#)*A254503((n+1)/#)]` -/
def P15332399338342654028.Spec : Prop :=
  ∀ n, P15332399338342654028.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P15551094752757988777

`∑{d}[n+1, A008966(#)*A332619((n+1)/#)]`
-/

namespace A328485.P15551094752757988777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A332619 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328485.P15551094752757988777

namespace A328485

/-- `∑{d}[n+1, A008966(#)*A332619((n+1)/#)]` -/
def P15551094752757988777.Spec : Prop :=
  ∀ n, P15551094752757988777.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P9464948351230244319

`∑{d}[n+1, A046692(#)*A324986((n+1)/#)]`
-/

namespace A328485.P9464948351230244319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A324986 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328485.P9464948351230244319

namespace A328485

/-- `∑{d}[n+1, A046692(#)*A324986((n+1)/#)]` -/
def P9464948351230244319.Spec : Prop :=
  ∀ n, P9464948351230244319.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P1838798272481171596

`∑{d}[n+1, A069088(#)*A380162((n+1)/#)]`
-/

namespace A328485.P1838798272481171596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069088 d * A380162 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328485.P1838798272481171596

namespace A328485

/-- `∑{d}[n+1, A069088(#)*A380162((n+1)/#)]` -/
def P1838798272481171596.Spec : Prop :=
  ∀ n, P1838798272481171596.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P2777583062645831878

`∑{d}[n+1, A192066(#)*A385047((n+1)/#)]`
-/

namespace A328485.P2777583062645831878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A192066 d * A385047 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328485.P2777583062645831878

namespace A328485

/-- `∑{d}[n+1, A192066(#)*A385047((n+1)/#)]` -/
def P2777583062645831878.Spec : Prop :=
  ∀ n, P2777583062645831878.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P10990875563673757060

`∑{d}[n+1, A385045(#)*A385046((n+1)/#)]`
-/

namespace A328485.P10990875563673757060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A385045 d * A385046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328485.P10990875563673757060

namespace A328485

/-- `∑{d}[n+1, A385045(#)*A385046((n+1)/#)]` -/
def P10990875563673757060.Spec : Prop :=
  ∀ n, P10990875563673757060.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P16367376228144573863

`∑{d}[(n+1)², #/gcd(#, n+1)]`
-/

namespace A328485.P16367376228144573863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (Nat.gcd d (n + 1) : ℚ)

end

end A328485.P16367376228144573863

namespace A328485

/-- `∑{d}[(n+1)², #/gcd(#, n+1)]` -/
def P16367376228144573863.Spec : Prop :=
  ∀ n, P16367376228144573863.a n = (A328485 (n + 1) : ℚ)

end A328485

/-! ## A328485.P6427289747426867690

`∑{d}[(n+1)², lcm(#, n+1)/#]`
-/

namespace A328485.P6427289747426867690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm d (n + 1) : ℚ) / (d : ℚ)

end

end A328485.P6427289747426867690

namespace A328485

/-- `∑{d}[(n+1)², lcm(#, n+1)/#]` -/
def P6427289747426867690.Spec : Prop :=
  ∀ n, P6427289747426867690.a n = (A328485 (n + 1) : ℚ)

end A328485

/-! ## A328485.P17710486038291797895

`∑{d}[(n+1)², A071974(#)]`
-/

namespace A328485.P17710486038291797895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A071974 d

end

end A328485.P17710486038291797895

namespace A328485

/-- `∑{d}[(n+1)², A071974(#)]` -/
def P17710486038291797895.Spec : Prop :=
  ∀ n, P17710486038291797895.a n = A328485 (n + 1)

end A328485

/-! ## A328485.P15763913658698704991

`∑{d}[(n+1)², A071975(#)]`
-/

namespace A328485.P15763913658698704991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A071975 d

end

end A328485.P15763913658698704991

namespace A328485

/-- `∑{d}[(n+1)², A071975(#)]` -/
def P15763913658698704991.Spec : Prop :=
  ∀ n, P15763913658698704991.a n = A328485 (n + 1)

end A328485

/-!
# A328486: Dirichlet g.f.: zeta(s)^4 * (1 - 2^(-s))^2.

The programs for A328486, the canonical program `A328486.P17531706515391768603` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328486 has offset 1).

The definition of A328486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328486.P17531706515391768603

`∑{d}[n+1, A001227(#)*A001227((n+1)/#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A328486

/-- `∑{d}[n+1, A001227(#)*A001227((n+1)/#)]` -/
def P17531706515391768603.Spec : Prop :=
  ∀ n, P17531706515391768603.a n = A328486 (n + 1)

theorem P17531706515391768603.correct : P17531706515391768603.Spec := by
  intro n
  simp only [A328486, Nat.add_sub_cancel]

end A328486

/-! ## A328486.P6224419907549091441

`(val(n+1, 2)+1)*A007426((n+1)/2^val(n+1, 2))`
-/

namespace A328486.P6224419907549091441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A007426 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A328486.P6224419907549091441

namespace A328486

/-- `(val(n+1, 2)+1)*A007426((n+1)/2^val(n+1, 2))` -/
def P6224419907549091441.Spec : Prop :=
  ∀ n, P6224419907549091441.a n = A328486 (n + 1)

end A328486

/-! ## A328486.P10591194285504510064

`∑{d}[n+1, A007425(A000265(#))]`
-/

namespace A328486.P10591194285504510064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 (A000265 d).toNat

end

end A328486.P10591194285504510064

namespace A328486

/-- `∑{d}[n+1, A007425(A000265(#))]` -/
def P10591194285504510064.Spec : Prop :=
  ∀ n, P10591194285504510064.a n = A328486 (n + 1)

end A328486

/-! ## A328486.P5467040428726850647

`∑{d}[n+1, A133700(#+#)-A133700(#)]`
-/

namespace A328486.P5467040428726850647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A133700 (d + d) - A133700 d)

end

end A328486.P5467040428726850647

namespace A328486

/-- `∑{d}[n+1, A133700(#+#)-A133700(#)]` -/
def P5467040428726850647.Spec : Prop :=
  ∀ n, P5467040428726850647.a n = A328486 (n + 1)

end A328486

/-! ## A328486.P5301537086554270174

`∑{d}[n+1, A160467(#)*A288571((n+1)/#)]`
-/

namespace A328486.P5301537086554270174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160467 d * A288571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328486.P5301537086554270174

namespace A328486

/-- `∑{d}[n+1, A160467(#)*A288571((n+1)/#)]` -/
def P5301537086554270174.Spec : Prop :=
  ∀ n, P5301537086554270174.a n = A328486 (n + 1)

end A328486

/-! ## A328486.P9012125451373105759

`∑{d}[n+1, A154955(#)*A326417((n+1)/#)]`
-/

namespace A328486.P9012125451373105759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A326417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328486.P9012125451373105759

namespace A328486

/-- `∑{d}[n+1, A154955(#)*A326417((n+1)/#)]` -/
def P9012125451373105759.Spec : Prop :=
  ∀ n, P9012125451373105759.a n = A328486 (n + 1)

end A328486

/-! ## A328486.P5021910172497706307

`∑{d}[n+1, A275367(#)*A298735((n+1)/#)]`
-/

namespace A328486.P5021910172497706307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A275367 d * A298735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328486.P5021910172497706307

namespace A328486

/-- `∑{d}[n+1, A275367(#)*A298735((n+1)/#)]` -/
def P5021910172497706307.Spec : Prop :=
  ∀ n, P5021910172497706307.a n = A328486 (n + 1)

end A328486

/-! ## A328486.P15648036506300645833

`A133700(n+1)/A007425(n+1)*A326417(n+1)`
-/

namespace A328486.P15648036506300645833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133700 (n + 1) : ℚ) / (A007425 (n + 1) : ℚ) * (A326417 (n + 1) : ℚ)

end

end A328486.P15648036506300645833

namespace A328486

/-- `A133700(n+1)/A007425(n+1)*A326417(n+1)` -/
def P15648036506300645833.Spec : Prop :=
  ∀ n, P15648036506300645833.a n = (A328486 (n + 1) : ℚ)

end A328486

/-!
# A328487: Dirichlet g.f.: zeta(s)^2 * zeta(s-1)^2 * (1 - 2^(1 - s))^2.

The programs for A328487, the canonical program `A328487.P33867563993606673` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328487 has offset 1).

The definition of A328487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328487.P33867563993606673

`∑{d}[n+1, A000593(#)*A000593((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A328487

/-- `∑{d}[n+1, A000593(#)*A000593((n+1)/#)]` -/
def P33867563993606673.Spec : Prop :=
  ∀ n, P33867563993606673.a n = A328487 (n + 1)

theorem P33867563993606673.correct : P33867563993606673.Spec := by
  intro n
  simp only [A328487, Nat.add_sub_cancel]

end A328487

/-! ## A328487.P8603268998026706144

`∑{d}[n+1, A060640(A000265(#))]`
-/

namespace A328487.P8603268998026706144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 (A000265 d).toNat

end

end A328487.P8603268998026706144

namespace A328487

/-- `∑{d}[n+1, A060640(A000265(#))]` -/
def P8603268998026706144.Spec : Prop :=
  ∀ n, P8603268998026706144.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P6313241425138114671

`∑{d}[n+1, A045771(#)*A053866((n+1)/#)]`
-/

namespace A328487.P6313241425138114671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045771 d * A053866 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P6313241425138114671

namespace A328487

/-- `∑{d}[n+1, A045771(#)*A053866((n+1)/#)]` -/
def P6313241425138114671.Spec : Prop :=
  ∀ n, P6313241425138114671.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P1086818050511716978

`∑{d}[n+1, A000203(#)*A115607((n+1)/#)]`
-/

namespace A328487.P1086818050511716978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A115607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P1086818050511716978

namespace A328487

/-- `∑{d}[n+1, A000203(#)*A115607((n+1)/#)]` -/
def P1086818050511716978.Spec : Prop :=
  ∀ n, P1086818050511716978.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P3166710399961173060

`∑{d}[n+1, A045771(#)*A093709((n+1)/#)]`
-/

namespace A328487.P3166710399961173060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045771 d * A093709 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P3166710399961173060

namespace A328487

/-- `∑{d}[n+1, A045771(#)*A093709((n+1)/#)]` -/
def P3166710399961173060.Spec : Prop :=
  ∀ n, P3166710399961173060.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P208557863287733875

`∑{d}[n+1, A038040(#)*A228441((n+1)/#)]`
-/

namespace A328487.P208557863287733875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A228441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P208557863287733875

namespace A328487

/-- `∑{d}[n+1, A038040(#)*A228441((n+1)/#)]` -/
def P208557863287733875.Spec : Prop :=
  ∀ n, P208557863287733875.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P480894190530602531

`∑{d}[n+1, A048272(#)*A245579((n+1)/#)]`
-/

namespace A328487.P480894190530602531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A245579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P480894190530602531

namespace A328487

/-- `∑{d}[n+1, A048272(#)*A245579((n+1)/#)]` -/
def P480894190530602531.Spec : Prop :=
  ∀ n, P480894190530602531.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P7732053988978169945

`∑{d}[n+1, A001227(#)*A336475((n+1)/#)]`
-/

namespace A328487.P7732053988978169945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A336475 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P7732053988978169945

namespace A328487

/-- `∑{d}[n+1, A001227(#)*A336475((n+1)/#)]` -/
def P7732053988978169945.Spec : Prop :=
  ∀ n, P7732053988978169945.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P6984126756044413874

`∑{d}[n+1, A018804(#)*A369100((n+1)/#)]`
-/

namespace A328487.P6984126756044413874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A369100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P6984126756044413874

namespace A328487

/-- `∑{d}[n+1, A018804(#)*A369100((n+1)/#)]` -/
def P6984126756044413874.Spec : Prop :=
  ∀ n, P6984126756044413874.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P7232906391751088072

`∑{d}[n+1, A193356(#)*A288417((n+1)/#)]`
-/

namespace A328487.P7232906391751088072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P7232906391751088072

namespace A328487

/-- `∑{d}[n+1, A193356(#)*A288417((n+1)/#)]` -/
def P7232906391751088072.Spec : Prop :=
  ∀ n, P7232906391751088072.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P15704451146911465788

`∑{d}[n+1, A255655(#)*A288571((n+1)/#)]`
-/

namespace A328487.P15704451146911465788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255655 d * A288571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P15704451146911465788

namespace A328487

/-- `∑{d}[n+1, A255655(#)*A288571((n+1)/#)]` -/
def P15704451146911465788.Spec : Prop :=
  ∀ n, P15704451146911465788.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P16950089586170755183

`∑{d}[n+1, A309324(#)*A328373((n+1)/#)]`
-/

namespace A328487.P16950089586170755183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309324 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P16950089586170755183

namespace A328487

/-- `∑{d}[n+1, A309324(#)*A328373((n+1)/#)]` -/
def P16950089586170755183.Spec : Prop :=
  ∀ n, P16950089586170755183.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P8463857580414364411

`∑{d}[n+1, A318845(#)*A319997((n+1)/#)]`
-/

namespace A328487.P8463857580414364411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318845 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P8463857580414364411

namespace A328487

/-- `∑{d}[n+1, A318845(#)*A319997((n+1)/#)]` -/
def P8463857580414364411.Spec : Prop :=
  ∀ n, P8463857580414364411.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P16345389265065947368

`∑{d}[n+1, A033999(#-1)*A109386((n+1)/#)]`
-/

namespace A328487.P16345389265065947368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P16345389265065947368

namespace A328487

/-- `∑{d}[n+1, A033999(#-1)*A109386((n+1)/#)]` -/
def P16345389265065947368.Spec : Prop :=
  ∀ n, P16345389265065947368.a n = A328487 (n + 1)

end A328487

/-! ## A328487.P12998515021450273203

`∑{d}[n+1, A060640(#)*A176563((n+1)/#-1)]`
-/

namespace A328487.P12998515021450273203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A176563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A328487.P12998515021450273203

namespace A328487

/-- `∑{d}[n+1, A060640(#)*A176563((n+1)/#-1)]` -/
def P12998515021450273203.Spec : Prop :=
  ∀ n, P12998515021450273203.a n = A328487 (n + 1)

end A328487

/-!
# A328488: Expansion of e.g.f. 1 / (2 - exp(x * exp(x))).

The programs for A328488, there is no canonical definition to state claims against.
-/

/-! ## A328488.P11509074527803692391

`A328594(n!)+∏[floor(abs(3*n-ϕ))]`
-/

namespace A328488.P11509074527803692391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(3 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (Nat.factorial n) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A328488.P11509074527803692391

/-!
# A328489: Odd numbers k such that the four consecutive odd numbers starting with k have a total of 5 prime factors counting multiplicity.

The programs for A328489, there is no canonical definition to state claims against.
-/

/-! ## A328489.P15482559926858819697

`p?[∑[A319696(A001769(n))]]`
-/

namespace A328489.P15482559926858819697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (A001769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328489.P15482559926858819697

/-! ## A328489.P7251005051708716446

`p?[A349257(n)+∑[A349271(n+1)]]`
-/

namespace A328489.P7251005051708716446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349271 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349257 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328489.P7251005051708716446

/-! ## A328489.P6914157564419540545

`A000040(lt[A327148(n), A007306(n)])`
-/

namespace A328489.P6914157564419540545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328489.P6914157564419540545

/-! ## A328489.P14971077750538562899

`A000040(A200446(n+1)+A179065(n+1))`
-/

namespace A328489.P14971077750538562899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A200446 (n + 1) + A179065 (n + 1)).toNat

end

end A328489.P14971077750538562899

/-!
# A328490: Dirichlet g.f.: zeta(s)^2 * zeta(s-2)^2.

The programs for A328490, the canonical program `A328490.P16825988426646783064` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328490 has offset 1).

The definition of A328490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328490.P2510542084550607892

`∑{d}[n+1, A360429(#)]`
-/

namespace A328490.P2510542084550607892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A360429 d

end

end A328490.P2510542084550607892

namespace A328490

/-- `∑{d}[n+1, A360429(#)]` -/
def P2510542084550607892.Spec : Prop :=
  ∀ n, P2510542084550607892.a n = A328490 (n + 1)

end A328490

/-! ## A328490.P16825988426646783064

`∑{d}[n+1, A001157((n+1)/#)*A001157(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328490

/-- `∑{d}[n+1, A001157((n+1)/#)*A001157(#)]` -/
def P16825988426646783064.Spec : Prop :=
  ∀ n, P16825988426646783064.a n = A328490 (n + 1)

theorem P16825988426646783064.correct : P16825988426646783064.Spec := by
  intro n
  simp only [A328490, Nat.add_sub_cancel]

end A328490

/-! ## A328490.P8569440427344284492

`∑{d}[n+1, A000290(#)*A007433((n+1)/#)]`
-/

namespace A328490.P8569440427344284492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A007433 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328490.P8569440427344284492

namespace A328490

/-- `∑{d}[n+1, A000290(#)*A007433((n+1)/#)]` -/
def P8569440427344284492.Spec : Prop :=
  ∀ n, P8569440427344284492.a n = A328490 (n + 1)

end A328490

/-! ## A328490.P17362142740706973862

`∑{d}[n+1, A000005(#)*A034714((n+1)/#)]`
-/

namespace A328490.P17362142740706973862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A034714 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328490.P17362142740706973862

namespace A328490

/-- `∑{d}[n+1, A000005(#)*A034714((n+1)/#)]` -/
def P17362142740706973862.Spec : Prop :=
  ∀ n, P17362142740706973862.a n = A328490 (n + 1)

end A328490

/-! ## A328490.P4932016858207775709

`∑{d}[n+1, A001001(#)*A057660((n+1)/#)]`
-/

namespace A328490.P4932016858207775709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328490.P4932016858207775709

namespace A328490

/-- `∑{d}[n+1, A001001(#)*A057660((n+1)/#)]` -/
def P4932016858207775709.Spec : Prop :=
  ∀ n, P4932016858207775709.a n = A328490 (n + 1)

end A328490

/-! ## A328490.P8633017597150621493

`∑{d}[n+1, A007426(#)*A338164((n+1)/#)]`
-/

namespace A328490.P8633017597150621493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A338164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328490.P8633017597150621493

namespace A328490

/-- `∑{d}[n+1, A007426(#)*A338164((n+1)/#)]` -/
def P8633017597150621493.Spec : Prop :=
  ∀ n, P8633017597150621493.a n = A328490 (n + 1)

end A328490

/-! ## A328490.P1940073603020994173

`∑{d}[n+1, A007425(#)*A360428((n+1)/#)]`
-/

namespace A328490.P1940073603020994173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A360428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328490.P1940073603020994173

namespace A328490

/-- `∑{d}[n+1, A007425(#)*A360428((n+1)/#)]` -/
def P1940073603020994173.Spec : Prop :=
  ∀ n, P1940073603020994173.a n = A328490 (n + 1)

end A328490

/-! ## A328490.P2362977178495121754

`∑{d}[n+1, A060640(#)*A373059((n+1)/#)]`
-/

namespace A328490.P2362977178495121754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A373059 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328490.P2362977178495121754

namespace A328490

/-- `∑{d}[n+1, A060640(#)*A373059((n+1)/#)]` -/
def P2362977178495121754.Spec : Prop :=
  ∀ n, P2362977178495121754.a n = A328490 (n + 1)

end A328490

/-! ## A328490.P4071220063036327146

`∑{d}[n+1, A158949(#)*A328271((n+1)/#)]`
-/

namespace A328490.P4071220063036327146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158949 d * A328271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328490.P4071220063036327146

namespace A328490

/-- `∑{d}[n+1, A158949(#)*A328271((n+1)/#)]` -/
def P4071220063036327146.Spec : Prop :=
  ∀ n, P4071220063036327146.a n = A328490 (n + 1)

end A328490

/-! ## A328490.P10520517851324685344

`∑{d}[n+1, A174468(#)*A340850((n+1)/#)]`
-/

namespace A328490.P10520517851324685344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174468 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328490.P10520517851324685344

namespace A328490

/-- `∑{d}[n+1, A174468(#)*A340850((n+1)/#)]` -/
def P10520517851324685344.Spec : Prop :=
  ∀ n, P10520517851324685344.a n = A328490 (n + 1)

end A328490

/-!
# A328492: First differences of A240510 (Numbers whose "reverse and add" process becomes palindromic at 8813200023188).

The programs for A328492, there is no canonical definition to state claims against.
-/

/-! ## A328492.P1132387188839243768

`Δ[A240510(n+1)]`
-/

namespace A328492.P1132387188839243768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328492.P1132387188839243768

/-! ## A328492.P4374179584266875575

`Δ[record[A240510(A133310(n))]]`
-/

namespace A328492.P4374179584266875575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240510 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328492.P4374179584266875575

/-! ## A328492.P11712764605544294405

`Δ[record[A240510(A152271(n))]]`
-/

namespace A328492.P11712764605544294405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240510 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328492.P11712764605544294405

/-! ## A328492.P12389405880154190248

`A240510(n+2)-A240510(n+1)`
-/

namespace A328492.P12389405880154190248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240510 (n + 2) - A240510 (n + 1)

end

end A328492.P12389405880154190248

/-! ## A328492.P16286165020620059068

`A240510(A020725(n+1))%A240510(n+1)`
-/

namespace A328492.P16286165020620059068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240510 (A020725 (n + 1)).toNat) (A240510 (n + 1))

end

end A328492.P16286165020620059068

/-! ## A328492.P14476480247186113612

`A240510(A233583(n+3))%A240510(n+1)`
-/

namespace A328492.P14476480247186113612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240510 (A233583 (n + 3)).toNat) (A240510 (n + 1))

end

end A328492.P14476480247186113612

/-! ## A328492.P5660941870099687708

`record[A240510(A335572(n+1))]%A240510(n+1)`
-/

namespace A328492.P5660941870099687708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240510 (A335572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A240510 (n + 1))

end

end A328492.P5660941870099687708

/-! ## A328492.P2938635657006793822

`Δ[record[A240510(A284549(n))]]`
-/

namespace A328492.P2938635657006793822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240510 (A284549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328492.P2938635657006793822

/-! ## A328492.P10069611137491803195

`Δ[record[A240510(A137734(n))]]`
-/

namespace A328492.P10069611137491803195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240510 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328492.P10069611137491803195

/-!
# A328493: a(n) = (p_n + 1)*q_n - 1; where (p_n, q_n) is the n-th twin prime pair.

The programs for A328493, the canonical program `A328493.P13594218802109558231` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328493 has offset 1).

The definition of A328493 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126251, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328493.P13594218802109558231

`A126251(n+1)-1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A328493

/-- `A126251(n+1)-1` -/
def P13594218802109558231.Spec : Prop :=
  ∀ n, P13594218802109558231.a n = A328493 (n + 1)

theorem P13594218802109558231.correct : P13594218802109558231.Spec := by
  intro n
  simp only [A328493, Nat.add_sub_cancel]

end A328493

/-! ## A328493.P13293192143646737143

`2*A082669(n+1)-1`
-/

namespace A328493.P13293192143646737143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082669 (n + 1) - 1

end

end A328493.P13293192143646737143

namespace A328493

/-- `2*A082669(n+1)-1` -/
def P13293192143646737143.Spec : Prop :=
  ∀ n, P13293192143646737143.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P6193557270821168334

`2*C(A006512(n+1), 2)-1`
-/

namespace A328493.P6193557270821168334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A006512 (n + 1)).toNat 2 : ℤ) - 1

end

end A328493.P6193557270821168334

namespace A328493

/-- `2*C(A006512(n+1), 2)-1` -/
def P6193557270821168334.Spec : Prop :=
  ∀ n, P6193557270821168334.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P2506318142828927478

`A037074(n+1)+A014574(n+1)`
-/

namespace A328493.P2506318142828927478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + A014574 (n + 1)

end

end A328493.P2506318142828927478

namespace A328493

/-- `A037074(n+1)+A014574(n+1)` -/
def P2506318142828927478.Spec : Prop :=
  ∀ n, P2506318142828927478.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P8540688457777169946

`A075369(n+1)+A001359(n+1)`
-/

namespace A328493.P8540688457777169946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) + A001359 (n + 1)

end

end A328493.P8540688457777169946

namespace A328493

/-- `A075369(n+1)+A001359(n+1)` -/
def P8540688457777169946.Spec : Prop :=
  ∀ n, P8540688457777169946.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P18194251386113860573

`A120875(n+1)+A006512(n+1)`
-/

namespace A328493.P18194251386113860573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1) + A006512 (n + 1)

end

end A328493.P18194251386113860573

namespace A328493

/-- `A120875(n+1)+A006512(n+1)` -/
def P18194251386113860573.Spec : Prop :=
  ∀ n, P18194251386113860573.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P8298457375174359272

`A362941(n+1)-A006512(n+1)`
-/

namespace A328493.P8298457375174359272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362941 (n + 1) - A006512 (n + 1)

end

end A328493.P8298457375174359272

namespace A328493

/-- `A362941(n+1)-A006512(n+1)` -/
def P8298457375174359272.Spec : Prop :=
  ∀ n, P8298457375174359272.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P13360375167763629267

`A040040(n+1)+A040040(n+1)+A037074(n+1)`
-/

namespace A328493.P13360375167763629267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) + (A040040 (n + 1) + A037074 (n + 1))

end

end A328493.P13360375167763629267

namespace A328493

/-- `A040040(n+1)+A040040(n+1)+A037074(n+1)` -/
def P13360375167763629267.Spec : Prop :=
  ∀ n, P13360375167763629267.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P5032356390525379788

`A120876(n+1)+A120876(n+1)+A006512(n+1)`
-/

namespace A328493.P5032356390525379788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1) + (A120876 (n + 1) + A006512 (n + 1))

end

end A328493.P5032356390525379788

namespace A328493

/-- `A120876(n+1)+A120876(n+1)+A006512(n+1)` -/
def P5032356390525379788.Spec : Prop :=
  ∀ n, P5032356390525379788.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P7594202581959093581

`A014574(n+1)+A001359(n+1)*A006512(n+1)`
-/

namespace A328493.P7594202581959093581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + A001359 (n + 1) * A006512 (n + 1)

end

end A328493.P7594202581959093581

namespace A328493

/-- `A014574(n+1)+A001359(n+1)*A006512(n+1)` -/
def P7594202581959093581.Spec : Prop :=
  ∀ n, P7594202581959093581.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P5436573874512922260

`A075369(n+1)+A037074(n+1)/A006512(n+1)`
-/

namespace A328493.P5436573874512922260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075369 (n + 1) : ℚ) + (A037074 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ)

end

end A328493.P5436573874512922260

namespace A328493

/-- `A075369(n+1)+A037074(n+1)/A006512(n+1)` -/
def P5436573874512922260.Spec : Prop :=
  ∀ n, P5436573874512922260.a n = (A328493 (n + 1) : ℚ)

end A328493

/-! ## A328493.P154143479674062461

`A014574(n+1)+A126248(n+1)/A014574(n+1)`
-/

namespace A328493.P154143479674062461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) : ℚ) + (A126248 (n + 1) : ℚ) / (A014574 (n + 1) : ℚ)

end

end A328493.P154143479674062461

namespace A328493

/-- `A014574(n+1)+A126248(n+1)/A014574(n+1)` -/
def P154143479674062461.Spec : Prop :=
  ∀ n, P154143479674062461.a n = (A328493 (n + 1) : ℚ)

end A328493

/-! ## A328493.P2041105266179829847

`A037074(n+1)+A126248(n+1)/A037074(n+1)`
-/

namespace A328493.P2041105266179829847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037074 (n + 1) : ℚ) + (A126248 (n + 1) : ℚ) / (A037074 (n + 1) : ℚ)

end

end A328493.P2041105266179829847

namespace A328493

/-- `A037074(n+1)+A126248(n+1)/A037074(n+1)` -/
def P2041105266179829847.Spec : Prop :=
  ∀ n, P2041105266179829847.a n = (A328493 (n + 1) : ℚ)

end A328493

/-! ## A328493.P5008429039392380197

`(A126248(n+1)-A001359(n+1))/A001359(n+1)`
-/

namespace A328493.P5008429039392380197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126248 (n + 1) - A001359 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ)

end

end A328493.P5008429039392380197

namespace A328493

/-- `(A126248(n+1)-A001359(n+1))/A001359(n+1)` -/
def P5008429039392380197.Spec : Prop :=
  ∀ n, P5008429039392380197.a n = (A328493 (n + 1) : ℚ)

end A328493

/-! ## A328493.P18358978863973107541

`2*C(A067829(n+2), 2)-1`
-/

namespace A328493.P18358978863973107541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A067829 (n + 2)).toNat 2 : ℤ) - 1

end

end A328493.P18358978863973107541

namespace A328493

/-- `2*C(A067829(n+2), 2)-1` -/
def P18358978863973107541.Spec : Prop :=
  ∀ n, P18358978863973107541.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P4892632751904276404

`2*C(p?[A320391(n+1)], 2)-1`
-/

namespace A328493.P4892632751904276404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2 : ℤ) - 1

end

end A328493.P4892632751904276404

namespace A328493

/-- `2*C(p?[A320391(n+1)], 2)-1` -/
def P4892632751904276404.Spec : Prop :=
  ∀ n, P4892632751904276404.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P1913959416427397496

`A286624(A029707(n+1))`
-/

namespace A328493.P1913959416427397496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (A029707 (n + 1)).toNat

end

end A328493.P1913959416427397496

namespace A328493

/-- `A286624(A029707(n+1))` -/
def P1913959416427397496.Spec : Prop :=
  ∀ n, P1913959416427397496.a n = A328493 (n + 1)

end A328493

/-! ## A328493.P17846612301279974742

`∩[A286624(n+1), A306190(n+1)]`
-/

namespace A328493.P17846612301279974742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328493.P17846612301279974742

namespace A328493

/-- `∩[A286624(n+1), A306190(n+1)]` -/
def P17846612301279974742.Spec : Prop :=
  ∀ n, (P17846612301279974742.a n : ℤ) = A328493 (n + 1)

end A328493

/-! ## A328493.P3284590258892483465

`∩[A125202(n+1), A286624(n+1)]`
-/

namespace A328493.P3284590258892483465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328493.P3284590258892483465

namespace A328493

/-- `∩[A125202(n+1), A286624(n+1)]` -/
def P3284590258892483465.Spec : Prop :=
  ∀ n, (P3284590258892483465.a n : ℤ) = A328493 (n + 1)

end A328493

/-! ## A328493.P14120295054907536127

`A028387(A001359(n+1))`
-/

namespace A328493.P14120295054907536127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A001359 (n + 1)).toNat

end

end A328493.P14120295054907536127

namespace A328493

/-- `A028387(A001359(n+1))` -/
def P14120295054907536127.Spec : Prop :=
  ∀ n, P14120295054907536127.a n = A328493 (n + 1)

end A328493

/-!
# A328494: Constant term in the expansion of (1+x+y+1/x+1/y)^n without assuming commutativity.

The programs for A328494, there is no canonical definition to state claims against.
-/

/-! ## A328494.P9663714761502436491

`A175856(A149540(n))`
-/

namespace A328494.P9663714761502436491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175856 (A149540 n).toNat

end

end A328494.P9663714761502436491

/-! ## A328494.P17112850974571626129

`A124741(A060796(n+1))`
-/

namespace A328494.P17112850974571626129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A060796 (n + 1)).toNat

end

end A328494.P17112850974571626129

/-! ## A328494.P13069809361099868306

`A117922(or(A265527(n), A272687(n)))`
-/

namespace A328494.P13069809361099868306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (Int.lor (A265527 n) (A272687 n)).toNat

end

end A328494.P13069809361099868306

/-!
# A328496: Triangular array read by rows: for 1 <= k <= n, T(n,k) is the number of x in [1,k] such that gcd(n,x) > 1 and gcd(k,x) > 1.

The programs for A328496, there is no canonical definition to state claims against.
-/

/-! ## A328496.P10598302560257633175

`A001222(A050873(n+1))*A124778(n)`
-/

namespace A328496.P10598302560257633175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A050873 (n + 1)).toNat * A124778 n

end

end A328496.P10598302560257633175

/-! ## A328496.P8485936677088739864

`A001222(A050873(n+1)^A124778(n))`
-/

namespace A328496.P8485936677088739864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A050873 (n + 1) : ℚ) ^ (A124778 n : ℤ))).toNat

end

end A328496.P8485936677088739864

/-! ## A328496.P11489590292890814527

`A157226(A050873(n+1)^A124778(n))`
-/

namespace A328496.P11489590292890814527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157226 (SequenceMachineLib.roundAway ((A050873 (n + 1) : ℚ) ^ (A124778 n : ℤ))).toNat

end

end A328496.P11489590292890814527

/-! ## A328496.P15025411785515013527

`A157230(A050873(n+1)^A076081(n+1))`
-/

namespace A328496.P15025411785515013527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (SequenceMachineLib.roundAway ((A050873 (n + 1) : ℚ) ^ (A076081 (n + 1) : ℤ))).toNat

end

end A328496.P15025411785515013527

/-! ## A328496.P14848008409687415179

`A373126(C(n, A330733(n+1)))`
-/

namespace A328496.P14848008409687415179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373126 (Nat.choose n (A330733 (n + 1)).toNat)

end

end A328496.P14848008409687415179

/-!
# A328499: The number of primitive Pythagorean triangles with perimeter less than n.

The programs for A328499, there is no canonical definition to state claims against.
-/

/-! ## A328499.P7939752198204664412

`∑[A070109(n+1)]`
-/

namespace A328499.P7939752198204664412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328499.P7939752198204664412

/-! ## A328499.P13318904514649023090

`∑[char[A024364(n+1)-1]]`
-/

namespace A328499.P13318904514649023090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024364 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328499.P13318904514649023090

/-! ## A328499.P6788123948994344138

`∑[char[A322181(n+1)-1]]`
-/

namespace A328499.P6788123948994344138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322181 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328499.P6788123948994344138

/-! ## A328499.P10136391919329141440

`∑[A070109(Δ[n²]-n)²]`
-/

namespace A328499.P10136391919329141440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328499.P10136391919329141440

/-! ## A328499.P3362730989838776759

`∑[A078926(A152271(n))]`
-/

namespace A328499.P3362730989838776759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328499.P3362730989838776759

/-! ## A328499.P2482406915153436714

`∑[A078926(A057979(n)+1)]`
-/

namespace A328499.P2482406915153436714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (A057979 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328499.P2482406915153436714

/-! ## A328499.P4445969454057528519

`∑[char[A004273(A020886(n+1))]]`
-/

namespace A328499.P4445969454057528519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A020886 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328499.P4445969454057528519

/-! ## A328499.P15075449205352330916

`∑[char[A004273(A096892(n+1))]]`
-/

namespace A328499.P15075449205352330916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A096892 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328499.P15075449205352330916

/-! ## A328499.P7726225277432514159

`A001222(∏[A070109(n+1)+1])`
-/

namespace A328499.P7726225277432514159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328499.P7726225277432514159

/-! ## A328499.P6227277445169069932

`A000005(∏[A070109(n+1)+1])-1`
-/

namespace A328499.P6227277445169069932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A328499.P6227277445169069932

/-! ## A328499.P1593143437654400712

`∑{d}[∏[A070109(n+1)+1], A001221(#)]`
-/

namespace A328499.P1593143437654400712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A328499.P1593143437654400712

/-! ## A328499.P5981910727153145705

`A070109(n*A070109(n+1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A328499.P5981910727153145705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A070109 ((n : ℤ) * A070109 (n + 1) + 1).toNat + a (n - 1)

end

end A328499.P5981910727153145705

/-! ## A328499.P16650753837270239791

`A070109(n+1)+A070109(a(n-1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A328499.P16650753837270239791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A070109 (n + 1) + (A070109 (a (n - 1) + 1).toNat + a (n - 1))

end

end A328499.P16650753837270239791

