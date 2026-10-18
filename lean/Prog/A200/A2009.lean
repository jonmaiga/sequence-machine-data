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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A200900: Number of nX6 0..5 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200900, there is no canonical definition to state claims against.
-/

/-! ## A200900.P6770034034573549541

`A200902(A374007(n+1))`
-/

namespace A200900.P6770034034573549541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (A374007 (n + 1)).toNat

end

end A200900.P6770034034573549541

/-!
# A200901: Number of nX7 0..5 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200901, there is no canonical definition to state claims against.
-/

/-! ## A200901.P9363659460189319839

`A200902(A055999(n+4))`
-/

namespace A200901.P9363659460189319839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (A055999 (n + 4)).toNat

end

end A200901.P9363659460189319839

/-!
# A200903: A182589(n)/8.

The programs for A200903, there is no canonical definition to state claims against.
-/

/-! ## A200903.P11461594205211948971

`A182589(n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200903.P11461594205211948971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182589 (n + 1) : ℚ) / 8

end

end A200903.P11461594205211948971

/-! ## A200903.P6155030054112251451

`A092431(A006093(n+1))/Δ[A007504(n)]`
-/

namespace A200903.P6155030054112251451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092431 (A006093 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A200903.P6155030054112251451

/-! ## A200903.P7766587336079054272

`A092431(A006093(n+1))/p?[A259153(n)]`
-/

namespace A200903.P7766587336079054272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092431 (A006093 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A200903.P7766587336079054272

/-! ## A200903.P1414686320689146002

`A092431(A006093(n+1))/sqrt(A001248(n+1))`
-/

namespace A200903.P1414686320689146002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A092431 (A006093 (n + 1)).toNat : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)

end

end A200903.P1414686320689146002

/-! ## A200903.P9733127311181880238

`A092431(A006093(n+1))/p?[A018252(n+1)-7]`
-/

namespace A200903.P9733127311181880238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092431 (A006093 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A200903.P9733127311181880238

/-!
# A200904: E.g.f. A(x) satisfies: A(x) = x*(2*exp(A(x)) - exp(2*A(x))).

The programs for A200904, there is no canonical definition to state claims against.
-/

/-! ## A200904.P11869882176018095978

`p?[A285282(n+1)]-A071568(n)`
-/

namespace A200904.P11869882176018095978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A071568 n

end

end A200904.P11869882176018095978

/-!
# A200905: a(n) = 3*phi(n), where phi (A000010) is the Euler totient function.

The programs for A200905, the canonical program `A200905.P4388094907414912323` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200905 has offset 1).

The definition of A200905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200905.P15442909807173203958

`3*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A200905.P15442909807173203958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A200905.P15442909807173203958

namespace A200905

/-- `3*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P15442909807173203958.Spec : Prop :=
  ∀ n, P15442909807173203958.a n = (A200905 (n + 1) : ℚ)

end A200905

/-! ## A200905.P14749338334005343947

`Δ[3*A002088(n)]`
-/

namespace A200905.P14749338334005343947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200905.P14749338334005343947

namespace A200905

/-- `Δ[3*A002088(n)]` -/
def P14749338334005343947.Spec : Prop :=
  ∀ n, P14749338334005343947.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P18219687116975373542

`Δ[3*A005728(n)]`
-/

namespace A200905.P18219687116975373542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200905.P18219687116975373542

namespace A200905

/-- `Δ[3*A005728(n)]` -/
def P18219687116975373542.Spec : Prop :=
  ∀ n, P18219687116975373542.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P16128160975711994279

`3*A000010(n+1)`
-/

namespace A200905.P16128160975711994279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000010 (n + 1)

end

end A200905.P16128160975711994279

namespace A200905

/-- `3*A000010(n+1)` -/
def P16128160975711994279.Spec : Prop :=
  ∀ n, P16128160975711994279.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P9480571754190134211

`3*A349137(Δ[n²])`
-/

namespace A200905.P9480571754190134211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A200905.P9480571754190134211

namespace A200905

/-- `3*A349137(Δ[n²])` -/
def P9480571754190134211.Spec : Prop :=
  ∀ n, P9480571754190134211.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P13692399386305733092

`3*sqrt(A127473(n+1))`
-/

namespace A200905.P13692399386305733092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A127473 (n + 1) : ℝ)

end

end A200905.P13692399386305733092

namespace A200905

/-- `3*sqrt(A127473(n+1))` -/
def P13692399386305733092.Spec : Prop :=
  ∀ n, P13692399386305733092.a n = (A200905 (n + 1) : ℝ)

end A200905

/-! ## A200905.P18037086800940355038

`3*Δ[A100449(n)/4]`
-/

namespace A200905.P18037086800940355038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A200905.P18037086800940355038

namespace A200905

/-- `3*Δ[A100449(n)/4]` -/
def P18037086800940355038.Spec : Prop :=
  ∀ n, P18037086800940355038.a n = (A200905 (n + 1) : ℚ)

end A200905

/-! ## A200905.P14167248747078194443

`3*(A109606(n+1)+1)`
-/

namespace A200905.P14167248747078194443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A109606 (n + 1) + 1)

end

end A200905.P14167248747078194443

namespace A200905

/-- `3*(A109606(n+1)+1)` -/
def P14167248747078194443.Spec : Prop :=
  ∀ n, P14167248747078194443.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P1728732328743475150

`3*(A039649(n+1)-1)`
-/

namespace A200905.P1728732328743475150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A039649 (n + 1) - 1)

end

end A200905.P1728732328743475150

namespace A200905

/-- `3*(A039649(n+1)-1)` -/
def P1728732328743475150.Spec : Prop :=
  ∀ n, P1728732328743475150.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P4313104724393814289

`A064400(n+1)/(n+1)`
-/

namespace A200905.P4313104724393814289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064400 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A200905.P4313104724393814289

namespace A200905

/-- `A064400(n+1)/(n+1)` -/
def P4313104724393814289.Spec : Prop :=
  ∀ n, P4313104724393814289.a n = (A200905 (n + 1) : ℚ)

end A200905

/-! ## A200905.P1965615172884965439

`3*(n-A219428(n+1))`
-/

namespace A200905.P1965615172884965439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - A219428 (n + 1))

end

end A200905.P1965615172884965439

namespace A200905

/-- `3*(n-A219428(n+1))` -/
def P1965615172884965439.Spec : Prop :=
  ∀ n, P1965615172884965439.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P4843084936180659527

`3*(n+1-A051953(n+1))`
-/

namespace A200905.P4843084936180659527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) - A051953 (n + 1))

end

end A200905.P4843084936180659527

namespace A200905

/-- `3*(n+1-A051953(n+1))` -/
def P4843084936180659527.Spec : Prop :=
  ∀ n, P4843084936180659527.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P4388094907414912323

`3*(A121048(n+1)-(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A200905

/-- `3*(A121048(n+1)-(n+1))` -/
def P4388094907414912323.Spec : Prop :=
  ∀ n, P4388094907414912323.a n = A200905 (n + 1)

theorem P4388094907414912323.correct : P4388094907414912323.Spec := by
  intro n
  simp only [A200905, Nat.add_sub_cancel]

end A200905

/-! ## A200905.P11270842545857267299

`3/(n+1)*A002618(n+1)`
-/

namespace A200905.P11270842545857267299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A002618 (n + 1) : ℚ)

end

end A200905.P11270842545857267299

namespace A200905

/-- `3/(n+1)*A002618(n+1)` -/
def P11270842545857267299.Spec : Prop :=
  ∀ n, P11270842545857267299.a n = (A200905 (n + 1) : ℚ)

end A200905

/-! ## A200905.P9032307859075671198

`lcm(3, 3*A000010(2*n-(n-1)))`
-/

namespace A200905.P9032307859075671198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (3 * A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A200905.P9032307859075671198

namespace A200905

/-- `lcm(3, 3*A000010(2*n-(n-1)))` -/
def P9032307859075671198.Spec : Prop :=
  ∀ n, (P9032307859075671198.a n : ℤ) = A200905 (n + 1)

end A200905

/-! ## A200905.P9983632617407655524

`6*A000010(abs(n-1-2*n))/2`
-/

namespace A200905.P9983632617407655524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A000010 |(n : ℤ) - 1 - (2 * n : ℤ)|.toNat : ℚ) / 2)

end

end A200905.P9983632617407655524

namespace A200905

/-- `6*A000010(abs(n-1-2*n))/2` -/
def P9983632617407655524.Spec : Prop :=
  ∀ n, P9983632617407655524.a n = (A200905 (n + 1) : ℚ)

end A200905

/-! ## A200905.P2314298001420066690

`A008486(Δ[A002088(n)])`
-/

namespace A200905.P2314298001420066690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (n + 1) - f1 n).toNat

end

end A200905.P2314298001420066690

namespace A200905

/-- `A008486(Δ[A002088(n)])` -/
def P2314298001420066690.Spec : Prop :=
  ∀ n, P2314298001420066690.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P15344072709865349139

`A008486(Δ[A005728(n)])`
-/

namespace A200905.P15344072709865349139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (n + 1) - f1 n).toNat

end

end A200905.P15344072709865349139

namespace A200905

/-- `A008486(Δ[A005728(n)])` -/
def P15344072709865349139.Spec : Prop :=
  ∀ n, P15344072709865349139.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P8637456240662291171

`A008486(A000010(n+1))`
-/

namespace A200905.P8637456240662291171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A000010 (n + 1)).toNat

end

end A200905.P8637456240662291171

namespace A200905

/-- `A008486(A000010(n+1))` -/
def P8637456240662291171.Spec : Prop :=
  ∀ n, P8637456240662291171.a n = A200905 (n + 1)

end A200905

/-! ## A200905.P18236158977624383786

`A319452(A039649(n+1))`
-/

namespace A200905.P18236158977624383786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319452 (A039649 (n + 1)).toNat

end

end A200905.P18236158977624383786

namespace A200905

/-- `A319452(A039649(n+1))` -/
def P18236158977624383786.Spec : Prop :=
  ∀ n, P18236158977624383786.a n = A200905 (n + 1)

end A200905

/-!
# A200907: Primes of the form 3n^3-7.

The programs for A200907, there is no canonical definition to state claims against.
-/

/-! ## A200907.P9007233824830912771

`p?[3*n^3-7]`
-/

namespace A200907.P9007233824830912771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 3 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200907.P9007233824830912771

/-! ## A200907.P16025411344638915668

`xor(1, p?[3*n*n²-7]-1)`
-/

namespace A200907.P16025411344638915668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n * n ^ 2) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A200907.P16025411344638915668

/-! ## A200907.P17466692473871817346

`abs(p?[3*n*n²-7]-1)+1`
-/

namespace A200907.P17466692473871817346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n * n ^ 2) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A200907.P17466692473871817346

/-! ## A200907.P13352153356450848505

`or(1, p?[A117642(n)-7])`
-/

namespace A200907.P13352153356450848505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200907.P13352153356450848505

/-! ## A200907.P15676730069819540789

`p?[A117642(n)-7]%A201114(2*(n+1))`
-/

namespace A200907.P15676730069819540789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A201114 (2 * (n + 1)))

end

end A200907.P15676730069819540789

/-!
# A200908: Primes of the form 3*n^3-8.

The programs for A200908, there is no canonical definition to state claims against.
-/

/-! ## A200908.P10939531798215907454

`p?[3*n^3-8]`
-/

namespace A200908.P10939531798215907454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 3 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200908.P10939531798215907454

/-! ## A200908.P12202696707860676538

`∏{p}[p?[A117642(n)-8], #]`
-/

namespace A200908.P12202696707860676538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A200908.P12202696707860676538

/-! ## A200908.P16820315210880475570

`A007318(∑[n])*p?[A117642(n)-8]`
-/

namespace A200908.P16820315210880475570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A200908.P16820315210880475570

/-! ## A200908.P2502958629733444416

`p?[A117642(n)-8]/A007318(C(n, 2))`
-/

namespace A200908.P2502958629733444416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A200908.P2502958629733444416

/-! ## A200908.P18106096984993538277

`ceil(1/A007318(n))*p?[A117642(n)-8]`
-/

namespace A200908.P18106096984993538277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200908.P18106096984993538277

/-!
# A200909: Primes of the form 3*n^3-10.

The programs for A200909, there is no canonical definition to state claims against.
-/

/-! ## A200909.P7401594744847532388

