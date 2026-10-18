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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B005.C002
import Seq.B006.C000
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
# A350500: Even numbers that are both the sum of a twin prime pair and the sum of 1 and a semiprime.

The programs for A350500, the canonical program `A350500.P4251867538513531701` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350500 has offset 1).

The definition of A350500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350500.P6639201535961884634

`A000010(3*p?[A276045(n+1)+2])`
-/

namespace A350500.P6639201535961884634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A350500.P6639201535961884634

namespace A350500

/-- `A000010(3*p?[A276045(n+1)+2])` -/
def P6639201535961884634.Spec : Prop :=
  ∀ n, P6639201535961884634.a n = A350500 (n + 1)

end A350500

/-! ## A350500.P4520606234344156550

`∩[A089268(n+1)+1, A105571(n+1)]`
-/

namespace A350500.P4520606234344156550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089268 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350500.P4520606234344156550

namespace A350500

/-- `∩[A089268(n+1)+1, A105571(n+1)]` -/
def P4520606234344156550.Spec : Prop :=
  ∀ n, (P4520606234344156550.a n : ℤ) = A350500 (n + 1)

end A350500

/-! ## A350500.P4301484387597068832

`∩[A046315(n+1)+1, A105571(n+1)]`
-/

namespace A350500.P4301484387597068832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350500.P4301484387597068832

namespace A350500

/-- `∩[A046315(n+1)+1, A105571(n+1)]` -/
def P4301484387597068832.Spec : Prop :=
  ∀ n, (P4301484387597068832.a n : ℤ) = A350500 (n + 1)

end A350500

/-! ## A350500.P4251867538513531701

`∩[A054735(n+1), A088707(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A350500

/-- `∩[A054735(n+1), A088707(n+1)]` -/
def P4251867538513531701.Spec : Prop :=
  ∀ n, (P4251867538513531701.a n : ℤ) = A350500 (n + 1)

theorem P4251867538513531701.correct : P4251867538513531701.Spec := by
  intro n
  simp only [A350500, Nat.add_sub_cancel]

end A350500

/-! ## A350500.P7226235058077658063

`A004275(p?[A234095(n+1)+2])`
-/

namespace A350500.P7226235058077658063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A350500.P7226235058077658063

namespace A350500

/-- `A004275(p?[A234095(n+1)+2])` -/
def P7226235058077658063.Spec : Prop :=
  ∀ n, P7226235058077658063.a n = A350500 (n + 1)

end A350500

/-! ## A350500.P12635595764366489887

`A004275(p?[A276045(n+1)+2])`
-/

namespace A350500.P12635595764366489887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A350500.P12635595764366489887

namespace A350500

/-- `A004275(p?[A276045(n+1)+2])` -/
def P12635595764366489887.Spec : Prop :=
  ∀ n, P12635595764366489887.a n = A350500 (n + 1)

end A350500

/-! ## A350500.P8035406046700194089

`A160411(p?[A234095(n+1)+2])`
-/

namespace A350500.P8035406046700194089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160411 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A350500.P8035406046700194089

namespace A350500

/-- `A160411(p?[A234095(n+1)+2])` -/
def P8035406046700194089.Spec : Prop :=
  ∀ n, P8035406046700194089.a n = A350500 (n + 1)

end A350500

/-!
# A350501: Table read by antidiagonals: T(n,k) (n >= 3, k >= 0) is the number of vertices in a regular n-gon after k generations of mitosis.

The programs for A350501, there is no canonical definition to state claims against.
-/

/-! ## A350501.P10738941134055816995

`A350502(n+3)+1-A350000(n+3)`
-/

namespace A350501.P10738941134055816995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350502 (n + 3) + (1 - A350000 (n + 3))

end

end A350501.P10738941134055816995

/-! ## A350501.P3653676971651753437

`A350502(n+3)+A024000(A350000(n+3))`
-/

namespace A350501.P3653676971651753437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350502 (n + 3) + A024000 (A350000 (n + 3)).toNat

end

end A350501.P3653676971651753437

/-! ## A350501.P8372218912343556067

`A065475(A350502(n+3)-A350000(n+3))`
-/

namespace A350501.P8372218912343556067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A350502 (n + 3) - A350000 (n + 3)).toNat

end

end A350501.P8372218912343556067

/-! ## A350501.P14272834360060834261

`A175012(A004884(n+1)+1)+1`
-/

namespace A350501.P14272834360060834261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175012 (A004884 (n + 1) + 1).toNat + 1

end

end A350501.P14272834360060834261

/-! ## A350501.P14781561487404560033

`∑{e}[A303671(A210216(n+1)), #]+2`
-/

namespace A350501.P14781561487404560033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303671 (A210216 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 2

end

end A350501.P14781561487404560033

/-!
# A350502: Table read by antidiagonals: T(n,k) (n >= 3, k >= 0) is the number of edges in a regular n-gon after k generations of mitosis.

The programs for A350502, there is no canonical definition to state claims against.
-/

/-! ## A350502.P4494574525102777908

`A350000(n+3)+A350501(n+3)-1`
-/

namespace A350502.P4494574525102777908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350000 (n + 3) + (A350501 (n + 3) - 1)

end

end A350502.P4494574525102777908

/-! ## A350502.P9777364220499978665

`A350000(n+3)+A023443(A350501(n+3))`
-/

namespace A350502.P9777364220499978665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350000 (n + 3) + A023443 (A350501 (n + 3)).toNat

end

end A350502.P9777364220499978665

/-! ## A350502.P1556832572523273081

`A233583(A350501(n+3)+A350000(n+3))`
-/

namespace A350502.P1556832572523273081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A350501 (n + 3) + A350000 (n + 3)).toNat

end

end A350502.P1556832572523273081

/-! ## A350502.P15336827873695418001

`A350000(n+3)+A175012(A004884(n+1)+1)`
-/

namespace A350502.P15336827873695418001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350000 (n + 3) + A175012 (A004884 (n + 1) + 1).toNat

end

end A350502.P15336827873695418001

/-! ## A350502.P1352436115035892699

`A121502(A209334(n+1)^A226444(n))+A350000(n+3)-1`
-/

namespace A350502.P1352436115035892699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121502 (SequenceMachineLib.roundAway ((A209334 (n + 1) : ℚ) ^ (A226444 n : ℤ))).toNat + (A350000 (n + 3) - 1)

end

end A350502.P1352436115035892699

/-!
# A350504: Maximal coefficient of (1 + x) * (1 + x^3) * (1 + x^5) * ... * (1 + x^(2*n-1)).

The programs for A350504, there is no canonical definition to state claims against.
-/

/-! ## A350504.P6868928675076703198

`A000194(A006082(n+1))`
-/

namespace A350504.P6868928675076703198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A006082 (n + 1)).toNat

end

end A350504.P6868928675076703198

/-! ## A350504.P12095192978922077693

`ceil(A056326(n+4)/A191965(3*(n+1)))`
-/

namespace A350504.P12095192978922077693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056326 (n + 4) : ℚ) / (A191965 (3 * (n + 1)) : ℚ)⌉

end

end A350504.P12095192978922077693

/-! ## A350504.P16712017918782702203

`A137734(A006082(n+1)-(n-1)^(n%2))`
-/

namespace A350504.P16712017918782702203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A006082 (n + 1) - ((n : ℤ) - 1) ^ (n % 2)).toNat

end

end A350504.P16712017918782702203

/-! ## A350504.P3199808080669312986

`A137734(A006082(n+1)-gcd(1-n, floor(n/2)))`
-/

namespace A350504.P3199808080669312986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A006082 (n + 1) - (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ : ℤ)).toNat

end

end A350504.P3199808080669312986

/-! ## A350504.P12610488430740028369

`A367087(n)+A124762(A360687(n+1))`
-/

namespace A350504.P12610488430740028369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367087 n + A124762 (A360687 (n + 1)).toNat

end

end A350504.P12610488430740028369

/-!
# A350507: Number of (not necessarily connected) unit-distance graphs on n nodes.

The programs for A350507, there is no canonical definition to state claims against.
-/

/-! ## A350507.P7187172783797551893

`A030530(A068764(n))+floor(log2(n+1))`
-/

namespace A350507.P7187172783797551893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A068764 n).toNat + (Nat.log 2 (n + 1) : ℤ)

end

end A350507.P7187172783797551893

/-! ## A350507.P14664016844675723940

`A122319(n)+A057022(A000260(n))`
-/

namespace A350507.P14664016844675723940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122319 n + A057022 (A000260 n).toNat

end

end A350507.P14664016844675723940

/-! ## A350507.P6796591619921079338

`A054041(A174191(n)-A331844(n))`
-/

namespace A350507.P6796591619921079338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054041 (A174191 n - A331844 n).toNat

end

end A350507.P6796591619921079338

/-!
# A350508: Numbers whose base-10 representation is a (scattered) subsequence of their base-3 representation.

The programs for A350508, there is no canonical definition to state claims against.
-/

/-! ## A350508.P17807872602461376558

`lt[A003132(n), A065516(A175789(n+1))]`
-/

namespace A350508.P17807872602461376558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (A175789 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350508.P17807872602461376558

/-! ## A350508.P18182642630244170039

`lt[A113581(n), A001222(A259539(n+1))]`
-/

namespace A350508.P18182642630244170039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A259539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350508.P18182642630244170039

/-! ## A350508.P8775013922445281355

`A007089(lt[A037462(n), A322991(n+3)])`
-/

namespace A350508.P8775013922445281355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322991 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350508.P8775013922445281355

/-!
# A350509: a(n) = n/A055874(n).

The programs for A350509, there is no canonical definition to state claims against.
-/

/-! ## A350509.P9471414720381673965

`(n+1)/A055874(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350509.P9471414720381673965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055874 (n + 1) : ℚ)

end

end A350509.P9471414720381673965

/-! ## A350509.P10434220077871438306

`(n+1)/(A007978(n+1)-1)`
-/

namespace A350509.P10434220077871438306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007978 (n + 1) - 1 : ℚ)

end

end A350509.P10434220077871438306

/-! ## A350509.P14797748242560328677

`(n+1)/(A346563(n+1)-(n+2))`
-/

namespace A350509.P14797748242560328677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A346563 (n + 1) - (n + 2 : ℤ) : ℚ)

end

end A350509.P14797748242560328677

/-! ## A350509.P541410705849518088

`A350576(n+1)+A055874(n+1)`
-/

namespace A350509.P541410705849518088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350576 (n + 1) + A055874 (n + 1)

end

end A350509.P541410705849518088

/-! ## A350509.P17322493628408859581

`(n+1)/(A071222(n)-A061853(n+1))`
-/

namespace A350509.P17322493628408859581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A071222 n - A061853 (n + 1) : ℚ)

end

end A350509.P17322493628408859581

/-! ## A350509.P1886477075265968966

`(n+1)/A061395(A328166(n+1))`
-/

namespace A350509.P1886477075265968966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A061395 (A328166 (n + 1)).toNat : ℚ)

end

end A350509.P1886477075265968966

/-! ## A350509.P13001363456729386379

`(n+1)/A055881(A342768(n+1))`
-/

namespace A350509.P13001363456729386379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055881 (A342768 (n + 1)).toNat : ℚ)

end

end A350509.P13001363456729386379

/-! ## A350509.P5261612067040636052

`(n+1)/A055881(A326578(n+1))`
-/

namespace A350509.P5261612067040636052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055881 (A326578 (n + 1)).toNat : ℚ)

end

end A350509.P5261612067040636052

/-! ## A350509.P828397201229180673

`(n+1)/A055881((n+1)²)`
-/

namespace A350509.P828397201229180673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055881 ((n + 1) ^ 2) : ℚ)

end

end A350509.P828397201229180673

/-!
# A350512: Triangle read by rows with T(n,0) = 1 for n >= 0 and T(n,k) = binomial(n-1,k-1)*(2*k*(n-k) + n)/k for 0 < k <= n.

The programs for A350512, there is no canonical definition to state claims against.
-/

/-! ## A350512.P1408017766667473872

`A174148(n)/A001263(n+1)`
-/

namespace A350512.P1408017766667473872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174148 n : ℚ) / (A001263 (n + 1) : ℚ)

end

end A350512.P1408017766667473872

/-! ## A350512.P3332350477170488205

`2*A103450(n)-A007318(n)`
-/

namespace A350512.P3332350477170488205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103450 n - A007318 n

end

end A350512.P3332350477170488205

/-! ## A350512.P1252106309084915119

`2*A103450(n)-abs(A130595(n))`
-/

namespace A350512.P1252106309084915119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103450 n - |A130595 n|

end

end A350512.P1252106309084915119

/-! ## A350512.P1170766398545974713

`2*A103450(n)-sqrt(A008459(n))`
-/

namespace A350512.P1170766398545974713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A103450 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A350512.P1170766398545974713

/-! ## A350512.P9594650434863691877

`2*A103450(n)-Δ[A102363(n)]`
-/

namespace A350512.P9594650434863691877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103450 n - (f1 (n + 1) - f1 n)

end

end A350512.P9594650434863691877

/-! ## A350512.P17666695143575073529

`2*A103450(n)-(A014473(n)+1)`
-/

namespace A350512.P17666695143575073529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103450 n - (A014473 n + 1)

end

end A350512.P17666695143575073529

/-! ## A350512.P11842005599171228818

`A005843(A103450(n))-A007318(n)`
-/

namespace A350512.P11842005599171228818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A103450 n).toNat - A007318 n

end

end A350512.P11842005599171228818

/-! ## A350512.P1584420761003161035

`A004273(A103450(n))-A014473(n)`
-/

namespace A350512.P1584420761003161035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A103450 n).toNat - A014473 n

end

end A350512.P1584420761003161035

/-! ## A350512.P63258953296204630

`A005843(A103450(n))-abs(A130595(n))`
-/

namespace A350512.P63258953296204630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A103450 n).toNat - |A130595 n|

end

end A350512.P63258953296204630

/-! ## A350512.P16781288892691593032

`A005843(A103450(n))-sqrt(A008459(n))`
-/

namespace A350512.P16781288892691593032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005843 (A103450 n).toNat : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A350512.P16781288892691593032

/-!
# A350515: a(n) = (n-1)/3 if n mod 3 = 1; a(n) = n/2 if n mod 6 = 0 or n mod 6 = 2; a(n) = (3n+1)/2 if n mod 6 = 3 or n mod 6 = 5.

The programs for A350515, the canonical program `A350515.P1630091057583403697` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350515 has offset 0).

The definition of A350515 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349407, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350515.P1630091057583403697

`(A349407(n+1)-1)/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A350515

/-- `(A349407(n+1)-1)/2` -/
def P1630091057583403697.Spec : Prop :=
  ∀ n, P1630091057583403697.a n = (A350515 n : ℚ)

end A350515

/-! ## A350515.P8796290648620502178

`floor(A349407(n+1)/2)`
-/

namespace A350515.P8796290648620502178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A349407 (n + 1) : ℚ) / 2⌋

