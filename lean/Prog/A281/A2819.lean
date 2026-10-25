import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C002
import Seq.B004.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A281901: Number of scenarios in the Gift Exchange Game with n players and n wrapped gifts when a gift can be stolen at most n times.

The programs for A281901, there is no canonical definition to state claims against.
-/

/-! ## A281901.P4993503846119441764

`A144510(∑[4*n]+1)`
-/

namespace A281901.P4993503846119441764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281901.P4993503846119441764

/-!
# A281902: Numbers n which have the form n = k^2 - k + (i^2-i)/2 + 2*k*i, k>=1, i>=0.

The programs for A281902, the canonical program `A281902.P11836732846535714631` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281902 has offset 1).

The definition of A281902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281902.P11836732846535714631

`eq[1, char[A049780(n)+n]]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A281902

/-- `eq[1, char[A049780(n)+n]]` -/
def P11836732846535714631.Spec : Prop :=
  ∀ n, (P11836732846535714631.a n : ℤ) = A281902 (n + 1)

theorem P11836732846535714631.correct : P11836732846535714631.Spec := by
  intro n
  simp only [A281902, Nat.add_sub_cancel]

end A281902

/-! ## A281902.P5066573968128506110

`lt[n*2/(n+1), A035185(A017077(n))]`
-/

namespace A281902.P5066573968128506110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 / (n + 1 : ℚ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A017077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A281902.P5066573968128506110

namespace A281902

/-- `lt[n*2/(n+1), A035185(A017077(n))]` -/
def P5066573968128506110.Spec : Prop :=
  ∀ n, (P5066573968128506110.a n : ℤ) = A281902 (n + 1)

end A281902

/-! ## A281902.P202069831291694905

`lt[n, A161515(n)^12]`
-/

namespace A281902.P202069831291694905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161515 n ^ 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A281902.P202069831291694905

namespace A281902

/-- `lt[n, A161515(n)^12]` -/
def P202069831291694905.Spec : Prop :=
  ∀ n, (P202069831291694905.a n : ℤ) = A281902 (n + 1)

end A281902

/-! ## A281902.P9119840607945861247

`lt[A057427(n), A161515(n)²]`
-/

namespace A281902.P9119840607945861247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161515 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281902.P9119840607945861247

namespace A281902

/-- `lt[A057427(n), A161515(n)²]` -/
def P9119840607945861247.Spec : Prop :=
  ∀ n, (P9119840607945861247.a n : ℤ) = A281902 (n + 1)

end A281902

/-! ## A281902.P7244374243259029521

`eq[2, A289356(C(n, A161515(n)^12))]`
-/

namespace A281902.P7244374243259029521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (Nat.choose n (A161515 n ^ 12).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281902.P7244374243259029521

namespace A281902

/-- `eq[2, A289356(C(n, A161515(n)^12))]` -/
def P7244374243259029521.Spec : Prop :=
  ∀ n, (P7244374243259029521.a n : ℤ) = A281902 (n + 1)

end A281902

/-! ## A281902.P17491492929779987315

`lt[n, A259829(8*n+1)^n]`
-/

namespace A281902.P17491492929779987315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259829 (8 * n + 1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A281902.P17491492929779987315

namespace A281902

/-- `lt[n, A259829(8*n+1)^n]` -/
def P17491492929779987315.Spec : Prop :=
  ∀ n, (P17491492929779987315.a n : ℤ) = A281902 (n + 1)

end A281902

/-!
# A281903: Numbers k such that 6*10^k + 37 is prime.

The programs for A281903, there is no canonical definition to state claims against.
-/

/-! ## A281903.P1597942852373168098

`lt[A228849(A228853(3*n+1)), 6]`
-/

namespace A281903.P1597942852373168098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228849 (A228853 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281903.P1597942852373168098

/-! ## A281903.P2465843938835724443

`eq[A065855(A274636(n)), A104726(n)]`
-/

namespace A281903.P2465843938835724443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A274636 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281903.P2465843938835724443

/-! ## A281903.P5414864444168932234

`eq[A050873(n+1), A069010(A003073(n))]`
-/

namespace A281903.P5414864444168932234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A003073 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281903.P5414864444168932234

/-! ## A281903.P16076323009214730440

`eq[A008334(n+1), A008334(A015631(n+1))]`
-/

namespace A281903.P16076323009214730440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (A015631 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281903.P16076323009214730440

/-! ## A281903.P11377868495822136552

`eq[A260739(2*n+5), A260739(A172365(3*n+4))]`
-/

namespace A281903.P11377868495822136552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A172365 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281903.P11377868495822136552

/-!
# A281905: Expansion of Sum_{i>=2} prime(i)*x^prime(i)/(1 - x^prime(i)) / Product_{j>=1} (1 - x^j).

The programs for A281905, there is no canonical definition to state claims against.
-/

/-! ## A281905.P16037129878132501226

`A073118(n+1)-2*A024786(n+1)`
-/

namespace A281905.P16037129878132501226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073118 (n + 1) - 2 * A024786 (n + 1)

end

end A281905.P16037129878132501226

/-! ## A281905.P1666059211011220257

`A073118(n+1)-Δ[A093695(n)]`
-/

namespace A281905.P1666059211011220257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073118 (n + 1) - (f1 (n + 1) - f1 n)

end

end A281905.P1666059211011220257

/-! ## A281905.P11585505440574547261

`A066186(n+1)-A194545(n+1)-Δ[A093695(n)]`
-/

namespace A281905.P11585505440574547261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A194545 (n + 1) - (f1 (n + 1) - f1 n)

end

end A281905.P11585505440574547261

/-! ## A281905.P8671228506540721583

`(n+1)*A000041(n+1)-A194545(n+1)-Δ[A093695(n)]`
-/

namespace A281905.P8671228506540721583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A194545 (n + 1) - (f1 (n + 1) - f1 n)

end

end A281905.P8671228506540721583

/-! ## A281905.P17017566170179086471

`A194552(n+1)-A326982(n+1)-Δ[A093695(n)]`
-/

namespace A281905.P17017566170179086471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194552 (n + 1) - A326982 (n + 1) - (f1 (n + 1) - f1 n)

end

end A281905.P17017566170179086471

/-!
# A281906: Expansion of Sum_{p prime, i>=1} p^i*x^(p^i)/(1 - x^(p^i)) / Product_{j>=1} (1 - x^j).

The programs for A281906, there is no canonical definition to state claims against.
-/

/-! ## A281906.P17068142259461544670

`A000196(A037451(n))+n²`
-/

namespace A281906.P17068142259461544670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A037451 n).toNat + (n ^ 2 : ℤ)

end

end A281906.P17068142259461544670

/-!
# A281908: a(n) = (Sum_{k=1..n} C(n,k) mod k) mod n.

The programs for A281908, there is no canonical definition to state claims against.
-/

/-! ## A281908.P1168546004086845526

`A076541(n+1)%(n+1)`
-/

namespace A281908.P1168546004086845526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076541 (n + 1)) (n + 1 : ℤ)

end

end A281908.P1168546004086845526

/-!
# A281909: Smallest k such that k^i - 1 is a totient number (A002202) for all i = 1 to n, or 0 if no such k exists.

The programs for A281909, there is no canonical definition to state claims against.
-/

/-! ## A281909.P13744762263669085757

`A106444(∏[A049076(n+1)])+1`
-/

namespace A281909.P13744762263669085757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A281909.P13744762263669085757

/-! ## A281909.P12406667221869679994

`A106447(∏[A049076(n+1)])+1`
-/

namespace A281909.P12406667221869679994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106447 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A281909.P12406667221869679994

/-! ## A281909.P8699455405623689691

`A049076(A018003(n+3))+∏[A049076(n+1)]`
-/

namespace A281909.P8699455405623689691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A018003 (n + 3)).toNat + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281909.P8699455405623689691

/-! ## A281909.P6971870820713298218

`A003963(A056835(n))+1`
-/

namespace A281909.P6971870820713298218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A056835 n).toNat + 1

end

end A281909.P6971870820713298218

/-!
# A281910: Minimum possible absolute value over all coefficients of p(x)/(1-x)^n, where p is a power series with +-1 coefficients.

The programs for A281910, there is no canonical definition to state claims against.
-/

/-! ## A281910.P16814578312970069382

`ceil(((n+1)!+n²)/19)`
-/

namespace A281910.P16814578312970069382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 1) + n ^ 2 : ℚ) / 19⌉

end

end A281910.P16814578312970069382

/-! ## A281910.P9256865543371693272

`Δ[ceil(n!/(n+9))]+1`
-/

namespace A281910.P9256865543371693272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) / (n + 9 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A281910.P9256865543371693272

/-! ## A281910.P17974752885656517017

`floor((A351881(n)+6)/6)`
-/

namespace A281910.P17974752885656517017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A351881 n + 6 : ℚ) / 6⌋

end

end A281910.P17974752885656517017

/-!
# A281912: Number of sequences of balls colored with at most n colors such that exactly one ball is of a color seen earlier in the sequence.

The programs for A281912, there is no canonical definition to state claims against.
-/

/-! ## A281912.P6215768503575163786

`(n+1)*((n+3)*a(n-1)/n-a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A281912.P6215768503575163786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  (n + 1 : ℚ) * ((n + 3 : ℚ) * a (n - 1) / (n : ℚ) - a (n - 2))

end

end A281912.P6215768503575163786

/-! ## A281912.P5553689980667210028

`Δ[A134432(n)]`
-/

namespace A281912.P5553689980667210028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281912.P5553689980667210028

/-! ## A281912.P14233647039580736781

`(n+1)*A082030(n)`
-/

namespace A281912.P14233647039580736781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082030 n

end

end A281912.P14233647039580736781

/-! ## A281912.P9170726749144240935

`(n+1)*Δ[A036919(n)]`
-/

namespace A281912.P9170726749144240935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A281912.P9170726749144240935

/-! ## A281912.P5943862986924286441

`(n+1)/2*A001340(n)`
-/

namespace A281912.P5943862986924286441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A001340 n : ℚ)

end

end A281912.P5943862986924286441

/-! ## A281912.P12519178523572211564

`(n+1)*Δ[A001339(n)/2]`
-/

namespace A281912.P12519178523572211564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001339 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) - f1 n)

end

end A281912.P12519178523572211564

/-! ## A281912.P1283205219830075975

`Δ[(n+1)/2*A093964(n)]`
-/

namespace A281912.P1283205219830075975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A093964 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281912.P1283205219830075975

/-! ## A281912.P12349721760742577838

`A134432(n+1)-A134432(n)`
-/

namespace A281912.P12349721760742577838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134432 (n + 1) - A134432 n

end

end A281912.P12349721760742577838

/-! ## A281912.P5314321582100328207

`A082030(n+1)-A001339(n+1)`
-/

namespace A281912.P5314321582100328207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082030 (n + 1) - A001339 (n + 1)

end

end A281912.P5314321582100328207

/-! ## A281912.P14778867712541505211

`A001340(n+1)-A144495(n+1)`
-/

namespace A281912.P14778867712541505211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001340 (n + 1) - A144495 (n + 1)

end

end A281912.P14778867712541505211

/-!
# A281918: 7th power analog of Keith numbers.

The programs for A281918, there is no canonical definition to state claims against.
-/

/-! ## A281918.P12903415074068095210

`A226971(n+2)`
-/

namespace A281918.P12903415074068095210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226971 (n + 2)

end

end A281918.P12903415074068095210

/-! ## A281918.P18246646549685426396

`∑{e}[A020707(n), A226971(#)]`
-/

namespace A281918.P18246646549685426396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A226971 (Nat.factorization (f1 n).natAbs p)

end

end A281918.P18246646549685426396

/-! ## A281918.P2815205724632993217

`record[Δ[A226971(A028920(n))]]`
-/

namespace A281918.P2815205724632993217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226971 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281918.P2815205724632993217

/-! ## A281918.P7514497746442959811

`record[A226971(A028920(xor(1, n)))]`
-/

