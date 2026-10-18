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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A171700: Triangle T : T(n,k)= A007318(n,k)*a(n-k) with a(0)=0 and a(n)= A077957(n-1) for n>0.

The programs for A171700, the canonical program `A171700.P7889605556974686210` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171700 has offset 0).

The definition of A171700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171700.P7889605556974686210

`A156663(n+1)*A198321(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A171700

/-- `A156663(n+1)*A198321(n+1)` -/
def P7889605556974686210.Spec : Prop :=
  ∀ n, P7889605556974686210.a n = A171700 n

theorem P7889605556974686210.correct : P7889605556974686210.Spec := by
  intro n
  simp only [A171700]

end A171700

/-! ## A171700.P18436990695792729228

`(A007318(n)-A156663(n))*A156663(n+1)`
-/

namespace A171700.P18436990695792729228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 n - A156663 n) * A156663 (n + 1)

end

end A171700.P18436990695792729228

namespace A171700

/-- `(A007318(n)-A156663(n))*A156663(n+1)` -/
def P18436990695792729228.Spec : Prop :=
  ∀ n, P18436990695792729228.a n = A171700 n

end A171700

/-! ## A171700.P12814197719284243826

`A007318(n)*A292372(A175332(n+1))`
-/

namespace A171700.P12814197719284243826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A292372 (A175332 (n + 1)).toNat

end

end A171700.P12814197719284243826

namespace A171700

/-- `A007318(n)*A292372(A175332(n+1))` -/
def P12814197719284243826.Spec : Prop :=
  ∀ n, P12814197719284243826.a n = A171700 n

end A171700

/-! ## A171700.P2716291505296938943

`A007318(n)*A059906(A130321(n))`
-/

namespace A171700.P2716291505296938943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059906 (A130321 n).toNat

end

end A171700.P2716291505296938943

namespace A171700

/-- `A007318(n)*A059906(A130321(n))` -/
def P2716291505296938943.Spec : Prop :=
  ∀ n, P2716291505296938943.a n = A171700 n

end A171700

/-! ## A171700.P18007640678793484132

`A059906(A130321(n))*A065033(A109128(n))`
-/

namespace A171700.P18007640678793484132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A130321 n).toNat * A065033 (A109128 n).toNat

end

end A171700.P18007640678793484132

namespace A171700

/-- `A059906(A130321(n))*A065033(A109128(n))` -/
def P18007640678793484132.Spec : Prop :=
  ∀ n, P18007640678793484132.a n = A171700 n

end A171700

/-! ## A171700.P9598181631547923370

`sqrt(A119468(n)*A162590(n))`
-/

namespace A171700.P9598181631547923370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A119468 n * A162590 n : ℝ)

end

end A171700.P9598181631547923370

namespace A171700

/-- `sqrt(A119468(n)*A162590(n))` -/
def P9598181631547923370.Spec : Prop :=
  ∀ n, P9598181631547923370.a n = (A171700 n : ℝ)

end A171700

/-! ## A171700.P5587156038060257620

`Δ[A156663(n)]*A162590(n)`
-/

namespace A171700.P5587156038060257620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A162590 n

end

end A171700.P5587156038060257620

namespace A171700

/-- `Δ[A156663(n)]*A162590(n)` -/
def P5587156038060257620.Spec : Prop :=
  ∀ n, P5587156038060257620.a n = A171700 n

end A171700

/-! ## A171700.P4662599262052620770

`A156663(n+1)*A162590(n)`
-/

namespace A171700.P4662599262052620770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 (n + 1) * A162590 n

end

end A171700.P4662599262052620770

namespace A171700

/-- `A156663(n+1)*A162590(n)` -/
def P4662599262052620770.Spec : Prop :=
  ∀ n, P4662599262052620770.a n = A171700 n

end A171700

/-! ## A171700.P16254959053413629779

`A016116(A025581(n))*A162590(n)`
-/

namespace A171700.P16254959053413629779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A025581 n).toNat * A162590 n

end

end A171700.P16254959053413629779

namespace A171700

/-- `A016116(A025581(n))*A162590(n)` -/
def P16254959053413629779.Spec : Prop :=
  ∀ n, P16254959053413629779.a n = A171700 n

end A171700

/-! ## A171700.P17581122999182873232

`A000188(A130321(n))*A162590(n)`
-/

namespace A171700.P17581122999182873232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A130321 n).toNat * A162590 n

end

end A171700.P17581122999182873232

namespace A171700

/-- `A000188(A130321(n))*A162590(n)` -/
def P17581122999182873232.Spec : Prop :=
  ∀ n, P17581122999182873232.a n = A171700 n

end A171700

/-!
# A171701: The first n-fold (at least) intrinsically 2-palindromic number (in base ten).

The programs for A171701, there is no canonical definition to state claims against.
-/

/-! ## A171701.P7820391425163819624

`A000793(n+3)*A089723(A000079(n)²)`
-/

namespace A171701.P7820391425163819624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (n + 3) * A089723 (A000079 n ^ 2).toNat

end

end A171701.P7820391425163819624

/-! ## A171701.P413060774561872887

`A118224(n+1)+A065332(A164870(n+1))`
-/

namespace A171701.P413060774561872887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118224 (n + 1) + A065332 (A164870 (n + 1)).toNat

end

end A171701.P413060774561872887

/-! ## A171701.P4647029142139257493

`A000793(n+3)*A089723(A000079(2*n))`
-/

namespace A171701.P4647029142139257493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (n + 3) * A089723 (A000079 (2 * n)).toNat

end

end A171701.P4647029142139257493

/-!
# A171707: Triangle read by rows: T(n,k) = 2 - k! + 2*n! - (n-k)! - n!*binomial(n,k).

The programs for A171707, there is no canonical definition to state claims against.
-/

/-! ## A171707.P18220100310680756247

`2-A287869(A156141(n))`
-/

namespace A171707.P18220100310680756247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A287869 (A156141 n).toNat

end

end A171707.P18220100310680756247

/-! ## A171707.P4033631099832579934

`4-A080883(A022175(n))`
-/

namespace A171707.P4033631099832579934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A080883 (A022175 n).toNat

end

end A171707.P4033631099832579934

/-! ## A171707.P15910374931524096938

`1-A078105(A137754(n+1))`
-/

namespace A171707.P15910374931524096938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A078105 (A137754 (n + 1)).toNat

end

end A171707.P15910374931524096938

/-! ## A171707.P8192876119873452259

`2-A242409(A203846(n+1))`
-/

namespace A171707.P8192876119873452259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A242409 (A203846 (n + 1)).toNat

end

end A171707.P8192876119873452259

/-! ## A171707.P2674783538400375310

`A007318(n)-A099043(A203846(n+1))`
-/

namespace A171707.P2674783538400375310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A099043 (A203846 (n + 1)).toNat

end

end A171707.P2674783538400375310

/-!
# A171710: Union of A168234 and A171219, sorted.

The programs for A171710, the canonical program `A171710.P10509536871725326312` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171710 has offset 1).

The definition of A171710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171710.P10509536871725326312

`A168380(∑[char[A168380(n+1)]]+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171710

/-- `A168380(∑[char[A168380(n+1)]]+1)+1` -/
def P10509536871725326312.Spec : Prop :=
  ∀ n, P10509536871725326312.a n = A171710 (n + 1)

theorem P10509536871725326312.correct : P10509536871725326312.Spec := by
  intro n
  simp only [A171710, Nat.add_sub_cancel]

end A171710

/-! ## A171710.P5829325296703500353

`or(A246104(n), A322100(A246104(n)))`
-/

namespace A171710.P5829325296703500353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A246104 n) (A322100 (A246104 n).toNat)

end

end A171710.P5829325296703500353

namespace A171710

/-- `or(A246104(n), A322100(A246104(n)))` -/
def P5829325296703500353.Spec : Prop :=
  ∀ n, P5829325296703500353.a n = A171710 (n + 1)

end A171710

/-! ## A171710.P8971976012188493643

`or(A006530(A089693(n+1)), A246104(n))`
-/

namespace A171710.P8971976012188493643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A089693 (n + 1)).toNat) (A246104 n)

end

end A171710.P8971976012188493643

namespace A171710

/-- `or(A006530(A089693(n+1)), A246104(n))` -/
def P8971976012188493643.Spec : Prop :=
  ∀ n, P8971976012188493643.a n = A171710 (n + 1)

end A171710

/-! ## A171710.P17709346998454330221

`or(A200370(A027379(n)), A246104(n))`
-/

namespace A171710.P17709346998454330221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A200370 (A027379 n).toNat) (A246104 n)

end

end A171710.P17709346998454330221

namespace A171710

/-- `or(A200370(A027379(n)), A246104(n))` -/
def P17709346998454330221.Spec : Prop :=
  ∀ n, P17709346998454330221.a n = A171710 (n + 1)

end A171710

/-!
# A171711: Euler characteristic of relative homology of some varieties related to cluster algebras of type A.

The programs for A171711, there is no canonical definition to state claims against.
-/

/-! ## A171711.P6774393336794279381

`A076885(A150398(n))`
-/

namespace A171711.P6774393336794279381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A150398 n).toNat

end

end A171711.P6774393336794279381

/-! ## A171711.P10272916787819612762

`A076885(A151295(n))`
-/

namespace A171711.P10272916787819612762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A151295 n).toNat

end

end A171711.P10272916787819612762

/-! ## A171711.P5962707681192871428

`A157271(A149488(n))`
-/

namespace A171711.P5962707681192871428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149488 n).toNat

end

end A171711.P5962707681192871428

/-!
# A171712: Triangle T(n,k) read by rows. Coloring of sectors in a circle.

The programs for A171712, there is no canonical definition to state claims against.
-/

/-! ## A171712.P17297516143730420160

`A071786(A002260(n+2)%2*a(n-1)+1)` with `a(0)=1`
-/

namespace A171712.P17297516143730420160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071786 (Int.tmod (A002260 (n + 2)) 2 * a (n - 1) + 1).toNat

end

end A171712.P17297516143730420160

/-! ## A171712.P17704450469973807544

`A045910(A133819(n+2)%2*a(n-1)+1)` with `a(0)=1`
-/

namespace A171712.P17704450469973807544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045910 (Int.tmod (A133819 (n + 2)) 2 * a (n - 1) + 1).toNat

end

end A171712.P17704450469973807544

/-! ## A171712.P15736686905877915404

`A254077(and(1, A002260(n+2))*a(n-1)+1)` with `a(0)=1`
-/

namespace A171712.P15736686905877915404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254077 (Int.land 1 (A002260 (n + 2)) * a (n - 1) + 1).toNat

end

end A171712.P15736686905877915404

/-! ## A171712.P10782819922943472542

`A035973(a(n-1)+1)^and(1, A002260(n+2))` with `a(0)=1`
-/

namespace A171712.P10782819922943472542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A035973 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (Int.land 1 (A002260 (n + 2)) : ℤ)

end

end A171712.P10782819922943472542

/-! ## A171712.P3315794908086952610

`A204983(a(n-1)+1)^and(1, A002260(n+2))` with `a(0)=1`
-/

namespace A171712.P3315794908086952610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A204983 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (Int.land 1 (A002260 (n + 2)) : ℤ)

end

end A171712.P3315794908086952610

/-!
# A171713: 2n-th twin prime such that the q-th prime of the form 6*k-1 and the q-th prime of the form 6*k+1 are the 2n-th and (2n+1)-st twin primes (A001097).

The programs for A171713, there is no canonical definition to state claims against.
-/

/-! ## A171713.P10199360653105905125

`p?[A174237(n+3)]`
-/

namespace A171713.P10199360653105905125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174237 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171713.P10199360653105905125

/-!
# A171714: a(n) = ceiling((n+1)^4/2).

The programs for A171714, the canonical program `A171714.P14344141333699193977` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171714 has offset 0).

The definition of A171714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^4/2)` (program `A171714.P14344141333699193977`, by `A171714.P14344141333699193977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171714.P14344141333699193977

`ceil((n+1)^4/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171714

/-- `ceil((n+1)^4/2)` -/
def P14344141333699193977.Spec : Prop :=
  ∀ n, P14344141333699193977.a n = A171714 n

theorem P14344141333699193977.correct : P14344141333699193977.Spec := by
  intro n
  simp only [A171714]

end A171714

/-! ## A171714.P14505658949684068957

`round(cosh(4*log(n+1)))`
-/

namespace A171714.P14505658949684068957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (4 * Real.log (n + 1 : ℝ)))

end

end A171714.P14505658949684068957

namespace A171714

/-- `round(cosh(4*log(n+1)))` -/
def P14505658949684068957.Spec : Prop :=
  ∀ n, P14505658949684068957.a n = A171714 n

end A171714

/-! ## A171714.P2928443049725752391

`record[ceil((1-n)^4/2)]`
-/

namespace A171714.P2928443049725752391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (n : ℤ)) ^ 4 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171714.P2928443049725752391

namespace A171714

/-- `record[ceil((1-n)^4/2)]` -/
def P2928443049725752391.Spec : Prop :=
  ∀ n, P2928443049725752391.a n = A171714 n

end A171714

/-! ## A171714.P16050001152886541205

`round(record[(1-n)^4/2])`
-/

namespace A171714.P16050001152886541205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 4 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A171714.P16050001152886541205

namespace A171714

/-- `round(record[(1-n)^4/2])` -/
def P16050001152886541205.Spec : Prop :=
  ∀ n, P16050001152886541205.a n = A171714 n

end A171714

/-! ## A171714.P17386651484251742013

`round(record[(1-n)²²]/2)`
-/

namespace A171714.P17386651484251742013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)

end

end A171714.P17386651484251742013

namespace A171714

/-- `round(record[(1-n)²²]/2)` -/
def P17386651484251742013.Spec : Prop :=
  ∀ n, P17386651484251742013.a n = A171714 n

end A171714

/-! ## A171714.P6171935296084303441

`round(C(n+1, n)^4/2)`
-/

namespace A171714.P6171935296084303441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) n ^ 4 : ℚ) / 2)

end

end A171714.P6171935296084303441

namespace A171714

/-- `round(C(n+1, n)^4/2)` -/
def P6171935296084303441.Spec : Prop :=
  ∀ n, P6171935296084303441.a n = A171714 n

end A171714

/-! ## A171714.P15452696596183218675

`round(C(n+1, n)²²/2)`
-/

namespace A171714.P15452696596183218675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (n + 1) n ^ 2) ^ 2 : ℚ) / 2)

end

end A171714.P15452696596183218675

namespace A171714

/-- `round(C(n+1, n)²²/2)` -/
def P15452696596183218675.Spec : Prop :=
  ∀ n, P15452696596183218675.a n = A171714 n

end A171714

/-! ## A171714.P2831755361324767305

`and((n+1)²²+1, -2)/2`
-/

namespace A171714.P2831755361324767305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (((n + 1) ^ 2) ^ 2 + 1 : ℤ) (-2) : ℚ) / 2

end

end A171714.P2831755361324767305

namespace A171714

/-- `and((n+1)²²+1, -2)/2` -/
def P2831755361324767305.Spec : Prop :=
  ∀ n, P2831755361324767305.a n = (A171714 n : ℚ)

end A171714

/-! ## A171714.P18246569182142616312

`round((n+1)^4/gcd(2, 2*n))`
-/

namespace A171714.P18246569182142616312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 4 : ℚ) / (Nat.gcd 2 (2 * n) : ℚ))

end

end A171714.P18246569182142616312

namespace A171714

/-- `round((n+1)^4/gcd(2, 2*n))` -/
def P18246569182142616312.Spec : Prop :=
  ∀ n, P18246569182142616312.a n = A171714 n

end A171714

/-! ## A171714.P1746407109905463678

`round(lcm(n+1, (n+1)²²)/2)`
-/

namespace A171714.P1746407109905463678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm (n + 1) (((n + 1) ^ 2) ^ 2) : ℚ) / 2)

end

end A171714.P1746407109905463678

namespace A171714

/-- `round(lcm(n+1, (n+1)²²)/2)` -/
def P1746407109905463678.Spec : Prop :=
  ∀ n, P1746407109905463678.a n = A171714 n

end A171714

/-! ## A171714.P10030537745245914092

`((n+1)%2+(n+1)^4)/2`
-/

namespace A171714.P10030537745245914092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 + (n + 1) ^ 4 : ℕ) : ℚ) / 2

end

end A171714.P10030537745245914092

namespace A171714

/-- `((n+1)%2+(n+1)^4)/2` -/
def P10030537745245914092.Spec : Prop :=
  ∀ n, P10030537745245914092.a n = (A171714 n : ℚ)

end A171714

/-! ## A171714.P7421368902001462994

`(and(1, n+1)+(n+1)²²)/2`
-/

namespace A171714.P7421368902001462994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + ((n + 1) ^ 2) ^ 2 : ℚ) / 2

end

end A171714.P7421368902001462994

namespace A171714

/-- `(and(1, n+1)+(n+1)²²)/2` -/
def P7421368902001462994.Spec : Prop :=
  ∀ n, P7421368902001462994.a n = (A171714 n : ℚ)

end A171714

/-! ## A171714.P2752074853101871884

`(∑[2*n]+1)²-a(n-1)` with `a(0)=1`
-/

namespace A171714.P2752074853101871884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 : ℕ) : ℤ) - a (n - 1)

end

end A171714.P2752074853101871884

namespace A171714

/-- `(∑[2*n]+1)²-a(n-1)` -/
def P2752074853101871884.Spec : Prop :=
  ∀ n, P2752074853101871884.a n = A171714 n

end A171714

/-! ## A171714.P4449285662970520688

`(n²+1+n)²-floor(a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A171714.P4449285662970520688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n ^ 2 + 1 + n) ^ 2 : ℤ) - a (n - 1)

end

end A171714.P4449285662970520688

namespace A171714

/-- `(n²+1+n)²-floor(a(n-1))` -/
def P4449285662970520688.Spec : Prop :=
  ∀ n, P4449285662970520688.a n = A171714 n

end A171714

/-! ## A171714.P3225956752996195781

`round(Δ[A000330(n)]²/2)`
-/

namespace A171714.P3225956752996195781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2)

end

end A171714.P3225956752996195781

namespace A171714

/-- `round(Δ[A000330(n)]²/2)` -/
def P3225956752996195781.Spec : Prop :=
  ∀ n, P3225956752996195781.a n = A171714 n

end A171714

/-! ## A171714.P4557647350694241029

`(n+1)²²-A191903(n)`
-/

namespace A171714.P4557647350694241029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A191903 n

end

end A171714.P4557647350694241029

namespace A171714

/-- `(n+1)²²-A191903(n)` -/
def P4557647350694241029.Spec : Prop :=
  ∀ n, P4557647350694241029.a n = A171714 n

end A171714

/-! ## A171714.P14506297395967514719

`round((A123865(n+1)+1)/2)`
-/

namespace A171714.P14506297395967514719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A123865 (n + 1) + 1 : ℚ) / 2)

end

end A171714.P14506297395967514719

namespace A171714

/-- `round((A123865(n+1)+1)/2)` -/
def P14506297395967514719.Spec : Prop :=
  ∀ n, P14506297395967514719.a n = A171714 n

end A171714

/-! ## A171714.P12041168845448184578

`A191903(n)+A059841(n)`
-/

namespace A171714.P12041168845448184578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191903 n + A059841 n

end

end A171714.P12041168845448184578

namespace A171714

/-- `A191903(n)+A059841(n)` -/
def P12041168845448184578.Spec : Prop :=
  ∀ n, P12041168845448184578.a n = A171714 n

end A171714

/-! ## A171714.P4045162594718736184

`A058310(n)-A007494(n)`
-/

namespace A171714.P4045162594718736184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058310 n - A007494 n

end

end A171714.P4045162594718736184

namespace A171714

/-- `A058310(n)-A007494(n)` -/
def P4045162594718736184.Spec : Prop :=
  ∀ n, P4045162594718736184.a n = A171714 n

end A171714

/-! ## A171714.P9911919149891080605

`A191489(n)%A179824(n+2)`
-/

namespace A171714.P9911919149891080605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191489 n) (A179824 (n + 2))

end

end A171714.P9911919149891080605

namespace A171714

/-- `A191489(n)%A179824(n+2)` -/
def P9911919149891080605.Spec : Prop :=
  ∀ n, P9911919149891080605.a n = A171714 n

end A171714

/-!
# A171715: Absolute value of (n-th prime of form 3*m-1 minus n-th prime of form 3*k+1/2+-1/2).

The programs for A171715, the canonical program `A171715.P12184834719262593618` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171715 has offset 1).

The definition of A171715 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, A007645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171715.P12184834719262593618

`abs(A003627(n+1)-A007645(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171715

/-- `abs(A003627(n+1)-A007645(n+1))` -/
def P12184834719262593618.Spec : Prop :=
  ∀ n, P12184834719262593618.a n = A171715 (n + 1)

theorem P12184834719262593618.correct : P12184834719262593618.Spec := by
  intro n
  simp only [A171715, Nat.add_sub_cancel]

end A171715

/-! ## A171715.P5056837862928928299

`abs(A045375(n+1)-A045410(n+1))`
-/

namespace A171715.P5056837862928928299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045375 (n + 1) - A045410 (n + 1)|

end

end A171715.P5056837862928928299

namespace A171715

/-- `abs(A045375(n+1)-A045410(n+1))` -/
def P5056837862928928299.Spec : Prop :=
  ∀ n, P5056837862928928299.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P10794485514691885504

`p?[or(1, 3*n)]-p?[3*n-1]`
-/

namespace A171715.P10794485514691885504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A171715.P10794485514691885504

namespace A171715

/-- `p?[or(1, 3*n)]-p?[3*n-1]` -/
def P10794485514691885504.Spec : Prop :=
  ∀ n, P10794485514691885504.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P13959544450194049779

`A007645(n+1)-A003627(n+1)`
-/

namespace A171715.P13959544450194049779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) - A003627 (n + 1)

end

end A171715.P13959544450194049779

namespace A171715

/-- `A007645(n+1)-A003627(n+1)` -/
def P13959544450194049779.Spec : Prop :=
  ∀ n, P13959544450194049779.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P6617511942948586695

`A123365(n+1)%A003627(n+1)`
-/

namespace A171715.P6617511942948586695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123365 (n + 1)) (A003627 (n + 1))

end

end A171715.P6617511942948586695

namespace A171715

/-- `A123365(n+1)%A003627(n+1)` -/
def P6617511942948586695.Spec : Prop :=
  ∀ n, P6617511942948586695.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P2039707668482679715

`A007645(n+1)-ceil(sqrt(A301812(n+1)))`
-/

namespace A171715.P2039707668482679715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) - ⌈Real.sqrt (A301812 (n + 1) : ℝ)⌉

end

end A171715.P2039707668482679715

namespace A171715

/-- `A007645(n+1)-ceil(sqrt(A301812(n+1)))` -/
def P2039707668482679715.Spec : Prop :=
  ∀ n, P2039707668482679715.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P5226201780530801809

`A007645(n+1)+A358548(n+1)-A007528(n+1)`
-/

namespace A171715.P5226201780530801809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) + (A358548 (n + 1) - A007528 (n + 1))

end

end A171715.P5226201780530801809

namespace A171715

/-- `A007645(n+1)+A358548(n+1)-A007528(n+1)` -/
def P5226201780530801809.Spec : Prop :=
  ∀ n, P5226201780530801809.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P17280610763426344447

`A045331(n+2)-A003627(n+1)`
-/

namespace A171715.P17280610763426344447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2) - A003627 (n + 1)

end

end A171715.P17280610763426344447

namespace A171715

/-- `A045331(n+2)-A003627(n+1)` -/
def P17280610763426344447.Spec : Prop :=
  ∀ n, P17280610763426344447.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P9669433998086396435

`A007645(n+1)-A000040(A091177(n+1))`
-/

namespace A171715.P9669433998086396435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) - A000040 (A091177 (n + 1)).toNat

end

end A171715.P9669433998086396435

namespace A171715

/-- `A007645(n+1)-A000040(A091177(n+1))` -/
def P9669433998086396435.Spec : Prop :=
  ∀ n, P9669433998086396435.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P12392339519244220004

`p?[A003136(n+1)]-p?[3*n-1]`
-/

namespace A171715.P12392339519244220004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A171715.P12392339519244220004

namespace A171715

/-- `p?[A003136(n+1)]-p?[3*n-1]` -/
def P12392339519244220004.Spec : Prop :=
  ∀ n, P12392339519244220004.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P1635149702198463380

`p?[A003136(n+1)]-A003627(n+1)`
-/

namespace A171715.P1635149702198463380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A003627 (n + 1)

end

end A171715.P1635149702198463380

namespace A171715

/-- `p?[A003136(n+1)]-A003627(n+1)` -/
def P1635149702198463380.Spec : Prop :=
  ∀ n, P1635149702198463380.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P15003599400469570587

`record[A006530(9*n+3)]-p?[3*n-1]`
-/

namespace A171715.P15003599400469570587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A171715.P15003599400469570587

namespace A171715

/-- `record[A006530(9*n+3)]-p?[3*n-1]` -/
def P15003599400469570587.Spec : Prop :=
  ∀ n, P15003599400469570587.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P16680552625813104825

`p?[A047255(2*n+1)]-p?[3*n-1]`
-/

namespace A171715.P16680552625813104825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A171715.P16680552625813104825

namespace A171715

/-- `p?[A047255(2*n+1)]-p?[3*n-1]` -/
def P16680552625813104825.Spec : Prop :=
  ∀ n, P16680552625813104825.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P11230589307657868648

`p?[A032766(n)]-A003627(n+1)`
-/

namespace A171715.P11230589307657868648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A003627 (n + 1)

end

end A171715.P11230589307657868648

namespace A171715

/-- `p?[A032766(n)]-A003627(n+1)` -/
def P11230589307657868648.Spec : Prop :=
  ∀ n, P11230589307657868648.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P16929880027235443055

`A007645(n+1)-record[A014963(3*n+2)]`
-/

namespace A171715.P16929880027235443055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171715.P16929880027235443055

namespace A171715

/-- `A007645(n+1)-record[A014963(3*n+2)]` -/
def P16929880027235443055.Spec : Prop :=
  ∀ n, P16929880027235443055.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P13119442051086198459

`record[A014963(6*n+1)]%p?[3*n-1]`
-/

namespace A171715.P13119442051086198459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A171715.P13119442051086198459

namespace A171715

/-- `record[A014963(6*n+1)]%p?[3*n-1]` -/
def P13119442051086198459.Spec : Prop :=
  ∀ n, P13119442051086198459.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P1358987682762449746

`p?[A131717(2*n+1)]-p?[A131717(2*(n+1))]`
-/

namespace A171715.P1358987682762449746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A171715.P1358987682762449746

namespace A171715

/-- `p?[A131717(2*n+1)]-p?[A131717(2*(n+1))]` -/
def P1358987682762449746.Spec : Prop :=
  ∀ n, P1358987682762449746.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P14987184749120621905

`p?[A342131(2*n)]-p?[3*n-1]`
-/

namespace A171715.P14987184749120621905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342131 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A171715.P14987184749120621905

namespace A171715

/-- `p?[A342131(2*n)]-p?[3*n-1]` -/
def P14987184749120621905.Spec : Prop :=
  ∀ n, P14987184749120621905.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P15658524673988422049

`p?[A026194(2*n+1)]-p?[3*n-1]`
-/

namespace A171715.P15658524673988422049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026194 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A171715.P15658524673988422049

namespace A171715

/-- `p?[A026194(2*n+1)]-p?[3*n-1]` -/
def P15658524673988422049.Spec : Prop :=
  ∀ n, P15658524673988422049.a n = A171715 (n + 1)

end A171715

/-! ## A171715.P11815081418791414909

`p?[A026214(2*(n+1))]-p?[3*n-1]`
-/

namespace A171715.P11815081418791414909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A171715.P11815081418791414909

namespace A171715

/-- `p?[A026214(2*(n+1))]-p?[3*n-1]` -/
def P11815081418791414909.Spec : Prop :=
  ∀ n, P11815081418791414909.a n = A171715 (n + 1)

end A171715

/-!
# A171716: a(n) = abs((n-th prime of the form 6*k+1) minus (n-th prime of the form 6*m-1))/2.

The programs for A171716, the canonical program `A171716.P4487288318910183918` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171716 has offset 1).

The definition of A171716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, A007645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171716.P10900497107752474930

`(A002476(n+1)-A007528(n+1))/2`
-/

namespace A171716.P10900497107752474930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002476 (n + 1) - A007528 (n + 1) : ℚ) / 2

end

end A171716.P10900497107752474930

namespace A171716

/-- `(A002476(n+1)-A007528(n+1))/2` -/
def P10900497107752474930.Spec : Prop :=
  ∀ n, P10900497107752474930.a n = (A171716 (n + 1) : ℚ)

end A171716

/-! ## A171716.P4487288318910183918

`abs(A003627(n+2)-A007645(n+2))/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171716