end

end A350515.P8796290648620502178

namespace A350515

/-- `floor(A349407(n+1)/2)` -/
def P8796290648620502178.Spec : Prop :=
  ∀ n, P8796290648620502178.a n = A350515 n

end A350515

/-! ## A350515.P3953110118176108570

`A014682(∑[n²-n]%(n+2))`
-/

namespace A350515.P3953110118176108570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)).toNat

end

end A350515.P3953110118176108570

namespace A350515

/-- `A014682(∑[n²-n]%(n+2))` -/
def P3953110118176108570.Spec : Prop :=
  ∀ n, P3953110118176108570.a n = A350515 n

end A350515

/-! ## A350515.P8693028783699098522

`A014682(A349407(n+1)-1)`
-/

namespace A350515.P8693028783699098522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A349407 (n + 1) - 1).toNat

end

end A350515.P8693028783699098522

namespace A350515

/-- `A014682(A349407(n+1)-1)` -/
def P8693028783699098522.Spec : Prop :=
  ∀ n, P8693028783699098522.a n = A350515 n

end A350515

/-! ## A350515.P11053523735388900196

`A004525(A349407(n+1)-1)`
-/

namespace A350515.P11053523735388900196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A349407 (n + 1) - 1).toNat

end

end A350515.P11053523735388900196

namespace A350515

/-- `A004525(A349407(n+1)-1)` -/
def P11053523735388900196.Spec : Prop :=
  ∀ n, P11053523735388900196.a n = A350515 n

end A350515

/-! ## A350515.P14183647117186017949

`A004524(A349407(n+1))`
-/

namespace A350515.P14183647117186017949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A349407 (n + 1)).toNat

end

end A350515.P14183647117186017949

namespace A350515

/-- `A004524(A349407(n+1))` -/
def P14183647117186017949.Spec : Prop :=
  ∀ n, P14183647117186017949.a n = A350515 n

end A350515

/-! ## A350515.P5162014293333771208

`A001281(A349407(n+1)-1)`
-/

namespace A350515.P5162014293333771208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A349407 (n + 1) - 1).toNat

end

end A350515.P5162014293333771208

namespace A350515

/-- `A001281(A349407(n+1)-1)` -/
def P5162014293333771208.Spec : Prop :=
  ∀ n, P5162014293333771208.a n = A350515 n

end A350515

/-! ## A350515.P2904980083815050693

`A006370(A349407(n+1)-1)`
-/

namespace A350515.P2904980083815050693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A349407 (n + 1) - 1).toNat

end

end A350515.P2904980083815050693

namespace A350515

/-- `A006370(A349407(n+1)-1)` -/
def P2904980083815050693.Spec : Prop :=
  ∀ n, P2904980083815050693.a n = A350515 n

end A350515

/-! ## A350515.P14700794288682199644

`A317640(A349407(n+1)-1)`
-/

namespace A350515.P14700794288682199644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317640 (A349407 (n + 1) - 1).toNat

end

end A350515.P14700794288682199644

namespace A350515

/-- `A317640(A349407(n+1)-1)` -/
def P14700794288682199644.Spec : Prop :=
  ∀ n, P14700794288682199644.a n = A350515 n

end A350515

/-! ## A350515.P1978971709638740413

`A318972(A349407(n+1)-1)`
-/

namespace A350515.P1978971709638740413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318972 (A349407 (n + 1) - 1).toNat

end

end A350515.P1978971709638740413

namespace A350515

/-- `A318972(A349407(n+1)-1)` -/
def P1978971709638740413.Spec : Prop :=
  ∀ n, P1978971709638740413.a n = A350515 n

end A350515

/-!
# A350518: a(n) is the least prime q such that q*(n+1)-n is the square of a prime.

The programs for A350518, there is no canonical definition to state claims against.
-/

/-! ## A350518.P12498788570040037594

`A020639(or(A193556(n+2), A193839(2*(n+1))))`
-/

namespace A350518.P12498788570040037594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor (A193556 (n + 2)) (A193839 (2 * (n + 1)))).toNat

end

end A350518.P12498788570040037594

/-! ## A350518.P13995153820518823061

`A000961(C(A102183(3*n+1), A357637(2*(n+1)))+n)`
-/

namespace A350518.P13995153820518823061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Nat.choose (A102183 (3 * n + 1)).toNat (A357637 (2 * (n + 1))).toNat + n)

end

end A350518.P13995153820518823061

/-!
# A350519: a(n) = A(n,n) where A(1,n) = A(n,1) = prime(n+1) and A(m,n) = A(m-1,n) + A(m,n-1) + A(m-1,n-1) for m > 1 and n > 1.

The programs for A350519, there is no canonical definition to state claims against.
-/

/-! ## A350519.P17694095472122201047

`Δ[A087711(∑[A001850(n)])]`
-/

namespace A350519.P17694095472122201047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350519.P17694095472122201047

/-!
# A350520: The number of degree-n^2 polynomials over Z/2Z that can be written as f(f(x)) where f is a polynomial.

The programs for A350520, there is no canonical definition to state claims against.
-/

/-! ## A350520.P1552921193151128439

`ogf((-1+x+x^2-4x^3+4x^4)/(-1+2x+2x^2-4x^3))`
-/

namespace A350520.P1552921193151128439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 4, -4] [1, -2, -2, 4] n

end

end A350520.P1552921193151128439

/-! ## A350520.P13448589824584893496

`Δ[2*or(a(n-1), a(n-2))]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A350520.P13448589824584893496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  2 * Nat.lor (f1 (n - 1)) (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A350520.P13448589824584893496

/-! ## A350520.P10484500149777871276

`Δ[2^n-(2^n)%(∏[gcd(2, n)]-1)]`
-/

namespace A350520.P10484500149777871276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.tmod (2 ^ n : ℤ) (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350520.P10484500149777871276

/-! ## A350520.P15259509488568103335

`2*(a(n-2)+2^(n-2))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=8`
-/

namespace A350520.P15259509488568103335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 8] fun n a =>
  2 * (a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A350520.P15259509488568103335

/-! ## A350520.P10919466264405006903

`Δ[2^n-∑[2*a(n-2)]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A350520.P10919466264405006903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350520.P10919466264405006903

/-!
# A350521: a(n) = 18*n + 4.

The programs for A350521, the canonical program `A350521.P8283092138613523292` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350521 has offset 0).

The definition of A350521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*n+4` (program `A350521.P8283092138613523292`, by `A350521.P8283092138613523292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350521.P8283092138613523292

`18*n+4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A350521

/-- `18*n+4` -/
def P8283092138613523292.Spec : Prop :=
  ∀ n, (P8283092138613523292.a n : ℤ) = A350521 n

theorem P8283092138613523292.correct : P8283092138613523292.Spec := by
  intro n
  simp only [A350521]

end A350521

/-!
# A350522: a(n) = 18*n + 16.

The programs for A350522, the canonical program `A350522.P13009567044850805638` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350522 has offset 0).

The definition of A350522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*n+16` (program `A350522.P13009567044850805638`, by `A350522.P13009567044850805638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350522.P13009567044850805638

`18*n+16`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A350522

/-- `18*n+16` -/
def P13009567044850805638.Spec : Prop :=
  ∀ n, (P13009567044850805638.a n : ℤ) = A350522 n

theorem P13009567044850805638.correct : P13009567044850805638.Spec := by
  intro n
  simp only [A350522]

end A350522

/-!
# A350523: Prime numbers p such that K(p) = 0! + 1! + ... + (p-1)! == -2 (mod p).

The programs for A350523, there is no canonical definition to state claims against.
-/

/-! ## A350523.P5562220890079396970

`A236400(A096507(n+1))`
-/

namespace A350523.P5562220890079396970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236400 (A096507 (n + 1)).toNat

end

end A350523.P5562220890079396970

/-!
# A350524: G.f. A(x) satisfies: [x^(2*n-2)] A(x)^(n^2) = 0 and [x^(2*n-1)] A(x)^(n^2) = 0 for n > 1, with a(0) = 1, a(2) = 2.

The programs for A350524, there is no canonical definition to state claims against.
-/

/-! ## A350524.P1870999706006768739

`A329956(xor(n, floor(10^n/3)))`
-/

namespace A350524.P1870999706006768739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329956 (Int.xor (n : ℤ) ⌊(10 ^ n : ℚ) / 3⌋).toNat

end

end A350524.P1870999706006768739

/-!
# A350526: a(n) = f(n*r)*c(n/r), where f = floor, c = ceiling, and r = golden ratio (A001622).

The programs for A350526, the canonical program `A350526.P1363584205023659516` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350526 has offset 1).

The definition of A350526 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350527, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350526.P1363584205023659516

`n+1+A350527(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A350526

/-- `n+1+A350527(n+1)` -/
def P1363584205023659516.Spec : Prop :=
  ∀ n, P1363584205023659516.a n = A350526 (n + 1)

theorem P1363584205023659516.correct : P1363584205023659516.Spec := by
  intro n
  simp only [A350526, Nat.add_sub_cancel]

end A350526

/-! ## A350526.P16815166675861565092

`floor(ϕ*(n+1))*ceil((n+1)/ϕ)`
-/

namespace A350526.P16815166675861565092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ * ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

end

end A350526.P16815166675861565092

namespace A350526

/-- `floor(ϕ*(n+1))*ceil((n+1)/ϕ)` -/
def P16815166675861565092.Spec : Prop :=
  ∀ n, P16815166675861565092.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P13679282158288362340

`n²+(n+1)²%comp[floor(ϕ*n)]+n`
-/

namespace A350526.P13679282158288362340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + ((n + 1) ^ 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n)

end

end A350526.P13679282158288362340

namespace A350526

/-- `n²+(n+1)²%comp[floor(ϕ*n)]+n` -/
def P13679282158288362340.Spec : Prop :=
  ∀ n, (P13679282158288362340.a n : ℤ) = A350526 (n + 1)

end A350526

/-! ## A350526.P14557813944692674685

`abs((floor(ϕ*C(n+1, n))-n)*floor(ϕ*(n+1)))`
-/

namespace A350526.P14557813944692674685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌊Real.goldenRatio * (Nat.choose (n + 1) n : ℝ)⌋ - (n : ℤ)) * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋|

end

end A350526.P14557813944692674685

namespace A350526

/-- `abs((floor(ϕ*C(n+1, n))-n)*floor(ϕ*(n+1)))` -/
def P14557813944692674685.Spec : Prop :=
  ∀ n, P14557813944692674685.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P13658088115678277765

`A022344(n)+n²`
-/

namespace A350526.P13658088115678277765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022344 n + (n ^ 2 : ℤ)

end

end A350526.P13658088115678277765

namespace A350526

/-- `A022344(n)+n²` -/
def P13658088115678277765.Spec : Prop :=
  ∀ n, P13658088115678277765.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P13454077555007436289

`abs(ceil(ϕ*xor(n, -1))*A019446(n+1))`
-/

namespace A350526.P13454077555007436289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌉ * A019446 (n + 1)|

end

end A350526.P13454077555007436289

namespace A350526

/-- `abs(ceil(ϕ*xor(n, -1))*A019446(n+1))` -/
def P13454077555007436289.Spec : Prop :=
  ∀ n, P13454077555007436289.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P11690134946098854986

`∑[2*n]+(n+1)²%A001950(n+1)`
-/

namespace A350526.P11690134946098854986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod ((n + 1) ^ 2 : ℤ) (A001950 (n + 1))

end

end A350526.P11690134946098854986

namespace A350526

/-- `∑[2*n]+(n+1)²%A001950(n+1)` -/
def P11690134946098854986.Spec : Prop :=
  ∀ n, P11690134946098854986.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P920814987994283717

`abs((floor(ϕ*(n+1))-n)*A000201(n+1))`
-/

namespace A350526.P920814987994283717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - (n : ℤ)) * A000201 (n + 1)|

end

end A350526.P920814987994283717

namespace A350526

/-- `abs((floor(ϕ*(n+1))-n)*A000201(n+1))` -/
def P920814987994283717.Spec : Prop :=
  ∀ n, P920814987994283717.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P460875772288928744

`A000201(n+1)+A000201(n+1)*A005206(n)`
-/

namespace A350526.P460875772288928744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + A000201 (n + 1) * A005206 n

end

end A350526.P460875772288928744

namespace A350526

/-- `A000201(n+1)+A000201(n+1)*A005206(n)` -/
def P460875772288928744.Spec : Prop :=
  ∀ n, P460875772288928744.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P11198336093971579229

`A019445(n+1)+A005206(n)*A019446(n+1)`
-/

namespace A350526.P11198336093971579229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019445 (n + 1) + A005206 n * A019446 (n + 1)

end

end A350526.P11198336093971579229

namespace A350526

/-- `A019445(n+1)+A005206(n)*A019446(n+1)` -/
def P11198336093971579229.Spec : Prop :=
  ∀ n, P11198336093971579229.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P13510060292850873772

`A000201(n+1)+A000201(n+1)*A060143(n+1)`
-/

namespace A350526.P13510060292850873772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + A000201 (n + 1) * A060143 (n + 1)

end

end A350526.P13510060292850873772

namespace A350526

/-- `A000201(n+1)+A000201(n+1)*A060143(n+1)` -/
def P13510060292850873772.Spec : Prop :=
  ∀ n, P13510060292850873772.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P9653261453126682475

`A019446(n+1)+A019446(n+1)*A022342(n+1)`
-/

namespace A350526.P9653261453126682475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1) + A019446 (n + 1) * A022342 (n + 1)

end

end A350526.P9653261453126682475

namespace A350526