namespace A281918.P7514497746442959811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226971 (A028920 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281918.P7514497746442959811

/-! ## A281918.P14712784573372444840

`record[A226971(A206915(xor(1, n)))]`
-/

namespace A281918.P14712784573372444840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226971 (A206915 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281918.P14712784573372444840

/-!
# A281921: 10th-power analog of Keith numbers.

The programs for A281921, there is no canonical definition to state claims against.
-/

/-! ## A281921.P3009160418765842090

`eq[A247889(n), A266082(n+1)]`
-/

namespace A281921.P3009160418765842090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281921.P3009160418765842090

/-! ## A281921.P351316386680832382

`eq[(2-A247889(n))², A053644(n)]`
-/

namespace A281921.P351316386680832382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A247889 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281921.P351316386680832382

/-! ## A281921.P1919955468084405947

`eq[A247889(n), A265523(A053644(n))]`
-/

namespace A281921.P1919955468084405947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (A053644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281921.P1919955468084405947

/-!
# A281922: Consider a string of n 1. From left to right for any couple of consecutive numbers apply the transform 11 -> 10, 10 -> 11, 00 -> 00, 01 -> 01. At any further step restart the process considering the value of the rightmost digit as input to the leftmost one to apply the transform again. Sequence gives the number of steps necessary to reach again a string of n 1 or -1 if such a number does not exist.

The programs for A281922, there is no canonical definition to state claims against.
-/

/-! ## A281922.P4024963072337532031

`or(A194445(A130752(n)), A244422(n))`
-/

namespace A281922.P4024963072337532031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A194445 (A130752 n).toNat) (A244422 n)

end

end A281922.P4024963072337532031

/-!
# A281923: Least prime p such that p^n is a concatenation of two primes.

The programs for A281923, there is no canonical definition to state claims against.
-/

/-! ## A281923.P17640538178550341697

`or(1, A255898(n+1))`
-/

namespace A281923.P17640538178550341697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255898 (n + 1))

end

end A281923.P17640538178550341697

/-! ## A281923.P6148356692806164149

`A255898(char[4]+1+n)`
-/

namespace A281923.P6148356692806164149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255898 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A281923.P6148356692806164149

/-! ## A281923.P14154548837883474190

`A069902(A255898(n+1))`
-/

namespace A281923.P14154548837883474190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (A255898 (n + 1)).toNat

end

end A281923.P14154548837883474190

/-! ## A281923.P2754866030071759732

`A074399(p?[A255898(n+1)])`
-/

namespace A281923.P2754866030071759732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281923.P2754866030071759732

/-! ## A281923.P15956038639673486831

`A086799(p?[A255898(n+1)])`
-/

namespace A281923.P15956038639673486831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281923.P15956038639673486831

/-! ## A281923.P14627593594877384390

`A109613(p?[A255898(n+1)])`
-/

namespace A281923.P14627593594877384390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281923.P14627593594877384390

/-! ## A281923.P1724035479863975184

`A129527(p?[A255898(n+1)])`
-/

namespace A281923.P1724035479863975184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281923.P1724035479863975184

/-! ## A281923.P11252935417169238639

`A186813(p?[A255898(n+1)])`
-/

namespace A281923.P11252935417169238639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281923.P11252935417169238639

/-! ## A281923.P8270590172255317749

`A006530(3*A255898(n+1))`
-/

namespace A281923.P8270590172255317749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * A255898 (n + 1)).toNat

end

end A281923.P8270590172255317749

/-! ## A281923.P4526811193535023251

`A032742(3*A255898(n+1))`
-/

namespace A281923.P4526811193535023251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (3 * A255898 (n + 1)).toNat

end

end A281923.P4526811193535023251

/-! ## A281923.P2455299051654914805

`A006530(lcm(3, A255898(n+1)))`
-/

namespace A281923.P2455299051654914805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 3 (A255898 (n + 1)))

end

end A281923.P2455299051654914805

/-! ## A281923.P4029712547289930140

`A255898(n+1)+A185014(n)`
-/

namespace A281923.P4029712547289930140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255898 (n + 1) + A185014 n

end

end A281923.P4029712547289930140

/-! ## A281923.P18419227844206549286

`A028310(A255898(n+1)-2)+2`
-/

namespace A281923.P18419227844206549286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A255898 (n + 1) - 2).toNat + 2

end

end A281923.P18419227844206549286

/-! ## A281923.P16577039770152790284

`A109613(A255898(n+1)+2)-2`
-/

namespace A281923.P16577039770152790284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A255898 (n + 1) + 2).toNat - 2

end

end A281923.P16577039770152790284

/-! ## A281923.P7940975012067094032

`A086799(2*A255898(n+1)-A255898(n+1))`
-/

namespace A281923.P7940975012067094032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (2 * A255898 (n + 1) - A255898 (n + 1)).toNat

end

end A281923.P7940975012067094032

/-! ## A281923.P2788771459566867692

`A129527(2*A255898(n+1)-A255898(n+1))`
-/

namespace A281923.P2788771459566867692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (2 * A255898 (n + 1) - A255898 (n + 1)).toNat

end

end A281923.P2788771459566867692

/-! ## A281923.P10410465942393929397

`A186813(2*A255898(n+1)-A255898(n+1))`
-/

namespace A281923.P10410465942393929397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 (2 * A255898 (n + 1) - A255898 (n + 1)).toNat

end

end A281923.P10410465942393929397

/-!
# A281925: Numbers that are the product of exactly 4 primes and are of the form prime(k) + prime(k + 1).

The programs for A281925, the canonical program `A281925.P16287795133733270560` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281925 has offset 1).

The definition of A281925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281925.P519208187902299417

`A001043(eq[4, A001222(A011974(n+1))])`
-/

namespace A281925.P519208187902299417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A011974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281925.P519208187902299417

namespace A281925

/-- `A001043(eq[4, A001222(A011974(n+1))])` -/
def P519208187902299417.Spec : Prop :=
  ∀ n, P519208187902299417.a n = A281925 (n + 1)

end A281925

/-! ## A281925.P10832304766494679154

`∩[2*A014612(n+1), A001043(n+1)]`
-/

namespace A281925.P10832304766494679154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P10832304766494679154

namespace A281925