/-- `abs(A003627(n+2)-A007645(n+2))/2` -/
def P4487288318910183918.Spec : Prop :=
  ∀ n, P4487288318910183918.a n = (A171716 (n + 1) : ℚ)

end A171716

/-! ## A171716.P5450844065639701705

`3*A139394(n+1)+1`
-/

namespace A171716.P5450844065639701705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A139394 (n + 1) + 1

end

end A171716.P5450844065639701705

namespace A171716

/-- `3*A139394(n+1)+1` -/
def P5450844065639701705.Spec : Prop :=
  ∀ n, P5450844065639701705.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P9978515013533272652

`A160413(p?[3*n+1]-p?[3*n+5])`
-/

namespace A171716.P9978515013533272652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A171716.P9978515013533272652

namespace A171716

/-- `A160413(p?[3*n+1]-p?[3*n+5])` -/
def P9978515013533272652.Spec : Prop :=
  ∀ n, P9978515013533272652.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P12259967709830628481

`A160413(p?[3*n+1]%p?[3*n+5])`
-/

namespace A171716.P12259967709830628481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A171716.P12259967709830628481

namespace A171716

/-- `A160413(p?[3*n+1]%p?[3*n+5])` -/
def P12259967709830628481.Spec : Prop :=
  ∀ n, P12259967709830628481.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P10818137068528129559

`A016777(A139394(n+1))`
-/

namespace A171716.P10818137068528129559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A139394 (n + 1)).toNat

end

end A171716.P10818137068528129559

namespace A171716

/-- `A016777(A139394(n+1))` -/
def P10818137068528129559.Spec : Prop :=
  ∀ n, P10818137068528129559.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P13797462299209755415

`A008619(6*A139394(n+1))`
-/

namespace A171716.P13797462299209755415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (6 * A139394 (n + 1)).toNat

end

end A171716.P13797462299209755415

namespace A171716

/-- `A008619(6*A139394(n+1))` -/
def P13797462299209755415.Spec : Prop :=
  ∀ n, P13797462299209755415.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P1471911646948468434

`A008620(9*A139394(n+1))`
-/

namespace A171716.P1471911646948468434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (9 * A139394 (n + 1)).toNat

end

end A171716.P1471911646948468434

namespace A171716

/-- `A008620(9*A139394(n+1))` -/
def P1471911646948468434.Spec : Prop :=
  ∀ n, P1471911646948468434.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P2680459136264689929

`A173177(n+1)-A173178(n+1)`
-/

namespace A171716.P2680459136264689929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1) - A173178 (n + 1)

end

end A171716.P2680459136264689929

namespace A171716

/-- `A173177(n+1)-A173178(n+1)` -/
def P2680459136264689929.Spec : Prop :=
  ∀ n, P2680459136264689929.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P7977842441787725175

`A002476(n+1)%A022760(n+1)`
-/

namespace A171716.P7977842441787725175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002476 (n + 1)) (A022760 (n + 1))

end

end A171716.P7977842441787725175

namespace A171716

/-- `A002476(n+1)%A022760(n+1)` -/
def P7977842441787725175.Spec : Prop :=
  ∀ n, P7977842441787725175.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P9437136584099234427

`A002476(n+1)-A022759(n+1)/2`
-/

namespace A171716.P9437136584099234427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002476 (n + 1) : ℚ) - (A022759 (n + 1) : ℚ) / 2

end

end A171716.P9437136584099234427

namespace A171716

/-- `A002476(n+1)-A022759(n+1)/2` -/
def P9437136584099234427.Spec : Prop :=
  ∀ n, P9437136584099234427.a n = (A171716 (n + 1) : ℚ)

end A171716

/-! ## A171716.P4033452625813836023

`A022759(n+1)/2-A007528(n+1)`
-/

namespace A171716.P4033452625813836023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022759 (n + 1) : ℚ) / 2 - (A007528 (n + 1) : ℚ)

end

end A171716.P4033452625813836023

namespace A171716

/-- `A022759(n+1)/2-A007528(n+1)` -/
def P4033452625813836023.Spec : Prop :=
  ∀ n, P4033452625813836023.a n = (A171716 (n + 1) : ℚ)

end A171716

/-! ## A171716.P14574212521013433315

`(A112772(n+1)-A022759(n+1))/2`
-/

namespace A171716.P14574212521013433315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112772 (n + 1) - A022759 (n + 1) : ℚ) / 2

end

end A171716.P14574212521013433315

namespace A171716

/-- `(A112772(n+1)-A022759(n+1))/2` -/
def P14574212521013433315.Spec : Prop :=
  ∀ n, P14574212521013433315.a n = (A171716 (n + 1) : ℚ)

end A171716

/-! ## A171716.P6302712882369388222

`A032742(A002476(n+1)-A007528(n+1))`
-/

namespace A171716.P6302712882369388222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002476 (n + 1) - A007528 (n + 1)).toNat

end

end A171716.P6302712882369388222

namespace A171716

/-- `A032742(A002476(n+1)-A007528(n+1))` -/
def P6302712882369388222.Spec : Prop :=
  ∀ n, P6302712882369388222.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P1600930341942964917

`A024899(n+1)+A034936(n+1)-A173178(n+1)`
-/

namespace A171716.P1600930341942964917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) + (A034936 (n + 1) - A173178 (n + 1))

end

end A171716.P1600930341942964917

namespace A171716

/-- `A024899(n+1)+A034936(n+1)-A173178(n+1)` -/
def P1600930341942964917.Spec : Prop :=
  ∀ n, P1600930341942964917.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P10912033007899660316

`A171715(n+2)/2`
-/

namespace A171716.P10912033007899660316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171715 (n + 2) : ℚ) / 2

end

end A171716.P10912033007899660316

namespace A171716

/-- `A171715(n+2)/2` -/
def P10912033007899660316.Spec : Prop :=
  ∀ n, P10912033007899660316.a n = (A171716 (n + 1) : ℚ)

end A171716

/-! ## A171716.P16035682237970094816

`Δ[A172235(n+1)/2]`
-/

namespace A171716.P16035682237970094816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172235 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171716.P16035682237970094816

namespace A171716

/-- `Δ[A172235(n+1)/2]` -/
def P16035682237970094816.Spec : Prop :=
  ∀ n, P16035682237970094816.a n = (A171716 (n + 1) : ℚ)

end A171716

/-! ## A171716.P18083427724495870409

`A001281(A171715(n+2))`
-/

namespace A171716.P18083427724495870409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A171715 (n + 2)).toNat

end

end A171716.P18083427724495870409

namespace A171716

/-- `A001281(A171715(n+2))` -/
def P18083427724495870409.Spec : Prop :=
  ∀ n, P18083427724495870409.a n = A171716 (n + 1)

end A171716

/-! ## A171716.P12047616071469616199

`(A007645(n+2)-A003627(n+2))/2`
-/

namespace A171716.P12047616071469616199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007645 (n + 2) - A003627 (n + 2) : ℚ) / 2

end

end A171716.P12047616071469616199

namespace A171716

/-- `(A007645(n+2)-A003627(n+2))/2` -/
def P12047616071469616199.Spec : Prop :=
  ∀ n, P12047616071469616199.a n = (A171716 (n + 1) : ℚ)

end A171716

/-! ## A171716.P17682752714422441607

`(A045375(n+2)-A003627(n+2))/2`
-/

namespace A171716.P17682752714422441607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045375 (n + 2) - A003627 (n + 2) : ℚ) / 2

end

end A171716.P17682752714422441607

namespace A171716

/-- `(A045375(n+2)-A003627(n+2))/2` -/
def P17682752714422441607.Spec : Prop :=
  ∀ n, P17682752714422441607.a n = (A171716 (n + 1) : ℚ)

end A171716

/-!
# A171717: Squares in lunar arithmetic in base 9 written in base 9.

The programs for A171717, there is no canonical definition to state claims against.
-/

/-! ## A171717.P2612045188551004218

`A087019(∑[val(n+9, 9)]+n-1)`
-/

namespace A171717.P2612045188551004218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 9) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (∑ j ∈ Finset.range (n + 1), f1 j + n - 1)

end

end A171717.P2612045188551004218

/-! ## A171717.P1962575731954656761

`A087019(record[n/(val(n+1, 10)+1)])`
-/

namespace A171717.P1962575731954656761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (SequenceMachineLib.valuation (n + 1) 10 + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A171717.P1962575731954656761

/-! ## A171717.P11586039764415952582

`A087019(∑[val(C(2, n)+n, 9)]+n)`
-/

namespace A171717.P11586039764415952582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 2 n + n) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A171717.P11586039764415952582

/-! ## A171717.P14072118251442731827

`A087019(∑[char[9*n]]%9+n-1)`
-/

namespace A171717.P14072118251442731827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 ((∑ j ∈ Finset.range (n + 1), f1 j) % 9 + n - 1)

end

end A171717.P14072118251442731827

/-! ## A171717.P16159959221656413004

`A087019(lt[n, (n+1)/10^val(n+1, 10)])`
-/

namespace A171717.P16159959221656413004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A171717.P16159959221656413004

/-! ## A171717.P5139931100674572880

`A087019(A007095(n))`
-/

namespace A171717.P5139931100674572880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (A007095 n).toNat

end

end A171717.P5139931100674572880

/-! ## A171717.P9161445315650862189

`A007095(A171679(n))`
-/

namespace A171717.P9161445315650862189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A171679 n).toNat

end

end A171717.P9161445315650862189

/-! ## A171717.P1470514269962150582

`A087019(record[A004184(n)])`
-/

namespace A171717.P1470514269962150582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171717.P1470514269962150582

/-! ## A171717.P9717005222526596843

`A087019(record[A004728(n)])`
-/

namespace A171717.P9717005222526596843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171717.P9717005222526596843

/-! ## A171717.P2720760921181353066

`record[A235049(A087019(n))]`
-/

namespace A171717.P2720760921181353066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A087019 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171717.P2720760921181353066

/-!
# A171718: a(n) = 10^n*(8+3*10^n)+3.

The programs for A171718, the canonical program `A171718.P18357389985131940922` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171718 has offset 0).

The definition of A171718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n*(8+3*10^n)+3` (program `A171718.P18357389985131940922`, by `A171718.P18357389985131940922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171718.P18357389985131940922

`10^n*(8+3*10^n)+3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171718

/-- `10^n*(8+3*10^n)+3` -/
def P18357389985131940922.Spec : Prop :=
  ∀ n, (P18357389985131940922.a n : ℤ) = A171718 n

theorem P18357389985131940922.correct : P18357389985131940922.Spec := by
  intro n
  simp only [A171718]

end A171718

/-!
# A171719: Numbers n such that 10^n*(8+3*10^n)+3 is prime.

The programs for A171719, there is no canonical definition to state claims against.
-/

/-! ## A171719.P9000613894560670310

`A008619(12*(5*a(n-1)+1))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=17`
-/

namespace A171719.P9000613894560670310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 17] fun n a =>
  A008619 (12 * (5 * a (n - 1) + 1)).toNat

end

end A171719.P9000613894560670310

/-! ## A171719.P6018297919719468242

`record[A257737(A004148(n))]`
-/

namespace A171719.P6018297919719468242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257737 (A004148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171719.P6018297919719468242

/-!
# A171720: Primes p such that (p-1)/2 and (p+1)/2 have same sum of divisors.

The programs for A171720, there is no canonical definition to state claims against.
-/

/-! ## A171720.P11358691535781611239

`p?[2*A002961(n+1)+1]`
-/

namespace A171720.P11358691535781611239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002961 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171720.P11358691535781611239

/-! ## A171720.P2965722218523876716

`p?[2*A231546(n+1)-1]`
-/

namespace A171720.P2965722218523876716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231546 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171720.P2965722218523876716

/-! ## A171720.P13510441519966282833

`p?[2*A225757(Δ[n²])+1]`
-/

namespace A171720.P13510441519966282833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225757 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171720.P13510441519966282833

/-! ## A171720.P916974837604894964

`p?[A231546(n+1)+A002961(n+1)]`
-/

namespace A171720.P916974837604894964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1) + A002961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171720.P916974837604894964

/-! ## A171720.P10163153558684540278

`p?[A231546(n+1)+A225757(Δ[n²])]`
-/

namespace A171720.P10163153558684540278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1) + A225757 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171720.P10163153558684540278

/-!
# A171722: a(n) = 0+1+2+...+n in lunar arithmetic in base 9 written in base 10.

The programs for A171722, there is no canonical definition to state claims against.
-/

/-! ## A171722.P3111851689152360235

`ceil(A171723(n)/log(3))`
-/

namespace A171722.P3111851689152360235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171723 n : ℝ) / Real.log (3 : ℝ)⌉

end

end A171722.P3111851689152360235

/-! ## A171722.P11616855492091998784

`9-dr(abs(A291514(n+1)))+n`
-/

namespace A171722.P11616855492091998784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (SequenceMachineLib.digitalRoot |A291514 (n + 1)| : ℤ) + (n : ℤ)

end

end A171722.P11616855492091998784

/-! ## A171722.P7201873068389478236

`A028904(A171723(n))`
-/

namespace A171722.P7201873068389478236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A171723 n).toNat

end

end A171722.P7201873068389478236

/-! ## A171722.P6964376035804637464

`A171723(n)-A054898(n)`
-/

namespace A171722.P6964376035804637464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171723 n - A054898 n

end

end A171722.P6964376035804637464

/-! ## A171722.P8620193263818777352

`A171723(n)-A343609(n)`
-/

namespace A171722.P8620193263818777352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171723 n - A343609 n

end

end A171722.P8620193263818777352

/-! ## A171722.P12911482766028868697

`A140576(∑[char[A329623(n)]])`
-/

namespace A171722.P12911482766028868697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329623 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140576 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171722.P12911482766028868697

/-! ## A171722.P9464022547107765032

`A329623(record[A048379(n)])-1`
-/

namespace A171722.P9464022547107765032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A171722.P9464022547107765032

/-! ## A171722.P1366351013393087509

`A324161(or(char[1], A171723(n)))`
-/

namespace A171722.P1366351013393087509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A171723 n)).toNat

end

end A171722.P1366351013393087509

/-! ## A171722.P480306034559393369

`A171723(n)+n-A007095(n)`
-/

namespace A171722.P480306034559393369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171723 n + ((n : ℤ) - A007095 n)

end

end A171722.P480306034559393369

/-! ## A171722.P14951938357909677175

`A324161(∑{d}[A171723(n), A000010(#)])`
-/

namespace A171722.P14951938357909677175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A171722.P14951938357909677175

/-!
# A171723: a(n) = 0+1+2+...+n in lunar arithmetic in base 9 written in base 9.

The programs for A171723, there is no canonical definition to state claims against.
-/

/-! ## A171723.P11444415635059087697

`floor(log(3)*A171722(n))`
-/

namespace A171723.P11444415635059087697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (3 : ℝ) * (A171722 n : ℝ)⌋

end

end A171723.P11444415635059087697

/-! ## A171723.P6040600660204176180

`A087052(∑[val(n+1, 10)+1])-1`
-/

namespace A171723.P6040600660204176180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A171723.P6040600660204176180

/-! ## A171723.P17208768359878492296

`A087121(∑[val(n+1, 10)+1])-1`
-/

namespace A171723.P17208768359878492296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087121 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A171723.P17208768359878492296

/-! ## A171723.P17049544791816601795

`A087052(record[(n+1)/10^val(n+1, 10)])-1`
-/

namespace A171723.P17049544791816601795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat - 1

end

end A171723.P17049544791816601795

/-! ## A171723.P4628406726935280033

`A087121(record[(n+1)/10^val(n+1, 10)])-1`
-/

namespace A171723.P4628406726935280033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087121 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat - 1

end

end A171723.P4628406726935280033

/-! ## A171723.P12889552813851138439

`A007095(A171722(n))`
-/

namespace A171723.P12889552813851138439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A171722 n).toNat

end

end A171723.P12889552813851138439

/-! ## A171723.P12934814783246046628

`A043096(A171722(n)+1)`
-/

namespace A171723.P12934814783246046628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (A171722 n + 1).toNat

end

end A171723.P12934814783246046628

/-! ## A171723.P6215242569345327100

`A054898(9*A171722(n))`
-/

namespace A171723.P6215242569345327100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 (9 * A171722 n).toNat

end

end A171723.P6215242569345327100

/-! ## A171723.P11534035604793788842

`A343609(10*A171722(n))`
-/

namespace A171723.P11534035604793788842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (10 * A171722 n).toNat

end

end A171723.P11534035604793788842

/-! ## A171723.P2654623957873861359

`A171722(n)+A054898(n)`
-/

namespace A171723.P2654623957873861359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171722 n + A054898 n

end

end A171723.P2654623957873861359

/-!
# A171726: Number of n-digit numbers m such that (a) the digits of m are from the set {1, 2, 3, 4, 5}, (b) any digit that appears in m appears at least twice.

The programs for A171726, there is no canonical definition to state claims against.
-/

/-! ## A171726.P15423845248825604748

`A131103(Δ[A264443(n)])`
-/

namespace A171726.P15423845248825604748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131103 (f1 (n + 1) - f1 n).toNat

end

end A171726.P15423845248825604748

/-! ## A171726.P1666460878943957301

`A131103(A056115(n)+11)`
-/

namespace A171726.P1666460878943957301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131103 (A056115 n + 11).toNat

end

end A171726.P1666460878943957301

/-! ## A171726.P17658121034762064576

`A131103(eq[2, A092921(n)])`
-/

namespace A171726.P17658121034762064576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171726.P17658121034762064576

/-!
# A171727: The number of twin prime pairs in the interval (p^2,p*q), where (p,q) runs over the twin prime pairs (A001359(n),A006512(n)).

The programs for A171727, the canonical program `A171727.P1096727604738501956` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171727 has offset 1).

The definition of A171727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171727.P5798755125157049540

`A091591(A001359(n+1))`
-/

namespace A171727.P5798755125157049540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (A001359 (n + 1)).toNat

end

end A171727.P5798755125157049540

namespace A171727

/-- `A091591(A001359(n+1))` -/
def P5798755125157049540.Spec : Prop :=
  ∀ n, P5798755125157049540.a n = A171727 (n + 1)

end A171727

/-! ## A171727.P4952441462002638907

`A091591(A124588(n+2))`
-/

namespace A171727.P4952441462002638907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (A124588 (n + 2)).toNat

end

end A171727.P4952441462002638907

namespace A171727

/-- `A091591(A124588(n+2))` -/
def P4952441462002638907.Spec : Prop :=
  ∀ n, P4952441462002638907.a n = A171727 (n + 1)

end A171727

/-! ## A171727.P5642139718961396341

`A091591(A181747(n+2))`
-/

namespace A171727.P5642139718961396341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (A181747 (n + 2)).toNat

end

end A171727.P5642139718961396341

namespace A171727

/-- `A091591(A181747(n+2))` -/
def P5642139718961396341.Spec : Prop :=
  ∀ n, P5642139718961396341.a n = A171727 (n + 1)

end A171727

/-! ## A171727.P17853578038381748051

`A091591(p?[A001838(n+1)])`
-/

namespace A171727.P17853578038381748051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171727.P17853578038381748051

namespace A171727

/-- `A091591(p?[A001838(n+1)])` -/
def P17853578038381748051.Spec : Prop :=
  ∀ n, P17853578038381748051.a n = A171727 (n + 1)

end A171727

/-! ## A171727.P1096727604738501956

`A091591(p?[A040976(n+1)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A171727

/-- `A091591(p?[A040976(n+1)])` -/
def P1096727604738501956.Spec : Prop :=
  ∀ n, P1096727604738501956.a n = A171727 (n + 1)

theorem P1096727604738501956.correct : P1096727604738501956.Spec := by
  intro n
  simp only [A171727, Nat.add_sub_cancel]

end A171727

/-! ## A171727.P11928881384460737622

`A091591(p?[A054799(n+1)])`
-/

namespace A171727.P11928881384460737622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171727.P11928881384460737622

namespace A171727

/-- `A091591(p?[A054799(n+1)])` -/
def P11928881384460737622.Spec : Prop :=
  ∀ n, P11928881384460737622.a n = A171727 (n + 1)

end A171727

/-! ## A171727.P18289672002048406750

`A091591(A144834(n+1)+1)`
-/

namespace A171727.P18289672002048406750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (A144834 (n + 1) + 1).toNat

end

end A171727.P18289672002048406750

namespace A171727

/-- `A091591(A144834(n+1)+1)` -/
def P18289672002048406750.Spec : Prop :=
  ∀ n, P18289672002048406750.a n = A171727 (n + 1)

end A171727

/-! ## A171727.P3833013664786682699

`A091591(A014574(n+1)-1)`
-/

namespace A171727.P3833013664786682699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (A014574 (n + 1) - 1).toNat

end

end A171727.P3833013664786682699

namespace A171727

/-- `A091591(A014574(n+1)-1)` -/
def P3833013664786682699.Spec : Prop :=
  ∀ n, P3833013664786682699.a n = A171727 (n + 1)

end A171727

/-! ## A171727.P16064240381717613118

`A091591(A006512(n+1)-2)`
-/

namespace A171727.P16064240381717613118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (A006512 (n + 1) - 2).toNat

end

end A171727.P16064240381717613118

namespace A171727

/-- `A091591(A006512(n+1)-2)` -/
def P16064240381717613118.Spec : Prop :=
  ∀ n, P16064240381717613118.a n = A171727 (n + 1)

end A171727

/-! ## A171727.P1831490186509048457

`A091591(A077800(2*n+1))`
-/

namespace A171727.P1831490186509048457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (A077800 (2 * n + 1)).toNat

end

end A171727.P1831490186509048457

namespace A171727

/-- `A091591(A077800(2*n+1))` -/
def P1831490186509048457.Spec : Prop :=
  ∀ n, P1831490186509048457.a n = A171727 (n + 1)

end A171727

/-! ## A171727.P2184075576219359910

`A091591(p?[A000040(n+1)-2])`
-/

namespace A171727.P2184075576219359910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171727.P2184075576219359910

namespace A171727

/-- `A091591(p?[A000040(n+1)-2])` -/
def P2184075576219359910.Spec : Prop :=
  ∀ n, P2184075576219359910.a n = A171727 (n + 1)

end A171727

/-!
# A171728: Numbers k which establish records for floor(log(log(log(2^k)))).

The programs for A171728, the canonical program `A171728.P12285709877920310937` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171728 has offset 1).

The definition of A171728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171728.P12285709877920310937

`ceil(exp(exp(n-2))/log(2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171728

/-- `ceil(exp(exp(n-2))/log(2))` -/
def P12285709877920310937.Spec : Prop :=
  ∀ n, P12285709877920310937.a n = A171728 (n + 1)

theorem P12285709877920310937.correct : P12285709877920310937.Spec := by
  intro n
  simp only [A171728, Nat.add_sub_cancel]

end A171728

/-!
# A171729: Triangle of differences of Fibonacci numbers, rows ascending.

The programs for A171729, the canonical program `A171729.P17350699023659055565` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171729 has offset 1).

The definition of A171729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171729.P8842089224095654588

`char[∑[n+2]]+round(A143061(n+1)/ϕ)`
-/

namespace A171729.P8842089224095654588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((A143061 (n + 1) : ℝ) / Real.goldenRatio)

end

end A171729.P8842089224095654588

namespace A171729

/-- `char[∑[n+2]]+round(A143061(n+1)/ϕ)` -/
def P8842089224095654588.Spec : Prop :=
  ∀ n, P8842089224095654588.a n = A171729 (n + 1)

end A171729

/-! ## A171729.P17350699023659055565

`A171730(A038722(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A171729

/-- `A171730(A038722(n+1))` -/
def P17350699023659055565.Spec : Prop :=
  ∀ n, P17350699023659055565.a n = A171729 (n + 1)

theorem P17350699023659055565.correct : P17350699023659055565.Spec := by
  intro n
  simp only [A171729, Nat.add_sub_cancel]

end A171729

/-! ## A171729.P11800026218827256651

`round((A143061(n+1)+A023531(n))/ϕ)`
-/

namespace A171729.P11800026218827256651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143061 (n + 1) + A023531 n : ℝ) / Real.goldenRatio)

end

end A171729.P11800026218827256651

namespace A171729

/-- `round((A143061(n+1)+A023531(n))/ϕ)` -/
def P11800026218827256651.Spec : Prop :=
  ∀ n, P11800026218827256651.a n = A171729 (n + 1)

end A171729

/-! ## A171729.P6100660355174779384

`A143061(A122797(n+1)+A023531(n))`
-/

namespace A171729.P6100660355174779384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A122797 (n + 1) + A023531 n).toNat

end

end A171729.P6100660355174779384

namespace A171729

/-- `A143061(A122797(n+1)+A023531(n))` -/
def P6100660355174779384.Spec : Prop :=
  ∀ n, P6100660355174779384.a n = A171729 (n + 1)

end A171729

/-! ## A171729.P9379723639833450898

`A143061(A127648(n)+A122797(n+1))`
-/

namespace A171729.P9379723639833450898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A127648 n + A122797 (n + 1)).toNat

end

end A171729.P9379723639833450898

namespace A171729

/-- `A143061(A127648(n)+A122797(n+1))` -/
def P9379723639833450898.Spec : Prop :=
  ∀ n, P9379723639833450898.a n = A171729 (n + 1)

end A171729

/-! ## A171729.P17514632815381662369

`A005206(A143061(n+1)+A023531(n))`
-/

namespace A171729.P17514632815381662369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A143061 (n + 1) + A023531 n).toNat

end

end A171729.P17514632815381662369

namespace A171729

/-- `A005206(A143061(n+1)+A023531(n))` -/
def P17514632815381662369.Spec : Prop :=
  ∀ n, P17514632815381662369.a n = A171729 (n + 1)

end A171729

/-! ## A171729.P10848251015673595827

`A005206(A143061(n+1)+A010054(n+1))`
-/

namespace A171729.P10848251015673595827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A143061 (n + 1) + A010054 (n + 1)).toNat

end

end A171729.P10848251015673595827

namespace A171729

/-- `A005206(A143061(n+1)+A010054(n+1))` -/
def P10848251015673595827.Spec : Prop :=
  ∀ n, P10848251015673595827.a n = A171729 (n + 1)

end A171729

/-! ## A171729.P8835870714182818254

`A005379(A143061(n+1)+A097806(n))`
-/

namespace A171729.P8835870714182818254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (A143061 (n + 1) + A097806 n).toNat

end

end A171729.P8835870714182818254

namespace A171729

/-- `A005379(A143061(n+1)+A097806(n))` -/
def P8835870714182818254.Spec : Prop :=
  ∀ n, P8835870714182818254.a n = A171729 (n + 1)

end A171729

/-! ## A171729.P722470159677032114

`A005378(A143061(n+1)-A010054(n))`
-/

namespace A171729.P722470159677032114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A143061 (n + 1) - A010054 n).toNat

end

end A171729.P722470159677032114

namespace A171729

/-- `A005378(A143061(n+1)-A010054(n))` -/
def P722470159677032114.Spec : Prop :=
  ∀ n, P722470159677032114.a n = A171729 (n + 1)

end A171729

/-! ## A171729.P7442993287952555704

`A005378(A143061(n+1)-A073424(n))`
-/

namespace A171729.P7442993287952555704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A143061 (n + 1) - A073424 n).toNat

end

end A171729.P7442993287952555704

namespace A171729

/-- `A005378(A143061(n+1)-A073424(n))` -/
def P7442993287952555704.Spec : Prop :=
  ∀ n, P7442993287952555704.a n = A171729 (n + 1)

end A171729

/-! ## A171729.P13446028002076113467

`A005378(A143061(n+1)+Δ[A035214(n)])`
-/

namespace A171729.P13446028002076113467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A143061 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A171729.P13446028002076113467

namespace A171729

/-- `A005378(A143061(n+1)+Δ[A035214(n)])` -/
def P13446028002076113467.Spec : Prop :=
  ∀ n, P13446028002076113467.a n = A171729 (n + 1)

end A171729

/-!
# A171730: Triangle of differences of Fibonacci numbers, rows descending.

The programs for A171730, the canonical program `A171730.P9109354056744307278` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171730 has offset 1).

The definition of A171730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171730.P9109354056744307278

`A193922(n)+char[∑[n+1]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A171730

/-- `A193922(n)+char[∑[n+1]]` -/
def P9109354056744307278.Spec : Prop :=
  ∀ n, P9109354056744307278.a n = A171730 (n + 1)

theorem P9109354056744307278.correct : P9109354056744307278.Spec := by
  intro n
  simp only [A171730, Nat.add_sub_cancel]

end A171730

/-! ## A171730.P8723422279349000982

`A171729(A038722(n+1))`
-/

namespace A171730.P8723422279349000982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171729 (A038722 (n + 1)).toNat

end

end A171730.P8723422279349000982

namespace A171730

/-- `A171729(A038722(n+1))` -/
def P8723422279349000982.Spec : Prop :=
  ∀ n, P8723422279349000982.a n = A171730 (n + 1)

end A171730

/-! ## A171730.P14813834910991465597

`A073424(n)+round(A204922(n+1)/ϕ)`
-/

namespace A171730.P14813834910991465597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + SequenceMachineLib.roundAway ((A204922 (n + 1) : ℝ) / Real.goldenRatio)

end

end A171730.P14813834910991465597

namespace A171730

/-- `A073424(n)+round(A204922(n+1)/ϕ)` -/
def P14813834910991465597.Spec : Prop :=
  ∀ n, P14813834910991465597.a n = A171730 (n + 1)

end A171730

/-! ## A171730.P2382936369125846183

`A204922(round(n-sqrt(2*n))+1)+A073424(n)`
-/

namespace A171730.P2382936369125846183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (2 * n : ℝ)) + 1).toNat + A073424 n

end

end A171730.P2382936369125846183

namespace A171730

/-- `A204922(round(n-sqrt(2*n))+1)+A073424(n)` -/
def P2382936369125846183.Spec : Prop :=
  ∀ n, P2382936369125846183.a n = A171730 (n + 1)

end A171730

/-! ## A171730.P7299332429109253168

`A073424(n)+round(round(A193999(n+1)/ϕ)/ϕ)`
-/

namespace A171730.P7299332429109253168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A193999 (n + 1) : ℝ) / Real.goldenRatio) : ℝ) / Real.goldenRatio)