/-- `A019446(n+1)+A019446(n+1)*A022342(n+1)` -/
def P9653261453126682475.Spec : Prop :=
  ∀ n, P9653261453126682475.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P14409931102306557165

`A066096(n+1)+A060143(n+1)*A066096(n+1)`
-/

namespace A350526.P14409931102306557165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n + 1) + A060143 (n + 1) * A066096 (n + 1)

end

end A350526.P14409931102306557165

namespace A350526

/-- `A066096(n+1)+A060143(n+1)*A066096(n+1)` -/
def P14409931102306557165.Spec : Prop :=
  ∀ n, P14409931102306557165.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P17744791218224088379

`A019446(n+1)*A026351(n+1)-A019446(n+1)`
-/

namespace A350526.P17744791218224088379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1) * A026351 (n + 1) - A019446 (n + 1)

end

end A350526.P17744791218224088379

namespace A350526

/-- `A019446(n+1)*A026351(n+1)-A019446(n+1)` -/
def P17744791218224088379.Spec : Prop :=
  ∀ n, P17744791218224088379.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P12861510886403918237

`A005752(A000201(n+1))+n²`
-/

namespace A350526.P12861510886403918237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A000201 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A350526.P12861510886403918237

namespace A350526

/-- `A005752(A000201(n+1))+n²` -/
def P12861510886403918237.Spec : Prop :=
  ∀ n, P12861510886403918237.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P6079962978310607079

`A005752(A035336(n+1))+n²`
-/

namespace A350526.P6079962978310607079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A035336 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A350526.P6079962978310607079

namespace A350526

/-- `A005752(A035336(n+1))+n²` -/
def P6079962978310607079.Spec : Prop :=
  ∀ n, P6079962978310607079.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P12992662028424681939

`A005752(A035338(n))+n²`
-/

namespace A350526.P12992662028424681939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A035338 n).toNat + (n ^ 2 : ℤ)

end

end A350526.P12992662028424681939

namespace A350526

/-- `A005752(A035338(n))+n²` -/
def P12992662028424681939.Spec : Prop :=
  ∀ n, P12992662028424681939.a n = A350526 (n + 1)

end A350526

/-! ## A350526.P9932153923696271863

`A005752(A035340(n))+n²`
-/

namespace A350526.P9932153923696271863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A035340 n).toNat + (n ^ 2 : ℤ)

end

end A350526.P9932153923696271863

namespace A350526

/-- `A005752(A035340(n))+n²` -/
def P9932153923696271863.Spec : Prop :=
  ∀ n, P9932153923696271863.a n = A350526 (n + 1)

end A350526

/-!
# A350527: a(n) = c(n*r)*f(n/r), where f = floor, c = ceiling, and r = golden ratio (A001622).

The programs for A350527, the canonical program `A350527.P3676137829921894777` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350527 has offset 1).

The definition of A350527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350527.P6930643854670760197

`floor((n+1)/ϕ)*ceil(ϕ*(n+1))`
-/

namespace A350527.P6930643854670760197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ * ⌈Real.goldenRatio * (n + 1 : ℝ)⌉

end

end A350527.P6930643854670760197

namespace A350527

/-- `floor((n+1)/ϕ)*ceil(ϕ*(n+1))` -/
def P6930643854670760197.Spec : Prop :=
  ∀ n, P6930643854670760197.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P4115684812787975447

`comp[floor(ϕ*n)-1]²%(2*n+3*floor(ϕ*(n+1)))+n²-(n+1)`
-/

namespace A350527.P4115684812787975447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 : ℤ) ((2 * n : ℤ) + 3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋) + (n ^ 2 : ℤ) - (n + 1 : ℤ)

end

end A350527.P4115684812787975447

namespace A350527

/-- `comp[floor(ϕ*n)-1]²%(2*n+3*floor(ϕ*(n+1)))+n²-(n+1)` -/
def P4115684812787975447.Spec : Prop :=
  ∀ n, P4115684812787975447.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P12125489892432735146

`A350526(n+1)-(n+1)`
-/

namespace A350527.P12125489892432735146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350526 (n + 1) - (n + 1 : ℤ)

end

end A350527.P12125489892432735146

namespace A350527

/-- `A350526(n+1)-(n+1)` -/
def P12125489892432735146.Spec : Prop :=
  ∀ n, P12125489892432735146.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P3676137829921894777

`n²+A022344(n)-(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350527

/-- `n²+A022344(n)-(n+1)` -/
def P3676137829921894777.Spec : Prop :=
  ∀ n, P3676137829921894777.a n = A350527 (n + 1)

theorem P3676137829921894777.correct : P3676137829921894777.Spec := by
  intro n
  simp only [A350527, Nat.add_sub_cancel]

end A350527

/-! ## A350527.P5785271146052687706

`A165900(n)+A022344(n)`
-/

namespace A350527.P5785271146052687706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n + A022344 n

end

end A350527.P5785271146052687706

namespace A350527

/-- `A165900(n)+A022344(n)` -/
def P5785271146052687706.Spec : Prop :=
  ∀ n, P5785271146052687706.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P16161183237864089342

`abs((A001950(n+1)-n)*A005206(n))`
-/

namespace A350527.P16161183237864089342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A001950 (n + 1) - (n : ℤ)) * A005206 n|

end

end A350527.P16161183237864089342

namespace A350527

/-- `abs((A001950(n+1)-n)*A005206(n))` -/
def P16161183237864089342.Spec : Prop :=
  ∀ n, P16161183237864089342.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P6232516078906088670

`A000201(n+1)*A019446(n+1)-(n+1)`
-/

namespace A350527.P6232516078906088670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) * A019446 (n + 1) - (n + 1 : ℤ)

end

end A350527.P6232516078906088670

namespace A350527

/-- `A000201(n+1)*A019446(n+1)-(n+1)` -/
def P6232516078906088670.Spec : Prop :=
  ∀ n, P6232516078906088670.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P6455101447903938065

`A005206(n)+A293688(n)+A005206(n)²`
-/

namespace A350527.P6455101447903938065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + (A293688 n + A005206 n ^ 2)

end

end A350527.P6455101447903938065

namespace A350527

/-- `A005206(n)+A293688(n)+A005206(n)²` -/
def P6455101447903938065.Spec : Prop :=
  ∀ n, P6455101447903938065.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P10226921975835214720

`A005206(n)+A000201(n+1)*A005206(n)`
-/

namespace A350527.P10226921975835214720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + A000201 (n + 1) * A005206 n

end

end A350527.P10226921975835214720

namespace A350527

/-- `A005206(n)+A000201(n+1)*A005206(n)` -/
def P10226921975835214720.Spec : Prop :=
  ∀ n, P10226921975835214720.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P3207773753600421287

`A060143(n+1)+A000201(n+1)*A060143(n+1)`
-/

namespace A350527.P3207773753600421287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 1) + A000201 (n + 1) * A060143 (n + 1)

end

end A350527.P3207773753600421287

namespace A350527

/-- `A060143(n+1)+A000201(n+1)*A060143(n+1)` -/
def P3207773753600421287.Spec : Prop :=
  ∀ n, P3207773753600421287.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P18029244480359306035

`A060143(n+1)+A060143(n+1)*A066096(n+1)`
-/

namespace A350527.P18029244480359306035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 1) + A060143 (n + 1) * A066096 (n + 1)

end

end A350527.P18029244480359306035

namespace A350527

/-- `A060143(n+1)+A060143(n+1)*A066096(n+1)` -/
def P18029244480359306035.Spec : Prop :=
  ∀ n, P18029244480359306035.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P3651025141751750933

`A019446(n+1)*A026351(n+1)-A026351(n+1)`
-/

namespace A350527.P3651025141751750933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1) * A026351 (n + 1) - A026351 (n + 1)

end

end A350527.P3651025141751750933

namespace A350527

/-- `A019446(n+1)*A026351(n+1)-A026351(n+1)` -/
def P3651025141751750933.Spec : Prop :=
  ∀ n, P3651025141751750933.a n = A350527 (n + 1)

end A350527

/-! ## A350527.P13460003004372847001

`A060143(n+1)*A099267(n+2)-A060143(n+1)`
-/

namespace A350527.P13460003004372847001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 1) * A099267 (n + 2) - A060143 (n + 1)

end

end A350527.P13460003004372847001

namespace A350527

/-- `A060143(n+1)*A099267(n+2)-A060143(n+1)` -/
def P13460003004372847001.Spec : Prop :=
  ∀ n, P13460003004372847001.a n = A350527 (n + 1)

end A350527

/-!
# A350529: Square array read by antidiagonals downwards: T(n,k) is the number of sequences of length n with terms in 1..k such that no iterated difference is zero, n, k >= 0.

The programs for A350529, there is no canonical definition to state claims against.
-/

/-! ## A350529.P12350009379170429757

`and(A102705(A353434(n)), A322279(n))`
-/

namespace A350529.P12350009379170429757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102705 (A353434 n).toNat) (A322279 n)

end

end A350529.P12350009379170429757

/-! ## A350529.P6840673714130004458

`A353434(n)+A335446(A200154(n+2))`
-/

namespace A350529.P6840673714130004458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 n + A335446 (A200154 (n + 2)).toNat

end

end A350529.P6840673714130004458

/-! ## A350529.P10927525596643832783

`A353434(n)+A096158(A136498(n+1))`
-/

namespace A350529.P10927525596643832783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 n + A096158 (A136498 (n + 1)).toNat

end

end A350529.P10927525596643832783

/-! ## A350529.P6479255748367271329

`A353434(n)+A096158(A194673(n))`
-/

namespace A350529.P6479255748367271329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 n + A096158 (A194673 n).toNat

end

end A350529.P6479255748367271329

/-! ## A350529.P16447495069986377112

`A353434(n%A089321(n+1))`
-/

namespace A350529.P16447495069986377112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 (Int.tmod (n : ℤ) (A089321 (n + 1))).toNat

end

end A350529.P16447495069986377112

/-!
# A350530: Square array read by antidiagonals downwards: T(n,k) is the number of sequences of length n with terms in 0..k such that the (n-1)-st difference is zero, but no earlier iterated difference is zero, n, k >= 1.

The programs for A350530, there is no canonical definition to state claims against.
-/

/-! ## A350530.P10778974706570897960

`and(A233569(A008277(n+1)), A286180(n))`
-/

namespace A350530.P10778974706570897960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233569 (A008277 (n + 1)).toNat) (A286180 n)

end

end A350530.P10778974706570897960

/-! ## A350530.P5827127737562627492

`and(A102705(A353436(n)), A353434(n))`
-/

namespace A350530.P5827127737562627492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102705 (A353436 n).toNat) (A353434 n)

end

end A350530.P5827127737562627492

/-! ## A350530.P5706006830319783536

`and(A000203(A155971(n)), A052553(n))`
-/

namespace A350530.P5706006830319783536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A155971 n).toNat) (A052553 n)

end

end A350530.P5706006830319783536

/-! ## A350530.P1453604380094693102

`and(A000203(A155971(n)), A290054(n))`
-/

namespace A350530.P1453604380094693102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A155971 n).toNat) (A290054 n)

end

end A350530.P1453604380094693102

/-! ## A350530.P6154004005052252857

`A242464(n)%A001222(A302571(n+1))`
-/

namespace A350530.P6154004005052252857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242464 n) (A001222 (A302571 (n + 1)).toNat)

end

end A350530.P6154004005052252857

/-!
# A350531: Triangle read by rows: T(n,k) is the number of labeled loop-threshold graphs on vertex set [n] with k components, for n >= 1 and 1 <= k <= n.

The programs for A350531, there is no canonical definition to state claims against.
-/

/-! ## A350531.P3266607603775031233

`A154921(comp[∑[n-1]])+char[∑[n-1]]`
-/

namespace A350531.P3266607603775031233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A350531.P3266607603775031233

/-!
# A350532: Triangle read by rows: T(n,k) is the number of degree-n polynomials over Z/2Z of the form f(x)^m for some m > 1 with exactly k nonzero terms; 1 <= k <= n + 1.

The programs for A350532, there is no canonical definition to state claims against.
-/

/-! ## A350532.P17038350072924966092

`A280749(A087508(n)*A119608(n+1))`
-/

namespace A350532.P17038350072924966092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280749 (A087508 n * A119608 (n + 1)).toNat

end

end A350532.P17038350072924966092

/-! ## A350532.P17799480061357903949

`and(A020701(n), A134451(A208353(n+1)))`
-/

namespace A350532.P17799480061357903949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020701 n) (A134451 (A208353 (n + 1)).toNat)

end

end A350532.P17799480061357903949

/-! ## A350532.P17490897525322186884

`and(A000045(n+10), A134451(A208353(n+1)))`
-/

namespace A350532.P17490897525322186884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (n + 10)) (A134451 (A208353 (n + 1)).toNat)

end

end A350532.P17490897525322186884

/-! ## A350532.P6536393874376227655

`floor(A020639(2*n+3)/2)%A141310(A060383(n+1))`
-/

namespace A350532.P6536393874376227655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A020639 (2 * n + 3) : ℚ) / 2⌋ (A141310 (A060383 (n + 1)).toNat)

end

end A350532.P6536393874376227655

/-! ## A350532.P5428078243321162762

`A195508(n+1)%A020639(A022380(n))`
-/

namespace A350532.P5428078243321162762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195508 (n + 1)) (A020639 (A022380 n).toNat)

end

end A350532.P5428078243321162762

/-!
# A350533: Happy Niven (or happy harshad) numbers.

The programs for A350533, there is no canonical definition to state claims against.
-/

/-! ## A350533.P2760054416574135048

`∩[A005349(n+1), A007770(n+1)]`
-/

namespace A350533.P2760054416574135048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350533.P2760054416574135048

/-! ## A350533.P13819554747865401363

`∩[A007770(n+1), A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A350533.P13819554747865401363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350533.P13819554747865401363

/-! ## A350533.P14675702349485934824

`∩[A007770(n+1), A113315(n+1)*A325454(n+1)]`
-/

namespace A350533.P14675702349485934824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350533.P14675702349485934824

/-! ## A350533.P16502849713429743279

`filter[A007770(n+1), A188641(#)]`
-/

namespace A350533.P16502849713429743279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A350533.P16502849713429743279

/-! ## A350533.P6940086565315114065

`∩[eq[0, A070635(n+1)]+1, A007770(n+1)]`
-/

namespace A350533.P6940086565315114065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A350533.P6940086565315114065

/-! ## A350533.P12715697195894924458

`∩[eq[1, A144261(n+1)]+1, A007770(n+1)]`
-/

namespace A350533.P12715697195894924458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A350533.P12715697195894924458

/-!
# A350534: Sum of the largest parts of the partitions of n into 3 parts whose largest part is equal to the product of the other two.

The programs for A350534, the canonical program `A350534.P1685177641505256515` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350534 has offset 0).

