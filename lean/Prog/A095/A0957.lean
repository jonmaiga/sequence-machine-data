import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A095700: Expansion of 1 + Sum_{i>=1} (x^prime(i)/Product_{j=1..i} (1-x^j)).

The programs for A095700, there is no canonical definition to state claims against.
-/

/-! ## A095700.P9296728998041913820

`Δ[A008638(A010051(A000079(n))+n)]`
-/

namespace A095700.P9296728998041913820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 (A010051 (A000079 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095700.P9296728998041913820

/-! ## A095700.P9417120596876521935

`Δ[A341913(A010051(A000079(n))+n)]`
-/

namespace A095700.P9417120596876521935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341913 ((A010051 (A000079 n).toNat + (n : ℤ)).toNat + 45)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095700.P9417120596876521935

/-! ## A095700.P15361974785104684848

`A123580(A240486(n+1))`
-/

namespace A095700.P15361974785104684848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A240486 (n + 1)).toNat

end

end A095700.P15361974785104684848

/-! ## A095700.P5757289886165460228

`A339404(n+1)+A319448(A000079(n))`
-/

namespace A095700.P5757289886165460228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339404 (n + 1) + A319448 (A000079 n).toNat

end

end A095700.P5757289886165460228

/-!
# A095701: Define string S_0 to be the null sequence; string S_n is derived from string S_{n-1} by inserting n's in the rightmost n gaps; sequence gives limit S_n as n -> infinity.

The programs for A095701, there is no canonical definition to state claims against.
-/

/-! ## A095701.P6797926253543762666

`A095163(A096063(n+1))`
-/

namespace A095701.P6797926253543762666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095163 (A096063 (n + 1)).toNat

end

end A095701.P6797926253543762666

/-! ## A095701.P1783598196299948124

`∑[A094267(A294317(n)+2)]`
-/

namespace A095701.P1783598196299948124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A294317 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095701.P1783598196299948124

/-! ## A095701.P9964323526519902469

`∑[A094267(xor(2, A294317(n)))]`
-/

namespace A095701.P9964323526519902469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (Int.xor 2 (A294317 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095701.P9964323526519902469

/-! ## A095701.P16284337529610244730

`∑[A094267(A099375(n)+A002260(n+1))]`
-/

namespace A095701.P16284337529610244730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A099375 n + A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095701.P16284337529610244730

/-! ## A095701.P7025331765205792564

`∑[A094267(A217575(n+1)-A005843(n))]`
-/

namespace A095701.P7025331765205792564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A217575 (n + 1) - A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095701.P7025331765205792564

/-! ## A095701.P9560249938797250036

`∑[A094267(A004736(n+1)+A002024(n+1))]`
-/

namespace A095701.P9560249938797250036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A004736 (n + 1) + A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095701.P9560249938797250036

/-! ## A095701.P8531255875072740375

`a(n-1)+A057427(n+1)*A094267(A294317(n)+2)` with `a(0)=2`
-/

namespace A095701.P8531255875072740375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A057427 (n + 1) * A094267 (A294317 n + 2).toNat

end

end A095701.P8531255875072740375

/-!
# A095703: Integer part of the (positive) solution to x^x = 10^n.

The programs for A095703, there is no canonical definition to state claims against.
-/

/-! ## A095703.P5709173464939200271

`A316843(A004277(n)+∑[A096276(n)])`
-/

namespace A095703.P5709173464939200271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A004277 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A095703.P5709173464939200271

/-! ## A095703.P3403435719867527745

`A036042(∑[∑[A003105(n)]])`
-/

namespace A095703.P3403435719867527745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A095703.P3403435719867527745

/-! ## A095703.P10459648923397081320

`floor(∑[A119899(n+1)/A344416(2*(n+1))])`
-/

namespace A095703.P10459648923397081320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119899 (n + 1) : ℚ) / (A344416 (2 * (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A095703.P10459648923397081320

/-! ## A095703.P17801359725052581625

`A053620(A184583(n+1))`
-/

namespace A095703.P17801359725052581625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053620 (A184583 (n + 1)).toNat

end

end A095703.P17801359725052581625

/-! ## A095703.P14786584824260614728

`A053620(A184735(n+1))`
-/

namespace A095703.P14786584824260614728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053620 (A184735 (n + 1)).toNat

end

end A095703.P14786584824260614728

/-!
# A095704: Triangle read by rows giving coefficients of the trigonometric expansion of sin(n*x).

The programs for A095704, the canonical program `A095704.P6796240691851916522` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095704 has offset 1).

The definition of A095704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095704.P2082382542649132415

`A056594(A002262(n))*A135278(n)`
-/

namespace A095704.P2082382542649132415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A002262 n).toNat * A135278 n

end

end A095704.P2082382542649132415

namespace A095704

/-- `A056594(A002262(n))*A135278(n)` -/
def P2082382542649132415.Spec : Prop :=
  ∀ n, P2082382542649132415.a n = A095704 (n + 1)

end A095704

/-! ## A095704.P14463019224848595464

`A056594(A002262(n))*A238801(n)`
-/

namespace A095704.P14463019224848595464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A002262 n).toNat * A238801 n

end

end A095704.P14463019224848595464

namespace A095704

/-- `A056594(A002262(n))*A238801(n)` -/
def P14463019224848595464.Spec : Prop :=
  ∀ n, P14463019224848595464.a n = A095704 (n + 1)

end A095704

/-! ## A095704.P6796240691851916522

`A056594(A002262(n))*A074909(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A095704

/-- `A056594(A002262(n))*A074909(n+1)` -/
def P6796240691851916522.Spec : Prop :=
  ∀ n, P6796240691851916522.a n = A095704 (n + 1)

theorem P6796240691851916522.correct : P6796240691851916522.Spec := by
  intro n
  simp only [A095704, Nat.add_sub_cancel]

end A095704

/-! ## A095704.P5903620609666099041

`A057077(A002260(n+1))*A238801(n)`
-/

namespace A095704.P5903620609666099041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002260 (n + 1)).toNat * A238801 n

end

end A095704.P5903620609666099041

namespace A095704

/-- `A057077(A002260(n+1))*A238801(n)` -/
def P5903620609666099041.Spec : Prop :=
  ∀ n, P5903620609666099041.a n = A095704 (n + 1)

end A095704

/-! ## A095704.P4198117723019106721

`A117568(A061579(n))*A238801(n)`
-/

namespace A095704.P4198117723019106721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 (A061579 n).toNat * A238801 n

end

end A095704.P4198117723019106721

namespace A095704

/-- `A117568(A061579(n))*A238801(n)` -/
def P4198117723019106721.Spec : Prop :=
  ∀ n, P4198117723019106721.a n = A095704 (n + 1)

end A095704

/-! ## A095704.P13790480210957351378

`A030201(A059268(n))*A135278(n)`
-/

namespace A095704.P13790480210957351378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A059268 n).toNat * A135278 n

end

end A095704.P13790480210957351378

namespace A095704

/-- `A030201(A059268(n))*A135278(n)` -/
def P13790480210957351378.Spec : Prop :=
  ∀ n, P13790480210957351378.a n = A095704 (n + 1)

end A095704

/-! ## A095704.P4043649487135843457

`A030201(A059268(n))*A238801(n)`
-/

namespace A095704.P4043649487135843457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A059268 n).toNat * A238801 n

end

end A095704.P4043649487135843457

namespace A095704

/-- `A030201(A059268(n))*A238801(n)` -/
def P4043649487135843457.Spec : Prop :=
  ∀ n, P4043649487135843457.a n = A095704 (n + 1)

end A095704

/-!
# A095706: A095289 with duplicates removed.

The programs for A095706, there is no canonical definition to state claims against.
-/

/-! ## A095706.P10531256212500265110

`A068189(record[A000007(n)-A187844(n)])`
-/

namespace A095706.P10531256212500265110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A187844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095706.P10531256212500265110

/-! ## A095706.P3305369848557140492

`A068189(record[A007954(2*n+1)-A007954(2*n)])`
-/

namespace A095706.P3305369848557140492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (2 * n + 1) - A007954 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095706.P3305369848557140492

/-! ## A095706.P16923644304160165568

`A068189(record[A187844(2*n)-A187844(2*n+1)])`
-/

namespace A095706.P16923644304160165568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (2 * n) - A187844 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095706.P16923644304160165568

/-! ## A095706.P2669442322384402545

`lt[A249121(n), A307629(A066568(n))]`
-/

namespace A095706.P2669442322384402545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 (A066568 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095706.P2669442322384402545

/-! ## A095706.P15213834342821730328

`lt[A066568(A066568(n)+1), A007954(n)]`
-/

namespace A095706.P15213834342821730328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A066568 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095706.P15213834342821730328

/-!
# A095707: Total number of distinct winning paths across an n X n Hex board.

The programs for A095707, there is no canonical definition to state claims against.
-/

/-! ## A095707.P3207225902995137030

`or(n+1, ∑{digits}[n^(n+1)!, #])`
-/

namespace A095707.P3207225902995137030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A095707.P3207225902995137030

/-!
# A095708: Tau-functions of the q-discrete Painlevé I equation, f(n+1) = (A*q^n*f(n) + B)/(f(n)^2*f(n-1)), for q=2 and A=B=1, with f(n) = a(n+1)*a(n-1)/a(n)^2.

The programs for A095708, there is no canonical definition to state claims against.
-/

/-! ## A095708.P16885614867916597595

`(2^(n-4)*a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A095708.P16885614867916597595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  ((2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * a (n - 1) * a (n - 3) + a (n - 2) ^ 2) / a (n - 4)

end

end A095708.P16885614867916597595

/-! ## A095708.P5951918756687376756

`A092878(A333497(n))`
-/

namespace A095708.P5951918756687376756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092878 (A333497 n).toNat

end

end A095708.P5951918756687376756

/-! ## A095708.P2621921287313042475

`A205506(A301480(n+1))-A010055(n+1)`
-/

namespace A095708.P2621921287313042475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (A301480 (n + 1)).toNat - A010055 (n + 1)

end

end A095708.P2621921287313042475

/-!
# A095709: Triangle of numbers obtained by reversing the first n digits of Pi and juxtaposing.

The programs for A095709, there is no canonical definition to state claims against.
-/

/-! ## A095709.P8427452119652430924

`A000796(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A095709.P8427452119652430924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1) + 1)

end

end A095709.P8427452119652430924

/-! ## A095709.P13493583363976114407

`A000796(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A095709.P13493583363976114407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat + 1)

end

end A095709.P13493583363976114407

/-! ## A095709.P10576494420731155285

`A000796(A025581(n))`
-/

namespace A095709.P10576494420731155285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A025581 n).toNat + 1)

end

end A095709.P10576494420731155285

/-! ## A095709.P17151132902088237861

`A001355(A099375(n))`
-/

namespace A095709.P17151132902088237861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A099375 n).toNat

end

end A095709.P17151132902088237861

/-! ## A095709.P6362556423501668604

`A000796(log2(A130321(n)))`
-/

namespace A095709.P6362556423501668604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat + 1)

end

end A095709.P6362556423501668604

/-! ## A095709.P13628760480861963510

`A078424(A143971(n+1))`
-/

namespace A095709.P13628760480861963510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A143971 (n + 1)).toNat

end

end A095709.P13628760480861963510

/-! ## A095709.P2540737931354467234

`A110766(2*A099375(n))`
-/

namespace A095709.P2540737931354467234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * A099375 n).toNat

end

end A095709.P2540737931354467234

/-! ## A095709.P7264690497268085189

`A000796(val(A036561(n), 2))`
-/

namespace A095709.P7264690497268085189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.valuation (A036561 n).toNat 2 + 1)

end

end A095709.P7264690497268085189

/-! ## A095709.P16110869770506681692

`A000796(val(A054582(n), 2))`
-/

namespace A095709.P16110869770506681692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.valuation (A054582 n).toNat 2 + 1)

end

end A095709.P16110869770506681692

/-! ## A095709.P15034391072341254120

`A000796(A004736(n+1)-1)`
-/

namespace A095709.P15034391072341254120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A004736 (n + 1) - 1).toNat + 1)

end

end A095709.P15034391072341254120

/-! ## A095709.P5146220939513174571

`A001355(A212012(n+1)-1)`
-/

namespace A095709.P5146220939513174571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A212012 (n + 1) - 1).toNat

end

end A095709.P5146220939513174571

/-! ## A095709.P17466833897274322946

`A001355(2*A025581(n)+1)`
-/

namespace A095709.P17466833897274322946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * A025581 n + 1).toNat

end

end A095709.P17466833897274322946

/-! ## A095709.P185100140711528315

`A110766(2*A025581(n)+1)`
-/

namespace A095709.P185100140711528315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * A025581 n + 1).toNat

end

end A095709.P185100140711528315

/-! ## A095709.P1114260871758406750

`A001355(or(1, 2*A025581(n)))`
-/

namespace A095709.P1114260871758406750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (Int.lor 1 (2 * A025581 n)).toNat

end

end A095709.P1114260871758406750

/-! ## A095709.P15711324655189734415

`A001355(2*A004736(n+1)-1)`
-/

namespace A095709.P15711324655189734415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * A004736 (n + 1) - 1).toNat

end

end A095709.P15711324655189734415

/-! ## A095709.P6054768849491791546

`A000796(A004202(n+1)%(n+1))`
-/

namespace A095709.P6054768849491791546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((Int.tmod (A004202 (n + 1)) (n + 1 : ℤ)).toNat + 1)

end

end A095709.P6054768849491791546

/-! ## A095709.P12218118301023436818

`A000796(A004202(n+1)-2*(n+1))`
-/

namespace A095709.P12218118301023436818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A004202 (n + 1) - (2 * (n + 1) : ℤ)).toNat + 1)

end

end A095709.P12218118301023436818

/-! ## A095709.P8392240542125000711

`A001355(A025581(n)+A025581(n)+1)`
-/

namespace A095709.P8392240542125000711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A025581 n + (A025581 n + 1)).toNat

end

end A095709.P8392240542125000711

/-! ## A095709.P11844086796998888212

`A110766(A025581(n)+A025581(n)+1)`
-/

namespace A095709.P11844086796998888212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (A025581 n + (A025581 n + 1)).toNat

end

end A095709.P11844086796998888212

/-! ## A095709.P3440737875386475099

`A001355(A004736(n+1)+A004736(n+1)-1)`
-/

namespace A095709.P3440737875386475099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004736 (n + 1) + (A004736 (n + 1) - 1)).toNat

end

end A095709.P3440737875386475099

/-!
# A095710: Triangle of numbers obtained by reversing the first n digits of 1/Pi and juxtaposing.

The programs for A095710, there is no canonical definition to state claims against.
-/

/-! ## A095710.P8177473714922531422

`dr(A048321(A106187(n)²))`
-/

namespace A095710.P8177473714922531422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A048321 (A106187 n ^ 2).toNat)

end

end A095710.P8177473714922531422

/-! ## A095710.P4849010802587635907

`∑{e}[A009428(A104571(n)), #]`
-/

namespace A095710.P4849010802587635907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009428 (A104571 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A095710.P4849010802587635907

/-! ## A095710.P9045129522666979607

`A087991(A249497(n+1)+1)`
-/

namespace A095710.P9045129522666979607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (A249497 (n + 1) + 1).toNat

end

end A095710.P9045129522666979607

/-! ## A095710.P5323993086987710080

`A001222(A143894(A025581(n)²))`
-/

namespace A095710.P5323993086987710080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A143894 (A025581 n ^ 2).toNat).toNat

end

end A095710.P5323993086987710080

/-!
# A095711: Triangle of numbers obtained by reversing the first n digits of e and juxtaposing.

The programs for A095711, the canonical program `A095711.P13774796746947022199` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095711 has offset 1).

The definition of A095711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095711.P2936061979030985246

`A001113(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A095711.P2936061979030985246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1) + 1)

end

end A095711.P2936061979030985246

namespace A095711

/-- `A001113(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P2936061979030985246.Spec : Prop :=
  ∀ n, P2936061979030985246.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P7736989755857940257

`A001113(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A095711.P7736989755857940257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat + 1)

end

end A095711.P7736989755857940257

namespace A095711

/-- `A001113(C(comp[∑[n]]-n, 2)-n-1)` -/
def P7736989755857940257.Spec : Prop :=
  ∀ n, P7736989755857940257.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P705483616731452729

`A001355(2*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A095711.P705483616731452729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A095711.P705483616731452729

namespace A095711

/-- `A001355(2*(C(comp[∑[n]]-n, 2)-n))` -/
def P705483616731452729.Spec : Prop :=
  ∀ n, P705483616731452729.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P5236849480270397866

`9-A121239(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A095711.P5236849480270397866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A121239 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1) + 1)

end

end A095711.P5236849480270397866

namespace A095711

/-- `9-A121239(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P5236849480270397866.Spec : Prop :=
  ∀ n, P5236849480270397866.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P10113624606143376885

`A001113(A025581(n))`
-/

namespace A095711.P10113624606143376885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A025581 n).toNat + 1)

end

end A095711.P10113624606143376885

namespace A095711

/-- `A001113(A025581(n))` -/
def P10113624606143376885.Spec : Prop :=
  ∀ n, P10113624606143376885.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P7837173312335246014

`A110779(A099375(n))`
-/

namespace A095711.P7837173312335246014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (A099375 n).toNat

end

end A095711.P7837173312335246014

namespace A095711

/-- `A110779(A099375(n))` -/
def P7837173312335246014.Spec : Prop :=
  ∀ n, P7837173312335246014.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P17247866871786960165

`A001113(log2(A130321(n)))`
-/

namespace A095711.P17247866871786960165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat + 1)

end

end A095711.P17247866871786960165

namespace A095711

/-- `A001113(log2(A130321(n)))` -/
def P17247866871786960165.Spec : Prop :=
  ∀ n, P17247866871786960165.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P14581617644067625574

`A001355(A099375(n)+1)`
-/

namespace A095711.P14581617644067625574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A099375 n + 1).toNat

end

end A095711.P14581617644067625574

namespace A095711

/-- `A001355(A099375(n)+1)` -/
def P14581617644067625574.Spec : Prop :=
  ∀ n, P14581617644067625574.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P18290816814455010745

`A001355(A212012(n+1))`
-/

namespace A095711.P18290816814455010745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A212012 (n + 1)).toNat

end

end A095711.P18290816814455010745

namespace A095711

/-- `A001355(A212012(n+1))` -/
def P18290816814455010745.Spec : Prop :=
  ∀ n, P18290816814455010745.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P4168206889790248808

`A001113(val(A036561(n), 2))`
-/

namespace A095711.P4168206889790248808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.valuation (A036561 n).toNat 2 + 1)

end

end A095711.P4168206889790248808

namespace A095711

/-- `A001113(val(A036561(n), 2))` -/
def P4168206889790248808.Spec : Prop :=
  ∀ n, P4168206889790248808.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P7013107770718617408

`A001113(val(A054582(n), 2))`
-/

namespace A095711.P7013107770718617408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.valuation (A054582 n).toNat 2 + 1)

end

end A095711.P7013107770718617408

namespace A095711

/-- `A001113(val(A054582(n), 2))` -/
def P7013107770718617408.Spec : Prop :=
  ∀ n, P7013107770718617408.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P10927273119469121898

`A001113(A004736(n+1)-1)`
-/

namespace A095711.P10927273119469121898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A004736 (n + 1) - 1).toNat + 1)

end

end A095711.P10927273119469121898

namespace A095711

/-- `A001113(A004736(n+1)-1)` -/
def P10927273119469121898.Spec : Prop :=
  ∀ n, P10927273119469121898.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P13470262244336839624

`A001355(2*A004736(n+1))`
-/

namespace A095711.P13470262244336839624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * A004736 (n + 1)).toNat

end

end A095711.P13470262244336839624

namespace A095711

/-- `A001355(2*A004736(n+1))` -/
def P13470262244336839624.Spec : Prop :=
  ∀ n, P13470262244336839624.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P13158854908034635068

`A001355(2*(A025581(n)+1))`
-/

namespace A095711.P13158854908034635068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (A025581 n + 1)).toNat

end

end A095711.P13158854908034635068

namespace A095711

/-- `A001355(2*(A025581(n)+1))` -/
def P13158854908034635068.Spec : Prop :=
  ∀ n, P13158854908034635068.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P965044084947535949

`A001113((A099375(n)-1)/2)`
-/

namespace A095711.P965044084947535949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway ((A099375 n - 1 : ℚ) / 2)).toNat + 1)

end

end A095711.P965044084947535949

namespace A095711

/-- `A001113((A099375(n)-1)/2)` -/
def P965044084947535949.Spec : Prop :=
  ∀ n, P965044084947535949.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P10452604610192568008

`A001113(A004202(n+1)%(n+1))`
-/

namespace A095711.P10452604610192568008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((Int.tmod (A004202 (n + 1)) (n + 1 : ℤ)).toNat + 1)

end

end A095711.P10452604610192568008

namespace A095711

/-- `A001113(A004202(n+1)%(n+1))` -/
def P10452604610192568008.Spec : Prop :=
  ∀ n, P10452604610192568008.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P9213420487403980870

`A001355(A025581(n)+A025581(n)+2)`
-/

namespace A095711.P9213420487403980870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A025581 n + (A025581 n + 2)).toNat

end

end A095711.P9213420487403980870

namespace A095711

/-- `A001355(A025581(n)+A025581(n)+2)` -/
def P9213420487403980870.Spec : Prop :=
  ∀ n, P9213420487403980870.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P11666420682067476883

`A001113(A000217(A002024(n+1))-(n+1))`
-/

namespace A095711.P11666420682067476883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A000217 (A002024 (n + 1)).toNat - (n + 1 : ℤ)).toNat + 1)

end

end A095711.P11666420682067476883

namespace A095711

/-- `A001113(A000217(A002024(n+1))-(n+1))` -/
def P11666420682067476883.Spec : Prop :=
  ∀ n, P11666420682067476883.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P16246592108618610874

`A001113(A002024(n+1)-A002260(n+1))`
-/

namespace A095711.P16246592108618610874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A002024 (n + 1) - A002260 (n + 1)).toNat + 1)

end

end A095711.P16246592108618610874

namespace A095711

/-- `A001113(A002024(n+1)-A002260(n+1))` -/
def P16246592108618610874.Spec : Prop :=
  ∀ n, P16246592108618610874.a n = A095711 (n + 1)

end A095711

/-! ## A095711.P13774796746947022199

`A138115(A038722(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095711

/-- `A138115(A038722(n+1))` -/
def P13774796746947022199.Spec : Prop :=
  ∀ n, P13774796746947022199.a n = A095711 (n + 1)

theorem P13774796746947022199.correct : P13774796746947022199.Spec := by
  intro n
  simp only [A095711, Nat.add_sub_cancel]

end A095711

/-!
# A095712: Triangle of numbers obtained by reversing the first n digits of 1/e and juxtaposing.

The programs for A095712, there is no canonical definition to state claims against.
-/

/-! ## A095712.P6722456944332160352

`A080791(A198435(A130321(n)))`
-/

namespace A095712.P6722456944332160352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A198435 (A130321 n).toNat).toNat

end

end A095712.P6722456944332160352

/-! ## A095712.P14639984775438604662

`A053735(A139278(A025581(n)²))`
-/

namespace A095712.P14639984775438604662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A139278 (A025581 n ^ 2).toNat).toNat

end

end A095712.P14639984775438604662

/-! ## A095712.P13076843415993814469

`A105195(A104792(n+1))`
-/

namespace A095712.P13076843415993814469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105195 (A104792 (n + 1)).toNat

end

end A095712.P13076843415993814469

/-! ## A095712.P16656202220851008426

`A299757(A104796(n+1))`
-/

namespace A095712.P16656202220851008426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299757 (A104796 (n + 1)).toNat

end

end A095712.P16656202220851008426

/-! ## A095712.P14138643376219891026

`∑{e}[A163197(A004736(n+1)), #]`
-/

namespace A095712.P14138643376219891026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163197 (A004736 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A095712.P14138643376219891026

/-!
# A095713: Triangle of numbers obtained by reversing the first n digits of golden ratio phi and juxtaposing.

The programs for A095713, the canonical program `A095713.P5976554658561473307` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095713 has offset 1).

The definition of A095713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095713.P10747619099932988309

`A095715(n+1)+char[∑[n-1]]`
-/

namespace A095713.P10747619099932988309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095715 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095713.P10747619099932988309

namespace A095713

/-- `A095715(n+1)+char[∑[n-1]]` -/
def P10747619099932988309.Spec : Prop :=
  ∀ n, P10747619099932988309.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P3823954500347266879

`A001622(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A095713.P3823954500347266879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1) + 1)

end

end A095713.P3823954500347266879

namespace A095713

/-- `A001622(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P3823954500347266879.Spec : Prop :=
  ∀ n, P3823954500347266879.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P15315169867690518654

`A001622(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A095713.P15315169867690518654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat + 1)

end

end A095713.P15315169867690518654

namespace A095713

/-- `A001622(C(comp[∑[n]]-n, 2)-n-1)` -/
def P15315169867690518654.Spec : Prop :=
  ∀ n, P15315169867690518654.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P15964758518454848225

`9-A109866(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A095713.P15964758518454848225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A109866 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A095713.P15964758518454848225

namespace A095713

/-- `9-A109866(C(comp[∑[n]]-n, 2)-n)` -/
def P15964758518454848225.Spec : Prop :=
  ∀ n, P15964758518454848225.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P11584950263973402665

`A001622(A025581(n))`
-/

namespace A095713.P11584950263973402665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A025581 n).toNat + 1)

end

end A095713.P11584950263973402665

namespace A095713

/-- `A001622(A025581(n))` -/
def P11584950263973402665.Spec : Prop :=
  ∀ n, P11584950263973402665.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P10745792427151963543

`A382130(A099375(n))`
-/

namespace A095713.P10745792427151963543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (A099375 n).toNat

end

end A095713.P10745792427151963543

namespace A095713

/-- `A382130(A099375(n))` -/
def P10745792427151963543.Spec : Prop :=
  ∀ n, P10745792427151963543.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P16970339038283002526

`A001622(log2(A130321(n)))`
-/

namespace A095713.P16970339038283002526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat + 1)