`p?[3*n^3-10]`
-/

namespace A200909.P7401594744847532388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 3 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200909.P7401594744847532388

/-! ## A200909.P13386794745462465565

`or(1, p?[A117642(n)-10])`
-/

namespace A200909.P13386794745462465565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200909.P13386794745462465565

/-!
# A200910: Primes of the form 5*n^3-1.

The programs for A200910, there is no canonical definition to state claims against.
-/

/-! ## A200910.P660302205401688599

`p?[5*n^3-1]`
-/

namespace A200910.P660302205401688599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 3 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200910.P660302205401688599

/-! ## A200910.P6686479992212312156

`or(3, p?[5*n*n²-1])`
-/

namespace A200910.P6686479992212312156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n * n ^ 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200910.P6686479992212312156

/-! ## A200910.P6488484697039668215

`∑{d}[p?[5*n*n²-1], #]-1`
-/

namespace A200910.P6488484697039668215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n * n ^ 2) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A200910.P6488484697039668215

/-!
# A200911: Primes of the form 5*n^3-3.

The programs for A200911, there is no canonical definition to state claims against.
-/

/-! ## A200911.P2809044242355404109

`p?[5*n^3-3]`
-/

namespace A200911.P2809044242355404109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 3 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200911.P2809044242355404109

/-! ## A200911.P8249478462352528287

`∑{p}[p?[5*n*n²-3], A006530(#)]`
-/

namespace A200911.P8249478462352528287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n * n ^ 2) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A200911.P8249478462352528287

/-!
# A200912: Primes of the form 5*n^3-7.

The programs for A200912, there is no canonical definition to state claims against.
-/

/-! ## A200912.P7395204631926378116

`p?[5*n^3-7]`
-/

namespace A200912.P7395204631926378116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 3 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200912.P7395204631926378116

/-! ## A200912.P2258293425136140178

`or(1, p?[Δ[5*∑[n]²]-7]-1)`
-/

namespace A200912.P2258293425136140178
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A200912.P2258293425136140178

/-! ## A200912.P12402801116963302651

`xor(1, p?[n*A008706(n²)-7]-1)`
-/

namespace A200912.P12402801116963302651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008706 (n ^ 2) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A200912.P12402801116963302651

/-!
# A200913: Primes of the form 5n^3-9.

The programs for A200913, there is no canonical definition to state claims against.
-/

/-! ## A200913.P13987792823639585498

`p?[5*n^3-9]`
-/

namespace A200913.P13987792823639585498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 3 : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200913.P13987792823639585498

/-!
# A200914: Primes of the form 6n^3-7.

The programs for A200914, there is no canonical definition to state claims against.
-/

/-! ## A200914.P11938594876436909302

`p?[6*n^3-7]`
-/

namespace A200914.P11938594876436909302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 3 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200914.P11938594876436909302

/-! ## A200914.P17389655950738177773

`∏{p}[p?[6*n*n²-7], #]`
-/

namespace A200914.P17389655950738177773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n * n ^ 2) : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A200914.P17389655950738177773

/-!
# A200915: Primes of the form 7n^3-1.

The programs for A200915, there is no canonical definition to state claims against.
-/

/-! ## A200915.P5404244399938028905

`p?[7*n^3-1]`
-/

namespace A200915.P5404244399938028905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 3 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200915.P5404244399938028905

/-! ## A200915.P16792047986307306773

`∏{d}[p?[7*n*n²-1], #]`
-/

namespace A200915.P16792047986307306773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n * n ^ 2) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A200915.P16792047986307306773

/-! ## A200915.P2875478836824106825

`∑{p}[p?[7*n*n²-1], #]`
-/

namespace A200915.P2875478836824106825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n * n ^ 2) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A200915.P2875478836824106825

/-!
# A200916: Primes of the form 7n^3-2.

The programs for A200916, there is no canonical definition to state claims against.
-/

/-! ## A200916.P2391326471675829349

`p?[7*n^3-2]`
-/

namespace A200916.P2391326471675829349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 3 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200916.P2391326471675829349

/-! ## A200916.P10197567702702569622

`∏{d}[p?[7*n*n²-2], #]`
-/

namespace A200916.P10197567702702569622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n * n ^ 2) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A200916.P10197567702702569622

/-! ## A200916.P3821492858923382088

`or(1, p?[A309335(n)-A010131(n)])`
-/

namespace A200916.P3821492858923382088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309335 n - A010131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200916.P3821492858923382088

/-! ## A200916.P3410953629220100898

`A294234(n)+p?[A309335(n)-A010131(n)]`
-/

namespace A200916.P3410953629220100898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309335 n - A010131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200916.P3410953629220100898

/-!
# A200917: Primes of the form 7n^3-3.

The programs for A200917, there is no canonical definition to state claims against.
-/

/-! ## A200917.P2644909733673743074

`p?[7*n^3-3]`
-/

namespace A200917.P2644909733673743074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 3 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200917.P2644909733673743074

/-!
# A200919: Number of crossings on periodic braids with n strands such that all strands meet.

The programs for A200919, there is no canonical definition to state claims against.
-/

/-! ## A200919.P4989443186478211414

`floor(∑[(n/3)^(7/4)])`
-/

namespace A200919.P4989443186478211414
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 3 : ℝ) ^ ((7 : ℚ) / 4 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A200919.P4989443186478211414

/-! ## A200919.P9937334204860629786

`ceil(log2(A396645(n)))`
-/

namespace A200919.P9937334204860629786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A396645 n : ℝ)⌉

end

end A200919.P9937334204860629786

/-! ## A200919.P10614621901350205284

`round(log(A005195(n))²)`
-/

namespace A200919.P10614621901350205284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A005195 n : ℝ) ^ 2)

end

end A200919.P10614621901350205284

/-! ## A200919.P6154305560453544067

`A022554(floor(log(n!)))`
-/

namespace A200919.P6154305560453544067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 ⌊Real.log (Nat.factorial n : ℝ)⌋.toNat

end

end A200919.P6154305560453544067

/-! ## A200919.P3520495564622148072

`∑[∑[abs(A259525(n))]]`
-/

namespace A200919.P3520495564622148072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259525 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200919.P3520495564622148072

/-!
# A200924: Successive prime factors of 10^(10^100) - 10.

The programs for A200924, there is no canonical definition to state claims against.
-/

/-! ## A200924.P14116198816740874603

`p?[A125950(n)*A227246(n+1)]`
-/

namespace A200924.P14116198816740874603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125950 n * A227246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200924.P14116198816740874603

/-! ## A200924.P13055630461157436668

`A227246(A245028(n+1)%A227245(n+3))`
-/

namespace A200924.P13055630461157436668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227246 (Int.tmod (A245028 (n + 1)) (A227245 (n + 3))).toNat

end

end A200924.P13055630461157436668

/-! ## A200924.P15972684138910469048

`A227246(A062399(n+1))`
-/

namespace A200924.P15972684138910469048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227246 (A062399 (n + 1)).toNat

end

end A200924.P15972684138910469048

/-! ## A200924.P12631937709994265154

`A227246(A351870(n+1))`
-/

namespace A200924.P12631937709994265154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227246 (A351870 (n + 1)).toNat

end

end A200924.P12631937709994265154

/-!
# A200925: Numbers k such that Omega(k) = Omega(k - Omega(k)), where Omega = A001222.

The programs for A200925, the canonical program `A200925.P7850302567136902383` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200925 has offset 1).

The definition of A200925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200925.P7850302567136902383