The definition of A350534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350534.P1685177641505256515

`A038548(n+1)+A060872(n+1)-A060866(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A350534

/-- `A038548(n+1)+A060872(n+1)-A060866(n+1)` -/
def P1685177641505256515.Spec : Prop :=
  ∀ n, P1685177641505256515.a n = A350534 n

theorem P1685177641505256515.correct : P1685177641505256515.Spec := by
  intro n
  simp only [A350534]

end A350534

/-! ## A350534.P13710402758988880762

`A089233(A005179(n+1))`
-/

namespace A350534.P13710402758988880762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (A005179 (n + 1)).toNat

end

end A350534.P13710402758988880762

namespace A350534

/-- `A089233(A005179(n+1))` -/
def P13710402758988880762.Spec : Prop :=
  ∀ n, P13710402758988880762.a n = A350534 n

end A350534

/-! ## A350534.P5484123969815655344

`A089233(sqrt(A130279(n+1)))`
-/

namespace A350534.P5484123969815655344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (SequenceMachineLib.roundAway (Real.sqrt (A130279 (n + 1) : ℝ))).toNat

end

end A350534.P5484123969815655344

namespace A350534

/-- `A089233(sqrt(A130279(n+1)))` -/
def P5484123969815655344.Spec : Prop :=
  ∀ n, P5484123969815655344.a n = A350534 n

end A350534

/-! ## A350534.P12253283980608891523

`A089233(A081532(∑[n+1]))`
-/

namespace A350534.P12253283980608891523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (A081532 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A350534.P12253283980608891523

namespace A350534

/-- `A089233(A081532(∑[n+1]))` -/
def P12253283980608891523.Spec : Prop :=
  ∀ n, P12253283980608891523.a n = A350534 n

end A350534

/-! ## A350534.P1371854817145698970

`∑{d}[A005179(n+1), A079275(#)]`
-/

namespace A350534.P1371854817145698970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A079275 d

end

end A350534.P1371854817145698970

namespace A350534

/-- `∑{d}[A005179(n+1), A079275(#)]` -/
def P1371854817145698970.Spec : Prop :=
  ∀ n, P1371854817145698970.a n = A350534 n

end A350534

/-!
# A350535: Integers that cannot be expressed as x + y + z + x*y*z for x,y,z >= 1.

The programs for A350535, there is no canonical definition to state claims against.
-/

/-! ## A350535.P13043089778210694537

`lt[n*A260803(n), n]`
-/

namespace A350535.P13043089778210694537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A260803 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350535.P13043089778210694537

/-! ## A350535.P7024252935688547913

`lt[A260803(n+1), 1]+1`
-/

namespace A350535.P7024252935688547913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A350535.P7024252935688547913

/-! ## A350535.P12183840560872111923

`eq[A071693(n), A115384(n)]`
-/

namespace A350535.P12183840560872111923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350535.P12183840560872111923

/-! ## A350535.P4693931208052946193

`eq[A000007(n), A260803(n)]`
-/

namespace A350535.P4693931208052946193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350535.P4693931208052946193

/-! ## A350535.P16680256934280396367

`eq[A000038(n), A260803(n)]`
-/

namespace A350535.P16680256934280396367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350535.P16680256934280396367

/-! ## A350535.P16801920272799749473

`eq[A014025(n), A260803(n)]`
-/

namespace A350535.P16801920272799749473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350535.P16801920272799749473

/-! ## A350535.P16429879471421375507

`eq[A014041(n), A260803(n)]`
-/

namespace A350535.P16429879471421375507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350535.P16429879471421375507

/-! ## A350535.P16459446033332871385

`eq[A014189(n), A260803(n)]`
-/

namespace A350535.P16459446033332871385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350535.P16459446033332871385

/-! ## A350535.P6864938541595117415

`eq[A015241(n), A260803(n)]`
-/

namespace A350535.P6864938541595117415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015241 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350535.P6864938541595117415

/-! ## A350535.P18242046473895183044

`eq[A063667(n), A260803(n)]`
-/

namespace A350535.P18242046473895183044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350535.P18242046473895183044

/-!
# A350536: a(n) is the smallest proper multiple of 2n+1 which contains only odd digits, or -1 if no such multiple exists.

The programs for A350536, there is no canonical definition to state claims against.
-/

/-! ## A350536.P18299794536913997144

`Δ[n²]*A350537(n)`
-/

namespace A350536.P18299794536913997144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A350537 n

end

end A350536.P18299794536913997144

/-! ## A350536.P6770729354399112331

`A000027(2*n+1)*A000027(A350537(n))`
-/

namespace A350536.P6770729354399112331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 1) * A000027 (A350537 n).toNat

end

end A350536.P6770729354399112331

/-! ## A350536.P17199729824383494531

`A005408(n)*A028310(A350537(n))`
-/

namespace A350536.P17199729824383494531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A028310 (A350537 n).toNat

end

end A350536.P17199729824383494531

/-! ## A350536.P13327493420793371001

`A217578(Δ[n²])`
-/

namespace A350536.P13327493420793371001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350536.P13327493420793371001

/-! ## A350536.P7876589571133590370

`Δ[n²]*A217618(2*n+1)`
-/

namespace A350536.P7876589571133590370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A217618 (2 * n + 1)

end

end A350536.P7876589571133590370

/-! ## A350536.P1916644154503773989

`lcm(2*n+1, A217578(2*n+1))`
-/

namespace A350536.P1916644154503773989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A217578 (2 * n + 1))

end

end A350536.P1916644154503773989

/-! ## A350536.P16766689036600077874

`or(1, A217578(A005408(n)))`
-/

namespace A350536.P16766689036600077874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217578 (A005408 n).toNat)

end

end A350536.P16766689036600077874

/-! ## A350536.P8809454877686235009

`A217578(A005408(n))%A017344(n)`
-/

namespace A350536.P8809454877686235009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217578 (A005408 n).toNat) (A017344 n)

end

end A350536.P8809454877686235009

/-! ## A350536.P2859085984403384017

`filter[A217578(2*n+1), A035263(#)]`
-/

namespace A350536.P2859085984403384017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A350536.P2859085984403384017

/-! ## A350536.P4296397979589923595

`filter[A217578(2*n+1), A039982(#)]`
-/

namespace A350536.P4296397979589923595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A350536.P4296397979589923595

/-! ## A350536.P13047471492449060665

`filter[A217578(2*n+1), A093719(#)]`
-/

namespace A350536.P13047471492449060665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A350536.P13047471492449060665

/-! ## A350536.P15626498308344086212

`filter[A217578(2*n+1), A098725(#)]`
-/

namespace A350536.P15626498308344086212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A350536.P15626498308344086212

/-! ## A350536.P3595516738885398729

`filter[A217578(2*n+1), A105234(#)]`
-/

namespace A350536.P3595516738885398729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A350536.P3595516738885398729

/-! ## A350536.P9067682452379232255

`filter[A217578(2*n+1), A115971(#)]`
-/

namespace A350536.P9067682452379232255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A350536.P9067682452379232255

/-! ## A350536.P17600501984230042743

`filter[A217578(2*n+1), A127254(#)]`
-/

namespace A350536.P17600501984230042743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A350536.P17600501984230042743

/-! ## A350536.P7667649635817399896

`filter[A217578(2*n+1), A152822(#)]`
-/

namespace A350536.P7667649635817399896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A350536.P7667649635817399896

/-! ## A350536.P11444336371662501652

`filter[A217578(2*n+1), A166486(#)]`
-/

namespace A350536.P11444336371662501652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A350536.P11444336371662501652

/-! ## A350536.P3615184452923356094

`filter[A217578(2*n+1), A168185(#)]`
-/

namespace A350536.P3615184452923356094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A350536.P3615184452923356094

/-! ## A350536.P4226937623372384072

`filter[A217578(2*n+1), A254651(#)]`
-/

namespace A350536.P4226937623372384072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A350536.P4226937623372384072

/-! ## A350536.P9936704712135571571

`A327539((2*n+1)*A350537(n))`
-/

namespace A350536.P9936704712135571571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 ((2 * n + 1 : ℤ) * A350537 n).toNat

end

end A350536.P9936704712135571571

/-!
# A350537: Smallest number m > 1 such that (2n+1)*m = A350536(n) contains only odd digits.

The programs for A350537, there is no canonical definition to state claims against.
-/

/-! ## A350537.P7968136596968632277

`A350536(n)/(2*n+1)`
-/

namespace A350537.P7968136596968632277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350536 n : ℚ) / (2 * n + 1 : ℚ)

end

end A350537.P7968136596968632277

/-! ## A350537.P11872896021122567151

`floor(A350536(n)/A005408(n))`
-/

namespace A350537.P11872896021122567151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350536 n : ℚ) / (A005408 n : ℚ)⌋

end

end A350537.P11872896021122567151

/-! ## A350537.P1158954931624501103

`A028310(A350536(n)/A005408(n))`
-/

namespace A350537.P1158954931624501103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A350536 n : ℚ) / (A005408 n : ℚ))).toNat

end

end A350537.P1158954931624501103

/-! ## A350537.P12285752644051575600

`A217618(Δ[n²])`
-/

namespace A350537.P12285752644051575600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350537.P12285752644051575600

/-! ## A350537.P10376580627872310838

`A217578(2*n+1)/Δ[n²]`
-/

namespace A350537.P10376580627872310838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217578 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A350537.P10376580627872310838

/-! ## A350537.P6340398636825365881

`or(1, A217618(A005408(n)))`
-/

namespace A350537.P6340398636825365881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217618 (A005408 n).toNat)

end

end A350537.P6340398636825365881

/-! ## A350537.P2593757180384577196

`filter[A217618(2*n+1), A000035(#)]`
-/

namespace A350537.P2593757180384577196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A350537.P2593757180384577196

/-! ## A350537.P1861548356910873181

`filter[A217618(2*n+1), A035263(#)]`
-/

namespace A350537.P1861548356910873181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A350537.P1861548356910873181

/-! ## A350537.P2644502628322302000

`filter[A217618(2*n+1), A039982(#)]`
-/

namespace A350537.P2644502628322302000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A350537.P2644502628322302000

/-! ## A350537.P12343717240837604568

`filter[A217618(2*n+1), A093719(#)]`
-/

namespace A350537.P12343717240837604568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A350537.P12343717240837604568

/-! ## A350537.P18162647142703493572

`filter[A217618(2*n+1), A097325(#)]`
-/

namespace A350537.P18162647142703493572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A350537.P18162647142703493572

/-! ## A350537.P10678774985052228885

`filter[A217618(2*n+1), A098725(#)]`
-/

namespace A350537.P10678774985052228885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A350537.P10678774985052228885

/-! ## A350537.P3358563791129897898

`filter[A217618(2*n+1), A102863(#)]`
-/

namespace A350537.P3358563791129897898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A350537.P3358563791129897898

/-! ## A350537.P4277528439641902256

`filter[A217618(2*n+1), A104106(#)]`
-/

namespace A350537.P4277528439641902256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A350537.P4277528439641902256

/-! ## A350537.P2708664746637909063

`filter[A217618(2*n+1), A105234(#)]`
-/

namespace A350537.P2708664746637909063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A350537.P2708664746637909063

/-! ## A350537.P13952654443611683626

`filter[A217618(2*n+1), A115971(#)]`
-/

namespace A350537.P13952654443611683626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A350537.P13952654443611683626

/-! ## A350537.P9940326009920624172

`filter[A217618(2*n+1), A118102(#)]`
-/

namespace A350537.P9940326009920624172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A350537.P9940326009920624172

/-! ## A350537.P13845927076440036829

`A067044(2*n+1)/A061807(2*n+1)*A217578(2*n+1)`
-/

namespace A350537.P13845927076440036829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067044 (2 * n + 1) : ℚ) / (A061807 (2 * n + 1) : ℚ) * (A217578 (2 * n + 1) : ℚ)

end

end A350537.P13845927076440036829

/-! ## A350537.P12361919587681159304

`filter[A217618(2*n+1), A102609(#)]`
-/

namespace A350537.P12361919587681159304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A350537.P12361919587681159304

/-! ## A350537.P12119564505728136237

`A008592(A217578(2*n+1))/A008592(2*n+1)`
-/

namespace A350537.P12119564505728136237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (A217578 (2 * n + 1)).toNat : ℚ) / (A008592 (2 * n + 1) : ℚ)

end

end A350537.P12119564505728136237

/-!
# A350538: a(n) is the smallest proper multiple of n which contains only even digits.

The programs for A350538, there is no canonical definition to state claims against.
-/

/-! ## A350538.P9614723660410360327

`A061807(gcd(A193356(n+1), A217578(n+1)))`
-/

namespace A350538.P9614723660410360327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (Int.gcd (A193356 (n + 1)) (A217578 (n + 1)))

end

end A350538.P9614723660410360327

/-! ## A350538.P13013459545584598394

`(n+1)*A217618(10*(n+1))`
-/

namespace A350538.P13013459545584598394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A217618 (10 * (n + 1))

end

end A350538.P13013459545584598394

/-! ## A350538.P15312679339622096425

`A217578(A008592(n+1))/10`
-/

namespace A350538.P15312679339622096425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217578 (A008592 (n + 1)).toNat : ℚ) / 10

end

end A350538.P15312679339622096425

/-! ## A350538.P18112787458058822521

`(n+1)*A350697(n+1)`
-/

namespace A350538.P18112787458058822521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A350697 (n + 1)

end

end A350538.P18112787458058822521

/-! ## A350538.P198510135538298162

`A028310(A350697(n+1)/(ratio[n+1]-1))`
-/

namespace A350538.P198510135538298162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A350697 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1))).toNat

end

end A350538.P198510135538298162

/-! ## A350538.P16247034235665977494