end

end A095713.P16970339038283002526

namespace A095713

/-- `A001622(log2(A130321(n)))` -/
def P16970339038283002526.Spec : Prop :=
  ∀ n, P16970339038283002526.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P6067704572156134218

`A001622(val(A036561(n), 2))`
-/

namespace A095713.P6067704572156134218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (SequenceMachineLib.valuation (A036561 n).toNat 2 + 1)

end

end A095713.P6067704572156134218

namespace A095713

/-- `A001622(val(A036561(n), 2))` -/
def P6067704572156134218.Spec : Prop :=
  ∀ n, P6067704572156134218.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P286330281687627628

`A001622(val(A054582(n), 2))`
-/

namespace A095713.P286330281687627628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (SequenceMachineLib.valuation (A054582 n).toNat 2 + 1)

end

end A095713.P286330281687627628

namespace A095713

/-- `A001622(val(A054582(n), 2))` -/
def P286330281687627628.Spec : Prop :=
  ∀ n, P286330281687627628.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P12371329436562639095

`A001622(val(A130321(n), 2))`
-/

namespace A095713.P12371329436562639095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (SequenceMachineLib.valuation (A130321 n).toNat 2 + 1)

end

end A095713.P12371329436562639095

namespace A095713

/-- `A001622(val(A130321(n), 2))` -/
def P12371329436562639095.Spec : Prop :=
  ∀ n, P12371329436562639095.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P411633601115694578

`A001622(A004736(n+1)-1)`
-/

namespace A095713.P411633601115694578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A004736 (n + 1) - 1).toNat + 1)

end

end A095713.P411633601115694578

namespace A095713

/-- `A001622(A004736(n+1)-1)` -/
def P411633601115694578.Spec : Prop :=
  ∀ n, P411633601115694578.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P10793812972885626962

`A001622((A099375(n)-1)/2)`
-/

namespace A095713.P10793812972885626962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((SequenceMachineLib.roundAway ((A099375 n - 1 : ℚ) / 2)).toNat + 1)

end

end A095713.P10793812972885626962

namespace A095713

/-- `A001622((A099375(n)-1)/2)` -/
def P10793812972885626962.Spec : Prop :=
  ∀ n, P10793812972885626962.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P10865006657126464125

`gcd(A095715(n+1), A119832(n))`
-/

namespace A095713.P10865006657126464125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095715 (n + 1)) (A119832 n)

end

end A095713.P10865006657126464125

namespace A095713

/-- `gcd(A095715(n+1), A119832(n))` -/
def P10865006657126464125.Spec : Prop :=
  ∀ n, (P10865006657126464125.a n : ℤ) = A095713 (n + 1)

end A095713

/-! ## A095713.P8133980756353577386

`xor(A023531(n), A095715(n+1))`
-/

namespace A095713.P8133980756353577386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023531 n) (A095715 (n + 1))

end

end A095713.P8133980756353577386

namespace A095713

/-- `xor(A023531(n), A095715(n+1))` -/
def P8133980756353577386.Spec : Prop :=
  ∀ n, P8133980756353577386.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P5180410285018730267

`A001622(A004202(n+1)%(n+1))`
-/

namespace A095713.P5180410285018730267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((Int.tmod (A004202 (n + 1)) (n + 1 : ℤ)).toNat + 1)

end

end A095713.P5180410285018730267

namespace A095713

/-- `A001622(A004202(n+1)%(n+1))` -/
def P5180410285018730267.Spec : Prop :=
  ∀ n, P5180410285018730267.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P4299916499496569609

`A001622(A004202(n+1)-2*(n+1))`
-/

namespace A095713.P4299916499496569609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A004202 (n + 1) - (2 * (n + 1) : ℤ)).toNat + 1)

end

end A095713.P4299916499496569609

namespace A095713

/-- `A001622(A004202(n+1)-2*(n+1))` -/
def P4299916499496569609.Spec : Prop :=
  ∀ n, P4299916499496569609.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P7210331152073294935

`A138116(A038722(n+1))`
-/

namespace A095713.P7210331152073294935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (A038722 (n + 1)).toNat

end

end A095713.P7210331152073294935

namespace A095713

/-- `A138116(A038722(n+1))` -/
def P7210331152073294935.Spec : Prop :=
  ∀ n, P7210331152073294935.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P14012992497790575686

`A138116(A278818(n))`
-/

namespace A095713.P14012992497790575686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (A278818 n).toNat

end

end A095713.P14012992497790575686

namespace A095713

/-- `A138116(A278818(n))` -/
def P14012992497790575686.Spec : Prop :=
  ∀ n, P14012992497790575686.a n = A095713 (n + 1)

end A095713

/-! ## A095713.P5976554658561473307

`A011551(C(comp[∑[n]]-n, 2)-(n+1))%10`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095713

/-- `A011551(C(comp[∑[n]]-n, 2)-(n+1))%10` -/
def P5976554658561473307.Spec : Prop :=
  ∀ n, P5976554658561473307.a n = A095713 (n + 1)

theorem P5976554658561473307.correct : P5976554658561473307.Spec := by
  intro n
  simp only [A095713, Nat.add_sub_cancel]

end A095713

/-! ## A095713.P7593768630170871197

`A138073(Δ[n²]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A095713.P7593768630170871197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ))).toNat

end

end A095713.P7593768630170871197

namespace A095713

/-- `A138073(Δ[n²]-(n-C(∑[char[∑[n]]], 2)))` -/
def P7593768630170871197.Spec : Prop :=
  ∀ n, P7593768630170871197.a n = A095713 (n + 1)

end A095713

/-!
# A095714: Numbers k such that 9*R_k - 8 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A095714, there is no canonical definition to state claims against.
-/

/-! ## A095714.P4369398445041732911

`A056696(n+1)+1`
-/

namespace A095714.P4369398445041732911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056696 (n + 1) + 1

end

end A095714.P4369398445041732911

/-! ## A095714.P17792068414496681962

`or(1, A056696(-xor(n, -1)))`
-/

namespace A095714.P17792068414496681962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056696 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A095714.P17792068414496681962

/-! ## A095714.P833665400848980445

`or(1, A056696(A291769(n)))`
-/

namespace A095714.P833665400848980445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056696 (A291769 n).toNat)

end

end A095714.P833665400848980445

/-! ## A095714.P4260254079374354525

`or(1, A056696(A348553(n)))`
-/

namespace A095714.P4260254079374354525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056696 (A348553 n).toNat)

end

end A095714.P4260254079374354525

/-! ## A095714.P6261646097086368898

`or(1, A056696(A008619(2*n)))`
-/

namespace A095714.P6261646097086368898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056696 (A008619 (2 * n)).toNat)

end

end A095714.P6261646097086368898

/-!
# A095715: Triangle of numbers obtained by reversing the first n digits of 1/phi and juxtaposing (phi denotes the golden ratio: A001622).

The programs for A095715, the canonical program `A095715.P4979844699181308193` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095715 has offset 1).

The definition of A095715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095715.P13395631060058259555

`A095713(n+1)-char[∑[n-1]]`
-/

namespace A095715.P13395631060058259555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095715.P13395631060058259555

namespace A095715

/-- `A095713(n+1)-char[∑[n-1]]` -/
def P13395631060058259555.Spec : Prop :=
  ∀ n, P13395631060058259555.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P7496228248654348517

`A001622(C(comp[∑[n]]-n, 2)-(n+1))-char[∑[n-1]]`
-/

namespace A095715.P7496228248654348517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1) + 1) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095715.P7496228248654348517

namespace A095715

/-- `A001622(C(comp[∑[n]]-n, 2)-(n+1))-char[∑[n-1]]` -/
def P7496228248654348517.Spec : Prop :=
  ∀ n, P7496228248654348517.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P4979844699181308193

`A023532(n)*A095713(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095715

/-- `A023532(n)*A095713(n+1)` -/
def P4979844699181308193.Spec : Prop :=
  ∀ n, P4979844699181308193.a n = A095715 (n + 1)

theorem P4979844699181308193.correct : P4979844699181308193.Spec := by
  intro n
  simp only [A095715, Nat.add_sub_cancel]

end A095715

/-! ## A095715.P120650029111501233

`xor(A023531(n), A095713(n+1))`
-/

namespace A095715.P120650029111501233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023531 n) (A095713 (n + 1))

end

end A095715.P120650029111501233

namespace A095715

/-- `xor(A023531(n), A095713(n+1))` -/
def P120650029111501233.Spec : Prop :=
  ∀ n, P120650029111501233.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P12806121970040014776

`xor(Δ[A003056(n)], A095713(n+1))`
-/

namespace A095715.P12806121970040014776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A095713 (n + 1))

end

end A095715.P12806121970040014776

namespace A095715

/-- `xor(Δ[A003056(n)], A095713(n+1))` -/
def P12806121970040014776.Spec : Prop :=
  ∀ n, P12806121970040014776.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P3143967976822995708

`A001622(A025581(n))-char[∑[n-1]]`
-/

namespace A095715.P3143967976822995708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A025581 n).toNat + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095715.P3143967976822995708

namespace A095715

/-- `A001622(A025581(n))-char[∑[n-1]]` -/
def P3143967976822995708.Spec : Prop :=
  ∀ n, P3143967976822995708.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P2884911864064643064

`char[A007401(n+1)]*A095713(n+1)`
-/

namespace A095715.P2884911864064643064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A095713 (n + 1)

end

end A095715.P2884911864064643064

namespace A095715

/-- `char[A007401(n+1)]*A095713(n+1)` -/
def P2884911864064643064.Spec : Prop :=
  ∀ n, P2884911864064643064.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P12429845117844851593

`and(Δ[A061579(n)], A095713(n+1))`
-/

namespace A095715.P12429845117844851593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A095713 (n + 1))

end

end A095715.P12429845117844851593

namespace A095715

/-- `and(Δ[A061579(n)], A095713(n+1))` -/
def P12429845117844851593.Spec : Prop :=
  ∀ n, P12429845117844851593.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P3064461893810689197

`xor(Δ[A002024(n+1)], A095713(n+1))`
-/

namespace A095715.P3064461893810689197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A095713 (n + 1))

end

end A095715.P3064461893810689197

namespace A095715

/-- `xor(Δ[A002024(n+1)], A095713(n+1))` -/
def P3064461893810689197.Spec : Prop :=
  ∀ n, P3064461893810689197.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P5892493480526566750

`xor(Δ[A003057(n+2)], A095713(n+1))`
-/

namespace A095715.P5892493480526566750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A095713 (n + 1))

end

end A095715.P5892493480526566750

namespace A095715

/-- `xor(Δ[A003057(n+2)], A095713(n+1))` -/
def P5892493480526566750.Spec : Prop :=
  ∀ n, P5892493480526566750.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P8831642547355330818

`A001221(Δ[A001614(n+1)])*A095713(n+1)`
-/

namespace A095715.P8831642547355330818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat * A095713 (n + 1)

end

end A095715.P8831642547355330818

namespace A095715

/-- `A001221(Δ[A001614(n+1)])*A095713(n+1)` -/
def P8831642547355330818.Spec : Prop :=
  ∀ n, P8831642547355330818.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P8119024852806067887

`∑{e}[A130321(n), A001622(#)]`
-/

namespace A095715.P8119024852806067887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001622 (Nat.factorization (f1 n).natAbs p + 1)

end

end A095715.P8119024852806067887

namespace A095715

/-- `∑{e}[A130321(n), A001622(#)]` -/
def P8119024852806067887.Spec : Prop :=
  ∀ n, P8119024852806067887.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P175927155184430977

`∑{e}[A130321(n), A104457(#)]`
-/

namespace A095715.P175927155184430977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A104457 (Nat.factorization (f1 n).natAbs p + 1)

end

end A095715.P175927155184430977

namespace A095715

/-- `∑{e}[A130321(n), A104457(#)]` -/
def P175927155184430977.Spec : Prop :=
  ∀ n, P175927155184430977.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P15620994266829763723

`∑{e}[A130321(n), A296184(#)]`
-/

namespace A095715.P15620994266829763723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A296184 (Nat.factorization (f1 n).natAbs p + 1)

end

end A095715.P15620994266829763723

namespace A095715

/-- `∑{e}[A130321(n), A296184(#)]` -/
def P15620994266829763723.Spec : Prop :=
  ∀ n, P15620994266829763723.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P4058312161259301423

`∑{e}[sqrt(A262616(n)), A104457(#)]`
-/

namespace A095715.P4058312161259301423
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A104457 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A095715.P4058312161259301423

namespace A095715

/-- `∑{e}[sqrt(A262616(n)), A104457(#)]` -/
def P4058312161259301423.Spec : Prop :=
  ∀ n, P4058312161259301423.a n = A095715 (n + 1)

end A095715

/-! ## A095715.P10617595142217971097

`A001221(A130321(n))*A095713(n+1)`
-/

namespace A095715.P10617595142217971097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130321 n).toNat * A095713 (n + 1)

end

end A095715.P10617595142217971097

namespace A095715

/-- `A001221(A130321(n))*A095713(n+1)` -/
def P10617595142217971097.Spec : Prop :=
  ∀ n, P10617595142217971097.a n = A095715 (n + 1)

end A095715

/-!
# A095716: a(n) = integer nearest Pi*a(n-1), where a(0) = 1.

The programs for A095716, the canonical program `A095716.P11811494266354555779` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095716 has offset 0).

The definition of A095716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095716.P11811494266354555779

`round(π*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095716

/-- `round(π*a(n-1))` -/
def P11811494266354555779.Spec : Prop :=
  ∀ n, P11811494266354555779.a n = A095716 n

theorem P11811494266354555779.correct : P11811494266354555779.Spec := by
  intro n
  simp only [A095716]

end A095716

/-! ## A095716.P17832033770820398245

`round(a(n-1)*acos(-1))` with `a(0)=1`
-/

namespace A095716.P17832033770820398245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) * Real.arccos (-1 : ℝ))

end

end A095716.P17832033770820398245

namespace A095716

/-- `round(a(n-1)*acos(-1))` -/
def P17832033770820398245.Spec : Prop :=
  ∀ n, P17832033770820398245.a n = A095716 n

end A095716

/-! ## A095716.P6964475553716432018

`round(2*a(n-1)*acos(0))` with `a(0)=1`
-/

namespace A095716.P6964475553716432018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((2 * a (n - 1) : ℝ) * Real.arccos (0 : ℝ))

end

end A095716.P6964475553716432018

namespace A095716

/-- `round(2*a(n-1)*acos(0))` -/
def P6964475553716432018.Spec : Prop :=
  ∀ n, P6964475553716432018.a n = A095716 n

end A095716

/-! ## A095716.P10048562219517724911

`round((a(n-1)+a(n-1))*asin(1))` with `a(0)=1`
-/

namespace A095716.P10048562219517724911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) + a (n - 1) : ℝ) * Real.arcsin (1 : ℝ))

end

end A095716.P10048562219517724911

namespace A095716

/-- `round((a(n-1)+a(n-1))*asin(1))` -/
def P10048562219517724911.Spec : Prop :=
  ∀ n, P10048562219517724911.a n = A095716 n

end A095716

/-! ## A095716.P13705326496359243171

`round(2*a(n-1)*acot(C(2, n+2)))` with `a(0)=1`
-/

namespace A095716.P13705326496359243171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((2 * a (n - 1) : ℝ) * SequenceMachineLib.acot (Nat.choose 2 (n + 2) : ℝ))

end

end A095716.P13705326496359243171

namespace A095716

/-- `round(2*a(n-1)*acot(C(2, n+2)))` -/
def P13705326496359243171.Spec : Prop :=
  ∀ n, P13705326496359243171.a n = A095716 n

end A095716

/-! ## A095716.P15919798290287898777

`round(2*a(n-1)*acot(A000038(n)))` with `a(0)=1`
-/

namespace A095716.P15919798290287898777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((2 * a (n - 1) : ℝ) * SequenceMachineLib.acot (A000038 n : ℝ))

end

end A095716.P15919798290287898777

namespace A095716

/-- `round(2*a(n-1)*acot(A000038(n)))` -/
def P15919798290287898777.Spec : Prop :=
  ∀ n, P15919798290287898777.a n = A095716 n

end A095716

/-!
# A095717: "Second order" highly composite numbers: the gap between the number of divisors (d(n)) rises to a new record.

The programs for A095717, there is no canonical definition to state claims against.
-/

/-! ## A095717.P12372811721731326025

`A299160(A299816(n+1))`
-/

namespace A095717.P12372811721731326025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299160 (A299816 (n + 1)).toNat

end

end A095717.P12372811721731326025

/-! ## A095717.P13611335965889456135

`filter[A226899(n+1), A051105(#)]`
-/

namespace A095717.P13611335965889456135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051105 (f1 j).toNat = 1) n)

end

end A095717.P13611335965889456135

/-!
# A095718: a(n) = Sum_{k=0..n} floor(binomial(n,k)/(k+1)).

The programs for A095718, there is no canonical definition to state claims against.
-/

/-! ## A095718.P14610208641264447681

`A186734(A017986(n))+A001037(n+2)`
-/

namespace A095718.P14610208641264447681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186734 (A017986 n).toNat + A001037 (n + 2)

end

end A095718.P14610208641264447681

/-! ## A095718.P17324403456813675848

`A349797(A001037(n))+A001037(n+2)`
-/

namespace A095718.P17324403456813675848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A001037 n).toNat + A001037 (n + 2)

end

end A095718.P17324403456813675848

/-! ## A095718.P10831287451225977976

`A059966(n+2)+A025457(A001783(n+1))`
-/

namespace A095718.P10831287451225977976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 2) + A025457 (A001783 (n + 1)).toNat

end

end A095718.P10831287451225977976

/-! ## A095718.P14489971361313391049

`A339172(A026998(3*n+2))+A001037(n+2)`
-/

namespace A095718.P14489971361313391049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339172 (A026998 (3 * n + 2)).toNat + A001037 (n + 2)

end

end A095718.P14489971361313391049

/-! ## A095718.P6367750430165787022

`A082482(n+2)-A362240(A000041(3*(n+1)))`
-/

namespace A095718.P6367750430165787022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 2) - A362240 (A000041 (3 * (n + 1))).toNat

end

end A095718.P6367750430165787022

/-!
# A095719: a(n) = Sum_{k = 0..floor(n/2)} floor(C(n-k,k)/(k+1)).

The programs for A095719, there is no canonical definition to state claims against.
-/

/-! ## A095719.P17412780059849413251

`or(A006206(n+3), A010059(A334488(n+1)))`
-/

namespace A095719.P17412780059849413251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006206 (n + 3)) (A010059 (A334488 (n + 1)).toNat)

end

end A095719.P17412780059849413251

/-! ## A095719.P3751636800997054884

`A340583(A000124(n))+A173173(n)`
-/

namespace A095719.P3751636800997054884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340583 (A000124 n).toNat + A173173 n

end

end A095719.P3751636800997054884

/-! ## A095719.P11672019950399283442

`A057561(A027959(n+1))`
-/

namespace A095719.P11672019950399283442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A027959 (n + 1)).toNat

end

end A095719.P11672019950399283442

/-! ## A095719.P14088700868232338507

`A391618(A026395(n+1))`
-/

namespace A095719.P14088700868232338507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A026395 (n + 1)).toNat

end

end A095719.P14088700868232338507

/-! ## A095719.P160006047725261286

`A003002(A056295(n+2))`
-/

namespace A095719.P160006047725261286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A056295 (n + 2)).toNat

end

end A095719.P160006047725261286

/-!
# A095722: E.g.f.: exp(x)/(1-x)^8.

The programs for A095722, there is no canonical definition to state claims against.
-/

/-! ## A095722.P3698412364984571699

`Δ[A096341(n)/7]`
-/

namespace A095722.P3698412364984571699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096341 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095722.P3698412364984571699

/-! ## A095722.P10722692600684611513

`A143409(eq[7, A002262(n)])`
-/

namespace A095722.P10722692600684611513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095722.P10722692600684611513

/-! ## A095722.P4669996456464945405

`A143409(eq[7, A144328(n+1)])`
-/

namespace A095722.P4669996456464945405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095722.P4669996456464945405

/-! ## A095722.P13416993412335882405

`A143409(eq[8, A002260(n+1)])`
-/

namespace A095722.P13416993412335882405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095722.P13416993412335882405

/-! ## A095722.P7568252350935693137

`A143409(A000124(n+14)-A016993(n+10))`
-/

namespace A095722.P7568252350935693137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A000124 (n + 14) - A016993 (n + 10)).toNat

end

end A095722.P7568252350935693137

/-!
# A095724: Fixed points of 1+Phi power sigma function 1PhiPsigma: integers m such that 1PhiPsigma(m) = m, where for j = Product p_i^r_i, 1PhiPsigma(j) = Product_i Sum_{0 <= s_i <= r_i, s_i is 0 or coprime to r_i} p_i^s_i.

The programs for A095724, there is no canonical definition to state claims against.
-/

/-! ## A095724.P8007699254292792655

`A383428(A091689(n+1))`
-/

namespace A095724.P8007699254292792655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383428 (A091689 (n + 1)).toNat

end

end A095724.P8007699254292792655

/-!
# A095725: Where records occur in numerators of Kepler's tree of harmonic fractions (A093873).

The programs for A095725, there is no canonical definition to state claims against.
-/

/-! ## A095725.P14196132418371838537

`A095727(n)+a(n-1)` with `a(0)=1`
-/

namespace A095725.P14196132418371838537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095727 n + a (n - 1)

end

end A095725.P14196132418371838537

/-! ## A095725.P13946179571186109257

`∑[A095727(round(sqrt(n²+1)))]-3`
-/

namespace A095725.P13946179571186109257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095727 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A095725.P13946179571186109257

/-! ## A095725.P3294972685473980702

`A065270(A095726(n+1))`
-/

namespace A095725.P3294972685473980702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065270 (A095726 (n + 1)).toNat

end

end A095725.P3294972685473980702

/-! ## A095725.P17694886879492007126

`A133090(A095726(n+1)+1)`
-/

namespace A095725.P17694886879492007126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (A095726 (n + 1) + 1).toNat

end

end A095725.P17694886879492007126

/-! ## A095725.P9331745733485663192

`A004273(or(1, A095726(n+1)))`
-/

namespace A095725.P9331745733485663192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.lor 1 (A095726 (n + 1))).toNat

end

end A095725.P9331745733485663192

/-! ## A095725.P14773179960926702771

`A042948(or(1, A095726(n+1)))`
-/

namespace A095725.P14773179960926702771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (Int.lor 1 (A095726 (n + 1))).toNat

end

end A095725.P14773179960926702771

/-! ## A095725.P8747777452628040130

`A004277(or(1, A095726(n+1)))-1`
-/

namespace A095725.P8747777452628040130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lor 1 (A095726 (n + 1))).toNat - 1

end

end A095725.P8747777452628040130

/-! ## A095725.P794358987231255147

`A005408(or(1, A095726(n+1))-1)`
-/

namespace A095725.P794358987231255147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.lor 1 (A095726 (n + 1)) - 1).toNat

end

end A095725.P794358987231255147

/-! ## A095725.P8187046210266965140

`A005843(or(1, A095726(n+1)))-1`
-/

namespace A095725.P8187046210266965140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor 1 (A095726 (n + 1))).toNat - 1

end

end A095725.P8187046210266965140

/-! ## A095725.P12222149984433661842

`A130823(or(1, 3*A095726(n+1)))`
-/

namespace A095725.P12222149984433661842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (Int.lor 1 (3 * A095726 (n + 1))).toNat

end

end A095725.P12222149984433661842

/-!
# A095726: Location of records in denominators of Kepler's tree of harmonic fractions.

The programs for A095726, there is no canonical definition to state claims against.
-/

/-! ## A095726.P11889885411035271632

`∑[A095728(floor(acot(n)+n))]`
-/

namespace A095726.P11889885411035271632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095728 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095726.P11889885411035271632

/-! ## A095726.P16013640287397142799

`A095728(n)+a(n-1)` with `a(0)=1`
-/