end

end A171730.P7299332429109253168

namespace A171730

/-- `A073424(n)+round(round(A193999(n+1)/ϕ)/ϕ)` -/
def P7299332429109253168.Spec : Prop :=
  ∀ n, P7299332429109253168.a n = A171730 (n + 1)

end A171730

/-! ## A171730.P9562109026061965578

`A193922(Δ[round(sqrt(2*n))²]+n)`
-/

namespace A171730.P9562109026061965578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A171730.P9562109026061965578

namespace A171730

/-- `A193922(Δ[round(sqrt(2*n))²]+n)` -/
def P9562109026061965578.Spec : Prop :=
  ∀ n, P9562109026061965578.a n = A171730 (n + 1)

end A171730

/-! ## A171730.P11065290428172981737

`A204922(A080036(n)+1)-A204922(n+1)`
-/

namespace A171730.P11065290428172981737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A080036 n + 1).toNat - A204922 (n + 1)

end

end A171730.P11065290428172981737

namespace A171730

/-- `A204922(A080036(n)+1)-A204922(n+1)` -/
def P11065290428172981737.Spec : Prop :=
  ∀ n, P11065290428172981737.a n = A171730 (n + 1)

end A171730

/-! ## A171730.P14022648133378852750

`A005206(A204922(n+1)+char[C(n, 2)])`
-/

namespace A171730.P14022648133378852750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A204922 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A171730.P14022648133378852750

namespace A171730

/-- `A005206(A204922(n+1)+char[C(n, 2)])` -/
def P14022648133378852750.Spec : Prop :=
  ∀ n, P14022648133378852750.a n = A171730 (n + 1)

end A171730

/-! ## A171730.P1731201221834915408

`A005206(A204922(n+1)+A010054(n))`
-/

namespace A171730.P1731201221834915408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A204922 (n + 1) + A010054 n).toNat

end

end A171730.P1731201221834915408

namespace A171730

/-- `A005206(A204922(n+1)+A010054(n))` -/
def P1731201221834915408.Spec : Prop :=
  ∀ n, P1731201221834915408.a n = A171730 (n + 1)

end A171730

/-! ## A171730.P16508788435128353657

`A005206(A204922(n+1)+A073424(n))`
-/

namespace A171730.P16508788435128353657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A204922 (n + 1) + A073424 n).toNat

end

end A171730.P16508788435128353657

namespace A171730

/-- `A005206(A204922(n+1)+A073424(n))` -/
def P16508788435128353657.Spec : Prop :=
  ∀ n, P16508788435128353657.a n = A171730 (n + 1)

end A171730

/-!
# A171731: Triangle T : T(n,k)= binomial(n,k)*Fibonacci(n-k)= A007318(n,k)*A000045(n-k).

The programs for A171731, the canonical program `A171731.P6855340763383197574` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171731 has offset 0).

The definition of A171731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171731.P6855340763383197574

`A094442(n)-A094441(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A171731

/-- `A094442(n)-A094441(n)` -/
def P6855340763383197574.Spec : Prop :=
  ∀ n, P6855340763383197574.a n = A171731 n

theorem P6855340763383197574.correct : P6855340763383197574.Spec := by
  intro n
  simp only [A171731]

end A171731

/-! ## A171731.P7661271612449687059

`2*A094442(n)-A094443(n)`
-/

namespace A171731.P7661271612449687059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094442 n - A094443 n

end

end A171731.P7661271612449687059

namespace A171731

/-- `2*A094442(n)-A094443(n)` -/
def P7661271612449687059.Spec : Prop :=
  ∀ n, P7661271612449687059.a n = A171731 n

end A171731

/-! ## A171731.P8706932049344664356

`A094443(n)-2*A094441(n)`
-/

namespace A171731.P8706932049344664356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094443 n - 2 * A094441 n

end

end A171731.P8706932049344664356

namespace A171731

/-- `A094443(n)-2*A094441(n)` -/
def P8706932049344664356.Spec : Prop :=
  ∀ n, P8706932049344664356.a n = A171731 n

end A171731

/-! ## A171731.P431968724306576829

`A209560(n+1)-A210213(n+1)`
-/

namespace A171731.P431968724306576829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209560 (n + 1) - A210213 (n + 1)

end

end A171731.P431968724306576829

namespace A171731

/-- `A209560(n+1)-A210213(n+1)` -/
def P431968724306576829.Spec : Prop :=
  ∀ n, P431968724306576829.a n = A171731 n

end A171731

/-! ## A171731.P14387473698226522344

`A007318(n)*A000045(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A171731.P14387473698226522344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000045 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A171731.P14387473698226522344

namespace A171731

/-- `A007318(n)*A000045(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P14387473698226522344.Spec : Prop :=
  ∀ n, P14387473698226522344.a n = A171731 n

end A171731

/-! ## A171731.P10320051278720847165

`A007318(n)*A000045(A025581(n))`
-/

namespace A171731.P10320051278720847165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000045 (A025581 n).toNat

end

end A171731.P10320051278720847165

namespace A171731

/-- `A007318(n)*A000045(A025581(n))` -/
def P10320051278720847165.Spec : Prop :=
  ∀ n, P10320051278720847165.a n = A171731 n

end A171731

/-! ## A171731.P664597806401267649

`A007318(n)*A103609(A099375(n))`
-/

namespace A171731.P664597806401267649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A103609 (A099375 n).toNat

end

end A171731.P664597806401267649

namespace A171731

/-- `A007318(n)*A103609(A099375(n))` -/
def P664597806401267649.Spec : Prop :=
  ∀ n, P664597806401267649.a n = A171731 n

end A171731

/-! ## A171731.P2901016581501994605

`A094440(n+2)-A094441(n+1)`
-/

namespace A171731.P2901016581501994605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (n + 2) - A094441 (n + 1)

end

end A171731.P2901016581501994605

namespace A171731

/-- `A094440(n+2)-A094441(n+1)` -/
def P2901016581501994605.Spec : Prop :=
  ∀ n, P2901016581501994605.a n = A171731 n

end A171731

/-! ## A171731.P5349116030136355088

`abs(A113020(A061579(n)))`
-/

namespace A171731.P5349116030136355088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113020 (A061579 n).toNat|

end

end A171731.P5349116030136355088

namespace A171731

/-- `abs(A113020(A061579(n)))` -/
def P5349116030136355088.Spec : Prop :=
  ∀ n, P5349116030136355088.a n = A171731 n

end A171731

/-! ## A171731.P3297189189311179618

`abs(A113020(A038722(n+1)-1))`
-/

namespace A171731.P3297189189311179618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113020 (A038722 (n + 1) - 1).toNat|

end

end A171731.P3297189189311179618

namespace A171731

/-- `abs(A113020(A038722(n+1)-1))` -/
def P3297189189311179618.Spec : Prop :=
  ∀ n, P3297189189311179618.a n = A171731 n

end A171731

/-! ## A171731.P15029061056044638769

`abs(A113020(A038722(n+2)))`
-/

namespace A171731.P15029061056044638769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113020 (A038722 (n + 2)).toNat|

end

end A171731.P15029061056044638769

namespace A171731

/-- `abs(A113020(A038722(n+2)))` -/
def P15029061056044638769.Spec : Prop :=
  ∀ n, P15029061056044638769.a n = A171731 n

end A171731

/-! ## A171731.P4118291489734270031

`A094440(n+2)-A094436(A061579(n+1))`
-/

namespace A171731.P4118291489734270031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (n + 2) - A094436 (A061579 (n + 1)).toNat

end

end A171731.P4118291489734270031

namespace A171731

/-- `A094440(n+2)-A094436(A061579(n+1))` -/
def P4118291489734270031.Spec : Prop :=
  ∀ n, P4118291489734270031.a n = A171731 n

end A171731

/-!
# A171732: a(n) = Sum_{d|n} d*2^(d^2).

The programs for A171732, the canonical program `A171732.P2646611816451594402` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171732 has offset 1).

The definition of A171732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171732.P2646611816451594402

`∑{d}[n+1, #*2^#²]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171732

/-- `∑{d}[n+1, #*2^#²]` -/
def P2646611816451594402.Spec : Prop :=
  ∀ n, (P2646611816451594402.a n : ℤ) = A171732 (n + 1)

theorem P2646611816451594402.correct : P2646611816451594402.Spec := by
  intro n
  simp only [A171732, Nat.add_sub_cancel]

end A171732

/-!
# A171733: a(2n)=A165568(n). a(2n+1)=A165563(n).

The programs for A171733, the canonical program `A171733.P17182151840817655766` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171733 has offset 0).

The definition of A171733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171733.P17182151840817655766

`∑[n%or(1, n)]²-(Δ[lcm(2, n)]-1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171733

/-- `∑[n%or(1, n)]²-(Δ[lcm(2, n)]-1)` -/
def P17182151840817655766.Spec : Prop :=
  ∀ n, P17182151840817655766.a n = A171733 n

theorem P17182151840817655766.correct : P17182151840817655766.Spec := by
  intro n
  simp only [A171733]

end A171733

/-! ## A171733.P4325120108333081290

`A110660(n)²-A296063(n+1)`
-/

namespace A171733.P4325120108333081290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n ^ 2 - A296063 (n + 1)

end

end A171733.P4325120108333081290

namespace A171733

/-- `A110660(n)²-A296063(n+1)` -/
def P4325120108333081290.Spec : Prop :=
  ∀ n, P4325120108333081290.a n = A171733 n

end A171733

/-! ## A171733.P14621765044267208217

`∑[A171734(n)]-(A171734(n)+1)`
-/

namespace A171733.P14621765044267208217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A171734 n + 1)

end

end A171733.P14621765044267208217

namespace A171733

/-- `∑[A171734(n)]-(A171734(n)+1)` -/
def P14621765044267208217.Spec : Prop :=
  ∀ n, P14621765044267208217.a n = A171733 n

end A171733

/-! ## A171733.P3822334994386480058

`∑[A237420(n)]²-A296063(n+1)`
-/

namespace A171733.P3822334994386480058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A296063 (n + 1)

end

end A171733.P3822334994386480058

namespace A171733

/-- `∑[A237420(n)]²-A296063(n+1)` -/
def P3822334994386480058.Spec : Prop :=
  ∀ n, P3822334994386480058.a n = A171733 n

end A171733

/-! ## A171733.P8239319702937005415

`Δ[A022998(n)]+A110660(n)²-2`
-/

namespace A171733.P8239319702937005415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A110660 n ^ 2 - 2

end

end A171733.P8239319702937005415

namespace A171733

/-- `Δ[A022998(n)]+A110660(n)²-2` -/
def P8239319702937005415.Spec : Prop :=
  ∀ n, P8239319702937005415.a n = A171733 n

end A171733

/-! ## A171733.P7258694918198827180

`A035287(A008619(n))-A296063(n+1)`
-/

namespace A171733.P7258694918198827180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035287 (A008619 n).toNat - A296063 (n + 1)

end

end A171733.P7258694918198827180

namespace A171733

/-- `A035287(A008619(n))-A296063(n+1)` -/
def P7258694918198827180.Spec : Prop :=
  ∀ n, P7258694918198827180.a n = A171733 n

end A171733

/-!
# A171734: First differences of A171733.

The programs for A171734, the canonical program `A171734.P16815318355326185533` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171734 has offset 0).

The definition of A171734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171734.P16815318355326185533

`(n+1)*A266074(A124625(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171734

/-- `(n+1)*A266074(A124625(n))` -/
def P16815318355326185533.Spec : Prop :=
  ∀ n, P16815318355326185533.a n = A171734 n

theorem P16815318355326185533.correct : P16815318355326185533.Spec := by
  intro n
  simp only [A171734]

end A171734

/-! ## A171734.P5547974558440565281

`Δ[A171733(n)]`
-/

namespace A171734.P5547974558440565281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171734.P5547974558440565281

namespace A171734

/-- `Δ[A171733(n)]` -/
def P5547974558440565281.Spec : Prop :=
  ∀ n, P5547974558440565281.a n = A171734 n

end A171734

/-! ## A171734.P3916916240038077987

`A171733(n+1)-A171733(n)`
-/

namespace A171734.P3916916240038077987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171733 (n + 1) - A171733 n

end

end A171734.P3916916240038077987

namespace A171734

/-- `A171733(n+1)-A171733(n)` -/
def P3916916240038077987.Spec : Prop :=
  ∀ n, P3916916240038077987.a n = A171734 n

end A171734

/-! ## A171734.P14625507278143789495

`Δ[Δ[A022998(n)]+A110660(n)²]`
-/

namespace A171734.P14625507278143789495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A110660 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171734.P14625507278143789495

namespace A171734

/-- `Δ[Δ[A022998(n)]+A110660(n)²]` -/
def P14625507278143789495.Spec : Prop :=
  ∀ n, P14625507278143789495.a n = A171734 n

end A171734

/-! ## A171734.P10078398472344149475

`Δ[A110660(n)²-A296063(n+1)]`
-/

namespace A171734.P10078398472344149475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n ^ 2 - A296063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171734.P10078398472344149475

namespace A171734

/-- `Δ[A110660(n)²-A296063(n+1)]` -/
def P10078398472344149475.Spec : Prop :=
  ∀ n, P10078398472344149475.a n = A171734 n

end A171734

/-! ## A171734.P13201076430291566501

`A004442(n)*A266073(∑[A093178(n)])`
-/

namespace A171734.P13201076430291566501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A266073 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171734.P13201076430291566501

namespace A171734

/-- `A004442(n)*A266073(∑[A093178(n)])` -/
def P13201076430291566501.Spec : Prop :=
  ∀ n, P13201076430291566501.a n = A171734 n

end A171734

/-! ## A171734.P2312470742901621608

`A004442(n)*A014132(A176889(n+1))`
-/

namespace A171734.P2312470742901621608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A014132 (A176889 (n + 1)).toNat

end

end A171734.P2312470742901621608

namespace A171734

/-- `A004442(n)*A014132(A176889(n+1))` -/
def P2312470742901621608.Spec : Prop :=
  ∀ n, P2312470742901621608.a n = A171734 n

end A171734

/-!
# A171735: Numbers n such that 10^n*(2+7*10^n)+7 is prime.

The programs for A171735, there is no canonical definition to state claims against.
-/

/-! ## A171735.P13501469993203435648

`A113769(A113774(n+1))%A166637(2*n+3)`
-/

namespace A171735.P13501469993203435648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113769 (A113774 (n + 1)).toNat) (A166637 (2 * n + 3))

end

end A171735.P13501469993203435648

/-!
# A171736: a(n) = 10^n*(2+7*10^n)+7.

The programs for A171736, the canonical program `A171736.P17959651750792459907` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171736 has offset 0).

The definition of A171736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n*(2+7*10^n)+7` (program `A171736.P17959651750792459907`, by `A171736.P17959651750792459907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171736.P17959651750792459907

`10^n*(2+7*10^n)+7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171736

/-- `10^n*(2+7*10^n)+7` -/
def P17959651750792459907.Spec : Prop :=
  ∀ n, (P17959651750792459907.a n : ℤ) = A171736 n

theorem P17959651750792459907.correct : P17959651750792459907.Spec := by
  intro n
  simp only [A171736]

end A171736

/-!
# A171737: Number of new extreme inequalities for the flag f-vectors of graded posets of rank n that do not come from those of lower ranks.

The programs for A171737, there is no canonical definition to state claims against.
-/

/-! ## A171737.P18154349226804509387

`19*C(a(n-1), 4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=7`
-/

namespace A171737.P18154349226804509387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 7] fun n a =>
  19 * Nat.choose (a (n - 1)) 4

end

end A171737.P18154349226804509387

/-!
# A171738: Number of n-digit terms in A115853.

The programs for A171738, there is no canonical definition to state claims against.
-/

/-! ## A171738.P14676407720064892035

`9*A211793(A150010(n))`
-/

namespace A171738.P14676407720064892035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A211793 (A150010 n).toNat

end

end A171738.P14676407720064892035

/-!
# A171739: a(n) = 2^(n*(n-1)/2)*3^(n*(n+1)/2).

The programs for A171739, the canonical program `A171739.P8501029802980019094` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171739 has offset 0).

The definition of A171739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171739.P8501029802980019094

`2^(n*(n-1)/2)*3^(n*(n+1)/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171739

/-- `2^(n*(n-1)/2)*3^(n*(n+1)/2)` -/
def P8501029802980019094.Spec : Prop :=
  ∀ n, P8501029802980019094.a n = (A171739 n : ℝ)

end A171739

/-! ## A171739.P17334793965502506929

`∏[6*a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A171739.P17334793965502506929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A171739.P17334793965502506929

namespace A171739

/-- `∏[6*a(n-1)]` -/
def P17334793965502506929.Spec : Prop :=
  ∀ n, (P17334793965502506929.a n : ℤ) = A171739 n

end A171739

/-! ## A171739.P6026407420352262089

`6^n*a(n-1)/2` with `a(0)=1, a(1)=3`
-/

namespace A171739.P6026407420352262089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (6 ^ n : ℚ) * a (n - 1) / 2

end

end A171739.P6026407420352262089

namespace A171739

/-- `6^n*a(n-1)/2` -/
def P6026407420352262089.Spec : Prop :=
  ∀ n, P6026407420352262089.a n = (A171739 n : ℚ)

end A171739

/-! ## A171739.P14458474710434169237

`∏[A081341(n)]`
-/

namespace A171739.P14458474710434169237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A171739.P14458474710434169237

namespace A171739

/-- `∏[A081341(n)]` -/
def P14458474710434169237.Spec : Prop :=
  ∀ n, P14458474710434169237.a n = A171739 n

end A171739

/-! ## A171739.P5213379785031249954

`∏[floor(A062394(n)/2)]`
-/

namespace A171739.P5213379785031249954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062394 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A171739.P5213379785031249954

namespace A171739

/-- `∏[floor(A062394(n)/2)]` -/
def P5213379785031249954.Spec : Prop :=
  ∀ n, P5213379785031249954.a n = A171739 n

end A171739

/-!
# A171743: a(n) = A000010(A001043(n)).

The programs for A171743, the canonical program `A171743.P3977573141868605585` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171743 has offset 1).

The definition of A171743 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171743.P3977573141868605585

`A000010(A001043(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A171743

/-- `A000010(A001043(n+1))` -/
def P3977573141868605585.Spec : Prop :=
  ∀ n, P3977573141868605585.a n = A171743 (n + 1)

theorem P3977573141868605585.correct : P3977573141868605585.Spec := by
  intro n
  simp only [A171743, Nat.add_sub_cancel]

end A171743

/-! ## A171743.P15561868395415999019

`A000010(Δ[A061802(n)])`
-/

namespace A171743.P15561868395415999019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A171743.P15561868395415999019

namespace A171743

/-- `A000010(Δ[A061802(n)])` -/
def P15561868395415999019.Spec : Prop :=
  ∀ n, P15561868395415999019.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P3467476773990009717

`A000010(A011974(n+2))`
-/

namespace A171743.P3467476773990009717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A011974 (n + 2)).toNat

end

end A171743.P3467476773990009717

namespace A171743

/-- `A000010(A011974(n+2))` -/
def P3467476773990009717.Spec : Prop :=
  ∀ n, P3467476773990009717.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P11529382869436081702

`A000010(A164653(n+3))`
-/

namespace A171743.P11529382869436081702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A164653 (n + 3)).toNat

end

end A171743.P11529382869436081702

namespace A171743

/-- `A000010(A164653(n+3))` -/
def P11529382869436081702.Spec : Prop :=
  ∀ n, P11529382869436081702.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P4754445852603794349

`A000010(A076273(n+2)+1)`
-/

namespace A171743.P4754445852603794349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A076273 (n + 2) + 1).toNat

end

end A171743.P4754445852603794349

namespace A171743

/-- `A000010(A076273(n+2)+1)` -/
def P4754445852603794349.Spec : Prop :=
  ∀ n, P4754445852603794349.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P18366799718978759817

`A000010(A092949(n+1)-1)`
-/

namespace A171743.P18366799718978759817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A092949 (n + 1) - 1).toNat

end

end A171743.P18366799718978759817

namespace A171743

/-- `A000010(A092949(n+1)-1)` -/
def P18366799718978759817.Spec : Prop :=
  ∀ n, P18366799718978759817.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P15282598758949962850

`A000010(p?[2*n+1]+record[A006530(n+2)])`
-/

namespace A171743.P15282598758949962850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A171743.P15282598758949962850

namespace A171743

/-- `A000010(p?[2*n+1]+record[A006530(n+2)])` -/
def P15282598758949962850.Spec : Prop :=
  ∀ n, P15282598758949962850.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P4729807917360530954

`A000010(A061802(n+1)-A061802(n))`
-/

namespace A171743.P4729807917360530954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A061802 (n + 1) - A061802 n).toNat