`A061807(A350697(n+1)/(ratio[n+1]-1))`
-/

namespace A350538.P16247034235665977494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (SequenceMachineLib.roundAway ((A350697 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1))).toNat

end

end A350538.P16247034235665977494

/-!
# A350541: Twin primes x, represented by their average, such that x is the first and x+18 the last of three successive twins.

The programs for A350541, there is no canonical definition to state claims against.
-/

/-! ## A350541.P2588390191319021408

`∪[A252862(n+1), A253627(n+1)]+1`
-/

namespace A350541.P2588390191319021408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A350541.P2588390191319021408

/-! ## A350541.P9534670088863926734

`A000203(∪[A252862(n+1), A253627(n+1)])`
-/

namespace A350541.P9534670088863926734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253627 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A350541.P9534670088863926734

/-!
# A350545: a(n) is the least k such that the continued fraction for sqrt(k) has period prime(n).

The programs for A350545, there is no canonical definition to state claims against.
-/

/-! ## A350545.P8902794474966784042

`A013646(p?[xor(1, n)+1])`
-/

namespace A350545.P8902794474966784042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A350545.P8902794474966784042

/-! ## A350545.P15904801153287405210

`A013646(p?[gcd(1-n, floor(n/2))])`
-/

namespace A350545.P15904801153287405210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A350545.P15904801153287405210

/-! ## A350545.P12828535673906974890

`A013646(or(p?[round(8*n/7)]-2, n%2)+2)`
-/

namespace A350545.P12828535673906974890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2) ((n % 2 : ℕ) : ℤ) + 2).toNat

end

end A350545.P12828535673906974890

/-! ## A350545.P10874821302655004019

`A013646(A051599(∑[n]))`
-/

namespace A350545.P10874821302655004019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (A051599 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A350545.P10874821302655004019

/-! ## A350545.P7333538402349806057

`A013646(Δ[A007504(n)])`
-/

namespace A350545.P7333538402349806057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (n + 1) - f1 n).toNat

end

end A350545.P7333538402349806057

/-!
# A350546: Numbers k such that the period of the continued fraction for sqrt(k) is a prime.

The programs for A350546, there is no canonical definition to state claims against.
-/

/-! ## A350546.P9817436401405514353

`eq[1, ∑{e}[A003285(A028310(n)), #]]`
-/

namespace A350546.P9817436401405514353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350546.P9817436401405514353

/-! ## A350546.P11519264379599279454

`eq[1, A003415(A003285(n+1))]+1`
-/

namespace A350546.P11519264379599279454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350546.P11519264379599279454

/-! ## A350546.P10245330431867397990

`eq[2, A000005(A097853(n+1))]+1`
-/

namespace A350546.P10245330431867397990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A097853 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350546.P10245330431867397990

/-! ## A350546.P6195288434956438719

`eq[1, A001222(A097853(n+2))]+2`
-/

namespace A350546.P6195288434956438719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A097853 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A350546.P6195288434956438719

/-! ## A350546.P11834560132595424150

`eq[A000038(n)+1, A328847(A003285(n+1))]+1`
-/

namespace A350546.P11834560132595424150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 (A003285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350546.P11834560132595424150

/-! ## A350546.P13890061519090823744

`eq[A057428(n)+2, A328847(A003285(n+1))]+1`
-/

namespace A350546.P13890061519090823744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 (A003285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350546.P13890061519090823744

/-!
# A350548: Irregular triangle T(n,k) read by rows in which row n lists the iterates of the A350515 map from n to 0.

The programs for A350548, there is no canonical definition to state claims against.
-/

/-! ## A350548.P5111974685567271501

`floor(A350279(n+1)/2)`
-/

namespace A350548.P5111974685567271501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350279 (n + 1) : ℚ) / 2⌋

end

end A350548.P5111974685567271501

/-! ## A350548.P15257434055937663381

`(A350279(C(n+1, n))-1)/2`
-/

namespace A350548.P15257434055937663381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350279 (Nat.choose (n + 1) n) - 1 : ℚ) / 2

end

end A350548.P15257434055937663381

/-! ## A350548.P8983738145727155348

`(A350279(-xor(n, -1))-1)/2`
-/

namespace A350548.P8983738145727155348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350279 (-Int.xor (n : ℤ) (-1)).toNat - 1 : ℚ) / 2

end

end A350548.P8983738145727155348

/-! ## A350548.P16048350874533415302

`(A350279(Δ[n²]-n)-1)/2`
-/

namespace A350548.P16048350874533415302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350279 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 : ℚ) / 2

end

end A350548.P16048350874533415302

/-! ## A350548.P2668970906508090530

`A004524(A350279(n+1))`
-/

namespace A350548.P2668970906508090530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A350279 (n + 1)).toNat

end

end A350548.P2668970906508090530

/-! ## A350548.P14737497188106976157

`A140106(A350279(n+1)+1)`
-/

namespace A350548.P14737497188106976157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A350279 (n + 1) + 1).toNat

end

end A350548.P14737497188106976157

/-! ## A350548.P17064384903689472250

`A001281(A350279(n+1)-1)`
-/

namespace A350548.P17064384903689472250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A350279 (n + 1) - 1).toNat

end

end A350548.P17064384903689472250

/-! ## A350548.P11613795669788748186

`A004525(A350279(n+1)-1)`
-/

namespace A350548.P11613795669788748186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A350279 (n + 1) - 1).toNat

end

end A350548.P11613795669788748186

/-! ## A350548.P8945800186933119153

`A006370(A350279(n+1)-1)`
-/

namespace A350548.P8945800186933119153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A350279 (n + 1) - 1).toNat

end

end A350548.P8945800186933119153

/-! ## A350548.P13845641173580542722

`A014682(A350279(n+1)-1)`
-/

namespace A350548.P13845641173580542722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A350279 (n + 1) - 1).toNat

end

end A350548.P13845641173580542722

/-!
# A350551: Convolution of Jacobsthal numbers and Pell numbers.

The programs for A350551, the canonical program `A350551.P17714853893457588206` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350551 has offset 0).

The definition of A350551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350551.P4596816501574390225

`ogf(x^2/(1-3x-x^2+5x^3+2x^4))`
-/

namespace A350551.P4596816501574390225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, -1, 5, 2] n

end

end A350551.P4596816501574390225

namespace A350551

/-- `ogf(x^2/(1-3x-x^2+5x^3+2x^4))` -/
def P4596816501574390225.Spec : Prop :=
  ∀ n, P4596816501574390225.a n = A350551 n

end A350551

/-! ## A350551.P17714853893457588206

`A094706(n-1)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A350551

/-- `A094706(n-1)-a(n-1)` -/
def P17714853893457588206.Spec : Prop :=
  ∀ n, P17714853893457588206.a n = A350551 n

theorem P17714853893457588206.correct : P17714853893457588206.Spec := by
  intro n
  simp only [A350551]

end A350551

/-! ## A350551.P9314136490562826242

`∑[A000129(n)-round(2^n/3)]`
-/

namespace A350551.P9314136490562826242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350551.P9314136490562826242

namespace A350551

/-- `∑[A000129(n)-round(2^n/3)]` -/
def P9314136490562826242.Spec : Prop :=
  ∀ n, P9314136490562826242.a n = A350551 n

end A350551

/-! ## A350551.P13986575567450794847

`∑[A116560(6*n)-round(2^n/3)]`
-/

namespace A350551.P13986575567450794847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (6 * n) - SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350551.P13986575567450794847

namespace A350551

/-- `∑[A116560(6*n)-round(2^n/3)]` -/
def P13986575567450794847.Spec : Prop :=
  ∀ n, P13986575567450794847.a n = A350551 n

end A350551

/-! ## A350551.P7636881029321674583

`A024537(n)-A005578(n+1)`
-/

namespace A350551.P7636881029321674583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n - A005578 (n + 1)

end

end A350551.P7636881029321674583

namespace A350551

/-- `A024537(n)-A005578(n+1)` -/
def P7636881029321674583.Spec : Prop :=
  ∀ n, P7636881029321674583.a n = A350551 n

end A350551

/-! ## A350551.P10449252959000349896

`A097076(n+1)-A001045(n+1)`
-/

namespace A350551.P10449252959000349896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) - A001045 (n + 1)

end

end A350551.P10449252959000349896

namespace A350551

/-- `A097076(n+1)-A001045(n+1)` -/
def P10449252959000349896.Spec : Prop :=
  ∀ n, P10449252959000349896.a n = A350551 n

end A350551

/-! ## A350551.P5005594706305601998

`A097076(n+1)-A167167(n+1)`
-/

namespace A350551.P5005594706305601998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) - A167167 (n + 1)

end

end A350551.P5005594706305601998

namespace A350551

/-- `A097076(n+1)-A167167(n+1)` -/
def P5005594706305601998.Spec : Prop :=
  ∀ n, P5005594706305601998.a n = A350551 n

end A350551

/-! ## A350551.P1845222646876822659

`A000129(n)+A097075(n)-A001045(n+1)`
-/

namespace A350551.P1845222646876822659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A097075 n - A001045 (n + 1))

end

end A350551.P1845222646876822659

namespace A350551

/-- `A000129(n)+A097075(n)-A001045(n+1)` -/
def P1845222646876822659.Spec : Prop :=
  ∀ n, P1845222646876822659.a n = A350551 n

end A350551

/-! ## A350551.P7212855151210797489

`A097075(n+1)-A001045(n)-A001045(n)`
-/

namespace A350551.P7212855151210797489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (n + 1) - A001045 n - A001045 n

end

end A350551.P7212855151210797489

namespace A350551

/-- `A097075(n+1)-A001045(n)-A001045(n)` -/
def P7212855151210797489.Spec : Prop :=
  ∀ n, P7212855151210797489.a n = A350551 n

end A350551

/-!
# A350552: Numbers k for which A000120(k) = A000120(k'), where k' is arithmetic derivative of k (A003415).

The programs for A350552, there is no canonical definition to state claims against.
-/

/-! ## A350552.P9109684339261141469

`eq[A000120(n), A000120(A003415(n))]`
-/

namespace A350552.P9109684339261141469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350552.P9109684339261141469

/-! ## A350552.P16008619834097002004

`eq[A001316(n), A001316(A003415(n))]`
-/

namespace A350552.P16008619834097002004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350552.P16008619834097002004

/-! ## A350552.P676892526392023242

`eq[A038573(A003415(n)), A038573(n)]`
-/

namespace A350552.P676892526392023242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350552.P676892526392023242

/-! ## A350552.P17484084501098119895

`eq[A048883(A003415(n)), A048883(n)]`
-/

namespace A350552.P17484084501098119895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350552.P17484084501098119895

/-! ## A350552.P4797269011680963662

`eq[A057334(A003415(n)), A057334(n)]`
-/

namespace A350552.P4797269011680963662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350552.P4797269011680963662

/-! ## A350552.P15877062782562167903

`eq[A102376(A003415(n)), A102376(n)]`
-/

namespace A350552.P15877062782562167903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350552.P15877062782562167903

/-! ## A350552.P1846974889710737766

`eq[A000120(n), A000120(A129283(n)-n)]`
-/

namespace A350552.P1846974889710737766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A129283 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350552.P1846974889710737766

/-!
# A350553: a(n) is the smallest number k for which A000120(k) = A000120(k') = n, or -1 if no such k exists, where k' is the arithmetic derivative of k (A003415).

The programs for A350553, there is no canonical definition to state claims against.
-/

/-! ## A350553.P15388420095776234770

`A242210(A242424(3^n))`
-/

namespace A350553.P15388420095776234770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242210 (A242424 (3 ^ n)).toNat

end

end A350553.P15388420095776234770

/-! ## A350553.P5871129329959168084

`record[A326757(∑[A320734(n)])]`
-/

namespace A350553.P5871129329959168084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320734 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326757 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350553.P5871129329959168084

/-!
# A350555: Numerators of Conway's PIGAME.

The programs for A350555, there is no canonical definition to state claims against.
-/

/-! ## A350555.P11480286099534668078

`A395539(A350556(n+1))`
-/

namespace A350555.P11480286099534668078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395539 (A350556 (n + 1)).toNat

end

end A350555.P11480286099534668078

/-!
# A350557: Triangle T(n,k) read by rows with T(n,0) = (2*n)! / (2^n * n!) for n >= 0 and T(n,k) = (Sum_{i=k..n} binomial(i-1,k-1) * 2^i * i! / (2*i)!) * (2*n)! / (2^n * n!) for 0 < k <= n.

The programs for A350557, there is no canonical definition to state claims against.
-/

/-! ## A350557.P8084201342113870076

`A321627(n)+A014083(A173271(n))`
-/

namespace A350557.P8084201342113870076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321627 n + A014083 (A173271 n).toNat

end

end A350557.P8084201342113870076

/-!
# A350558: a(n) = (n-1)!^(2n).

The programs for A350558, the canonical program `A350558.P4373866267256184305` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350558 has offset 1).

The definition of A350558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^(2*(n+1))` (program `A350558.P4373866267256184305`, by `A350558.P4373866267256184305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350558.P4373866267256184305

`n!^(2*(n+1))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A350558

/-- `n!^(2*(n+1))` -/
def P4373866267256184305.Spec : Prop :=
  ∀ n, (P4373866267256184305.a n : ℤ) = A350558 (n + 1)

theorem P4373866267256184305.correct : P4373866267256184305.Spec := by
  intro n
  simp only [A350558, Nat.add_sub_cancel]

end A350558

/-! ## A350558.P3852676124645273364

`(n!^(n+1))²`
-/

namespace A350558.P3852676124645273364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ (n + 1)) ^ 2

end

end A350558.P3852676124645273364

namespace A350558

/-- `(n!^(n+1))²` -/
def P3852676124645273364.Spec : Prop :=
  ∀ n, (P3852676124645273364.a n : ℤ) = A350558 (n + 1)

theorem P3852676124645273364.correct : P3852676124645273364.Spec := by
  intro n
  simp only [A350558, Nat.add_sub_cancel, A350558.P3852676124645273364.a, A350558.P4373866267256184305.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A350558

/-! ## A350558.P618909745925050019

`(n!^n*n!)²`
-/

namespace A350558.P618909745925050019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ n * Nat.factorial n) ^ 2

end

end A350558.P618909745925050019

namespace A350558