/-- `∩[2*A014612(n+1), A001043(n+1)]` -/
def P10832304766494679154.Spec : Prop :=
  ∀ n, (P10832304766494679154.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P1065764344888286305

`∩[2*A014612(n+1), A011974(n+1)]`
-/

namespace A281925.P1065764344888286305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P1065764344888286305

namespace A281925

/-- `∩[2*A014612(n+1), A011974(n+1)]` -/
def P1065764344888286305.Spec : Prop :=
  ∀ n, (P1065764344888286305.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P8128642069113126192

`∩[2*A014612(n+1), A164653(n+1)]`
-/

namespace A281925.P8128642069113126192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P8128642069113126192

namespace A281925

/-- `∩[2*A014612(n+1), A164653(n+1)]` -/
def P8128642069113126192.Spec : Prop :=
  ∀ n, (P8128642069113126192.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P16287795133733270560

`filter[A001043(n+1), A101637(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A281925

/-- `filter[A001043(n+1), A101637(#)]` -/
def P16287795133733270560.Spec : Prop :=
  ∀ n, P16287795133733270560.a n = A281925 (n + 1)

theorem P16287795133733270560.correct : P16287795133733270560.Spec := by
  intro n
  simp only [A281925, Nat.add_sub_cancel]

end A281925

/-! ## A281925.P11768287689171929336

`filter[A011974(n+1), A101637(#)]`
-/

namespace A281925.P11768287689171929336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A281925.P11768287689171929336

namespace A281925

/-- `filter[A011974(n+1), A101637(#)]` -/
def P11768287689171929336.Spec : Prop :=
  ∀ n, P11768287689171929336.a n = A281925 (n + 1)

end A281925

/-! ## A281925.P17519706451828899241

`filter[A069102(n+1), A101637(#)]`
-/

namespace A281925.P17519706451828899241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A281925.P17519706451828899241

namespace A281925

/-- `filter[A069102(n+1), A101637(#)]` -/
def P17519706451828899241.Spec : Prop :=
  ∀ n, P17519706451828899241.a n = A281925 (n + 1)

end A281925

/-! ## A281925.P4684027057593061602

`filter[A144043(n+1), A101637(#)]`
-/

namespace A281925.P4684027057593061602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A281925.P4684027057593061602

namespace A281925

/-- `filter[A144043(n+1), A101637(#)]` -/
def P4684027057593061602.Spec : Prop :=
  ∀ n, P4684027057593061602.a n = A281925 (n + 1)

end A281925

/-! ## A281925.P15828746781819679324

`filter[A164653(n+1), A101637(#)]`
-/

namespace A281925.P15828746781819679324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A281925.P15828746781819679324

namespace A281925

/-- `filter[A164653(n+1), A101637(#)]` -/
def P15828746781819679324.Spec : Prop :=
  ∀ n, P15828746781819679324.a n = A281925 (n + 1)

end A281925

/-! ## A281925.P4251641483826243395

`∩[A001043(n+1), A014613(n+1)]`
-/

namespace A281925.P4251641483826243395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P4251641483826243395

namespace A281925

/-- `∩[A001043(n+1), A014613(n+1)]` -/
def P4251641483826243395.Spec : Prop :=
  ∀ n, (P4251641483826243395.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P13388818709480864535

`∩[A011974(n+1), A014613(n+1)]`
-/

namespace A281925.P13388818709480864535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P13388818709480864535

namespace A281925

/-- `∩[A011974(n+1), A014613(n+1)]` -/
def P13388818709480864535.Spec : Prop :=
  ∀ n, (P13388818709480864535.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P401897423118297959

`∩[A014613(n+1), A144043(n+1)]`
-/

namespace A281925.P401897423118297959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P401897423118297959

namespace A281925

/-- `∩[A014613(n+1), A144043(n+1)]` -/
def P401897423118297959.Spec : Prop :=
  ∀ n, (P401897423118297959.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P9435856888723137535

`∩[A014613(n+1), A164653(n+1)]`
-/

namespace A281925.P9435856888723137535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P9435856888723137535

namespace A281925

/-- `∩[A014613(n+1), A164653(n+1)]` -/
def P9435856888723137535.Spec : Prop :=
  ∀ n, (P9435856888723137535.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P2297877441374888236

`∩[A001043(n+1), A307342(n+1)]`
-/

namespace A281925.P2297877441374888236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P2297877441374888236

namespace A281925

/-- `∩[A001043(n+1), A307342(n+1)]` -/
def P2297877441374888236.Spec : Prop :=
  ∀ n, (P2297877441374888236.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P3024025472184885217

`∩[A011974(n+1), A307342(n+1)]`
-/

namespace A281925.P3024025472184885217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P3024025472184885217

namespace A281925

/-- `∩[A011974(n+1), A307342(n+1)]` -/
def P3024025472184885217.Spec : Prop :=
  ∀ n, (P3024025472184885217.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P10817756112606714225

`∩[A144043(n+1), A307342(n+1)]`
-/

namespace A281925.P10817756112606714225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P10817756112606714225

namespace A281925

/-- `∩[A144043(n+1), A307342(n+1)]` -/
def P10817756112606714225.Spec : Prop :=
  ∀ n, (P10817756112606714225.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P790840838851502576

`∩[A164653(n+1), A307342(n+1)]`
-/

namespace A281925.P790840838851502576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P790840838851502576

namespace A281925

/-- `∩[A164653(n+1), A307342(n+1)]` -/
def P790840838851502576.Spec : Prop :=
  ∀ n, (P790840838851502576.a n : ℤ) = A281925 (n + 1)

end A281925

/-! ## A281925.P1484683165681464437

`∩[A001043(n+1), A004277(A014612(n+1))]`
-/

namespace A281925.P1484683165681464437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A014612 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281925.P1484683165681464437

namespace A281925

/-- `∩[A001043(n+1), A004277(A014612(n+1))]` -/
def P1484683165681464437.Spec : Prop :=
  ∀ n, (P1484683165681464437.a n : ℤ) = A281925 (n + 1)

end A281925

/-!
# A281926: Numbers that are the product of exactly 5 primes and are of the form prime(k) + prime(k + 1).

The programs for A281926, the canonical program `A281926.P17761781644500305404` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281926 has offset 1).

The definition of A281926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281926.P17761781644500305404

`∩[2*A014613(n+1), A001043(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A281926

/-- `∩[2*A014613(n+1), A001043(n+1)]` -/
def P17761781644500305404.Spec : Prop :=
  ∀ n, (P17761781644500305404.a n : ℤ) = A281926 (n + 1)

theorem P17761781644500305404.correct : P17761781644500305404.Spec := by
  intro n
  simp only [A281926, Nat.add_sub_cancel]

end A281926

/-! ## A281926.P5672029745086021143

`∩[2*A014613(n+1), A011974(n+1)]`
-/

namespace A281926.P5672029745086021143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281926.P5672029745086021143

namespace A281926

/-- `∩[2*A014613(n+1), A011974(n+1)]` -/
def P5672029745086021143.Spec : Prop :=
  ∀ n, (P5672029745086021143.a n : ℤ) = A281926 (n + 1)

end A281926

/-! ## A281926.P14770521478702736262

`∩[2*A014613(n+1), A164653(n+1)]`
-/

namespace A281926.P14770521478702736262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281926.P14770521478702736262

namespace A281926

/-- `∩[2*A014613(n+1), A164653(n+1)]` -/
def P14770521478702736262.Spec : Prop :=
  ∀ n, (P14770521478702736262.a n : ℤ) = A281926 (n + 1)

end A281926

/-! ## A281926.P12452832517410226285

`A001043(eq[5, A001222(A011974(n+1))])`
-/

namespace A281926.P12452832517410226285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A011974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281926.P12452832517410226285

namespace A281926

/-- `A001043(eq[5, A001222(A011974(n+1))])` -/
def P12452832517410226285.Spec : Prop :=
  ∀ n, P12452832517410226285.a n = A281926 (n + 1)

end A281926

/-! ## A281926.P4144483671929198889

`∩[2*A014613(n+1), A144043(n+1)]`
-/

namespace A281926.P4144483671929198889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281926.P4144483671929198889

namespace A281926

/-- `∩[2*A014613(n+1), A144043(n+1)]` -/
def P4144483671929198889.Spec : Prop :=
  ∀ n, (P4144483671929198889.a n : ℤ) = A281926 (n + 1)

end A281926

/-! ## A281926.P3131409878365894588

`∩[A001043(n+1), A014614(n+1)]`
-/

namespace A281926.P3131409878365894588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281926.P3131409878365894588

namespace A281926

/-- `∩[A001043(n+1), A014614(n+1)]` -/
def P3131409878365894588.Spec : Prop :=
  ∀ n, (P3131409878365894588.a n : ℤ) = A281926 (n + 1)

end A281926

/-! ## A281926.P5202141753536561188

`∩[A011974(n+1), A014614(n+1)]`
-/

namespace A281926.P5202141753536561188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281926.P5202141753536561188

namespace A281926

/-- `∩[A011974(n+1), A014614(n+1)]` -/
def P5202141753536561188.Spec : Prop :=
  ∀ n, (P5202141753536561188.a n : ℤ) = A281926 (n + 1)

end A281926

/-! ## A281926.P7300617261187777989

`∩[A014614(n+1), A144043(n+1)]`
-/

namespace A281926.P7300617261187777989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281926.P7300617261187777989

namespace A281926

/-- `∩[A014614(n+1), A144043(n+1)]` -/
def P7300617261187777989.Spec : Prop :=
  ∀ n, (P7300617261187777989.a n : ℤ) = A281926 (n + 1)

end A281926

/-! ## A281926.P6504757396117732138

`∩[A014614(n+1), A164653(n+1)]`
-/

namespace A281926.P6504757396117732138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281926.P6504757396117732138

namespace A281926

/-- `∩[A014614(n+1), A164653(n+1)]` -/
def P6504757396117732138.Spec : Prop :=
  ∀ n, (P6504757396117732138.a n : ℤ) = A281926 (n + 1)

end A281926

/-! ## A281926.P3366235473429701084

`∩[A005843(A207790(4*4*n+9)), A001043(n+1)]`
-/

namespace A281926.P3366235473429701084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A207790 (4 * (4 * n) + 9)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281926.P3366235473429701084

namespace A281926

/-- `∩[A005843(A207790(4*4*n+9)), A001043(n+1)]` -/
def P3366235473429701084.Spec : Prop :=
  ∀ n, (P3366235473429701084.a n : ℤ) = A281926 (n + 1)

end A281926

/-!
# A281927: Numbers that are the product of exactly 10 primes and are of the form prime(n) + prime(n + 1).

The programs for A281927, there is no canonical definition to state claims against.
-/

/-! ## A281927.P3632497425561117941

`A046314(eq[A032741(n), A060475(n)])`
-/

namespace A281927.P3632497425561117941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A281927.P3632497425561117941

/-!
# A281930: Number of n X 2 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281930, there is no canonical definition to state claims against.
-/

/-! ## A281930.P18440104084022903403

`A281936(∑[n+1]+2)`
-/

namespace A281930.P18440104084022903403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281930.P18440104084022903403

/-! ## A281930.P8338534798401248972

`A281936(A133263(n+1))%A028213(n)`
-/

namespace A281930.P8338534798401248972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281936 (A133263 (n + 1)).toNat) (A028213 n)

end

end A281930.P8338534798401248972

/-! ## A281930.P14723871231295757391

`A309689(A000700(n))+A281936(A255128(2*(n+2)))`
-/

namespace A281930.P14723871231295757391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309689 (A000700 n).toNat + A281936 (A255128 (2 * (n + 2))).toNat

end

end A281930.P14723871231295757391

/-! ## A281930.P5245614528386645923

`A281936(A255128(2*(n+2)))+A281936(A355567(n))`
-/

namespace A281930.P5245614528386645923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A255128 (2 * (n + 2))).toNat + A281936 (A355567 n).toNat

end

end A281930.P5245614528386645923

/-! ## A281930.P11021889141176508849

`A281936(A255128(2*(n+2)))+A281936(A000005(n+1))`
-/

namespace A281930.P11021889141176508849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A255128 (2 * (n + 2))).toNat + A281936 (A000005 (n + 1)).toNat

end

end A281930.P11021889141176508849

/-!
# A281931: Number of nX3 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281931, there is no canonical definition to state claims against.
-/

/-! ## A281931.P11869661144718630710

`A281936(∑[n+2]+4)`
-/

namespace A281931.P11869661144718630710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281931.P11869661144718630710

/-! ## A281931.P16579609841445350550

`A281936(A167614(n+1))+A014083(n)`
-/

namespace A281931.P16579609841445350550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A167614 (n + 1)).toNat + A014083 n

end

end A281931.P16579609841445350550

/-! ## A281931.P12259272372127625781

`A281936(A167614(n+1))%A016292(n)`
-/

namespace A281931.P12259272372127625781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281936 (A167614 (n + 1)).toNat) (A016292 n)

end

end A281931.P12259272372127625781

/-! ## A281931.P5248875630414959486

`lcm(A087960(n), A281936(A167614(n+1)))`
-/

namespace A281931.P5248875630414959486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A281936 (A167614 (n + 1)).toNat)

end

end A281931.P5248875630414959486

/-! ## A281931.P2636711781885332321

`record[A281936(A101881(n))]`
-/

namespace A281931.P2636711781885332321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281931.P2636711781885332321

/-!
# A281932: Number of nX4 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281932, there is no canonical definition to state claims against.
-/

/-! ## A281932.P3378432227664991872

`A281936(A374004(n+1))`
-/

namespace A281932.P3378432227664991872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A374004 (n + 1)).toNat

end

end A281932.P3378432227664991872

/-! ## A281932.P7308229802599971301

`A281936(A052905(n)+9)`
-/

namespace A281932.P7308229802599971301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A052905 n + 9).toNat

end

end A281932.P7308229802599971301

/-! ## A281932.P4093026743911753069

`A281936(A167614(n+2)+1)`
-/

namespace A281932.P4093026743911753069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A167614 (n + 2) + 1).toNat

end

end A281932.P4093026743911753069

/-! ## A281932.P16348966996748316697

`A281936(eq[5, A131818(n+1)])`
-/

namespace A281932.P16348966996748316697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281932.P16348966996748316697

/-! ## A281932.P3287334075824480470

`A281936(Δ[A023545(n+1)-n²])`
-/

namespace A281932.P3287334075824480470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (f1 (n + 1) - f1 n).toNat

end

end A281932.P3287334075824480470

/-!
# A281933: Number of nX5 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281933, there is no canonical definition to state claims against.
-/

/-! ## A281933.P9064536763792210230

`A281936(A374005(n+1))`
-/

namespace A281933.P9064536763792210230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A374005 (n + 1)).toNat

end

end A281933.P9064536763792210230

/-! ## A281933.P2269520761219199876

`A281936(A167499(n+3))`
-/

namespace A281933.P2269520761219199876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A167499 (n + 3)).toNat

end

end A281933.P2269520761219199876

/-! ## A281933.P12489752368528067910

`A281936(eq[7, A066657(n)])`
-/

namespace A281933.P12489752368528067910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281933.P12489752368528067910

/-! ## A281933.P7695272202619587911

`A281936(eq[4, A193592(n)])`
-/

namespace A281933.P7695272202619587911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281933.P7695272202619587911

/-! ## A281933.P17751148915797942405

`A281936(Δ[A023545(n+1)])`
-/

namespace A281933.P17751148915797942405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (f1 (n + 1) - f1 n).toNat

end

end A281933.P17751148915797942405

/-!
# A281934: Number of nX6 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281934, there is no canonical definition to state claims against.
-/

/-! ## A281934.P13320755609661736883

`A281936(A374007(n+1))`
-/

namespace A281934.P13320755609661736883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A374007 (n + 1)).toNat

end

end A281934.P13320755609661736883

/-! ## A281934.P16522603288990172908

`A281936(A167499(n+4)+1)`
-/

namespace A281934.P16522603288990172908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A167499 (n + 4) + 1).toNat

end

end A281934.P16522603288990172908

/-! ## A281934.P4139027695083705472

`A281936(eq[6, A130270(n+1)])`
-/

namespace A281934.P4139027695083705472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281934.P4139027695083705472

/-! ## A281934.P3426396420670652858

`A281936(eq[7, A131818(n+1)])`
-/

namespace A281934.P3426396420670652858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281934.P3426396420670652858

/-! ## A281934.P1995637982468512693

`A281936(eq[5, A193592(n)])`
-/

namespace A281934.P1995637982468512693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281934.P1995637982468512693

/-!
# A281935: Number of nX7 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281935, there is no canonical definition to state claims against.
-/

/-! ## A281935.P14771981218858984894

`A281936(A374008(n+1))`
-/

namespace A281935.P14771981218858984894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A374008 (n + 1)).toNat

end

end A281935.P14771981218858984894

/-! ## A281935.P2629947741415204792

`A281936(A302537(n)+27)`
-/

namespace A281935.P2629947741415204792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (A302537 n + 27).toNat

end

end A281935.P2629947741415204792

/-! ## A281935.P595720272115267832

`A281936(eq[11, A066657(n)])`
-/

namespace A281935.P595720272115267832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281935.P595720272115267832

/-! ## A281935.P554372790355118447

`A281936(eq[8, A131818(n+1)])`
-/

namespace A281935.P554372790355118447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281935.P554372790355118447

/-! ## A281935.P64883725456241866

`A281936(eq[6, A193592(n)])`
-/

namespace A281935.P64883725456241866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281935.P64883725456241866

/-!
# A281936: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281936, there is no canonical definition to state claims against.
-/

/-! ## A281936.P3015795577994354186

`A260928(A209424(n))`
-/

namespace A281936.P3015795577994354186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260928 (A209424 n).toNat

end

end A281936.P3015795577994354186

/-! ## A281936.P15297822033803756636

`A093489(A155742(n)+1)`
-/

namespace A281936.P15297822033803756636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093489 (A155742 n + 1).toNat

end

end A281936.P15297822033803756636

/-! ## A281936.P11976906862076254773

`A093489(A155868(n)+1)`
-/

namespace A281936.P11976906862076254773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093489 (A155868 n + 1).toNat

end

end A281936.P11976906862076254773

/-! ## A281936.P834126513244335986

`A089854(A282377(n+1))`
-/

namespace A281936.P834126513244335986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A282377 (n + 1)).toNat

end

end A281936.P834126513244335986

/-! ## A281936.P8584509208011719868

`A282377(A000005(2^n))`
-/

namespace A281936.P8584509208011719868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A000005 (2 ^ n)).toNat

end

end A281936.P8584509208011719868

/-!
# A281938: a(n) is the least k such that gcd(A006666(k), A006667(k)) = n.

The programs for A281938, there is no canonical definition to state claims against.
-/

/-! ## A281938.P5674903076461607052

`A011782(n+2)%A096708(A135080(n))`
-/

namespace A281938.P5674903076461607052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 2)) (A096708 (A135080 n).toNat)

end

end A281938.P5674903076461607052

/-! ## A281938.P1418390362513831975

`A000079(n+1)%A339214(A358889(n+1))`
-/

namespace A281938.P1418390362513831975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 1)) (A339214 (A358889 (n + 1)).toNat)

end

end A281938.P1418390362513831975

/-! ## A281938.P12432333791395454048

`A319534(A003945(n+3))%A152531(n+3)`
-/

namespace A281938.P12432333791395454048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319534 (A003945 (n + 3)).toNat) (A152531 (n + 3))

end

end A281938.P12432333791395454048

/-! ## A281938.P939803802042769050

`A135530(2*n+3)%A107018(A057995(n))`
-/

namespace A281938.P939803802042769050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135530 (2 * n + 3)) (A107018 (A057995 n).toNat)

end

end A281938.P939803802042769050

/-!
# A281940: Least k such that k^n + 1 is the product of n distinct primes (k > 0).

The programs for A281940, there is no canonical definition to state claims against.
-/

/-! ## A281940.P3283318020032944376

`A126571(A251259(n+1)-A077197(n+5))`
-/

namespace A281940.P3283318020032944376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A251259 (n + 1) - A077197 (n + 5)).toNat

end

end A281940.P3283318020032944376

/-!
# A281942: Nonnegative numbers whose digits can be formed by typing adjacent keys on a 123-456-789-0XX keypad without repeating a digit.

The programs for A281942, there is no canonical definition to state claims against.
-/

/-! ## A281942.P1365512748746257364

`∩[A030141(n+1), A280595(n+1)]`
-/

namespace A281942.P1365512748746257364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281942.P1365512748746257364

/-! ## A281942.P9408481927532810140

`filter[A280595(n+1), A228710(#)]`
-/

namespace A281942.P9408481927532810140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A281942.P9408481927532810140

/-!
# A281944: Triangle read by rows: T(n,k) (n>=1, 3<=k<=n+2) is the number of k-sequences of balls colored with n colors such that exactly two balls are of a color seen previously in the sequence.

The programs for A281944, the canonical program `A281944.P7909452327264810087` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281944 has offset 1).

The definition of A281944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281944.P7909452327264810087

`A037960(A002260(n+1))*A135278(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A281944

/-- `A037960(A002260(n+1))*A135278(n)` -/
def P7909452327264810087.Spec : Prop :=
  ∀ n, P7909452327264810087.a n = A281944 (n + 1)

theorem P7909452327264810087.correct : P7909452327264810087.Spec := by
  intro n
  simp only [A281944, Nat.add_sub_cancel]

end A281944

/-! ## A281944.P11626350578019093864

`A001296(A002260(n+1))*A068424(n+1)`
-/

namespace A281944.P11626350578019093864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (A002260 (n + 1)).toNat * A068424 (n + 1)

end

end A281944.P11626350578019093864

namespace A281944

/-- `A001296(A002260(n+1))*A068424(n+1)` -/
def P11626350578019093864.Spec : Prop :=
  ∀ n, P11626350578019093864.a n = A281944 (n + 1)

end A281944

/-! ## A281944.P16747788878030366961

`A108650(A002262(n))*A111492(n+1)`
-/

namespace A281944.P16747788878030366961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 (A002262 n).toNat * A111492 (n + 1)

end

end A281944.P16747788878030366961

namespace A281944

/-- `A108650(A002262(n))*A111492(n+1)` -/
def P16747788878030366961.Spec : Prop :=
  ∀ n, P16747788878030366961.a n = A281944 (n + 1)

end A281944

/-!
# A281946: Number of sequences of balls colored with at most n colors such that exactly two balls are of a color seen earlier in the sequence.

The programs for A281946, there is no canonical definition to state claims against.
-/

/-! ## A281946.P15717635207466024160

`(n+1)*(a(n-1)+A281912(n+1)-A281912(n))` with `a(0)=1`
-/

namespace A281946.P15717635207466024160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) + A281912 (n + 1) - A281912 n)

end

end A281946.P15717635207466024160

/-!
# A281947: Smallest prime p such that p^i - 1 is a totient (A002202) for all i = 1 to n, or 0 if no such p exists.

The programs for A281947, there is no canonical definition to state claims against.
-/

/-! ## A281947.P3545306267778168343

`p?[A000701(A107430(n)+n)]`
-/

namespace A281947.P3545306267778168343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (A107430 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281947.P3545306267778168343

/-! ## A281947.P12247459127053361808

`A166283(A208338(a(n-2)+1)+1)` with `a(0)=2, a(1)=3`
-/

namespace A281947.P12247459127053361808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A166283 (A208338 (a (n - 2) + 1).toNat + 1).toNat

end

end A281947.P12247459127053361808

/-! ## A281947.P12407236258258183587

`A000040(A139716(A000045(n+3)))`
-/

namespace A281947.P12407236258258183587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A139716 (A000045 (n + 3)).toNat).toNat

end

end A281947.P12407236258258183587

/-! ## A281947.P8986050551811519757

`A024785(A291721(n)^A008619(n))`
-/

namespace A281947.P8986050551811519757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (SequenceMachineLib.roundAway ((A291721 n : ℚ) ^ (A008619 n : ℤ))).toNat

end

end A281947.P8986050551811519757

/-!
# A281948: Number of n X n 0..1 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281948, there is no canonical definition to state claims against.
-/

/-! ## A281948.P14405687139698180517

`A281955(∑[4*n]+1)`
-/

namespace A281948.P14405687139698180517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281948.P14405687139698180517

/-! ## A281948.P3040898056887055619

`A281955(A001844(n))%A332146(n)`
-/

namespace A281948.P3040898056887055619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281955 (A001844 n).toNat) (A332146 n)

end

end A281948.P3040898056887055619

/-! ## A281948.P12936208784271265895

`gcd(A000038(n), A281955(A001844(n)))`
-/

namespace A281948.P12936208784271265895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A281955 (A001844 n).toNat)

end

end A281948.P12936208784271265895

/-! ## A281948.P7430573270406704834

`A059841(2*n)*A281955(A001844(n))`
-/

namespace A281948.P7430573270406704834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A281955 (A001844 n).toNat

end

end A281948.P7430573270406704834

/-! ## A281948.P7467184957205536254

`A029244(n)^A029244(n)*A281955(A001844(n))`
-/

namespace A281948.P7467184957205536254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029244 n : ℚ) ^ (A029244 n : ℤ) * (A281955 (A001844 n).toNat : ℚ)

end

end A281948.P7467184957205536254

/-!
# A281949: Number of nX2 0..1 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281949, the canonical program `A281949.P5495204007324887221` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281949 has offset 1).

The definition of A281949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281949.P5705187079612268399

`ogf((2+2x^2)/(1-4x+2x^2-4x^3))`
-/

namespace A281949.P5705187079612268399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 2] [1, -4, 2, -4] n

end

end A281949.P5705187079612268399

namespace A281949

/-- `ogf((2+2x^2)/(1-4x+2x^2-4x^3))` -/
def P5705187079612268399.Spec : Prop :=
  ∀ n, P5705187079612268399.a n = A281949 (n + 1)

end A281949

/-! ## A281949.P5495204007324887221

`4*a(n-1)-2*a(n-2)+4*a(n-3)` with `a(0)=2, a(1)=8, a(2)=30`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281949

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)` -/
def P5495204007324887221.Spec : Prop :=
  ∀ n, P5495204007324887221.a n = A281949 (n + 1)

theorem P5495204007324887221.correct : P5495204007324887221.Spec := by
  intro n
  simp only [A281949, Nat.add_sub_cancel]

end A281949

/-! ## A281949.P1526427453256218065

`A316183(∑[n+1]+2)`
-/

namespace A281949.P1526427453256218065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281949.P1526427453256218065

namespace A281949

/-- `A316183(∑[n+1]+2)` -/
def P1526427453256218065.Spec : Prop :=
  ∀ n, P1526427453256218065.a n = A281949 (n + 1)

end A281949

/-! ## A281949.P14617901722170220400

`A281955(∑[n+1]+2)`
-/

namespace A281949.P14617901722170220400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281949.P14617901722170220400

namespace A281949

/-- `A281955(∑[n+1]+2)` -/
def P14617901722170220400.Spec : Prop :=
  ∀ n, P14617901722170220400.a n = A281949 (n + 1)

end A281949

/-! ## A281949.P10381165101140882473

`A316183(A055998(n)+2)+A178780(n)`
-/

namespace A281949.P10381165101140882473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A055998 n + 2).toNat + A178780 n

end

end A281949.P10381165101140882473

namespace A281949

/-- `A316183(A055998(n)+2)+A178780(n)` -/
def P10381165101140882473.Spec : Prop :=
  ∀ n, P10381165101140882473.a n = A281949 (n + 1)

end A281949

/-!
# A281950: Number of nX3 0..1 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281950, there is no canonical definition to state claims against.
-/

/-! ## A281950.P15588791702626246307

`A281955(∑[n+2]+4)`
-/

namespace A281950.P15588791702626246307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281950.P15588791702626246307

/-! ## A281950.P7205856340606637100

`lcm((-1)^n, A281955(A167614(n+1)))`
-/

namespace A281950.P7205856340606637100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A281955 (A167614 (n + 1)).toNat)

end

end A281950.P7205856340606637100

/-! ## A281950.P4622599298176145769

`A281955(A167614(n+1))+A025444(n)`
-/

namespace A281950.P4622599298176145769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A167614 (n + 1)).toNat + A025444 n

end

end A281950.P4622599298176145769

/-! ## A281950.P16422285991306366760

`A281955(A167614(n+1))+A178798(n)`
-/

namespace A281950.P16422285991306366760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A167614 (n + 1)).toNat + A178798 n

end

end A281950.P16422285991306366760

/-! ## A281950.P10287252661877104914

`A281955(A167614(n+1))+A185284(n)`
-/

namespace A281950.P10287252661877104914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A167614 (n + 1)).toNat + A185284 n

end

end A281950.P10287252661877104914

/-!
# A281951: Number of n X 4 0..1 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281951, there is no canonical definition to state claims against.
-/

/-! ## A281951.P8987305283466846923

`A281955(A374004(n+1))`
-/

namespace A281951.P8987305283466846923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A374004 (n + 1)).toNat

end

end A281951.P8987305283466846923

/-! ## A281951.P9505415319717321171

`A281955(A141214(n)+7)`
-/

namespace A281951.P9505415319717321171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A141214 n + 7).toNat

end

end A281951.P9505415319717321171

/-! ## A281951.P3224939041598322972

`A281955(A052905(n)+9)`
-/

namespace A281951.P3224939041598322972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A052905 n + 9).toNat

end

end A281951.P3224939041598322972

/-! ## A281951.P13893544117394733679

`A281955(A167614(n+2)+1)`
-/

namespace A281951.P13893544117394733679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A167614 (n + 2) + 1).toNat

end

end A281951.P13893544117394733679

/-! ## A281951.P15181102085002641890

`A281955(eq[2, A141169(n)]+1)`
-/

namespace A281951.P15181102085002641890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A281951.P15181102085002641890

/-!
# A281952: Number of nX5 0..1 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281952, there is no canonical definition to state claims against.
-/

/-! ## A281952.P5244259520496826224

`A281955(A374005(n+1))`
-/

namespace A281952.P5244259520496826224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A374005 (n + 1)).toNat

end

end A281952.P5244259520496826224

/-! ## A281952.P10651322811451853946

`A281955(A167499(n+3))`
-/

namespace A281952.P10651322811451853946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A167499 (n + 3)).toNat

end

end A281952.P10651322811451853946

/-! ## A281952.P5077636239962683510

`A281955(A155212(n)+13)`
-/

namespace A281952.P5077636239962683510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A155212 n + 13).toNat