`eq[A001222(n+1-A001222(n+1)), A001222(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A200925

/-- `eq[A001222(n+1-A001222(n+1)), A001222(n+1)]+1` -/
def P7850302567136902383.Spec : Prop :=
  ∀ n, (P7850302567136902383.a n : ℤ) = A200925 (n + 1)

theorem P7850302567136902383.correct : P7850302567136902383.Spec := by
  intro n
  simp only [A200925, Nat.add_sub_cancel]

end A200925

/-!
# A200926: Records in A085099.

The programs for A200926, there is no canonical definition to state claims against.
-/

/-! ## A200926.P13730917678409625866

`record[A085099(n+1)]`
-/

namespace A200926.P13730917678409625866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200926.P13730917678409625866

/-! ## A200926.P5028410530768771254

`record[sqrt(A059844(n+1))]`
-/

namespace A200926.P5028410530768771254
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059844 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200926.P5028410530768771254

/-! ## A200926.P3839321261312246397

`A085099(A275148(n+1))`
-/

namespace A200926.P3839321261312246397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A275148 (n + 1)).toNat

end

end A200926.P3839321261312246397

/-! ## A200926.P14093399627486323795

`A085099(A200948(n+1))%A064610(n+2)`
-/

namespace A200926.P14093399627486323795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085099 (A200948 (n + 1)).toNat) (A064610 (n + 2))

end

end A200926.P14093399627486323795

/-! ## A200926.P16067200766154181092

`A085099(A200948(n+1)*A340654(n+1))`
-/

namespace A200926.P16067200766154181092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A200948 (n + 1) * A340654 (n + 1)).toNat

end

end A200926.P16067200766154181092

/-!
# A200927: Difference between (least semiprime >= n) and (largest semiprime <= n).

The programs for A200927, there is no canonical definition to state claims against.
-/

/-! ## A200927.P6692504647912453651

`A056737(A140135(n+4))`
-/

namespace A200927.P6692504647912453651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A140135 (n + 4)).toNat

end

end A200927.P6692504647912453651

/-!
# A200928: Number of partitions of n such that the number of parts and the smallest part are coprime.

The programs for A200928, there is no canonical definition to state claims against.
-/

/-! ## A200928.P18042295649192807278

`A000041(n+1)-A201025(n+1)`
-/

namespace A200928.P18042295649192807278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A201025 (n + 1)

end

end A200928.P18042295649192807278

/-! ## A200928.P4862011283086164305

`A046682(n+3)-A225654(A036018(2*n))-A000700(n)`
-/

namespace A200928.P4862011283086164305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (n + 3) - A225654 (A036018 (2 * n)).toNat - A000700 n

end

end A200928.P4862011283086164305

/-! ## A200928.P13440370353007281366

`A325534(n+2)-A079208(A203491(n+1))`
-/

namespace A200928.P13440370353007281366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 2) - A079208 (A203491 (n + 1)).toNat

end

end A200928.P13440370353007281366

/-! ## A200928.P3175376971625261127

`A321729(n+3)-A122921(A000203(n+1))`
-/

namespace A200928.P3175376971625261127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321729 (n + 3) - A122921 (A000203 (n + 1)).toNat

end

end A200928.P3175376971625261127

/-! ## A200928.P1046191852488830363

`A325534(n+2)+A121373(A002412(2*(n+2)))`
-/

namespace A200928.P1046191852488830363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 2) + A121373 (A002412 (2 * (n + 2))).toNat

end

end A200928.P1046191852488830363

/-!
# A200929: Number of n X n 0..6 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200929, there is no canonical definition to state claims against.
-/

/-! ## A200929.P8369366106364924351

`A200935(∑[4*n]+1)`
-/

namespace A200929.P8369366106364924351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200929.P8369366106364924351

/-!
# A200930: Number of nX1 0..6 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200930, there is no canonical definition to state claims against.
-/

/-! ## A200930.P17624288791099264054

`A200942(∑[n+6]+10)`
-/

namespace A200930.P17624288791099264054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A200930.P17624288791099264054

/-! ## A200930.P17406710640716172804

`or(char[1], A200942(A046691(n+4)-1))`
-/

namespace A200930.P17406710640716172804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200942 (A046691 (n + 4) - 1).toNat)

end

end A200930.P17406710640716172804

/-! ## A200930.P3991685201430046249

`A200942(A000217(n+6)-5)+and(2, n²)`
-/

namespace A200930.P3991685201430046249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A000217 (n + 6) - 5).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A200930.P3991685201430046249

/-! ## A200930.P2800758757383564680

`A007318(C(2, n))*A200942(A046691(n+4)-1)`
-/

namespace A200930.P2800758757383564680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200942 (A046691 (n + 4) - 1).toNat

end

end A200930.P2800758757383564680

/-! ## A200930.P511181325719738517

`A007318(C(2, n))*A200942(A000217(n+6)-5)`
-/

namespace A200930.P511181325719738517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200942 (A000217 (n + 6) - 5).toNat

end

end A200930.P511181325719738517

/-!
# A200931: Number of nX2 0..6 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200931, there is no canonical definition to state claims against.
-/

/-! ## A200931.P10726733203195039073

`A200935(∑[n+1]+2)`
-/

namespace A200931.P10726733203195039073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200935 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200931.P10726733203195039073

/-! ## A200931.P631768662377226491

`A000027(A200935(∑[n+2]))`
-/

namespace A200931.P631768662377226491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A200935 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A200931.P631768662377226491

/-!
# A200932: Number of nX3 0..6 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200932, there is no canonical definition to state claims against.
-/

/-! ## A200932.P13596210941857423945

`A200935(∑[n+2]+4)`
-/

namespace A200932.P13596210941857423945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200935 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200932.P13596210941857423945

/-! ## A200932.P1868151242828411377

`A200935(A167614(n+1))+char[8]`
-/

namespace A200932.P1868151242828411377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200935 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200932.P1868151242828411377

/-! ## A200932.P4109825824926530826

`A225413(n)+A200935(A167614(n+1))`
-/

namespace A200932.P4109825824926530826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225413 n + A200935 (A167614 (n + 1)).toNat

end

end A200932.P4109825824926530826

/-! ## A200932.P7132340804662797582

`A326633(n)+A200935(A167614(n+1))`
-/

namespace A200932.P7132340804662797582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326633 n + A200935 (A167614 (n + 1)).toNat

end

end A200932.P7132340804662797582

/-!
# A200933: Number of nX4 0..6 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200933, there is no canonical definition to state claims against.
-/

/-! ## A200933.P13188763824839945845

`A200935(∑[n+3]+7)`
-/

namespace A200933.P13188763824839945845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200935 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200933.P13188763824839945845

/-! ## A200933.P13505232577563571993

`A200935(A141214(n+1))+A008590(A278648(n))`
-/

namespace A200933.P13505232577563571993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200935 (A141214 (n + 1)).toNat + A008590 (A278648 n).toNat

end

end A200933.P13505232577563571993

/-!
# A200934: Number of nX5 0..6 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200934, there is no canonical definition to state claims against.
-/

/-! ## A200934.P5741061776051724860

`A200935(Δ[A264443(n)])`
-/

namespace A200934.P5741061776051724860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200935 (f1 (n + 1) - f1 n).toNat

end

end A200934.P5741061776051724860

/-!
# A200936: Successive values x of solutions Mordell's elliptic curve x^3-y^2 = d contained points {x,y} with quadratic extension sqrt(2) over rationals.

The programs for A200936, there is no canonical definition to state claims against.
-/

/-! ## A200936.P16453967684175836590

`(A200937(n)²+A200938(n))^(1/3)`
-/

namespace A200936.P16453967684175836590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A200937 n ^ 2 + A200938 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A200936.P16453967684175836590

/-!
# A200937: Values y for infinite sequence x^3 - y^2 = d with increasing coefficient r = sqrt(x)/|d| or family of solutions Mordell curve with extension sqrt(2).

The programs for A200937, there is no canonical definition to state claims against.
-/

/-! ## A200937.P16629552316734579750

`sqrt(A200936(n)^3-A200938(n))`
-/

namespace A200937.P16629552316734579750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A200936 n ^ 3 - A200938 n : ℝ)

end

end A200937.P16629552316734579750

/-!
# A200939: Number of 0..3 arrays x(0..n-1) of n elements with nondecreasing average value and 0..3 occur with instance counts within one of each other.

The programs for A200939, there is no canonical definition to state claims against.
-/

/-! ## A200939.P572284948460216073

`A200942(∑[n+3]+1)`
-/

namespace A200939.P572284948460216073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200939.P572284948460216073

/-! ## A200939.P4033338524813739656

`A200942(A052905(n)+3)+char[35]`
-/

namespace A200939.P4033338524813739656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A052905 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200939.P4033338524813739656

/-! ## A200939.P7966836009027798259

`A007318(C(2, n))*A200942(A052905(n)+3)`
-/

namespace A200939.P7966836009027798259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200942 (A052905 n + 3).toNat

end

end A200939.P7966836009027798259

/-! ## A200939.P6153394023129963659

`A200942(A052905(n)+3)/A007318(C(n, 2))`
-/

namespace A200939.P6153394023129963659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200942 (A052905 n + 3).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A200939.P6153394023129963659

/-! ## A200939.P17274587287426326727

`A000108(C(n, n²))*A200942(A052905(n)+3)`
-/

namespace A200939.P17274587287426326727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * A200942 (A052905 n + 3).toNat

end

end A200939.P17274587287426326727

/-!
# A200940: Number of 0..4 arrays x(0..n-1) of n elements with nondecreasing average value and 0..4 occur with instance counts within one of each other.

The programs for A200940, there is no canonical definition to state claims against.
-/

/-! ## A200940.P3694701720968190433

`A200942(∑[n+4]+3)`
-/

namespace A200940.P3694701720968190433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200940.P3694701720968190433

/-! ## A200940.P1373292269775798619

`A200942(A027379(n+2))+char[41]`
-/

namespace A200940.P1373292269775798619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200940.P1373292269775798619

/-! ## A200940.P1955611053865741588

`A007318(C(n, 2))*A200942(A027379(n+2))`
-/

namespace A200940.P1955611053865741588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A200942 (A027379 (n + 2)).toNat

end

end A200940.P1955611053865741588

/-! ## A200940.P3794734480258480384

`A200942(A027379(n+2))^A007318(C(2, n))`
-/

namespace A200940.P3794734480258480384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200942 (A027379 (n + 2)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A200940.P3794734480258480384

/-! ## A200940.P6469265656638832107

`A000041(C(2, n+2))*A200942(A027379(n+2))`
-/

namespace A200940.P6469265656638832107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A200942 (A027379 (n + 2)).toNat

end

end A200940.P6469265656638832107

/-!
# A200941: Number of 0..7 arrays x(0..n-1) of n elements with nondecreasing average value and 0..7 occur with instance counts within one of each other.

The programs for A200941, there is no canonical definition to state claims against.
-/

/-! ## A200941.P3738685370741984073

`A200942(C(n+7, 2)+n+1)`
-/

namespace A200941.P3738685370741984073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (Nat.choose (n + 7) 2 + (n + 1))

end

end A200941.P3738685370741984073

/-! ## A200941.P964756818693784924

`A200942(Δ[n²]+∑[n+5]+16)`
-/

namespace A200941.P964756818693784924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 16 : ℕ) : ℤ)).toNat

end

end A200941.P964756818693784924

/-! ## A200941.P14342592742608036467

`or(char[3], A200942(A000124(n+7)-7))`
-/

namespace A200941.P14342592742608036467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200942 (A000124 (n + 7) - 7).toNat)

end

end A200941.P14342592742608036467

/-! ## A200941.P5736122661481304439

`A200942(A055999(n+4))+A025466(n)`
-/

namespace A200941.P5736122661481304439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A055999 (n + 4)).toNat + A025466 n

end

end A200941.P5736122661481304439

/-! ## A200941.P12599606410351719846

`A007318(∑[n])*A200942(A000124(n+7)-7)`
-/

namespace A200941.P12599606410351719846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A200942 (A000124 (n + 7) - 7).toNat

end

end A200941.P12599606410351719846

/-!
# A200943: Number of 0..n arrays x(0..3) of 4 elements with nondecreasing average value and 0..n occur with instance counts within one of each other.

The programs for A200943, there is no canonical definition to state claims against.
-/

/-! ## A200943.P4963214050175945370

`A200942(∑[n+3]+7)`
-/

namespace A200943.P4963214050175945370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200943.P4963214050175945370

/-! ## A200943.P4681511365212748723

`A200942(A000217(n+3)+4)+char[35]`
-/

namespace A200943.P4681511365212748723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200943.P4681511365212748723

/-! ## A200943.P6550017249276976969

`A200942(A167614(n+2)+1)^ceil(sin(n)²)`
-/

namespace A200943.P6550017249276976969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200942 (A167614 (n + 2) + 1).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A200943.P6550017249276976969

/-! ## A200943.P13826235617307292637

`A007318(C(n, 2))*A200942(A000217(n+3)+4)`
-/

namespace A200943.P13826235617307292637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A200942 (A000217 (n + 3) + 4).toNat

end

end A200943.P13826235617307292637

/-! ## A200943.P5239682741833532908

`A000108(C(2, n+2))*A200942(A000217(n+3)+4)`
-/

namespace A200943.P5239682741833532908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A200942 (A000217 (n + 3) + 4).toNat

end

end A200943.P5239682741833532908

/-!
# A200944: Number of 0..n arrays x(0..4) of 5 elements with nondecreasing average value and 0..n occur with instance counts within one of each other.

The programs for A200944, there is no canonical definition to state claims against.
-/

/-! ## A200944.P11526223524642742608

`A200942(C(n+5, 2)+5)`
-/

namespace A200944.P11526223524642742608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (Nat.choose (n + 5) 2 + 5)

end

end A200944.P11526223524642742608

/-! ## A200944.P5645826097279970315

`A200942(A167499(n+3))`
-/

namespace A200944.P5645826097279970315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A167499 (n + 3)).toNat

end

end A200944.P5645826097279970315

/-! ## A200944.P5861593119422005174

`A200942(A155212(n)+13)`
-/

namespace A200944.P5861593119422005174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A155212 n + 13).toNat

end

end A200944.P5861593119422005174

/-! ## A200944.P5717739225397180268

`A200942(A056000(n)+15)`
-/

namespace A200944.P5717739225397180268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A056000 n + 15).toNat

end

end A200944.P5717739225397180268

/-! ## A200944.P3870521323987044578

`A200942(A166136(n+3)-1)`
-/

namespace A200944.P3870521323987044578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A166136 (n + 3) - 1).toNat

end

end A200944.P3870521323987044578

/-!
# A200945: Number of 0..n arrays x(0..5) of 6 elements with nondecreasing average value and 0..n occur with instance counts within one of each other.

The programs for A200945, there is no canonical definition to state claims against.
-/

/-! ## A200945.P4002145168725629695

`A200942(∑[n+5]+16)`
-/

namespace A200945.P4002145168725629695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A200945.P4002145168725629695

/-! ## A200945.P15912258559921133289

`or(char[3], A200942(A000124(n+5)+5))`
-/

namespace A200945.P15912258559921133289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200942 (A000124 (n + 5) + 5).toNat)

end

end A200945.P15912258559921133289

/-! ## A200945.P2266937534018465576

`or(char[3], A200942(A000217(n+5)+6))`
-/

namespace A200945.P2266937534018465576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200942 (A000217 (n + 5) + 6).toNat)

end

end A200945.P2266937534018465576

/-! ## A200945.P2248061728194253599

`gcd(11, A007318(n))*A200942(A000217(n+5)+6)`
-/

namespace A200945.P2248061728194253599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A200942 (A000217 (n + 5) + 6).toNat

end

end A200945.P2248061728194253599

/-! ## A200945.P7065483874859088375

`A200942(A000217(n+5)+6)/A007318(floor(n/10))`
-/

namespace A200945.P7065483874859088375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200942 (A000217 (n + 5) + 6).toNat : ℚ) / (A007318 ⌊(n : ℚ) / 10⌋.toNat : ℚ)

end

end A200945.P7065483874859088375

/-!
# A200946: Number of 0..n arrays x(0..6) of 7 elements with nondecreasing average value and 0..n occur with instance counts within one of each other.

The programs for A200946, there is no canonical definition to state claims against.
-/

/-! ## A200946.P13232158972300423334

`A200942(A056119(n)+28)`
-/

namespace A200946.P13232158972300423334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A056119 n + 28).toNat

end

end A200946.P13232158972300423334

/-! ## A200946.P14502638330590479134

`A200942(A167614(n+5)+4)`
-/

namespace A200946.P14502638330590479134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A167614 (n + 5) + 4).toNat

end

end A200946.P14502638330590479134

/-! ## A200946.P7512736352249865212

`A200942(A000124(n+6)+6)`
-/

namespace A200946.P7512736352249865212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A000124 (n + 6) + 6).toNat

end

end A200946.P7512736352249865212

/-! ## A200946.P7454694126775968665

`A200942(A000096(n+5)+8)`
-/

namespace A200946.P7454694126775968665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A000096 (n + 5) + 8).toNat

end

end A200946.P7454694126775968665

/-! ## A200946.P17778277262976812977

`A200942(A000217(n+6)+7)`
-/

namespace A200946.P17778277262976812977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (A000217 (n + 6) + 7).toNat

end

end A200946.P17778277262976812977

/-!
# A200947: Sequence A007924 expressed in decimal.

The programs for A200947, there is no canonical definition to state claims against.
-/

/-! ## A200947.P15931422608015040535

`eq[A007088(n), A007924(A331835(n))]`
-/

namespace A200947.P15931422608015040535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007924 (A331835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A200947.P15931422608015040535

/-! ## A200947.P16149800232327579816

`lt[A007924(A331835(n)), A007088(n+1)]`
-/

namespace A200947.P16149800232327579816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007924 (A331835 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A200947.P16149800232327579816

/-! ## A200947.P10044393315426743902

`lt[A360434(n), A263270(A184117(3*n+1))]`
-/

namespace A200947.P10044393315426743902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A184117 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A200947.P10044393315426743902

/-! ## A200947.P2388371954424143014

`A003714(lt[A341723(3*n), 839])`
-/

namespace A200947.P2388371954424143014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341723 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  839

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A200947.P2388371954424143014

/-! ## A200947.P8963411740706837572

`lt[and(n, 2*n), A321765(A347457(n+1))]`
-/

namespace A200947.P8963411740706837572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (A347457 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A200947.P8963411740706837572

/-!
# A200948: Positions of records in A085099.

The programs for A200948, there is no canonical definition to state claims against.
-/

/-! ## A200948.P2082139438078536420

`A275148(A043317(n+1))`
-/

namespace A200948.P2082139438078536420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275148 (A043317 (n + 1)).toNat

end

end A200948.P2082139438078536420

/-! ## A200948.P18157767557202805924

`A275148(A044914(n+1))`
-/

namespace A200948.P18157767557202805924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275148 (A044914 (n + 1)).toNat

end

end A200948.P18157767557202805924

/-! ## A200948.P16169698676284350978

`A275148(A049872(n)+1)`
-/

namespace A200948.P16169698676284350978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275148 (A049872 n + 1).toNat

end

end A200948.P16169698676284350978

/-! ## A200948.P15030991595824111195

`A275148(A055648(n+1))`
-/

namespace A200948.P15030991595824111195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275148 (A055648 (n + 1)).toNat

end

end A200948.P15030991595824111195

/-! ## A200948.P2388418915697708498

`A275148(A062003(n)+1)`
-/

namespace A200948.P2388418915697708498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275148 (A062003 n + 1).toNat

end

end A200948.P2388418915697708498

/-!
# A200949: E.g.f. A(x) satisfies A''(x)+A'(x)=exp(A(x))+1.

The programs for A200949, there is no canonical definition to state claims against.
-/

/-! ## A200949.P14396313853464428266

`A014227(n)-∑[A356771(n)]`
-/

namespace A200949.P14396313853464428266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014227 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200949.P14396313853464428266

/-! ## A200949.P15872638133773761344

`and(A000732(n), A002635(A000732(n)))`
-/

namespace A200949.P15872638133773761344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000732 n) (A002635 (A000732 n).toNat)

end

end A200949.P15872638133773761344

/-!
# A200951: Primes of the form 7n^3-5.

The programs for A200951, there is no canonical definition to state claims against.
-/

/-! ## A200951.P10574531152623051160

`p?[7*n^3-5]`
-/

namespace A200951.P10574531152623051160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 3 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200951.P10574531152623051160

/-!
# A200954: Primes of the form 7n^3-9.

The programs for A200954, there is no canonical definition to state claims against.
-/

/-! ## A200954.P15734369549928321504

`p?[7*n^3-9]`
-/

namespace A200954.P15734369549928321504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 3 : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200954.P15734369549928321504

/-!
# A200955: Primes of the form 7n^3-10.

The programs for A200955, there is no canonical definition to state claims against.
-/

/-! ## A200955.P3141428043495394456

`p?[7*n^3-10]`
-/

namespace A200955.P3141428043495394456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 3 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200955.P3141428043495394456

/-!
# A200956: Primes of the form 8*k^3-3.

The programs for A200956, there is no canonical definition to state claims against.
-/

/-! ## A200956.P4638518555509022508

`A153974(n+1)^3-3`
-/

namespace A200956.P4638518555509022508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153974 (n + 1) ^ 3 - 3

end

end A200956.P4638518555509022508

/-! ## A200956.P14515083142735198118

`(2*A241808(n+1))^3-3`
-/

namespace A200956.P14515083142735198118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A241808 (n + 1)) ^ 3 - 3

end

end A200956.P14515083142735198118

/-! ## A200956.P7717235870614266350

`record[2*A241808(A133310(n))]^3-3`
-/

namespace A200956.P7717235870614266350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241808 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3 - 3

end

end A200956.P7717235870614266350

/-! ## A200956.P16815672794738187289

`(A241808(n+1)+record[A241808(A133310(n))])^3-3`
-/

namespace A200956.P16815672794738187289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A241808 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 3 - 3

end

end A200956.P16815672794738187289

/-! ## A200956.P3312051797948466845

`A016743(A241808(n+1))-3`
-/

namespace A200956.P3312051797948466845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (A241808 (n + 1)).toNat - 3

end

end A200956.P3312051797948466845

/-! ## A200956.P1199242438869265889

`A179094(A153974(n+1))`
-/

namespace A200956.P1199242438869265889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179094 (A153974 (n + 1)).toNat

end

end A200956.P1199242438869265889

/-! ## A200956.P15488520305928566307

`∩[A052276(n+1), A099228(n+1)]`
-/

namespace A200956.P15488520305928566307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200956.P15488520305928566307

/-! ## A200956.P3806270627702322144

`record[A153974(A193739(n))^3-3]`
-/

namespace A200956.P3806270627702322144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153974 (A193739 n).toNat ^ 3 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200956.P3806270627702322144

/-!
# A200957: Primes of the form 8n^3-5.

The programs for A200957, there is no canonical definition to state claims against.
-/

/-! ## A200957.P11720029046181077580

`p?[n^3-5]`
-/

namespace A200957.P11720029046181077580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200957.P11720029046181077580

/-! ## A200957.P16323161378349083452

`or(1, p?[n*n²-5])`
-/

namespace A200957.P16323161378349083452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200957.P16323161378349083452

/-! ## A200957.P9256901760563747612

`∏{p}[p?[n*n²-5], #]`
-/

namespace A200957.P9256901760563747612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A200957.P9256901760563747612

/-! ## A200957.P13976251539245477906

`xor(6, p?[n*n²-5]+2)`
-/

namespace A200957.P13976251539245477906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2)