/-- `(n!^n*n!)²` -/
def P618909745925050019.Spec : Prop :=
  ∀ n, (P618909745925050019.a n : ℤ) = A350558 (n + 1)

theorem P618909745925050019.correct : P618909745925050019.Spec := by
  intro n
  simp only [A350558, Nat.add_sub_cancel, A350558.P618909745925050019.a, A350558.P4373866267256184305.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A350558

/-! ## A350558.P9440746834256204054

`(-n!)^comp[or(n, ceil(acot(n)))]`
-/

namespace A350558.P9440746834256204054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌈SequenceMachineLib.acot (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.factorial n : ℤ)) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A350558.P9440746834256204054

namespace A350558

/-- `(-n!)^comp[or(n, ceil(acot(n)))]` -/
def P9440746834256204054.Spec : Prop :=
  ∀ n, P9440746834256204054.a n = A350558 (n + 1)

end A350558

/-!
# A350559: Numerators of the fractional, multiplicative Van Eck Sequence f(n): for n >= 2, if there exists an m < n such that f(m) = f(n), take the largest such m. If f(n)=1, set f(n+1) = 1/(n-m); otherwise, if f(n) != 1, set f(n+1) = f(n)+f(m)(n-m). If no m exists such that a(m)= f(n), then set f(n+1)=1. Start with f(1)=1 and f(2)=0. a(n) = numerator(f(n)).

The programs for A350559, there is no canonical definition to state claims against.
-/

/-! ## A350559.P5369925668028051204

`gcd(A001222(A054432(n+1)), A055254(n))`
-/

namespace A350559.P5369925668028051204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A054432 (n + 1)).toNat) (A055254 n)

end

end A350559.P5369925668028051204

/-!
# A350560: Denominators of the fractional, multiplicative Van Eck Sequence f(n): for n >= 2, if there exists an m < n such that f(m) = f(n), take the largest such m. If f(n)=1, set f(n+1) = 1/(n-m); otherwise, if f(n) != 1, set f(n+1) = f(n)+f(m)*(n-m). If no m exists such that f(m) = f(n), then set f(n+1)=1. Start with f(1)=1 and f(2)=0. a(n) = denominator(f(n)).

The programs for A350560, there is no canonical definition to state claims against.
-/

/-! ## A350560.P17507449489267609363

`A006530(∏{d}[A350228(n+1), #²])%4`
-/

namespace A350560.P17507449489267609363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2)) 4

end

end A350560.P17507449489267609363

/-! ## A350560.P10063697933996790921

`A000203(∏{d}[A350228(n+1), #²])%5`
-/

namespace A350560.P10063697933996790921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2)) 5

end

end A350560.P10063697933996790921

/-! ## A350560.P11976147407800337876

`A014963(A350228(n+1)^A350559(n+1))`
-/

namespace A350560.P11976147407800337876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A350228 (n + 1) : ℚ) ^ (A350559 (n + 1) : ℤ))).toNat

end

end A350560.P11976147407800337876

/-! ## A350560.P164394203142064482

`gcd(A000037(n+1), A000041(A104704(2*n+3)))`
-/

namespace A350560.P164394203142064482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000037 (n + 1)) (A000041 (A104704 (2 * n + 3)).toNat)

end

end A350560.P164394203142064482

/-! ## A350560.P2332866876365522406

`∑{e}[A241504(A163493(n+1))+1, #]`
-/

namespace A350560.P2332866876365522406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241504 (A163493 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A350560.P2332866876365522406

/-!
# A350564: Areas of integer-sided triangles with hypotenuse A084645(n).

The programs for A350564, there is no canonical definition to state claims against.
-/

/-! ## A350564.P16683198956713856366

`A350057(n+1)/2*A350058(n+1)`
-/

namespace A350564.P16683198956713856366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350057 (n + 1) : ℚ) / 2 * (A350058 (n + 1) : ℚ)

end

end A350564.P16683198956713856366

/-! ## A350564.P9451229164979085466

`A001281(A350057(n+1)*A350058(n+1))`
-/

namespace A350564.P9451229164979085466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A350057 (n + 1) * A350058 (n + 1)).toNat

end

end A350564.P9451229164979085466

/-! ## A350564.P18028255473082155181

`A004524(A350057(n+1)*A350058(n+1))`
-/

namespace A350564.P18028255473082155181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A350057 (n + 1) * A350058 (n + 1)).toNat

end

end A350564.P18028255473082155181

/-! ## A350564.P1602105957336824720

`A004525(A350057(n+1)*A350058(n+1))`
-/

namespace A350564.P1602105957336824720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A350057 (n + 1) * A350058 (n + 1)).toNat

end

end A350564.P1602105957336824720

/-! ## A350564.P17113770422558010065

`A004526(A350057(n+1)*A350058(n+1))`
-/

namespace A350564.P17113770422558010065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A350057 (n + 1) * A350058 (n + 1)).toNat

end

end A350564.P17113770422558010065

/-! ## A350564.P18365998574132543046

`A014682(A350057(n+1)*A350058(n+1))`
-/

namespace A350564.P18365998574132543046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A350057 (n + 1) * A350058 (n + 1)).toNat

end

end A350564.P18365998574132543046

/-! ## A350564.P13438747155207057201

`A026741(A350057(n+1)*A350058(n+1))`
-/

namespace A350564.P13438747155207057201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A350057 (n + 1) * A350058 (n + 1)).toNat

end

end A350564.P13438747155207057201

/-! ## A350564.P1618141281457882641

`A029578(A350057(n+1)*A350058(n+1))`
-/

namespace A350564.P1618141281457882641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A350057 (n + 1) * A350058 (n + 1)).toNat

end

end A350564.P1618141281457882641

/-! ## A350564.P2885637119067269755

`A032742(A350057(n+1)*A350058(n+1))`
-/

namespace A350564.P2885637119067269755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A350057 (n + 1) * A350058 (n + 1)).toNat

end

end A350564.P2885637119067269755

/-! ## A350564.P970603917940174157

`A110654(A350057(n+1)*A350058(n+1))`
-/

namespace A350564.P970603917940174157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A350057 (n + 1) * A350058 (n + 1)).toNat

end

end A350564.P970603917940174157

/-!
# A350567: a(n) is the maximum number of key comparisons required to perform an indirect sort of n records with distinct keys using a two-way merge (A. D. Woodall's mergesort).

The programs for A350567, there is no canonical definition to state claims against.
-/

/-! ## A350567.P4793171810274129459

`∑[ceil(log2(lcm(2, n+2)))]`
-/

namespace A350567.P4793171810274129459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.lcm 2 (n + 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350567.P4793171810274129459

/-! ## A350567.P14111531280838577973

`∑[ceil(log2(n+2))+n%2]`
-/

namespace A350567.P14111531280838577973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉ + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350567.P14111531280838577973

/-! ## A350567.P3427929544065178754

`∑[ceil(log2(n+2))+and(1, n)]`
-/

namespace A350567.P3427929544065178754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉ + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350567.P3427929544065178754

/-! ## A350567.P4225085223992356156

`ceil(∑[ceil(log2(n+2))]+n/2)`
-/

namespace A350567.P4225085223992356156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (n : ℚ) / 2⌉

end

end A350567.P4225085223992356156

/-! ## A350567.P9302879137555814997

`∑[floor(log2(n+1))+gcd(2, n+1)]`
-/

namespace A350567.P9302879137555814997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1) + Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350567.P9302879137555814997

/-!
# A350572: Base-10 version of A038102 interpreted as base 2.

The programs for A350572, there is no canonical definition to state claims against.
-/

/-! ## A350572.P6361466293167072785

`lt[A354102(A352268(n+4)), A118879(n+1)]`
-/

namespace A350572.P6361466293167072785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A352268 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350572.P6361466293167072785

/-! ## A350572.P5303820720804495651

`lt[A018609(n+1), A077326(A262357(n+1))]`
-/