end

end A281952.P5077636239962683510

/-! ## A281952.P12097554243948648186

`A281955(A000124(n+4)+4)`
-/

namespace A281952.P12097554243948648186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A000124 (n + 4) + 4).toNat

end

end A281952.P12097554243948648186

/-! ## A281952.P13414333346194581633

`A281955(A000096(n+3)+6)`
-/

namespace A281952.P13414333346194581633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A000096 (n + 3) + 6).toNat

end

end A281952.P13414333346194581633

/-!
# A281953: Number of nX6 0..1 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281953, there is no canonical definition to state claims against.
-/

/-! ## A281953.P17308574738524465438

`A281955(A374007(n+1))`
-/

namespace A281953.P17308574738524465438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A374007 (n + 1)).toNat

end

end A281953.P17308574738524465438

/-! ## A281953.P5497565570495160047

`A281955(A056115(n)+21)`
-/

namespace A281953.P5497565570495160047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A056115 n + 21).toNat

end

end A281953.P5497565570495160047

/-! ## A281953.P3662299019569677861

`A281955(eq[7, A131818(n+1)])`
-/

namespace A281953.P3662299019569677861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281953.P3662299019569677861

/-! ## A281953.P16647874474037608548

`A281955(eq[3, A219347(n)])`
-/

namespace A281953.P16647874474037608548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281953.P16647874474037608548

/-! ## A281953.P10819801419708964774

`A281955(eq[5, A193592(n)])`
-/