end

end A200957.P13976251539245477906

/-! ## A200957.P5894626218046182979

`round(sqrt(p?[n*n²-5]²+1))`
-/

namespace A200957.P5894626218046182979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A200957.P5894626218046182979

/-!
# A200958: Primes of the form 8n^3-7.

The programs for A200958, there is no canonical definition to state claims against.
-/

/-! ## A200958.P8565602956369190668

`p?[n^3-7]`
-/

namespace A200958.P8565602956369190668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200958.P8565602956369190668

/-! ## A200958.P8464503078173962110

`or(1, p?[n*n²-7])`
-/

namespace A200958.P8464503078173962110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200958.P8464503078173962110

/-! ## A200958.P10940743400251414547

`∏{p}[p?[n*n²-7], #]`
-/

namespace A200958.P10940743400251414547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A200958.P10940743400251414547

/-! ## A200958.P1878615747254924615

`xor(1, p?[n*n²-7])+1`
-/

namespace A200958.P1878615747254924615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A200958.P1878615747254924615

/-! ## A200958.P11768570671079001020

`xor(1, p?[n*n²-7]-1)`
-/

namespace A200958.P11768570671079001020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A200958.P11768570671079001020

/-!
# A200959: Primes of the form 8n^3-9.

The programs for A200959, there is no canonical definition to state claims against.
-/

/-! ## A200959.P8407041146412541262

`p?[n^3-9]`
-/

namespace A200959.P8407041146412541262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200959.P8407041146412541262

/-! ## A200959.P2791748693693844314

`∏{d}[p?[n*n²-9], #]`
-/

namespace A200959.P2791748693693844314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A200959.P2791748693693844314

/-! ## A200959.P6322938510496751674

`∏{p}[p?[n*n²-9], #]`
-/

namespace A200959.P6322938510496751674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A200959.P6322938510496751674

/-! ## A200959.P15813186592808454823

`or(6, p?[abs(9-n*n²)])`
-/

namespace A200959.P15813186592808454823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - (n * n ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200959.P15813186592808454823

/-! ## A200959.P4865314062642563216

`or(p?[n*n²-9], char[1])`
-/

namespace A200959.P4865314062642563216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200959.P4865314062642563216

/-!
# A200960: Primes of the form 9n^3-1.

The programs for A200960, there is no canonical definition to state claims against.
-/

/-! ## A200960.P3600996558429041925

`p?[9*n^3-1]`
-/

namespace A200960.P3600996558429041925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 3 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200960.P3600996558429041925

/-! ## A200960.P15553108754135568193

`∑{p}[p?[n*(3*n)²-1], #]`
-/

namespace A200960.P15553108754135568193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A200960.P15553108754135568193

/-! ## A200960.P12349557285350838656

`p?[n*(3*n)²-1]-A326461(n)`
-/

namespace A200960.P12349557285350838656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A326461 n

end

end A200960.P12349557285350838656

/-!
# A200963: Primes of the form 9n^3-5.

The programs for A200963, there is no canonical definition to state claims against.
-/

/-! ## A200963.P11654619414088591443

`p?[9*n^3-5]`
-/

namespace A200963.P11654619414088591443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 3 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200963.P11654619414088591443

/-! ## A200963.P17129676245502414179

`∏{p}[p?[n*(3*n)²-5], #]`
-/

namespace A200963.P17129676245502414179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) ^ 2 : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A200963.P17129676245502414179

/-!
# A200964: Primes of the form 9n^3-7.

The programs for A200964, there is no canonical definition to state claims against.
-/

/-! ## A200964.P7110642051045063077

`p?[9*n^3-7]`
-/

namespace A200964.P7110642051045063077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 3 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200964.P7110642051045063077

/-!
# A200965: Triangle T(n,k) = coefficient of x^n in expansion of ((1-sqrt(1-4*x))/((1-x)*2))^k = sum(n>=k, T(n,k) * x^n).

The programs for A200965, there is no canonical definition to state claims against.
-/

/-! ## A200965.P11896728176361795153

`or(A055641(A006356(n)), A202710(n+1))`
-/

namespace A200965.P11896728176361795153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A006356 n).toNat) (A202710 (n + 1))

end

end A200965.P11896728176361795153

/-! ## A200965.P8193075742618431700

`A202710(n+1)+A055641(A006356(n)+1)`
-/

namespace A200965.P8193075742618431700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202710 (n + 1) + A055641 (A006356 n + 1).toNat

end

end A200965.P8193075742618431700

/-!
# A200966: Expansion (1-sqrt(1-4*x))/(2*(1-x^4-x)).

The programs for A200966, there is no canonical definition to state claims against.
-/

/-! ## A200966.P10544013094713066308

`A200542(n+1)+record[A125976(n)]`
-/

namespace A200966.P10544013094713066308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200542 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200966.P10544013094713066308

/-! ## A200966.P6017514077396393879

`A200542(A306853(n+1))+A014138(n)`
-/

namespace A200966.P6017514077396393879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200542 (A306853 (n + 1)).toNat + A014138 n

end

end A200966.P6017514077396393879

/-! ## A200966.P6152517172015444251

`∑[A157271(∑[A308240(n)])]`
-/

namespace A200966.P6152517172015444251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200966.P6152517172015444251

/-! ## A200966.P16939533908699753223

`A048766(A000142(n))+A014138(n)`
-/

namespace A200966.P16939533908699753223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000142 n).toNat + A014138 n

end

end A200966.P16939533908699753223

/-!
# A200967: Number of n X n 0..6 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200967, there is no canonical definition to state claims against.
-/

/-! ## A200967.P2455485142014619356

`A200974(∑[4*n]+1)`
-/

namespace A200967.P2455485142014619356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200967.P2455485142014619356

/-!
# A200968: Number of nX2 0..6 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200968, there is no canonical definition to state claims against.
-/