end

end A171743.P4729807917360530954

namespace A171743

/-- `A000010(A061802(n+1)-A061802(n))` -/
def P4729807917360530954.Spec : Prop :=
  ∀ n, P4729807917360530954.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P11557128031436801914

`A000010(A065091(n+1)+A000040(n+1))`
-/

namespace A171743.P11557128031436801914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065091 (n + 1) + A000040 (n + 1)).toNat

end

end A171743.P11557128031436801914

namespace A171743

/-- `A000010(A065091(n+1)+A000040(n+1))` -/
def P11557128031436801914.Spec : Prop :=
  ∀ n, P11557128031436801914.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P16823896738173709260

`A000010(A000040(n+1)+A000040(n+2))`
-/

namespace A171743.P16823896738173709260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A171743.P16823896738173709260

namespace A171743

/-- `A000010(A000040(n+1)+A000040(n+2))` -/
def P16823896738173709260.Spec : Prop :=
  ∀ n, P16823896738173709260.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P8392970176490455185

`A000010(A008864(n+1)+A006093(n+2))`
-/

namespace A171743.P8392970176490455185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008864 (n + 1) + A006093 (n + 2)).toNat

end

end A171743.P8392970176490455185

namespace A171743

/-- `A000010(A008864(n+1)+A006093(n+2))` -/
def P8392970176490455185.Spec : Prop :=
  ∀ n, P8392970176490455185.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P13455133658515010499

`A000010(A008578(n+2)+A006005(n+2))`
-/

namespace A171743.P13455133658515010499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008578 (n + 2) + A006005 (n + 2)).toNat

end

end A171743.P13455133658515010499

namespace A171743

/-- `A000010(A008578(n+2)+A006005(n+2))` -/
def P13455133658515010499.Spec : Prop :=
  ∀ n, P13455133658515010499.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P5605764301443797823

`A000010(A008864(n+2)+record[A000010(n+1)])`
-/

namespace A171743.P5605764301443797823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008864 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171743.P5605764301443797823

namespace A171743

/-- `A000010(A008864(n+2)+record[A000010(n+1)])` -/
def P5605764301443797823.Spec : Prop :=
  ∀ n, P5605764301443797823.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P9781956631101483760

`A000010(A006093(n+1)+A065091(n+1)+1)`
-/

namespace A171743.P9781956631101483760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006093 (n + 1) + (A065091 (n + 1) + 1)).toNat

end

end A171743.P9781956631101483760

namespace A171743

/-- `A000010(A006093(n+1)+A065091(n+1)+1)` -/
def P9781956631101483760.Spec : Prop :=
  ∀ n, P9781956631101483760.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P7899668273459033549

`A000010(2*A065091(n+1)-A001223(n+1))`
-/

namespace A171743.P7899668273459033549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A065091 (n + 1) - A001223 (n + 1)).toNat

end

end A171743.P7899668273459033549

namespace A171743

/-- `A000010(2*A065091(n+1)-A001223(n+1))` -/
def P7899668273459033549.Spec : Prop :=
  ∀ n, P7899668273459033549.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P11887538692690758071

`A000010(A065091(n+1)+A065091(n+1)-A001223(n+1))`
-/

namespace A171743.P11887538692690758071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065091 (n + 1) + (A065091 (n + 1) - A001223 (n + 1))).toNat

end

end A171743.P11887538692690758071

namespace A171743

/-- `A000010(A065091(n+1)+A065091(n+1)-A001223(n+1))` -/
def P11887538692690758071.Spec : Prop :=
  ∀ n, P11887538692690758071.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P4615846894467515806

`A000010(A144043(2*(n+1)))`
-/

namespace A171743.P4615846894467515806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A144043 (2 * (n + 1))).toNat

end

end A171743.P4615846894467515806

namespace A171743

/-- `A000010(A144043(2*(n+1)))` -/
def P4615846894467515806.Spec : Prop :=
  ∀ n, P4615846894467515806.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P6601523545323933699

`A000010(p?[2*n+1]+record[A014963(n+2)])`
-/

namespace A171743.P6601523545323933699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A171743.P6601523545323933699

namespace A171743

/-- `A000010(p?[2*n+1]+record[A014963(n+2)])` -/
def P6601523545323933699.Spec : Prop :=
  ∀ n, P6601523545323933699.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P8954891617477586267

`A000010(A013634(A000040(n+1)))`
-/

namespace A171743.P8954891617477586267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A013634 (A000040 (n + 1)).toNat).toNat

end

end A171743.P8954891617477586267

namespace A171743

/-- `A000010(A013634(A000040(n+1)))` -/
def P8954891617477586267.Spec : Prop :=
  ∀ n, P8954891617477586267.a n = A171743 (n + 1)

end A171743

/-! ## A171743.P5455400922754873663

`A000010(A116570(2*n+1)+record[A014963(n+2)])`
-/

namespace A171743.P5455400922754873663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A116570 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171743.P5455400922754873663

namespace A171743

/-- `A000010(A116570(2*n+1)+record[A014963(n+2)])` -/
def P5455400922754873663.Spec : Prop :=
  ∀ n, P5455400922754873663.a n = A171743 (n + 1)

end A171743

/-!
# A171744: a(n) is the smallest exponent such that prime(n)^k is pandigital in base 10.

The programs for A171744, there is no canonical definition to state claims against.
-/

/-! ## A171744.P6924766541656495123

`A090493(p?[comp[n²]])`
-/

namespace A171744.P6924766541656495123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090493 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171744.P6924766541656495123

/-! ## A171744.P18408359022150263666

`A090493(A000040(n+1))`
-/

namespace A171744.P18408359022150263666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090493 (A000040 (n + 1)).toNat

end

end A171744.P18408359022150263666

/-! ## A171744.P4252100548185770551

`A090493(A008578(n+2))`
-/

namespace A171744.P4252100548185770551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090493 (A008578 (n + 2)).toNat

end

end A171744.P4252100548185770551

/-! ## A171744.P7154310369651194530

`A090493(A182986(n+2))`
-/

namespace A171744.P7154310369651194530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090493 (A182986 (n + 2)).toNat

end

end A171744.P7154310369651194530

/-! ## A171744.P6988275623785174317

`A090493(∑[A054541(n+1)])`
-/

namespace A171744.P6988275623785174317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090493 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171744.P6988275623785174317

/-! ## A171744.P11326428183226386867

`A090493(record[A006530(n+2)])`
-/

namespace A171744.P11326428183226386867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090493 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171744.P11326428183226386867

/-! ## A171744.P397798930474125334

`A090493(record[A014963(n+2)])`
-/

namespace A171744.P397798930474125334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090493 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171744.P397798930474125334

/-! ## A171744.P11221433962152269665

`A090493(record[A020639(n+2)])`
-/

namespace A171744.P11221433962152269665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090493 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171744.P11221433962152269665

/-!
# A171746: Let f(n) = n + floor(sqrt(n)). Then a(n) is the smallest number of iterations of f on n such that a perfect square is obtained.

The programs for A171746, the canonical program `A171746.P7186216401263044259` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171746 has offset 1).

The definition of A171746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171746.P7186216401263044259

`A005408(A000196(n+1))-A082375(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171746

/-- `A005408(A000196(n+1))-A082375(n)` -/
def P7186216401263044259.Spec : Prop :=
  ∀ n, P7186216401263044259.a n = A171746 (n + 1)

theorem P7186216401263044259.correct : P7186216401263044259.Spec := by
  intro n
  simp only [A171746, Nat.add_sub_cancel]

end A171746

/-! ## A171746.P838682933667636168

`A001650(n+2)-A082375(n)`
-/

namespace A171746.P838682933667636168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (n + 2) - A082375 n

end

end A171746.P838682933667636168

namespace A171746

/-- `A001650(n+2)-A082375(n)` -/
def P838682933667636168.Spec : Prop :=
  ∀ n, P838682933667636168.a n = A171746 (n + 1)

end A171746

/-! ## A171746.P6750053553206158849

`A001650(n+2)+1-A122196(n+1)`
-/

namespace A171746.P6750053553206158849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (n + 2) + (1 - A122196 (n + 1))

end

end A171746.P6750053553206158849

namespace A171746

/-- `A001650(n+2)+1-A122196(n+1)` -/
def P6750053553206158849.Spec : Prop :=
  ∀ n, P6750053553206158849.a n = A171746 (n + 1)

end A171746

/-! ## A171746.P2221450492331304500

`A071797(A000122(n+1)+A071797(n+1)+n+1)`
-/

namespace A171746.P2221450492331304500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A000122 (n + 1) + (A071797 (n + 1) + (n : ℤ)) + 1).toNat

end

end A171746.P2221450492331304500

namespace A171746

/-- `A071797(A000122(n+1)+A071797(n+1)+n+1)` -/
def P2221450492331304500.Spec : Prop :=
  ∀ n, P2221450492331304500.a n = A171746 (n + 1)

end A171746

/-! ## A171746.P10541626518371858796

`A004736(A091995(n+1))+A000122(n+1)`
-/

namespace A171746.P10541626518371858796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A091995 (n + 1)).toNat + A000122 (n + 1)

end

end A171746.P10541626518371858796

namespace A171746

/-- `A004736(A091995(n+1))+A000122(n+1)` -/
def P10541626518371858796.Spec : Prop :=
  ∀ n, P10541626518371858796.a n = A171746 (n + 1)

end A171746

/-! ## A171746.P17724175053855885957

`A167430(n+1)+A000122(n+1)`
-/

namespace A171746.P17724175053855885957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (n + 1) + A000122 (n + 1)

end

end A171746.P17724175053855885957

namespace A171746

/-- `A167430(n+1)+A000122(n+1)` -/
def P17724175053855885957.Spec : Prop :=
  ∀ n, P17724175053855885957.a n = A171746 (n + 1)

end A171746

/-! ## A171746.P16706916868542601813

`A167430(n+1)+Δ[2*A000196(n)]`
-/

namespace A171746.P16706916868542601813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (n + 1) + (f1 (n + 1) - f1 n)

end

end A171746.P16706916868542601813

namespace A171746

/-- `A167430(n+1)+Δ[2*A000196(n)]` -/
def P16706916868542601813.Spec : Prop :=
  ∀ n, P16706916868542601813.a n = A171746 (n + 1)

end A171746

/-! ## A171746.P6465971316744115725

`A167430(n+1)+A000038(A082375(n))`
-/

namespace A171746.P6465971316744115725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (n + 1) + A000038 (A082375 n).toNat

end

end A171746.P6465971316744115725

namespace A171746

/-- `A167430(n+1)+A000038(A082375(n))` -/
def P6465971316744115725.Spec : Prop :=
  ∀ n, P6465971316744115725.a n = A171746 (n + 1)

end A171746

/-! ## A171746.P222241471075859170

`A167430(n+1)+A000096(Δ[A000196(n)])`
-/

namespace A171746.P222241471075859170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (n + 1) + A000096 (f1 (n + 1) - f1 n).toNat

end

end A171746.P222241471075859170

namespace A171746

/-- `A167430(n+1)+A000096(Δ[A000196(n)])` -/
def P222241471075859170.Spec : Prop :=
  ∀ n, P222241471075859170.a n = A171746 (n + 1)

end A171746

/-! ## A171746.P4852017267580274991

`A167430(n+1)+A064429(Δ[A000196(n)])`
-/

namespace A171746.P4852017267580274991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (n + 1) + A064429 (f1 (n + 1) - f1 n).toNat

end

end A171746.P4852017267580274991

namespace A171746

/-- `A167430(n+1)+A064429(Δ[A000196(n)])` -/
def P4852017267580274991.Spec : Prop :=
  ∀ n, P4852017267580274991.a n = A171746 (n + 1)

end A171746

/-!
# A171747: Smallest prime > n-th prime of the form 3*k-1.

The programs for A171747, the canonical program `A171747.P2976649016609342073` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171747 has offset 1).

The definition of A171747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171747.P2976649016609342073

`A004139(A138969(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A171747

/-- `A004139(A138969(n+1))` -/
def P2976649016609342073.Spec : Prop :=
  ∀ n, P2976649016609342073.a n = A171747 (n + 1)

theorem P2976649016609342073.correct : P2976649016609342073.Spec := by
  intro n
  simp only [A171747, Nat.add_sub_cancel]

end A171747

/-! ## A171747.P7600827887371348968

`A065091(A091177(n+1))`
-/

namespace A171747.P7600827887371348968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A091177 (n + 1)).toNat

end

end A171747.P7600827887371348968

namespace A171747

/-- `A065091(A091177(n+1))` -/
def P7600827887371348968.Spec : Prop :=
  ∀ n, P7600827887371348968.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P3769248473366873576

`A045319(A133677(n+2))`
-/

namespace A171747.P3769248473366873576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A133677 (n + 2)).toNat

end

end A171747.P3769248473366873576

namespace A171747

/-- `A045319(A133677(n+2))` -/
def P3769248473366873576.Spec : Prop :=
  ∀ n, P3769248473366873576.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P10197631989038810093

`A000040(A091177(n+1)+1)`
-/

namespace A171747.P10197631989038810093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091177 (n + 1) + 1).toNat

end

end A171747.P10197631989038810093

namespace A171747

/-- `A000040(A091177(n+1)+1)` -/
def P10197631989038810093.Spec : Prop :=
  ∀ n, P10197631989038810093.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P797891693271278753

`A006005(A091177(n+1)+1)`
-/

namespace A171747.P797891693271278753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A091177 (n + 1) + 1).toNat

end

end A171747.P797891693271278753

namespace A171747

/-- `A006005(A091177(n+1)+1)` -/
def P797891693271278753.Spec : Prop :=
  ∀ n, P797891693271278753.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P876295062513791488

`A100484(A091177(n+1)+1)/2`
-/

namespace A171747.P876295062513791488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (A091177 (n + 1) + 1).toNat : ℚ) / 2

end

end A171747.P876295062513791488

namespace A171747

/-- `A100484(A091177(n+1)+1)/2` -/
def P876295062513791488.Spec : Prop :=
  ∀ n, P876295062513791488.a n = (A171747 (n + 1) : ℚ)

end A171747

/-! ## A171747.P10985150800687579265

`A000040(eq[2, A039701(n+1)]+2)`
-/

namespace A171747.P10985150800687579265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A171747.P10985150800687579265

namespace A171747

/-- `A000040(eq[2, A039701(n+1)]+2)` -/
def P10985150800687579265.Spec : Prop :=
  ∀ n, P10985150800687579265.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P8130129472987004293

`A000040(eq[2, A000040(n+1)%3]+2)`
-/

namespace A171747.P8130129472987004293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A171747.P8130129472987004293

namespace A171747

/-- `A000040(eq[2, A000040(n+1)%3]+2)` -/
def P8130129472987004293.Spec : Prop :=
  ∀ n, P8130129472987004293.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P13761969531136370590

`p?[A006093(n+2)+A006093(n+1)%3]`
-/

namespace A171747.P13761969531136370590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) + Int.tmod (A006093 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171747.P13761969531136370590

namespace A171747

/-- `p?[A006093(n+2)+A006093(n+1)%3]` -/
def P13761969531136370590.Spec : Prop :=
  ∀ n, P13761969531136370590.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P18324134202860043151

`A151800(p?[3*n-1])`
-/

namespace A171747.P18324134202860043151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171747.P18324134202860043151

namespace A171747

/-- `A151800(p?[3*n-1])` -/
def P18324134202860043151.Spec : Prop :=
  ∀ n, P18324134202860043151.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P1926933768274316414

`A151800(A003627(n+1))`
-/

namespace A171747.P1926933768274316414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A003627 (n + 1)).toNat

end

end A171747.P1926933768274316414

namespace A171747

/-- `A151800(A003627(n+1))` -/
def P1926933768274316414.Spec : Prop :=
  ∀ n, P1926933768274316414.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P15764187089920039894

`-A346254(p?[3*n-1])`
-/

namespace A171747.P15764187089920039894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A346254 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171747.P15764187089920039894

namespace A171747

/-- `-A346254(p?[3*n-1])` -/
def P15764187089920039894.Spec : Prop :=
  ∀ n, P15764187089920039894.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P5396260137612045167

`A003961(p?[3*n-1])`
-/

namespace A171747.P5396260137612045167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171747.P5396260137612045167

namespace A171747

/-- `A003961(p?[3*n-1])` -/
def P5396260137612045167.Spec : Prop :=
  ∀ n, P5396260137612045167.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P11138266532921918743

`p?[A165712(3*n+2)]`
-/

namespace A171747.P11138266532921918743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165712 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171747.P11138266532921918743

namespace A171747

/-- `p?[A165712(3*n+2)]` -/
def P11138266532921918743.Spec : Prop :=
  ∀ n, P11138266532921918743.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P7051897371693098141

`A007918(p?[3*n-1]+1)`
-/

namespace A171747.P7051897371693098141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A171747.P7051897371693098141

namespace A171747

/-- `A007918(p?[3*n-1]+1)` -/
def P7051897371693098141.Spec : Prop :=
  ∀ n, P7051897371693098141.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P9767293588480454371

`A007918(A003627(n+1)+1)`
-/

namespace A171747.P9767293588480454371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A003627 (n + 1) + 1).toNat

end

end A171747.P9767293588480454371

namespace A171747

/-- `A007918(A003627(n+1)+1)` -/
def P9767293588480454371.Spec : Prop :=
  ∀ n, P9767293588480454371.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P14329958486103608820

`A117366(A112774(n+1)/2)`
-/

namespace A171747.P14329958486103608820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (SequenceMachineLib.roundAway ((A112774 (n + 1) : ℚ) / 2)).toNat

end

end A171747.P14329958486103608820

namespace A171747

/-- `A117366(A112774(n+1)/2)` -/
def P14329958486103608820.Spec : Prop :=
  ∀ n, P14329958486103608820.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P3902411407861726248

`A003961(record[A089026(3*n+2)])`
-/

namespace A171747.P3902411407861726248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171747.P3902411407861726248

namespace A171747

/-- `A003961(record[A089026(3*n+2)])` -/
def P3902411407861726248.Spec : Prop :=
  ∀ n, P3902411407861726248.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P14037068491012207272

`A065091(record[A055396(3*n+2)])`
-/

namespace A171747.P14037068491012207272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171747.P14037068491012207272

namespace A171747

/-- `A065091(record[A055396(3*n+2)])` -/
def P14037068491012207272.Spec : Prop :=
  ∀ n, P14037068491012207272.a n = A171747 (n + 1)

end A171747

/-! ## A171747.P13020388912043533869

`A151800(record[A039649(3*n+2)])`
-/

namespace A171747.P13020388912043533869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171747.P13020388912043533869

namespace A171747

/-- `A151800(record[A039649(3*n+2)])` -/
def P13020388912043533869.Spec : Prop :=
  ∀ n, P13020388912043533869.a n = A171747 (n + 1)

end A171747

/-!
# A171748: Primes of the form (2+n)*(1+2*n)+(1+n)*(2+2*n).

The programs for A171748, the canonical program `A171748.P13640592628046660521` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171748 has offset 1).

The definition of A171748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171748.P13640592628046660521

`p?[∑[record[or(2, n-1)]]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171748

/-- `p?[∑[record[or(2, n-1)]]]` -/
def P13640592628046660521.Spec : Prop :=
  ∀ n, P13640592628046660521.a n = A171748 (n + 1)

theorem P13640592628046660521.correct : P13640592628046660521.Spec := by
  intro n
  simp only [A171748, Nat.add_sub_cancel]

end A171748

/-! ## A171748.P1879909764493276596

`p?[∑[record[xor(2, n-3)]]]`
-/

namespace A171748.P1879909764493276596
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) - 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171748.P1879909764493276596

namespace A171748

/-- `p?[∑[record[xor(2, n-3)]]]` -/
def P1879909764493276596.Spec : Prop :=
  ∀ n, P1879909764493276596.a n = A171748 (n + 1)

end A171748

/-! ## A171748.P8592211525261192872

`p?[n²-comp[3*n]]`
-/

namespace A171748.P8592211525261192872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171748.P8592211525261192872

namespace A171748

/-- `p?[n²-comp[3*n]]` -/
def P8592211525261192872.Spec : Prop :=
  ∀ n, P8592211525261192872.a n = A171748 (n + 1)

end A171748

/-! ## A171748.P14771110264760535847

`or(1, p?[(2*n)²+n-1])`
-/

namespace A171748.P14771110264760535847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A171748.P14771110264760535847

namespace A171748

/-- `or(1, p?[(2*n)²+n-1])` -/
def P14771110264760535847.Spec : Prop :=
  ∀ n, P14771110264760535847.a n = A171748 (n + 1)

end A171748

/-! ## A171748.P836680347237051567

`∏{d}[p?[A213398(n)], #]`
-/

namespace A171748.P836680347237051567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A171748.P836680347237051567

namespace A171748

/-- `∏{d}[p?[A213398(n)], #]` -/
def P836680347237051567.Spec : Prop :=
  ∀ n, (P836680347237051567.a n : ℤ) = A171748 (n + 1)

end A171748

/-! ## A171748.P12982249142030746436

`∩[A038889(n+1), A182868(n)]`
-/

namespace A171748.P12982249142030746436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182868 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171748.P12982249142030746436

namespace A171748

/-- `∩[A038889(n+1), A182868(n)]` -/
def P12982249142030746436.Spec : Prop :=
  ∀ n, (P12982249142030746436.a n : ℤ) = A171748 (n + 1)

end A171748

/-! ## A171748.P8862372706809130451

`∩[A038889(n+1), A213398(n)]`
-/

namespace A171748.P8862372706809130451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171748.P8862372706809130451

namespace A171748

/-- `∩[A038889(n+1), A213398(n)]` -/
def P8862372706809130451.Spec : Prop :=
  ∀ n, (P8862372706809130451.a n : ℤ) = A171748 (n + 1)

end A171748

/-! ## A171748.P11581805736948851074

`∩[A078764(n+1), A182868(n)]`
-/

namespace A171748.P11581805736948851074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182868 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171748.P11581805736948851074

namespace A171748

/-- `∩[A078764(n+1), A182868(n)]` -/
def P11581805736948851074.Spec : Prop :=
  ∀ n, (P11581805736948851074.a n : ℤ) = A171748 (n + 1)

end A171748

/-! ## A171748.P14883584788489368854

`∩[A078764(n+1), A213398(n)]`
-/

namespace A171748.P14883584788489368854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171748.P14883584788489368854

namespace A171748

/-- `∩[A078764(n+1), A213398(n)]` -/
def P14883584788489368854.Spec : Prop :=
  ∀ n, (P14883584788489368854.a n : ℤ) = A171748 (n + 1)

end A171748

/-! ## A171748.P12018180727672305284

`∩[A307508(n+1), A182868(n)]`
-/

namespace A171748.P12018180727672305284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182868 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171748.P12018180727672305284

namespace A171748

/-- `∩[A307508(n+1), A182868(n)]` -/
def P12018180727672305284.Spec : Prop :=
  ∀ n, (P12018180727672305284.a n : ℤ) = A171748 (n + 1)

end A171748

/-!
# A171749: Odd primes of the form (1+n)*(2+2*n)+n*(3+2*n) = 4*n^2+7*n+2.

The programs for A171749, the canonical program `A171749.P11626075053212300498` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171749 has offset 1).

The definition of A171749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171749.P11626075053212300498