namespace A281953.P10819801419708964774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281953.P10819801419708964774

/-!
# A281954: Number of n X 7 0..1 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281954, there is no canonical definition to state claims against.
-/

/-! ## A281954.P18203600029939770244

`A281955(A374008(n+1))`
-/

namespace A281954.P18203600029939770244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (A374008 (n + 1)).toNat

end

end A281954.P18203600029939770244

/-! ## A281954.P3929834883362911826

`A281955(eq[11, A066657(n)])`
-/

namespace A281954.P3929834883362911826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281954.P3929834883362911826

/-! ## A281954.P10459767295253570007

`A281955(eq[8, A131818(n+1)])`
-/

namespace A281954.P10459767295253570007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281954.P10459767295253570007

/-! ## A281954.P17594839965262385575

`A281955(eq[4, A219347(n)])`
-/

namespace A281954.P17594839965262385575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281954.P17594839965262385575

/-! ## A281954.P7616318664757873330

`A281955(eq[6, A193592(n)])`
-/

namespace A281954.P7616318664757873330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281954.P7616318664757873330

/-!
# A281955: T(n,k)=Number of nXk 0..1 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281955, there is no canonical definition to state claims against.
-/

/-! ## A281955.P9258681665241132589

`A316183(n+1)+A016389(A022166(n))`
-/

namespace A281955.P9258681665241132589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (n + 1) + A016389 (A022166 n).toNat

end

end A281955.P9258681665241132589

/-! ## A281955.P11108660235566064027

`A316183(n+1)+A016389(A027336(n))`
-/

namespace A281955.P11108660235566064027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (n + 1) + A016389 (A027336 n).toNat

end

end A281955.P11108660235566064027

/-! ## A281955.P2568642164608823321

`A316183(n+1)+A016389(A176561(n))`
-/

namespace A281955.P2568642164608823321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (n + 1) + A016389 (A176561 n).toNat

end

end A281955.P2568642164608823321

/-! ## A281955.P1359473041193861498

`A316183(n+1)+A178780(A174376(n))`
-/

namespace A281955.P1359473041193861498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (n + 1) + A178780 (A174376 n).toNat

end

end A281955.P1359473041193861498

/-! ## A281955.P9278533906863270769

`A316183(n+1)-A011731(A022171(n))`
-/

namespace A281955.P9278533906863270769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (n + 1) - A011731 (A022171 n).toNat

end

end A281955.P9278533906863270769

/-!
# A281957: a(n) = largest k such that n has at least k partitions each containing at least k parts.

The programs for A281957, there is no canonical definition to state claims against.
-/

/-! ## A281957.P1107382152032803784

`∑[char[A036042(n)+n]]`
-/

namespace A281957.P1107382152032803784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281957.P1107382152032803784

/-! ## A281957.P2813566412215892889

`∑[1-char[A000070(n)+n]]`
-/

namespace A281957.P2813566412215892889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281957.P2813566412215892889

/-! ## A281957.P3473849456088542306

`∑[1-char[∑[A000041(n)]+n]]`
-/

namespace A281957.P3473849456088542306
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281957.P3473849456088542306

/-! ## A281957.P6988637586610336586

`1-A036042(a(n-1))+n` with `a(0)=1`
-/

namespace A281957.P6988637586610336586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A036042 (a (n - 1)).toNat + (n : ℤ)

end

end A281957.P6988637586610336586

/-! ## A281957.P4800657134737801404

`1-(A036042(floor(a(n-1)))-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A281957.P4800657134737801404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A036042 (a (n - 1)).toNat - (n : ℤ))

end

end A281957.P4800657134737801404

/-! ## A281957.P5676879556923332140

`1-(A036042(ceil(a(n-1)))-n)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A281957.P5676879556923332140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A036042 (a (n - 1)).toNat - (n : ℤ))

end

end A281957.P5676879556923332140

/-! ## A281957.P15573013276024888382

`∑[A008290(val(n+1, A338001(n)+1+n))]`
-/

namespace A281957.P15573013276024888382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.valuation (n + 1) (A338001 n + 1 + (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281957.P15573013276024888382

/-!
# A281959: 

The programs for A281959, there is no canonical definition to state claims against.
-/

/-! ## A281959.P1614665780421469364

`∑{d}[n+1, #^25]`
-/

namespace A281959.P1614665780421469364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 25

end

end A281959.P1614665780421469364

/-!
# A281960: Primes that are the sum of three consecutive odd semiprimes.

The programs for A281960, the canonical program `A281960.P12001723528771970653` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281960 has offset 1).

The definition of A281960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1878 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281960.P12001723528771970653

`p?[A362420(n+4)-A362420(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A281960

/-- `p?[A362420(n+4)-A362420(n+1)]` -/
def P12001723528771970653.Spec : Prop :=
  ∀ n, P12001723528771970653.a n = A281960 (n + 1)

theorem P12001723528771970653.correct : P12001723528771970653.Spec := by
  intro n
  simp only [A281960, Nat.add_sub_cancel]

end A281960

/-! ## A281960.P8151492847598366709

`A138152(A321423(3*n+1)+A138152(2*n+5))`
-/

namespace A281960.P8151492847598366709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138152 (A321423 (3 * n + 1) + A138152 (2 * n + 5)).toNat

end

end A281960.P8151492847598366709

namespace A281960

/-- `A138152(A321423(3*n+1)+A138152(2*n+5))` -/
def P8151492847598366709.Spec : Prop :=
  ∀ n, P8151492847598366709.a n = A281960 (n + 1)

end A281960

/-!
# A281964: Real part of n!*Sum_{k=1..n} i^(k-1)/k, where i is sqrt(-1).

The programs for A281964, there is no canonical definition to state claims against.
-/

/-! ## A281964.P3009583007228246598

`∑{d}[A126451(n), gcd(9, #)]`
-/

namespace A281964.P3009583007228246598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd 9 d

end

end A281964.P3009583007228246598

/-! ## A281964.P1076868134198501599

`∑[A349137(∑[A123307(n)])]`
-/

namespace A281964.P1076868134198501599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123307 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281964.P1076868134198501599

/-!
# A281965: Number of sets of exactly n positive integers <= n+2 having a square element sum.

The programs for A281965, there is no canonical definition to state claims against.
-/

/-! ## A281965.P15923887076990654571

`A281871(∑[n+3])`
-/

namespace A281965.P15923887076990654571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281965.P15923887076990654571

/-! ## A281965.P6075610533892284842

`A281871(A055999(n)+3)%A014206(n)`
-/

namespace A281965.P6075610533892284842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281871 (A055999 n + 3).toNat) (A014206 n)

end

end A281965.P6075610533892284842

/-! ## A281965.P16405802813742337046

`or(A000007(n), A281871(A055999(n)+3))`
-/

namespace A281965.P16405802813742337046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A281871 (A055999 n + 3).toNat)

end

end A281965.P16405802813742337046

/-! ## A281965.P4904501268756952784

`A028310(A281871(A122553(n)+A055999(n)))`
-/

namespace A281965.P4904501268756952784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A281871 (A122553 n + A055999 n).toNat).toNat

end

end A281965.P4904501268756952784

/-! ## A281965.P11026483654950344511

`A051707(A008578(n+2))*A281871(A055999(n)+3)`
-/

namespace A281965.P11026483654950344511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051707 (A008578 (n + 2)).toNat * A281871 (A055999 n + 3).toNat

end

end A281965.P11026483654950344511

/-!
# A281966: Number of sets of exactly n positive integers <= n+3 having a square element sum.

The programs for A281966, there is no canonical definition to state claims against.
-/

/-! ## A281966.P3861777584136555041

`A281871(∑[n+4]+2)`
-/

namespace A281966.P3861777584136555041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281966.P3861777584136555041

/-! ## A281966.P11799431274865444518

`∑{d}[A281871(A000217(n+4)-4), A000010(#)]`
-/

namespace A281966.P11799431274865444518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 4) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A281966.P11799431274865444518

/-! ## A281966.P13310124777622246220

`A281871(A000217(n+4)-4)+A002265(or(n, -4)+4)`
-/

namespace A281966.P13310124777622246220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 4) - 4).toNat + A002265 (Int.lor (n : ℤ) (-4) + 4).toNat

end

end A281966.P13310124777622246220

/-! ## A281966.P175467978080180675

`A001222(A001359(n+1))*A281871(A000217(n+4)-4)`
-/

namespace A281966.P175467978080180675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001359 (n + 1)).toNat * A281871 (A000217 (n + 4) - 4).toNat

end

end A281966.P175467978080180675

/-! ## A281966.P10619258579071749847

`A001222(A034844(n+1))*A281871(A000217(n+4)-4)`
-/

namespace A281966.P10619258579071749847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034844 (n + 1)).toNat * A281871 (A000217 (n + 4) - 4).toNat

end

end A281966.P10619258579071749847

/-! ## A281966.P8829295371253132717

`A001222(A270225(n+1))*A281871(A000217(n+4)-4)`
-/

namespace A281966.P8829295371253132717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A270225 (n + 1)).toNat * A281871 (A000217 (n + 4) - 4).toNat

end

end A281966.P8829295371253132717

/-! ## A281966.P8860119048142115310

`A014963(A326122(n+1))*A281871(A000217(n+4)-4)`
-/

namespace A281966.P8860119048142115310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A326122 (n + 1)).toNat * A281871 (A000217 (n + 4) - 4).toNat

end

end A281966.P8860119048142115310

/-!
# A281967: Number of sets of exactly n positive integers <= n+4 having a square element sum.

The programs for A281967, there is no canonical definition to state claims against.
-/

/-! ## A281967.P702520358156919485

`A281871(∑[n+5]+5)`
-/

namespace A281967.P702520358156919485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A281967.P702520358156919485

/-! ## A281967.P17134487932434840606

`gcd(A000038(n), A281871(A052905(n+2)))`
-/

namespace A281967.P17134487932434840606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A281871 (A052905 (n + 2)).toNat)

end

end A281967.P17134487932434840606

/-! ## A281967.P8331432036686893931

`lcm(A033999(n), A281871(A052905(n+2)))`
-/

namespace A281967.P8331432036686893931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A281871 (A052905 (n + 2)).toNat)

end

end A281967.P8331432036686893931

/-! ## A281967.P17848389198229557977

`A001511(2*n+1)*A281871(A052905(n+2))`
-/

namespace A281967.P17848389198229557977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A281871 (A052905 (n + 2)).toNat

end

end A281967.P17848389198229557977

/-! ## A281967.P16271862604024084022

`A281871(A052905(n+2))+A014022(A269100(n))`
-/

namespace A281967.P16271862604024084022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A052905 (n + 2)).toNat + A014022 (A269100 n).toNat

end

end A281967.P16271862604024084022

/-! ## A281967.P15121268136524917865

`A344420(A056556(n))+A281871(A052905(n+2))`
-/

namespace A281967.P15121268136524917865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A056556 n).toNat + A281871 (A052905 (n + 2)).toNat

end

end A281967.P15121268136524917865

/-! ## A281967.P17566269794744785487

`A046951(A008578(n+2))*A281871(A052905(n+2))`
-/

namespace A281967.P17566269794744785487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A008578 (n + 2)).toNat * A281871 (A052905 (n + 2)).toNat

end

end A281967.P17566269794744785487

/-! ## A281967.P4985328075975885929

`A281871(A052905(n+2))+2%A001222(A001747(n+1))`
-/

namespace A281967.P4985328075975885929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A052905 (n + 2)).toNat + Int.tmod 2 (A001222 (A001747 (n + 1)).toNat)

end

end A281967.P4985328075975885929

/-! ## A281967.P1953460591001640525

`A046951(A154551(n+1))*A281871(A052905(n+2))`
-/

namespace A281967.P1953460591001640525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A154551 (n + 1)).toNat * A281871 (A052905 (n + 2)).toNat

end

end A281967.P1953460591001640525

/-! ## A281967.P9341500519619093401

`A281871(A052905(n+2))+A014020(A167614(n+1))`
-/

namespace A281967.P9341500519619093401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A052905 (n + 2)).toNat + A014020 (A167614 (n + 1)).toNat

end

end A281967.P9341500519619093401

/-! ## A281967.P4522190810051957822

`A046951(A281229(n+3))*A281871(A052905(n+2))`
-/

namespace A281967.P4522190810051957822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A281229 (n + 3)).toNat * A281871 (A052905 (n + 2)).toNat

end

end A281967.P4522190810051957822

/-! ## A281967.P13775883225595723115

`A281871(A052905(n+2))+A014020(A155212(n))`
-/