/-! ## A200968.P15800123070502836929

`A200974(∑[n+1]+2)`
-/

namespace A200968.P15800123070502836929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200968.P15800123070502836929

/-! ## A200968.P3409195148848182284

`A001492(2*(n+1))*A200974(A133263(n+1))`
-/

namespace A200968.P3409195148848182284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (2 * (n + 1)) * A200974 (A133263 (n + 1)).toNat

end

end A200968.P3409195148848182284

/-! ## A200968.P5649184848101146319

`A033999(2*(n+1))*A200974(A133263(n+1))`
-/

namespace A200968.P5649184848101146319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 1)) * A200974 (A133263 (n + 1)).toNat

end

end A200968.P5649184848101146319

/-! ## A200968.P15292038016916002093

`record[A200974(Δ[A003453(n+5)])]`
-/

namespace A200968.P15292038016916002093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200968.P15292038016916002093

/-! ## A200968.P590771523537169023

`A297330(n+1)+A200974(A000096(n+1))`
-/

namespace A200968.P590771523537169023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (n + 1) + A200974 (A000096 (n + 1)).toNat

end

end A200968.P590771523537169023

/-!
# A200969: Number of nX3 0..6 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200969, there is no canonical definition to state claims against.
-/

/-! ## A200969.P8749035614848653618

`A200974(∑[n+2]+4)`
-/

namespace A200969.P8749035614848653618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200969.P8749035614848653618

/-! ## A200969.P8128602541678106643

`record[A023531(n)*A200974(n+4)]`
-/

namespace A200969.P8128602541678106643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A200974 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200969.P8128602541678106643

/-! ## A200969.P18352683683650289626

`A200974(A167614(n+1))+A025439(n)`
-/

namespace A200969.P18352683683650289626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (A167614 (n + 1)).toNat + A025439 n

end

end A200969.P18352683683650289626

/-! ## A200969.P658210682480907852

`A200974(A167614(n+1))+A025469(n)`
-/

namespace A200969.P658210682480907852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (A167614 (n + 1)).toNat + A025469 n

end

end A200969.P658210682480907852

/-! ## A200969.P2648141392443492984

`A200974(A167614(n+1))+A137579(n)`
-/

namespace A200969.P2648141392443492984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (A167614 (n + 1)).toNat + A137579 n

end

end A200969.P2648141392443492984

/-!
# A200970: Number of nX4 0..6 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200970, there is no canonical definition to state claims against.
-/

/-! ## A200970.P14946351054494425694

`A200974(∑[n+3]+7)`
-/

namespace A200970.P14946351054494425694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200970.P14946351054494425694

/-! ## A200970.P17107571151077068721

`A370530(n)+A200974(A027379(n+2))`
-/

namespace A200970.P17107571151077068721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370530 n + A200974 (A027379 (n + 2)).toNat

end

end A200970.P17107571151077068721

/-! ## A200970.P9052368668780880898

`A045778(2*n+1)*A200974(A027379(n+2))`
-/

namespace A200970.P9052368668780880898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (2 * n + 1) * A200974 (A027379 (n + 2)).toNat

end

end A200970.P9052368668780880898

/-!
# A200971: Number of nX5 0..6 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200971, there is no canonical definition to state claims against.
-/

/-! ## A200971.P1343055880298075255

`A200974(A374005(n+1))`
-/

namespace A200971.P1343055880298075255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (A374005 (n + 1)).toNat

end

end A200971.P1343055880298075255

/-! ## A200971.P13580489942349699869

`A200974(A055998(n+2)+8)`
-/

namespace A200971.P13580489942349699869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (A055998 (n + 2) + 8).toNat

end

end A200971.P13580489942349699869

/-!
# A200972: Number of n X 6 0..6 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200972, there is no canonical definition to state claims against.
-/

/-! ## A200972.P5400896994354279456

`A200974(A374007(n+1))`
-/

namespace A200972.P5400896994354279456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200974 (A374007 (n + 1)).toNat

end

end A200972.P5400896994354279456

/-!
# A200975: Numbers on the diagonals in Ulam's spiral.

The programs for A200975, the canonical program `A200975.P6535631806562387238` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200975 has offset 1).

The definition of A200975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200975.P6535631806562387238

`(2*(n+1)*(n+3)+(-1)^(n+1)-4*sin(π*(n+1)/2)+7)/8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A200975

/-- `(2*(n+1)*(n+3)+(-1)^(n+1)-4*sin(π*(n+1)/2)+7)/8` -/
def P6535631806562387238.Spec : Prop :=
  ∀ n, P6535631806562387238.a n = (A200975 (n + 1) : ℝ)

end A200975

/-! ## A200975.P6753362607168775980

`(A249356(n+1)+7)/8`
-/

namespace A200975.P6753362607168775980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249356 (n + 1) + 7 : ℚ) / 8

end

end A200975.P6753362607168775980

namespace A200975

/-- `(A249356(n+1)+7)/8` -/
def P6753362607168775980.Spec : Prop :=
  ∀ n, P6753362607168775980.a n = (A200975 (n + 1) : ℚ)

end A200975

/-! ## A200975.P5128410578772197819

`or(1, ∑[∑[log2(gcd(2, n))]])`
-/

namespace A200975.P5128410578772197819
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A200975.P5128410578772197819

namespace A200975

/-- `or(1, ∑[∑[log2(gcd(2, n))]])` -/
def P5128410578772197819.Spec : Prop :=
  ∀ n, P5128410578772197819.a n = A200975 (n + 1)

end A200975

/-! ## A200975.P3940002852637894314

`or(1, ∑[∑[char[2*n]]])`
-/

namespace A200975.P3940002852637894314
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200975.P3940002852637894314

namespace A200975

/-- `or(1, ∑[∑[char[2*n]]])` -/
def P3940002852637894314.Spec : Prop :=
  ∀ n, (P3940002852637894314.a n : ℤ) = A200975 (n + 1)

end A200975

/-! ## A200975.P9906212381059516187

`floor(or(4, (n+2)²)/4)`
-/

namespace A200975.P9906212381059516187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 4 ((n + 2) ^ 2) : ℚ) / 4⌋

end

end A200975.P9906212381059516187

namespace A200975

/-- `floor(or(4, (n+2)²)/4)` -/
def P9906212381059516187.Spec : Prop :=
  ∀ n, P9906212381059516187.a n = A200975 (n + 1)

end A200975

/-! ## A200975.P4079337416187283479

`round(or(4, (n+2)²)/4)`
-/

namespace A200975.P4079337416187283479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 4 ((n + 2) ^ 2) : ℚ) / 4)

end

end A200975.P4079337416187283479

namespace A200975

/-- `round(or(4, (n+2)²)/4)` -/
def P4079337416187283479.Spec : Prop :=
  ∀ n, P4079337416187283479.a n = A200975 (n + 1)

end A200975

/-! ## A200975.P15862536920302993575

`(or(5, (n+2)²)-1)/4`
-/

namespace A200975.P15862536920302993575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 5 ((n + 2) ^ 2) : ℤ) - 1 : ℚ) / 4

end

end A200975.P15862536920302993575

namespace A200975

/-- `(or(5, (n+2)²)-1)/4` -/
def P15862536920302993575.Spec : Prop :=
  ∀ n, P15862536920302993575.a n = (A200975 (n + 1) : ℚ)

end A200975

/-! ## A200975.P9526710816703717262

`xor(1, or(5, (n+2)²))/4`
-/

namespace A200975.P9526710816703717262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (Nat.lor 5 ((n + 2) ^ 2)) : ℚ) / 4

end

end A200975.P9526710816703717262

namespace A200975

/-- `xor(1, or(5, (n+2)²))/4` -/
def P9526710816703717262.Spec : Prop :=
  ∀ n, P9526710816703717262.a n = (A200975 (n + 1) : ℚ)

end A200975

/-! ## A200975.P13924151988716162305

`∑[∑[∑[∑[2*n]]%4]]+1`
-/

namespace A200975.P13924151988716162305
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A200975.P13924151988716162305

namespace A200975

/-- `∑[∑[∑[∑[2*n]]%4]]+1` -/
def P13924151988716162305.Spec : Prop :=
  ∀ n, (P13924151988716162305.a n : ℤ) = A200975 (n + 1)

end A200975

/-! ## A200975.P18429006717282508365

`∑[∑[1-(-1)^∑[∑[n]]]]+1`
-/

namespace A200975.P18429006717282508365
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A200975.P18429006717282508365

namespace A200975

/-- `∑[∑[1-(-1)^∑[∑[n]]]]+1` -/
def P18429006717282508365.Spec : Prop :=
  ∀ n, P18429006717282508365.a n = A200975 (n + 1)

end A200975

/-! ## A200975.P16545571213481862251

`∑[a(n-4)+2]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A200975.P16545571213481862251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2, 2] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200975.P16545571213481862251

namespace A200975

/-- `∑[a(n-4)+2]` -/
def P16545571213481862251.Spec : Prop :=
  ∀ n, (P16545571213481862251.a n : ℤ) = A200975 (n + 1)

end A200975

/-! ## A200975.P11664859503386149430

`(∑[or(3, n-1)]+n+3)/2`
-/

namespace A200975.P11664859503386149430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ) : ℤ) : ℚ) / 2

end

end A200975.P11664859503386149430

namespace A200975

/-- `(∑[or(3, n-1)]+n+3)/2` -/
def P11664859503386149430.Spec : Prop :=
  ∀ n, P11664859503386149430.a n = (A200975 (n + 1) : ℚ)

end A200975

/-! ## A200975.P15473399545714552479