`p?[(2-lcm(2, n))²-n]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171749

/-- `p?[(2-lcm(2, n))²-n]` -/
def P11626075053212300498.Spec : Prop :=
  ∀ n, P11626075053212300498.a n = A171749 (n + 1)

theorem P11626075053212300498.correct : P11626075053212300498.Spec := by
  intro n
  simp only [A171749, Nat.add_sub_cancel]

end A171749

/-! ## A171749.P14212401680621361519

`p?[(2*n)²-xor(1, n)]`
-/

namespace A171749.P14212401680621361519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171749.P14212401680621361519

namespace A171749

/-- `p?[(2*n)²-xor(1, n)]` -/
def P14212401680621361519.Spec : Prop :=
  ∀ n, P14212401680621361519.a n = A171749 (n + 1)

end A171749

/-! ## A171749.P11638866773374507654

`p?[17*n²-(n+1)²]`
-/

namespace A171749.P11638866773374507654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n ^ 2 : ℤ) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171749.P11638866773374507654

namespace A171749

/-- `p?[17*n²-(n+1)²]` -/
def P11638866773374507654.Spec : Prop :=
  ∀ n, P11638866773374507654.a n = A171749 (n + 1)

end A171749

/-! ## A171749.P11785518163172078387

`or(1, p?[A185950(n+2)])`
-/

namespace A171749.P11785518163172078387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A171749.P11785518163172078387

namespace A171749

/-- `or(1, p?[A185950(n+2)])` -/
def P11785518163172078387.Spec : Prop :=
  ∀ n, P11785518163172078387.a n = A171749 (n + 1)

end A171749

/-! ## A171749.P7931354877611512677

`∏{d}[p?[A185950(2*n)], #]`
-/

namespace A171749.P7931354877611512677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185950 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A171749.P7931354877611512677

namespace A171749

/-- `∏{d}[p?[A185950(2*n)], #]` -/
def P7931354877611512677.Spec : Prop :=
  ∀ n, (P7931354877611512677.a n : ℤ) = A171749 (n + 1)

end A171749

/-! ## A171749.P15540533532176630683

`or(1, p?[A158058(n+1)-1])`
-/

namespace A171749.P15540533532176630683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158058 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A171749.P15540533532176630683

namespace A171749

/-- `or(1, p?[A158058(n+1)-1])` -/
def P15540533532176630683.Spec : Prop :=
  ∀ n, P15540533532176630683.a n = A171749 (n + 1)

end A171749

/-! ## A171749.P15300259612987597779

`∏{p}[p?[A078370(n+1)+3*n], #]`
-/

namespace A171749.P15300259612987597779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 (n + 1) + (3 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A171749.P15300259612987597779

namespace A171749

/-- `∏{p}[p?[A078370(n+1)+3*n], #]` -/
def P15300259612987597779.Spec : Prop :=
  ∀ n, (P15300259612987597779.a n : ℤ) = A171749 (n + 1)

end A171749

/-! ## A171749.P11647847557226225853

`record[p?[A138985(A138995(n+1))]]`
-/

namespace A171749.P11647847557226225853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138985 (A138995 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171749.P11647847557226225853

namespace A171749

/-- `record[p?[A138985(A138995(n+1))]]` -/
def P11647847557226225853.Spec : Prop :=
  ∀ n, P11647847557226225853.a n = A171749 (n + 1)

end A171749

/-! ## A171749.P11419268908514638130

`p?[A158058(n+1)-1]%A188213(n+1)`
-/

namespace A171749.P11419268908514638130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158058 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A188213 (n + 1))

end

end A171749.P11419268908514638130

namespace A171749

/-- `p?[A158058(n+1)-1]%A188213(n+1)` -/
def P11419268908514638130.Spec : Prop :=
  ∀ n, P11419268908514638130.a n = A171749 (n + 1)

end A171749

/-!
# A171750: Templates for lunar primes in any base (version 1).

The programs for A171750, there is no canonical definition to state claims against.
-/

/-! ## A171750.P5438548497864738018

`A171000(record[A170980(n)+2])`
-/

namespace A171750.P5438548497864738018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171750.P5438548497864738018

/-! ## A171750.P3768329867692329852

`filter[A171000(n+2), A349167(#)]`
-/

namespace A171750.P3768329867692329852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A171750.P3768329867692329852

/-! ## A171750.P2097191293689611375

`A171000(A276142(n+2)+1)`
-/

namespace A171750.P2097191293689611375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171000 (A276142 (n + 2) + 1).toNat

end

end A171750.P2097191293689611375

/-! ## A171750.P14192687095406788508

`A171000(n+3)%A235099(n+2)`
-/

namespace A171750.P14192687095406788508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171000 (n + 3)) (A235099 (n + 2))

end

end A171750.P14192687095406788508

/-!
# A171751: Maximum k with 1 <= k <= n such that nk + 1 is prime (or 0 if no such prime exists).

The programs for A171751, there is no canonical definition to state claims against.
-/

/-! ## A171751.P13691151114009253950

`ceil(A089727(n+1)/(n+2))`
-/

namespace A171751.P13691151114009253950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089727 (n + 1) : ℚ) / (n + 2 : ℚ)⌉

end

end A171751.P13691151114009253950

/-! ## A171751.P8357928994341090689

`A033676(A089727(n+1)-1)`
-/

namespace A171751.P8357928994341090689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A089727 (n + 1) - 1).toNat

end

end A171751.P8357928994341090689

/-! ## A171751.P13407136034014419175

`A033676(xor(1, A089727(n+1)))`
-/

namespace A171751.P13407136034014419175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (Int.xor 1 (A089727 (n + 1))).toNat

end

end A171751.P13407136034014419175

/-! ## A171751.P17631399184840792858

`floor(A089727(n+1)/(A028310(n)+1))`
-/

namespace A171751.P17631399184840792858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089727 (n + 1) : ℚ) / (A028310 n + 1 : ℚ)⌋

end

end A171751.P17631399184840792858

/-! ## A171751.P13507684560370549674

`(A089727(A000027(n+1))-1)/(n+1)`
-/

namespace A171751.P13507684560370549674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089727 (A000027 (n + 1)).toNat - 1 : ℚ) / (n + 1 : ℚ)

end

end A171751.P13507684560370549674

/-! ## A171751.P3568500251937886208

`floor(A089727(n+1)/(A000007(n)+1+n))`
-/

namespace A171751.P3568500251937886208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089727 (n + 1) : ℚ) / (A000007 n + 1 + (n : ℤ) : ℚ)⌋

end

end A171751.P3568500251937886208

/-! ## A171751.P2506946145376947283

`A000010(A089727(2*n-n+1))/(n+1)`
-/

namespace A171751.P2506946145376947283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A089727 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat : ℚ) / (n + 1 : ℚ)

end

end A171751.P2506946145376947283

/-! ## A171751.P2423960382949469268

`(A089727(n+1)-A007318(C(2, n)))/(n+1)`
-/

namespace A171751.P2423960382949469268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089727 (n + 1) - A007318 (Nat.choose 2 n) : ℚ) / (n + 1 : ℚ)

end

end A171751.P2423960382949469268

/-!
# A171752: Templates for lunar primes in any base (version 2).

The programs for A171752, there is no canonical definition to state claims against.
-/

/-! ## A171752.P2018260230651352159

`A007089(A346425(n+1)+A244508(n+1))`
-/

namespace A171752.P2018260230651352159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A346425 (n + 1) + A244508 (n + 1)).toNat

end

end A171752.P2018260230651352159

/-! ## A171752.P10513699258669093223

`∩[A134948(n+1), A278738(n+1)]`
-/

namespace A171752.P10513699258669093223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171752.P10513699258669093223

/-!
# A171753: Expansion of g.f. 1/(1-3*x-x^2/(1-3*x-x^2/(1-3*x))).

The programs for A171753, the canonical program `A171753.P16837344179926557234` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171753 has offset 0).

The definition of A171753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171753.P16837344179926557234

`(3^n+A083878(n))/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171753

/-- `(3^n+A083878(n))/2` -/
def P16837344179926557234.Spec : Prop :=
  ∀ n, P16837344179926557234.a n = (A171753 n : ℚ)

end A171753

/-! ## A171753.P11587646368222253923

`(A083878(n)+A000244(n))/2`
-/

namespace A171753.P11587646368222253923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083878 n + A000244 n : ℚ) / 2

end

end A171753.P11587646368222253923

namespace A171753

/-- `(A083878(n)+A000244(n))/2` -/
def P11587646368222253923.Spec : Prop :=
  ∀ n, P11587646368222253923.a n = (A171753 n : ℚ)

end A171753

/-! ## A171753.P11272918221314838080

`(A083878(n)+A000244(n))*2^A008683(A109833(n+2))`
-/

namespace A171753.P11272918221314838080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083878 n + A000244 n : ℚ) * (2 : ℚ) ^ (A008683 (A109833 (n + 2)).toNat : ℤ)

end

end A171753.P11272918221314838080

namespace A171753

/-- `(A083878(n)+A000244(n))*2^A008683(A109833(n+2))` -/
def P11272918221314838080.Spec : Prop :=
  ∀ n, P11272918221314838080.a n = (A171753 n : ℚ)

end A171753

/-! ## A171753.P8606194289841017775

`A014682(A000244(n)+((3-sqrt(2))^n+(sqrt(2)+3)^n)/2)`
-/

namespace A171753.P8606194289841017775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A000244 n : ℝ) + ((3 - Real.sqrt (2 : ℝ)) ^ n + (Real.sqrt (2 : ℝ) + 3) ^ n) / 2)).toNat

end

end A171753.P8606194289841017775

namespace A171753

/-- `A014682(A000244(n)+((3-sqrt(2))^n+(sqrt(2)+3)^n)/2)` -/
def P8606194289841017775.Spec : Prop :=
  ∀ n, P8606194289841017775.a n = A171753 n

end A171753

/-! ## A171753.P6828522519561428645

`A014682(A083878(n)+A000244(n))`
-/

namespace A171753.P6828522519561428645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A083878 n + A000244 n).toNat

end

end A171753.P6828522519561428645

namespace A171753

/-- `A014682(A083878(n)+A000244(n))` -/
def P6828522519561428645.Spec : Prop :=
  ∀ n, P6828522519561428645.a n = A171753 n

end A171753

/-!
# A171754: Hyperbolic sine of the prime numbers, rounded to the nearest integer.

The programs for A171754, the canonical program `A171754.P18260183722679767665` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171754 has offset 1).

The definition of A171754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171754.P18260183722679767665

`round(sinh(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171754

/-- `round(sinh(A000040(n+1)))` -/
def P18260183722679767665.Spec : Prop :=
  ∀ n, P18260183722679767665.a n = A171754 (n + 1)

theorem P18260183722679767665.correct : P18260183722679767665.Spec := by
  intro n
  simp only [A171754, Nat.add_sub_cancel]

end A171754

/-! ## A171754.P7807020633754376374

`A000495(A000040(n+1))`
-/

namespace A171754.P7807020633754376374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000495 (A000040 (n + 1)).toNat

end

end A171754.P7807020633754376374

namespace A171754

/-- `A000495(A000040(n+1))` -/
def P7807020633754376374.Spec : Prop :=
  ∀ n, P7807020633754376374.a n = A171754 (n + 1)

end A171754

/-! ## A171754.P14172768429215605582

`round(cosh(p?[comp[n²]]))`
-/

namespace A171754.P14172768429215605582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))

end

end A171754.P14172768429215605582

namespace A171754

/-- `round(cosh(p?[comp[n²]]))` -/
def P14172768429215605582.Spec : Prop :=
  ∀ n, P14172768429215605582.a n = A171754 (n + 1)

end A171754

/-! ## A171754.P11079879477839921895

`round(sinh(p?[comp[n²]]))`
-/

namespace A171754.P11079879477839921895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))

end

end A171754.P11079879477839921895

namespace A171754

/-- `round(sinh(p?[comp[n²]]))` -/
def P11079879477839921895.Spec : Prop :=
  ∀ n, P11079879477839921895.a n = A171754 (n + 1)

end A171754

/-! ## A171754.P7907598240774187901

`round(cosh(record[∑{p}[n+2, #]]))`
-/

namespace A171754.P7907598240774187901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A171754.P7907598240774187901

namespace A171754

/-- `round(cosh(record[∑{p}[n+2, #]]))` -/
def P7907598240774187901.Spec : Prop :=
  ∀ n, P7907598240774187901.a n = A171754 (n + 1)

end A171754

/-!
# A171755: Least positive integer k where k is a perfect power and the number of divisors of k = A001597(n).

The programs for A171755, there is no canonical definition to state claims against.
-/

/-! ## A171755.P10680361816794904131

`A260142(A072536(n+2))`
-/

namespace A171755.P10680361816794904131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260142 (A072536 (n + 2)).toNat

end

end A171755.P10680361816794904131

/-!
# A171756: Number of connected cubic balanced graphs on 6n vertices.

The programs for A171756, there is no canonical definition to state claims against.
-/

/-! ## A171756.P17585293582193457247

`ceil(A000110(n)^(3-sqrt(2)))`
-/

namespace A171756.P17585293582193457247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000110 n : ℝ) ^ (3 - Real.sqrt (2 : ℝ))⌉

end

end A171756.P17585293582193457247

/-!
# A171757: Even numbers whose binary expansion begins 10.

The programs for A171757, the canonical program `A171757.P1472708756566652642` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171757 has offset 1).

The definition of A171757 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004761, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171757.P1472708756566652642

`2*A004761(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171757

/-- `2*A004761(n+2)` -/
def P1472708756566652642.Spec : Prop :=
  ∀ n, P1472708756566652642.a n = A171757 (n + 1)

theorem P1472708756566652642.correct : P1472708756566652642.Spec := by
  intro n
  simp only [A171757, Nat.add_sub_cancel]

end A171757

/-! ## A171757.P8404908372968390492

`or(n, a(floor(n/2)))+n` with `a(0)=2`
-/

namespace A171757.P8404908372968390492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor n (a ⌊(n : ℚ) / 2⌋.toNat) + n

end

end A171757.P8404908372968390492

namespace A171757

/-- `or(n, a(floor(n/2)))+n` -/
def P8404908372968390492.Spec : Prop :=
  ∀ n, (P8404908372968390492.a n : ℤ) = A171757 (n + 1)

end A171757

/-! ## A171757.P3485540447050273435

`2*lt[2*n, xor(n, 2*n)]`
-/

namespace A171757.P3485540447050273435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171757.P3485540447050273435

namespace A171757

/-- `2*lt[2*n, xor(n, 2*n)]` -/
def P3485540447050273435.Spec : Prop :=
  ∀ n, (P3485540447050273435.a n : ℤ) = A171757 (n + 1)

end A171757

/-! ## A171757.P12415987495253951246

`or(n, a(n-1)-(n-2))+n` with `a(0)=2`
-/

namespace A171757.P12415987495253951246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (n : ℤ) (a (n - 1) - ((n : ℤ) - 2)) + (n : ℤ)

end

end A171757.P12415987495253951246

namespace A171757

/-- `or(n, a(n-1)-(n-2))+n` -/
def P12415987495253951246.Spec : Prop :=
  ∀ n, P12415987495253951246.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P16259512957836508104

`record[(n-1)^(n%2)]+2^ceil(log2(n+1))`
-/

namespace A171757.P16259512957836508104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A171757.P16259512957836508104

namespace A171757

/-- `record[(n-1)^(n%2)]+2^ceil(log2(n+1))` -/
def P16259512957836508104.Spec : Prop :=
  ∀ n, P16259512957836508104.a n = (A171757 (n + 1) : ℚ)

end A171757

/-! ## A171757.P1314135560852836076

`A346303(n+1)+1`
-/

namespace A171757.P1314135560852836076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346303 (n + 1) + 1

end

end A171757.P1314135560852836076

namespace A171757

/-- `A346303(n+1)+1` -/
def P1314135560852836076.Spec : Prop :=
  ∀ n, P1314135560852836076.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P16364600550752279603

`2*eq[1, A090996(n)]`
-/

namespace A171757.P16364600550752279603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171757.P16364600550752279603

namespace A171757

/-- `2*eq[1, A090996(n)]` -/
def P16364600550752279603.Spec : Prop :=
  ∀ n, (P16364600550752279603.a n : ℤ) = A171757 (n + 1)

end A171757

/-! ## A171757.P6126914028174008077

`∑[or(1, A048298(n))+1]`
-/

namespace A171757.P6126914028174008077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048298 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171757.P6126914028174008077

namespace A171757

/-- `∑[or(1, A048298(n))+1]` -/
def P6126914028174008077.Spec : Prop :=
  ∀ n, P6126914028174008077.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P249003905157345610

`2*(comp[A206332(n+1)]+1)`
-/

namespace A171757.P249003905157345610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171757.P249003905157345610

namespace A171757

/-- `2*(comp[A206332(n+1)]+1)` -/
def P249003905157345610.Spec : Prop :=
  ∀ n, (P249003905157345610.a n : ℤ) = A171757 (n + 1)

end A171757

/-! ## A171757.P10885358396205969839

`A035327(n)+A016777(n)`
-/

namespace A171757.P10885358396205969839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + A016777 n

end

end A171757.P10885358396205969839

namespace A171757

/-- `A035327(n)+A016777(n)` -/
def P10885358396205969839.Spec : Prop :=
  ∀ n, P10885358396205969839.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P2208333868103051963

`A062383(n)+A004277(n)`
-/

namespace A171757.P2208333868103051963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n + A004277 n

end

end A171757.P2208333868103051963

namespace A171757

/-- `A062383(n)+A004277(n)` -/
def P2208333868103051963.Spec : Prop :=
  ∀ n, P2208333868103051963.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P17368305561305489008

`∑[2*A158416(A073137(n))]`
-/

namespace A171757.P17368305561305489008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158416 (A073137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171757.P17368305561305489008

namespace A171757

/-- `∑[2*A158416(A073137(n))]` -/
def P17368305561305489008.Spec : Prop :=
  ∀ n, P17368305561305489008.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P11732174863656533747

`A006257(A318934(n+1))-1`
-/

namespace A171757.P11732174863656533747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A318934 (n + 1)).toNat - 1

end

end A171757.P11732174863656533747

namespace A171757

/-- `A006257(A318934(n+1))-1` -/
def P11732174863656533747.Spec : Prop :=
  ∀ n, P11732174863656533747.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P17121996532562252198

`A003817(n)+A004277(n)+1`
-/

namespace A171757.P17121996532562252198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (A004277 n + 1)

end

end A171757.P17121996532562252198

namespace A171757

/-- `A003817(n)+A004277(n)+1` -/
def P17121996532562252198.Spec : Prop :=
  ∀ n, P17121996532562252198.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P7295951151993649559

`A008585(n)+A035327(n)+1`
-/

namespace A171757.P7295951151993649559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (A035327 n + 1)

end

end A171757.P7295951151993649559

namespace A171757

/-- `A008585(n)+A035327(n)+1` -/
def P7295951151993649559.Spec : Prop :=
  ∀ n, P7295951151993649559.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P9589268130396993220

`A004273(n)+A062383(n)+1`
-/

namespace A171757.P9589268130396993220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A062383 n + 1)

end

end A171757.P9589268130396993220

namespace A171757

/-- `A004273(n)+A062383(n)+1` -/
def P9589268130396993220.Spec : Prop :=
  ∀ n, P9589268130396993220.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P17516790512621187066

`A003817(n)+A004273(n)+2`
-/

namespace A171757.P17516790512621187066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (A004273 n + 2)

end

end A171757.P17516790512621187066

namespace A171757

/-- `A003817(n)+A004273(n)+2` -/
def P17516790512621187066.Spec : Prop :=
  ∀ n, P17516790512621187066.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P658520161771238537

`A008574(n)+1-A006257(n)`
-/

namespace A171757.P658520161771238537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (1 - A006257 n)

end

end A171757.P658520161771238537

namespace A171757

/-- `A008574(n)+1-A006257(n)` -/
def P658520161771238537.Spec : Prop :=
  ∀ n, P658520161771238537.a n = A171757 (n + 1)

end A171757

/-! ## A171757.P6993396372023790508

`A016789(n)+A035327(n)-1`
-/

namespace A171757.P6993396372023790508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (A035327 n - 1)

end

end A171757.P6993396372023790508

namespace A171757

/-- `A016789(n)+A035327(n)-1` -/
def P6993396372023790508.Spec : Prop :=
  ∀ n, P6993396372023790508.a n = A171757 (n + 1)

end A171757

/-!
# A171758: Binary expansion of numbers in A171757.

The programs for A171758, the canonical program `A171758.P10354067191395966200` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171758 has offset 1).

The definition of A171758 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171758.P10354067191395966200

`A007088(A171757(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171758

/-- `A007088(A171757(n+1))` -/
def P10354067191395966200.Spec : Prop :=
  ∀ n, P10354067191395966200.a n = A171758 (n + 1)

theorem P10354067191395966200.correct : P10354067191395966200.Spec := by
  intro n
  simp only [A171758, Nat.add_sub_cancel]

end A171758

/-! ## A171758.P4439836295694142590

`record[5*(2*a(floor(n/2))-(-1)^n+1)]` with `a(0)=10, a(1)=9, a(2)=0`
-/

namespace A171758.P4439836295694142590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 9, 0] fun n f1 =>
  5 * (2 * f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171758.P4439836295694142590

namespace A171758

/-- `record[5*(2*a(floor(n/2))-(-1)^n+1)]` -/
def P4439836295694142590.Spec : Prop :=
  ∀ n, P4439836295694142590.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P14177253445010353458

`A007088(A346303(n+1)+1)`
-/

namespace A171758.P14177253445010353458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A346303 (n + 1) + 1).toNat

end

end A171758.P14177253445010353458

namespace A171758

/-- `A007088(A346303(n+1)+1)` -/
def P14177253445010353458.Spec : Prop :=
  ∀ n, P14177253445010353458.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P16590818606125032808

`A007088(2*A004761(n+2))`
-/

namespace A171758.P16590818606125032808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A004761 (n + 2)).toNat

end

end A171758.P16590818606125032808

namespace A171758

/-- `A007088(2*A004761(n+2))` -/
def P16590818606125032808.Spec : Prop :=
  ∀ n, P16590818606125032808.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P116561507723168537

`A007088(A035327(n)+A016777(n))`
-/

namespace A171758.P116561507723168537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035327 n + A016777 n).toNat

end

end A171758.P116561507723168537

namespace A171758

/-- `A007088(A035327(n)+A016777(n))` -/
def P116561507723168537.Spec : Prop :=
  ∀ n, P116561507723168537.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P17284322680085418942

`A007088(A062383(n)+A004277(n))`
-/

namespace A171758.P17284322680085418942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A062383 n + A004277 n).toNat

end

end A171758.P17284322680085418942

namespace A171758

/-- `A007088(A062383(n)+A004277(n))` -/
def P17284322680085418942.Spec : Prop :=
  ∀ n, P17284322680085418942.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P14632468452240556715

`A007088(A000079(A070939(n))+2*n)`
-/

namespace A171758.P14632468452240556715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000079 (A070939 n).toNat + (2 * n : ℤ)).toNat

end

end A171758.P14632468452240556715

namespace A171758

/-- `A007088(A000079(A070939(n))+2*n)` -/
def P14632468452240556715.Spec : Prop :=
  ∀ n, P14632468452240556715.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P9264952440027969038

`A007088(A004761(n+2)+A004761(n+2))`
-/

namespace A171758.P9264952440027969038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004761 (n + 2) + A004761 (n + 2)).toNat

end

end A171758.P9264952440027969038

namespace A171758

/-- `A007088(A004761(n+2)+A004761(n+2))` -/
def P9264952440027969038.Spec : Prop :=
  ∀ n, P9264952440027969038.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P17999477799217677231

`A099820(A004761(n+2))`
-/

namespace A171758.P17999477799217677231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A004761 (n + 2)).toNat

end

end A171758.P17999477799217677231

namespace A171758

/-- `A099820(A004761(n+2))` -/
def P17999477799217677231.Spec : Prop :=
  ∀ n, P17999477799217677231.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P469777205227251300

`∩[A171782(n+1), A099820(n)]`
-/

namespace A171758.P469777205227251300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171758.P469777205227251300

namespace A171758

/-- `∩[A171782(n+1), A099820(n)]` -/
def P469777205227251300.Spec : Prop :=
  ∀ n, (P469777205227251300.a n : ℤ) = A171758 (n + 1)

end A171758

/-! ## A171758.P6493889044387393932

`A171782(A004761(n+2)%∑[n+1]+1)`
-/