namespace A281967.P13775883225595723115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A052905 (n + 2)).toNat + A014020 (A155212 n).toNat

end

end A281967.P13775883225595723115

/-!
# A281968: Number of sets of exactly n positive integers <= n+5 having a square element sum.

The programs for A281968, there is no canonical definition to state claims against.
-/

/-! ## A281968.P4211210572637252068

`record[A281871(∑[n+3]-3)]`
-/

namespace A281968.P4211210572637252068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (∑ j ∈ Finset.range (n + 1), f2 j - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281968.P4211210572637252068

/-! ## A281968.P7704956942810178682

`A281871(A055999(n+3))`
-/

namespace A281968.P7704956942810178682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A055999 (n + 3)).toNat

end

end A281968.P7704956942810178682

/-! ## A281968.P4604008237060061521

`A281871(A000217(n+6)-6)`
-/

namespace A281968.P4604008237060061521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 6) - 6).toNat

end

end A281968.P4604008237060061521

/-! ## A281968.P8454050409123870619

`A281871(A000096(n+4)+n+1)`
-/

namespace A281968.P8454050409123870619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A281968.P8454050409123870619

/-! ## A281968.P16933588594049659478

`A281871(eq[11, A099375(n)])`
-/

namespace A281968.P16933588594049659478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281968.P16933588594049659478

/-!
# A281969: Number of sets of exactly n positive integers <= n+6 having a square element sum.

The programs for A281969, there is no canonical definition to state claims against.
-/

/-! ## A281969.P10480609280402672617

`record[A281871(∑[n+4]-1)]`
-/

namespace A281969.P10480609280402672617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281969.P10480609280402672617

/-! ## A281969.P16401579302379191989

`A281871(A055999(n+4)-1)`
-/

namespace A281969.P16401579302379191989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A055999 (n + 4) - 1).toNat

end

end A281969.P16401579302379191989

/-! ## A281969.P10223430361121548273

`A281871(A034856(n+6)-5)`
-/

namespace A281969.P10223430361121548273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A034856 (n + 6) - 5).toNat

end

end A281969.P10223430361121548273

/-! ## A281969.P12995511279120907445

`A281871(A000096(n+6)-6)`
-/

namespace A281969.P12995511279120907445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 6) - 6).toNat

end

end A281969.P12995511279120907445

/-! ## A281969.P2511823676442938709

`A281871(A000217(n+7)-7)`
-/

namespace A281969.P2511823676442938709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 7) - 7).toNat

end

end A281969.P2511823676442938709

/-! ## A281969.P493443648089501878

`A281871(A167499(n+4)+2*n+1)`
-/

namespace A281969.P493443648089501878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A167499 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A281969.P493443648089501878

/-! ## A281969.P6210626493526331062

`A281871(2*n+A000124(n+5)+5)`
-/

namespace A281969.P6210626493526331062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 ((2 * n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A281969.P6210626493526331062

/-! ## A281969.P5789749382835483804

`A281871(eq[6, A025581(n)])`
-/

namespace A281969.P5789749382835483804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281969.P5789749382835483804

/-!
# A281970: Number of sets of exactly n positive integers <= n+7 having a square element sum.

The programs for A281970, there is no canonical definition to state claims against.
-/

/-! ## A281970.P11031137751414132125

`record[A281871(A155212(n))]`
-/

namespace A281970.P11031137751414132125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281970.P11031137751414132125

/-! ## A281970.P12999706335825279740

`A281871(A155212(n+4))`
-/

namespace A281970.P12999706335825279740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A155212 (n + 4)).toNat

end

end A281970.P12999706335825279740

/-! ## A281970.P12441307948981902985

`record[A281871(A056000(n)+2)]`
-/

namespace A281970.P12441307948981902985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A056000 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281970.P12441307948981902985

/-! ## A281970.P13818817160324496145

`A281871(A000217(n+8)-8)`
-/

namespace A281970.P13818817160324496145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 8) - 8).toNat

end

end A281970.P13818817160324496145

/-! ## A281970.P17875647367557065780

`record[A281871(A055999(n+1)-2)]`
-/

namespace A281970.P17875647367557065780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A055999 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281970.P17875647367557065780

/-! ## A281970.P4473093311388816388

`record[A281871(A051936(n+4)+1)]`
-/

namespace A281970.P4473093311388816388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A051936 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281970.P4473093311388816388

/-!
# A281971: Number of sets of exactly n positive integers <= n+8 having a square element sum.

The programs for A281971, there is no canonical definition to state claims against.
-/

/-! ## A281971.P5639034501384042831

`record[A281871(∑[n+1]+3*n)]`
-/

namespace A281971.P5639034501384042831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (∑ j ∈ Finset.range (n + 1), f2 j + 3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281971.P5639034501384042831

/-! ## A281971.P9059186885639620767

`A281871(A051936(n+9))`
-/

namespace A281971.P9059186885639620767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A051936 (n + 9)).toNat

end

end A281971.P9059186885639620767

/-! ## A281971.P8026864142099668507

`A281871(A000217(n+9)-9)`
-/

namespace A281971.P8026864142099668507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 9) - 9).toNat

end

end A281971.P8026864142099668507

/-! ## A281971.P14727378937466142304

`A281871(A000124(n+9)-10)`
-/

namespace A281971.P14727378937466142304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000124 (n + 9) - 10).toNat

end

end A281971.P14727378937466142304

/-! ## A281971.P6535535668060369439

`A281871(A133263(n+9)-11)`
-/

namespace A281971.P6535535668060369439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A133263 (n + 9) - 11).toNat

end

end A281971.P6535535668060369439

/-!
# A281972: Number of sets of exactly n positive integers <= n+9 having a square element sum.

The programs for A281972, there is no canonical definition to state claims against.
-/

/-! ## A281972.P17893792640904840912

`A281871(A056000(n+6))`
-/

namespace A281972.P17893792640904840912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A056000 (n + 6)).toNat

end

end A281972.P17893792640904840912

/-! ## A281972.P12515029409990187195

`A281871(A055999(n+7)-4)`
-/

namespace A281972.P12515029409990187195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A055999 (n + 7) - 4).toNat

end

end A281972.P12515029409990187195

/-! ## A281972.P15196673306050167396

`A281871(A052905(n+7)-5)`
-/

namespace A281972.P15196673306050167396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A052905 (n + 7) - 5).toNat

end

end A281972.P15196673306050167396

/-! ## A281972.P18269409752353075608

`A281871(A000096(n+9)-9)`
-/

namespace A281972.P18269409752353075608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 9) - 9).toNat

end

end A281972.P18269409752353075608

/-! ## A281972.P11502357401981033087

`A281871(A000217(n+10)-10)`
-/

namespace A281972.P11502357401981033087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 10) - 10).toNat

end

end A281972.P11502357401981033087

/-! ## A281972.P1006436560604708058

`A281871(A133263(n+8)+A020742(n))`
-/

namespace A281972.P1006436560604708058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A133263 (n + 8) + A020742 n).toNat

end

end A281972.P1006436560604708058

/-! ## A281972.P12739885861267591804

`A281871(A005843(n+4)+A000124(n+8))`
-/

namespace A281972.P12739885861267591804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A005843 (n + 4) + A000124 (n + 8)).toNat

end

end A281972.P12739885861267591804

/-! ## A281972.P3711593180535822100

`A281871(A144396(n+7)+A055999(n+5))`
-/

namespace A281972.P3711593180535822100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A144396 (n + 7) + A055999 (n + 5)).toNat

end

end A281972.P3711593180535822100

/-!
# A281973: Number of sets of exactly n positive integers <= n+10 having a square element sum.

The programs for A281973, there is no canonical definition to state claims against.
-/

/-! ## A281973.P4455162454553307712

`A281871(A055999(n+8)-5)`
-/

namespace A281973.P4455162454553307712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A055999 (n + 8) - 5).toNat

end

end A281973.P4455162454553307712

/-! ## A281973.P8291125485493489311

`A281871(A000217(n+11)-11)`
-/

namespace A281973.P8291125485493489311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000217 (n + 11) - 11).toNat

end

end A281973.P8291125485493489311

/-! ## A281973.P11519216575084963008

`A281871(A000096(n+9)+n+1)`
-/

namespace A281973.P11519216575084963008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A281973.P11519216575084963008

/-! ## A281973.P15093035116908385746

`A281871(A008486(n+6)+A000124(n+8))`
-/

namespace A281973.P15093035116908385746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A008486 (n + 6) + A000124 (n + 8)).toNat

end

end A281973.P15093035116908385746

/-! ## A281973.P2627224242696872465

`A281871(A046691(n+7)+A004277(n+7))`
-/

namespace A281973.P2627224242696872465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A046691 (n + 7) + A004277 (n + 7)).toNat

end

end A281973.P2627224242696872465

/-!
# A281974: Squarefree numbers excluding twin primes.

The programs for A281974, there is no canonical definition to state claims against.
-/

/-! ## A281974.P12280959875675173566

`record[A007913(A283265(n+1)+n)]`
-/

namespace A281974.P12280959875675173566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A283265 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281974.P12280959875675173566

/-! ## A281974.P1647530080738117064

`record[A007947(A283265(n+1)+n)]`
-/

namespace A281974.P1647530080738117064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A283265 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281974.P1647530080738117064

/-! ## A281974.P15683141080741308844

`record[A015052(A283265(n+1)+n)]`
-/

namespace A281974.P15683141080741308844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A283265 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281974.P15683141080741308844

/-! ## A281974.P10818809445871394730

`record[A015053(A283265(n+1)+n)]`
-/

namespace A281974.P10818809445871394730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A283265 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281974.P10818809445871394730

/-! ## A281974.P18168186285117555561

`record[A019554(A283265(n+1)+n)]`
-/

namespace A281974.P18168186285117555561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A283265 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281974.P18168186285117555561

/-! ## A281974.P16475669730026035124

`record[A019555(A283265(n+1)+n)]`
-/

namespace A281974.P16475669730026035124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A283265 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281974.P16475669730026035124

/-! ## A281974.P16899303161510389340

`∪[A000469(n+1), A007510(n+1)]`
-/

namespace A281974.P16899303161510389340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A281974.P16899303161510389340

/-! ## A281974.P17082046350162962385

`∪[A000469(n+1), A168270(n+1)]`
-/

namespace A281974.P17082046350162962385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A281974.P17082046350162962385

/-! ## A281974.P11353833468932316053

`eq[2*A164292(n+1)+1, A008683(n+1)²]+1`
-/

namespace A281974.P11353833468932316053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164292 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A281974.P11353833468932316053

/-!
# A281975: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers and z <= w such that both x and |x-y| are squares.

The programs for A281975, there is no canonical definition to state claims against.
-/

/-! ## A281975.P13133362324610467129

`A284524(A056112(n+1))+A070352(n)`
-/

namespace A281975.P13133362324610467129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284524 (A056112 (n + 1)).toNat + A070352 n

end

end A281975.P13133362324610467129

/-! ## A281975.P7318182499845584092

`A368914(A143895(n))+A281976(n)`
-/

namespace A281975.P7318182499845584092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (A143895 n).toNat + A281976 n

end

end A281975.P7318182499845584092

/-! ## A281975.P4718783536220470839

`A318962(A299275(n))+A281976(n)`
-/

namespace A281975.P4718783536220470839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 (A299275 n).toNat + A281976 n

end

end A281975.P4718783536220470839

/-! ## A281975.P4270740767131397904

`A300708(n)+A267463(A344899(n+5))`
-/

namespace A281975.P4270740767131397904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300708 n + A267463 (A344899 (n + 5)).toNat

end

end A281975.P4270740767131397904

/-!
# A281976: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers and z <= w such that both x and x + 24*y are squares.

The programs for A281976, there is no canonical definition to state claims against.
-/

/-! ## A281976.P1926030112940282345

`gcd(A072486(n+1), A273404(n))`
-/

namespace A281976.P1926030112940282345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072486 (n + 1)) (A273404 n)

end

end A281976.P1926030112940282345

/-! ## A281976.P17773340653336667579

`A273404(n)+A000007(A078426(n+1))`
-/

namespace A281976.P17773340653336667579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 n + A000007 (A078426 (n + 1)).toNat

end

end A281976.P17773340653336667579

/-! ## A281976.P12740324280745144124

`A070432(A230117(n+1))*A273404(n)`
-/

namespace A281976.P12740324280745144124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070432 (A230117 (n + 1)).toNat * A273404 n

end

end A281976.P12740324280745144124

/-! ## A281976.P10130321886353712928

`A273404(n)+A205988(A099243(n+4))`
-/