`∑[∑[floor(a(n-4))]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=0, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A200975.P15473399545714552479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 0, 0, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200975.P15473399545714552479

namespace A200975

/-- `∑[∑[floor(a(n-4))]]` -/
def P15473399545714552479.Spec : Prop :=
  ∀ n, (P15473399545714552479.a n : ℤ) = A200975 (n + 1)

end A200975

/-! ## A200975.P1962815535611015447

`∑[A004277(∑[char[4*n+1]])]`
-/

namespace A200975.P1962815535611015447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200975.P1962815535611015447

namespace A200975

/-- `∑[A004277(∑[char[4*n+1]])]` -/
def P1962815535611015447.Spec : Prop :=
  ∀ n, P1962815535611015447.a n = A200975 (n + 1)

end A200975

/-! ## A200975.P2993640345713151889

`xor(A087811(n+1), A166486(n))`
-/

namespace A200975.P2993640345713151889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087811 (n + 1)) (A166486 n)

end

end A200975.P2993640345713151889

namespace A200975

/-- `xor(A087811(n+1), A166486(n))` -/
def P2993640345713151889.Spec : Prop :=
  ∀ n, P2993640345713151889.a n = A200975 (n + 1)

end A200975

/-! ## A200975.P17312776476243661829

`∑[A092533(n+3)]`
-/

namespace A200975.P17312776476243661829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200975.P17312776476243661829

namespace A200975

/-- `∑[A092533(n+3)]` -/
def P17312776476243661829.Spec : Prop :=
  ∀ n, P17312776476243661829.a n = A200975 (n + 1)

end A200975

/-! ## A200975.P4428626945646108080

`A274583(A047262(n+1))`
-/

namespace A200975.P4428626945646108080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 (A047262 (n + 1)).toNat

end

end A200975.P4428626945646108080

namespace A200975

/-- `A274583(A047262(n+1))` -/
def P4428626945646108080.Spec : Prop :=
  ∀ n, P4428626945646108080.a n = A200975 (n + 1)

end A200975

/-! ## A200975.P16002984976079123319

`A357745(Δ[n²])`
-/

namespace A200975.P16002984976079123319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357745 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A200975.P16002984976079123319

namespace A200975

/-- `A357745(Δ[n²])` -/
def P16002984976079123319.Spec : Prop :=
  ∀ n, P16002984976079123319.a n = A200975 (n + 1)

end A200975

/-! ## A200975.P1543534056753396347

`A173151(A047409(n+2))`
-/

namespace A200975.P1543534056753396347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (A047409 (n + 2)).toNat

end

end A200975.P1543534056753396347

namespace A200975

/-- `A173151(A047409(n+2))` -/
def P1543534056753396347.Spec : Prop :=
  ∀ n, P1543534056753396347.a n = A200975 (n + 1)

end A200975

/-! ## A200975.P4070980066311208783

`record[A008819(n)-n/2]`
-/

namespace A200975.P4070980066311208783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008819 n : ℚ) - (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200975.P4070980066311208783

namespace A200975

/-- `record[A008819(n)-n/2]` -/
def P4070980066311208783.Spec : Prop :=
  ∀ n, P4070980066311208783.a n = (A200975 (n + 1) : ℚ)

end A200975

/-!
# A200976: Number of partitions of n such that each pair of parts (if any) has a common factor.

The programs for A200976, there is no canonical definition to state claims against.
-/

/-! ## A200976.P16634723279203026900

`A328673(n)-char[floor(n/(xor(n, n+1)+1))+1]`
-/

namespace A200976.P16634723279203026900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A200976.P16634723279203026900

/-! ## A200976.P5755992251143862985

`A328673(n)+A057428(n)`
-/

namespace A200976.P5755992251143862985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n + A057428 n

end

end A200976.P5755992251143862985

/-! ## A200976.P2355105908666454943

`A328673(n)-A057427(n)`
-/

namespace A200976.P2355105908666454943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - A057427 n

end

end A200976.P2355105908666454943

/-! ## A200976.P7462050996347422972

`A328673(n)-A062157(n)²`
-/

namespace A200976.P7462050996347422972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - A062157 n ^ 2

end

end A200976.P7462050996347422972

/-! ## A200976.P3150895899800659964

`A328673(n)-char[A133310(n)]`
-/

namespace A200976.P3150895899800659964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A200976.P3150895899800659964

/-! ## A200976.P9864257531223737975

`A328673(n)-char[A344180(n)]`
-/

namespace A200976.P9864257531223737975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A200976.P9864257531223737975

/-! ## A200976.P12698089966985697373

`A000007(n)+A328673(n)-1`
-/

namespace A200976.P12698089966985697373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A328673 n - 1)

end

end A200976.P12698089966985697373

/-! ## A200976.P8457035896953910520

`A328673(n)+A062157(2*n)`
-/

namespace A200976.P8457035896953910520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n + A062157 (2 * n)

end

end A200976.P8457035896953910520

/-! ## A200976.P4566135059226342146

`A328673(n)-n/A028310(n)`
-/

namespace A200976.P4566135059226342146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328673 n : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A200976.P4566135059226342146

/-! ## A200976.P8183580573779754615

`A328673(n)-char[A038722(n+1)]`
-/

namespace A200976.P8183580573779754615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A200976.P8183580573779754615

/-! ## A200976.P8063783594362716364

`A328673(n)-char[A260742(n+1)]`
-/

namespace A200976.P8063783594362716364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A200976.P8063783594362716364

/-! ## A200976.P18274295993150286075

`A328673(n)-A000040(n+1)%2`
-/

namespace A200976.P18274295993150286075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - Int.tmod (A000040 (n + 1)) 2

end

end A200976.P18274295993150286075

/-! ## A200976.P4868568186526363506

`A328673(n)-A328672(round(n/(n+1)))`
-/

namespace A200976.P4868568186526363506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - A328672 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A200976.P4868568186526363506

/-! ## A200976.P4082132969030189202

`A328673(n)-A325034(n²%(n+1)+1)`
-/

namespace A200976.P4082132969030189202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - A325034 (n ^ 2 % (n + 1) + 1)

end

end A200976.P4082132969030189202

/-! ## A200976.P13470792224336595064

`A337561(n+1)+A328673(n)-A337562(n+1)`
-/

namespace A200976.P13470792224336595064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 (n + 1) + (A328673 n - A337562 (n + 1))

end

end A200976.P13470792224336595064

/-! ## A200976.P18437072249631656066

`A328673(n)-A000007(A000007(n)*A328673(n))`
-/

namespace A200976.P18437072249631656066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - A000007 (A000007 n * A328673 n).toNat

end

end A200976.P18437072249631656066

/-! ## A200976.P12474799640234313553

`A328673(n)-A000007(A000007(n)/A328673(n))`
-/

namespace A200976.P12474799640234313553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A328673 n : ℚ))).toNat

end

end A200976.P12474799640234313553

/-! ## A200976.P7549501571749554263

`A328673(n)+A008683(A072865(A000217(n+1)+1))`
-/

namespace A200976.P7549501571749554263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n + A008683 (A072865 (A000217 (n + 1) + 1).toNat).toNat

end

end A200976.P7549501571749554263

/-!
# A200977: Smallest number expressible in the form a^2 + 2b^2, with positive integers a and b, in exactly n ways.

The programs for A200977, there is no canonical definition to state claims against.
-/

/-! ## A200977.P15199386596332682380

`A374294(2*(n+1))^A090182(A321121(n))`
-/

namespace A200977.P15199386596332682380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374294 (2 * (n + 1)) : ℚ) ^ (A090182 (A321121 n).toNat : ℤ)

end

end A200977.P15199386596332682380

/-! ## A200977.P15370153025982121572

`or(A036987(A318413(n)), A374294(2*(n+1)))`
-/

namespace A200977.P15370153025982121572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (A318413 n).toNat) (A374294 (2 * (n + 1)))

end

end A200977.P15370153025982121572

/-! ## A200977.P5812990766389110936

`A374294(2*(n+1))^A001263(A001263(n+1))`
-/

namespace A200977.P5812990766389110936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374294 (2 * (n + 1)) : ℚ) ^ (A001263 (A001263 (n + 1)).toNat : ℤ)

end

end A200977.P5812990766389110936

/-! ## A200977.P2450041780224168967

`or(A070088(A273873(n+1)), A374294(2*(n+1)))`
-/

namespace A200977.P2450041780224168967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070088 (A273873 (n + 1)).toNat) (A374294 (2 * (n + 1)))

end

end A200977.P2450041780224168967

/-! ## A200977.P3349696437324244591

`or(A036987(A374294(n+1)), A374294(2*n+2))`
-/

namespace A200977.P3349696437324244591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (A374294 (n + 1)).toNat) (A374294 (2 * n + 2))

end

end A200977.P3349696437324244591

/-!
# A200978: Number of ways to arrange n books on 3 consecutive shelves leaving none of the shelves empty.

The programs for A200978, the canonical program `A200978.P11147601800509877824` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200978 has offset 3).

The definition of A200978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200978.P11147601800509877824

`(n+3)!*(n+2)*(n+1)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A200978

/-- `(n+3)!*(n+2)*(n+1)/2` -/
def P11147601800509877824.Spec : Prop :=
  ∀ n, P11147601800509877824.a n = (A200978 (n + 3) : ℚ)

end A200978

/-! ## A200978.P6069167466660576156

`C((n+2)², 2)*∏[n+1]`
-/

namespace A200978.P6069167466660576156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2) ^ 2) 2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A200978.P6069167466660576156

namespace A200978

/-- `C((n+2)², 2)*∏[n+1]` -/
def P6069167466660576156.Spec : Prop :=
  ∀ n, (P6069167466660576156.a n : ℤ) = A200978 (n + 3)

end A200978

/-! ## A200978.P3130579331549710636

`∑[2*(n+1)]*∏[n+3]`
-/

namespace A200978.P3130579331549710636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A200978.P3130579331549710636

namespace A200978

/-- `∑[2*(n+1)]*∏[n+3]` -/
def P3130579331549710636.Spec : Prop :=
  ∀ n, (P3130579331549710636.a n : ℤ) = A200978 (n + 3)

end A200978

/-! ## A200978.P5244254438455555030

`lcm(2, (n+3)!*C(n+2, 2))`
-/

namespace A200978.P5244254438455555030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.factorial (n + 3) * Nat.choose (n + 2) 2)

end

end A200978.P5244254438455555030

namespace A200978

/-- `lcm(2, (n+3)!*C(n+2, 2))` -/
def P5244254438455555030.Spec : Prop :=
  ∀ n, (P5244254438455555030.a n : ℤ) = A200978 (n + 3)

end A200978

/-! ## A200978.P15367615216011727407

`(n+3)!/∑[n+1]^-1`
-/

namespace A200978.P15367615216011727407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A200978.P15367615216011727407

namespace A200978

/-- `(n+3)!/∑[n+1]^-1` -/
def P15367615216011727407.Spec : Prop :=
  ∀ n, P15367615216011727407.a n = (A200978 (n + 3) : ℚ)

end A200978

/-! ## A200978.P13161195245077252367

`(n+3)!+n*Δ[∏[n+3]]`
-/

namespace A200978.P13161195245077252367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℤ) + (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A200978.P13161195245077252367

namespace A200978

/-- `(n+3)!+n*Δ[∏[n+3]]` -/
def P13161195245077252367.Spec : Prop :=
  ∀ n, P13161195245077252367.a n = A200978 (n + 3)

end A200978

/-! ## A200978.P4182355929090397032

`lcm(3, (n+1)*(n+2)*∏[n+3])`
-/

namespace A200978.P4182355929090397032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 ((n + 1) * ((n + 2) * (∏ j ∈ Finset.range (n + 1), f1 j)))

end

end A200978.P4182355929090397032

namespace A200978

/-- `lcm(3, (n+1)*(n+2)*∏[n+3])` -/
def P4182355929090397032.Spec : Prop :=
  ∀ n, (P4182355929090397032.a n : ℤ) = A200978 (n + 3)

end A200978

/-! ## A200978.P15588034064753536581

`record[2*(n+1)*A185105(n+2)]`
-/

namespace A200978.P15588034064753536581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A185105 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200978.P15588034064753536581

namespace A200978

/-- `record[2*(n+1)*A185105(n+2)]` -/
def P15588034064753536581.Spec : Prop :=
  ∀ n, P15588034064753536581.a n = A200978 (n + 3)

end A200978

/-! ## A200978.P145730727897885710

`A055303(n+3)+A055303(n+3)`
-/

namespace A200978.P145730727897885710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055303 (n + 3) + A055303 (n + 3)

end

end A200978.P145730727897885710

namespace A200978

/-- `A055303(n+3)+A055303(n+3)` -/
def P145730727897885710.Spec : Prop :=
  ∀ n, P145730727897885710.a n = A200978 (n + 3)

end A200978

/-! ## A200978.P8059491813804329540

`A001804(n+3)-(A001286(n+3)+A001286(n+3))`
-/

namespace A200978.P8059491813804329540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001804 (n + 3) - (A001286 (n + 3) + A001286 (n + 3))

end

end A200978.P8059491813804329540

namespace A200978

/-- `A001804(n+3)-(A001286(n+3)+A001286(n+3))` -/
def P8059491813804329540.Spec : Prop :=
  ∀ n, P8059491813804329540.a n = A200978 (n + 3)

end A200978

/-!
# A200979: Number of ways to arrange n books on 4 consecutive bookshelves, leaving no shelf empty.

The programs for A200979, the canonical program `A200979.P11408448237782819167` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200979 has offset 4).

The definition of A200979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200979.P11408448237782819167