namespace A350572.P5303820720804495651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077326 (A262357 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350572.P5303820720804495651

/-! ## A350572.P9737124454469489178

`lt[A079566(A271518(3*n)), A000040(n+1)]`
-/

namespace A350572.P9737124454469489178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079566 (A271518 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350572.P9737124454469489178

/-! ## A350572.P682207310733424647

`lt[A334720(A348941(n+5)), A355595(n+4)]`
-/

namespace A350572.P682207310733424647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334720 (A348941 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355595 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350572.P682207310733424647

/-! ## A350572.P6241116415611220866

`lt[A334720(A348941(n+5)), A187778(n+5)]`
-/

namespace A350572.P6241116415611220866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334720 (A348941 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350572.P6241116415611220866

/-!
# A350573: Base-10 version of A038103 interpreted as base 3.

The programs for A350573, there is no canonical definition to state claims against.
-/

/-! ## A350573.P16218387637048769416

`A028898(A038103(n+1))`
-/

namespace A350573.P16218387637048769416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A038103 (n + 1)).toNat

end

end A350573.P16218387637048769416

/-!
# A350574: Primes p such that p, asc(p), and desc(p) are all distinct primes (where asc(p) and desc(p) are the digits of p in ascending and descending order, respectively) and p is the minimum of all permutations of its digits with this property.

The programs for A350574, there is no canonical definition to state claims against.
-/

/-! ## A350574.P9798462949373909254

`∩[A086042(A060472(n+1)), A086402(n+1)]`
-/

namespace A350574.P9798462949373909254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086042 (A060472 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350574.P9798462949373909254

/-!
# A350575: Squarefree numbers k such that k + (k reversed) is also squarefree.

The programs for A350575, there is no canonical definition to state claims against.
-/

/-! ## A350575.P14021334627473096103

`eq[A087049(A056964(n)), A105570(n)]`
-/

namespace A350575.P14021334627473096103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350575.P14021334627473096103

/-! ## A350575.P6468096237949184644

`eq[A087049(2*n-A056965(n)), A105570(n)]`
-/

namespace A350575.P6468096237949184644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 ((2 * n : ℤ) - A056965 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350575.P6468096237949184644

/-! ## A350575.P3924330825270418723

`eq[2, A255326(A056964(n))+A255326(n)]`
-/

namespace A350575.P3924330825270418723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (A056964 n).toNat + A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350575.P3924330825270418723

/-! ## A350575.P13420191658998513913

`record[A071975(n+1)/A203025(A056964(n+1))]`
-/

namespace A350575.P13420191658998513913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071975 (n + 1) : ℚ) / (A203025 (A056964 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350575.P13420191658998513913

/-! ## A350575.P8636523005497733898

`record[A304328(n+1)/A203025(A056964(n+1))]`
-/

namespace A350575.P8636523005497733898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304328 (n + 1) : ℚ) / (A203025 (A056964 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350575.P8636523005497733898

/-!
# A350576: a(n) = n/A055874(n) - A055874(n).

The programs for A350576, there is no canonical definition to state claims against.
-/

/-! ## A350576.P17918877225205045011

`A350509(n+1)-A055874(n+1)`
-/

namespace A350576.P17918877225205045011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (n + 1) - A055874 (n + 1)

end

end A350576.P17918877225205045011

/-! ## A350576.P11771225552924112688

`(n+1)/A055874(n+1)-A055874(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350576.P11771225552924112688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055874 (n + 1) : ℚ) - (A055874 (n + 1) : ℚ)

end

end A350576.P11771225552924112688

/-! ## A350576.P2055890322678559732

`A350509(n+1)+1-A007978(n+1)`
-/

namespace A350576.P2055890322678559732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (n + 1) + (1 - A007978 (n + 1))

end

end A350576.P2055890322678559732

/-! ## A350576.P3931822840763894024

`n+2+A350509(n+1)-A346563(n+1)`
-/

namespace A350576.P3931822840763894024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + (A350509 (n + 1) - A346563 (n + 1))

end

end A350576.P3931822840763894024

/-! ## A350576.P16092153377383612687

`A020725(A350509(n+1))-A007978(n+1)`
-/

namespace A350576.P16092153377383612687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A350509 (n + 1)).toNat - A007978 (n + 1)

end

end A350576.P16092153377383612687

/-! ## A350576.P9015534447216045815

`A350509(n+1)-A000027(n+1)/A350509(n+1)`
-/

namespace A350576.P9015534447216045815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350509 (n + 1) : ℚ) - (A000027 (n + 1) : ℚ) / (A350509 (n + 1) : ℚ)

end

end A350576.P9015534447216045815

/-! ## A350576.P137312526020849865

`A350509(n+1)-A061395(A328166(n+1))`
-/

namespace A350576.P137312526020849865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (n + 1) - A061395 (A328166 (n + 1)).toNat

end

end A350576.P137312526020849865

/-! ## A350576.P2091264844479361963

`A350509(n+1)-A055881(A342768(n+1))`
-/

namespace A350576.P2091264844479361963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (n + 1) - A055881 (A342768 (n + 1)).toNat

end

end A350576.P2091264844479361963

/-! ## A350576.P9360084730415095333

`A350509(n+1)-A055881((n+1)²)`
-/

namespace A350576.P9360084730415095333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (n + 1) - A055881 ((n + 1) ^ 2)

end

end A350576.P9360084730415095333

/-!
# A350577: Prime numbers in A036991.

The programs for A350577, there is no canonical definition to state claims against.
-/

/-! ## A350577.P4052136889082763548

`p?[A036991(n+1)]`
-/

namespace A350577.P4052136889082763548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350577.P4052136889082763548

/-! ## A350577.P12286252191161640964

`record[A006530(A036991(n+3))]`
-/

namespace A350577.P12286252191161640964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036991 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350577.P12286252191161640964

/-! ## A350577.P12920034517783849957

`∩[A036991(n+1), A093515(n+1)]`
-/

namespace A350577.P12920034517783849957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350577.P12920034517783849957

/-! ## A350577.P4205340372710087748

`∩[A036991(n+1), A095074(n+1)]`
-/

namespace A350577.P4205340372710087748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350577.P4205340372710087748

/-! ## A350577.P7885309344730793856

`∩[A009087(n+1), A036991(n+1)]`
-/

namespace A350577.P7885309344730793856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350577.P7885309344730793856

/-! ## A350577.P15196094031216223898

`p?[∑[A367626(n+1)]]`
-/

namespace A350577.P15196094031216223898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350577.P15196094031216223898

/-! ## A350577.P3846478245448615807

`p?[floor(A036994(n+1)/2)]`
-/

namespace A350577.P3846478245448615807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036994 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350577.P3846478245448615807

/-! ## A350577.P18280784302425334533

`filter[A036991(n+2), A010051(#)]`
-/

namespace A350577.P18280784302425334533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A350577.P18280784302425334533

/-! ## A350577.P6844192802905227577

`filter[A036991(n+2), A302777(#)]`
-/

namespace A350577.P6844192802905227577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A350577.P6844192802905227577

/-! ## A350577.P13898943031768830102

`filter[A036991(n+2), A323153(#)]`
-/

namespace A350577.P13898943031768830102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A350577.P13898943031768830102

/-! ## A350577.P14347404108272566052

`filter[A036991(n+2), A353670(#)]`
-/

namespace A350577.P14347404108272566052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A350577.P14347404108272566052

/-! ## A350577.P11590230590654802470

`filter[A036991(n+2), A379969(#)]`
-/

namespace A350577.P11590230590654802470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A350577.P11590230590654802470

/-! ## A350577.P16361215175459907513

`filter[A036991(n+3), A323152(#)]`
-/

namespace A350577.P16361215175459907513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A350577.P16361215175459907513

/-! ## A350577.P8002300606765158768

`filter[A036991(n+3), A340371(#)]`
-/

namespace A350577.P8002300606765158768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A350577.P8002300606765158768

/-! ## A350577.P11961737920204939359

`filter[A036991(n+3), A355937(#)]`
-/

namespace A350577.P11961737920204939359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A350577.P11961737920204939359

/-! ## A350577.P14055431757230386359

`p?[A000265(A036994(n+2)-1)]`
-/

namespace A350577.P14055431757230386359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036994 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350577.P14055431757230386359

/-! ## A350577.P8162331753104565497

`∩[A000040(n+1), A036991(n+1)]`
-/

namespace A350577.P8162331753104565497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350577.P8162331753104565497

/-! ## A350577.P3130632281317651740

`∩[A000430(n+1), A036991(n+1)]`
-/

namespace A350577.P3130632281317651740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350577.P3130632281317651740

/-! ## A350577.P180945264863653986

`∩[A001751(n+1), A036991(n+1)]`
-/

namespace A350577.P180945264863653986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350577.P180945264863653986

/-! ## A350577.P11527781645353527958

`∩[A036991(n+1), A042987(n+1)]`
-/

namespace A350577.P11527781645353527958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350577.P11527781645353527958

/-!
# A350578: a(0) = 0; for n > 0, if a(n-1) - n >= 0 and a(n-1) - n has appeared the same or fewer times than a(n-1) + n, then a(n) = a(n-1) - n. Otherwise a(n) = a(n-1) + n.

The programs for A350578, there is no canonical definition to state claims against.
-/

/-! ## A350578.P17277528425031869663

`A005132(n%A350556(n+1)²)`
-/

namespace A350578.P17277528425031869663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (Int.tmod (n : ℤ) (A350556 (n + 1) ^ 2)).toNat

end

end A350578.P17277528425031869663

/-! ## A350578.P8533515789354016272

`A005132(n*A264048(A008327(n)))`
-/

namespace A350578.P8533515789354016272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ((n : ℤ) * A264048 (A008327 n).toNat).toNat

end

end A350578.P8533515789354016272

/-! ## A350578.P9778604523031259194

`A005132(n*A264048(A133687(n)))`
-/

namespace A350578.P9778604523031259194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ((n : ℤ) * A264048 (A133687 n).toNat).toNat

end

end A350578.P9778604523031259194

/-! ## A350578.P5178983809788771706

`A005132(n*A267866(A275784(n)))`
-/

namespace A350578.P5178983809788771706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ((n : ℤ) * A267866 (A275784 n).toNat).toNat

end

end A350578.P5178983809788771706

/-! ## A350578.P18058444025172864033

`C(A005132(n), A133687(A133687(n)))`
-/

namespace A350578.P18058444025172864033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005132 n).toNat (A133687 (A133687 n).toNat).toNat

end

end A350578.P18058444025172864033

/-!
# A350580: Number of n-celled polytans with holes.

The programs for A350580, there is no canonical definition to state claims against.
-/

/-! ## A350580.P5334337590236762171

`A220525(C(n, 5))-C(n, 5)`
-/

namespace A350580.P5334337590236762171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220525 (Nat.choose n 5) - (Nat.choose n 5 : ℤ)

end

end A350580.P5334337590236762171

/-! ## A350580.P16142203177737895585

`A280130(floor(13^(n/2))+8)`
-/

namespace A350580.P16142203177737895585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 (⌊(13 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ + 8).toNat

end

end A350580.P16142203177737895585

/-! ## A350580.P7994042116698002256

`A191918(A351344(n))`
-/

namespace A350580.P7994042116698002256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191918 (A351344 n).toNat

end

end A350580.P7994042116698002256

/-! ## A350580.P362580797721222635

`A239456(A038085(n+1))`
-/

namespace A350580.P362580797721222635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239456 (A038085 (n + 1)).toNat

end

end A350580.P362580797721222635

/-! ## A350580.P3105282988910113938

`A061358(A224293(n+1))`
-/

namespace A350580.P3105282988910113938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A224293 (n + 1)).toNat

end

end A350580.P3105282988910113938

/-!
# A350584: Triangle read by rows, T(n, k) = [x^k] ((2*x^3 - 3*x^2 - x + 1)/(1 - x)^(n + 2)), for n >= 1 and 0 <= k < n.

The programs for A350584, there is no canonical definition to state claims against.
-/

/-! ## A350584.P12776418270627839185

`A030237(n+1)+A009766(n)-A130020(n)`
-/

namespace A350584.P12776418270627839185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 (n + 1) + (A009766 n - A130020 n)

end

end A350584.P12776418270627839185

/-! ## A350584.P1259570962328687355

`A220104(A093905(n+1)²)`
-/

namespace A350584.P1259570962328687355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (A093905 (n + 1) ^ 2).toNat

end

end A350584.P1259570962328687355

/-! ## A350584.P10995681388640944390

`A086520(A245501(n)+A013614(n))`
-/

namespace A350584.P10995681388640944390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A245501 n + A013614 n).toNat

end

end A350584.P10995681388640944390

/-! ## A350584.P3142381737835567828

`A086520(2-(A245501(n)-A013614(n)))`
-/

namespace A350584.P3142381737835567828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (2 - (A245501 n - A013614 n)).toNat

end

end A350584.P3142381737835567828

/-! ## A350584.P380436607695935355

`A220104(A093905(n+1)^A238303(n))`
-/

namespace A350584.P380436607695935355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (SequenceMachineLib.roundAway ((A093905 (n + 1) : ℚ) ^ (A238303 n : ℤ))).toNat

end

end A350584.P380436607695935355

/-!
# A350585: a(n) is the number of distinct numbers of transversals that an orthogonal diagonal Latin square of order n can have.

The programs for A350585, there is no canonical definition to state claims against.
-/

/-! ## A350585.P1178506723223579407

`A133037(A272090(n+1))%A038597(n+1)`
-/

namespace A350585.P1178506723223579407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133037 (A272090 (n + 1)).toNat) (A038597 (n + 1))

end

end A350585.P1178506723223579407

/-! ## A350585.P2790726066861459122

`A008706(A324240(n+1))-A165211(2*(n+1))`
-/

namespace A350585.P2790726066861459122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A324240 (n + 1)).toNat - A165211 (2 * (n + 1))

end

end A350585.P2790726066861459122

/-!
# A350586: Numbers m with exactly 2 groups of order m, where one is abelian and the other is nonabelian.

The programs for A350586, there is no canonical definition to state claims against.
-/

/-! ## A350586.P12883344862550369624

`∩[A005117(n+1), A054395(n+1)]`
-/

namespace A350586.P12883344862550369624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P12883344862550369624

/-! ## A350586.P4717801421742191970

`filter[A054395(n+2), A008966(#)]`
-/

namespace A350586.P4717801421742191970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A350586.P4717801421742191970

/-! ## A350586.P5395619088178066089

`filter[A054395(n+2), A181183(#)]`
-/

namespace A350586.P5395619088178066089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A350586.P5395619088178066089

/-! ## A350586.P8461856403483979971

`filter[A054395(n+2), A295316(#)]`
-/

namespace A350586.P8461856403483979971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A350586.P8461856403483979971

/-! ## A350586.P8114060149750978726

`filter[A054395(n+2), A323154(#)]`
-/

namespace A350586.P8114060149750978726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A350586.P8114060149750978726

/-! ## A350586.P7173120309804901853

`filter[A054395(n+2), A353519(#)]`
-/

namespace A350586.P7173120309804901853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A350586.P7173120309804901853

/-! ## A350586.P18386708750865136280

`filter[A054395(n+2), A353559(#)]`
-/

namespace A350586.P18386708750865136280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A350586.P18386708750865136280

/-! ## A350586.P11353707155279279500

`filter[A054395(n+1), A354353(#)]`
-/

namespace A350586.P11353707155279279500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A350586.P11353707155279279500

/-! ## A350586.P8445684220093501639

`filter[A054395(n+1), A354819(#)]`
-/

namespace A350586.P8445684220093501639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A350586.P8445684220093501639

/-! ## A350586.P17466139183843066473

`filter[A054395(n+1), A359473(#)]`
-/

namespace A350586.P17466139183843066473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A350586.P17466139183843066473

/-! ## A350586.P6509032747482356773

`∩[A054395(n+1), A068919(n+1)]`
-/

namespace A350586.P6509032747482356773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P6509032747482356773

/-! ## A350586.P16960456964867346840

`∩[A054395(n+1), A120944(n+1)]`
-/

namespace A350586.P16960456964867346840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P16960456964867346840

/-! ## A350586.P6094511061343276375

`∩[A000469(n+1), A054395(n+1)]`
-/

namespace A350586.P6094511061343276375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P6094511061343276375

/-! ## A350586.P13138503423290702965

`∩[A054395(n+1), A182853(n+1)]`
-/

namespace A350586.P13138503423290702965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P13138503423290702965

/-! ## A350586.P13690291612848204644

`∩[A067582(n+1), A054395(n+1)]`
-/

namespace A350586.P13690291612848204644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P13690291612848204644

/-! ## A350586.P7391883100154484179

`∩[A054395(n+1), A069169(n+1)]`
-/

namespace A350586.P7391883100154484179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P7391883100154484179

/-! ## A350586.P11855432211304855701

`∩[A054395(n+1), A064594(n+1)]`
-/

namespace A350586.P11855432211304855701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P11855432211304855701

/-! ## A350586.P15359960317059334432

`∩[A054395(n+1), A056868(n+1)]`
-/

namespace A350586.P15359960317059334432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P15359960317059334432

/-! ## A350586.P14190996520404088519

`∩[A054395(n+1), A060652(n+1)]`
-/

namespace A350586.P14190996520404088519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P14190996520404088519

/-! ## A350586.P5696988353498500788

`∩[A036537(n+1), A054395(n+1)]`
-/

namespace A350586.P5696988353498500788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350586.P5696988353498500788

/-!
# A350587: Expansion of Product_{k>=1} (1-x^k/Product_{j=1..k} (1-x^j)).

The programs for A350587, there is no canonical definition to state claims against.
-/

/-! ## A350587.P17022284764281555234

`A156351(A383708(2*n))-n-A000720(n+1)`
-/

namespace A350587.P17022284764281555234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (A383708 (2 * n)).toNat - (n : ℤ) - A000720 (n + 1)

end

end A350587.P17022284764281555234

/-!
# A350588: a(n) is the number of distinct numbers of steps required for the last n digits of integers to repeat themselves by iterating the map m -> m^5.

The programs for A350588, there is no canonical definition to state claims against.
-/

/-! ## A350588.P1718520777290944643

`∑[A048766(Δ[A320641(n+1)])]`
-/

namespace A350588.P1718520777290944643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320641 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350588.P1718520777290944643

/-! ## A350588.P4659830082394227874

`ceil(root(π, 3)^(n+1))-A321765(A124795(n+3))`
-/

namespace A350588.P4659830082394227874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1)⌉ - A321765 (A124795 (n + 3)).toNat

end

end A350588.P4659830082394227874

/-! ## A350588.P14992326062122249004

`A135585(A048597(n+1))+A048597(n+1)`
-/

namespace A350588.P14992326062122249004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135585 (A048597 (n + 1)).toNat + A048597 (n + 1)

end

end A350588.P14992326062122249004

/-! ## A350588.P14560629067933896727

`A212464(n+1)+1-A020985(A317757(n))`
-/

namespace A350588.P14560629067933896727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212464 (n + 1) + 1 - A020985 (A317757 n).toNat

end

end A350588.P14560629067933896727

/-! ## A350588.P4475359092983069409

`A210671(n+2)-floor(n/2)!`
-/

namespace A350588.P4475359092983069409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210671 (n + 2) - (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A350588.P4475359092983069409

/-!
# A350589: Sum over all partitions of [n] of the number of blocks containing their own index.

The programs for A350589, there is no canonical definition to state claims against.
-/

/-! ## A350589.P11885991079176289777

`A347420(n)-A000110(n)`
-/

namespace A350589.P11885991079176289777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n - A000110 n

end

end A350589.P11885991079176289777

/-! ## A350589.P17139593736297202481

`A347420(n)-A108087(∑[n])`
-/

namespace A350589.P17139593736297202481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n - A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350589.P17139593736297202481

/-! ## A350589.P16616718481124490726

`A347420(n)-A259691(∑[n])`
-/

namespace A350589.P16616718481124490726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n - A259691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350589.P16616718481124490726

/-! ## A350589.P18147689910567662135

`A347420(n)-A327884(∑[n])`
-/

namespace A350589.P18147689910567662135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n - A327884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350589.P18147689910567662135

/-! ## A350589.P9471975538168875337

`A347420(n)-Δ[A005001(n)]`
-/

namespace A350589.P9471975538168875337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n - (f1 (n + 1) - f1 n)

end

end A350589.P9471975538168875337

/-! ## A350589.P4893638611782629676

`A347420(n)-ceil(A186021(n)/2)`
-/

namespace A350589.P4893638611782629676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n - ⌈(A186021 n : ℚ) / 2⌉

end

end A350589.P4893638611782629676

/-! ## A350589.P13482691854925245237

`A347420(n)-A293024(∑[n]+n)`
-/

namespace A350589.P13482691854925245237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n - A293024 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A350589.P13482691854925245237

/-! ## A350589.P17821921436069030019

`A347420(n)-A123346(A161680(n))`
-/

namespace A350589.P17821921436069030019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n - A123346 (A161680 n).toNat

end

end A350589.P17821921436069030019

/-! ## A350589.P8035979571799028506

`A347420(n)-A346426(A000124(n))`
-/

namespace A350589.P8035979571799028506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n - A346426 (A000124 n).toNat

end

end A350589.P8035979571799028506

/-! ## A350589.P3319037714549707800

`A347420(n)-(A016098(n)+A000108(n))`
-/

namespace A350589.P3319037714549707800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n - (A016098 n + A000108 n)

end

end A350589.P3319037714549707800

/-!
# A350590: Prime numbers p such that iterating the map m -> m^2 + 1 on p generates a number ending with p.

The programs for A350590, there is no canonical definition to state claims against.
-/

/-! ## A350590.P13217416697870918561

`A350130(A099361(n+1)+1-and(2, n))`
-/

namespace A350590.P13217416697870918561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350130 (A099361 (n + 1) + 1 - (Nat.land 2 n : ℤ)).toNat

end

end A350590.P13217416697870918561

/-!
# A350591: Primes with Hamming distance of one from those in A320102.

The programs for A350591, there is no canonical definition to state claims against.
-/

/-! ## A350591.P683346142671970383

`∩[A332822(A316495(2*n+1)), A000040(n+1)]`
-/

namespace A350591.P683346142671970383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332822 (A316495 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350591.P683346142671970383

/-! ## A350591.P16826833793332125152

`A319333(∑[A181859(n)+1])`
-/

namespace A350591.P16826833793332125152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319333 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350591.P16826833793332125152

/-! ## A350591.P6108894854777905901

`p?[A339620(A003278(n+1))]`
-/

namespace A350591.P6108894854777905901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339620 (A003278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350591.P6108894854777905901

/-! ## A350591.P1682531848660541392

`record[A082910(∑[A083681(n+1)])]`
-/

namespace A350591.P1682531848660541392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082910 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350591.P1682531848660541392

/-!
# A350593: Numbers k such that tau(k) + tau(k+1) = 6, where tau is the number of divisors function A000005.

The programs for A350593, the canonical program `A350593.P13666250291163921889` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350593 has offset 1).

The definition of A350593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350593.P13666250291163921889

`A164977(n+2)+A109531(C(2, n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A350593

/-- `A164977(n+2)+A109531(C(2, n))` -/
def P13666250291163921889.Spec : Prop :=
  ∀ n, P13666250291163921889.a n = A350593 (n + 1)

theorem P13666250291163921889.correct : P13666250291163921889.Spec := by
  intro n
  simp only [A350593, Nat.add_sub_cancel]

end A350593

/-! ## A350593.P16708737760731410537

`A254667(Δ[A164977(n+1)])+A164977(n+1)`
-/

namespace A350593.P16708737760731410537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (f1 (n + 1) - f1 n).toNat + A164977 (n + 1)

end

end A350593.P16708737760731410537

namespace A350593

/-- `A254667(Δ[A164977(n+1)])+A164977(n+1)` -/
def P16708737760731410537.Spec : Prop :=
  ∀ n, P16708737760731410537.a n = A350593 (n + 1)

end A350593

/-! ## A350593.P3997268542518745895

`∩[A162318(n+1), A380101(n+1)]`
-/

namespace A350593.P3997268542518745895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350593.P3997268542518745895

namespace A350593

/-- `∩[A162318(n+1), A380101(n+1)]` -/
def P3997268542518745895.Spec : Prop :=
  ∀ n, (P3997268542518745895.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P10998687218228447141

`A209229(A063540(n))+A164977(n+2)`
-/

namespace A350593.P10998687218228447141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A063540 n).toNat + A164977 (n + 2)

end

end A350593.P10998687218228447141

namespace A350593

/-- `A209229(A063540(n))+A164977(n+2)` -/
def P10998687218228447141.Spec : Prop :=
  ∀ n, P10998687218228447141.a n = A350593 (n + 1)

end A350593

/-! ## A350593.P1641338700458314186

`∩[A162318(n+1), A173919(n+1)]`
-/

namespace A350593.P1641338700458314186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350593.P1641338700458314186

namespace A350593

/-- `∩[A162318(n+1), A173919(n+1)]` -/
def P1641338700458314186.Spec : Prop :=
  ∀ n, (P1641338700458314186.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P12850729201476873607

`A164977(n+2)+A156660(A033945(n+1))`
-/

namespace A350593.P12850729201476873607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 2) + A156660 (A033945 (n + 1)).toNat

end

end A350593.P12850729201476873607

namespace A350593

/-- `A164977(n+2)+A156660(A033945(n+1))` -/
def P12850729201476873607.Spec : Prop :=
  ∀ n, P12850729201476873607.a n = A350593 (n + 1)

end A350593

/-! ## A350593.P7578177017793887185

`∩[A162318(n+1), A372690(n+1)]`
-/

namespace A350593.P7578177017793887185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350593.P7578177017793887185

namespace A350593

/-- `∩[A162318(n+1), A372690(n+1)]` -/
def P7578177017793887185.Spec : Prop :=
  ∀ n, (P7578177017793887185.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P15815400014610339762

`∩[A162318(n+1), A391397(n+1)]`
-/

namespace A350593.P15815400014610339762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350593.P15815400014610339762

namespace A350593

/-- `∩[A162318(n+1), A391397(n+1)]` -/
def P15815400014610339762.Spec : Prop :=
  ∀ n, (P15815400014610339762.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P11094565768108642388

`eq[6, A092405(n+1)]+1`
-/

namespace A350593.P11094565768108642388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350593.P11094565768108642388

namespace A350593

/-- `eq[6, A092405(n+1)]+1` -/
def P11094565768108642388.Spec : Prop :=
  ∀ n, (P11094565768108642388.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P10314680249828171716

`eq[4, A274010(n+1)]`
-/

namespace A350593.P10314680249828171716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350593.P10314680249828171716

namespace A350593

/-- `eq[4, A274010(n+1)]` -/
def P10314680249828171716.Spec : Prop :=
  ∀ n, (P10314680249828171716.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P15109550307104679573

`eq[5, A092338(n+1)]`
-/

namespace A350593.P15109550307104679573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350593.P15109550307104679573

namespace A350593

/-- `eq[5, A092338(n+1)]` -/
def P15109550307104679573.Spec : Prop :=
  ∀ n, (P15109550307104679573.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P11773812965857838607

`eq[4, A274010(n)]-1`
-/

namespace A350593.P11773812965857838607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A350593.P11773812965857838607

namespace A350593

/-- `eq[4, A274010(n)]-1` -/
def P11773812965857838607.Spec : Prop :=
  ∀ n, P11773812965857838607.a n = A350593 (n + 1)

end A350593

/-! ## A350593.P15627823114664111243

`eq[4, A063123(n+1)]+1`
-/

namespace A350593.P15627823114664111243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350593.P15627823114664111243

namespace A350593

/-- `eq[4, A063123(n+1)]+1` -/
def P15627823114664111243.Spec : Prop :=
  ∀ n, (P15627823114664111243.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P8384954316755020892

`eq[2, A063123(A028310(n))-2]`
-/

namespace A350593.P8384954316755020892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350593.P8384954316755020892

namespace A350593

/-- `eq[2, A063123(A028310(n))-2]` -/
def P8384954316755020892.Spec : Prop :=
  ∀ n, (P8384954316755020892.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P18173134418480151615

`eq[3, A070824(n+1)+A032741(n)]`
-/

namespace A350593.P18173134418480151615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350593.P18173134418480151615

namespace A350593

/-- `eq[3, A070824(n+1)+A032741(n)]` -/
def P18173134418480151615.Spec : Prop :=
  ∀ n, (P18173134418480151615.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P14598692179318174760

`eq[3, A074206(n)+A070824(n+1)]`
-/

namespace A350593.P14598692179318174760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n + A070824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350593.P14598692179318174760

namespace A350593

/-- `eq[3, A074206(n)+A070824(n+1)]` -/
def P14598692179318174760.Spec : Prop :=
  ∀ n, (P14598692179318174760.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P3247982810902250260

`eq[6, A334954(n+1)+A032741(n)]`
-/

namespace A350593.P3247982810902250260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) + A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350593.P3247982810902250260

namespace A350593

/-- `eq[6, A334954(n+1)+A032741(n)]` -/
def P3247982810902250260.Spec : Prop :=
  ∀ n, (P3247982810902250260.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P9299362839351871936

`eq[1, A231167(n+1)+A231167(A028310(n))]`
-/

namespace A350593.P9299362839351871936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231167 (n + 1) + A231167 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350593.P9299362839351871936

namespace A350593

/-- `eq[1, A231167(n+1)+A231167(A028310(n))]` -/
def P9299362839351871936.Spec : Prop :=
  ∀ n, (P9299362839351871936.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P18159317686986044970

`eq[2, A070824(n+1)+A070824(A028310(n))]`
-/

namespace A350593.P18159317686986044970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + A070824 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350593.P18159317686986044970

namespace A350593

/-- `eq[2, A070824(n+1)+A070824(A028310(n))]` -/
def P18159317686986044970.Spec : Prop :=
  ∀ n, (P18159317686986044970.a n : ℤ) = A350593 (n + 1)

end A350593

/-! ## A350593.P8631312016064942781

`eq[A045778(n+1)*A048785(n), A145154(n)]`
-/

namespace A350593.P8631312016064942781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) * A048785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350593.P8631312016064942781

namespace A350593

/-- `eq[A045778(n+1)*A048785(n), A145154(n)]` -/
def P8631312016064942781.Spec : Prop :=
  ∀ n, (P8631312016064942781.a n : ℤ) = A350593 (n + 1)

end A350593

/-!
# A350594: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) is Sum_{j=0..2*n} (-1)^(n+j) * binomial(2*n,j)^k.

The programs for A350594, there is no canonical definition to state claims against.
-/

/-! ## A350594.P11830524454768385726

`A225636(A228832(n))*A320508(n)`
-/

namespace A350594.P11830524454768385726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225636 (A228832 n).toNat * A320508 n

end

end A350594.P11830524454768385726

/-! ## A350594.P8848103837091851794

`(A048993(n+1)^A002262(n)^A048993(n)-1)^A002262(n)`
-/

namespace A350594.P8848103837091851794
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A048993 (n + 1) : ℝ) ^ ((A002262 n : ℚ) ^ (A048993 n : ℤ) : ℝ) - 1) ^ (A002262 n : ℤ)

end

end A350594.P8848103837091851794

/-!
# A350595: a(n) = Sum_{k=0..2*n} (-1)^(n+k) * binomial(2*n,k)^n.

The programs for A350595, there is no canonical definition to state claims against.
-/

/-! ## A350595.P15362793342760885388

`A350594(∑[4*n])`
-/

namespace A350595.P15362793342760885388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350594 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350595.P15362793342760885388

/-!
# A350597: Irregular triangle read by rows in which row n lists the partial sums of shell numbers and respective number of electrons for all occupied shells of the n-th element of the periodic table of the elements where electron configurations are ordered according to Madelung's rule.

The programs for A350597, there is no canonical definition to state claims against.
-/

/-! ## A350597.P10505292101513837921

`A335105(n+1)%26`
-/

namespace A350597.P10505292101513837921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335105 (n + 1)) 26

end

end A350597.P10505292101513837921

/-! ## A350597.P14252580551165090467

`A008684(A335105(n+1))`
-/

namespace A350597.P14252580551165090467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (A335105 (n + 1)).toNat

end

end A350597.P14252580551165090467

/-! ## A350597.P14419495979510671490

`A335105(A118759(n+1))`
-/

namespace A350597.P14419495979510671490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335105 (A118759 (n + 1)).toNat

end

end A350597.P14419495979510671490

/-! ## A350597.P7436439612211113936

`A335105(A296882(n+1))`
-/

namespace A350597.P7436439612211113936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335105 (A296882 (n + 1)).toNat

end

end A350597.P7436439612211113936

/-! ## A350597.P10605228044548638232

`A002837(A335105(n+1)+1)`
-/

namespace A350597.P10605228044548638232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A335105 (n + 1) + 1).toNat

end

end A350597.P10605228044548638232

/-! ## A350597.P17941623282733110804

`A335105(n+1)^A178334(n)`
-/

namespace A350597.P17941623282733110804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335105 (n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A350597.P17941623282733110804

/-! ## A350597.P711388731952262274

`or(A025439(n), A335105(n+1))`
-/

namespace A350597.P711388731952262274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025439 n) (A335105 (n + 1))

end

end A350597.P711388731952262274

/-! ## A350597.P9871889926180368821

`or(A015899(n)², A335105(n+1))`
-/

namespace A350597.P9871889926180368821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015899 n ^ 2) (A335105 (n + 1))

end

end A350597.P9871889926180368821

/-! ## A350597.P4818502589230074991

`A335105(n+1)+char[A017510(n)]`
-/

namespace A350597.P4818502589230074991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335105 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A350597.P4818502589230074991

/-! ## A350597.P7549168168216959982

`A335105(n+1)^A000045(ceil(n/98))`
-/

namespace A350597.P7549168168216959982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335105 (n + 1) : ℚ) ^ (A000045 ⌈(n : ℚ) / 98⌉.toNat : ℤ)

end

end A350597.P7549168168216959982

/-!
# A350599: Number of ways to partition the set of vertices of a convex n-gon into non-intersecting directed polygons.

The programs for A350599, there is no canonical definition to state claims against.
-/

/-! ## A350599.P14442737311374265301

`A167268(A288971(n)+A167268(n+2))`
-/

namespace A350599.P14442737311374265301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167268 (A288971 n + A167268 (n + 2)).toNat

end

end A350599.P14442737311374265301

/-! ## A350599.P4659959617359219387

`A344296(A344296(3*(n+1)))-A049693(2*n)`
-/

namespace A350599.P4659959617359219387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A344296 (3 * (n + 1))).toNat - A049693 (2 * n)

end

end A350599.P4659959617359219387