namespace A171758.P6493889044387393932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171782 (Int.tmod (A004761 (n + 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A171758.P6493889044387393932

namespace A171758

/-- `A171782(A004761(n+2)%∑[n+1]+1)` -/
def P6493889044387393932.Spec : Prop :=
  ∀ n, P6493889044387393932.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P11380682813292352372

`A171782(A004761(2*(n+1))-A004761(n+2)+1)`
-/

namespace A171758.P11380682813292352372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171782 (A004761 (2 * (n + 1)) - A004761 (n + 2) + 1).toNat

end

end A171758.P11380682813292352372

namespace A171758

/-- `A171782(A004761(2*(n+1))-A004761(n+2)+1)` -/
def P11380682813292352372.Spec : Prop :=
  ∀ n, P11380682813292352372.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P12387094054091771049

`A139709(A318934(n+1))-1`
-/

namespace A171758.P12387094054091771049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (A318934 (n + 1)).toNat - 1

end

end A171758.P12387094054091771049

namespace A171758

/-- `A139709(A318934(n+1))-1` -/
def P12387094054091771049.Spec : Prop :=
  ∀ n, P12387094054091771049.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P11074436648991370930

`A185544(2*A171757(n+1))`
-/

namespace A171758.P11074436648991370930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A171757 (n + 1)).toNat

end

end A171758.P11074436648991370930

namespace A171758

/-- `A185544(2*A171757(n+1))` -/
def P11074436648991370930.Spec : Prop :=
  ∀ n, P11074436648991370930.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P7004390127837492717

`A123001(A004277(n))`
-/

namespace A171758.P7004390127837492717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123001 (A004277 n).toNat

end

end A171758.P7004390127837492717

namespace A171758

/-- `A123001(A004277(n))` -/
def P7004390127837492717.Spec : Prop :=
  ∀ n, P7004390127837492717.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P1706797324136906144

`A123001(A004275(n+1))`
-/

namespace A171758.P1706797324136906144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123001 (A004275 (n + 1)).toNat

end

end A171758.P1706797324136906144

namespace A171758

/-- `A123001(A004275(n+1))` -/
def P1706797324136906144.Spec : Prop :=
  ∀ n, P1706797324136906144.a n = A171758 (n + 1)

end A171758

/-! ## A171758.P1914464405314455727

`∩[A123001(n+1), A099820(n)]`
-/

namespace A171758.P1914464405314455727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171758.P1914464405314455727

namespace A171758

/-- `∩[A123001(n+1), A099820(n)]` -/
def P1914464405314455727.Spec : Prop :=
  ∀ n, (P1914464405314455727.a n : ℤ) = A171758 (n + 1)

end A171758

/-! ## A171758.P10694912080889000315

`∩[A123001(n+1), A171782(n+1)]`
-/

namespace A171758.P10694912080889000315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171758.P10694912080889000315

namespace A171758

/-- `∩[A123001(n+1), A171782(n+1)]` -/
def P10694912080889000315.Spec : Prop :=
  ∀ n, (P10694912080889000315.a n : ℤ) = A171758 (n + 1)

end A171758

/-! ## A171758.P9999684526163541655

`∩[A007088(2*n), A123001(n+1)]`
-/

namespace A171758.P9999684526163541655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171758.P9999684526163541655

namespace A171758

/-- `∩[A007088(2*n), A123001(n+1)]` -/
def P9999684526163541655.Spec : Prop :=
  ∀ n, (P9999684526163541655.a n : ℤ) = A171758 (n + 1)

end A171758

/-! ## A171758.P8278923317099710525

`∩[A099821(n+1)-1, A123001(n+1)]`
-/

namespace A171758.P8278923317099710525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171758.P8278923317099710525

namespace A171758

/-- `∩[A099821(n+1)-1, A123001(n+1)]` -/
def P8278923317099710525.Spec : Prop :=
  ∀ n, (P8278923317099710525.a n : ℤ) = A171758 (n + 1)

end A171758

/-!
# A171761: Number of ternary squareful words of length n.

The programs for A171761, there is no canonical definition to state claims against.
-/

/-! ## A171761.P4189318884970897001

`A000244(n)-A006156(n)`
-/

namespace A171761.P4189318884970897001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A006156 n

end

end A171761.P4189318884970897001

/-! ## A171761.P1663189875360336355

`A257623(∑[n])-A006156(n)`
-/

namespace A171761.P1663189875360336355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257623 (∑ j ∈ Finset.range (n + 1), f1 j) - A006156 n

end

end A171761.P1663189875360336355

/-! ## A171761.P8589884141243939026

`Δ[A003462(n)]-A006156(n)`
-/

namespace A171761.P8589884141243939026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006156 n

end

end A171761.P8589884141243939026

/-! ## A171761.P1100387596381826956

`Δ[A007051(n)]-A006156(n)`
-/

namespace A171761.P1100387596381826956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006156 n

end

end A171761.P1100387596381826956

/-! ## A171761.P6356809121859948825

`A038754(2*n)-A006156(n)`
-/

namespace A171761.P6356809121859948825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n) - A006156 n

end

end A171761.P6356809121859948825

/-!
# A171762: a(n) = Sum_{k=n^2+1..(n+1)^2-1} tau(k).

The programs for A171762, there is no canonical definition to state claims against.
-/

/-! ## A171762.P13848537647575318369

`A168010(n+1)-∏{e}[n+1, 2*#+1]`
-/

namespace A171762.P13848537647575318369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A171762.P13848537647575318369

/-! ## A171762.P8218131918231101157

`A168010(n+1)-A048691(n+1)`
-/

namespace A171762.P8218131918231101157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1) - A048691 (n + 1)

end

end A171762.P8218131918231101157

/-! ## A171762.P1078817926621184854

`A168011(n+1)-A175346(n+1)`
-/

namespace A171762.P1078817926621184854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168011 (n + 1) - A175346 (n + 1)

end

end A171762.P1078817926621184854

/-! ## A171762.P9850473451847538138

`A168010(n+1)-A000005((n+1)²)`
-/

namespace A171762.P9850473451847538138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1) - A000005 ((n + 1) ^ 2)

end

end A171762.P9850473451847538138

/-! ## A171762.P6722647717338252782

`∑[A168010(n+1)]-A175346(n+1)`
-/

namespace A171762.P6722647717338252782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A175346 (n + 1)

end

end A171762.P6722647717338252782

/-! ## A171762.P5378933215215940082

`A168010(n+1)-∑{d}[n+1, A034444(#)]`
-/

namespace A171762.P5378933215215940082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A034444 d

end

end A171762.P5378933215215940082

/-! ## A171762.P3721507840844118850

`A006218((n+2)²-1)-A175346(n+1)`
-/

namespace A171762.P3721507840844118850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((n + 2) ^ 2 - 1) - A175346 (n + 1)

end

end A171762.P3721507840844118850

/-! ## A171762.P16467013287676458928

`Δ[A006218(n*(n+2))]-A048691(n+1)`
-/

namespace A171762.P16467013287676458928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048691 (n + 1)

end

end A171762.P16467013287676458928

/-! ## A171762.P2591444977788791215

`A168010(n+1)-∑{d}[n+1, 2^A001221(#)]`
-/

namespace A171762.P2591444977788791215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168010 (n + 1) : ℚ) - ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A001221 d : ℤ)

end

end A171762.P2591444977788791215

/-! ## A171762.P14231178807760217585

`A168010(n+1)-A004273(A018892(n+1))`
-/

namespace A171762.P14231178807760217585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1) - A004273 (A018892 (n + 1)).toNat

end

end A171762.P14231178807760217585

/-!
# A171763: Odd numbers whose binary expansion begins 10.

The programs for A171763, the canonical program `A171763.P15691860582158708790` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171763 has offset 1).

The definition of A171763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171763.P15691860582158708790

`2*lt[n, xor(n, floor(n/2))]+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171763

/-- `2*lt[n, xor(n, floor(n/2))]+1` -/
def P15691860582158708790.Spec : Prop :=
  ∀ n, (P15691860582158708790.a n : ℤ) = A171763 (n + 1)

theorem P15691860582158708790.correct : P15691860582158708790.Spec := by
  intro n
  simp only [A171763, Nat.add_sub_cancel]

end A171763

/-! ## A171763.P17888014600420813544

`lt[n*gcd(2, n), xor(n, floor(n/2))]`
-/

namespace A171763.P17888014600420813544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171763.P17888014600420813544

namespace A171763

/-- `lt[n*gcd(2, n), xor(n, floor(n/2))]` -/
def P17888014600420813544.Spec : Prop :=
  ∀ n, (P17888014600420813544.a n : ℤ) = A171763 (n + 1)

end A171763

/-! ## A171763.P7157084041058420430

`2*(2^floor(log2(n+1))+n)+3`
-/

namespace A171763.P7157084041058420430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 ^ Nat.log 2 (n + 1) + n) + 3

end

end A171763.P7157084041058420430

namespace A171763

/-- `2*(2^floor(log2(n+1))+n)+3` -/
def P7157084041058420430.Spec : Prop :=
  ∀ n, (P7157084041058420430.a n : ℤ) = A171763 (n + 1)

end A171763

/-! ## A171763.P4871525587530380484

`lt[n%or(1, n), xor(n, floor(n/2))-n]`
-/

namespace A171763.P4871525587530380484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171763.P4871525587530380484

namespace A171763

/-- `lt[n%or(1, n), xor(n, floor(n/2))-n]` -/
def P4871525587530380484.Spec : Prop :=
  ∀ n, (P4871525587530380484.a n : ℤ) = A171763 (n + 1)

end A171763

/-! ## A171763.P14387021713735942928

`or(1, lt[xor(n, 2*n), 2*n]+n+2)`
-/

namespace A171763.P14387021713735942928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + (n + 2))

end

end A171763.P14387021713735942928

namespace A171763

/-- `or(1, lt[xor(n, 2*n), 2*n]+n+2)` -/
def P14387021713735942928.Spec : Prop :=
  ∀ n, (P14387021713735942928.a n : ℤ) = A171763 (n + 1)

end A171763

/-! ## A171763.P11494516910732140808

`A006257(A004758(n+1))`
-/

namespace A171763.P11494516910732140808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A004758 (n + 1)).toNat

end

end A171763.P11494516910732140808

namespace A171763

/-- `A006257(A004758(n+1))` -/
def P11494516910732140808.Spec : Prop :=
  ∀ n, P11494516910732140808.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P10121000009993893376

`A323234(A079946(n+1))`
-/

namespace A171763.P10121000009993893376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323234 (A079946 (n + 1)).toNat

end

end A171763.P10121000009993893376

namespace A171763

/-- `A323234(A079946(n+1))` -/
def P10121000009993893376.Spec : Prop :=
  ∀ n, P10121000009993893376.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P11655819685785380362

`A016825(A004754(n+1))/2`
-/

namespace A171763.P11655819685785380362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A004754 (n + 1)).toNat : ℚ) / 2

end

end A171763.P11655819685785380362

namespace A171763

/-- `A016825(A004754(n+1))/2` -/
def P11655819685785380362.Spec : Prop :=
  ∀ n, P11655819685785380362.a n = (A171763 (n + 1) : ℚ)

end A171763

/-! ## A171763.P10534013365428239321

`or(1, A171757(n+2))`
-/

namespace A171763.P10534013365428239321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171757 (n + 2))

end

end A171763.P10534013365428239321

namespace A171763

/-- `or(1, A171757(n+2))` -/
def P10534013365428239321.Spec : Prop :=
  ∀ n, P10534013365428239321.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P454169377076057586

`or(1, A346303(n+2)+1)`
-/

namespace A171763.P454169377076057586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A346303 (n + 2) + 1)

end

end A171763.P454169377076057586

namespace A171763

/-- `or(1, A346303(n+2)+1)` -/
def P454169377076057586.Spec : Prop :=
  ∀ n, P454169377076057586.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P12864268221679237049

`Δ[A181497(n+1)+(n+1)²]`
-/

namespace A171763.P12864268221679237049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181497 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171763.P12864268221679237049

namespace A171763

/-- `Δ[A181497(n+1)+(n+1)²]` -/
def P12864268221679237049.Spec : Prop :=
  ∀ n, P12864268221679237049.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P1057621280155308512

`A006257(A318934(n+2))`
-/

namespace A171763.P1057621280155308512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A318934 (n + 2)).toNat

end

end A171763.P1057621280155308512

namespace A171763

/-- `A006257(A318934(n+2))` -/
def P1057621280155308512.Spec : Prop :=
  ∀ n, P1057621280155308512.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P2725646692199307935

`A063946(A080565(n+2))`
-/

namespace A171763.P2725646692199307935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A080565 (n + 2)).toNat

end

end A171763.P2725646692199307935

namespace A171763

/-- `A063946(A080565(n+2))` -/
def P2725646692199307935.Spec : Prop :=
  ∀ n, P2725646692199307935.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P16263961631084216448

`A145341(A145341(n+2))`
-/

namespace A171763.P16263961631084216448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A145341 (n + 2)).toNat

end

end A171763.P16263961631084216448

namespace A171763

/-- `A145341(A145341(n+2))` -/
def P16263961631084216448.Spec : Prop :=
  ∀ n, P16263961631084216448.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P10418760336907237126

`A006257(A004755(A004754(n+1)))`
-/

namespace A171763.P10418760336907237126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A004755 (A004754 (n + 1)).toNat).toNat

end

end A171763.P10418760336907237126

namespace A171763

/-- `A006257(A004755(A004754(n+1)))` -/
def P10418760336907237126.Spec : Prop :=
  ∀ n, P10418760336907237126.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P9972309379352319496

`A020735(A092754(n+1))`
-/

namespace A171763.P9972309379352319496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (A092754 (n + 1)).toNat

end

end A171763.P9972309379352319496

namespace A171763

/-- `A020735(A092754(n+1))` -/
def P9972309379352319496.Spec : Prop :=
  ∀ n, P9972309379352319496.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P17747130647817397307

`record[A065270(n+2)]`
-/

namespace A171763.P17747130647817397307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171763.P17747130647817397307

namespace A171763

/-- `record[A065270(n+2)]` -/
def P17747130647817397307.Spec : Prop :=
  ∀ n, P17747130647817397307.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P14711810277395388573

`record[A065282(n+2)]`
-/

namespace A171763.P14711810277395388573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171763.P14711810277395388573

namespace A171763

/-- `record[A065282(n+2)]` -/
def P14711810277395388573.Spec : Prop :=
  ∀ n, P14711810277395388573.a n = A171763 (n + 1)

end A171763

/-! ## A171763.P15825576132312142579

`record[A065276(n+2)+1]`
-/

namespace A171763.P15825576132312142579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065276 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171763.P15825576132312142579

namespace A171763

/-- `record[A065276(n+2)+1]` -/
def P15825576132312142579.Spec : Prop :=
  ∀ n, P15825576132312142579.a n = A171763 (n + 1)

end A171763

/-!
# A171764: Binary expansion of numbers in A171763.

The programs for A171764, the canonical program `A171764.P2806346960850218837` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171764 has offset 1).

The definition of A171764 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171763, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171764.P2806346960850218837

`A007088(A171763(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171764

/-- `A007088(A171763(n+1))` -/
def P2806346960850218837.Spec : Prop :=
  ∀ n, P2806346960850218837.a n = A171764 (n + 1)

theorem P2806346960850218837.correct : P2806346960850218837.Spec := by
  intro n
  simp only [A171764, Nat.add_sub_cancel]

end A171764

/-! ## A171764.P8429565647141966828

`A171758(n+2)+1`
-/

namespace A171764.P8429565647141966828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171758 (n + 2) + 1

end

end A171764.P8429565647141966828

namespace A171764

/-- `A171758(n+2)+1` -/
def P8429565647141966828.Spec : Prop :=
  ∀ n, P8429565647141966828.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P694589672039789553

`A007088(A171757(n+2))+1`
-/

namespace A171764.P694589672039789553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A171757 (n + 2)).toNat + 1

end

end A171764.P694589672039789553

namespace A171764

/-- `A007088(A171757(n+2))+1` -/
def P694589672039789553.Spec : Prop :=
  ∀ n, P694589672039789553.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P9735310734946442430

`A007088(2*A004754(n+1))+1`
-/

namespace A171764.P9735310734946442430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A004754 (n + 1)).toNat + 1

end

end A171764.P9735310734946442430

namespace A171764

/-- `A007088(2*A004754(n+1))+1` -/
def P9735310734946442430.Spec : Prop :=
  ∀ n, P9735310734946442430.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P7324905477162720812

`A007088(A346303(n+2)+2)`
-/

namespace A171764.P7324905477162720812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A346303 (n + 2) + 2).toNat

end

end A171764.P7324905477162720812

namespace A171764

/-- `A007088(A346303(n+2)+2)` -/
def P7324905477162720812.Spec : Prop :=
  ∀ n, P7324905477162720812.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P14002494129758843841

`A007088(A004755(n+1)+2+n)`
-/

namespace A171764.P14002494129758843841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004755 (n + 1) + 2 + (n : ℤ)).toNat

end

end A171764.P14002494129758843841

namespace A171764

/-- `A007088(A004755(n+1)+2+n)` -/
def P14002494129758843841.Spec : Prop :=
  ∀ n, P14002494129758843841.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P10581081712627842900

`A007088(A004760(n+3)+n+2)`
-/

namespace A171764.P10581081712627842900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004760 (n + 3) + (n + 2 : ℤ)).toNat

end

end A171764.P10581081712627842900

namespace A171764

/-- `A007088(A004760(n+3)+n+2)` -/
def P10581081712627842900.Spec : Prop :=
  ∀ n, P10581081712627842900.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P15510423191417676885

`A007088(A145341(A145341(n+2)))`
-/

namespace A171764.P15510423191417676885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A145341 (A145341 (n + 2)).toNat).toNat

end

end A171764.P15510423191417676885

namespace A171764

/-- `A007088(A145341(A145341(n+2)))` -/
def P15510423191417676885.Spec : Prop :=
  ∀ n, P15510423191417676885.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P1383858852637413617

`A007088(A062050(n+1)+A004756(n+1))`
-/

namespace A171764.P1383858852637413617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A062050 (n + 1) + A004756 (n + 1)).toNat

end

end A171764.P1383858852637413617

namespace A171764

/-- `A007088(A062050(n+1)+A004756(n+1))` -/
def P1383858852637413617.Spec : Prop :=
  ∀ n, P1383858852637413617.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P15555357779303479469

`A007088(A004754(n+1)+A004754(n+1)+1)`
-/

namespace A171764.P15555357779303479469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004754 (n + 1) + (A004754 (n + 1) + 1)).toNat

end

end A171764.P15555357779303479469

namespace A171764

/-- `A007088(A004754(n+1)+A004754(n+1)+1)` -/
def P15555357779303479469.Spec : Prop :=
  ∀ n, P15555357779303479469.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P15153387446868614726

`∩[A099820(n+1), A171782(n+2)]+1`
-/

namespace A171764.P15153387446868614726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171782 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171764.P15153387446868614726

namespace A171764

/-- `∩[A099820(n+1), A171782(n+2)]+1` -/
def P15153387446868614726.Spec : Prop :=
  ∀ n, (P15153387446868614726.a n : ℤ) = A171764 (n + 1)

end A171764

/-! ## A171764.P7248519545637207381

`A007088(A004754(2*n+3))`
-/

namespace A171764.P7248519545637207381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004754 (2 * n + 3)).toNat

end

end A171764.P7248519545637207381

namespace A171764

/-- `A007088(A004754(2*n+3))` -/
def P7248519545637207381.Spec : Prop :=
  ∀ n, P7248519545637207381.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P4063789316237037524

`A333415(A145341(n+2))`
-/

namespace A171764.P4063789316237037524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333415 (A145341 (n + 2)).toNat

end

end A171764.P4063789316237037524

namespace A171764

/-- `A333415(A145341(n+2))` -/
def P4063789316237037524.Spec : Prop :=
  ∀ n, P4063789316237037524.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P1725631035675270653

`A007088(A345401(A345401(n+1)))`
-/

namespace A171764.P1725631035675270653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A345401 (A345401 (n + 1)).toNat).toNat

end

end A171764.P1725631035675270653

namespace A171764

/-- `A007088(A345401(A345401(n+1)))` -/
def P1725631035675270653.Spec : Prop :=
  ∀ n, P1725631035675270653.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P8462846660705156883

`A007088(A145051(A171757(n+2)))`
-/

namespace A171764.P8462846660705156883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A145051 (A171757 (n + 2)).toNat).toNat

end

end A171764.P8462846660705156883

namespace A171764

/-- `A007088(A145051(A171757(n+2)))` -/
def P8462846660705156883.Spec : Prop :=
  ∀ n, P8462846660705156883.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P6641083121812837982

`A007088(A145051(A005843(A004754(n+1))))`
-/

namespace A171764.P6641083121812837982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A145051 (A005843 (A004754 (n + 1)).toNat).toNat).toNat

end

end A171764.P6641083121812837982

namespace A171764

/-- `A007088(A145051(A005843(A004754(n+1))))` -/
def P6641083121812837982.Spec : Prop :=
  ∀ n, P6641083121812837982.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P9714509627046610183

`A139709(A004758(n+1))`
-/

namespace A171764.P9714509627046610183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (A004758 (n + 1)).toNat

end

end A171764.P9714509627046610183

namespace A171764

/-- `A139709(A004758(n+1))` -/
def P9714509627046610183.Spec : Prop :=
  ∀ n, P9714509627046610183.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P16233207270064752217

`A139709(A318934(n+2))`
-/

namespace A171764.P16233207270064752217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (A318934 (n + 2)).toNat

end

end A171764.P16233207270064752217

namespace A171764

/-- `A139709(A318934(n+2))` -/
def P16233207270064752217.Spec : Prop :=
  ∀ n, P16233207270064752217.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P18389022656998914698

`A123001(2*n+3)`
-/

namespace A171764.P18389022656998914698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123001 (2 * n + 3)

end

end A171764.P18389022656998914698

namespace A171764

/-- `A123001(2*n+3)` -/
def P18389022656998914698.Spec : Prop :=
  ∀ n, P18389022656998914698.a n = A171764 (n + 1)

end A171764

/-! ## A171764.P3410730259729486918

`∩[A099821(n+1), A123001(n+1)]`
-/

namespace A171764.P3410730259729486918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171764.P3410730259729486918

namespace A171764

/-- `∩[A099821(n+1), A123001(n+1)]` -/
def P3410730259729486918.Spec : Prop :=
  ∀ n, (P3410730259729486918.a n : ℤ) = A171764 (n + 1)

end A171764

/-!
# A171765: a(n) = 0 if n <= 10; for n >= 11, a(n) = product of digits of n.

The programs for A171765, the canonical program `A171765.P33663588817060436` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171765 has offset 0).

The definition of A171765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171765.P33663588817060436

`∏{digits}[n, #%C(n, #)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171765

/-- `∏{digits}[n, #%C(n, #)]` -/
def P33663588817060436.Spec : Prop :=
  ∀ n, (P33663588817060436.a n : ℤ) = A171765 n

theorem P33663588817060436.correct : P33663588817060436.Spec := by
  intro n
  simp only [A171765]

end A171765

/-! ## A171765.P730621893099950980

`∏{digits}[n, #]%or(6, -n)`
-/

namespace A171765.P730621893099950980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) (Int.lor 6 (-(n : ℤ)))

end

end A171765.P730621893099950980

namespace A171765

/-- `∏{digits}[n, #]%or(6, -n)` -/
def P730621893099950980.Spec : Prop :=
  ∀ n, P730621893099950980.a n = A171765 n

end A171765

/-! ## A171765.P10489273792615656841

`C(n, C(10, n))*∏{digits}[n, #]`
-/

namespace A171765.P10489273792615656841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose 10 n) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A171765.P10489273792615656841

namespace A171765

/-- `C(n, C(10, n))*∏{digits}[n, #]` -/
def P10489273792615656841.Spec : Prop :=
  ∀ n, (P10489273792615656841.a n : ℤ) = A171765 n

end A171765

/-! ## A171765.P12725192969486209364

`∏{digits}[n, (n+1)%(n+1-#)]`
-/

namespace A171765.P12725192969486209364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (n + 1 : ℤ) ((n + 1 : ℤ) - (x : ℤ))).prod

end

end A171765.P12725192969486209364

namespace A171765

/-- `∏{digits}[n, (n+1)%(n+1-#)]` -/
def P12725192969486209364.Spec : Prop :=
  ∀ n, P12725192969486209364.a n = A171765 n

end A171765

/-! ## A171765.P4092483753842502008

`(∏{digits}[n, #]+n)%(n^∏{digits}[n, ceil(#/9)])`
-/

namespace A171765.P4092483753842502008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + n : ℕ) : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) ^ (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌈(x : ℚ) / 9⌉).prod : ℤ)))

end

end A171765.P4092483753842502008

namespace A171765

/-- `(∏{digits}[n, #]+n)%(n^∏{digits}[n, ceil(#/9)])` -/
def P4092483753842502008.Spec : Prop :=
  ∀ n, P4092483753842502008.a n = A171765 n

end A171765

/-! ## A171765.P8427154860675453595

`n%10*A007954(floor(n/10))`
-/

namespace A171765.P8427154860675453595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 10 : ℕ) : ℤ) * A007954 ⌊(n : ℚ) / 10⌋.toNat

end

end A171765.P8427154860675453595

namespace A171765

/-- `n%10*A007954(floor(n/10))` -/
def P8427154860675453595.Spec : Prop :=
  ∀ n, P8427154860675453595.a n = A171765 n

end A171765

/-! ## A171765.P9195181713783244283

`(n-A070565(n))%(abs(1-n)+1)`
-/

namespace A171765.P9195181713783244283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A070565 n) (|1 - (n : ℤ)| + 1)

end

end A171765.P9195181713783244283

namespace A171765

/-- `(n-A070565(n))%(abs(1-n)+1)` -/
def P9195181713783244283.Spec : Prop :=
  ∀ n, P9195181713783244283.a n = A171765 n

end A171765

/-! ## A171765.P15674674213743382837

`A230099(n)%A028310(n)`
-/

namespace A171765.P15674674213743382837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230099 n) (A028310 n)

end

end A171765.P15674674213743382837

namespace A171765

/-- `A230099(n)%A028310(n)` -/
def P15674674213743382837.Spec : Prop :=
  ∀ n, P15674674213743382837.a n = A171765 n

end A171765

/-! ## A171765.P5442957717277934865

`A007954(n)%A005710(n)`
-/

namespace A171765.P5442957717277934865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 n) (A005710 n)

end

end A171765.P5442957717277934865

namespace A171765

/-- `A007954(n)%A005710(n)` -/
def P5442957717277934865.Spec : Prop :=
  ∀ n, P5442957717277934865.a n = A171765 n

end A171765

/-! ## A171765.P10380554460006909486

`A187844(n)%A229890(n)`
-/

namespace A171765.P10380554460006909486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187844 n) (A229890 n)

end

end A171765.P10380554460006909486

namespace A171765

/-- `A187844(n)%A229890(n)` -/
def P10380554460006909486.Spec : Prop :=
  ∀ n, P10380554460006909486.a n = A171765 n

end A171765

/-!
# A171766: a(n) = 10^n*(3 + 7*10^n) + 7.

The programs for A171766, the canonical program `A171766.P2930760195580583202` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171766 has offset 0).

The definition of A171766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n*(3+7*10^n)+7` (program `A171766.P2930760195580583202`, by `A171766.P2930760195580583202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171766.P2930760195580583202

`10^n*(3+7*10^n)+7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171766

/-- `10^n*(3+7*10^n)+7` -/
def P2930760195580583202.Spec : Prop :=
  ∀ n, (P2930760195580583202.a n : ℤ) = A171766 n

theorem P2930760195580583202.correct : P2930760195580583202.Spec := by
  intro n
  simp only [A171766]

end A171766

/-!
# A171769: Partial sums of A042964 (numbers congruent to 2 or 3 mod 4).

The programs for A171769, the canonical program `A171769.P12653961650922950819` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171769 has offset 1).

The definition of A171769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171769.P1137660821189345850

`ceil((2*(n+1)+1)*(n+1)/2)`
-/

namespace A171769.P1137660821189345850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (n + 1) + 1 : ℚ) * ((n + 1 : ℚ) / 2)⌉

end

end A171769.P1137660821189345850

namespace A171769

/-- `ceil((2*(n+1)+1)*(n+1)/2)` -/
def P1137660821189345850.Spec : Prop :=
  ∀ n, P1137660821189345850.a n = A171769 (n + 1)

end A171769

/-! ## A171769.P12653961650922950819

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=5, a(2)=11, a(3)=18`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171769

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P12653961650922950819.Spec : Prop :=
  ∀ n, P12653961650922950819.a n = A171769 (n + 1)