`(n+4)!*(n+3)*(n+2)*(n+1)/6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A200979

/-- `(n+4)!*(n+3)*(n+2)*(n+1)/6` -/
def P11408448237782819167.Spec : Prop :=
  ∀ n, P11408448237782819167.a n = (A200979 (n + 4) : ℚ)

end A200979

/-! ## A200979.P15001232550804283203

`(n+4)*A001805(n+3)`
-/

namespace A200979.P15001232550804283203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A001805 (n + 3)

end

end A200979.P15001232550804283203

namespace A200979

/-- `(n+4)*A001805(n+3)` -/
def P15001232550804283203.Spec : Prop :=
  ∀ n, P15001232550804283203.a n = A200979 (n + 4)

end A200979

/-! ## A200979.P7436048037445816731

`∏[A046092(n+3)/A004277(n)]`
-/

namespace A200979.P7436048037445816731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046092 (n + 3) : ℚ) / (A004277 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200979.P7436048037445816731

namespace A200979

/-- `∏[A046092(n+3)/A004277(n)]` -/
def P7436048037445816731.Spec : Prop :=
  ∀ n, P7436048037445816731.a n = (A200979 (n + 4) : ℚ)

end A200979

/-! ## A200979.P12156240841015423886

`A000142(n+1)*A253285(n+1)`
-/

namespace A200979.P12156240841015423886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A253285 (n + 1)

end

end A200979.P12156240841015423886

namespace A200979

/-- `A000142(n+1)*A253285(n+1)` -/
def P12156240841015423886.Spec : Prop :=
  ∀ n, P12156240841015423886.a n = A200979 (n + 4)

end A200979

/-! ## A200979.P3033749259842336759

`A156992(A374004(n+1))`
-/

namespace A200979.P3033749259842336759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156992 (A374004 (n + 1)).toNat

end

end A200979.P3033749259842336759

namespace A200979

/-- `A156992(A374004(n+1))` -/
def P3033749259842336759.Spec : Prop :=
  ∀ n, P3033749259842336759.a n = A200979 (n + 4)

end A200979

/-!
# A200981: Numbers k such that the sum of non-divisors of k is prime.

The programs for A200981, there is no canonical definition to state claims against.
-/

/-! ## A200981.P17088151774372541720

`eq[1, A003415(A024816(n+1))]+1`
-/

namespace A200981.P17088151774372541720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A024816 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200981.P17088151774372541720

/-! ## A200981.P13397307641169909736

`eq[2, A053989(A024816(n+1)+1)²+1]+1`
-/

namespace A200981.P13397307641169909736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A024816 (n + 1) + 1).toNat ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200981.P13397307641169909736

/-!
# A200982: Numbers k such that 1^(lambda(k)/2) + 2^(lambda(k)/2) + ... + (k - 1)^(lambda(k)/2) = 0 (mod k), where lambda is the Carmichael reduced totient function.

The programs for A200982, there is no canonical definition to state claims against.
-/

/-! ## A200982.P14894939238964376680

`eq[A056594(n), A102683(A269060(n+1))]`
-/

namespace A200982.P14894939238964376680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A269060 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A200982.P14894939238964376680

/-! ## A200982.P4938816204506217063

`eq[gcd(2, n), A118383(A036370(n))]`
-/

namespace A200982.P4938816204506217063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118383 (A036370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A200982.P4938816204506217063

/-! ## A200982.P15769930068710110568

`record[gcd(A031285(n), A046826(n+2))]`
-/

namespace A200982.P15769930068710110568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031285 n) (A046826 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200982.P15769930068710110568

/-! ## A200982.P15665493756303816209

`lt[A213384(n), A137264(3*n+1)]`
-/

namespace A200982.P15665493756303816209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137264 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A200982.P15665493756303816209

/-! ## A200982.P5909581573659870892

`eq[A000035(3*n+1), A337380(A299741(2*n+1))]`
-/

namespace A200982.P5909581573659870892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337380 (A299741 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A200982.P5909581573659870892

/-!
# A200983: Number of n X n 0..4 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200983, there is no canonical definition to state claims against.
-/

/-! ## A200983.P4601563572522444884

`A200990(∑[4*n]+1)`
-/

namespace A200983.P4601563572522444884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200983.P4601563572522444884

/-! ## A200983.P10054734084278073949

`record[A200990(∑[A266981(n)])]`
-/

namespace A200983.P10054734084278073949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200983.P10054734084278073949

/-! ## A200983.P12183102997322183437

`record[A200990(A330613(n+1))]`
-/

namespace A200983.P12183102997322183437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200983.P12183102997322183437

/-! ## A200983.P5891564025395138391

`A200990(A001844(n))+char[10]`
-/

namespace A200983.P5891564025395138391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200983.P5891564025395138391

/-! ## A200983.P12805969489669165421

`record[A200990(n*A008619(n)+1)]`
-/

namespace A200983.P12805969489669165421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 ((n : ℤ) * A008619 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200983.P12805969489669165421

/-!
# A200984: Number of nX2 0..4 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200984, there is no canonical definition to state claims against.
-/

/-! ## A200984.P6133501444299423068

`A200990(∑[n+1]+2)`
-/

namespace A200984.P6133501444299423068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200984.P6133501444299423068

/-! ## A200984.P1609172329706849067

`or(char[3], A200990(A000096(n)+3))`
-/

namespace A200984.P1609172329706849067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200990 (A000096 n + 3).toNat)

end

end A200984.P1609172329706849067

/-! ## A200984.P4795349638199894568

`∑{d}[A200990(A000096(n)+3), A000010(#)]`
-/

namespace A200984.P4795349638199894568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A000096 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A200984.P4795349638199894568

/-! ## A200984.P5250264533851811645

`A007318(C(2, n))*A200990(A000096(n)+3)`
-/

namespace A200984.P5250264533851811645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200990 (A000096 n + 3).toNat

end

end A200984.P5250264533851811645

/-! ## A200984.P2360597081100066190

`A000108(C(2, n+2))*A200990(A000096(n)+3)`
-/

namespace A200984.P2360597081100066190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A200990 (A000096 n + 3).toNat

end

end A200984.P2360597081100066190

/-!
# A200985: Number of nX3 0..4 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200985, there is no canonical definition to state claims against.
-/

/-! ## A200985.P10321020258874669796

`A200990(∑[n+2]+4)`
-/

namespace A200985.P10321020258874669796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200985.P10321020258874669796

/-! ## A200985.P15616936183095261914

`A200990(A167614(n+1))+char[18]`
-/

namespace A200985.P15616936183095261914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200985.P15616936183095261914

/-! ## A200985.P7657557580219951341

`A200990(A167614(n+1))%A020454(n+1)`
-/

namespace A200985.P7657557580219951341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200990 (A167614 (n + 1)).toNat) (A020454 (n + 1))

end

end A200985.P7657557580219951341

/-! ## A200985.P13167791676187194557

`or(A200990(A167614(n+1)), A363131(n+1))`
-/

namespace A200985.P13167791676187194557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A200990 (A167614 (n + 1)).toNat) (A363131 (n + 1))

end

end A200985.P13167791676187194557

/-! ## A200985.P4529551799935779654

`A007318(C(2, n))*A200990(A167614(n+1))`
-/

namespace A200985.P4529551799935779654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200990 (A167614 (n + 1)).toNat

end

end A200985.P4529551799935779654

/-!
# A200986: Number of n X 4 0..4 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200986, there is no canonical definition to state claims against.
-/

/-! ## A200986.P10606724292681212991

`A200990(∑[n+3]+7)`
-/

namespace A200986.P10606724292681212991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200986.P10606724292681212991

/-! ## A200986.P10367021444766422595

`A200990(A000217(n+3)+4)+char[17]`
-/

namespace A200986.P10367021444766422595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200986.P10367021444766422595

/-! ## A200986.P9604664128824748195

`or(char[2], A200990(A000124(n+3)+3))`
-/

namespace A200986.P9604664128824748195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200990 (A000124 (n + 3) + 3).toNat)

end

end A200986.P9604664128824748195

/-! ## A200986.P9638396117167734007

`A200990(A000217(n+3)+4)%A000108(n+6)`
-/

namespace A200986.P9638396117167734007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200990 (A000217 (n + 3) + 4).toNat) (A000108 (n + 6))

end

end A200986.P9638396117167734007

/-! ## A200986.P3328293225465515299

`A007318(C(2, n))*A200990(A000217(n+3)+4)`
-/

namespace A200986.P3328293225465515299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200990 (A000217 (n + 3) + 4).toNat

end

end A200986.P3328293225465515299

/-!
# A200987: Number of nX5 0..4 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200987, there is no canonical definition to state claims against.
-/

/-! ## A200987.P443702178301127180

`A200990(∑[n+6]+9-2*n)`
-/

namespace A200987.P443702178301127180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (∑ j ∈ Finset.range (n + 1), f1 j + 9 - 2 * n)

end

end A200987.P443702178301127180

/-! ## A200987.P14861390872576860338

`A200990(A056000(n)+15)+char[16]`
-/

namespace A200987.P14861390872576860338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200987.P14861390872576860338

/-! ## A200987.P11946842951419256153

`A200990(A000096(n+3)+6)+char[20]`
-/

namespace A200987.P11946842951419256153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A000096 (n + 3) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200987.P11946842951419256153

/-! ## A200987.P14634472839712428988

`A007318(C(2, n))*A200990(A056000(n)+15)`
-/

namespace A200987.P14634472839712428988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200990 (A056000 n + 15).toNat

end

end A200987.P14634472839712428988

/-! ## A200987.P10180153823037042903

`A007318(C(2, n))*A200990(A000096(n+3)+6)`
-/

namespace A200987.P10180153823037042903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200990 (A000096 (n + 3) + 6).toNat

end

end A200987.P10180153823037042903

/-!
# A200988: Number of nX6 0..4 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200988, there is no canonical definition to state claims against.
-/

/-! ## A200988.P17893873632117904151

`A200990(A166136(n+4))`
-/

namespace A200988.P17893873632117904151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A166136 (n + 4)).toNat

end

end A200988.P17893873632117904151

/-! ## A200988.P10387426091303682442

`A200990(A056115(n)+21)`
-/

namespace A200988.P10387426091303682442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A056115 n + 21).toNat

end

end A200988.P10387426091303682442

/-! ## A200988.P6202689015365888753

`A200990(∑[A020710(n)]+16)`
-/

namespace A200988.P6202689015365888753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A200988.P6202689015365888753

/-! ## A200988.P16237028463029521590

`A200990(A167499(n+4)+1)`
-/

namespace A200988.P16237028463029521590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A167499 (n + 4) + 1).toNat

end

end A200988.P16237028463029521590

/-! ## A200988.P12831162611493380276

`A200990(A167614(n+4)+3)`
-/

namespace A200988.P12831162611493380276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A167614 (n + 4) + 3).toNat

end

end A200988.P12831162611493380276

/-!
# A200989: Number of nX7 0..4 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200989, there is no canonical definition to state claims against.
-/

/-! ## A200989.P7164191786919699165

`A200990(A056119(n)+28)`
-/

namespace A200989.P7164191786919699165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A056119 n + 28).toNat

end

end A200989.P7164191786919699165

/-! ## A200989.P18325531232373460105

`A200990(eq[11, A066657(n)])`
-/

namespace A200989.P18325531232373460105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200989.P18325531232373460105

/-! ## A200989.P1859125663243614333

`A200990(A166136(n+5)+1)`
-/

namespace A200989.P1859125663243614333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A166136 (n + 5) + 1).toNat

end

end A200989.P1859125663243614333

/-! ## A200989.P325945356638262370

`A200990(A167499(n+5)+2)`
-/

namespace A200989.P325945356638262370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A167499 (n + 5) + 2).toNat

end

end A200989.P325945356638262370

/-! ## A200989.P16037293512272696046

`A200990(A167614(n+5)+4)`
-/

namespace A200989.P16037293512272696046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200990 (A167614 (n + 5) + 4).toNat

end

end A200989.P16037293512272696046

/-!
# A200992: Primes p of form n^2 + 1 such that p+2 and p+6 are also prime.

The programs for A200992, there is no canonical definition to state claims against.
-/

/-! ## A200992.P1186888104719289490

`A182238(n+1)²+1`
-/

namespace A200992.P1186888104719289490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182238 (n + 1) ^ 2 + 1

end

end A200992.P1186888104719289490

/-! ## A200992.P11309196023867706553

`A182238(2*n-n+1)*A182238(n+1)+1`
-/

namespace A200992.P11309196023867706553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182238 ((2 * n : ℤ) - (n : ℤ) + 1).toNat * A182238 (n + 1) + 1

end

end A200992.P11309196023867706553

/-! ## A200992.P11016113888181284004

`A266227(2*n+3)+A182238(n+1)*A182238(n+1)`
-/

namespace A200992.P11016113888181284004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (2 * n + 3) + A182238 (n + 1) * A182238 (n + 1)

end

end A200992.P11016113888181284004

/-! ## A200992.P18263318669489057472

`A131843(A046092(n))*A182238(n+1)*A182238(n+1)+1`
-/

namespace A200992.P18263318669489057472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 (A046092 n).toNat * A182238 (n + 1) * A182238 (n + 1) + 1

end

end A200992.P18263318669489057472

/-! ## A200992.P15614770115914056460

`A007318(∑[n])+A182238(n+1)*A182238(n+1)`
-/

namespace A200992.P15614770115914056460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + A182238 (n + 1) * A182238 (n + 1)

end

end A200992.P15614770115914056460

/-! ## A200992.P16723636137802809018

`∩[A080149(n+1), A114270(n+1)]²+1`
-/

namespace A200992.P16723636137802809018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A200992.P16723636137802809018

/-!
# A200993: Triangular numbers, T(m), that are two-thirds of another triangular number; T(m) such that 3*T(m) = 2*T(k) for some k.