namespace A095726.P16013640287397142799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095728 n + a (n - 1)

end

end A095726.P16013640287397142799

/-! ## A095726.P16693641933008196917

`∑[A095728(round(sqrt(n²+1)))]`
-/

namespace A095726.P16693641933008196917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095728 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095726.P16693641933008196917

/-! ## A095726.P7094281826326563865

`∑[A095728(abs(1-n)+1)]-1`
-/

namespace A095726.P7094281826326563865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095728 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A095726.P7094281826326563865

/-! ## A095726.P7918823626686217410

`∑[A095728(n)-A025436(a(n-1))]` with `a(0)=1`
-/

namespace A095726.P7918823626686217410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A095728 n - A025436 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095726.P7918823626686217410

/-! ## A095726.P16164964188659478371

`A065269(A095725(n+1))`
-/

namespace A095726.P16164964188659478371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065269 (A095725 (n + 1)).toNat

end

end A095726.P16164964188659478371

/-! ## A095726.P9021976220472014376

`A092533(A095725(n+1)+1)`
-/

namespace A095726.P9021976220472014376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A095725 (n + 1) + 1).toNat

end

end A095726.P9021976220472014376

/-! ## A095726.P16431325687351638798

`A123108(A095725(n+1)-1)`
-/

namespace A095726.P16431325687351638798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A095725 (n + 1) - 1).toNat

end

end A095726.P16431325687351638798

/-! ## A095726.P7480675354047851701

`and((A095725(n+1)+1)/2, A134067(n))`
-/

namespace A095726.P7480675354047851701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A095725 (n + 1) + 1 : ℚ) / 2)) (A134067 n)

end

end A095726.P7480675354047851701

/-!
# A095727: First differences of A095725 (records in numerators of Kepler's tree).

The programs for A095727, there is no canonical definition to state claims against.
-/

/-! ## A095727.P1980948990637587929

`2*lcm(2, A095728(n+1))`
-/

namespace A095727.P1980948990637587929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm 2 (A095728 (n + 1))

end

end A095727.P1980948990637587929

/-! ## A095727.P14165606855790964520

`2*A095728(floor(acot(n)+n)+1)`
-/

namespace A095727.P14165606855790964520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095728 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat

end

end A095727.P14165606855790964520

/-! ## A095727.P9193560685816227554

`2*A095728(round(sqrt(n²+1))+1)`
-/

namespace A095727.P9193560685816227554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095728 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A095727.P9193560685816227554

/-! ## A095727.P14896519368964399927

`4*A095728(round(acot(n+1)+n)+1)/2`
-/

namespace A095727.P14896519368964399927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A095728 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)) + 1).toNat : ℚ) / 2

end

end A095727.P14896519368964399927

/-! ## A095727.P4566511433644814006

`A382154(A095728(n+1))`
-/

namespace A095727.P4566511433644814006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382154 (A095728 (n + 1)).toNat

end

end A095727.P4566511433644814006

/-! ## A095727.P10375811620587455685

`A168273(A095728(n+1)+1)`
-/

namespace A095727.P10375811620587455685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (A095728 (n + 1) + 1).toNat

end

end A095727.P10375811620587455685

/-! ## A095727.P1843492538933527804

`A109045(2*A095728(n+1))`
-/

namespace A095727.P1843492538933527804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 (2 * A095728 (n + 1)).toNat

end

end A095727.P1843492538933527804

/-! ## A095727.P3758613232479642083

`A004277(lcm(2, A095728(n+1)))`
-/

namespace A095727.P3758613232479642083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm 2 (A095728 (n + 1)))

end

end A095727.P3758613232479642083

/-! ## A095727.P16960339566750286467

`2*(A095728(n+1)+A000007(n))`
-/

namespace A095727.P16960339566750286467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A095728 (n + 1) + A000007 n)

end

end A095727.P16960339566750286467

/-! ## A095727.P17102803898478123782

`2*A095728(n+1)*A000010(C(2, n+1)+1)`
-/

namespace A095727.P17102803898478123782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095728 (n + 1) * A000010 (Nat.choose 2 (n + 1) + 1)

end

end A095727.P17102803898478123782

/-!
# A095728: First differences of A095726 (records in denominators of Kepler's tree).

The programs for A095728, there is no canonical definition to state claims against.
-/

/-! ## A095728.P7268555783269857754

`A095727(n+1)/(floor(acot(n)²)+2)`
-/

namespace A095728.P7268555783269857754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095727 (n + 1) : ℚ) / (⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + 2 : ℚ)

end

end A095728.P7268555783269857754

/-! ## A095728.P11039978128424950584

`A095727(n+1)/(A000038(n)+2)`
-/

namespace A095728.P11039978128424950584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095727 (n + 1) : ℚ) / (A000038 n + 2 : ℚ)

end

end A095728.P11039978128424950584

/-! ## A095728.P13638356478061802558

`A095727(n+1)/2-A000007(n)`
-/

namespace A095728.P13638356478061802558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095727 (n + 1) : ℚ) / 2 - (A000007 n : ℚ)

end

end A095728.P13638356478061802558

/-! ## A095728.P877481261586960656

`A095727(n+1)/2-A151933(n)`
-/

namespace A095728.P877481261586960656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095727 (n + 1) : ℚ) / 2 - (A151933 n : ℚ)

end

end A095728.P877481261586960656

/-! ## A095728.P10986298263120015906

`A130472(A095727(n+1)/ceil(acot(n)))`
-/

namespace A095728.P10986298263120015906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (SequenceMachineLib.roundAway ((A095727 (n + 1) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat

end

end A095728.P10986298263120015906

/-! ## A095728.P16939929485909084818

`A095727(a(A008683(4*n))+n)/2` with `a(0)=1`
-/

namespace A095728.P16939929485909084818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A095727 (SequenceMachineLib.roundAway (a (A008683 (4 * n)).toNat + (n : ℚ))).toNat : ℚ) / 2

end

end A095728.P16939929485909084818

/-! ## A095728.P14612351729228687155

`A110654(A095727(n+1)^floor(atan(n+1)))`
-/

namespace A095728.P14612351729228687155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A095727 (n + 1) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ))).toNat

end

end A095728.P14612351729228687155

/-! ## A095728.P12367385937935686490

`A095727(n+1)/2-A008683((n+1)²)`
-/

namespace A095728.P12367385937935686490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095727 (n + 1) : ℚ) / 2 - (A008683 ((n + 1) ^ 2) : ℚ)

end

end A095728.P12367385937935686490

/-! ## A095728.P18016754299899863080

`A095727(n+1)/A004277(ceil(2/(n+1)))`
-/

namespace A095728.P18016754299899863080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095727 (n + 1) : ℚ) / (A004277 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A095728.P18016754299899863080

/-! ## A095728.P5054344392144416644

`A095727(n+1)/2-val(A000040(n+1), 2)`
-/

namespace A095728.P5054344392144416644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095727 (n + 1) : ℚ) / 2 - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℚ)

end

end A095728.P5054344392144416644

/-!
# A095729: A002260 squared, as an infinite lower triangular matrix, read by rows.

The programs for A095729, the canonical program `A095729.P4795337716615768616` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095729 has offset 1).

The definition of A095729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095729.P9270696162879529606

`(1-C(∑[char[∑[n]]], 2)+n)*A049777(n+1)`
-/

namespace A095729.P9270696162879529606
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A049777 (n + 1)

end

end A095729.P9270696162879529606

namespace A095729

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A049777(n+1)` -/
def P9270696162879529606.Spec : Prop :=
  ∀ n, P9270696162879529606.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P9501311870846065186

`(1-C(∑[char[∑[n]]], 2)+n)*A205376(n+1)/8`
-/

namespace A095729.P9501311870846065186
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ) * ((A205376 (n + 1) : ℚ) / 8)

end

end A095729.P9501311870846065186

namespace A095729

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A205376(n+1)/8` -/
def P9501311870846065186.Spec : Prop :=
  ∀ n, P9501311870846065186.a n = (A095729 (n + 1) : ℚ)

end A095729

/-! ## A095729.P4795337716615768616

`A002260(n+1)*A049777(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A095729

/-- `A002260(n+1)*A049777(n+1)` -/
def P4795337716615768616.Spec : Prop :=
  ∀ n, P4795337716615768616.a n = A095729 (n + 1)

theorem P4795337716615768616.correct : P4795337716615768616.Spec := by
  intro n
  simp only [A095729, Nat.add_sub_cancel]

end A095729

/-! ## A095729.P7760202317528498016

`(A002262(n)+1)*A049777(n+1)`
-/

namespace A095729.P7760202317528498016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A049777 (n + 1)

end

end A095729.P7760202317528498016

namespace A095729

/-- `(A002262(n)+1)*A049777(n+1)` -/
def P7760202317528498016.Spec : Prop :=
  ∀ n, P7760202317528498016.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P12431603899658238118

`2*A107985(n)-A104633(n+1)`
-/

namespace A095729.P12431603899658238118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107985 n - A104633 (n + 1)

end

end A095729.P12431603899658238118

namespace A095729

/-- `2*A107985(n)-A104633(n+1)` -/
def P12431603899658238118.Spec : Prop :=
  ∀ n, P12431603899658238118.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P9183974047371756653

`abs(A049777(n+1)*A140756(n+1))`
-/

namespace A095729.P9183974047371756653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049777 (n + 1) * A140756 (n + 1)|

end

end A095729.P9183974047371756653

namespace A095729

/-- `abs(A049777(n+1)*A140756(n+1))` -/
def P9183974047371756653.Spec : Prop :=
  ∀ n, P9183974047371756653.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P13664936275892960260

`A000720(A037126(n+1))*A049777(n+1)`
-/

namespace A095729.P13664936275892960260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 (n + 1)).toNat * A049777 (n + 1)

end

end A095729.P13664936275892960260

namespace A095729

/-- `A000720(A037126(n+1))*A049777(n+1)` -/
def P13664936275892960260.Spec : Prop :=
  ∀ n, P13664936275892960260.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P15280858242315750087

`(A271668(n)+1-A002260(n+1))*A002260(n+1)`
-/

namespace A095729.P15280858242315750087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271668 n + (1 - A002260 (n + 1))) * A002260 (n + 1)

end

end A095729.P15280858242315750087

namespace A095729

/-- `(A271668(n)+1-A002260(n+1))*A002260(n+1)` -/
def P15280858242315750087.Spec : Prop :=
  ∀ n, P15280858242315750087.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P3752359064073133802

`(1-C(∑[char[∑[n]]], 2)+n)*A141419(∑[char[∑[n]]]²-n)`
-/

namespace A095729.P3752359064073133802
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A141419 ((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 - n)

end

end A095729.P3752359064073133802

namespace A095729

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A141419(∑[char[∑[n]]]²-n)` -/
def P3752359064073133802.Spec : Prop :=
  ∀ n, P3752359064073133802.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P10488987684415761668

`A004736(A038722(n+1))*A141419(A038722(n+1))`
-/

namespace A095729.P10488987684415761668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A141419 (A038722 (n + 1)).toNat

end

end A095729.P10488987684415761668

namespace A095729

/-- `A004736(A038722(n+1))*A141419(A038722(n+1))` -/
def P10488987684415761668.Spec : Prop :=
  ∀ n, P10488987684415761668.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P1898829604701981620

`A002260(n+1)*A049780(A007401(n+1))`
-/

namespace A095729.P1898829604701981620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A049780 (A007401 (n + 1)).toNat

end

end A095729.P1898829604701981620

namespace A095729

/-- `A002260(n+1)*A049780(A007401(n+1))` -/
def P1898829604701981620.Spec : Prop :=
  ∀ n, P1898829604701981620.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P11609171657987510156

`A144334(A080036(n+1))`
-/

namespace A095729.P11609171657987510156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144334 (A080036 (n + 1)).toNat

end

end A095729.P11609171657987510156

namespace A095729

/-- `A144334(A080036(n+1))` -/
def P11609171657987510156.Spec : Prop :=
  ∀ n, P11609171657987510156.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P11468080505731780586

`A049777(n+1)*A097285(Δ[n²])`
-/

namespace A095729.P11468080505731780586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) * A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A095729.P11468080505731780586

namespace A095729

/-- `A049777(n+1)*A097285(Δ[n²])` -/
def P11468080505731780586.Spec : Prop :=
  ∀ n, P11468080505731780586.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P1923466255445457314

`A384125(n+1)+A127779(n+1)`
-/

namespace A095729.P1923466255445457314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384125 (n + 1) + A127779 (n + 1)

end

end A095729.P1923466255445457314

namespace A095729

/-- `A384125(n+1)+A127779(n+1)` -/
def P1923466255445457314.Spec : Prop :=
  ∀ n, P1923466255445457314.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P1995915280242872974

`A112367(n)+A110769(n+1)`
-/

namespace A095729.P1995915280242872974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A110769 (n + 1)

end

end A095729.P1995915280242872974

namespace A095729

/-- `A112367(n)+A110769(n+1)` -/
def P1995915280242872974.Spec : Prop :=
  ∀ n, P1995915280242872974.a n = A095729 (n + 1)

end A095729

/-! ## A095729.P3578971409765327325

`A000005(A059268(n))*A049777(n+1)`
-/

namespace A095729.P3578971409765327325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A049777 (n + 1)

end

end A095729.P3578971409765327325

namespace A095729

/-- `A000005(A059268(n))*A049777(n+1)` -/
def P3578971409765327325.Spec : Prop :=
  ∀ n, P3578971409765327325.a n = A095729 (n + 1)

end A095729

/-!
# A095730: Primes p whose Zeckendorf-expansion A014417(p) is palindromic.

The programs for A095730, there is no canonical definition to state claims against.
-/

/-! ## A095730.P14663427558173627279

`p?[A094202(n+1)]`
-/

namespace A095730.P14663427558173627279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095730.P14663427558173627279

/-! ## A095730.P15478347442913488352

`record[p?[A094202(A052938(n))]]`
-/

namespace A095730.P15478347442913488352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095730.P15478347442913488352

/-! ## A095730.P14016386977747648641

`record[p?[A094202(A133310(n))]]`
-/

namespace A095730.P14016386977747648641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095730.P14016386977747648641

/-! ## A095730.P18040881827341006095

`record[p?[A094202(A141256(n))]]`
-/

namespace A095730.P18040881827341006095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095730.P18040881827341006095

/-! ## A095730.P8973842243975313867

`record[p?[A094202(A328399(n))]]`
-/

namespace A095730.P8973842243975313867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095730.P8973842243975313867

/-!
# A095733: 

The programs for A095733, there is no canonical definition to state claims against.
-/

/-! ## A095733.P13673692088074060342

`A014417(A095730(n+1))`
-/

namespace A095733.P13673692088074060342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A095730 (n + 1)).toNat

end

end A095733.P13673692088074060342

/-!
# A095734: Asymmetricity-index for Zeckendorf-expansion A014417(n) of n.

The programs for A095734, the canonical program `A095734.P14823570990900498020` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095734 has offset 0).

The definition of A095734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095734.P5630261875060223170

`A037888(A003714(floor(acot(n)+n)))`
-/

namespace A095734.P5630261875060223170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A003714 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A095734.P5630261875060223170

namespace A095734

/-- `A037888(A003714(floor(acot(n)+n)))` -/
def P5630261875060223170.Spec : Prop :=
  ∀ n, P5630261875060223170.a n = A095734 n

end A095734

/-! ## A095734.P16197117478849035211

`A037888(A003714(round(sqrt(n²+1))))`
-/

namespace A095734.P16197117478849035211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A003714 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A095734.P16197117478849035211

namespace A095734

/-- `A037888(A003714(round(sqrt(n²+1))))` -/
def P16197117478849035211.Spec : Prop :=
  ∀ n, P16197117478849035211.a n = A095734 n

end A095734

/-! ## A095734.P7351576186903892284

`A037888(A003714(n)^ceil(sin(n)²))`
-/