theorem P12653961650922950819.correct : P12653961650922950819.Spec := by
  intro n
  simp only [A171769, Nat.add_sub_cancel]

end A171769

/-! ## A171769.P15875044027836800998

`∑[record[or(2, n)]]`
-/

namespace A171769.P15875044027836800998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P15875044027836800998

namespace A171769

/-- `∑[record[or(2, n)]]` -/
def P15875044027836800998.Spec : Prop :=
  ∀ n, (P15875044027836800998.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P6037817545005020709

`∑[record[xor(2, n)]]`
-/

namespace A171769.P6037817545005020709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P6037817545005020709

namespace A171769

/-- `∑[record[xor(2, n)]]` -/
def P6037817545005020709.Spec : Prop :=
  ∀ n, (P6037817545005020709.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P12588101450449879303

`∑[eq[n, or(2, n)]]`
-/

namespace A171769.P12588101450449879303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P12588101450449879303

namespace A171769

/-- `∑[eq[n, or(2, n)]]` -/
def P12588101450449879303.Spec : Prop :=
  ∀ n, (P12588101450449879303.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P4832649439280039614

`∑[lt[xor(2, n), n]]`
-/

namespace A171769.P4832649439280039614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P4832649439280039614

namespace A171769

/-- `∑[lt[xor(2, n), n]]` -/
def P4832649439280039614.Spec : Prop :=
  ∀ n, (P4832649439280039614.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P12106112139602444572

`∑[comp[and(n, -3)]]`
-/

namespace A171769.P12106112139602444572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P12106112139602444572

namespace A171769

/-- `∑[comp[and(n, -3)]]` -/
def P12106112139602444572.Spec : Prop :=
  ∀ n, (P12106112139602444572.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P18223169484703167720

`∑[comp[or(2, n)]+2]`
-/

namespace A171769.P18223169484703167720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P18223169484703167720

namespace A171769

/-- `∑[comp[or(2, n)]+2]` -/
def P18223169484703167720.Spec : Prop :=
  ∀ n, (P18223169484703167720.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P17635225978690785918

`∑[comp[or(2, n)-2]]`
-/

namespace A171769.P17635225978690785918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P17635225978690785918

namespace A171769

/-- `∑[comp[or(2, n)-2]]` -/
def P17635225978690785918.Spec : Prop :=
  ∀ n, (P17635225978690785918.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P15118959519262129917

`∑[or(2, comp[or(2, n)])]`
-/

namespace A171769.P15118959519262129917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P15118959519262129917

namespace A171769

/-- `∑[or(2, comp[or(2, n)])]` -/
def P15118959519262129917.Spec : Prop :=
  ∀ n, (P15118959519262129917.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P2913444922967609263

`∑[comp[and(2, n)+n]]`
-/

namespace A171769.P2913444922967609263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P2913444922967609263

namespace A171769

/-- `∑[comp[and(2, n)+n]]` -/
def P2913444922967609263.Spec : Prop :=
  ∀ n, (P2913444922967609263.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P4226700435599763971

`∑[comp[n-and(2, n)]]`
-/

namespace A171769.P4226700435599763971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 2 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P4226700435599763971

namespace A171769

/-- `∑[comp[n-and(2, n)]]` -/
def P4226700435599763971.Spec : Prop :=
  ∀ n, (P4226700435599763971.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P12568495991889725810

`∑[gcd(2, n)+2*n]`
-/

namespace A171769.P12568495991889725810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P12568495991889725810

namespace A171769

/-- `∑[gcd(2, n)+2*n]` -/
def P12568495991889725810.Spec : Prop :=
  ∀ n, (P12568495991889725810.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P15531850856839667246

`∑[or(1, n)+1+n]`
-/

namespace A171769.P15531850856839667246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P15531850856839667246

namespace A171769

/-- `∑[or(1, n)+1+n]` -/
def P15531850856839667246.Spec : Prop :=
  ∀ n, (P15531850856839667246.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P13986391033596941165

`∑[eq[2, and(n, 1-n)]]`
-/

namespace A171769.P13986391033596941165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P13986391033596941165

namespace A171769

/-- `∑[eq[2, and(n, 1-n)]]` -/
def P13986391033596941165.Spec : Prop :=
  ∀ n, (P13986391033596941165.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P15103880966184879881

`∑[lt[1, n*and(2, n)]]`
-/

namespace A171769.P15103880966184879881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P15103880966184879881

namespace A171769

/-- `∑[lt[1, n*and(2, n)]]` -/
def P15103880966184879881.Spec : Prop :=
  ∀ n, (P15103880966184879881.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P845438770206901866

`∑[lt[or(2, n)-1, n]]`
-/

namespace A171769.P845438770206901866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P845438770206901866

namespace A171769

/-- `∑[lt[or(2, n)-1, n]]` -/
def P845438770206901866.Spec : Prop :=
  ∀ n, (P845438770206901866.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P53084260792840880

`∑[eq[n, xor(2, n)+2]]`
-/

namespace A171769.P53084260792840880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P53084260792840880

namespace A171769

/-- `∑[eq[n, xor(2, n)+2]]` -/
def P53084260792840880.Spec : Prop :=
  ∀ n, (P53084260792840880.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P17624566837482205116

`∑[eq[2, xor(n, n-2)]]`
-/

namespace A171769.P17624566837482205116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P17624566837482205116

namespace A171769

/-- `∑[eq[2, xor(n, n-2)]]` -/
def P17624566837482205116.Spec : Prop :=
  ∀ n, (P17624566837482205116.a n : ℤ) = A171769 (n + 1)

end A171769

/-! ## A171769.P5621980602788348348

`∑[lt[1, n^and(2, n)]]`
-/

namespace A171769.P5621980602788348348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171769.P5621980602788348348

namespace A171769

/-- `∑[lt[1, n^and(2, n)]]` -/
def P5621980602788348348.Spec : Prop :=
  ∀ n, (P5621980602788348348.a n : ℤ) = A171769 (n + 1)

end A171769

/-!
# A171772: Number of steps needed to reach a prime when the map S(n)+M(n) is applied to n, or -1 if a prime is never reached. Here S(n) and M(N) mean the sum and the product of the digits of n in base 10.

The programs for A171772, there is no canonical definition to state claims against.
-/

/-! ## A171772.P1574245481922090103

`and(A201909(n+1), A240086(A235186(n+1)))`
-/

namespace A171772.P1574245481922090103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201909 (n + 1)) (A240086 (A235186 (n + 1)).toNat)

end

end A171772.P1574245481922090103

/-! ## A171772.P5931215688494741963

`and(A320579(3*n+4), A333486(A199015(n)))`
-/

namespace A171772.P5931215688494741963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320579 (3 * n + 4)) (A333486 (A199015 n).toNat)

end

end A171772.P5931215688494741963

/-! ## A171772.P17291346666499855522

`A007814(A246377(n+1)+abs((-2)^n+1)-1)`
-/

namespace A171772.P17291346666499855522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A246377 (n + 1) + (|(-2) ^ n + 1| - 1)).toNat

end

end A171772.P17291346666499855522

/-! ## A171772.P11916438429129283782

`A005171(n+1)*A105202(A000079(n))`
-/

namespace A171772.P11916438429129283782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A105202 (A000079 n).toNat

end

end A171772.P11916438429129283782

/-! ## A171772.P17075584006640611517

`lcm(A066099(A373906(n)), A241181(n+1))`
-/

namespace A171772.P17075584006640611517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066099 (A373906 n).toNat) (A241181 (n + 1))

end

end A171772.P17075584006640611517

/-!
# A171773: This sequence is a relative of the audioactive sequences. We generate it by starting with a symbol * and describe sequentially: *, 1*, 111*, 311*, 13211*,...

The programs for A171773, there is no canonical definition to state claims against.
-/

/-! ## A171773.P6830774373267655505

`A001155(n+2)/10`
-/

namespace A171773.P6830774373267655505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001155 (n + 2) : ℚ) / 10

end

end A171773.P6830774373267655505

/-! ## A171773.P1700828374718055557

`∑[A265849(n+1)/10]`
-/

namespace A171773.P1700828374718055557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265849 (n + 1) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171773.P1700828374718055557

/-! ## A171773.P2147529817832944538

`∑[Δ[A001140(n+1)]/10]`
-/

namespace A171773.P2147529817832944538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171773.P2147529817832944538

/-! ## A171773.P11997153074124023410

`∑[Δ[A001141(n+1)]/10]`
-/

namespace A171773.P11997153074124023410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001141 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171773.P11997153074124023410

/-! ## A171773.P9753434340740457313

`∑[Δ[A001143(n+1)]/10]`
-/

namespace A171773.P9753434340740457313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001143 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171773.P9753434340740457313

/-!
# A171775: a(n) = smallest number M such that there exist bases b_2, b_3, ..., b_n with the property that M written in base b_k is a k-digit palindrome for all k=2..n.

The programs for A171775, there is no canonical definition to state claims against.
-/

/-! ## A171775.P3820336622424201548

`A334928(a(n-1)+1)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A171775.P3820336622424201548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  A334928 (a (n - 1) + 1).toNat

end

end A171775.P3820336622424201548

/-!
# A171776: E.g.f.: A(x) = exp( Sum_{n>=1} 2^(n(n-1)) * x^n/n ).

The programs for A171776, there is no canonical definition to state claims against.
-/

/-! ## A171776.P904599452938050355

`A155200(n)*n!/2^n`
-/

namespace A171776.P904599452938050355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155200 n * (Nat.factorial n : ℤ) : ℚ) / (2 ^ n : ℚ)

end

end A171776.P904599452938050355

/-! ## A171776.P15864950600447820734

`A000142(n)/A000079(n)*A155200(n)`
-/

namespace A171776.P15864950600447820734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A155200 n : ℚ)

end

end A171776.P15864950600447820734

/-!
# A171777: E.g.f.: A(x) = exp( Sum_{n>=1} 2^(n(n-1)/2) * x^n/n ).

The programs for A171777, there is no canonical definition to state claims against.
-/

/-! ## A171777.P12702453037178241942

`or(1, A077559(n!))`
-/

namespace A171777.P12702453037178241942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077559 (Nat.factorial n))

end

end A171777.P12702453037178241942

/-!
# A171778: E.g.f.: A(x) = 1 + Sum_{n>=1} (1/n!)*Product_{k=1..n} -log(1 - (2k-1)x).

The programs for A171778, there is no canonical definition to state claims against.
-/

/-! ## A171778.P12077091697871789637

`A380200(n²*a(n-1))` with `a(0)=1`
-/

namespace A171778.P12077091697871789637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A380200 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A171778.P12077091697871789637

/-!
# A171779: E.g.f.: A(x) = 1 + Sum_{n>=1} (1/n!)*Product_{k=1..n} -log(1 - k(k+1)x/2).

The programs for A171779, there is no canonical definition to state claims against.
-/

/-! ## A171779.P2542372916774822573

`A233280((∑[∑[n²%3]]+1)^(n-1))`
-/

namespace A171779.P2542372916774822573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A171779.P2542372916774822573

/-!
# A171780: G.f. F_1(x) satisfies: x = Sum_{n>=1} F_{n}(x)^n, where the n-th iteration of the g.f. is defined by: F_{n}(x) = F_{n-1}( F_1(x) ) with F_0(x) = x.

The programs for A171780, there is no canonical definition to state claims against.
-/

/-! ## A171780.P8445206383881164458

`A018843(A000096(n))-A179848(n)`
-/

namespace A171780.P8445206383881164458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A000096 n).toNat - A179848 n

end

end A171780.P8445206383881164458

/-! ## A171780.P12966558370810028361

`A340999(A057711(n))-A179848(n)`
-/

namespace A171780.P12966558370810028361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A057711 n).toNat + 204) - A179848 n

end

end A171780.P12966558370810028361

/-!
# A171781: Numbers for which the second bit of the binary expansion is equal to the last bit.

The programs for A171781, the canonical program `A171781.P14941432742959392988` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171781 has offset 1).

The definition of A171781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171781.P14941432742959392988

`abs(2*n+1-floor(xor(n, 2*n)/(n+1)))+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171781

/-- `abs(2*n+1-floor(xor(n, 2*n)/(n+1)))+1` -/
def P14941432742959392988.Spec : Prop :=
  ∀ n, P14941432742959392988.a n = A171781 (n + 1)

theorem P14941432742959392988.correct : P14941432742959392988.Spec := by
  intro n
  simp only [A171781, Nat.add_sub_cancel]

end A171781

/-! ## A171781.P1614588685109137767

`-xor(2*n+1-floor(xor(n, 2*n)/(n+1)), -1)`
-/

namespace A171781.P1614588685109137767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((2 * n + 1 : ℤ) - ⌊(Nat.xor n (2 * n) : ℚ) / (n + 1 : ℚ)⌋) (-1)

end

end A171781.P1614588685109137767

namespace A171781

/-- `-xor(2*n+1-floor(xor(n, 2*n)/(n+1)), -1)` -/
def P1614588685109137767.Spec : Prop :=
  ∀ n, P1614588685109137767.a n = A171781 (n + 1)

end A171781

/-! ## A171781.P10517522541899410941

`2*n+1-floor(xor(n-1, 2*n)/(2*n+1))`
-/

namespace A171781.P10517522541899410941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌊(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A171781.P10517522541899410941

namespace A171781

/-- `2*n+1-floor(xor(n-1, 2*n)/(2*n+1))` -/
def P10517522541899410941.Spec : Prop :=
  ∀ n, P10517522541899410941.a n = A171781 (n + 1)

end A171781

/-! ## A171781.P6772858223472521187

`ceil(2*n+1-xor(n-1, 2*n)/(2*n+1))`
-/

namespace A171781.P6772858223472521187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) - (Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A171781.P6772858223472521187

namespace A171781

/-- `ceil(2*n+1-xor(n-1, 2*n)/(2*n+1))` -/
def P6772858223472521187.Spec : Prop :=
  ∀ n, P6772858223472521187.a n = A171781 (n + 1)

end A171781

/-! ## A171781.P10648764158879018968

`A346301(n+1)+1`
-/

namespace A171781.P10648764158879018968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346301 (n + 1) + 1

end

end A171781.P10648764158879018968

namespace A171781

/-- `A346301(n+1)+1` -/
def P10648764158879018968.Spec : Prop :=
  ∀ n, P10648764158879018968.a n = A171781 (n + 1)

end A171781

/-! ## A171781.P9633144480212156034

`comp[A346302(n+1)-1]+2`
-/

namespace A171781.P9633144480212156034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346302 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A171781.P9633144480212156034

namespace A171781

/-- `comp[A346302(n+1)-1]+2` -/
def P9633144480212156034.Spec : Prop :=
  ∀ n, (P9633144480212156034.a n : ℤ) = A171781 (n + 1)

end A171781

/-! ## A171781.P17605965948890626313

`abs(and(1, A145342(n+1))-2*n)+1`
-/

namespace A171781.P17605965948890626313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land 1 (A145342 (n + 1)) - (2 * n : ℤ)| + 1

end

end A171781.P17605965948890626313

namespace A171781

/-- `abs(and(1, A145342(n+1))-2*n)+1` -/
def P17605965948890626313.Spec : Prop :=
  ∀ n, P17605965948890626313.a n = A171781 (n + 1)

end A171781

/-! ## A171781.P69444723280071747

`∪[A080565(n+1), A171757(n+1)]`
-/

namespace A171781.P69444723280071747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171781.P69444723280071747

namespace A171781

/-- `∪[A080565(n+1), A171757(n+1)]` -/
def P69444723280071747.Spec : Prop :=
  ∀ n, (P69444723280071747.a n : ℤ) = A171781 (n + 1)

end A171781

/-! ## A171781.P2259818315006754869

`abs(comp[2*n]-gcd(2, A333776(n)))+1`
-/

namespace A171781.P2259818315006754869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (Int.gcd 2 (A333776 n) : ℤ)| + 1

end

end A171781.P2259818315006754869

namespace A171781

/-- `abs(comp[2*n]-gcd(2, A333776(n)))+1` -/
def P2259818315006754869.Spec : Prop :=
  ∀ n, P2259818315006754869.a n = A171781 (n + 1)

end A171781

/-! ## A171781.P10590355740122470179

`eq[A079882(n), A079882(a(n-1))]+2` with `a(0)=1`
-/

namespace A171781.P10590355740122470179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A079882 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A171781.P10590355740122470179

namespace A171781

/-- `eq[A079882(n), A079882(a(n-1))]+2` -/
def P10590355740122470179.Spec : Prop :=
  ∀ n, (P10590355740122470179.a n : ℤ) = A171781 (n + 1)

end A171781

/-! ## A171781.P2894115331718699767

`A020725(A346301(n+1))`
-/

namespace A171781.P2894115331718699767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A346301 (n + 1)).toNat

end

end A171781.P2894115331718699767

namespace A171781

/-- `A020725(A346301(n+1))` -/
def P2894115331718699767.Spec : Prop :=
  ∀ n, P2894115331718699767.a n = A171781 (n + 1)

end A171781

/-! ## A171781.P2411941468319757761

`eq[A065264(n+1), A271478(n)]+1`
-/

namespace A171781.P2411941468319757761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171781.P2411941468319757761

namespace A171781

/-- `eq[A065264(n+1), A271478(n)]+1` -/
def P2411941468319757761.Spec : Prop :=
  ∀ n, (P2411941468319757761.a n : ℤ) = A171781 (n + 1)

end A171781

/-! ## A171781.P7090816461980222042

`eq[A065288(n+1), A271478(n)]+1`
-/

namespace A171781.P7090816461980222042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171781.P7090816461980222042

namespace A171781

/-- `eq[A065288(n+1), A271478(n)]+1` -/
def P7090816461980222042.Spec : Prop :=
  ∀ n, (P7090816461980222042.a n : ℤ) = A171781 (n + 1)

end A171781

/-! ## A171781.P4919947878417988528

`A005942(n+1)+1-A006165(2*n+1)`
-/

namespace A171781.P4919947878417988528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 (n + 1) + (1 - A006165 (2 * n + 1))

end

end A171781.P4919947878417988528

namespace A171781

/-- `A005942(n+1)+1-A006165(2*n+1)` -/
def P4919947878417988528.Spec : Prop :=
  ∀ n, P4919947878417988528.a n = A171781 (n + 1)

end A171781

/-! ## A171781.P11321252263971766611

`eq[A004442(A053646(n+2)), A053646(n+1)]+1`
-/

namespace A171781.P11321252263971766611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A053646 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171781.P11321252263971766611

namespace A171781

/-- `eq[A004442(A053646(n+2)), A053646(n+1)]+1` -/
def P11321252263971766611.Spec : Prop :=
  ∀ n, (P11321252263971766611.a n : ℤ) = A171781 (n + 1)

end A171781

/-! ## A171781.P1971901387392039150

`eq[1, A021913(A056539(n))]`
-/

namespace A171781.P1971901387392039150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A056539 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171781.P1971901387392039150

namespace A171781

/-- `eq[1, A021913(A056539(n))]` -/
def P1971901387392039150.Spec : Prop :=
  ∀ n, (P1971901387392039150.a n : ℤ) = A171781 (n + 1)

end A171781

/-! ## A171781.P11271971255077624960

`lt[A175919(2*n), xor(2*n, A175919(n))]`
-/

namespace A171781.P11271971255077624960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (A175919 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171781.P11271971255077624960

namespace A171781

/-- `lt[A175919(2*n), xor(2*n, A175919(n))]` -/
def P11271971255077624960.Spec : Prop :=
  ∀ n, (P11271971255077624960.a n : ℤ) = A171781 (n + 1)

end A171781

/-! ## A171781.P7140300705999320484

`A065276(A065269(2*n+1))`
-/

namespace A171781.P7140300705999320484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065276 (A065269 (2 * n + 1)).toNat

end

end A171781.P7140300705999320484

namespace A171781

/-- `A065276(A065269(2*n+1))` -/
def P7140300705999320484.Spec : Prop :=
  ∀ n, P7140300705999320484.a n = A171781 (n + 1)

end A171781

/-! ## A171781.P2747407021474565987

`A065264(A065281(2*n+1))`
-/

namespace A171781.P2747407021474565987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065264 (A065281 (2 * n + 1)).toNat

end

end A171781.P2747407021474565987

namespace A171781

/-- `A065264(A065281(2*n+1))` -/
def P2747407021474565987.Spec : Prop :=
  ∀ n, P2747407021474565987.a n = A171781 (n + 1)

end A171781

/-! ## A171781.P2999846179586064566

`A065282(A065287(2*n+1))`
-/

namespace A171781.P2999846179586064566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065282 (A065287 (2 * n + 1)).toNat

end

end A171781.P2999846179586064566

namespace A171781

/-- `A065282(A065287(2*n+1))` -/
def P2999846179586064566.Spec : Prop :=
  ∀ n, P2999846179586064566.a n = A171781 (n + 1)

end A171781

/-!
# A171782: Binary expansion of numbers in A171781.

The programs for A171782, the canonical program `A171782.P10207329375983446345` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171782 has offset 1).

The definition of A171782 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171782.P10207329375983446345

`A007088(A171781(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171782

/-- `A007088(A171781(n+1))` -/
def P10207329375983446345.Spec : Prop :=
  ∀ n, P10207329375983446345.a n = A171782 (n + 1)

theorem P10207329375983446345.correct : P10207329375983446345.Spec := by
  intro n
  simp only [A171782, Nat.add_sub_cancel]

end A171782

/-! ## A171782.P14703295551334856958

`A007088(abs(2*n+1-floor(xor(n, 2*n)/(n+1)))+1)`
-/

namespace A171782.P14703295551334856958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (|(2 * n + 1 : ℤ) - ⌊(Nat.xor n (2 * n) : ℚ) / (n + 1 : ℚ)⌋| + 1).toNat

end

end A171782.P14703295551334856958

namespace A171782

/-- `A007088(abs(2*n+1-floor(xor(n, 2*n)/(n+1)))+1)` -/
def P14703295551334856958.Spec : Prop :=
  ∀ n, P14703295551334856958.a n = A171782 (n + 1)

end A171782

/-! ## A171782.P12502705488384881780

`A007088(A346301(n+1)+1)`
-/

namespace A171782.P12502705488384881780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A346301 (n + 1) + 1).toNat

end

end A171782.P12502705488384881780

namespace A171782

/-- `A007088(A346301(n+1)+1)` -/
def P12502705488384881780.Spec : Prop :=
  ∀ n, P12502705488384881780.a n = A171782 (n + 1)

end A171782

/-! ## A171782.P15248352514936962810

`A185544(2*(abs(2*n+1-floor(xor(n, 2*n)/(n+1)))+1))`
-/

namespace A171782.P15248352514936962810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (|(2 * n + 1 : ℤ) - ⌊(Nat.xor n (2 * n) : ℚ) / (n + 1 : ℚ)⌋| + 1)).toNat

end

end A171782.P15248352514936962810

namespace A171782

/-- `A185544(2*(abs(2*n+1-floor(xor(n, 2*n)/(n+1)))+1))` -/
def P15248352514936962810.Spec : Prop :=
  ∀ n, P15248352514936962810.a n = A171782 (n + 1)

end A171782

/-! ## A171782.P13238430902233300711

`A185544(2*A171781(n+1))`
-/

namespace A171782.P13238430902233300711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A171781 (n + 1)).toNat

end

end A171782.P13238430902233300711

namespace A171782

/-- `A185544(2*A171781(n+1))` -/
def P13238430902233300711.Spec : Prop :=
  ∀ n, P13238430902233300711.a n = A171782 (n + 1)

end A171782

/-! ## A171782.P10866766309294993848

`A007088(A000267(n²)+char[A004760(n+1)])`
-/

namespace A171782.P10866766309294993848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000267 (n ^ 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A171782.P10866766309294993848

namespace A171782

/-- `A007088(A000267(n²)+char[A004760(n+1)])` -/
def P10866766309294993848.Spec : Prop :=
  ∀ n, P10866766309294993848.a n = A171782 (n + 1)

end A171782

/-!
# A171783: Third smallest divisor of smallest number having exactly n divisors.

The programs for A171783, the canonical program `A171783.P3801919087583145431` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171783 has offset 3).

The definition of A171783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171783.P5522756325739304364

`A292269(A005179(n+3))`
-/

namespace A171783.P5522756325739304364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A005179 (n + 3)).toNat

end

end A171783.P5522756325739304364

namespace A171783

/-- `A292269(A005179(n+3))` -/
def P5522756325739304364.Spec : Prop :=
  ∀ n, P5522756325739304364.a n = A171783 (n + 3)

end A171783

/-! ## A171783.P3801919087583145431

`floor(1/∑{e}[n+3, #])+3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171783

/-- `floor(1/∑{e}[n+3, #])+3` -/
def P3801919087583145431.Spec : Prop :=
  ∀ n, P3801919087583145431.a n = A171783 (n + 3)

theorem P3801919087583145431.correct : P3801919087583145431.Spec := by
  intro n
  simp only [A171783, Nat.add_sub_cancel]

end A171783

/-! ## A171783.P3381638498382707479

`ceil(2/∑{e}[n+3, #])+2`
-/

namespace A171783.P3381638498382707479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌉ + 2

end

end A171783.P3381638498382707479

namespace A171783

/-- `ceil(2/∑{e}[n+3, #])+2` -/
def P3381638498382707479.Spec : Prop :=
  ∀ n, P3381638498382707479.a n = A171783 (n + 3)

end A171783

/-! ## A171783.P2462645143288154072

`C(2, ∑{e}[n+3, #])!+2`
-/

namespace A171783.P2462645143288154072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + 2

end

end A171783.P2462645143288154072

namespace A171783

/-- `C(2, ∑{e}[n+3, #])!+2` -/
def P2462645143288154072.Spec : Prop :=
  ∀ n, (P2462645143288154072.a n : ℤ) = A171783 (n + 3)

end A171783

/-! ## A171783.P15650808482512778156

`5-gcd(2, ∑{e}[n+3, #]!)`
-/

namespace A171783.P15650808482512778156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 2 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A171783.P15650808482512778156

namespace A171783

/-- `5-gcd(2, ∑{e}[n+3, #]!)` -/
def P15650808482512778156.Spec : Prop :=
  ∀ n, P15650808482512778156.a n = A171783 (n + 3)

end A171783

/-! ## A171783.P6811997397832827007

`and(1, ∑{e}[n+3, #]!)+3`
-/

namespace A171783.P6811997397832827007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + 3

end

end A171783.P6811997397832827007

namespace A171783

/-- `and(1, ∑{e}[n+3, #]!)+3` -/
def P6811997397832827007.Spec : Prop :=
  ∀ n, (P6811997397832827007.a n : ℤ) = A171783 (n + 3)

end A171783

/-! ## A171783.P10517960111018291284

`val(n+3, ∏{d}[n+3, #])+3`
-/

namespace A171783.P10517960111018291284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) (∏ d ∈ Nat.divisors (f1 n), d) + 3

end

end A171783.P10517960111018291284

namespace A171783

/-- `val(n+3, ∏{d}[n+3, #])+3` -/
def P10517960111018291284.Spec : Prop :=
  ∀ n, (P10517960111018291284.a n : ℤ) = A171783 (n + 3)

end A171783

/-! ## A171783.P15303724530664171425

`∑{p}[n+3, val(#, n+3)]+3`
-/

namespace A171783.P15303724530664171425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 3) + 3

end

end A171783.P15303724530664171425

namespace A171783

/-- `∑{p}[n+3, val(#, n+3)]+3` -/
def P15303724530664171425.Spec : Prop :=
  ∀ n, (P15303724530664171425.a n : ℤ) = A171783 (n + 3)

end A171783

/-! ## A171783.P7589912006419247567

`C(n+3, ∏{d}[n+3, #])+3`
-/

namespace A171783.P7589912006419247567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (∏ d ∈ Nat.divisors (f1 n), d) + 3

end

end A171783.P7589912006419247567

namespace A171783

/-- `C(n+3, ∏{d}[n+3, #])+3` -/
def P7589912006419247567.Spec : Prop :=
  ∀ n, (P7589912006419247567.a n : ℤ) = A171783 (n + 3)

end A171783

/-! ## A171783.P7189079697571401931

`∏{p}[n+3, val(#, n+3)]+3`
-/

namespace A171783.P7189079697571401931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 3) + 3

end

end A171783.P7189079697571401931

namespace A171783

/-- `∏{p}[n+3, val(#, n+3)]+3` -/
def P7189079697571401931.Spec : Prop :=
  ∀ n, (P7189079697571401931.a n : ℤ) = A171783 (n + 3)

end A171783

/-! ## A171783.P5352857808324728588

`∑{p}[n+3, C(#, n+3)]+3`
-/

namespace A171783.P5352857808324728588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 3) + 3

end

end A171783.P5352857808324728588

namespace A171783

/-- `∑{p}[n+3, C(#, n+3)]+3` -/
def P5352857808324728588.Spec : Prop :=
  ∀ n, (P5352857808324728588.a n : ℤ) = A171783 (n + 3)

end A171783

/-! ## A171783.P11562071912350240199

`∏{p}[n+3, C(#, n+3)]+3`
-/

namespace A171783.P11562071912350240199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 3) + 3

end

end A171783.P11562071912350240199

namespace A171783

/-- `∏{p}[n+3, C(#, n+3)]+3` -/
def P11562071912350240199.Spec : Prop :=
  ∀ n, (P11562071912350240199.a n : ℤ) = A171783 (n + 3)

end A171783

/-! ## A171783.P5288605746031995300

`floor((n+3)/∏{d}[n+3, #])+3`
-/

namespace A171783.P5288605746031995300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌋ + 3

end

end A171783.P5288605746031995300

namespace A171783

/-- `floor((n+3)/∏{d}[n+3, #])+3` -/
def P5288605746031995300.Spec : Prop :=
  ∀ n, P5288605746031995300.a n = A171783 (n + 3)

end A171783

/-! ## A171783.P15418826816931115834

`∑{p}[n+3, floor(#/(n+2))]+3`
-/

namespace A171783.P15418826816931115834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 2 : ℚ)⌋ + 3

end

end A171783.P15418826816931115834

namespace A171783

/-- `∑{p}[n+3, floor(#/(n+2))]+3` -/
def P15418826816931115834.Spec : Prop :=
  ∀ n, P15418826816931115834.a n = A171783 (n + 3)

end A171783

/-! ## A171783.P12990610701778350269

`ceil(∑{p}[n+3, #/(n+2)])+2`
-/

namespace A171783.P12990610701778350269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 2 : ℚ)⌉ + 2

end

end A171783.P12990610701778350269

namespace A171783

/-- `ceil(∑{p}[n+3, #/(n+2)])+2` -/
def P12990610701778350269.Spec : Prop :=
  ∀ n, P12990610701778350269.a n = A171783 (n + 3)

end A171783

/-! ## A171783.P9229645238493223289

`round((n+2)/∏{d}[n+3, #])+3`
-/

namespace A171783.P9229645238493223289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)) + 3

end

end A171783.P9229645238493223289

namespace A171783

/-- `round((n+2)/∏{d}[n+3, #])+3` -/
def P9229645238493223289.Spec : Prop :=
  ∀ n, P9229645238493223289.a n = A171783 (n + 3)

end A171783

/-! ## A171783.P6286569406150482072

`∏{p}[n+3, floor(#/(n+2))]+3`
-/

namespace A171783.P6286569406150482072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 2 : ℚ)⌋ + 3

end

end A171783.P6286569406150482072

namespace A171783

/-- `∏{p}[n+3, floor(#/(n+2))]+3` -/
def P6286569406150482072.Spec : Prop :=
  ∀ n, P6286569406150482072.a n = A171783 (n + 3)

end A171783

/-! ## A171783.P4937781565420201189

`A010051(n+3)+3`
-/

namespace A171783.P4937781565420201189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 3) + 3

end

end A171783.P4937781565420201189

namespace A171783

/-- `A010051(n+3)+3` -/
def P4937781565420201189.Spec : Prop :=
  ∀ n, P4937781565420201189.a n = A171783 (n + 3)

end A171783

/-! ## A171783.P15657025815331427033

`A080339(n+3)+3`
-/

namespace A171783.P15657025815331427033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 3) + 3

end

end A171783.P15657025815331427033

namespace A171783

/-- `A080339(n+3)+3` -/
def P15657025815331427033.Spec : Prop :=
  ∀ n, P15657025815331427033.a n = A171783 (n + 3)

end A171783

/-! ## A171783.P12818385436317003204

`A080545(n+3)+3`
-/

namespace A171783.P12818385436317003204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 3) + 3