namespace A281976.P10130321886353712928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 n + A205988 (A099243 (n + 4)).toNat

end

end A281976.P10130321886353712928

/-! ## A281976.P11652412865220382149

`A273404(n)/A342084(A056893(n+1))`
-/

namespace A281976.P11652412865220382149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273404 n : ℚ) / (A342084 (A056893 (n + 1)).toNat : ℚ)

end

end A281976.P11652412865220382149

/-! ## A281976.P13171951131748880245

`A273404(n)%A120070(A068935(n+1))`
-/

namespace A281976.P13171951131748880245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273404 n) (A120070 (A068935 (n + 1)).toNat)

end

end A281976.P13171951131748880245

/-! ## A281976.P13629026766468683577

`A273404(n)%A250544(n+1)`
-/

namespace A281976.P13629026766468683577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273404 n) (A250544 (n + 1))

end

end A281976.P13629026766468683577

/-! ## A281976.P5142238336480213474

`A273404(n)*A359372(A006562(3*(n+1)))`
-/

namespace A281976.P5142238336480213474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 n * A359372 (A006562 (3 * (n + 1))).toNat

end

end A281976.P5142238336480213474

/-! ## A281976.P14509246174454649341

`A273404(n)+A000007(A007318(n))`
-/

namespace A281976.P14509246174454649341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 n + A000007 (A007318 n).toNat

end

end A281976.P14509246174454649341

/-! ## A281976.P1554087749427164542

`A273404(n)+A205988(A099225(n+1))`
-/

namespace A281976.P1554087749427164542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 n + A205988 (A099225 (n + 1)).toNat

end

end A281976.P1554087749427164542

/-! ## A281976.P9912283585254178464

`gcd(A000038(A000217(n)), A273404(n))`
-/

namespace A281976.P9912283585254178464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A000217 n).toNat) (A273404 n)

end

end A281976.P9912283585254178464

/-! ## A281976.P13902186039609714800

`A273404(n)+A000007(A000217(n+3))`
-/

namespace A281976.P13902186039609714800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 n + A000007 (A000217 (n + 3)).toNat

end

end A281976.P13902186039609714800

/-! ## A281976.P13367979715606871242

`and(A273404(n), A381707(n+1))`
-/

namespace A281976.P13367979715606871242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273404 n) (A381707 (n + 1))

end

end A281976.P13367979715606871242

/-! ## A281976.P15119113227683531723

`and(A080567(n+1), A273404(n))`
-/

namespace A281976.P15119113227683531723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080567 (n + 1)) (A273404 n)

end

end A281976.P15119113227683531723

/-! ## A281976.P15843732685105840060

`and(A086827(n+1), A273404(n))`
-/

namespace A281976.P15843732685105840060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A273404 n)

end

end A281976.P15843732685105840060

/-!
# A281980: Numbers of the form x^4 + y^2 with x^2 + 24*y a square, where x and y are nonnegative integers.

The programs for A281980, there is no canonical definition to state claims against.
-/

/-! ## A281980.P12466439432841669424

`record[and(A022843(n), A185143(n))]`
-/

namespace A281980.P12466439432841669424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022843 n) (A185143 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281980.P12466439432841669424

/-! ## A281980.P194566652467165482

`record[and(A151976(n+1), A308873(n))]`
-/

namespace A281980.P194566652467165482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151976 (n + 1)) (A308873 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281980.P194566652467165482

/-!
# A281981: a(n) = 4*Sum_{i=1..n-1} Sum_{j=1..m} floor((j*i)/n) - (m-1)*m*(n-1) where m is floor(sqrt(n)).

The programs for A281981, there is no canonical definition to state claims against.
-/

/-! ## A281981.P10985498334498833223

`A028961(A034880(n+1)^A002024(n+1))`
-/

namespace A281981.P10985498334498833223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 (SequenceMachineLib.roundAway ((A034880 (n + 1) : ℚ) ^ (A002024 (n + 1) : ℤ))).toNat

end

end A281981.P10985498334498833223

/-! ## A281981.P17024050056113878223

`A000120(lcm(65, A137323(n+1)))`
-/

namespace A281981.P17024050056113878223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm 65 (A137323 (n + 1)))

end

end A281981.P17024050056113878223

/-! ## A281981.P13347234099198684373

`A002618(A010019(n))%A096865(n+1)`
-/

namespace A281981.P13347234099198684373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002618 (A010019 n).toNat) (A096865 (n + 1))

end

end A281981.P13347234099198684373

/-!
# A281982: Number of n X 2 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281982, there is no canonical definition to state claims against.
-/

/-! ## A281982.P4102252022623305759

`A281988(∑[n+1]+2)`
-/

namespace A281982.P4102252022623305759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281982.P4102252022623305759

/-! ## A281982.P3171875227359650423

`lcm(2, A281988(A000096(n)+3))`
-/

namespace A281982.P3171875227359650423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281988 (A000096 n + 3).toNat)

end

end A281982.P3171875227359650423

/-! ## A281982.P10395575062363965759

`A281988(A000096(n)+3)%A000051(n)²`
-/

namespace A281982.P10395575062363965759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281988 (A000096 n + 3).toNat) (A000051 n ^ 2)

end

end A281982.P10395575062363965759

/-! ## A281982.P8043823422765461035

`A281988(A000096(n)+3)+A000007(n+1)`
-/

namespace A281982.P8043823422765461035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A000096 n + 3).toNat + A000007 (n + 1)

end

end A281982.P8043823422765461035

/-!
# A281983: Number of nX3 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281983, there is no canonical definition to state claims against.
-/

/-! ## A281983.P15876838456876344577

`A281988(∑[n+2]+4)`
-/

namespace A281983.P15876838456876344577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281983.P15876838456876344577

/-! ## A281983.P15841021278205208126

`A057427(n)*A281988(A167614(n+1))`
-/

namespace A281983.P15841021278205208126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281988 (A167614 (n + 1)).toNat

end

end A281983.P15841021278205208126

/-! ## A281983.P3747871013714545674

`A281988(A167614(n+1))%A020572(n)`
-/

namespace A281983.P3747871013714545674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281988 (A167614 (n + 1)).toNat) (A020572 n)

end

end A281983.P3747871013714545674

/-! ## A281983.P4866504097411875186

`lcm(A000034(n), A281988(A167614(n+1)))`
-/

namespace A281983.P4866504097411875186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A281988 (A167614 (n + 1)).toNat)

end

end A281983.P4866504097411875186

/-! ## A281983.P83578417330174558

`or(A281988(A167614(n+1)), A316865(n))`
-/

namespace A281983.P83578417330174558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A281988 (A167614 (n + 1)).toNat) (A316865 n)

end

end A281983.P83578417330174558

/-!
# A281984: Number of nX4 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281984, there is no canonical definition to state claims against.
-/

/-! ## A281984.P6814933476327078708

`A281988(A374004(n+1))`
-/

namespace A281984.P6814933476327078708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A374004 (n + 1)).toNat

end

end A281984.P6814933476327078708

/-! ## A281984.P6302513134676083832

`A281988(A141214(n)+7)`
-/

namespace A281984.P6302513134676083832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A141214 n + 7).toNat

end

end A281984.P6302513134676083832

/-! ## A281984.P255095896180961016

`A281988(A052905(n)+9)`
-/

namespace A281984.P255095896180961016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A052905 n + 9).toNat

end

end A281984.P255095896180961016

/-! ## A281984.P5038745205776299925

`A281988(A055999(n)+10)`
-/

namespace A281984.P5038745205776299925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A055999 n + 10).toNat

end

end A281984.P5038745205776299925

/-! ## A281984.P9454524173937674219

`A281988(A167614(n+2)+1)`
-/

namespace A281984.P9454524173937674219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A167614 (n + 2) + 1).toNat

end

end A281984.P9454524173937674219

/-!
# A281985: Number of nX5 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281985, there is no canonical definition to state claims against.
-/

/-! ## A281985.P15103902867150246431

`A281988(A374005(n+1))`
-/

namespace A281985.P15103902867150246431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A374005 (n + 1)).toNat

end

end A281985.P15103902867150246431

/-! ## A281985.P12034861885034308067

`A281988(A167499(n+3))`
-/

namespace A281985.P12034861885034308067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A167499 (n + 3)).toNat

end

end A281985.P12034861885034308067

/-! ## A281985.P11883018826552648313

`A281988(A155212(n)+13)`
-/

namespace A281985.P11883018826552648313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A155212 n + 13).toNat

end

end A281985.P11883018826552648313

/-! ## A281985.P2246827163700574245

`A281988(A056000(n)+15)`
-/

namespace A281985.P2246827163700574245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A056000 n + 15).toNat

end

end A281985.P2246827163700574245

/-! ## A281985.P11881056934044683900

`A281988(Δ[A264443(n)])`
-/

namespace A281985.P11881056934044683900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (f1 (n + 1) - f1 n).toNat

end

end A281985.P11881056934044683900

/-!
# A281986: Number of nX6 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281986, there is no canonical definition to state claims against.
-/

/-! ## A281986.P17381637300917762733

`A281988(∑[n+5]+16)`
-/

namespace A281986.P17381637300917762733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A281986.P17381637300917762733

/-! ## A281986.P60910712123982438

`record[A281988(A243881(∑[n]))]`
-/

namespace A281986.P60910712123982438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A243881 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281986.P60910712123982438

/-! ## A281986.P11558991650168948146

`C(A281988(A056119(n)+16), A318671(n+1))`
-/

namespace A281986.P11558991650168948146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A281988 (A056119 n + 16).toNat).toNat (A318671 (n + 1)).toNat

end

end A281986.P11558991650168948146

/-! ## A281986.P4309222587626380337

`A281988(A055998(n+4)-2)+A178101(n+1)`
-/

namespace A281986.P4309222587626380337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A055998 (n + 4) - 2).toNat + A178101 (n + 1)

end

end A281986.P4309222587626380337

/-!
# A281987: Number of nX7 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281987, there is no canonical definition to state claims against.
-/

/-! ## A281987.P9466115626985435435

`A281988(A374008(n+1))`
-/

namespace A281987.P9466115626985435435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A374008 (n + 1)).toNat

end

end A281987.P9466115626985435435

/-! ## A281987.P5285051503306325905

`A281988(A167487(n+5))`
-/

namespace A281987.P5285051503306325905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A167487 (n + 5)).toNat

end

end A281987.P5285051503306325905

/-! ## A281987.P813959622188279493

`A281988(A056119(n)+28)`
-/

namespace A281987.P813959622188279493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (A056119 n + 28).toNat

end

end A281987.P813959622188279493

/-! ## A281987.P14903825387524915442

`A281988(eq[11, A066657(n)])`
-/

namespace A281987.P14903825387524915442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281987.P14903825387524915442

/-! ## A281987.P7222355048411781214

`A281988(eq[8, A131818(n+1)])`
-/

namespace A281987.P7222355048411781214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281987.P7222355048411781214

/-!
# A281988: T(n,k)=Number of nXk 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281988, there is no canonical definition to state claims against.
-/

/-! ## A281988.P15924913884523222288

`A347778(A359985(n))-A300061(A359985(n))`
-/

namespace A281988.P15924913884523222288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 (A359985 n).toNat - A300061 (A359985 n).toNat

end

end A281988.P15924913884523222288

/-! ## A281988.P5490245009847713286

`A327472(A099594(n)^A345932(n+3))`
-/

namespace A281988.P5490245009847713286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327472 (SequenceMachineLib.roundAway ((A099594 n : ℚ) ^ (A345932 (n + 3) : ℤ))).toNat

end

end A281988.P5490245009847713286

/-!
# A281993: Integers m such that sigma(m) + sigma(2*m) = 6*m.

The programs for A281993, there is no canonical definition to state claims against.
-/

/-! ## A281993.P10444567481261711695

`2^A002235(n+2)*A007505(n+2)`
-/

namespace A281993.P10444567481261711695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002235 (n + 2) : ℤ) * (A007505 (n + 2) : ℚ)

end

end A281993.P10444567481261711695

/-! ## A281993.P494911207954610526

`∩[A097214(n+1), A135098(n+2)]`
-/

namespace A281993.P494911207954610526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135098 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281993.P494911207954610526

/-! ## A281993.P11683794463638163389

`A097215(eq[A069646(n), A281988(n+1)])`
-/

namespace A281993.P11683794463638163389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097215 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A281993.P11683794463638163389

/-! ## A281993.P4372701108779928838

`∩[A060326(n+1), A135098(n)]`
-/

namespace A281993.P4372701108779928838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281993.P4372701108779928838

/-!
# A281994: Number of set partitions of [n] into subsets whose element sums are squares.