namespace A095734.P7351576186903892284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (SequenceMachineLib.roundAway ((A003714 n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A095734.P7351576186903892284

namespace A095734

/-- `A037888(A003714(n)^ceil(sin(n)²))` -/
def P7351576186903892284.Spec : Prop :=
  ∀ n, P7351576186903892284.a n = A095734 n

end A095734

/-! ## A095734.P14823570990900498020

`A037888(A003714(n)+A000007(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A095734

/-- `A037888(A003714(n)+A000007(n))` -/
def P14823570990900498020.Spec : Prop :=
  ∀ n, P14823570990900498020.a n = A095734 n

theorem P14823570990900498020.correct : P14823570990900498020.Spec := by
  intro n
  simp only [A095734]

end A095734

/-! ## A095734.P18290276788654579654

`A007895(n)-A159780(A003714(n))`
-/

namespace A095734.P18290276788654579654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n - A159780 (A003714 n).toNat

end

end A095734.P18290276788654579654

namespace A095734

/-- `A007895(n)-A159780(A003714(n))` -/
def P18290276788654579654.Spec : Prop :=
  ∀ n, P18290276788654579654.a n = A095734 n

end A095734

/-! ## A095734.P17242778874191269835

`A037888(or(A000007(n), A003714(n)))`
-/

namespace A095734.P17242778874191269835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (Int.lor (A000007 n) (A003714 n)).toNat

end

end A095734.P17242778874191269835

namespace A095734

/-- `A037888(or(A000007(n), A003714(n)))` -/
def P17242778874191269835.Spec : Prop :=
  ∀ n, P17242778874191269835.a n = A095734 n

end A095734

/-! ## A095734.P12690699291863608891

`A037888(xor(A000007(n), A003714(n)))`
-/

namespace A095734.P12690699291863608891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (Int.xor (A000007 n) (A003714 n)).toNat

end

end A095734.P12690699291863608891

namespace A095734

/-- `A037888(xor(A000007(n), A003714(n)))` -/
def P12690699291863608891.Spec : Prop :=
  ∀ n, P12690699291863608891.a n = A095734 n

end A095734

/-! ## A095734.P13370845020083477607

`A037888(abs(A000007(n)-A003714(n)))`
-/

namespace A095734.P13370845020083477607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 |A000007 n - A003714 n|.toNat

end

end A095734.P13370845020083477607

namespace A095734

/-- `A037888(abs(A000007(n)-A003714(n)))` -/
def P13370845020083477607.Spec : Prop :=
  ∀ n, P13370845020083477607.a n = A095734 n

end A095734

/-! ## A095734.P13041292030953622263

`A037888(A003714(n)+char[A123654(n+1)])`
-/

namespace A095734.P13041292030953622263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123654 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A003714 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A095734.P13041292030953622263

namespace A095734

/-- `A037888(A003714(n)+char[A123654(n+1)])` -/
def P13041292030953622263.Spec : Prop :=
  ∀ n, P13041292030953622263.a n = A095734 n

end A095734

/-! ## A095734.P2583970402014834293

`A037888(A151878(n)+A003714(n))`
-/

namespace A095734.P2583970402014834293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A151878 n + A003714 n).toNat

end

end A095734.P2583970402014834293

namespace A095734

/-- `A037888(A151878(n)+A003714(n))` -/
def P2583970402014834293.Spec : Prop :=
  ∀ n, P2583970402014834293.a n = A095734 n

end A095734

/-!
# A095736: Numbers with binary weight (A000120) <= 3.

The programs for A095736, there is no canonical definition to state claims against.
-/

/-! ## A095736.P8797393697767943999

`∪[A078831(n+1), A151757(n+1)]`
-/

namespace A095736.P8797393697767943999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095736.P8797393697767943999

/-! ## A095736.P10478693052780440628

`lt[a(and(n, n-1))+1, 4]` with `a(0)=0`
-/

namespace A095736.P10478693052780440628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095736.P10478693052780440628

/-! ## A095736.P5637159773970405472

`lt[2*a(and(n, n-1)), 9]` with `a(0)=1`
-/

namespace A095736.P5637159773970405472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095736.P5637159773970405472

/-! ## A095736.P2203737102374389551

`lt[a(floor(n/2))+n%2, 5]` with `a(0)=1`
-/

namespace A095736.P2203737102374389551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095736.P2203737102374389551

/-! ## A095736.P13441751662609213069

`lt[n, gcd(2, n)*a(floor(n/2))]` with `a(0)=8`
-/

namespace A095736.P13441751662609213069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  Nat.gcd 2 n * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095736.P13441751662609213069

/-! ## A095736.P11422927496641239988

`lt[1-(val(n, 2)-a(n-1)), 4]` with `a(0)=0`
-/

namespace A095736.P11422927496641239988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - ((SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095736.P11422927496641239988

/-! ## A095736.P14664285878155175523

`lt[1-floor(-a(and(n, n-1))), 4]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A095736.P14664285878155175523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - (-f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095736.P14664285878155175523

/-! ## A095736.P13328784395928111649

`lt[1-round(-a(and(n, n-1))), 4]` with `a(0)=0, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A095736.P13328784395928111649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - (-f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095736.P13328784395928111649

/-! ## A095736.P5483015984859229493

`lt[lcm(n, 2*(a(n-1)+1))/n-1, 8]` with `a(0)=0`
-/

namespace A095736.P5483015984859229493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (2 * (f1 (n - 1) + 1))) : ℚ) / (n : ℚ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A095736.P5483015984859229493

/-! ## A095736.P17109123111205089405

`lt[A001316(n), 9]`
-/

namespace A095736.P17109123111205089405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095736.P17109123111205089405

/-! ## A095736.P13800693842098291558

`lt[A050315(n), 6]`
-/

namespace A095736.P13800693842098291558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095736.P13800693842098291558

/-! ## A095736.P3500432341417463363

`lt[A292601(A292601(n)), 3]`
-/

namespace A095736.P3500432341417463363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 (A292601 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095736.P3500432341417463363

/-! ## A095736.P6146970374373183197

`lt[n, A016825(A267584(n))]`
-/

namespace A095736.P6146970374373183197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A267584 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095736.P6146970374373183197

/-! ## A095736.P18213226822836941168

`eq[A254377(2*(n+1)), A288069(A001316(n))]`
-/

namespace A095736.P18213226822836941168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288069 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095736.P18213226822836941168

/-! ## A095736.P9588539947239252798

`lt[A256263(A006257(n)), 12]`
-/

namespace A095736.P9588539947239252798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (A006257 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095736.P9588539947239252798

/-! ## A095736.P997685282544702696

`lt[A000120(n), 4]`
-/

namespace A095736.P997685282544702696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095736.P997685282544702696

/-! ## A095736.P10375964845725450596

`lt[A088512(n), 4]`
-/

namespace A095736.P10375964845725450596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095736.P10375964845725450596

/-! ## A095736.P14095651663223079297

`lt[A048883(n), 48]`
-/

namespace A095736.P14095651663223079297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095736.P14095651663223079297

/-! ## A095736.P16418837150982233266

`lt[∑[A088705(n)]-2, 2]`
-/

namespace A095736.P16418837150982233266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A095736.P16418837150982233266

/-! ## A095736.P12917999037602018124

`lt[n, 2*A267584(2*n)]`
-/

namespace A095736.P12917999037602018124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267584 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095736.P12917999037602018124

/-!
# A095737: Numbers k such that 2^k-1 is divisible by abs(p^2-k^2-1) for some prime p.

The programs for A095737, there is no canonical definition to state claims against.
-/

/-! ## A095737.P2291082077619714253

`lt[A007279(A003415(n)), n]`
-/

namespace A095737.P2291082077619714253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007279 (A003415 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095737.P2291082077619714253

/-! ## A095737.P10869314220819838392

`record[A051664(A006368(n+1))]`
-/

namespace A095737.P10869314220819838392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A006368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095737.P10869314220819838392

/-! ## A095737.P832354054233163140

`record[A008472(A064579(n+1))]`
-/

namespace A095737.P832354054233163140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A064579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095737.P832354054233163140

/-! ## A095737.P1913743785221183394

`record[A051664(A033950(n+1))]`
-/

namespace A095737.P1913743785221183394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A033950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095737.P1913743785221183394

/-! ## A095737.P2490270503253449182

`record[A051664(A063080(n+1))]`
-/

namespace A095737.P2490270503253449182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A063080 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095737.P2490270503253449182

/-! ## A095737.P11240836999304508585

`record[A051664(A171126(n+1))]`
-/

namespace A095737.P11240836999304508585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A171126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095737.P11240836999304508585

/-! ## A095737.P7287048843484974363

`record[A318884(A084112(n+1))]`
-/

namespace A095737.P7287048843484974363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (A084112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095737.P7287048843484974363

/-! ## A095737.P14758751663854497002

`record[A033677(A019428(n)+2)]`
-/

namespace A095737.P14758751663854497002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A019428 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095737.P14758751663854497002

/-! ## A095737.P37782671616853553

`record[A318884(A006368(n+5))]`
-/

namespace A095737.P37782671616853553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (A006368 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095737.P37782671616853553

/-! ## A095737.P17118670668756443624

`∪[A125997(n+1), A240960(n+1)]`
-/

namespace A095737.P17118670668756443624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095737.P17118670668756443624

/-!
# A095738: Numbers that are coprime to sigma but are not prime powers.

The programs for A095738, the canonical program `A095738.P13403971810010986481` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095738 has offset 1).

The definition of A095738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095738.P13403971810010986481

`eq[1, A355816(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A095738

/-- `eq[1, A355816(n+1)]+1` -/
def P13403971810010986481.Spec : Prop :=
  ∀ n, (P13403971810010986481.a n : ℤ) = A095738 (n + 1)

theorem P13403971810010986481.correct : P13403971810010986481.Spec := by
  intro n
  simp only [A095738, Nat.add_sub_cancel]

end A095738

/-! ## A095738.P17977797600550161250

`filter[A003624(n+1), A355816(#)]`
-/

namespace A095738.P17977797600550161250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P17977797600550161250

namespace A095738

/-- `filter[A003624(n+1), A355816(#)]` -/
def P17977797600550161250.Spec : Prop :=
  ∀ n, P17977797600550161250.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P7034840227562827249

`filter[A014567(n+1), A355816(#)]`
-/

namespace A095738.P7034840227562827249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P7034840227562827249

namespace A095738

/-- `filter[A014567(n+1), A355816(#)]` -/
def P7034840227562827249.Spec : Prop :=
  ∀ n, P7034840227562827249.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P9608120346219232121

`eq[A074591(n+1), A325959(n+1)]+1`
-/

namespace A095738.P9608120346219232121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A095738.P9608120346219232121

namespace A095738

/-- `eq[A074591(n+1), A325959(n+1)]+1` -/
def P9608120346219232121.Spec : Prop :=
  ∀ n, (P9608120346219232121.a n : ℤ) = A095738 (n + 1)

end A095738

/-! ## A095738.P9117358643406921906

`eq[A074591(n+1), A325976(n+1)]+1`
-/

namespace A095738.P9117358643406921906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A095738.P9117358643406921906

namespace A095738

/-- `eq[A074591(n+1), A325976(n+1)]+1` -/
def P9117358643406921906.Spec : Prop :=
  ∀ n, (P9117358643406921906.a n : ℤ) = A095738 (n + 1)

end A095738

/-! ## A095738.P8479093347286874414

`filter[A105441(n+1), A355816(#)]`
-/

namespace A095738.P8479093347286874414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P8479093347286874414

namespace A095738

/-- `filter[A105441(n+1), A355816(#)]` -/
def P8479093347286874414.Spec : Prop :=
  ∀ n, P8479093347286874414.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P586843951912034020

`filter[A347202(n+1), A355816(#)]`
-/

namespace A095738.P586843951912034020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P586843951912034020

namespace A095738

/-- `filter[A347202(n+1), A355816(#)]` -/
def P586843951912034020.Spec : Prop :=
  ∀ n, P586843951912034020.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P16900953463695915797

`filter[A342082(n+1), A355816(#)]`
-/

namespace A095738.P16900953463695915797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P16900953463695915797

namespace A095738

/-- `filter[A342082(n+1), A355816(#)]` -/
def P16900953463695915797.Spec : Prop :=
  ∀ n, P16900953463695915797.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P10707067482641813020

`filter[A138593(n+1), A355816(#)]`
-/

namespace A095738.P10707067482641813020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P10707067482641813020

namespace A095738

/-- `filter[A138593(n+1), A355816(#)]` -/
def P10707067482641813020.Spec : Prop :=
  ∀ n, P10707067482641813020.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P14315976960857119297

`filter[A009188(n+1), A355816(#)]`
-/

namespace A095738.P14315976960857119297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P14315976960857119297

namespace A095738

/-- `filter[A009188(n+1), A355816(#)]` -/
def P14315976960857119297.Spec : Prop :=
  ∀ n, P14315976960857119297.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P9003087546031376527

`filter[A264828(n+1), A355816(#)]`
-/

namespace A095738.P9003087546031376527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P9003087546031376527

namespace A095738

/-- `filter[A264828(n+1), A355816(#)]` -/
def P9003087546031376527.Spec : Prop :=
  ∀ n, P9003087546031376527.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P17555577463157252010

`filter[A024619(n+1), A325964(#)]`
-/

namespace A095738.P17555577463157252010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A095738.P17555577463157252010

namespace A095738

/-- `filter[A024619(n+1), A325964(#)]` -/
def P17555577463157252010.Spec : Prop :=
  ∀ n, P17555577463157252010.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P18112132440258477378

`filter[A024619(n+1), A355816(#)]`
-/

namespace A095738.P18112132440258477378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P18112132440258477378

namespace A095738

/-- `filter[A024619(n+1), A355816(#)]` -/
def P18112132440258477378.Spec : Prop :=
  ∀ n, P18112132440258477378.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P9024156784726669200

`∩[A003624(n+1), A024619(n+1)]`
-/

namespace A095738.P9024156784726669200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095738.P9024156784726669200

namespace A095738

/-- `∩[A003624(n+1), A024619(n+1)]` -/
def P9024156784726669200.Spec : Prop :=
  ∀ n, (P9024156784726669200.a n : ℤ) = A095738 (n + 1)

end A095738

/-! ## A095738.P5373390989773443960

`∩[A014567(n+1), A024619(n+1)]`
-/

namespace A095738.P5373390989773443960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095738.P5373390989773443960

namespace A095738

/-- `∩[A014567(n+1), A024619(n+1)]` -/
def P5373390989773443960.Spec : Prop :=
  ∀ n, (P5373390989773443960.a n : ℤ) = A095738 (n + 1)

end A095738

/-! ## A095738.P15148446478702617711

`∩[A003624(n+1), A361102(n+1)]`
-/

namespace A095738.P15148446478702617711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095738.P15148446478702617711

namespace A095738

/-- `∩[A003624(n+1), A361102(n+1)]` -/
def P15148446478702617711.Spec : Prop :=
  ∀ n, (P15148446478702617711.a n : ℤ) = A095738 (n + 1)

end A095738

/-! ## A095738.P3040928950015537682

`filter[A139118(n+1), A355816(#)]`
-/

namespace A095738.P3040928950015537682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P3040928950015537682

namespace A095738

/-- `filter[A139118(n+1), A355816(#)]` -/
def P3040928950015537682.Spec : Prop :=
  ∀ n, P3040928950015537682.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P12020299063312968670

`filter[A268388(n+1), A355816(#)]`
-/

namespace A095738.P12020299063312968670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P12020299063312968670

namespace A095738

/-- `filter[A268388(n+1), A355816(#)]` -/
def P12020299063312968670.Spec : Prop :=
  ∀ n, P12020299063312968670.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P5808747991021400846

`filter[A080257(n+1), A355816(#)]`
-/

namespace A095738.P5808747991021400846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P5808747991021400846

namespace A095738

/-- `filter[A080257(n+1), A355816(#)]` -/
def P5808747991021400846.Spec : Prop :=
  ∀ n, P5808747991021400846.a n = A095738 (n + 1)

end A095738

/-! ## A095738.P5027569292468997035

`filter[A220571(n+1), A355816(#)]`
-/

namespace A095738.P5027569292468997035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A095738.P5027569292468997035

namespace A095738

/-- `filter[A220571(n+1), A355816(#)]` -/
def P5027569292468997035.Spec : Prop :=
  ∀ n, P5027569292468997035.a n = A095738 (n + 1)

end A095738

/-!
# A095740: E.g.f.: exp(x)/(1-x)^9.

The programs for A095740, there is no canonical definition to state claims against.
-/

/-! ## A095740.P8110928817608353311

`A095722(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A095740.P8110928817608353311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095722 n + (n : ℤ) * a (n - 1)

end

end A095740.P8110928817608353311

/-! ## A095740.P6712704525281710882

`Δ[A095722(n)/8]`
-/

namespace A095740.P6712704525281710882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095722 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095740.P6712704525281710882

/-! ## A095740.P5815616691413074229

`A143409(eq[8, A002262(n)])`
-/

namespace A095740.P5815616691413074229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095740.P5815616691413074229

/-! ## A095740.P8528086375790258194

`A143409(eq[7, A327844(n+1)])`
-/

namespace A095740.P8528086375790258194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095740.P8528086375790258194

/-! ## A095740.P9752473128715574008

`A143409(eq[8, A144328(n+1)])`
-/

namespace A095740.P9752473128715574008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095740.P9752473128715574008

/-! ## A095740.P9404971659389836430

`A143409(eq[9, A002260(n+1)])`
-/

namespace A095740.P9404971659389836430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095740.P9404971659389836430

/-! ## A095740.P15226336882849183484

`A143409(eq[9, A134868(n+1)])`
-/

namespace A095740.P15226336882849183484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095740.P15226336882849183484

/-!
# A095741: Number of base-2 palindromic primes (A016041) in range [2^2n,2^(2n+1)].

The programs for A095741, there is no canonical definition to state claims against.
-/

/-! ## A095741.P16908409500525696613

`A117773(2*(n+1)+1)`
-/

namespace A095741.P16908409500525696613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117773 (2 * (n + 1) + 1)

end

end A095741.P16908409500525696613

/-! ## A095741.P18075736896841407182

`or(char[2], A117773(A144396(n+1)))`
-/

namespace A095741.P18075736896841407182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A117773 (A144396 (n + 1)).toNat)

end

end A095741.P18075736896841407182

/-! ## A095741.P15807652323044200436

`gcd(A000038(n), A117773(A144396(n+1)))`
-/

namespace A095741.P15807652323044200436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A117773 (A144396 (n + 1)).toNat)

end

end A095741.P15807652323044200436

/-! ## A095741.P11064021479141391904

`A117773(A144396(n+1))/A007318(∑[n])`
-/

namespace A095741.P11064021479141391904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117773 (A144396 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A095741.P11064021479141391904

/-! ## A095741.P15167168652358642409

`A117773(A144396(n+1))/A000203(C(n, n²)!)`
-/

namespace A095741.P15167168652358642409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117773 (A144396 (n + 1)).toNat : ℚ) / (A000203 (Nat.factorial (Nat.choose n (n ^ 2))) : ℚ)

end

end A095741.P15167168652358642409

/-!
# A095742: Sum of A037888(p) for all primes p such that 2^n < p < 2^(n+1).

The programs for A095742, there is no canonical definition to state claims against.
-/

/-! ## A095742.P3428375408503972836

`A317883(n+3)-A275811(A028329(n))`
-/

namespace A095742.P3428375408503972836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317883 (n + 3) - A275811 (A028329 n).toNat

end

end A095742.P3428375408503972836

/-!
# A095743: Primes p for which A037888(p) = 1, i.e., primes whose binary expansion is almost symmetric, needing just a one-bit flip to become palindrome.

The programs for A095743, the canonical program `A095743.P808282831159510369` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095743 has offset 1).

The definition of A095743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095743.P808282831159510369

`p?[A051244(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A095743

/-- `p?[A051244(n+1)]` -/
def P808282831159510369.Spec : Prop :=
  ∀ n, P808282831159510369.a n = A095743 (n + 1)

theorem P808282831159510369.correct : P808282831159510369.Spec := by
  intro n
  simp only [A095743, Nat.add_sub_cancel]

end A095743

/-! ## A095743.P17991057883719338398

`∩[A051244(n+1), A207039(n+1)]`
-/

namespace A095743.P17991057883719338398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P17991057883719338398

namespace A095743

/-- `∩[A051244(n+1), A207039(n+1)]` -/
def P17991057883719338398.Spec : Prop :=
  ∀ n, (P17991057883719338398.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P15244884507884852166

`∩[A051244(n+1), A138837(n+1)]`
-/

namespace A095743.P15244884507884852166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P15244884507884852166

namespace A095743

/-- `∩[A051244(n+1), A138837(n+1)]` -/
def P15244884507884852166.Spec : Prop :=
  ∀ n, (P15244884507884852166.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P8961899335713485507

`∩[A000040(n+1), A051244(n+1)]`
-/

namespace A095743.P8961899335713485507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P8961899335713485507

namespace A095743

/-- `∩[A000040(n+1), A051244(n+1)]` -/
def P8961899335713485507.Spec : Prop :=
  ∀ n, (P8961899335713485507.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P6606854123908587047

`∩[A008578(n+1), A051244(n+1)]`
-/

namespace A095743.P6606854123908587047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P6606854123908587047

namespace A095743

/-- `∩[A008578(n+1), A051244(n+1)]` -/
def P6606854123908587047.Spec : Prop :=
  ∀ n, (P6606854123908587047.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P3348998165490979527

`∩[A045319(n+1), A051244(n+1)]`
-/

namespace A095743.P3348998165490979527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P3348998165490979527

namespace A095743

/-- `∩[A045319(n+1), A051244(n+1)]` -/
def P3348998165490979527.Spec : Prop :=
  ∀ n, (P3348998165490979527.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P5838785265787506895

`∩[A045344(n+1), A051244(n+1)]`
-/

namespace A095743.P5838785265787506895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P5838785265787506895

namespace A095743

/-- `∩[A045344(n+1), A051244(n+1)]` -/
def P5838785265787506895.Spec : Prop :=
  ∀ n, (P5838785265787506895.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P7207324687485276778

`∩[A051244(n+1), A182986(n+1)]`
-/

namespace A095743.P7207324687485276778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P7207324687485276778

namespace A095743

/-- `∩[A051244(n+1), A182986(n+1)]` -/
def P7207324687485276778.Spec : Prop :=
  ∀ n, (P7207324687485276778.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P13482288296102230386

`∩[A033946(n+1), A051244(n+1)]`
-/

namespace A095743.P13482288296102230386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P13482288296102230386

namespace A095743

/-- `∩[A033946(n+1), A051244(n+1)]` -/
def P13482288296102230386.Spec : Prop :=
  ∀ n, (P13482288296102230386.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P13906983928729211642

`∩[A051244(n+1), A158611(n+1)]`
-/

namespace A095743.P13906983928729211642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P13906983928729211642

namespace A095743

/-- `∩[A051244(n+1), A158611(n+1)]` -/
def P13906983928729211642.Spec : Prop :=
  ∀ n, (P13906983928729211642.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P2598800446233162361

`record[A006530(A051244(n+4))]`
-/

namespace A095743.P2598800446233162361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051244 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095743.P2598800446233162361

namespace A095743

/-- `record[A006530(A051244(n+4))]` -/
def P2598800446233162361.Spec : Prop :=
  ∀ n, P2598800446233162361.a n = A095743 (n + 1)

end A095743

/-! ## A095743.P10964421879840062226

`filter[A051244(n+1), A010051(#)]`
-/

namespace A095743.P10964421879840062226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095743.P10964421879840062226

namespace A095743

/-- `filter[A051244(n+1), A010051(#)]` -/
def P10964421879840062226.Spec : Prop :=
  ∀ n, P10964421879840062226.a n = A095743 (n + 1)

end A095743

/-! ## A095743.P9417600856227112616

`p?[(n+1)*A037888(n+1)]`
-/

namespace A095743.P9417600856227112616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A037888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095743.P9417600856227112616

namespace A095743

/-- `p?[(n+1)*A037888(n+1)]` -/
def P9417600856227112616.Spec : Prop :=
  ∀ n, P9417600856227112616.a n = A095743 (n + 1)

end A095743

/-! ## A095743.P2755543432792586746

`record[A014963(A051244(n+2))]`
-/

namespace A095743.P2755543432792586746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051244 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095743.P2755543432792586746

namespace A095743

/-- `record[A014963(A051244(n+2))]` -/
def P2755543432792586746.Spec : Prop :=
  ∀ n, P2755543432792586746.a n = A095743 (n + 1)

end A095743

/-! ## A095743.P3743082318891764171

`filter[A051244(n+1), A080339(#)]`
-/

namespace A095743.P3743082318891764171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A095743.P3743082318891764171

namespace A095743

/-- `filter[A051244(n+1), A080339(#)]` -/
def P3743082318891764171.Spec : Prop :=
  ∀ n, P3743082318891764171.a n = A095743 (n + 1)

end A095743

/-! ## A095743.P1146795839185634765

`p?[A037888(A344180(n))*A344180(n)]`
-/

namespace A095743.P1146795839185634765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A344180 n).toNat * A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095743.P1146795839185634765

namespace A095743

/-- `p?[A037888(A344180(n))*A344180(n)]` -/
def P1146795839185634765.Spec : Prop :=
  ∀ n, P1146795839185634765.a n = A095743 (n + 1)

end A095743

/-! ## A095743.P15446075095501944094

`∩[A051244(n+1), A212127(n+1)]`
-/

namespace A095743.P15446075095501944094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P15446075095501944094

namespace A095743

/-- `∩[A051244(n+1), A212127(n+1)]` -/
def P15446075095501944094.Spec : Prop :=
  ∀ n, (P15446075095501944094.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P1953305869797482257

`∩[A051244(n+1), A240960(n+1)]`
-/

namespace A095743.P1953305869797482257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P1953305869797482257

namespace A095743

/-- `∩[A051244(n+1), A240960(n+1)]` -/
def P1953305869797482257.Spec : Prop :=
  ∀ n, (P1953305869797482257.a n : ℤ) = A095743 (n + 1)

end A095743

/-! ## A095743.P13260805367382048004

`∩[A005180(n+1), A051244(n+1)]`
-/

namespace A095743.P13260805367382048004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095743.P13260805367382048004

namespace A095743

/-- `∩[A005180(n+1), A051244(n+1)]` -/
def P13260805367382048004.Spec : Prop :=
  ∀ n, (P13260805367382048004.a n : ℤ) = A095743 (n + 1)

end A095743

/-!
# A095744: Primes p for which A037888(p) = 2, i.e., primes whose binary expansion needs flips of just two bits to become palindrome.

The programs for A095744, the canonical program `A095744.P12869582977298875679` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095744 has offset 1).

The definition of A095744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095744.P12869582977298875679

`p?[A051247(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A095744

/-- `p?[A051247(n+1)]` -/
def P12869582977298875679.Spec : Prop :=
  ∀ n, P12869582977298875679.a n = A095744 (n + 1)

theorem P12869582977298875679.correct : P12869582977298875679.Spec := by
  intro n
  simp only [A095744, Nat.add_sub_cancel]

end A095744

/-! ## A095744.P1582818816277886670

`filter[A051247(n+1), A010051(#)]`
-/

namespace A095744.P1582818816277886670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095744.P1582818816277886670

namespace A095744

/-- `filter[A051247(n+1), A010051(#)]` -/
def P1582818816277886670.Spec : Prop :=
  ∀ n, P1582818816277886670.a n = A095744 (n + 1)

end A095744

/-! ## A095744.P1910262983937412894

`∩[A000040(n+1), A051247(n+1)]`
-/

namespace A095744.P1910262983937412894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P1910262983937412894

namespace A095744

/-- `∩[A000040(n+1), A051247(n+1)]` -/
def P1910262983937412894.Spec : Prop :=
  ∀ n, (P1910262983937412894.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P4941880833678054990

`∩[A004139(n+1), A051247(n+1)]`
-/

namespace A095744.P4941880833678054990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P4941880833678054990

namespace A095744

/-- `∩[A004139(n+1), A051247(n+1)]` -/
def P4941880833678054990.Spec : Prop :=
  ∀ n, (P4941880833678054990.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P7919041804715200540

`∩[A006005(n+1), A051247(n+1)]`
-/

namespace A095744.P7919041804715200540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P7919041804715200540

namespace A095744

/-- `∩[A006005(n+1), A051247(n+1)]` -/
def P7919041804715200540.Spec : Prop :=
  ∀ n, (P7919041804715200540.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P15456437278069470214

`∩[A008578(n+1), A051247(n+1)]`
-/

namespace A095744.P15456437278069470214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P15456437278069470214

namespace A095744

/-- `∩[A008578(n+1), A051247(n+1)]` -/
def P15456437278069470214.Spec : Prop :=
  ∀ n, (P15456437278069470214.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P7201033610693253448

`∩[A045319(n+1), A051247(n+1)]`
-/

namespace A095744.P7201033610693253448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P7201033610693253448

namespace A095744

/-- `∩[A045319(n+1), A051247(n+1)]` -/
def P7201033610693253448.Spec : Prop :=
  ∀ n, (P7201033610693253448.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P2397771058722553745

`∩[A045344(n+1), A051247(n+1)]`
-/

namespace A095744.P2397771058722553745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P2397771058722553745

namespace A095744

/-- `∩[A045344(n+1), A051247(n+1)]` -/
def P2397771058722553745.Spec : Prop :=
  ∀ n, (P2397771058722553745.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P3339299951727844945

`∩[A046022(n+1), A051247(n+1)]`
-/

namespace A095744.P3339299951727844945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P3339299951727844945

namespace A095744

/-- `∩[A046022(n+1), A051247(n+1)]` -/
def P3339299951727844945.Spec : Prop :=
  ∀ n, (P3339299951727844945.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P9681760363357642382

`∩[A051247(n+1), A065091(n+1)]`
-/

namespace A095744.P9681760363357642382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P9681760363357642382

namespace A095744

/-- `∩[A051247(n+1), A065091(n+1)]` -/
def P9681760363357642382.Spec : Prop :=
  ∀ n, (P9681760363357642382.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P8856618307227055456

`∩[A051247(n+1), A065396(n+1)]`
-/

namespace A095744.P8856618307227055456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P8856618307227055456

namespace A095744

/-- `∩[A051247(n+1), A065396(n+1)]` -/
def P8856618307227055456.Spec : Prop :=
  ∀ n, (P8856618307227055456.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P4650199540127493188

`∩[A051247(n+1), A066542(n+1)]`
-/

namespace A095744.P4650199540127493188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P4650199540127493188

namespace A095744

/-- `∩[A051247(n+1), A066542(n+1)]` -/
def P4650199540127493188.Spec : Prop :=
  ∀ n, (P4650199540127493188.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P16779899726269838250

`∩[A051247(n+1), A067126(n+1)]`
-/

namespace A095744.P16779899726269838250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P16779899726269838250

namespace A095744

/-- `∩[A051247(n+1), A067126(n+1)]` -/
def P16779899726269838250.Spec : Prop :=
  ∀ n, (P16779899726269838250.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P12078818911900424525

`∩[A051247(n+1), A067133(n+1)]`
-/

namespace A095744.P12078818911900424525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P12078818911900424525

namespace A095744

/-- `∩[A051247(n+1), A067133(n+1)]` -/
def P12078818911900424525.Spec : Prop :=
  ∀ n, (P12078818911900424525.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P11049234962084312767

`∩[A051247(n+1), A071621(n+1)]`
-/

namespace A095744.P11049234962084312767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P11049234962084312767

namespace A095744

/-- `∩[A051247(n+1), A071621(n+1)]` -/
def P11049234962084312767.Spec : Prop :=
  ∀ n, (P11049234962084312767.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P17447074555927983946

`∩[A051247(n+1), A083249(n+1)]`
-/

namespace A095744.P17447074555927983946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P17447074555927983946

namespace A095744

/-- `∩[A051247(n+1), A083249(n+1)]` -/
def P17447074555927983946.Spec : Prop :=
  ∀ n, (P17447074555927983946.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P5481026519034725498

`∩[A116974(n+1), A051247(n+1)]`
-/

namespace A095744.P5481026519034725498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P5481026519034725498

namespace A095744

/-- `∩[A116974(n+1), A051247(n+1)]` -/
def P5481026519034725498.Spec : Prop :=
  ∀ n, (P5481026519034725498.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P835826874459936151

`∩[A174090(n+1), A051247(n+1)]`
-/

namespace A095744.P835826874459936151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P835826874459936151

namespace A095744

/-- `∩[A174090(n+1), A051247(n+1)]` -/
def P835826874459936151.Spec : Prop :=
  ∀ n, (P835826874459936151.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P9318598474713377117

`∩[A051247(n+1), A189710(n+1)]`
-/

namespace A095744.P9318598474713377117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095744.P9318598474713377117

namespace A095744

/-- `∩[A051247(n+1), A189710(n+1)]` -/
def P9318598474713377117.Spec : Prop :=
  ∀ n, (P9318598474713377117.a n : ℤ) = A095744 (n + 1)

end A095744

/-! ## A095744.P10958733598443132193

`p?[A050874(n+1)+1]`
-/

namespace A095744.P10958733598443132193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050874 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095744.P10958733598443132193

namespace A095744

/-- `p?[A050874(n+1)+1]` -/
def P10958733598443132193.Spec : Prop :=
  ∀ n, P10958733598443132193.a n = A095744 (n + 1)

end A095744

/-!
# A095745: Primes p for which A037888(p) = 3, i.e., primes whose binary expansion needs flips of just three bits to become palindrome.

The programs for A095745, there is no canonical definition to state claims against.
-/

/-! ## A095745.P9884706118651221729

`p?[A050874(n+1)]`
-/

namespace A095745.P9884706118651221729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095745.P9884706118651221729

/-! ## A095745.P5600654072992020046

`p?[record[A050874(A065648(n))]]`
-/

namespace A095745.P5600654072992020046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050874 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095745.P5600654072992020046

/-! ## A095745.P13484597471844895878

`p?[record[A050874(A126759(n))]]`
-/

namespace A095745.P13484597471844895878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050874 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095745.P13484597471844895878

/-! ## A095745.P12810453995733537104

`p?[record[A050874(A291766(n))]]`
-/

namespace A095745.P12810453995733537104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050874 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095745.P12810453995733537104

/-! ## A095745.P13331667230101158856

`filter[A050874(n+1), A010051(#)]`
-/

namespace A095745.P13331667230101158856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095745.P13331667230101158856

/-!
# A095746: Primes p for which A037888(p)=4, i.e., primes whose binary expansion needs flips of just four bits to become palindrome.

The programs for A095746, there is no canonical definition to state claims against.
-/

/-! ## A095746.P34788562764397374

`A095747(A043317(n+1)+27)`
-/

namespace A095746.P34788562764397374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095747 (A043317 (n + 1) + 27).toNat

end

end A095746.P34788562764397374

/-! ## A095746.P12867135940849975164

`A095747(A034067(n)+2)`
-/

namespace A095746.P12867135940849975164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095747 (A034067 n + 2).toNat

end

end A095746.P12867135940849975164

/-! ## A095746.P9404402676044209860

`A095747(A078213(n+1)+27)`
-/

namespace A095746.P9404402676044209860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095747 (A078213 (n + 1) + 27).toNat

end

end A095746.P9404402676044209860

/-! ## A095746.P5986747816876572904

`A095747(A095706(n+1)+27)`
-/

namespace A095746.P5986747816876572904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095747 (A095706 (n + 1) + 27).toNat

end

end A095746.P5986747816876572904

/-!
# A095747: Maximally asymmetric odd primes in binary.

The programs for A095747, there is no canonical definition to state claims against.
-/

/-! ## A095747.P11808467907673782549

`p?[(n+1)*A025826(A175920(n))]`
-/

namespace A095747.P11808467907673782549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025826 (A175920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095747.P11808467907673782549

/-! ## A095747.P818976070176268888

`A000040(eq[A161083(n+1), A292438(n)])`
-/

namespace A095747.P818976070176268888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A095747.P818976070176268888

/-! ## A095747.P8234641390065708701

`p?[A018252(A162822(n+1))-43]`
-/

namespace A095747.P8234641390065708701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A162822 (n + 1)).toNat - 43

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095747.P8234641390065708701

/-! ## A095747.P2730681499781532168

`A095070(lt[A295261(n), A356867(n+1)])`
-/

namespace A095747.P2730681499781532168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A095747.P2730681499781532168

/-! ## A095747.P10749230619486981680

`∩[A079733(n+1), A347468(n+1)]`
-/

namespace A095747.P10749230619486981680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095747.P10749230619486981680

/-!
# A095748: Almost maximally asymmetric primes in binary.

The programs for A095748, there is no canonical definition to state claims against.
-/

/-! ## A095748.P5415684558063230119

`p?[A309265(n+3)-A325444(n+3)]`
-/

namespace A095748.P5415684558063230119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309265 (n + 3) - A325444 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095748.P5415684558063230119

/-! ## A095748.P14179020137946801630

`record[A002374(eq[4, A293909(n+1)])]`
-/

namespace A095748.P14179020137946801630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293909 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095748.P14179020137946801630

/-! ## A095748.P738928957600746841

`p?[eq[A109865(2*n+1), A109870(n+1)]]`
-/

namespace A095748.P738928957600746841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109865 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109870 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095748.P738928957600746841

/-!
# A095750: "Degree" of the Sophie Germain primes (A005384).

The programs for A095750, the canonical program `A095750.P12446210959235044624` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095750 has offset 0).

The definition of A095750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095750.P12446210959235044624

`A074313(A072192(n+1))-1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A095750

/-- `A074313(A072192(n+1))-1` -/
def P12446210959235044624.Spec : Prop :=
  ∀ n, P12446210959235044624.a n = A095750 n

theorem P12446210959235044624.correct : P12446210959235044624.Spec := by
  intro n
  simp only [A095750]

end A095750

/-! ## A095750.P3620423118613079462

`A292936(A005384(n+1))-1`
-/

namespace A095750.P3620423118613079462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A005384 (n + 1)).toNat - 1

end

end A095750.P3620423118613079462

namespace A095750

/-- `A292936(A005384(n+1))-1` -/
def P3620423118613079462.Spec : Prop :=
  ∀ n, P3620423118613079462.a n = A095750 n

end A095750

/-! ## A095750.P9177371985073397704

`A292936(A005385(n+1))-2`
-/

namespace A095750.P9177371985073397704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A005385 (n + 1)).toNat - 2

end

end A095750.P9177371985073397704

namespace A095750

/-- `A292936(A005385(n+1))-2` -/
def P9177371985073397704.Spec : Prop :=
  ∀ n, P9177371985073397704.a n = A095750 n

end A095750

/-! ## A095750.P17964687690818306790

`A292936(A079148(n+3))-2`
-/

namespace A095750.P17964687690818306790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (A079148 (n + 3)).toNat - 2

end

end A095750.P17964687690818306790

namespace A095750

/-- `A292936(A079148(n+3))-2` -/
def P17964687690818306790.Spec : Prop :=
  ∀ n, P17964687690818306790.a n = A095750 n

end A095750

/-! ## A095750.P1159309588432983514

`A292936(floor(A005384(n+1)/2))`
-/

namespace A095750.P1159309588432983514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 ⌊(A005384 (n + 1) : ℚ) / 2⌋.toNat

end

end A095750.P1159309588432983514

namespace A095750

/-- `A292936(floor(A005384(n+1)/2))` -/
def P1159309588432983514.Spec : Prop :=
  ∀ n, P1159309588432983514.a n = A095750 n

end A095750

/-! ## A095750.P12950564058338726914

`A292936(floor(A005385(n+1)/4))`
-/

namespace A095750.P12950564058338726914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 ⌊(A005385 (n + 1) : ℚ) / 4⌋.toNat

end

end A095750.P12950564058338726914

namespace A095750

/-- `A292936(floor(A005385(n+1)/4))` -/
def P12950564058338726914.Spec : Prop :=
  ∀ n, P12950564058338726914.a n = A095750 n

end A095750

/-! ## A095750.P14555653439677126429

`A292936(record[A023503(n+2)])-1`
-/

namespace A095750.P14555653439677126429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A095750.P14555653439677126429

namespace A095750

/-- `A292936(record[A023503(n+2)])-1` -/
def P14555653439677126429.Spec : Prop :=
  ∀ n, P14555653439677126429.a n = A095750 n

end A095750

/-! ## A095750.P4067186980475810573

`A292936(p?[floor(A000040(n+1)/2)])-1`
-/

namespace A095750.P4067186980475810573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A095750.P4067186980475810573

namespace A095750

/-- `A292936(p?[floor(A000040(n+1)/2)])-1` -/
def P4067186980475810573.Spec : Prop :=
  ∀ n, P4067186980475810573.a n = A095750 n

end A095750

/-! ## A095750.P3944662977391276301

`A292936(p?[2*A000040(n+1)+1])-2`
-/

namespace A095750.P3944662977391276301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A095750.P3944662977391276301

namespace A095750

/-- `A292936(p?[2*A000040(n+1)+1])-2` -/
def P3944662977391276301.Spec : Prop :=
  ∀ n, P3944662977391276301.a n = A095750 n

end A095750

/-! ## A095750.P8893021742876183174

`A005385(n+1)%A292936(A005384(n+1))`
-/

namespace A095750.P8893021742876183174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (n + 1)) (A292936 (A005384 (n + 1)).toNat)

end

end A095750.P8893021742876183174

namespace A095750

/-- `A005385(n+1)%A292936(A005384(n+1))` -/
def P8893021742876183174.Spec : Prop :=
  ∀ n, P8893021742876183174.a n = A095750 n

end A095750

/-!
# A095751: Conjectured list of integers known to be friendly but not known to be primitive friendly.

The programs for A095751, there is no canonical definition to state claims against.
-/

/-! ## A095751.P16689843431639126840

`6*A006942(A053017(n+1))`
-/

namespace A095751.P16689843431639126840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006942 (A053017 (n + 1)).toNat

end

end A095751.P16689843431639126840

/-! ## A095751.P16774194672545369743

`A203016(eq[6, A330559(n+1)])`
-/

namespace A095751.P16774194672545369743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095751.P16774194672545369743

/-!
# A095752: a(n) = (1/9)*(-1+10^n)*(4*n+3).

The programs for A095752, the canonical program `A095752.P6157830035546302502` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095752 has offset 1).

The definition of A095752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095752.P6157830035546302502

`1/9*(-1+10^(n+1))*(4*(n+1)+3)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095752

/-- `1/9*(-1+10^(n+1))*(4*(n+1)+3)` -/
def P6157830035546302502.Spec : Prop :=
  ∀ n, P6157830035546302502.a n = (A095752 (n + 1) : ℚ)

end A095752

/-! ## A095752.P2906149704116775717

`A002281(n+1)+n*A002278(n+1)`
-/

namespace A095752.P2906149704116775717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 (n + 1) + (n : ℤ) * A002278 (n + 1)

end

end A095752.P2906149704116775717

namespace A095752

/-- `A002281(n+1)+n*A002278(n+1)` -/
def P2906149704116775717.Spec : Prop :=
  ∀ n, P2906149704116775717.a n = A095752 (n + 1)

end A095752

/-!
# A095753: Number of almost base-2 palindromic primes (A095743) in range ]2^n,2^(n+1)].

The programs for A095753, there is no canonical definition to state claims against.
-/

/-! ## A095753.P8701831988696989990

`A095759(A212342(n)+2)`
-/

namespace A095753.P8701831988696989990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (A212342 n + 2).toNat

end

end A095753.P8701831988696989990

/-! ## A095753.P17283644569838068543

`A095759(eq[2, A056944(n)])`
-/

namespace A095753.P17283644569838068543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095753.P17283644569838068543

/-! ## A095753.P9706139847658014435

`A095759(A028310(∑[n])+1)`
-/

namespace A095753.P9706139847658014435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A095753.P9706139847658014435

/-! ## A095753.P6855504633354299120

`A095759(A179865(n+1)+1)`
-/

namespace A095753.P6855504633354299120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (A179865 (n + 1) + 1).toNat

end

end A095753.P6855504633354299120

/-! ## A095753.P12999058135565502561

`A095759(A000124(floor(acot(n)+n)))`
-/

namespace A095753.P12999058135565502561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (A000124 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A095753.P12999058135565502561

/-!
# A095754: Number of A095744-primes in range ]2^n,2^(n+1)].

The programs for A095754, there is no canonical definition to state claims against.
-/

/-! ## A095754.P8682272613273100864

`A095759(∑[n]+2)`
-/

namespace A095754.P8682272613273100864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A095754.P8682272613273100864

/-! ## A095754.P14585209904413949714

`A095759(A133263(n))%n!`
-/

namespace A095754.P14585209904413949714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095759 (A133263 n).toNat) (Nat.factorial n : ℤ)

end

end A095754.P14585209904413949714

/-! ## A095754.P9238983737352484624

`A095759(A133263(n))-A000038(n)`
-/

namespace A095754.P9238983737352484624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (A133263 n).toNat - A000038 n

end

end A095754.P9238983737352484624

/-! ## A095754.P8562846271290065098

`A057427(n)*A095759(A133263(n))`
-/

namespace A095754.P8562846271290065098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A095759 (A133263 n).toNat

end

end A095754.P8562846271290065098

/-! ## A095754.P1720920297439874087

`A095759(A133263(n))*A178334(n)`
-/

namespace A095754.P1720920297439874087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (A133263 n).toNat * A178334 n

end

end A095754.P1720920297439874087

/-!
# A095755: Number of A095745-primes in range ]2^n,2^(n+1)].

The programs for A095755, there is no canonical definition to state claims against.
-/

/-! ## A095755.P2311624199087229393

`A095759(A055640(2*n+3)+A000124(n))`
-/

namespace A095755.P2311624199087229393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (A055640 (2 * n + 3) + A000124 n).toNat

end

end A095755.P2311624199087229393

/-!
# A095756: Number of A095746-primes in range ]2^n,2^(n+1)].

The programs for A095756, there is no canonical definition to state claims against.
-/

/-! ## A095756.P14267989904203675024

`A095759(A076027(n+2))`
-/

namespace A095756.P14267989904203675024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (A076027 (n + 2)).toNat

end

end A095756.P14267989904203675024

/-! ## A095756.P12080921591206946994

`A095759(A076095(n+2))`
-/

namespace A095756.P12080921591206946994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (A076095 (n + 2)).toNat

end

end A095756.P12080921591206946994

/-! ## A095756.P14602618368362886990

`A095759(A145018(n+1))%A000032(n)`
-/

namespace A095756.P14602618368362886990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095759 (A145018 (n + 1)).toNat) (A000032 n)

end

end A095756.P14602618368362886990

/-! ## A095756.P615844021325342495

`A111890(A001597(n+1))*A366753(n)`
-/

namespace A095756.P615844021325342495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111890 (A001597 (n + 1)).toNat * A366753 n

end

end A095756.P615844021325342495

/-! ## A095756.P9048065303248560108

`A094819(A137748(n))`
-/

namespace A095756.P9048065303248560108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094819 (A137748 n).toNat

end

end A095756.P9048065303248560108

/-!
# A095757: Number of A095747-primes in range ]2^n,2^(n+1)].

The programs for A095757, there is no canonical definition to state claims against.
-/

/-! ## A095757.P12225749290214536481

`A095759(∑[and(n, -2)]+n)`
-/

namespace A095757.P12225749290214536481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A095757.P12225749290214536481

/-! ## A095757.P59050048985312171

`A095759(∑[n]+floor(n/2))`
-/

namespace A095757.P59050048985312171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095759 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A095757.P59050048985312171

/-!
# A095759: Triangle T(row>=0, 0<= pos <=row) by rows: T(r,p) contains number of odd primes p in range [2^(r+1),2^(r+2)] for which A037888(p)=pos.

The programs for A095759, there is no canonical definition to state claims against.
-/

/-! ## A095759.P12872331684609241508

`A217349(A217349(n+1))%A004468(A052126(n+1))`
-/

namespace A095759.P12872331684609241508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217349 (A217349 (n + 1)).toNat) (A004468 (A052126 (n + 1)).toNat)

end

end A095759.P12872331684609241508

/-! ## A095759.P7142986391860688915

`and(A101063(n+1), A338251(A141256(n)))`
-/

namespace A095759.P7142986391860688915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101063 (n + 1)) (A338251 (A141256 n).toNat)

end

end A095759.P7142986391860688915

/-! ## A095759.P3162607302589854141

`and(A073359(A178866(3*n+5)), A084113(2*(n+1)))`
-/

namespace A095759.P3162607302589854141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073359 (A178866 (3 * n + 5)).toNat) (A084113 (2 * (n + 1)))

end

end A095759.P3162607302589854141

/-!
# A095760: Number of A095747-primes in range ]2^(2n-1),2^2n].

The programs for A095760, there is no canonical definition to state claims against.
-/

/-! ## A095760.P4223259750102817098

`A095757(Δ[n²])`
-/

namespace A095760.P4223259750102817098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095757 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A095760.P4223259750102817098

/-! ## A095760.P5887823711184377551

`and(-1, A095757(2*n+1))`
-/

namespace A095760.P5887823711184377551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A095757 (2 * n + 1))

end

end A095760.P5887823711184377551

/-! ## A095760.P2480035925099505566

`A095757(or(1, 2*n))+char[29]`
-/

namespace A095760.P2480035925099505566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095757 (Nat.lor 1 (2 * n)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A095760.P2480035925099505566

/-! ## A095760.P304342491678128731

`A000027(A095757(2*n+1))`
-/

namespace A095760.P304342491678128731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095757 (2 * n + 1)).toNat

end

end A095760.P304342491678128731

/-! ## A095760.P4902606030114569814

`A095757(2*n+1)%A062394(n)`
-/

namespace A095760.P4902606030114569814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095757 (2 * n + 1)) (A062394 n)

end

end A095760.P4902606030114569814

/-!
# A095761: a(n) = A014824(2*n-1).

The programs for A095761, the canonical program `A095761.P6267607276850024697` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095761 has offset 1).

The definition of A095761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A014824(2*(n+1)-1)` (program `A095761.P6267607276850024697`, by `A095761.P6267607276850024697.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095761.P16077722988972851145

`100*a(n-1)+22*(n+1)-21` with `a(0)=1`
-/

namespace A095761.P16077722988972851145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  100 * a (n - 1) + (22 * (n + 1) : ℤ) - 21

end

end A095761.P16077722988972851145

namespace A095761

/-- `100*a(n-1)+22*(n+1)-21` -/
def P16077722988972851145.Spec : Prop :=
  ∀ n, P16077722988972851145.a n = A095761 (n + 1)

end A095761

/-! ## A095761.P6267607276850024697

`A014824(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095761

/-- `A014824(2*(n+1)-1)` -/
def P6267607276850024697.Spec : Prop :=
  ∀ n, P6267607276850024697.a n = A095761 (n + 1)

theorem P6267607276850024697.correct : P6267607276850024697.Spec := by
  intro n
  simp only [A095761, Nat.add_sub_cancel]

end A095761

/-! ## A095761.P6453499708130440289

`∑[A131970(n)]`
-/

namespace A095761.P6453499708130440289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095761.P6453499708130440289

namespace A095761

/-- `∑[A131970(n)]` -/
def P6453499708130440289.Spec : Prop :=
  ∀ n, P6453499708130440289.a n = A095761 (n + 1)

end A095761

/-! ## A095761.P13653366326667196518

`∑[A090843(2*n)]`
-/

namespace A095761.P13653366326667196518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090843 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095761.P13653366326667196518

namespace A095761

/-- `∑[A090843(2*n)]` -/
def P13653366326667196518.Spec : Prop :=
  ∀ n, P13653366326667196518.a n = A095761 (n + 1)

end A095761

/-! ## A095761.P828516093006265702

`∑[∑[A003953(n)²]]`
-/

namespace A095761.P828516093006265702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095761.P828516093006265702

namespace A095761

/-- `∑[∑[A003953(n)²]]` -/
def P828516093006265702.Spec : Prop :=
  ∀ n, P828516093006265702.a n = A095761 (n + 1)

end A095761

/-! ## A095761.P1025058029987179013

`A099669(2*n+1)/2`
-/

namespace A095761.P1025058029987179013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099669 (2 * n + 1) : ℚ) / 2

end

end A095761.P1025058029987179013

namespace A095761

/-- `A099669(2*n+1)/2` -/
def P1025058029987179013.Spec : Prop :=
  ∀ n, P1025058029987179013.a n = (A095761 (n + 1) : ℚ)

end A095761

/-! ## A095761.P1540229490639407361

`A099670(2*n+1)/3`
-/

namespace A095761.P1540229490639407361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099670 (2 * n + 1) : ℚ) / 3

end

end A095761.P1540229490639407361

namespace A095761

/-- `A099670(2*n+1)/3` -/
def P1540229490639407361.Spec : Prop :=
  ∀ n, P1540229490639407361.a n = (A095761 (n + 1) : ℚ)

end A095761

/-! ## A095761.P158795545246353760

`A099671(2*n+1)/4`
-/

namespace A095761.P158795545246353760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099671 (2 * n + 1) : ℚ) / 4

end

end A095761.P158795545246353760

namespace A095761

/-- `A099671(2*n+1)/4` -/
def P158795545246353760.Spec : Prop :=
  ∀ n, P158795545246353760.a n = (A095761 (n + 1) : ℚ)

end A095761

/-! ## A095761.P18036234823278640198

`A099672(2*n+1)/5`
-/

namespace A095761.P18036234823278640198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099672 (2 * n + 1) : ℚ) / 5

end

end A095761.P18036234823278640198

namespace A095761

/-- `A099672(2*n+1)/5` -/
def P18036234823278640198.Spec : Prop :=
  ∀ n, P18036234823278640198.a n = (A095761 (n + 1) : ℚ)

end A095761

/-! ## A095761.P11441583313015706548

`A099673(2*n+1)/6`
-/

namespace A095761.P11441583313015706548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099673 (2 * n + 1) : ℚ) / 6

end

end A095761.P11441583313015706548

namespace A095761

/-- `A099673(2*n+1)/6` -/
def P11441583313015706548.Spec : Prop :=
  ∀ n, P11441583313015706548.a n = (A095761 (n + 1) : ℚ)

end A095761

/-!
# A095765: Number of primes in range [2^n+1, 2^(n+1)] whose binary expansion begins '10' (A080165).

The programs for A095765, there is no canonical definition to state claims against.
-/

/-! ## A095765.P10582730160050141444

`A036378(n+1)-A095766(n+1)`
-/

namespace A095765.P10582730160050141444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095766 (n + 1)

end

end A095765.P10582730160050141444

/-! ## A095765.P1924151754711264199

`Δ[A126279(A000124(n))]-A095766(n+1)`
-/

namespace A095765.P1924151754711264199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095766 (n + 1)

end

end A095765.P1924151754711264199

/-! ## A095765.P18419618456264882036

`A095296(n+1)+A095297(n+1)-A095766(n+1)`
-/

namespace A095765.P18419618456264882036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095296 (n + 1) + (A095297 (n + 1) - A095766 (n + 1))

end

end A095765.P18419618456264882036

/-! ## A095765.P13892031202224454654

`A000720(A007283(n))%A007053(n+1)`
-/

namespace A095765.P13892031202224454654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A007283 n).toNat) (A007053 (n + 1))

end

end A095765.P13892031202224454654

/-! ## A095765.P13266028335216742651

`A000720(A042950(n+1))%A007053(n+1)`
-/

namespace A095765.P13266028335216742651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A042950 (n + 1)).toNat) (A007053 (n + 1))

end

end A095765.P13266028335216742651

/-!
# A095766: Number of primes whose binary expansion begins '11' (A080166) in range ]2^n,2^(n+1)].

The programs for A095766, there is no canonical definition to state claims against.
-/

/-! ## A095766.P265556883022643995

`A036378(n+1)-A095765(n+1)`
-/

namespace A095766.P265556883022643995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095765 (n + 1)

end

end A095766.P265556883022643995

/-! ## A095766.P17741337219879736470

`A095765(A028310(n)+1)-A113858(n+1)`
-/

namespace A095766.P17741337219879736470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095765 (A028310 n + 1).toNat - A113858 (n + 1)

end

end A095766.P17741337219879736470

/-! ## A095766.P6804229914588813130

`A223900(n+1)-(A223853(n+1)+A095765(n+1))`
-/

namespace A095766.P6804229914588813130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223900 (n + 1) - (A223853 (n + 1) + A095765 (n + 1))

end

end A095766.P6804229914588813130

/-! ## A095766.P933915231776131907

`A095296(n+1)+A095297(n+1)-A095765(n+1)`
-/

namespace A095766.P933915231776131907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095296 (n + 1) + (A095297 (n + 1) - A095765 (n + 1))

end

end A095766.P933915231776131907

/-! ## A095766.P5778853408212221235

`A095334(n+1)+A095335(n+1)-A095765(n+1)`
-/

namespace A095766.P5778853408212221235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095334 (n + 1) + (A095335 (n + 1) - A095765 (n + 1))

end

end A095766.P5778853408212221235

/-!
# A095767: a(n) = valuation(A004001(n),2).

The programs for A095767, the canonical program `A095767.P1169779296822918440` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095767 has offset 1).

The definition of A095767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `val(A004001(n+1), 2)` (program `A095767.P1169779296822918440`, by `A095767.P1169779296822918440.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095767.P1169779296822918440

`val(A004001(n+1), 2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095767

/-- `val(A004001(n+1), 2)` -/
def P1169779296822918440.Spec : Prop :=
  ∀ n, (P1169779296822918440.a n : ℤ) = A095767 (n + 1)

theorem P1169779296822918440.correct : P1169779296822918440.Spec := by
  intro n
  simp only [A095767, Nat.add_sub_cancel]

end A095767

/-! ## A095767.P15920607833050046453

`A007814(A004001(n+1))`
-/

namespace A095767.P15920607833050046453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004001 (n + 1)).toNat

end

end A095767.P15920607833050046453

namespace A095767

/-- `A007814(A004001(n+1))` -/
def P15920607833050046453.Spec : Prop :=
  ∀ n, P15920607833050046453.a n = A095767 (n + 1)

end A095767

/-! ## A095767.P3875751793857658874

`log2(gcd(A004001(n+1), A053644(n)))`
-/

namespace A095767.P3875751793857658874
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A004001 (n + 1)) (A053644 n) : ℝ)

end

end A095767.P3875751793857658874

namespace A095767

/-- `log2(gcd(A004001(n+1), A053644(n)))` -/
def P3875751793857658874.Spec : Prop :=
  ∀ n, P3875751793857658874.a n = (A095767 (n + 1) : ℝ)

end A095767

/-! ## A095767.P4186814128935348954

`A007814(2-A080677(n+1)+n)`
-/

namespace A095767.P4186814128935348954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 - A080677 (n + 1) + (n : ℤ)).toNat

end

end A095767.P4186814128935348954

namespace A095767

/-- `A007814(2-A080677(n+1)+n)` -/
def P4186814128935348954.Spec : Prop :=
  ∀ n, P4186814128935348954.a n = A095767 (n + 1)

end A095767

/-! ## A095767.P14687180353733709458

`A001511(2-A080677(n+1)+n)-1`
-/

namespace A095767.P14687180353733709458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 - A080677 (n + 1) + (n : ℤ)).toNat - 1

end

end A095767.P14687180353733709458

namespace A095767

/-- `A001511(2-A080677(n+1)+n)-1` -/
def P14687180353733709458.Spec : Prop :=
  ∀ n, P14687180353733709458.a n = A095767 (n + 1)

end A095767

/-! ## A095767.P16837695274217378618

`val(A284019(n+1)+A005185(n+1), 2)`
-/

namespace A095767.P16837695274217378618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A284019 (n + 1) + A005185 (n + 1)).toNat 2

end

end A095767.P16837695274217378618

namespace A095767

/-- `val(A284019(n+1)+A005185(n+1), 2)` -/
def P16837695274217378618.Spec : Prop :=
  ∀ n, (P16837695274217378618.a n : ℤ) = A095767 (n + 1)

end A095767

/-! ## A095767.P4032280261870307783

`A001511(∑[char[A188163(n+1)-1]])-1`
-/

namespace A095767.P4032280261870307783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A095767.P4032280261870307783

namespace A095767

/-- `A001511(∑[char[A188163(n+1)-1]])-1` -/
def P4032280261870307783.Spec : Prop :=
  ∀ n, P4032280261870307783.a n = A095767 (n + 1)

end A095767

/-! ## A095767.P11007096937068039653

`A001511(ceil((A004074(n+1)+n)/2))-1`
-/

namespace A095767.P11007096937068039653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ⌈(A004074 (n + 1) + (n : ℤ) : ℚ) / 2⌉.toNat - 1

end

end A095767.P11007096937068039653

namespace A095767

/-- `A001511(ceil((A004074(n+1)+n)/2))-1` -/
def P11007096937068039653.Spec : Prop :=
  ∀ n, P11007096937068039653.a n = A095767 (n + 1)

end A095767

/-! ## A095767.P11120483168157596599

`A007814(A284019(n+1)+A005185(n+1))`
-/

namespace A095767.P11120483168157596599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A284019 (n + 1) + A005185 (n + 1)).toNat

end

end A095767.P11120483168157596599

namespace A095767

/-- `A007814(A284019(n+1)+A005185(n+1))` -/
def P11120483168157596599.Spec : Prop :=
  ∀ n, P11120483168157596599.a n = A095767 (n + 1)

end A095767

/-! ## A095767.P15271288662704044914

`A235127(A004001(n+1)²)`
-/

namespace A095767.P15271288662704044914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A004001 (n + 1) ^ 2).toNat

end

end A095767.P15271288662704044914

namespace A095767

/-- `A235127(A004001(n+1)²)` -/
def P15271288662704044914.Spec : Prop :=
  ∀ n, P15271288662704044914.a n = A095767 (n + 1)

end A095767

/-! ## A095767.P4704486719333107541

`A235127(2*A004001(n+1)*A004001(n+1))`
-/

namespace A095767.P4704486719333107541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (2 * A004001 (n + 1) * A004001 (n + 1)).toNat

end

end A095767.P4704486719333107541

namespace A095767

/-- `A235127(2*A004001(n+1)*A004001(n+1))` -/
def P4704486719333107541.Spec : Prop :=
  ∀ n, P4704486719333107541.a n = A095767 (n + 1)

end A095767

/-!
# A095768: a(n) = 2^(n+1) - n.

The programs for A095768, the canonical program `A095768.P2497746266272877620` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095768 has offset 1).

The definition of A095768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+2)-(n+1)` (program `A095768.P2497746266272877620`, by `A095768.P2497746266272877620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095768.P2497746266272877620

`2^(n+2)-(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095768

/-- `2^(n+2)-(n+1)` -/
def P2497746266272877620.Spec : Prop :=
  ∀ n, P2497746266272877620.a n = A095768 (n + 1)

theorem P2497746266272877620.correct : P2497746266272877620.Spec := by
  intro n
  simp only [A095768, Nat.add_sub_cancel]

end A095768

/-! ## A095768.P7227034153366538347

`∑[or(2, ∑[2^n])]`
-/

namespace A095768.P7227034153366538347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095768.P7227034153366538347

namespace A095768

/-- `∑[or(2, ∑[2^n])]` -/
def P7227034153366538347.Spec : Prop :=
  ∀ n, (P7227034153366538347.a n : ℤ) = A095768 (n + 1)

end A095768

/-! ## A095768.P7574895631116375412

`∑[ogf((3-6x+4x^2)/(1-3x+2x^2))]`
-/

namespace A095768.P7574895631116375412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, 4] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095768.P7574895631116375412

namespace A095768

/-- `∑[ogf((3-6x+4x^2)/(1-3x+2x^2))]` -/
def P7574895631116375412.Spec : Prop :=
  ∀ n, P7574895631116375412.a n = A095768 (n + 1)

end A095768

/-! ## A095768.P3591595952631622565

`ogf((3-6x+4x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A095768.P3591595952631622565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, 4] [1, -4, 5, -2] n

end

end A095768.P3591595952631622565

namespace A095768

/-- `ogf((3-6x+4x^2)/(1-4x+5x^2-2x^3))` -/
def P3591595952631622565.Spec : Prop :=
  ∀ n, P3591595952631622565.a n = A095768 (n + 1)

end A095768

/-! ## A095768.P10415019828986086071

`∑[2*a(n-1)+1]` with `a(0)=3, a(1)=3`
-/

namespace A095768.P10415019828986086071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095768.P10415019828986086071

namespace A095768

/-- `∑[2*a(n-1)+1]` -/
def P10415019828986086071.Spec : Prop :=
  ∀ n, (P10415019828986086071.a n : ℤ) = A095768 (n + 1)

end A095768

/-! ## A095768.P1266156851611947179

`∑[lcm(2, a(n-1))+1]` with `a(0)=3, a(1)=3`
-/

namespace A095768.P1266156851611947179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095768.P1266156851611947179

namespace A095768

/-- `∑[lcm(2, a(n-1))+1]` -/
def P1266156851611947179.Spec : Prop :=
  ∀ n, (P1266156851611947179.a n : ℤ) = A095768 (n + 1)

end A095768

/-! ## A095768.P8933836860874405621

`∑[xor(1, 2*a(n-1))]` with `a(0)=3, a(1)=3`
-/

namespace A095768.P8933836860874405621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  Nat.xor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095768.P8933836860874405621

namespace A095768

/-- `∑[xor(1, 2*a(n-1))]` -/
def P8933836860874405621.Spec : Prop :=
  ∀ n, (P8933836860874405621.a n : ℤ) = A095768 (n + 1)

end A095768

/-! ## A095768.P2888159522980024665

`∑[∑[2*a(n-1)]]` with `a(0)=3, a(1)=0, a(2)=4`
-/

namespace A095768.P2888159522980024665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095768.P2888159522980024665

namespace A095768

/-- `∑[∑[2*a(n-1)]]` -/
def P2888159522980024665.Spec : Prop :=
  ∀ n, (P2888159522980024665.a n : ℤ) = A095768 (n + 1)

end A095768

/-! ## A095768.P11433869125352961113

`∑[xor(2^n, a(n-1))]` with `a(0)=3, a(1)=3`
-/

namespace A095768.P11433869125352961113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  Nat.xor (2 ^ n) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095768.P11433869125352961113

namespace A095768

/-- `∑[xor(2^n, a(n-1))]` -/
def P11433869125352961113.Spec : Prop :=
  ∀ n, (P11433869125352961113.a n : ℤ) = A095768 (n + 1)

end A095768

/-! ## A095768.P13634632459296936882

`abs(or(n+1, -2^(n+2)))`
-/

namespace A095768.P13634632459296936882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n + 1 : ℤ) (-(2 ^ (n + 2) : ℤ))|

end

end A095768.P13634632459296936882

namespace A095768

/-- `abs(or(n+1, -2^(n+2)))` -/
def P13634632459296936882.Spec : Prop :=
  ∀ n, P13634632459296936882.a n = A095768 (n + 1)

end A095768

/-! ## A095768.P10794269496998421354

`-or(n+1, -2^(n+2))`
-/

namespace A095768.P10794269496998421354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n + 1 : ℤ) (-(2 ^ (n + 2) : ℤ))

end

end A095768.P10794269496998421354

namespace A095768

/-- `-or(n+1, -2^(n+2))` -/
def P10794269496998421354.Spec : Prop :=
  ∀ n, P10794269496998421354.a n = A095768 (n + 1)

end A095768

/-! ## A095768.P5729891735706366848

`abs(xor(n+1, -2^(n+2)))`
-/

namespace A095768.P5729891735706366848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 1 : ℤ) (-(2 ^ (n + 2) : ℤ))|

end

end A095768.P5729891735706366848

namespace A095768

/-- `abs(xor(n+1, -2^(n+2)))` -/
def P5729891735706366848.Spec : Prop :=
  ∀ n, P5729891735706366848.a n = A095768 (n + 1)

end A095768

/-! ## A095768.P16939944430534153144

`-xor(n+1, -2^(n+2))`
-/

namespace A095768.P16939944430534153144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n + 1 : ℤ) (-(2 ^ (n + 2) : ℤ))

end

end A095768.P16939944430534153144

namespace A095768

/-- `-xor(n+1, -2^(n+2))` -/
def P16939944430534153144.Spec : Prop :=
  ∀ n, P16939944430534153144.a n = A095768 (n + 1)

end A095768

/-! ## A095768.P10789116546515849894

`record[ceil(2^(n-1)-(n-2))]`
-/

namespace A095768.P10789116546515849894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((n : ℤ) - 2 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095768.P10789116546515849894

namespace A095768

/-- `record[ceil(2^(n-1)-(n-2))]` -/
def P10789116546515849894.Spec : Prop :=
  ∀ n, P10789116546515849894.a n = A095768 (n + 1)

end A095768

/-! ## A095768.P13141197174973425890

`round(record[2^(n-2)-(n-3)])`
-/

namespace A095768.P13141197174973425890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - ((n : ℤ) - 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A095768.P13141197174973425890

namespace A095768

/-- `round(record[2^(n-2)-(n-3)])` -/
def P13141197174973425890.Spec : Prop :=
  ∀ n, P13141197174973425890.a n = A095768 (n + 1)

end A095768

/-! ## A095768.P14779953735415549584

`abs(2*a(n-1)+n-1)` with `a(0)=3`
-/

namespace A095768.P14779953735415549584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |2 * a (n - 1) + ((n : ℤ) - 1)|

end

end A095768.P14779953735415549584

namespace A095768

/-- `abs(2*a(n-1)+n-1)` -/
def P14779953735415549584.Spec : Prop :=
  ∀ n, P14779953735415549584.a n = A095768 (n + 1)

end A095768

/-! ## A095768.P10733583162486282666

`floor(2*a(n-1)-1+n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A095768.P10733583162486282666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) - 1 + (n : ℤ)

end

end A095768.P10733583162486282666

namespace A095768

/-- `floor(2*a(n-1)-1+n)` -/
def P10733583162486282666.Spec : Prop :=
  ∀ n, P10733583162486282666.a n = A095768 (n + 1)

theorem P10733583162486282666.correct : P10733583162486282666.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095768, Nat.add_sub_cancel, A095768.P10733583162486282666.a, A095768.P2497746266272877620.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095768, Nat.add_sub_cancel, A095768.P10733583162486282666.a, A095768.P2497746266272877620.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A095768

/-! ## A095768.P628089973822156463

`floor(2*a(n-1)-(1-n))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A095768.P628089973822156463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) - (1 - (n : ℤ))

end

end A095768.P628089973822156463

namespace A095768

/-- `floor(2*a(n-1)-(1-n))` -/
def P628089973822156463.Spec : Prop :=
  ∀ n, P628089973822156463.a n = A095768 (n + 1)

theorem P628089973822156463.correct : P628089973822156463.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095768, Nat.add_sub_cancel, A095768.P628089973822156463.a, A095768.P2497746266272877620.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095768, Nat.add_sub_cancel, A095768.P628089973822156463.a, A095768.P2497746266272877620.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A095768

/-! ## A095768.P218526421277439767

`ceil(2*a(n-1)+n-1)` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A095768.P218526421277439767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) + ((n : ℤ) - 1)

end

end A095768.P218526421277439767

namespace A095768

/-- `ceil(2*a(n-1)+n-1)` -/
def P218526421277439767.Spec : Prop :=
  ∀ n, P218526421277439767.a n = A095768 (n + 1)

theorem P218526421277439767.correct : P218526421277439767.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095768, Nat.add_sub_cancel, A095768.P218526421277439767.a, A095768.P2497746266272877620.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095768, Nat.add_sub_cancel, A095768.P218526421277439767.a, A095768.P2497746266272877620.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A095768

/-! ## A095768.P323465038080049051

`round(2*a(n-1)+n-1)` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A095768.P323465038080049051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) + ((n : ℤ) - 1)

end

end A095768.P323465038080049051

namespace A095768

/-- `round(2*a(n-1)+n-1)` -/
def P323465038080049051.Spec : Prop :=
  ∀ n, P323465038080049051.a n = A095768 (n + 1)

theorem P323465038080049051.correct : P323465038080049051.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095768, Nat.add_sub_cancel, A095768.P323465038080049051.a, A095768.P2497746266272877620.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095768, Nat.add_sub_cancel, A095768.P323465038080049051.a, A095768.P2497746266272877620.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A095768

/-!
# A095769: a(1)=a(2)=1; a(n)=a(a(a(a(n-1))))+a(n-a(a(a(n-1)))).

The programs for A095769, the canonical program `A095769.P3454313405327258003` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095769 has offset 1).

The definition of A095769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(a(a(n-1)-1)-1)-1)+a(n-a(a(a(n-1)-1)-1))` (program `A095769.P3454313405327258003`, by `A095769.P3454313405327258003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095769.P3454313405327258003

`a(a(a(a(n-1)-1)-1)-1)+a(n-a(a(a(n-1)-1)-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095769

/-- `a(a(a(a(n-1)-1)-1)-1)+a(n-a(a(a(n-1)-1)-1))` -/
def P3454313405327258003.Spec : Prop :=
  ∀ n, (P3454313405327258003.a n : ℤ) = A095769 (n + 1)

theorem P3454313405327258003.correct : P3454313405327258003.Spec := by
  intro n
  simp only [A095769, Nat.add_sub_cancel]

end A095769

/-! ## A095769.P15245130332986549349

`A095770(n)+a(n-1)` with `a(0)=1`
-/

namespace A095769.P15245130332986549349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095770 n + a (n - 1)

end

end A095769.P15245130332986549349

namespace A095769

/-- `A095770(n)+a(n-1)` -/
def P15245130332986549349.Spec : Prop :=
  ∀ n, P15245130332986549349.a n = A095769 (n + 1)

end A095769

/-! ## A095769.P2858785929954370481

`∑[A095770(abs(1-n)+1)]`
-/

namespace A095769.P2858785929954370481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095770 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095769.P2858785929954370481

namespace A095769

/-- `∑[A095770(abs(1-n)+1)]` -/
def P2858785929954370481.Spec : Prop :=
  ∀ n, P2858785929954370481.a n = A095769 (n + 1)

end A095769

/-! ## A095769.P1326565999301435842

`∑[A095770(round(sqrt(n²+1)))]+1`
-/

namespace A095769.P1326565999301435842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095770 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095769.P1326565999301435842

namespace A095769

/-- `∑[A095770(round(sqrt(n²+1)))]+1` -/
def P1326565999301435842.Spec : Prop :=
  ∀ n, P1326565999301435842.a n = A095769 (n + 1)

end A095769

/-! ## A095769.P8557656937601561956

`∑[and(1, A095770(A000038(n)+n))]`
-/

namespace A095769.P8557656937601561956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A095770 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095769.P8557656937601561956

namespace A095769

/-- `∑[and(1, A095770(A000038(n)+n))]` -/
def P8557656937601561956.Spec : Prop :=
  ∀ n, P8557656937601561956.a n = A095769 (n + 1)

end A095769

/-! ## A095769.P2422920342360981160

`∑[A095770(n)/A328573(a(n-1))]` with `a(0)=1`
-/

namespace A095769.P2422920342360981160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A095770 n : ℚ) / (A328573 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095769.P2422920342360981160

namespace A095769

/-- `∑[A095770(n)/A328573(a(n-1))]` -/
def P2422920342360981160.Spec : Prop :=
  ∀ n, P2422920342360981160.a n = (A095769 (n + 1) : ℚ)

end A095769

/-! ## A095769.P11071500671228326525

`(∑[A095770(A028310(n))]+1)%A103145(n)`
-/

namespace A095769.P11071500671228326525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095770 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (A103145 n)

end

end A095769.P11071500671228326525

namespace A095769

/-- `(∑[A095770(A028310(n))]+1)%A103145(n)` -/
def P11071500671228326525.Spec : Prop :=
  ∀ n, P11071500671228326525.a n = A095769 (n + 1)

end A095769

/-! ## A095769.P11003917867619443315

`∑[A095770(A000038(n)+n)]%(4*A016778(n))`
-/

namespace A095769.P11003917867619443315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095770 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (4 * A016778 n)

end

end A095769.P11003917867619443315

namespace A095769

/-- `∑[A095770(A000038(n)+n)]%(4*A016778(n))` -/
def P11003917867619443315.Spec : Prop :=
  ∀ n, P11003917867619443315.a n = A095769 (n + 1)

end A095769

/-!
# A095770: First differences of A095769.

The programs for A095770, the canonical program `A095770.P9197857018572479300` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095770 has offset 1).

The definition of A095770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095770.P9197857018572479300

`Δ[A095769(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095770

/-- `Δ[A095769(n+1)]` -/
def P9197857018572479300.Spec : Prop :=
  ∀ n, P9197857018572479300.a n = A095770 (n + 1)

theorem P9197857018572479300.correct : P9197857018572479300.Spec := by
  intro n
  simp only [A095770, Nat.add_sub_cancel]

end A095770

/-! ## A095770.P15444178521762428211

`A095769(n+2)-A095769(n+1)`
-/

namespace A095770.P15444178521762428211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095769 (n + 2) - A095769 (n + 1)

end

end A095770.P15444178521762428211

namespace A095770

/-- `A095769(n+2)-A095769(n+1)` -/
def P15444178521762428211.Spec : Prop :=
  ∀ n, P15444178521762428211.a n = A095770 (n + 1)

theorem P15444178521762428211.correct : P15444178521762428211.Spec := by
  intro n
  simp only [A095770, Nat.add_sub_cancel, A095770.P15444178521762428211.a, A095770.P9197857018572479300.f1, A095770.P9197857018572479300.a, SequenceMachineLib.memo_apply]

end A095770

/-! ## A095770.P2100270993636851462

`Δ[A095769(A008619(2*n))]²`
-/

namespace A095770.P2100270993636851462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095769 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A095770.P2100270993636851462

namespace A095770

/-- `Δ[A095769(A008619(2*n))]²` -/
def P2100270993636851462.Spec : Prop :=
  ∀ n, P2100270993636851462.a n = A095770 (n + 1)

end A095770

/-! ## A095770.P17934627008436599210

`A255887(A390186(n+1))`
-/

namespace A095770.P17934627008436599210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255887 (A390186 (n + 1)).toNat

end

end A095770.P17934627008436599210

namespace A095770

/-- `A255887(A390186(n+1))` -/
def P17934627008436599210.Spec : Prop :=
  ∀ n, P17934627008436599210.a n = A095770 (n + 1)

end A095770

/-! ## A095770.P14003773527259887498

`A038189(A031594(n+2))`
-/

namespace A095770.P14003773527259887498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A031594 (n + 2)).toNat

end

end A095770.P14003773527259887498

namespace A095770

/-- `A038189(A031594(n+2))` -/
def P14003773527259887498.Spec : Prop :=
  ∀ n, P14003773527259887498.a n = A095770 (n + 1)

end A095770

/-!
# A095771: Number of times n appears in A095769.

The programs for A095771, the canonical program `A095771.P5222382847251483108` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095771 has offset 1).

The definition of A095771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095771.P5222382847251483108

`Δ[record[(n+1)*A095770(n+1)]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095771

/-- `Δ[record[(n+1)*A095770(n+1)]]` -/
def P5222382847251483108.Spec : Prop :=
  ∀ n, P5222382847251483108.a n = A095771 (n + 1)

theorem P5222382847251483108.correct : P5222382847251483108.Spec := by
  intro n
  simp only [A095771, Nat.add_sub_cancel]

end A095771

/-! ## A095771.P15039424488389526931

`Δ[eq[1, A095770(A000038(n)+n)]]`
-/

namespace A095771.P15039424488389526931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095770 (A000038 n + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A095771.P15039424488389526931

namespace A095771

/-- `Δ[eq[1, A095770(A000038(n)+n)]]` -/
def P15039424488389526931.Spec : Prop :=
  ∀ n, P15039424488389526931.a n = A095771 (n + 1)

end A095771

/-! ## A095771.P2861608332441420675

`Δ[eq[1, A095770(abs(n-A000038(n)))]]`
-/

namespace A095771.P2861608332441420675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095770 |(n : ℤ) - A000038 n|.toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A095771.P2861608332441420675

namespace A095771

/-- `Δ[eq[1, A095770(abs(n-A000038(n)))]]` -/
def P2861608332441420675.Spec : Prop :=
  ∀ n, P2861608332441420675.a n = A095771 (n + 1)

end A095771

/-!
# A095772: Number of times n appears in A093878.

The programs for A095772, the canonical program `A095772.P9689434051256186322` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095772 has offset 1).

The definition of A095772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095772.P9689434051256186322

`Δ[record[(n+1)*A094217(n+1)]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095772

/-- `Δ[record[(n+1)*A094217(n+1)]]` -/
def P9689434051256186322.Spec : Prop :=
  ∀ n, P9689434051256186322.a n = A095772 (n + 1)

theorem P9689434051256186322.correct : P9689434051256186322.Spec := by
  intro n
  simp only [A095772, Nat.add_sub_cancel]

end A095772

/-! ## A095772.P8099078720424969360

`Δ[eq[1, A094217(A000038(n)+n)]]`
-/

namespace A095772.P8099078720424969360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094217 (A000038 n + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A095772.P8099078720424969360

namespace A095772

/-- `Δ[eq[1, A094217(A000038(n)+n)]]` -/
def P8099078720424969360.Spec : Prop :=
  ∀ n, P8099078720424969360.a n = A095772 (n + 1)

end A095772

/-!
# A095773: a(1)=1, a(n) = 1 + a(n - a(a(a(n-1)))).

The programs for A095773, the canonical program `A095773.P14618007147280488653` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095773 has offset 1).

The definition of A095773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-a(a(a(n-1)-1)-1))` (program `A095773.P14618007147280488653`, by `A095773.P14618007147280488653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095773.P14618007147280488653

`1+a(n-a(a(a(n-1)-1)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095773

/-- `1+a(n-a(a(a(n-1)-1)-1))` -/
def P14618007147280488653.Spec : Prop :=
  ∀ n, (P14618007147280488653.a n : ℤ) = A095773 (n + 1)

theorem P14618007147280488653.correct : P14618007147280488653.Spec := by
  intro n
  simp only [A095773, Nat.add_sub_cancel]

end A095773

/-! ## A095773.P4310140972577430887

`A048766(A222170(n))+1`
-/

namespace A095773.P4310140972577430887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A222170 n).toNat + 1

end

end A095773.P4310140972577430887

namespace A095773

/-- `A048766(A222170(n))+1` -/
def P4310140972577430887.Spec : Prop :=
  ∀ n, P4310140972577430887.a n = A095773 (n + 1)

end A095773

/-! ## A095773.P10668014222808970481

`A087739(A285375(n+1))`
-/

namespace A095773.P10668014222808970481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (A285375 (n + 1)).toNat

end

end A095773.P10668014222808970481

namespace A095773

/-- `A087739(A285375(n+1))` -/
def P10668014222808970481.Spec : Prop :=
  ∀ n, P10668014222808970481.a n = A095773 (n + 1)

end A095773

/-! ## A095773.P14689814971219121093

`A163563(round(n/2)+1+n)`
-/

namespace A095773.P14689814971219121093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1 + (n : ℤ)).toNat

end

end A095773.P14689814971219121093

namespace A095773

/-- `A163563(round(n/2)+1+n)` -/
def P14689814971219121093.Spec : Prop :=
  ∀ n, P14689814971219121093.a n = A095773 (n + 1)

end A095773

/-! ## A095773.P926380834692673548

`ceil(log(A343661(n+2)))`
-/

namespace A095773.P926380834692673548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A343661 (n + 2) : ℝ)⌉

end

end A095773.P926380834692673548

namespace A095773

/-- `ceil(log(A343661(n+2)))` -/
def P926380834692673548.Spec : Prop :=
  ∀ n, P926380834692673548.a n = A095773 (n + 1)

end A095773

/-!
# A095774: a(n)=2*A003160(n)-n.

The programs for A095774, the canonical program `A095774.P3934160063967268362` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095774 has offset 1).

The definition of A095774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A003160(n+1)-(n+1)` (program `A095774.P3934160063967268362`, by `A095774.P3934160063967268362.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095774.P3934160063967268362

`2*A003160(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095774

/-- `2*A003160(n+1)-(n+1)` -/
def P3934160063967268362.Spec : Prop :=
  ∀ n, P3934160063967268362.a n = A095774 (n + 1)

theorem P3934160063967268362.correct : P3934160063967268362.Spec := by
  intro n
  simp only [A095774, Nat.add_sub_cancel]

end A095774

/-! ## A095774.P11066988918151929947

`∑[A194688(n+1)-3]`
-/

namespace A095774.P11066988918151929947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194688 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095774.P11066988918151929947

namespace A095774

/-- `∑[A194688(n+1)-3]` -/
def P11066988918151929947.Spec : Prop :=
  ∀ n, P11066988918151929947.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P8329433664495005126

`∑[(-1)^A161579(n+1)]`
-/

namespace A095774.P8329433664495005126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A161579 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095774.P8329433664495005126

namespace A095774

/-- `∑[(-1)^A161579(n+1)]` -/
def P8329433664495005126.Spec : Prop :=
  ∀ n, P8329433664495005126.a n = (A095774 (n + 1) : ℚ)

end A095774

/-! ## A095774.P12092151644275536645

`∑[(-1)^A161580(n+1)]`
-/

namespace A095774.P12092151644275536645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A161580 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095774.P12092151644275536645

namespace A095774

/-- `∑[(-1)^A161580(n+1)]` -/
def P12092151644275536645.Spec : Prop :=
  ∀ n, P12092151644275536645.a n = (A095774 (n + 1) : ℚ)

end A095774

/-! ## A095774.P1143988700628018582

`1-A071993(n+2)`
-/

namespace A095774.P1143988700628018582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071993 (n + 2)

end

end A095774.P1143988700628018582

namespace A095774

/-- `1-A071993(n+2)` -/
def P1143988700628018582.Spec : Prop :=
  ∀ n, P1143988700628018582.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P5267808136287920273

`∑[A080426(n+2)-2]`
-/

namespace A095774.P5267808136287920273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095774.P5267808136287920273

namespace A095774

/-- `∑[A080426(n+2)-2]` -/
def P5267808136287920273.Spec : Prop :=
  ∀ n, P5267808136287920273.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P6087221618757430529

`∑[Δ[A003156(n+1)]-2]`
-/

namespace A095774.P6087221618757430529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095774.P6087221618757430529

namespace A095774

/-- `∑[Δ[A003156(n+1)]-2]` -/
def P6087221618757430529.Spec : Prop :=
  ∀ n, P6087221618757430529.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P5654670311543655937

`∑[Δ[A284390(n+1)]-2]`
-/

namespace A095774.P5654670311543655937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284390 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095774.P5654670311543655937

namespace A095774

/-- `∑[Δ[A284390(n+1)]-2]` -/
def P5654670311543655937.Spec : Prop :=
  ∀ n, P5654670311543655937.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P4937546659949787428

`A162648(n+2)-3*(n+1)`
-/

namespace A095774.P4937546659949787428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 2) - (3 * (n + 1) : ℤ)

end

end A095774.P4937546659949787428

namespace A095774

/-- `A162648(n+2)-3*(n+1)` -/
def P4937546659949787428.Spec : Prop :=
  ∀ n, P4937546659949787428.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P774075401450442061

`A003156(n+2)-(2*n+3)`
-/

namespace A095774.P774075401450442061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 2) - (2 * n + 3 : ℤ)

end

end A095774.P774075401450442061

namespace A095774

/-- `A003156(n+2)-(2*n+3)` -/
def P774075401450442061.Spec : Prop :=
  ∀ n, P774075401450442061.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P13353033872908148895

`A079523(n+2)-(3*n+4)`
-/

namespace A095774.P13353033872908148895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 2) - (3 * n + 4 : ℤ)

end

end A095774.P13353033872908148895

namespace A095774

/-- `A079523(n+2)-(3*n+4)` -/
def P13353033872908148895.Spec : Prop :=
  ∀ n, P13353033872908148895.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P6477575840082786016

`A284390(n+2)-(2*n+5)`
-/

namespace A095774.P6477575840082786016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284390 (n + 2) - (2 * n + 5 : ℤ)

end

end A095774.P6477575840082786016

namespace A095774

/-- `A284390(n+2)-(2*n+5)` -/
def P6477575840082786016.Spec : Prop :=
  ∀ n, P6477575840082786016.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P15361165876023311537

`A036554(n+2)-(3*n+5)`
-/

namespace A095774.P15361165876023311537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 2) - (3 * n + 5 : ℤ)

end

end A095774.P15361165876023311537

namespace A095774

/-- `A036554(n+2)-(3*n+5)` -/
def P15361165876023311537.Spec : Prop :=
  ∀ n, P15361165876023311537.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P6820689227655780808

`Δ[∑[A003158(n+1)]%(n+1)]`
-/

namespace A095774.P6820689227655780808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095774.P6820689227655780808

namespace A095774

/-- `Δ[∑[A003158(n+1)]%(n+1)]` -/
def P6820689227655780808.Spec : Prop :=
  ∀ n, P6820689227655780808.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P9711580748358724199

`A003158(n+2)-2*(2*n+3)`
-/

namespace A095774.P9711580748358724199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 2) - (2 * (2 * n + 3) : ℤ)

end

end A095774.P9711580748358724199

namespace A095774

/-- `A003158(n+2)-2*(2*n+3)` -/
def P9711580748358724199.Spec : Prop :=
  ∀ n, P9711580748358724199.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P18293431235844704146

`record[A003156(abs(1-n)+1)-2]-Δ[n²]`
-/

namespace A095774.P18293431235844704146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (|1 - (n : ℤ)| + 1).toNat - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A095774.P18293431235844704146

namespace A095774

/-- `record[A003156(abs(1-n)+1)-2]-Δ[n²]` -/
def P18293431235844704146.Spec : Prop :=
  ∀ n, P18293431235844704146.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P1835057694650459587

`A065359(A072939(n+2))`
-/

namespace A095774.P1835057694650459587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A072939 (n + 2)).toNat

end

end A095774.P1835057694650459587

namespace A095774

/-- `A065359(A072939(n+2))` -/
def P1835057694650459587.Spec : Prop :=
  ∀ n, P1835057694650459587.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P7854546155454815228

`A065359(A162648(n+2))`
-/

namespace A095774.P7854546155454815228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A162648 (n + 2)).toNat

end

end A095774.P7854546155454815228

namespace A095774

/-- `A065359(A162648(n+2))` -/
def P7854546155454815228.Spec : Prop :=
  ∀ n, P7854546155454815228.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P16069166850871491495

`A065359(A036554(n+2)+1)`
-/

namespace A095774.P16069166850871491495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A036554 (n + 2) + 1).toNat

end

end A095774.P16069166850871491495

namespace A095774

/-- `A065359(A036554(n+2)+1)` -/
def P16069166850871491495.Spec : Prop :=
  ∀ n, P16069166850871491495.a n = A095774 (n + 1)

end A095774

/-! ## A095774.P2432975953378029445

`1-A065359(A003159(n+2))`
-/

namespace A095774.P2432975953378029445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065359 (A003159 (n + 2)).toNat

end

end A095774.P2432975953378029445

namespace A095774

/-- `1-A065359(A003159(n+2))` -/
def P2432975953378029445.Spec : Prop :=
  ∀ n, P2432975953378029445.a n = A095774 (n + 1)

end A095774

/-!
# A095775: n/2 when 2*A003160(n) = n.

The programs for A095775, the canonical program `A095775.P3833551508889081788` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095775 has offset 1).

The definition of A095775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095775.P16582306929276319537

`eq[1, val(A285959(n+2), 2)]+1`
-/

namespace A095775.P16582306929276319537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A285959 (n + 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A095775.P16582306929276319537

namespace A095775

/-- `eq[1, val(A285959(n+2), 2)]+1` -/
def P16582306929276319537.Spec : Prop :=
  ∀ n, (P16582306929276319537.a n : ℤ) = A095775 (n + 1)

end A095775

/-! ## A095775.P4871053713947605569

`eq[n, A091855(n+1)%(n+1)+1]`
-/

namespace A095775.P4871053713947605569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091855 (n + 1)) (n + 1 : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095775.P4871053713947605569

namespace A095775

/-- `eq[n, A091855(n+1)%(n+1)+1]` -/
def P4871053713947605569.Spec : Prop :=
  ∀ n, (P4871053713947605569.a n : ℤ) = A095775 (n + 1)

end A095775

/-! ## A095775.P660646129753105868

`record[gcd(A004277(n), A121539(n+1))]`
-/

namespace A095775.P660646129753105868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004277 n) (A121539 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095775.P660646129753105868

namespace A095775

/-- `record[gcd(A004277(n), A121539(n+1))]` -/
def P660646129753105868.Spec : Prop :=
  ∀ n, (P660646129753105868.a n : ℤ) = A095775 (n + 1)

end A095775

/-! ## A095775.P4078645106291171067

`eq[2, A285959(n+1)-A008574(n)]`
-/

namespace A095775.P4078645106291171067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285959 (n + 1) - A008574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095775.P4078645106291171067

namespace A095775

/-- `eq[2, A285959(n+1)-A008574(n)]` -/
def P4078645106291171067.Spec : Prop :=
  ∀ n, (P4078645106291171067.a n : ℤ) = A095775 (n + 1)

end A095775

/-! ## A095775.P3833551508889081788

`A003160(eq[1, A095774(n+1)+1]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095775

/-- `A003160(eq[1, A095774(n+1)+1]+1)` -/
def P3833551508889081788.Spec : Prop :=
  ∀ n, P3833551508889081788.a n = A095775 (n + 1)

theorem P3833551508889081788.correct : P3833551508889081788.Spec := by
  intro n
  simp only [A095775, Nat.add_sub_cancel]

end A095775

/-! ## A095775.P17724564560872515377

`eq[2, A285959(A285959(n+1)+1)%A285959(n+1)]`
-/

namespace A095775.P17724564560872515377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285959 (A285959 (n + 1) + 1).toNat) (A285959 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095775.P17724564560872515377

namespace A095775

/-- `eq[2, A285959(A285959(n+1)+1)%A285959(n+1)]` -/
def P17724564560872515377.Spec : Prop :=
  ∀ n, (P17724564560872515377.a n : ℤ) = A095775 (n + 1)

end A095775

/-!
# A095776: Expansion of (1-9x-27x^3)^(-1/3).

The programs for A095776, there is no canonical definition to state claims against.
-/

/-! ## A095776.P7685766087307696237

`A028310(3^n*A005773(n))`
-/

namespace A095776.P7685766087307696237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((3 ^ n : ℤ) * A005773 n).toNat

end

end A095776.P7685766087307696237

/-! ## A095776.P7728513494074400702

`A028310(3^n*A086581(n))`
-/

namespace A095776.P7728513494074400702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((3 ^ n : ℤ) * A086581 n).toNat

end

end A095776.P7728513494074400702

/-!
# A095778: Values of n for which A095777(n) is 9 (those terms which are expressible in decimal digits for bases 2 through 10, but not for base 11).

The programs for A095778, there is no canonical definition to state claims against.
-/

/-! ## A095778.P11204796704169368350

`comp[A171397(n)]`
-/

namespace A095778.P11204796704169368350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095778.P11204796704169368350

/-! ## A095778.P3528093734950323846

`eq[10, A190599(n)]`
-/

namespace A095778.P3528093734950323846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095778.P3528093734950323846

/-! ## A095778.P17793395747826832630

`eq[11, A270036(n)]+10`
-/

namespace A095778.P17793395747826832630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270036 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A095778.P17793395747826832630

/-! ## A095778.P6681925577453718605

`lt[A178401(n), A193581(A190599(n))]`
-/

namespace A095778.P6681925577453718605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A190599 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095778.P6681925577453718605

/-! ## A095778.P3821245460031868512

`eq[11, A190600(A043653(n+1))]`
-/

namespace A095778.P3821245460031868512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 (A043653 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095778.P3821245460031868512

/-!
# A095779: Values of n for which A095777(n) is 10 (those terms which are expressible in decimal digits for bases 2 through 11, but not for base 12).

The programs for A095779, there is no canonical definition to state claims against.
-/

/-! ## A095779.P17761277748407470187

`eq[12, A270036(n)]+10`
-/

namespace A095779.P17761277748407470187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270036 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A095779.P17761277748407470187

/-! ## A095779.P13184595951071186675

`∩[A102488(n+1), A171397(n)]`
-/

namespace A095779.P13184595951071186675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095779.P13184595951071186675

/-! ## A095779.P5018803355851888460

`∑[A274216(A329348(2^n))]`
-/

namespace A095779.P5018803355851888460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274216 (A329348 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095779.P5018803355851888460

/-! ## A095779.P6580826686364742734

`A261921(A261909(n+1))-1`
-/

namespace A095779.P6580826686364742734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261921 (A261909 (n + 1)).toNat - 1

end

end A095779.P6580826686364742734

/-! ## A095779.P6963449587854735188

`record[A296746(n+1)/A132625(n)]`
-/

namespace A095779.P6963449587854735188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296746 (n + 1) : ℚ) / (A132625 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095779.P6963449587854735188

/-!
# A095780: Values of n for which A095777(n) is 11 (those terms which are expressible in decimal digits for bases 2 through 12, but not for base 13).

The programs for A095780, there is no canonical definition to state claims against.
-/

/-! ## A095780.P10915965488865632805

`eq[13, A270036(n)]+10`
-/

namespace A095780.P10915965488865632805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270036 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A095780.P10915965488865632805

/-! ## A095780.P18384032748905051340

`eq[11, A095777(n+1)]+1`
-/

namespace A095780.P18384032748905051340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095780.P18384032748905051340

/-! ## A095780.P12366729989609701099

`eq[11, A095777(A028310(n))]`
-/

namespace A095780.P12366729989609701099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095780.P12366729989609701099

/-! ## A095780.P4792246965791606101

`A065475(eq[11, A095777(n+1)])`
-/

namespace A095780.P4792246965791606101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095780.P4792246965791606101

/-! ## A095780.P5466517324476015149

`eq[11, A095777(A233583(n+1))]`
-/

namespace A095780.P5466517324476015149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095780.P5466517324476015149

/-!
# A095781: Values of n for which A095777(n) is 12 (those terms which are expressible in decimal digits for bases 2 through 13, but not for base 14).

The programs for A095781, there is no canonical definition to state claims against.
-/

/-! ## A095781.P12181405503627226

`eq[14, A270036(n)]+10`
-/

namespace A095781.P12181405503627226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270036 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A095781.P12181405503627226

/-! ## A095781.P16708631639734369168

`10-A001489(eq[14, A270036(n)])`
-/

namespace A095781.P16708631639734369168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270036 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095781.P16708631639734369168

/-! ## A095781.P140431875226946989

`eq[12, A095777(n+1)]+1`
-/

namespace A095781.P140431875226946989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095781.P140431875226946989

/-! ## A095781.P6067709619187201028

`eq[12, A095777(A028310(n))]`
-/

namespace A095781.P6067709619187201028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095781.P6067709619187201028

/-! ## A095781.P7423324620491467634

`A020725(eq[12, A095777(n+1)])`
-/

namespace A095781.P7423324620491467634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095781.P7423324620491467634

/-!
# A095782: Values of n for which A095777(n) is 13 (those terms which are expressible in decimal digits for bases 2 through 14, but not for base 15).

The programs for A095782, there is no canonical definition to state claims against.
-/

/-! ## A095782.P13032896939762670341

`eq[15, A270036(n)]+10`
-/

namespace A095782.P13032896939762670341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270036 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A095782.P13032896939762670341

/-! ## A095782.P17068543169962776552

`eq[13, A095777(n+1)]+1`
-/

namespace A095782.P17068543169962776552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095782.P17068543169962776552

/-! ## A095782.P7747127969512419052

`eq[13, A095777(A028310(n))]`
-/

namespace A095782.P7747127969512419052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095782.P7747127969512419052

/-! ## A095782.P16749945698876795846

`A065475(eq[13, A095777(n+1)])`
-/

namespace A095782.P16749945698876795846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095782.P16749945698876795846

/-! ## A095782.P933922681596563004

`A153152(eq[13, A095777(n+1)])`
-/

namespace A095782.P933922681596563004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095782.P933922681596563004

/-!
# A095783: Values of n for which A095777(n) is 14 (those terms which are expressible in decimal digits for bases 2 through 15, but not for base 16).

The programs for A095783, there is no canonical definition to state claims against.
-/

/-! ## A095783.P15934854322864453262

`eq[16, A270036(n)]+10`
-/

namespace A095783.P15934854322864453262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270036 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A095783.P15934854322864453262

/-!
# A095784: Values of n for which A095777(n) is 15 (those terms which are expressible in decimal digits for bases 2 through 16, but not for base 17).

The programs for A095784, there is no canonical definition to state claims against.
-/

/-! ## A095784.P11533011110557488079

`eq[17, A270036(n)]+10`
-/

namespace A095784.P11533011110557488079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270036 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A095784.P11533011110557488079

/-!
# A095786: Values of n for which A095777(n) is 17 (those terms which are expressible in decimal digits for bases 2 through 18, but not for base 19).

The programs for A095786, there is no canonical definition to state claims against.
-/

/-! ## A095786.P728721608141030579

`A131646(A131365(n+1)+1)`
-/

namespace A095786.P728721608141030579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131646 (A131365 (n + 1) + 1).toNat

end

end A095786.P728721608141030579

/-!
# A095787: Numbers n such that A095163(n) is different from A033677(n).

The programs for A095787, there is no canonical definition to state claims against.
-/

/-! ## A095787.P4356203703143273528

`A153152(lt[A095163(n+1)², n])`
-/

namespace A095787.P4356203703143273528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095163 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A095787.P4356203703143273528

/-! ## A095787.P18237078167141950016

`lt[A033676(n+1), A095165(n+1)]+1`
-/

namespace A095787.P18237078167141950016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A095787.P18237078167141950016

/-! ## A095787.P5915946990408846868

`lt[A095163(n+1), A033677(n+1)]+1`
-/

namespace A095787.P5915946990408846868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A095787.P5915946990408846868

/-! ## A095787.P721425099537911752

`A153152(lt[A095163(n+1), A033677(n+1)])`
-/

namespace A095787.P721425099537911752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A095787.P721425099537911752

/-! ## A095787.P16227190742025402810

`A039218(A007814(2*n+5)+1)+lt[A095163(n+1)², n]`
-/

namespace A095787.P16227190742025402810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095163 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039218 (A007814 (2 * n + 5) + 1).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A095787.P16227190742025402810

/-!
# A095788: Table, read by antidiagonals, of iterated binomial transforms of A095148, which also forms the antidiagonal sums shift right.

The programs for A095788, there is no canonical definition to state claims against.
-/

/-! ## A095788.P11893040479941725737

`A271025(A061579(n)%A265780(n+1))`
-/

namespace A095788.P11893040479941725737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271025 (Int.tmod (A061579 n) (A265780 (n + 1))).toNat

end

end A095788.P11893040479941725737

/-! ## A095788.P9454399409167272021

`A271025(A061579(n))%A104047(2*n+1)`
-/

namespace A095788.P9454399409167272021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271025 (A061579 n).toNat) (A104047 (2 * n + 1))

end

end A095788.P9454399409167272021

/-! ## A095788.P14614201782319512785

`A271025(A061579(n))+A000007(A000045(n+1))`
-/

namespace A095788.P14614201782319512785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271025 (A061579 n).toNat + A000007 (A000045 (n + 1)).toNat

end

end A095788.P14614201782319512785

/-! ## A095788.P17352750237639695043

`A002217(A104047(n+1))*A271025(A061579(n))`
-/

namespace A095788.P17352750237639695043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (A104047 (n + 1)).toNat * A271025 (A061579 n).toNat

end

end A095788.P17352750237639695043

/-! ## A095788.P10687995045689136567

`A046645(A201707(n+1))*A271025(A061579(n))`
-/

namespace A095788.P10687995045689136567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A201707 (n + 1)).toNat * A271025 (A061579 n).toNat

end

end A095788.P10687995045689136567

/-!
# A095789: Main diagonal of table A095788 of iterated binomial transforms of A095148, which also forms the antidiagonal sums shift right.

The programs for A095789, there is no canonical definition to state claims against.
-/

/-! ## A095789.P3259874225386714259

`A095788(∑[4*n])`
-/

namespace A095789.P3259874225386714259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095788 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095789.P3259874225386714259

/-! ## A095789.P11185214327854303750

`record[A095788(A146532(n))]`
-/

namespace A095789.P11185214327854303750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095788 (A146532 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095789.P11185214327854303750

/-!
# A095791: Number of digits in lazy-Fibonacci-binary representation of n (A104326).

The programs for A095791, the canonical program `A095791.P9376458256394770809` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095791 has offset 0).

The definition of A095791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095791.P12343482193358179707

`a(floor(n/ϕ))+1` with `a(0)=1, a(1)=1`
-/

namespace A095791.P12343482193358179707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat + 1

end

end A095791.P12343482193358179707

namespace A095791

/-- `a(floor(n/ϕ))+1` -/
def P12343482193358179707.Spec : Prop :=
  ∀ n, (P12343482193358179707.a n : ℤ) = A095791 n

end A095791

/-! ## A095791.P858892720589089696

`4/2-(1-a(floor(n/ϕ)))` with `a(0)=1, a(1)=1`
-/

namespace A095791.P858892720589089696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (4 : ℚ) / 2 - (1 - a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat)

end

end A095791.P858892720589089696

namespace A095791

/-- `4/2-(1-a(floor(n/ϕ)))` -/
def P858892720589089696.Spec : Prop :=
  ∀ n, P858892720589089696.a n = (A095791 n : ℚ)

end A095791

/-! ## A095791.P10405909703145540149

`∑{digits}[A104326(n), #!]`
-/

namespace A095791.P10405909703145540149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A095791.P10405909703145540149

namespace A095791

/-- `∑{digits}[A104326(n), #!]` -/
def P10405909703145540149.Spec : Prop :=
  ∀ n, (P10405909703145540149.a n : ℤ) = A095791 n

end A095791

/-! ## A095791.P13181460054729278146

`A072649(floor(n/ϕ)+1)`
-/

namespace A095791.P13181460054729278146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (⌊(n : ℝ) / Real.goldenRatio⌋ + 1).toNat

end

end A095791.P13181460054729278146

namespace A095791

/-- `A072649(floor(n/ϕ)+1)` -/
def P13181460054729278146.Spec : Prop :=
  ∀ n, P13181460054729278146.a n = A095791 n

end A095791

/-! ## A095791.P1024819243716627736

`∑[char[Δ[A104762(n+4)]]]`
-/

namespace A095791.P1024819243716627736
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095791.P1024819243716627736

namespace A095791

/-- `∑[char[Δ[A104762(n+4)]]]` -/
def P1024819243716627736.Spec : Prop :=
  ∀ n, (P1024819243716627736.a n : ℤ) = A095791 n

end A095791

/-! ## A095791.P9376458256394770809

`floor(a(A060143(n)))+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095791

/-- `floor(a(A060143(n)))+1` -/
def P9376458256394770809.Spec : Prop :=
  ∀ n, (P9376458256394770809.a n : ℤ) = A095791 n

theorem P9376458256394770809.correct : P9376458256394770809.Spec := by
  intro n
  simp only [A095791]

end A095791

/-! ## A095791.P2159962662615606149

`∑[A010056(n+1)-char[1]]`
-/

namespace A095791.P2159962662615606149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095791.P2159962662615606149

namespace A095791

/-- `∑[A010056(n+1)-char[1]]` -/
def P2159962662615606149.Spec : Prop :=
  ∀ n, P2159962662615606149.a n = A095791 n

end A095791

/-! ## A095791.P2231292180981012741

`∑[char[A020706(n)-2]]+1`
-/

namespace A095791.P2231292180981012741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095791.P2231292180981012741

namespace A095791

/-- `∑[char[A020706(n)-2]]+1` -/
def P2231292180981012741.Spec : Prop :=
  ∀ n, (P2231292180981012741.a n : ℤ) = A095791 n

end A095791

/-! ## A095791.P13043115950099135329

`∑[char[A000071(n+4)]]+1`
-/

namespace A095791.P13043115950099135329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095791.P13043115950099135329

namespace A095791

/-- `∑[char[A000071(n+4)]]+1` -/
def P13043115950099135329.Spec : Prop :=
  ∀ n, (P13043115950099135329.a n : ℤ) = A095791 n

end A095791

/-! ## A095791.P5727372388961049569

`∑[char[A061489(2*n+1)]]`
-/

namespace A095791.P5727372388961049569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061489 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095791.P5727372388961049569

namespace A095791

/-- `∑[char[A061489(2*n+1)]]` -/
def P5727372388961049569.Spec : Prop :=
  ∀ n, (P5727372388961049569.a n : ℤ) = A095791 n

end A095791

/-! ## A095791.P8709107018042120362

`∑[char[A258085(2*n+1)]]`
-/

namespace A095791.P8709107018042120362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258085 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095791.P8709107018042120362

namespace A095791

/-- `∑[char[A258085(2*n+1)]]` -/
def P8709107018042120362.Spec : Prop :=
  ∀ n, (P8709107018042120362.a n : ℤ) = A095791 n

end A095791

/-! ## A095791.P8145076601372401910

`∑[char[char[1]+∑[A000045(n)]]]`
-/

namespace A095791.P8145076601372401910
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095791.P8145076601372401910

namespace A095791

/-- `∑[char[char[1]+∑[A000045(n)]]]` -/
def P8145076601372401910.Spec : Prop :=
  ∀ n, (P8145076601372401910.a n : ℤ) = A095791 n

end A095791

/-! ## A095791.P10153376012491766273

`A192687(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A095791.P10153376012491766273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A192687 n + a (n - 1)

end

end A095791.P10153376012491766273

namespace A095791

/-- `A192687(n)+a(n-1)` -/
def P10153376012491766273.Spec : Prop :=
  ∀ n, P10153376012491766273.a n = A095791 n

end A095791

/-! ## A095791.P8464697906313187032

`∑[char[A020695(n+1)-1]]+1`
-/

namespace A095791.P8464697906313187032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095791.P8464697906313187032

namespace A095791

/-- `∑[char[A020695(n+1)-1]]+1` -/
def P8464697906313187032.Spec : Prop :=
  ∀ n, (P8464697906313187032.a n : ℤ) = A095791 n

end A095791

/-! ## A095791.P7349549656202560256

`∑[char[A226538(2*(n+1))]]+1`
-/

namespace A095791.P7349549656202560256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095791.P7349549656202560256

namespace A095791

/-- `∑[char[A226538(2*(n+1))]]+1` -/
def P7349549656202560256.Spec : Prop :=
  ∀ n, (P7349549656202560256.a n : ℤ) = A095791 n

end A095791

/-! ## A095791.P4430439361345648899

`A130241(A087172(n+1))`
-/

namespace A095791.P4430439361345648899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (A087172 (n + 1)).toNat

end

end A095791.P4430439361345648899

namespace A095791

/-- `A130241(A087172(n+1))` -/
def P4430439361345648899.Spec : Prop :=
  ∀ n, P4430439361345648899.a n = A095791 n

end A095791

/-! ## A095791.P9199704182134631215

`A135817(A130312(n+1)+1)`
-/

namespace A095791.P9199704182134631215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135817 (A130312 (n + 1) + 1).toNat

end

end A095791.P9199704182134631215

namespace A095791

/-- `A135817(A130312(n+1)+1)` -/
def P9199704182134631215.Spec : Prop :=
  ∀ n, P9199704182134631215.a n = A095791 n

end A095791

/-! ## A095791.P12414318074783707581

`A028310(A072649(n+1)-1)`
-/

namespace A095791.P12414318074783707581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A072649 (n + 1) - 1).toNat

end

end A095791.P12414318074783707581

namespace A095791

/-- `A028310(A072649(n+1)-1)` -/
def P12414318074783707581.Spec : Prop :=
  ∀ n, P12414318074783707581.a n = A095791 n

end A095791

/-! ## A095791.P5886627036428548168

`A130233(A060143(n)+1)-1`
-/

namespace A095791.P5886627036428548168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A060143 n + 1).toNat - 1

end

end A095791.P5886627036428548168

namespace A095791

/-- `A130233(A060143(n)+1)-1` -/
def P5886627036428548168.Spec : Prop :=
  ∀ n, P5886627036428548168.a n = A095791 n

end A095791

/-! ## A095791.P17707823540193962100

`A200648(2*A130312(n+1))`
-/

namespace A095791.P17707823540193962100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200648 (2 * A130312 (n + 1)).toNat

end

end A095791.P17707823540193962100

namespace A095791

/-- `A200648(2*A130312(n+1))` -/
def P17707823540193962100.Spec : Prop :=
  ∀ n, P17707823540193962100.a n = A095791 n

end A095791

/-!
# A095792: a(n) = Z(n) - L(n), where Z=A072649 and L=A095791 are lengths of Zeckendorf and lazy Fibonacci representations in binary notation.

The programs for A095792, the canonical program `A095792.P5756927233554498933` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095792 has offset 0).

The definition of A095792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095792.P1764120614490802864

`1-char[ogf(x/(1-2x+x^3))]`
-/

namespace A095792.P1764120614490802864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 1] n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095792.P1764120614490802864

namespace A095792

/-- `1-char[ogf(x/(1-2x+x^3))]` -/
def P1764120614490802864.Spec : Prop :=
  ∀ n, P1764120614490802864.a n = A095792 n

end A095792

/-! ## A095792.P12527939176551452154

`xor(1, char[ogf(x/(1-2x+x^3))])`
-/

namespace A095792.P12527939176551452154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 1] n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A095792.P12527939176551452154

namespace A095792

/-- `xor(1, char[ogf(x/(1-2x+x^3))])` -/
def P12527939176551452154.Spec : Prop :=
  ∀ n, (P12527939176551452154.a n : ℤ) = A095792 n

end A095792

/-! ## A095792.P10883980806874880048

`1-char[ceil(ϕ*a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A095792.P10883980806874880048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 2) : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095792.P10883980806874880048

namespace A095792

/-- `1-char[ceil(ϕ*a(n-2))]` -/
def P10883980806874880048.Spec : Prop :=
  ∀ n, P10883980806874880048.a n = A095792 n

end A095792

/-! ## A095792.P9184384090066909544

`1-char[a(n-1)+a(n-2)+1]` with `a(0)=0, a(1)=0`
-/

namespace A095792.P9184384090066909544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A095792.P9184384090066909544

namespace A095792

/-- `1-char[a(n-1)+a(n-2)+1]` -/
def P9184384090066909544.Spec : Prop :=
  ∀ n, P9184384090066909544.a n = A095792 n

end A095792

/-! ## A095792.P3610184872443987453

`1-A192687(n)`
-/

namespace A095792.P3610184872443987453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A192687 n

end

end A095792.P3610184872443987453

namespace A095792

/-- `1-A192687(n)` -/
def P3610184872443987453.Spec : Prop :=
  ∀ n, P3610184872443987453.a n = A095792 n

end A095792

/-! ## A095792.P4788937939869811316

`1-char[A115346(n)]`
-/

namespace A095792.P4788937939869811316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115346 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095792.P4788937939869811316

namespace A095792

/-- `1-char[A115346(n)]` -/
def P4788937939869811316.Spec : Prop :=
  ∀ n, P4788937939869811316.a n = A095792 n

end A095792

/-! ## A095792.P12591469281234971864

`char[comp[∑[A000045(n)]]]`
-/

namespace A095792.P12591469281234971864
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095792.P12591469281234971864

namespace A095792

/-- `char[comp[∑[A000045(n)]]]` -/
def P12591469281234971864.Spec : Prop :=
  ∀ n, (P12591469281234971864.a n : ℤ) = A095792 n

end A095792

/-! ## A095792.P13043196078135543498

`floor(acot(acot(A000119(n))))`
-/

namespace A095792.P13043196078135543498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (A000119 n : ℝ))⌋

end

end A095792.P13043196078135543498

namespace A095792

/-- `floor(acot(acot(A000119(n))))` -/
def P13043196078135543498.Spec : Prop :=
  ∀ n, P13043196078135543498.a n = A095792 n

end A095792

/-! ## A095792.P5756927233554498933

`1-A010056(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095792

/-- `1-A010056(n+1)` -/
def P5756927233554498933.Spec : Prop :=
  ∀ n, P5756927233554498933.a n = A095792 n

theorem P5756927233554498933.correct : P5756927233554498933.Spec := by
  intro n
  simp only [A095792]

end A095792

/-! ## A095792.P7678462628396985953

`gcd(2, A334627(n))-1`
-/

namespace A095792.P7678462628396985953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A334627 n) : ℤ) - 1

end

end A095792.P7678462628396985953

namespace A095792

/-- `gcd(2, A334627(n))-1` -/
def P7678462628396985953.Spec : Prop :=
  ∀ n, P7678462628396985953.a n = A095792 n

end A095792

/-! ## A095792.P14916895921847278588

`1-C(A356771(n), n)`
-/

namespace A095792.P14916895921847278588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A356771 n).toNat n : ℤ)

end

end A095792.P14916895921847278588

namespace A095792

/-- `1-C(A356771(n), n)` -/
def P14916895921847278588.Spec : Prop :=
  ∀ n, P14916895921847278588.a n = A095792 n

end A095792

/-! ## A095792.P14572413441409911245

`1-C(A374396(n), n)`
-/

namespace A095792.P14572413441409911245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A374396 n).toNat n : ℤ)

end

end A095792.P14572413441409911245

namespace A095792

/-- `1-C(A374396(n), n)` -/
def P14572413441409911245.Spec : Prop :=
  ∀ n, P14572413441409911245.a n = A095792 n

end A095792

/-! ## A095792.P5486888449044718987

`1-∏{digits}[A327992(n), #]`
-/

namespace A095792.P5486888449044718987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A095792.P5486888449044718987

namespace A095792

/-- `1-∏{digits}[A327992(n), #]` -/
def P5486888449044718987.Spec : Prop :=
  ∀ n, P5486888449044718987.a n = A095792 n

end A095792

/-! ## A095792.P4982614302958252970

`1-char[Δ[A065220(n)]]`
-/

namespace A095792.P4982614302958252970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095792.P4982614302958252970

namespace A095792

/-- `1-char[Δ[A065220(n)]]` -/
def P4982614302958252970.Spec : Prop :=
  ∀ n, P4982614302958252970.a n = A095792 n

end A095792

/-! ## A095792.P8200332177327425969

`floor(atan(A254123(n+1)))`
-/

namespace A095792.P8200332177327425969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A254123 (n + 1) : ℝ)⌋

end

end A095792.P8200332177327425969

namespace A095792

/-- `floor(atan(A254123(n+1)))` -/
def P8200332177327425969.Spec : Prop :=
  ∀ n, P8200332177327425969.a n = A095792 n

end A095792

/-! ## A095792.P9158285383347920063

`char[comp[A000071(n+1)]]`
-/

namespace A095792.P9158285383347920063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095792.P9158285383347920063

namespace A095792

/-- `char[comp[A000071(n+1)]]` -/
def P9158285383347920063.Spec : Prop :=
  ∀ n, (P9158285383347920063.a n : ℤ) = A095792 n

end A095792

/-! ## A095792.P17286734406215648865

`char[comp[A128541(n)-1]]`
-/

namespace A095792.P17286734406215648865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095792.P17286734406215648865

namespace A095792

/-- `char[comp[A128541(n)-1]]` -/
def P17286734406215648865.Spec : Prop :=
  ∀ n, (P17286734406215648865.a n : ℤ) = A095792 n

end A095792

/-! ## A095792.P11385333297977211549

`char[comp[A001611(n)-2]]`
-/

namespace A095792.P11385333297977211549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095792.P11385333297977211549

namespace A095792

/-- `char[comp[A001611(n)-2]]` -/
def P11385333297977211549.Spec : Prop :=
  ∀ n, (P11385333297977211549.a n : ℤ) = A095792 n

end A095792

/-! ## A095792.P346871136925260941

`1-floor(1/A295540(n))`
-/

namespace A095792.P346871136925260941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊1 / (A295540 n : ℚ)⌋

end

end A095792.P346871136925260941

namespace A095792

/-- `1-floor(1/A295540(n))` -/
def P346871136925260941.Spec : Prop :=
  ∀ n, P346871136925260941.a n = A095792 n

end A095792

/-! ## A095792.P13327205949036999798

`1-char[A131524(n+1)]`
-/

namespace A095792.P13327205949036999798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095792.P13327205949036999798

namespace A095792

/-- `1-char[A131524(n+1)]` -/
def P13327205949036999798.Spec : Prop :=
  ∀ n, P13327205949036999798.a n = A095792 n

end A095792

/-!
# A095793: G.f.: A(x) = 1+x*(1+x*(1+x*(...(1+x*(...)^n)...)^3)^2)^1.

The programs for A095793, there is no canonical definition to state claims against.
-/

/-! ## A095793.P2139913108584009203

`∑[A293756(floor(n²/8))-1]+1`
-/

namespace A095793.P2139913108584009203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293756 ⌊(n ^ 2 : ℚ) / 8⌋.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095793.P2139913108584009203

/-! ## A095793.P12612192348227816333

`A064775(A001349(n+1))`
-/

namespace A095793.P12612192348227816333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (A001349 (n + 1)).toNat

end

end A095793.P12612192348227816333

/-! ## A095793.P5717584979854259105

`A337587(A026757(n+1))`
-/

namespace A095793.P5717584979854259105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337587 (A026757 (n + 1)).toNat

end

end A095793.P5717584979854259105

/-!
# A095794: a(n) = A005449(n) - 1, where A005449 = second pentagonal numbers.

The programs for A095794, the canonical program `A095794.P4139454410001183502` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095794 has offset 1).

The definition of A095794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005449(n+1)-1` (program `A095794.P4139454410001183502`, by `A095794.P4139454410001183502.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095794.P12246888427091260029

`(n+2)*(3*(n+1)-2)/2`
-/

namespace A095794.P12246888427091260029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * ((3 * (n + 1) : ℤ) - 2) : ℚ) / 2

end

end A095794.P12246888427091260029

namespace A095794

/-- `(n+2)*(3*(n+1)-2)/2` -/
def P12246888427091260029.Spec : Prop :=
  ∀ n, P12246888427091260029.a n = (A095794 (n + 1) : ℚ)

end A095794

/-! ## A095794.P848523362371439724

`3*(n+1)+a(n-1)-1` with `a(0)=1`
-/

namespace A095794.P848523362371439724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * (n + 1) : ℤ) + a (n - 1) - 1

end

end A095794.P848523362371439724

namespace A095794

/-- `3*(n+1)+a(n-1)-1` -/
def P848523362371439724.Spec : Prop :=
  ∀ n, P848523362371439724.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P6094148170105855599

`A000217(n+1)+A000290(n+1)-1`
-/

namespace A095794.P6094148170105855599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000290 (n + 1) - 1

end

end A095794.P6094148170105855599

namespace A095794

/-- `A000217(n+1)+A000290(n+1)-1` -/
def P6094148170105855599.Spec : Prop :=
  ∀ n, P6094148170105855599.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P4139454410001183502

`A005449(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095794

/-- `A005449(n+1)-1` -/
def P4139454410001183502.Spec : Prop :=
  ∀ n, P4139454410001183502.a n = A095794 (n + 1)

theorem P4139454410001183502.correct : P4139454410001183502.Spec := by
  intro n
  simp only [A095794, Nat.add_sub_cancel]

end A095794

/-! ## A095794.P9869310441097604977

`∑[a(n-1)+3]` with `a(0)=1, a(1)=5`
-/

namespace A095794.P9869310441097604977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095794.P9869310441097604977

namespace A095794

/-- `∑[a(n-1)+3]` -/
def P9869310441097604977.Spec : Prop :=
  ∀ n, (P9869310441097604977.a n : ℤ) = A095794 (n + 1)

end A095794

/-! ## A095794.P8265836115619381828

`∑[ogf((1+3x-x^2)/(1-2x+x^2))]`
-/

namespace A095794.P8265836115619381828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095794.P8265836115619381828

namespace A095794

/-- `∑[ogf((1+3x-x^2)/(1-2x+x^2))]` -/
def P8265836115619381828.Spec : Prop :=
  ∀ n, P8265836115619381828.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P7355531769017493480

`ogf((1+3x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A095794.P7355531769017493480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, -3, 3, -1] n

end

end A095794.P7355531769017493480

namespace A095794

/-- `ogf((1+3x-x^2)/(1-3x+3x^2-x^3))` -/
def P7355531769017493480.Spec : Prop :=
  ∀ n, P7355531769017493480.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P15456625711503927118

`Δ[(n-1)*C(n+2, 2)]`
-/

namespace A095794.P15456625711503927118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (n + 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095794.P15456625711503927118

namespace A095794

/-- `Δ[(n-1)*C(n+2, 2)]` -/
def P15456625711503927118.Spec : Prop :=
  ∀ n, P15456625711503927118.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P15940068868320341573

`Δ[(C(n, 2)+1)*(n+3)]`
-/

namespace A095794.P15940068868320341573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1) * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A095794.P15940068868320341573

namespace A095794

/-- `Δ[(C(n, 2)+1)*(n+3)]` -/
def P15940068868320341573.Spec : Prop :=
  ∀ n, P15940068868320341573.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P13174957859093791263

`∑[floor(3/tan(1/(n+1)))]`
-/

namespace A095794.P13174957859093791263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / Real.tan (1 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095794.P13174957859093791263

namespace A095794

/-- `∑[floor(3/tan(1/(n+1)))]` -/
def P13174957859093791263.Spec : Prop :=
  ∀ n, P13174957859093791263.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P11598681925299078291

`∑[floor(3/asin(1/(n+1)))]`
-/

namespace A095794.P11598681925299078291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / Real.arcsin (1 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095794.P11598681925299078291

namespace A095794

/-- `∑[floor(3/asin(1/(n+1)))]` -/
def P11598681925299078291.Spec : Prop :=
  ∀ n, P11598681925299078291.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P14692935547963714550

`∑[floor(3*cot(1/(n+1)))]`
-/

namespace A095794.P14692935547963714550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * Real.cot (1 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095794.P14692935547963714550

namespace A095794

/-- `∑[floor(3*cot(1/(n+1)))]` -/
def P14692935547963714550.Spec : Prop :=
  ∀ n, P14692935547963714550.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P14752875364858428352

`∑[record[((n+1)%3)²+n]]`
-/

namespace A095794.P14752875364858428352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 3) ^ 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095794.P14752875364858428352

namespace A095794

/-- `∑[record[((n+1)%3)²+n]]` -/
def P14752875364858428352.Spec : Prop :=
  ∀ n, (P14752875364858428352.a n : ℤ) = A095794 (n + 1)

end A095794

/-! ## A095794.P10783403879724226880

`∑[ceil(atan(n+1)+3*n)]`
-/

namespace A095794.P10783403879724226880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (3 * n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095794.P10783403879724226880

namespace A095794

/-- `∑[ceil(atan(n+1)+3*n)]` -/
def P10783403879724226880.Spec : Prop :=
  ∀ n, P10783403879724226880.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P6274617997750151713

`a(n-1)+3*n+2` with `a(0)=1`
-/

namespace A095794.P6274617997750151713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (3 * n + 2)

end

end A095794.P6274617997750151713

namespace A095794

/-- `a(n-1)+3*n+2` -/
def P6274617997750151713.Spec : Prop :=
  ∀ n, (P6274617997750151713.a n : ℤ) = A095794 (n + 1)

end A095794

/-! ## A095794.P15429277472292792845

`Δ[lcm(n, 2-(n+1)²)/2]`
-/

namespace A095794.P15429277472292792845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (2 - ((n + 1) ^ 2 : ℤ)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095794.P15429277472292792845

namespace A095794

/-- `Δ[lcm(n, 2-(n+1)²)/2]` -/
def P15429277472292792845.Spec : Prop :=
  ∀ n, P15429277472292792845.a n = (A095794 (n + 1) : ℚ)

end A095794

/-! ## A095794.P18256642075947834459

`∑[record[xor(1, n+1)]+n+1]`
-/

namespace A095794.P18256642075947834459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095794.P18256642075947834459

namespace A095794

/-- `∑[record[xor(1, n+1)]+n+1]` -/
def P18256642075947834459.Spec : Prop :=
  ∀ n, (P18256642075947834459.a n : ℤ) = A095794 (n + 1)

end A095794

/-! ## A095794.P9640314515803599987

`floor(n-∑[a(n-1)-3])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A095794.P9640314515803599987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095794.P9640314515803599987

namespace A095794

/-- `floor(n-∑[a(n-1)-3])` -/
def P9640314515803599987.Spec : Prop :=
  ∀ n, P9640314515803599987.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P4898001912760476190

`abs(3*C(n+2, 2)-(n+2))`
-/

namespace A095794.P4898001912760476190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * Nat.choose (n + 2) 2 : ℤ) - (n + 2 : ℤ)|

end

end A095794.P4898001912760476190

namespace A095794

/-- `abs(3*C(n+2, 2)-(n+2))` -/
def P4898001912760476190.Spec : Prop :=
  ∀ n, P4898001912760476190.a n = A095794 (n + 1)

end A095794

/-! ## A095794.P15901560651512011058

`xor(-1, ∑[-(2*n+n+2)])`
-/

namespace A095794.P15901560651512011058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n + (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095794.P15901560651512011058

namespace A095794

/-- `xor(-1, ∑[-(2*n+n+2)])` -/
def P15901560651512011058.Spec : Prop :=
  ∀ n, P15901560651512011058.a n = A095794 (n + 1)

end A095794

/-!
# A095795: a(0)=2, a(1)=5, a(n+2) = a(n+1) + (-1)^n a(n).

The programs for A095795, the canonical program `A095795.P9304189659285365076` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095795 has offset 0).

The definition of A095795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095795.P9304189659285365076

`a(n-2)+a(n-4)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095795

/-- `a(n-2)+a(n-4)` -/
def P9304189659285365076.Spec : Prop :=
  ∀ n, (P9304189659285365076.a n : ℤ) = A095795 n

theorem P9304189659285365076.correct : P9304189659285365076.Spec := by
  intro n
  simp only [A095795]

end A095795

/-! ## A095795.P18039680124172142365

`ogf((2+5x+5x^2-3x^3)/(1-x^2-x^4))`
-/

namespace A095795.P18039680124172142365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 5, -3] [1, 0, -1, 0, -1] n

end

end A095795.P18039680124172142365

namespace A095795

/-- `ogf((2+5x+5x^2-3x^3)/(1-x^2-x^4))` -/
def P18039680124172142365.Spec : Prop :=
  ∀ n, P18039680124172142365.a n = A095795 n

end A095795

/-! ## A095795.P593727241473460632

`A174562(n+1)+A118658(A028242(n))`
-/

namespace A095795.P593727241473460632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174562 (n + 1) + A118658 (A028242 n).toNat

end

end A095795.P593727241473460632

namespace A095795

/-- `A174562(n+1)+A118658(A028242(n))` -/
def P593727241473460632.Spec : Prop :=
  ∀ n, P593727241473460632.a n = A095795 n

end A095795

/-! ## A095795.P13201949436857747255

`A104449(A028242(n))+A000032(A028242(n))`
-/

namespace A095795.P13201949436857747255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (A028242 n).toNat + A000032 (A028242 n).toNat

end

end A095795.P13201949436857747255

namespace A095795

/-- `A104449(A028242(n))+A000032(A028242(n))` -/
def P13201949436857747255.Spec : Prop :=
  ∀ n, P13201949436857747255.a n = A095795 n

end A095795

/-! ## A095795.P13673165909055026026

`A287727(A090244(n))+A090244(n)`
-/

namespace A095795.P13673165909055026026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287727 (A090244 n).toNat + A090244 n

end

end A095795.P13673165909055026026

namespace A095795

/-- `A287727(A090244(n))+A090244(n)` -/
def P13673165909055026026.Spec : Prop :=
  ∀ n, P13673165909055026026.a n = A095795 n

end A095795

/-!
# A095796: a(n) = 1 + (26*n+17+7*n^2)*n/2.

The programs for A095796, the canonical program `A095796.P12530331311375189301` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095796 has offset 0).

The definition of A095796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095796.P12530331311375189301

`1+(26*n+17+7*n²)*n/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095796

/-- `1+(26*n+17+7*n²)*n/2` -/
def P12530331311375189301.Spec : Prop :=
  ∀ n, P12530331311375189301.a n = (A095796 n : ℚ)

end A095796

/-! ## A095796.P18058850530239954402

`∑[record[lcm(2, n)]+∑[21*n+1]]`
-/

namespace A095796.P18058850530239954402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095796.P18058850530239954402

namespace A095796

/-- `∑[record[lcm(2, n)]+∑[21*n+1]]` -/
def P18058850530239954402.Spec : Prop :=
  ∀ n, (P18058850530239954402.a n : ℤ) = A095796 n

end A095796

/-! ## A095796.P12797145602808181446

`∑[A133655(2*n)+A022278(n)]`
-/

namespace A095796.P12797145602808181446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (2 * n) + A022278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095796.P12797145602808181446

namespace A095796

/-- `∑[A133655(2*n)+A022278(n)]` -/
def P12797145602808181446.Spec : Prop :=
  ∀ n, P12797145602808181446.a n = A095796 n

end A095796

/-!
# A095799: Bell triangle A011971 squared.

The programs for A095799, there is no canonical definition to state claims against.
-/

/-! ## A095799.P15941139576792178698

`A337903(A220453(n+1))`
-/

namespace A095799.P15941139576792178698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337903 (A220453 (n + 1)).toNat

end

end A095799.P15941139576792178698

/-! ## A095799.P11610341490709325944

`A002024(A275131(n+1)*A293466(n))`
-/

namespace A095799.P11610341490709325944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A275131 (n + 1) * A293466 n).toNat

end

end A095799.P11610341490709325944