The programs for A200993, the canonical program `A200993.P17553187784047427091` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200993 has offset 0).

The definition of A200993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200993.P17553187784047427091

`99*a(n-1)-99*a(n-2)+a(n-3)` with `a(0)=0, a(1)=10, a(2)=990`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A200993

/-- `99*a(n-1)-99*a(n-2)+a(n-3)` -/
def P17553187784047427091.Spec : Prop :=
  ∀ n, P17553187784047427091.a n = A200993 n

theorem P17553187784047427091.correct : P17553187784047427091.Spec := by
  intro n
  simp only [A200993]

end A200993

/-! ## A200993.P14847271155505646334

`∑[98*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=10`
-/

namespace A200993.P14847271155505646334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  98 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200993.P14847271155505646334

namespace A200993

/-- `∑[98*a(n-1)-a(n-2)]` -/
def P14847271155505646334.Spec : Prop :=
  ∀ n, P14847271155505646334.a n = A200993 n

end A200993

/-! ## A200993.P4973184192507206552

`2*A352181(n)`
-/

namespace A200993.P4973184192507206552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352181 n

end

end A200993.P4973184192507206552

namespace A200993

/-- `2*A352181(n)` -/
def P4973184192507206552.Spec : Prop :=
  ∀ n, P4973184192507206552.a n = A200993 n

end A200993

/-! ## A200993.P5936450992948218382

`A352182(n)/3`
-/

namespace A200993.P5936450992948218382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352182 n : ℚ) / 3

end

end A200993.P5936450992948218382

namespace A200993

/-- `A352182(n)/3` -/
def P5936450992948218382.Spec : Prop :=
  ∀ n, P5936450992948218382.a n = (A200993 n : ℚ)

end A200993

/-! ## A200993.P11361954401303446042

`A045502(n)/4`
-/

namespace A200993.P11361954401303446042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045502 n : ℚ) / 4

end

end A200993.P11361954401303446042

namespace A200993

/-- `A045502(n)/4` -/
def P11361954401303446042.Spec : Prop :=
  ∀ n, P11361954401303446042.a n = (A200993 n : ℚ)

end A200993

/-! ## A200993.P18284280560577186554

`10*A278620(n)`
-/

namespace A200993.P18284280560577186554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A278620 n

end

end A200993.P18284280560577186554

namespace A200993

/-- `10*A278620(n)` -/
def P18284280560577186554.Spec : Prop :=
  ∀ n, P18284280560577186554.a n = A200993 n

end A200993

/-! ## A200993.P1550956091321857384

`∑[A168520(n+1)]`
-/

namespace A200993.P1550956091321857384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200993.P1550956091321857384

namespace A200993

/-- `∑[A168520(n+1)]` -/
def P1550956091321857384.Spec : Prop :=
  ∀ n, P1550956091321857384.a n = A200993 n

end A200993

/-! ## A200993.P7052937572408695978

`∑[A004189(2*n)]`
-/

namespace A200993.P7052937572408695978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200993.P7052937572408695978

namespace A200993

/-- `∑[A004189(2*n)]` -/
def P7052937572408695978.Spec : Prop :=
  ∀ n, P7052937572408695978.a n = A200993 n

end A200993

/-! ## A200993.P14481806409004342099

`∑[A072818(n)/2]`
-/

namespace A200993.P14481806409004342099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072818 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200993.P14481806409004342099

namespace A200993

/-- `∑[A072818(n)/2]` -/
def P14481806409004342099.Spec : Prop :=
  ∀ n, P14481806409004342099.a n = (A200993 n : ℚ)

end A200993

/-! ## A200993.P2053491250599197151

`floor(A269552(n)/20)`
-/

namespace A200993.P2053491250599197151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269552 n : ℚ) / 20⌋

end

end A200993.P2053491250599197151

namespace A200993

/-- `floor(A269552(n)/20)` -/
def P2053491250599197151.Spec : Prop :=
  ∀ n, P2053491250599197151.a n = A200993 n

end A200993

/-!
# A200994: Triangular numbers, T(m), that are three-halves of another triangular number; T(m) such that 2*T(m) = 3*T(k) for some k.

The programs for A200994, there is no canonical definition to state claims against.
-/

/-! ## A200994.P872843654098012796

`C(∑[10*a(n-1)-a(n-2)], 2)` with `a(0)=1, a(1)=5`
-/

namespace A200994.P872843654098012796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A200994.P872843654098012796

/-! ## A200994.P3065511847165743658

`3*A352181(n)`
-/

namespace A200994.P3065511847165743658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A352181 n

end

end A200994.P3065511847165743658

/-! ## A200994.P10807882181095569365

`A352182(n)/2`
-/

namespace A200994.P10807882181095569365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352182 n : ℚ) / 2

end

end A200994.P10807882181095569365

/-! ## A200994.P4937194724204621500

`15*A278620(n)`
-/

namespace A200994.P4937194724204621500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A278620 n

end

end A200994.P4937194724204621500

/-! ## A200994.P14022170404882034806

`C(∑[A001079(n)], 2)`
-/

namespace A200994.P14022170404882034806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A200994.P14022170404882034806

/-! ## A200994.P13387030165922273062

`3/2*A200993(n)`
-/

namespace A200994.P13387030165922273062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A200993 n : ℚ)

end

end A200994.P13387030165922273062

/-! ## A200994.P3697691620144419730

`C(A087125(n)+1, 2)`
-/

namespace A200994.P3697691620144419730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087125 n + 1).toNat 2

end

end A200994.P3697691620144419730

/-! ## A200994.P15814359617865441949

`C(A253475(n+1), 2)`
-/

namespace A200994.P15814359617865441949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A253475 (n + 1)).toNat 2

end

end A200994.P15814359617865441949

/-! ## A200994.P11625806965363787812

`floor(A006244(n+1)/6)`
-/

namespace A200994.P11625806965363787812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006244 (n + 1) : ℚ) / 6⌋

end

end A200994.P11625806965363787812

/-! ## A200994.P10944441681954928174

`floor(A006061(n+1)/8)`
-/

namespace A200994.P10944441681954928174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006061 (n + 1) : ℚ) / 8⌋

end

end A200994.P10944441681954928174

/-!
# A200995: Numbers not expressible as a product of Lucas numbers.

The programs for A200995, there is no canonical definition to state claims against.
-/

/-! ## A200995.P7062440342529718766

`comp[A200381(n+1)-1]+1`
-/

namespace A200995.P7062440342529718766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200381 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A200995.P7062440342529718766

/-! ## A200995.P11040070873361672104

`eq[0, A308263(n+1)]+1`
-/

namespace A200995.P11040070873361672104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200995.P11040070873361672104

/-! ## A200995.P2893710866783731284

`eq[0, A308263(A028310(n))]`
-/

namespace A200995.P2893710866783731284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308263 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A200995.P2893710866783731284

/-! ## A200995.P4716461910099784092

`A020725(eq[0, A308263(n+1)])`
-/

namespace A200995.P4716461910099784092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200995.P4716461910099784092

/-! ## A200995.P5928428447769236718

`A065475(eq[0, A308263(n+1)])`
-/

namespace A200995.P5928428447769236718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200995.P5928428447769236718

/-!
# A200996: Least upper limit for numbers u and v such that u*n-1 and v*n+1 are both prime, u and v not necessarily distinct.

The programs for A200996, there is no canonical definition to state claims against.
-/

/-! ## A200996.P370413844201851243

`A034693(n+1)+A053989(n+1)-A103689(n+1)`
-/

namespace A200996.P370413844201851243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1) + (A053989 (n + 1) - A103689 (n + 1))

end

end A200996.P370413844201851243

/-! ## A200996.P6495521913183424639

`A053989(n+1)+A087377(∑[n]+1)-A103689(n+1)`
-/

namespace A200996.P6495521913183424639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) + (A087377 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A103689 (n + 1))

end

end A200996.P6495521913183424639

/-! ## A200996.P12876620616735834442

`lcm(A053989(n+1), A211994(A000124(n)))`
-/

namespace A200996.P12876620616735834442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053989 (n + 1)) (A211994 (A000124 n).toNat)

end

end A200996.P12876620616735834442

/-! ## A200996.P15780258615045910008

`lcm((A038700(n+1)+1)/(n+1), A050412(16^A040076(n+1)))`
-/

namespace A200996.P15780258615045910008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A038700 (n + 1) + 1 : ℚ) / (n + 1 : ℚ))) (A050412 (SequenceMachineLib.roundAway ((16 : ℚ) ^ (A040076 (n + 1) : ℤ))).toNat)

end

end A200996.P15780258615045910008

/-! ## A200996.P9920121452920761993

`lcm(A034693(n+1), A053989(A187829(n+1)))`
-/

namespace A200996.P9920121452920761993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034693 (n + 1)) (A053989 (A187829 (n + 1)).toNat)

end

end A200996.P9920121452920761993

/-!
# A200998: Triangular numbers, T(m), that are three-quarters of another triangular number: T(m) such that 4*T(m)=3*T(k) for some k.

The programs for A200998, there is no canonical definition to state claims against.
-/

/-! ## A200998.P996442047065232657

`3/4*A200999(n)`
-/

namespace A200998.P996442047065232657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A200999 n : ℚ)

end

end A200998.P996442047065232657

/-! ## A200998.P9905289060207071822

`A076140(n)+2*A076140(n)²`
-/

namespace A200998.P9905289060207071822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076140 n + 2 * A076140 n ^ 2

end

end A200998.P9905289060207071822

/-! ## A200998.P15937939012651450385

`C(A156712(n+1), 2)`
-/

namespace A200998.P15937939012651450385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A156712 (n + 1)).toNat 2

end

end A200998.P15937939012651450385

/-! ## A200998.P12132048210771198958

`floor(A131750(n+1)/4)`
-/

namespace A200998.P12132048210771198958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131750 (n + 1) : ℚ) / 4⌋

end

end A200998.P12132048210771198958

/-! ## A200998.P4135152865639494946

`floor(A006051(n+1)/8)`
-/

namespace A200998.P4135152865639494946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006051 (n + 1) : ℚ) / 8⌋

end

end A200998.P4135152865639494946

/-!
# A200999: Triangular numbers, T(m), that are four-thirds of another triangular number; T(m) such that 3*T(m) = 4*T(k) for some k.

The programs for A200999, the canonical program `A200999.P12108346823091144353` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200999 has offset 0).

The definition of A200999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200999.P12108346823091144353

`194*a(n-1)-a(n-2)+28` with `a(0)=0, a(1)=28`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A200999

/-- `194*a(n-1)-a(n-2)+28` -/
def P12108346823091144353.Spec : Prop :=
  ∀ n, P12108346823091144353.a n = A200999 n

theorem P12108346823091144353.correct : P12108346823091144353.Spec := by
  intro n
  simp only [A200999]

end A200999

/-! ## A200999.P15389295227601567270

`∑[A011944(2*n)]`
-/

namespace A200999.P15389295227601567270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200999.P15389295227601567270

namespace A200999

/-- `∑[A011944(2*n)]` -/
def P15389295227601567270.Spec : Prop :=
  ∀ n, P15389295227601567270.a n = A200999 n

end A200999

/-! ## A200999.P12141416920949979208

`4/3*A200998(n)`
-/

namespace A200999.P12141416920949979208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A200998 n : ℚ)

end

end A200999.P12141416920949979208

namespace A200999

/-- `4/3*A200998(n)` -/
def P12141416920949979208.Spec : Prop :=
  ∀ n, P12141416920949979208.a n = (A200999 n : ℚ)

end A200999

/-! ## A200999.P9959253509695447077

`∑[2*A007655(2*n+1)]`
-/

namespace A200999.P9959253509695447077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007655 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200999.P9959253509695447077

namespace A200999

/-- `∑[2*A007655(2*n+1)]` -/
def P9959253509695447077.Spec : Prop :=
  ∀ n, P9959253509695447077.a n = A200999 n

end A200999

/-! ## A200999.P17814415937583672208

`A007655(n+2)*A011944(n)`
-/

namespace A200999.P17814415937583672208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007655 (n + 2) * A011944 n

end

end A200999.P17814415937583672208

namespace A200999

/-- `A007655(n+2)*A011944(n)` -/
def P17814415937583672208.Spec : Prop :=
  ∀ n, P17814415937583672208.a n = A200999 n

end A200999