The programs for A281994, there is no canonical definition to state claims against.
-/

/-! ## A281994.P14587385388494777936

`A342799(A022293(round(ϕ*a(n-1))))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=1`
-/

namespace A281994.P14587385388494777936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0, 1, 0, 1, 1] fun n a =>
  A342799 (A022293 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat).toNat

end

end A281994.P14587385388494777936

/-! ## A281994.P5883569837810933317

`A319797(A337675(n)-A004442(n))`
-/

namespace A281994.P5883569837810933317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A337675 n - A004442 n).toNat

end

end A281994.P5883569837810933317

/-! ## A281994.P11847932329346261739

`A321223(or(A001285(n), A148149(n)))`
-/

namespace A281994.P11847932329346261739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321223 (Int.lor (A001285 n) (A148149 n)).toNat

end

end A281994.P11847932329346261739

/-! ## A281994.P15061242970212898811

`A263919(A000108(n))+A210322(n+1)`
-/

namespace A281994.P15061242970212898811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263919 (A000108 n).toNat + A210322 (n + 1)

end

end A281994.P15061242970212898811

/-! ## A281994.P15603063898703236447

`A319290(A353896(n))+A062610(n+1)`
-/

namespace A281994.P15603063898703236447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 (A353896 n).toNat + A062610 (n + 1)

end

end A281994.P15603063898703236447

/-!
# A281995: Squarefree numbers that, when added to the sum of their prime factors, remain squarefree.

The programs for A281995, the canonical program `A281995.P16123693745508675808` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281995 has offset 1).

The definition of A281995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281995.P16123693745508675808

`record[A007913(n+1)/A003557(A075254(n+1))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A281995

/-- `record[A007913(n+1)/A003557(A075254(n+1))]` -/
def P16123693745508675808.Spec : Prop :=
  ∀ n, P16123693745508675808.a n = (A281995 (n + 1) : ℚ)

end A281995

/-! ## A281995.P8585787181867821519

`record[A007947(n+1)/A003557(A075254(n+1))]`
-/

namespace A281995.P8585787181867821519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A003557 (A075254 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281995.P8585787181867821519

namespace A281995

/-- `record[A007947(n+1)/A003557(A075254(n+1))]` -/
def P8585787181867821519.Spec : Prop :=
  ∀ n, P8585787181867821519.a n = (A281995 (n + 1) : ℚ)

end A281995

/-! ## A281995.P12264079546254395343

`record[A019554(n+1)/A003557(A075254(n+1))]`
-/

namespace A281995.P12264079546254395343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A003557 (A075254 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281995.P12264079546254395343

namespace A281995

/-- `record[A019554(n+1)/A003557(A075254(n+1))]` -/
def P12264079546254395343.Spec : Prop :=
  ∀ n, P12264079546254395343.a n = (A281995 (n + 1) : ℚ)

end A281995

/-! ## A281995.P13781176175969006464

`record[A053166(n+1)/A003557(A075254(n+1))]`
-/

namespace A281995.P13781176175969006464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053166 (n + 1) : ℚ) / (A003557 (A075254 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281995.P13781176175969006464

namespace A281995

/-- `record[A053166(n+1)/A003557(A075254(n+1))]` -/
def P13781176175969006464.Spec : Prop :=
  ∀ n, P13781176175969006464.a n = (A281995 (n + 1) : ℚ)

end A281995

/-! ## A281995.P17834261521781153582

`A301899(lt[A340190(n+1), A113360(n)])`
-/

namespace A281995.P17834261521781153582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A281995.P17834261521781153582

namespace A281995

/-- `A301899(lt[A340190(n+1), A113360(n)])` -/
def P17834261521781153582.Spec : Prop :=
  ∀ n, P17834261521781153582.a n = A281995 (n + 1)

end A281995

/-!
# A281996: The smallest square referenced in A280547 (Smallest number k such that (k+1)^n - k^n is divisible by a square > 1).

The programs for A281996, there is no canonical definition to state claims against.
-/

/-! ## A281996.P16380022759711102973

`A282174(n+2)²`
-/

namespace A281996.P16380022759711102973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282174 (n + 2) ^ 2

end

end A281996.P16380022759711102973

/-! ## A281996.P14068045841994506352

`A000290(p?[A282174(n+2)])`
-/

namespace A281996.P14068045841994506352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281996.P14068045841994506352

/-! ## A281996.P2279158132658288937

`A011262(p?[A282174(n+2)])`
-/

namespace A281996.P2279158132658288937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281996.P2279158132658288937

/-! ## A281996.P11664368307673009081

`A002620(2*A282174(n+2))`
-/

namespace A281996.P11664368307673009081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A282174 (n + 2)).toNat

end

end A281996.P11664368307673009081

/-! ## A281996.P5133280234742013047

`A000290(or(1, A282174(n+2)))`
-/

namespace A281996.P5133280234742013047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A282174 (n + 2))).toNat

end

end A281996.P5133280234742013047

/-! ## A281996.P8230555655564655732

`A020639(∑{p}[A282174(n+2), #])^2`
-/

namespace A281996.P8230555655564655732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) ^ 2

end

end A281996.P8230555655564655732

/-! ## A281996.P13962160413814981212

`∑{p}[A282174(n+2), #*A020639(#)]`
-/

namespace A281996.P13962160413814981212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A020639 p

end

end A281996.P13962160413814981212

/-! ## A281996.P9973397264947895189

`A282174(n+2)^A020639(2*(n+1))`
-/

namespace A281996.P9973397264947895189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282174 (n + 2) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A281996.P9973397264947895189

/-! ## A281996.P18362756879334430492

`A282174(n+2)^A000040(gcd(n, n+1))`
-/

namespace A281996.P18362756879334430492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282174 (n + 2) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A281996.P18362756879334430492

/-! ## A281996.P15154473379518547373

`A282174(n+2)^A000040(A007318(∑[n]))`
-/

namespace A281996.P15154473379518547373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282174 (n + 2) : ℚ) ^ (A000040 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A281996.P15154473379518547373

/-!
# A281997: a(n) = (n-1)^n * n^n.

The programs for A281997, the canonical program `A281997.P18033756792537201015` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281997 has offset 1).

The definition of A281997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)*(n+1)^(n+1)` (program `A281997.P18033756792537201015`, by `A281997.P18033756792537201015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281997.P2661639858867128712

`((n+1)*n)^(n+1)`
-/

namespace A281997.P2661639858867128712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n) ^ (n + 1)

end

end A281997.P2661639858867128712

namespace A281997

/-- `((n+1)*n)^(n+1)` -/
def P2661639858867128712.Spec : Prop :=
  ∀ n, (P2661639858867128712.a n : ℤ) = A281997 (n + 1)

end A281997

/-! ## A281997.P18033756792537201015

`n^(n+1)*(n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281997

/-- `n^(n+1)*(n+1)^(n+1)` -/
def P18033756792537201015.Spec : Prop :=
  ∀ n, (P18033756792537201015.a n : ℤ) = A281997 (n + 1)

theorem P18033756792537201015.correct : P18033756792537201015.Spec := by
  intro n
  simp only [A281997, Nat.add_sub_cancel]

end A281997

/-! ## A281997.P10601539784188827589

`lcm(2, (n²+n)^(n+1))`
-/

namespace A281997.P10601539784188827589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n ^ 2 + n) ^ (n + 1))

end

end A281997.P10601539784188827589

namespace A281997

/-- `lcm(2, (n²+n)^(n+1))` -/
def P10601539784188827589.Spec : Prop :=
  ∀ n, (P10601539784188827589.a n : ℤ) = A281997 (n + 1)

end A281997

/-! ## A281997.P4281724039441521057

`abs((-lcm(n, n+1))^(n+1))`
-/

namespace A281997.P4281724039441521057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lcm n (n + 1) : ℤ)) ^ (n + 1)|

end

end A281997.P4281724039441521057

namespace A281997

/-- `abs((-lcm(n, n+1))^(n+1))` -/
def P4281724039441521057.Spec : Prop :=
  ∀ n, P4281724039441521057.a n = A281997 (n + 1)

end A281997

/-! ## A281997.P5309666641894139316

`and(-2, (n²+n)^(n+1))`
-/

namespace A281997.P5309666641894139316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((n ^ 2 + n) ^ (n + 1) : ℤ)

end

end A281997.P5309666641894139316

namespace A281997

/-- `and(-2, (n²+n)^(n+1))` -/
def P5309666641894139316.Spec : Prop :=
  ∀ n, P5309666641894139316.a n = A281997 (n + 1)

end A281997

/-!
# A281998: a(n) is the smallest prime p such that there is a multiplicative subgroup H of Z/pZ, of even size and of index n, such that for any two cosets H1 and H2 of H, H1 + H2 contains all of (Z/pZ)\0.

The programs for A281998, there is no canonical definition to state claims against.
-/

/-! ## A281998.P3798515086895326174

`A193507(A000430(n+1)*A263373(n+1))`
-/

namespace A281998.P3798515086895326174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193507 (A000430 (n + 1) * A263373 (n + 1)).toNat

end

end A281998.P3798515086895326174

/-! ## A281998.P5787958539117478146

`A193507(A029862(n)*A240474(2*(n+1)))`
-/

namespace A281998.P5787958539117478146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193507 (A029862 n * A240474 (2 * (n + 1))).toNat

end

end A281998.P5787958539117478146

/-!
# A281999: Half of the height of the right trapezoidal gnomon (of the derivative of Y=X^5).

The programs for A281999, the canonical program `A281999.P10224740160502693104` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281999 has offset 1).

The definition of A281999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281999.P10224740160502693104

`(n+1)^5-n^5-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A281999

/-- `(n+1)^5-n^5-a(n-1)` -/
def P10224740160502693104.Spec : Prop :=
  ∀ n, P10224740160502693104.a n = A281999 (n + 1)

theorem P10224740160502693104.correct : P10224740160502693104.Spec := by
  intro n
  simp only [A281999, Nat.add_sub_cancel]

end A281999

/-! ## A281999.P15468915199056824339

`(5*((n+1)²-1)*(n+1)²-(-1)^(n+1)+1)/2`
-/

namespace A281999.P15468915199056824339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (((n + 1) ^ 2 : ℤ) - 1) * ((n + 1) ^ 2 : ℤ) - (-1) ^ (n + 1) + 1 : ℚ) / 2

end

end A281999.P15468915199056824339

namespace A281999

/-- `(5*((n+1)²-1)*(n+1)²-(-1)^(n+1)+1)/2` -/
def P15468915199056824339.Spec : Prop :=
  ∀ n, P15468915199056824339.a n = (A281999 (n + 1) : ℚ)

theorem P15468915199056824339.correct : P15468915199056824339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A281999, Nat.add_sub_cancel, A281999.P15468915199056824339.a, A281999.P10224740160502693104.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A281999, Nat.add_sub_cancel, A281999.P15468915199056824339.a, A281999.P10224740160502693104.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A281999

/-! ## A281999.P8972740143919367497

`Δ[n^5-a(n-1)]` with `a(0)=0`
-/

namespace A281999.P8972740143919367497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 5 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281999.P8972740143919367497

namespace A281999

/-- `Δ[n^5-a(n-1)]` -/
def P8972740143919367497.Spec : Prop :=
  ∀ n, P8972740143919367497.a n = A281999 (n + 1)

end A281999

/-! ## A281999.P7926463407234920871

`Δ[A062393(n)]`
-/

namespace A281999.P7926463407234920871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281999.P7926463407234920871

namespace A281999

/-- `Δ[A062393(n)]` -/
def P7926463407234920871.Spec : Prop :=
  ∀ n, P7926463407234920871.a n = A281999 (n + 1)

end A281999

/-! ## A281999.P8629421883001036280

`A062393(n+1)-A062393(n)`
-/

namespace A281999.P8629421883001036280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062393 (n + 1) - A062393 n

end

end A281999.P8629421883001036280

namespace A281999

/-- `A062393(n+1)-A062393(n)` -/
def P8629421883001036280.Spec : Prop :=
  ∀ n, P8629421883001036280.a n = A281999 (n + 1)

end A281999

/-! ## A281999.P3615696829120505753

`A005476((n+1)²)-A077221(n+1)`
-/

namespace A281999.P3615696829120505753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 ((n + 1) ^ 2) - A077221 (n + 1)

end

end A281999.P3615696829120505753

namespace A281999

/-- `A005476((n+1)²)-A077221(n+1)` -/
def P3615696829120505753.Spec : Prop :=
  ∀ n, P3615696829120505753.a n = A281999 (n + 1)

end A281999