end

end A171783.P12818385436317003204

namespace A171783

/-- `A080545(n+3)+3` -/
def P12818385436317003204.Spec : Prop :=
  ∀ n, P12818385436317003204.a n = A171783 (n + 3)

end A171783

/-!
# A171784: Fourth smallest divisor of smallest number having exactly n divisors.

The programs for A171784, the canonical program `A171784.P11142179382414544300` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171784 has offset 4).

The definition of A171784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171784.P10625059028168685262

`A000005(A074828(2*(n+1)))*A000005(A074828(n+4))`
-/

namespace A171784.P10625059028168685262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A074828 (2 * (n + 1))).toNat * A000005 (A074828 (n + 4)).toNat

end

end A171784.P10625059028168685262

namespace A171784

/-- `A000005(A074828(2*(n+1)))*A000005(A074828(n+4))` -/
def P10625059028168685262.Spec : Prop :=
  ∀ n, P10625059028168685262.a n = A171784 (n + 4)

end A171784

/-! ## A171784.P11142179382414544300

`A000005(6*A014973(n+4))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171784

/-- `A000005(6*A014973(n+4))` -/
def P11142179382414544300.Spec : Prop :=
  ∀ n, P11142179382414544300.a n = A171784 (n + 4)

theorem P11142179382414544300.correct : P11142179382414544300.Spec := by
  intro n
  simp only [A171784, Nat.add_sub_cancel]

end A171784

/-! ## A171784.P3551090412704554551

`A172307(a(A039651(n+4)))` with `a(0)=6`
-/

namespace A171784.P3551090412704554551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A172307 (a (A039651 (n + 4)).toNat).toNat

end

end A171784.P3551090412704554551

namespace A171784

/-- `A172307(a(A039651(n+4)))` -/
def P3551090412704554551.Spec : Prop :=
  ∀ n, P3551090412704554551.a n = A171784 (n + 4)

end A171784

/-! ## A171784.P13601891814430801478

`A253886(A080339(n+4)+A074828(2*(n+1)))`
-/

namespace A171784.P13601891814430801478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253886 (A080339 (n + 4) + A074828 (2 * (n + 1))).toNat

end

end A171784.P13601891814430801478

namespace A171784

/-- `A253886(A080339(n+4)+A074828(2*(n+1)))` -/
def P13601891814430801478.Spec : Prop :=
  ∀ n, P13601891814430801478.a n = A171784 (n + 4)

end A171784

/-! ## A171784.P2758537105094572251

`4*A136165(a(A136167(n+4)))` with `a(0)=6`
-/

namespace A171784.P2758537105094572251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  4 * A136165 (a (A136167 (n + 4)).toNat).toNat

end

end A171784.P2758537105094572251

namespace A171784

/-- `4*A136165(a(A136167(n+4)))` -/
def P2758537105094572251.Spec : Prop :=
  ∀ n, P2758537105094572251.a n = A171784 (n + 4)

end A171784

/-! ## A171784.P6081128182114673561

`A081532(A052905(n)+9)`
-/

namespace A171784.P6081128182114673561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A052905 n + 9).toNat

end

end A171784.P6081128182114673561

namespace A171784

/-- `A081532(A052905(n)+9)` -/
def P6081128182114673561.Spec : Prop :=
  ∀ n, P6081128182114673561.a n = A171784 (n + 4)

end A171784

/-! ## A171784.P3006087354638823810

`A081532(A167614(n+2)+1)`
-/

namespace A171784.P3006087354638823810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A167614 (n + 2) + 1).toNat

end

end A171784.P3006087354638823810

namespace A171784

/-- `A081532(A167614(n+2)+1)` -/
def P3006087354638823810.Spec : Prop :=
  ∀ n, P3006087354638823810.a n = A171784 (n + 4)

end A171784

/-! ## A171784.P84165018774980944

`A081532(A000124(n+4)-(n+1))`
-/

namespace A171784.P84165018774980944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A171784.P84165018774980944

namespace A171784

/-- `A081532(A000124(n+4)-(n+1))` -/
def P84165018774980944.Spec : Prop :=
  ∀ n, P84165018774980944.a n = A171784 (n + 4)

end A171784

/-! ## A171784.P7016931328154731441

`A081532(A000217(n)+A016789(n)+8)`
-/

namespace A171784.P7016931328154731441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A000217 n + (A016789 n + 8)).toNat

end

end A171784.P7016931328154731441

namespace A171784

/-- `A081532(A000217(n)+A016789(n)+8)` -/
def P7016931328154731441.Spec : Prop :=
  ∀ n, P7016931328154731441.a n = A171784 (n + 4)

end A171784

/-!
# A171786: Numbers of rank 3 in the poset of lunar numbers.

The programs for A171786, there is no canonical definition to state claims against.
-/

/-! ## A171786.P14808490968648347335

`eq[3, A161813(n+1)]+1`
-/

namespace A171786.P14808490968648347335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171786.P14808490968648347335

/-! ## A171786.P3322258661735614096

`eq[3, A161813(A028310(n))]`
-/

namespace A171786.P3322258661735614096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171786.P3322258661735614096

/-! ## A171786.P8404215427298139611

`A065475(eq[3, A161813(n+1)])`
-/

namespace A171786.P8404215427298139611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171786.P8404215427298139611

/-! ## A171786.P11754339419610844286

`eq[3, A161813(A000007(n)+n)]`
-/

namespace A171786.P11754339419610844286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171786.P11754339419610844286

/-! ## A171786.P1824551532901815278

`eq[3, A161813(A000038(n)+n)]`
-/

namespace A171786.P1824551532901815278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171786.P1824551532901815278

/-! ## A171786.P4963681309522960916

`eq[3, A161813(A233583(n+1))]`
-/

namespace A171786.P4963681309522960916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171786.P4963681309522960916

/-!
# A171787: Numbers of rank 4 in the poset of lunar numbers.

The programs for A171787, there is no canonical definition to state claims against.
-/

/-! ## A171787.P15589552848342249183

`eq[4, A161813(n+1)]+1`
-/

namespace A171787.P15589552848342249183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171787.P15589552848342249183

/-! ## A171787.P17253118826367332925

`eq[4, A161813(A028310(n))]`
-/

namespace A171787.P17253118826367332925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171787.P17253118826367332925

/-! ## A171787.P15448369281785172879

`A065475(eq[4, A161813(n+1)])`
-/

namespace A171787.P15448369281785172879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171787.P15448369281785172879

/-! ## A171787.P13883093028244648057

`eq[4, A161813(A000007(n)+n)]`
-/

namespace A171787.P13883093028244648057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171787.P13883093028244648057

/-! ## A171787.P11218553755494334715

`eq[4, A161813(A000038(n)+n)]`
-/

namespace A171787.P11218553755494334715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171787.P11218553755494334715

/-! ## A171787.P12692299760200815628

`eq[4, A161813(A233583(n+1))]`
-/

namespace A171787.P12692299760200815628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171787.P12692299760200815628

/-!
# A171788: Numbers of rank 5 in the poset of lunar numbers.

The programs for A171788, there is no canonical definition to state claims against.
-/

/-! ## A171788.P1351331897335054738

`eq[9, A161813(A161813(n+2)+1)²]+2`
-/

namespace A171788.P1351331897335054738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A161813 (n + 2) + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A171788.P1351331897335054738

/-! ## A171788.P4194896667737005530

`eq[5, A161813(n+1)]+1`
-/

namespace A171788.P4194896667737005530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171788.P4194896667737005530

/-! ## A171788.P2029311301898970147

`eq[5, A161813(A028310(n))]`
-/

namespace A171788.P2029311301898970147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171788.P2029311301898970147

/-! ## A171788.P2690290637692218938

`eq[5, A161813(A000007(n)+n)]`
-/

namespace A171788.P2690290637692218938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171788.P2690290637692218938

/-! ## A171788.P17476309757753982064

`eq[5, A161813(A000038(n)+n)]`
-/

namespace A171788.P17476309757753982064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171788.P17476309757753982064

/-! ## A171788.P14730193956531239720

`eq[5, A161813(A233583(n+1))]`
-/

namespace A171788.P14730193956531239720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171788.P14730193956531239720

/-!
# A171789: Numbers of rank 6 in the poset of lunar numbers.

The programs for A171789, there is no canonical definition to state claims against.
-/

/-! ## A171789.P4864772753885098338

`eq[6, A161813(n+1)]+1`
-/

namespace A171789.P4864772753885098338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171789.P4864772753885098338

/-! ## A171789.P17822722935818669645

`eq[6, A161813(A028310(n))]`
-/

namespace A171789.P17822722935818669645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171789.P17822722935818669645

/-! ## A171789.P9996079660036583118

`A065475(eq[6, A161813(n+1)])`
-/

namespace A171789.P9996079660036583118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171789.P9996079660036583118

/-! ## A171789.P5509049781511475816

`eq[6, A161813(A000007(n)+n)]`
-/

namespace A171789.P5509049781511475816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171789.P5509049781511475816

/-! ## A171789.P14638024527916304011

`eq[6, A161813(A000038(n)+n)]`
-/

namespace A171789.P14638024527916304011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171789.P14638024527916304011

/-! ## A171789.P5206364644320786824

`eq[6, A161813(A233583(n+1))]`
-/

namespace A171789.P5206364644320786824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171789.P5206364644320786824

/-!
# A171790: G.f. A(x) satisfies: A(x*(1+x)^3) = 1 + x.

The programs for A171790, there is no canonical definition to state claims against.
-/

/-! ## A171790.P5944023740912794953

`A130595(A139272(n))/A028310(n)`
-/

namespace A171790.P5944023740912794953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 (A139272 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A171790.P5944023740912794953

/-! ## A171790.P6767206607441570735

`A130595(A139273(n))/A028310(n)`
-/

namespace A171790.P6767206607441570735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 (A139273 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A171790.P6767206607441570735

/-! ## A171790.P1268839195777429337

`A130595(A139272(n))/A065033(2*n)`
-/

namespace A171790.P1268839195777429337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 (A139272 n).toNat : ℚ) / (A065033 (2 * n) : ℚ)

end

end A171790.P1268839195777429337

/-! ## A171790.P4928730979933443561

`A130595(A139272(n))/A123108(2*n)`
-/

namespace A171790.P4928730979933443561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 (A139272 n).toNat : ℚ) / (A123108 (2 * n) : ℚ)

end

end A171790.P4928730979933443561

/-! ## A171790.P693229809891539131

`A130595(A139272(n))/A007318(A000124(n))`
-/

namespace A171790.P693229809891539131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 (A139272 n).toNat : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A171790.P693229809891539131

/-!
# A171791: G.f. A(x) satisfies: [x^n] A(x)^((n+1)^2) = 0 for n>1 with a(0)=a(1)=1.

The programs for A171791, there is no canonical definition to state claims against.
-/

/-! ## A171791.P15057491917512792402

`-A099470(A163860(round(4*n/3)))`
-/

namespace A171791.P15057491917512792402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099470 (A163860 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))).toNat).toNat

end

end A171791.P15057491917512792402

/-!
# A171792: G.f. A(x) satisfies: A(x) = (x + A(x+x^2))/2 with A(0)=0.

The programs for A171792, there is no canonical definition to state claims against.
-/

/-! ## A171792.P16733387480344652794

`A317059(n+1)/A317059(n+2)*A317060(n+2)`
-/

namespace A171792.P16733387480344652794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317059 (n + 1) : ℚ) / (A317059 (n + 2) : ℚ) * (A317060 (n + 2) : ℚ)

end

end A171792.P16733387480344652794

/-! ## A171792.P329075099285456410

`A122941(∑[n+1])`
-/

namespace A171792.P329075099285456410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122941 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171792.P329075099285456410

/-! ## A171792.P12465072000868466895

`lcm(A097807(n), A122941(A000217(n+1)))`
-/

namespace A171792.P12465072000868466895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A122941 (A000217 (n + 1)).toNat)

end

end A171792.P12465072000868466895

/-! ## A171792.P10310471356763573773

`A122941(A000217(n+1))+A101638(n+1)`
-/

namespace A171792.P10310471356763573773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122941 (A000217 (n + 1)).toNat + A101638 (n + 1)

end

end A171792.P10310471356763573773

/-! ## A171792.P7852957587751901896

`A122941(A000217(n+1))+A000038(n+4)`
-/

namespace A171792.P7852957587751901896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122941 (A000217 (n + 1)).toNat + A000038 (n + 4)

end

end A171792.P7852957587751901896

/-!
# A171794: Numbers of rank 7 in the poset of lunar numbers.

The programs for A171794, there is no canonical definition to state claims against.
-/

/-! ## A171794.P6473413695105539377

`eq[7, A161813(n+1)]+1`
-/

namespace A171794.P6473413695105539377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171794.P6473413695105539377

/-! ## A171794.P10032397773701801164

`eq[7, A161813(A028310(n))]`
-/

namespace A171794.P10032397773701801164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171794.P10032397773701801164

/-! ## A171794.P14306303238561182826

`A020725(eq[7, A161813(n+1)])`
-/

namespace A171794.P14306303238561182826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171794.P14306303238561182826

/-! ## A171794.P8235975265332562133

`eq[7, A161813(A000007(n)+n)]`
-/

namespace A171794.P8235975265332562133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171794.P8235975265332562133

/-! ## A171794.P18032582348537843860

`eq[7, A161813(or(n, A000007(n)))]`
-/

namespace A171794.P18032582348537843860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171794.P18032582348537843860

/-!
# A171795: Numbers of rank 8 in the poset of lunar numbers.

The programs for A171795, there is no canonical definition to state claims against.
-/

/-! ## A171795.P14290084961711202132

`record[gcd(n+1, A161813(A161813(n+1)+1))]`
-/

namespace A171795.P14290084961711202132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A161813 (A161813 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171795.P14290084961711202132

/-! ## A171795.P12243759580852883510

`eq[8, A161813(n+1)]+1`
-/

namespace A171795.P12243759580852883510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171795.P12243759580852883510

/-! ## A171795.P879670181548314560

`lt[2, A000188(A161813(n+1)+1)]+1`
-/

namespace A171795.P879670181548314560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A161813 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A171795.P879670181548314560

/-! ## A171795.P7324307341732768976

`eq[8, A161813(gcd(n, n*a(n-1)))]` with `a(0)=12`
-/

namespace A171795.P7324307341732768976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f2 =>
  A161813 (Int.gcd (n : ℤ) ((n : ℤ) * f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171795.P7324307341732768976

/-! ## A171795.P11386836254033802825

`eq[8, A161813(A000038(n)+n)]`
-/

namespace A171795.P11386836254033802825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171795.P11386836254033802825

/-! ## A171795.P16790281054430978335

`eq[abs(1-n)-n, 7-A161813(A028310(n))]`
-/

namespace A171795.P16790281054430978335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A161813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171795.P16790281054430978335

/-!
# A171796: Numbers of rank 9 in the poset of lunar numbers.

The programs for A171796, there is no canonical definition to state claims against.
-/

/-! ## A171796.P15378249775374936244

`A020725(eq[9, A161813(n+1)])`
-/

namespace A171796.P15378249775374936244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171796.P15378249775374936244

/-! ## A171796.P1159521754493335270

`A065475(eq[9, A161813(n+1)])`
-/

namespace A171796.P1159521754493335270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171796.P1159521754493335270

/-! ## A171796.P5320465682311219788

`eq[9, A161813(A028310(n))]`
-/

namespace A171796.P5320465682311219788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171796.P5320465682311219788

/-! ## A171796.P12299501663783926543

`eq[9, A161813(A000007(n)+n)]`
-/

namespace A171796.P12299501663783926543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171796.P12299501663783926543

/-! ## A171796.P16393740313192256043

`eq[9, A161813(A000038(n)+n)]`
-/

namespace A171796.P16393740313192256043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171796.P16393740313192256043

/-!
# A171797: A modified Sisyphus function: a(n) = concatenation of (number of digits in n) (number of even digits) (number of odd digits).

The programs for A171797, there is no canonical definition to state claims against.
-/

/-! ## A171797.P12564534621259211664

`∑{digits}[n, A086918(A065031(#))]`
-/

namespace A171797.P12564534621259211664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A086918 (A065031 x).toNat).sum

end

end A171797.P12564534621259211664

/-! ## A171797.P6520641632732614577

`∑{digits}[A065031(n), A266717(#)]`
-/

namespace A171797.P6520641632732614577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A266717 x).sum

end

end A171797.P6520641632732614577

/-! ## A171797.P7311758806025214970

`∑{digits}[A065031(n), A290725(#)]`
-/

namespace A171797.P7311758806025214970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A290725 x).sum

end

end A171797.P7311758806025214970

/-! ## A171797.P4778021232184217030

`∑{digits}[A065031(n), A305396(#)]`
-/

namespace A171797.P4778021232184217030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A305396 x).sum

end

end A171797.P4778021232184217030

/-! ## A171797.P6465092343162448400

`A392220(A032555(n+1))`
-/

namespace A171797.P6465092343162448400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392220 (A032555 (n + 1)).toNat

end

end A171797.P6465092343162448400

/-!
# A171798: a(n) = base-10 concatenation XYZ, where X = number of bits in binary expansion of n, Y = number of 0's, Z = number of 1's.

The programs for A171798, there is no canonical definition to state claims against.
-/

/-! ## A171798.P17381189301607036515

`A059995(10*∑{digits}[A007088(n+1), A171797(#)])`
-/

namespace A171798.P17381189301607036515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (10 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A171797 x).sum).toNat

end

end A171798.P17381189301607036515

/-! ## A171798.P316619464063472269

`A171797(A007088(n+1))`
-/

namespace A171798.P316619464063472269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 (A007088 (n + 1)).toNat

end

end A171798.P316619464063472269

/-! ## A171798.P6800895013264736068

`A171797(A139707(n+1))`
-/

namespace A171798.P6800895013264736068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 (A139707 (n + 1)).toNat

end

end A171798.P6800895013264736068

/-! ## A171798.P17833552091348796507

`A171797(A139709(n+1))`
-/

namespace A171798.P17833552091348796507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 (A139709 (n + 1)).toNat

end

end A171798.P17833552091348796507

/-! ## A171798.P15931434027586520212

`A171797(A221714(n+1))`
-/

namespace A171798.P15931434027586520212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 (A221714 (n + 1)).toNat

end

end A171798.P15931434027586520212

/-!
# A171799: O.g.f.: Sum_{n>=0} 2^(n^2)*x^n/(1 - 2^n*x)^n.

The programs for A171799, there is no canonical definition to state claims against.
-/

/-! ## A171799.P16728755968120405174

`2*A174316(n+3)^(n-1)`
-/

namespace A171799.P16728755968120405174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (A174316 (n + 3) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A171799.P16728755968120405174

/-! ## A171799.P15587378001599150063

`A083318(n)^(n-1)*2^n`
-/

namespace A171799.P15587378001599150063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083318 n : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n : ℚ)

end

end A171799.P15587378001599150063

/-! ## A171799.P5248100397546381312

`A127904(n+1)^(n-1)*A000079(n)`
-/

namespace A171799.P5248100397546381312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127904 (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000079 n : ℚ)

end

end A171799.P5248100397546381312

/-! ## A171799.P3246898801556249162

`∏{d}[A011782(n), A001221(A014963(#))+2^n]`
-/

namespace A171799.P3246898801556249162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A001221 (A014963 d).toNat + (2 ^ n : ℤ))

end

end A171799.P3246898801556249162

/-! ## A171799.P14775243228128799376

`record[∏{e}[n-1, (2*n)^#/n]]`
-/

namespace A171799.P14775243228128799376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, ((2 * n) ^ Nat.factorization (f2 n).natAbs p : ℚ) / (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171799.P14775243228128799376

