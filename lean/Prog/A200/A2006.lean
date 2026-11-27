import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A200606: Decimal expansion of least x>0 satisfying 4*x^2-3*x+1=tan(x).

The programs for A200606, there is no canonical definition to state claims against.
-/

/-! ## A200606.P4567306160873955115

`A374789(A298770(3*n+4))%6`
-/

namespace A200606.P4567306160873955115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374789 (A298770 (3 * n + 4)).toNat) 6

end

end A200606.P4567306160873955115

/-!
# A200612: The arithmetic mean of the prime factors (with multiplicity) of n is 3.

The programs for A200612, there is no canonical definition to state claims against.
-/

/-! ## A200612.P7085051771374291778

`eq[3, A123528(round(acot(n)+n))]`
-/

namespace A200612.P7085051771374291778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A200612.P7085051771374291778

/-! ## A200612.P18251982183803670767

`A009056(eq[3, A123528(n+2)])`
-/

namespace A200612.P18251982183803670767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200612.P18251982183803670767

/-! ## A200612.P18365549969752861952

`eq[3, A123528(3*(n+2))]+2`
-/

namespace A200612.P18365549969752861952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (3 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A200612.P18365549969752861952

/-! ## A200612.P1059673003259881986

`eq[3, A123528(A233583(n+1))]`
-/

namespace A200612.P1059673003259881986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A200612.P1059673003259881986

/-! ## A200612.P5217021926525682129

`∩[A316525(n+1), A363950(n+1)]`
-/

namespace A200612.P5217021926525682129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200612.P5217021926525682129

/-!
# A200613: Number of quasi-abelian ideals in the affine Lie algebra sl_n^{hat}.

The programs for A200613, the canonical program `A200613.P18015763222726041970` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200613 has offset 1).

The definition of A200613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200613.P18015763222726041970

`(n+5)/4*C(2*(n+1), n+1)-3*2^(2*(n+1)-3)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A200613

/-- `(n+5)/4*C(2*(n+1), n+1)-3*2^(2*(n+1)-3)` -/
def P18015763222726041970.Spec : Prop :=
  ∀ n, P18015763222726041970.a n = (A200613 (n + 1) : ℚ)

end A200613

/-! ## A200613.P3900057990925297255

`A194460(n+1)-A107373(2*n+1)`
-/

namespace A200613.P3900057990925297255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194460 (n + 1) - A107373 (2 * n + 1)

end

end A200613.P3900057990925297255

namespace A200613

/-- `A194460(n+1)-A107373(2*n+1)` -/
def P3900057990925297255.Spec : Prop :=
  ∀ n, P3900057990925297255.a n = A200613 (n + 1)

end A200613

/-! ## A200613.P4030763593210814583

`A191520(2*(n+1))+A001405(2*n+1)`
-/

namespace A200613.P4030763593210814583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191520 (2 * (n + 1)) + A001405 (2 * n + 1)

end

end A200613.P4030763593210814583

namespace A200613

/-- `A191520(2*(n+1))+A001405(2*n+1)` -/
def P4030763593210814583.Spec : Prop :=
  ∀ n, P4030763593210814583.a n = A200613 (n + 1)

end A200613

/-! ## A200613.P5415592000491537825

`A258431(n+1)+A001700(n)-A000346(n)`
-/

namespace A200613.P5415592000491537825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258431 (n + 1) + (A001700 n - A000346 n)

end

end A200613.P5415592000491537825

namespace A200613

/-- `A258431(n+1)+A001700(n)-A000346(n)` -/
def P5415592000491537825.Spec : Prop :=
  ∀ n, P5415592000491537825.a n = A200613 (n + 1)

end A200613

/-! ## A200613.P6199146062599343710

`A362595(n+1)+A362595(n+1)-A362596(n+1)`
-/

namespace A200613.P6199146062599343710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362595 (n + 1) + (A362595 (n + 1) - A362596 (n + 1))

end

end A200613.P6199146062599343710

namespace A200613

/-- `A362595(n+1)+A362595(n+1)-A362596(n+1)` -/
def P6199146062599343710.Spec : Prop :=
  ∀ n, P6199146062599343710.a n = A200613 (n + 1)

end A200613

/-! ## A200613.P540440257201776461

`A194460(n+1)-record[A194590(n)]`
-/

namespace A200613.P540440257201776461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194460 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200613.P540440257201776461

namespace A200613

/-- `A194460(n+1)-record[A194590(n)]` -/
def P540440257201776461.Spec : Prop :=
  ∀ n, P540440257201776461.a n = A200613 (n + 1)

end A200613

/-! ## A200613.P16054560071553813275

`A194460(n+1)-A194590(2*n)`
-/

namespace A200613.P16054560071553813275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194460 (n + 1) - A194590 (2 * n)

end

end A200613.P16054560071553813275

namespace A200613

/-- `A194460(n+1)-A194590(2*n)` -/
def P16054560071553813275.Spec : Prop :=
  ∀ n, P16054560071553813275.a n = A200613 (n + 1)

end A200613

/-!
# A200647: Number of equal bit-runs in Wythoff representation of n.

The programs for A200647, there is no canonical definition to state claims against.
-/

/-! ## A200647.P16993107430066839549

`A005811(A048679(A028310(n)))`
-/

namespace A200647.P16993107430066839549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A048679 (A028310 n).toNat).toNat

end

end A200647.P16993107430066839549

/-! ## A200647.P13297794517067770695

`A005811(record[xor((n-1)^(n%2), floor(n/2))])`
-/

namespace A200647.P13297794517067770695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 1) ^ (n % 2)) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A200647.P13297794517067770695

/-! ## A200647.P10318122328103281870

`A399607(A295757(n+1))`
-/

namespace A200647.P10318122328103281870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399607 (A295757 (n + 1)).toNat

end

end A200647.P10318122328103281870

/-! ## A200647.P3082718163460554947

`A330894(A105420(n+1))`
-/

namespace A200647.P3082718163460554947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330894 (A105420 (n + 1)).toNat

end

end A200647.P3082718163460554947

/-! ## A200647.P7889418631068494753

`A071628(A309733(n+1))`
-/

namespace A200647.P7889418631068494753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071628 (A309733 (n + 1)).toNat

end

end A200647.P7889418631068494753

/-!
# A200648: Length of Stolarsky representation of n.

The programs for A200648, the canonical program `A200648.P14381781685768215773` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200648 has offset 1).

The definition of A200648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200648.P7455458180133525695

`A200649(n+1)+A200650(n+1)`
-/

namespace A200648.P7455458180133525695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200649 (n + 1) + A200650 (n + 1)

end

end A200648.P7455458180133525695

namespace A200648

/-- `A200649(n+1)+A200650(n+1)` -/
def P7455458180133525695.Spec : Prop :=
  ∀ n, P7455458180133525695.a n = A200648 (n + 1)

theorem P7455458180133525695.correct : P7455458180133525695.Spec := by
  intro n
  simp only [A200648, Nat.add_sub_cancel, A200648.P7455458180133525695.a, A200648.P14381781685768215773.a, A026350, A026350.P7602566330336333435.f1, A026350.P7602566330336333435.a, A200649, A200649.P18391898041648622211.a, A200650, A200650.P16754403378420458549.a, A072649, A072649.P9617326913925617377.a, A130312, A130312.P4153789337100935269.a, A000045, A000045.P11838749114346432762.a, A108852, A108852.P5937880573768577985.f1, A108852.P5937880573768577985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A200648

/-! ## A200648.P17095568684449003608

`a(ceil((n-1)/ϕ))+1-char[ceil(n*ϕ²)]` with `a(0)=1, a(1)=1`
-/

namespace A200648.P17095568684449003608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌈((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌉.toNat + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A200648.P17095568684449003608

namespace A200648

/-- `a(ceil((n-1)/ϕ))+1-char[ceil(n*ϕ²)]` -/
def P17095568684449003608.Spec : Prop :=
  ∀ n, P17095568684449003608.a n = A200648 (n + 1)

end A200648

/-! ## A200648.P6461419246435060260

`1+a(A026242(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A200648.P6461419246435060260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + a (A026242 (n - 1)).toNat

end

end A200648.P6461419246435060260

namespace A200648

/-- `1+a(A026242(n-1))` -/
def P6461419246435060260.Spec : Prop :=
  ∀ n, (P6461419246435060260.a n : ℤ) = A200648 (n + 1)

end A200648

/-! ## A200648.P14381781685768215773

`a(A026350(n)-1)+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A200648

/-- `a(A026350(n)-1)+1` -/
def P14381781685768215773.Spec : Prop :=
  ∀ n, (P14381781685768215773.a n : ℤ) = A200648 (n + 1)

theorem P14381781685768215773.correct : P14381781685768215773.Spec := by
  intro n
  simp only [A200648, Nat.add_sub_cancel]

end A200648

/-! ## A200648.P2089052935600269910

`a(n-A130312(n))+1` with `a(0)=1, a(1)=1`
-/

namespace A200648.P2089052935600269910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ((n : ℤ) - A130312 n).toNat + 1

end

end A200648.P2089052935600269910

namespace A200648

/-- `a(n-A130312(n))+1` -/
def P2089052935600269910.Spec : Prop :=
  ∀ n, (P2089052935600269910.a n : ℤ) = A200648 (n + 1)

end A200648

/-! ## A200648.P10519961012630763621

`A131343(A305847(n+1))`
-/

namespace A200648.P10519961012630763621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131343 (A305847 (n + 1)).toNat

end

end A200648.P10519961012630763621

namespace A200648

/-- `A131343(A305847(n+1))` -/
def P10519961012630763621.Spec : Prop :=
  ∀ n, P10519961012630763621.a n = A200648 (n + 1)

end A200648

/-! ## A200648.P18132676442413335068

`A112310(gcd(C(3, n²), floor(ϕ*n)))`
-/

namespace A200648.P18132676442413335068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (Int.gcd (Nat.choose 3 (n ^ 2) : ℤ) ⌊Real.goldenRatio * (n : ℝ)⌋)

end

end A200648.P18132676442413335068

namespace A200648

/-- `A112310(gcd(C(3, n²), floor(ϕ*n)))` -/
def P18132676442413335068.Spec : Prop :=
  ∀ n, P18132676442413335068.a n = A200648 (n + 1)

end A200648

/-! ## A200648.P13172490100045889531

`A112310(floor(ϕ*(n+2))-3)+floor(acot(n))`
-/

namespace A200648.P13172490100045889531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A200648.P13172490100045889531

namespace A200648

/-- `A112310(floor(ϕ*(n+2))-3)+floor(acot(n))` -/
def P13172490100045889531.Spec : Prop :=
  ∀ n, P13172490100045889531.a n = A200648 (n + 1)

end A200648

/-! ## A200648.P10402297082860994678

`A070939(A385818(n))`
-/

namespace A200648.P10402297082860994678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A385818 n).toNat

end

end A200648.P10402297082860994678

namespace A200648

/-- `A070939(A385818(n))` -/
def P10402297082860994678.Spec : Prop :=
  ∀ n, P10402297082860994678.a n = A200648 (n + 1)

end A200648

/-! ## A200648.P4136324913717480840

`A070939(A358654(n))`
-/

namespace A200648.P4136324913717480840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A358654 n).toNat

end

end A200648.P4136324913717480840

namespace A200648

/-- `A070939(A358654(n))` -/
def P4136324913717480840.Spec : Prop :=
  ∀ n, P4136324913717480840.a n = A200648 (n + 1)

end A200648

/-! ## A200648.P183375734592448655

`A200650(n+1)+A000120(A358654(n))`
-/

namespace A200648.P183375734592448655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200650 (n + 1) + A000120 (A358654 n).toNat

end

end A200648.P183375734592448655

namespace A200648

/-- `A200650(n+1)+A000120(A358654(n))` -/
def P183375734592448655.Spec : Prop :=
  ∀ n, P183375734592448655.a n = A200648 (n + 1)

end A200648

/-! ## A200648.P8024727458934426683

`A200649(n+1)+A023416(A358654(n))`
-/

namespace A200648.P8024727458934426683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200649 (n + 1) + A023416 (A358654 n).toNat

end

end A200648.P8024727458934426683

namespace A200648

/-- `A200649(n+1)+A023416(A358654(n))` -/
def P8024727458934426683.Spec : Prop :=
  ∀ n, P8024727458934426683.a n = A200648 (n + 1)

end A200648

/-! ## A200648.P670240120319234318

`A200650(n+1)+A000120(A200714(n+1))`
-/

namespace A200648.P670240120319234318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200650 (n + 1) + A000120 (A200714 (n + 1)).toNat

end

end A200648.P670240120319234318

namespace A200648

/-- `A200650(n+1)+A000120(A200714(n+1))` -/
def P670240120319234318.Spec : Prop :=
  ∀ n, P670240120319234318.a n = A200648 (n + 1)

end A200648

/-! ## A200648.P12530733518896784970

`A200649(n+1)+A023416(A200714(n+1))`
-/

namespace A200648.P12530733518896784970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200649 (n + 1) + A023416 (A200714 (n + 1)).toNat

end

end A200648.P12530733518896784970

namespace A200648

/-- `A200649(n+1)+A023416(A200714(n+1))` -/
def P12530733518896784970.Spec : Prop :=
  ∀ n, P12530733518896784970.a n = A200648 (n + 1)

end A200648

/-!
# A200649: Number of 1's in the Stolarsky representation of n.

The programs for A200649, the canonical program `A200649.P18391898041648622211` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200649 has offset 1).

The definition of A200649 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, A130312, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A200649.P9323162544546785842

`A200648(n+1)-A200650(n+1)`
-/

namespace A200649.P9323162544546785842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200648 (n + 1) - A200650 (n + 1)

end

end A200649.P9323162544546785842

namespace A200649

/-- `A200648(n+1)-A200650(n+1)` -/
def P9323162544546785842.Spec : Prop :=
  ∀ n, P9323162544546785842.a n = A200649 (n + 1)

theorem P9323162544546785842.correct : P9323162544546785842.Spec := by
  intro n
  simp only [A200649, Nat.add_sub_cancel, A200649.P9323162544546785842.a, A200649.P18391898041648622211.a, A072649, A072649.P9617326913925617377.a, A130312, A130312.P4153789337100935269.a, A200648, A200648.P14381781685768215773.a, A200650, A200650.P16754403378420458549.a, A000045, A000045.P11838749114346432762.a, A026350, A026350.P7602566330336333435.f1, A026350.P7602566330336333435.a, A108852, A108852.P5937880573768577985.f1, A108852.P5937880573768577985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A200649

/-! ## A200649.P18391898041648622211

`a(n-A130312(n))+(A072649(n)-A072649(n+1-A130312(n)-1))%2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A200649

/-- `a(n-A130312(n))+(A072649(n)-A072649(n+1-A130312(n)-1))%2` -/
def P18391898041648622211.Spec : Prop :=
  ∀ n, P18391898041648622211.a n = A200649 (n + 1)

theorem P18391898041648622211.correct : P18391898041648622211.Spec := by
  intro n
  simp only [A200649, Nat.add_sub_cancel]

end A200649

/-! ## A200649.P15025447089720340447

`∑{digits}[A364121(1+n), #]`
-/

namespace A200649.P15025447089720340447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364121 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A200649.P15025447089720340447

namespace A200649

/-- `∑{digits}[A364121(1+n), #]` -/
def P15025447089720340447.Spec : Prop :=
  ∀ n, (P15025447089720340447.a n : ℤ) = A200649 (n + 1)

end A200649

/-! ## A200649.P6517846648526581419

`a(n-A130312(n))+(A072649(n)-A072649(n-A130312(n)))%2` with `a(0)=0, a(1)=1`
-/

namespace A200649.P6517846648526581419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A130312 n).toNat + Int.tmod (A072649 n - A072649 ((n : ℤ) - A130312 n).toNat) 2

end

end A200649.P6517846648526581419

namespace A200649

/-- `a(n-A130312(n))+(A072649(n)-A072649(n-A130312(n)))%2` -/
def P6517846648526581419.Spec : Prop :=
  ∀ n, P6517846648526581419.a n = A200649 (n + 1)

theorem P6517846648526581419.correct : P6517846648526581419.Spec := by
  intro n
  simp only [A200649, Nat.add_sub_cancel, A200649.P6517846648526581419.a, A200649.P18391898041648622211.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A200649

/-! ## A200649.P17356946470865223145

`A290251(A385818(n))`
-/

namespace A200649.P17356946470865223145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A385818 n).toNat

end

end A200649.P17356946470865223145

namespace A200649

/-- `A290251(A385818(n))` -/
def P17356946470865223145.Spec : Prop :=
  ∀ n, P17356946470865223145.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P1198070568177839112

`A332997(A365808(n+1))`
-/

namespace A200649.P1198070568177839112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332997 (A365808 (n + 1)).toNat

end

end A200649.P1198070568177839112

namespace A200649

/-- `A332997(A365808(n+1))` -/
def P1198070568177839112.Spec : Prop :=
  ∀ n, P1198070568177839112.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P3773632945191868254

`A145037(A280873(n))`
-/

namespace A200649.P3773632945191868254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A280873 n).toNat

end

end A200649.P3773632945191868254

namespace A200649

/-- `A145037(A280873(n))` -/
def P3773632945191868254.Spec : Prop :=
  ∀ n, P3773632945191868254.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P17508370405521813060

`A000120(A358654(n))`
-/

namespace A200649.P17508370405521813060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A358654 n).toNat

end

end A200649.P17508370405521813060

namespace A200649

/-- `A000120(A358654(n))` -/
def P17508370405521813060.Spec : Prop :=
  ∀ n, P17508370405521813060.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P12789902965403624443

`A070939(A358654(n))-A200650(n+1)`
-/

namespace A200649.P12789902965403624443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A358654 n).toNat - A200650 (n + 1)

end

end A200649.P12789902965403624443

namespace A200649

/-- `A070939(A358654(n))-A200650(n+1)` -/
def P12789902965403624443.Spec : Prop :=
  ∀ n, P12789902965403624443.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P5765458736104320216

`A200648(n+1)-A023416(A200714(n+1))`
-/

namespace A200649.P5765458736104320216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200648 (n + 1) - A023416 (A200714 (n + 1)).toNat

end

end A200649.P5765458736104320216

namespace A200649

/-- `A200648(n+1)-A023416(A200714(n+1))` -/
def P5765458736104320216.Spec : Prop :=
  ∀ n, P5765458736104320216.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P5937408444052162538

`A070939(A200714(n+1))-A200650(n+1)`
-/

namespace A200649.P5937408444052162538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A200714 (n + 1)).toNat - A200650 (n + 1)

end

end A200649.P5937408444052162538

namespace A200649

/-- `A070939(A200714(n+1))-A200650(n+1)` -/
def P5937408444052162538.Spec : Prop :=
  ∀ n, P5937408444052162538.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P15347609578328715794

`A000120(A060142(n))`
-/

namespace A200649.P15347609578328715794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A060142 n).toNat

end

end A200649.P15347609578328715794

namespace A200649

/-- `A000120(A060142(n))` -/
def P15347609578328715794.Spec : Prop :=
  ∀ n, P15347609578328715794.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P2875145134069597748

`A004718(A060142(2*n-n))`
-/

namespace A200649.P2875145134069597748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A060142 (2 * n - n)).toNat

end

end A200649.P2875145134069597748

namespace A200649

/-- `A004718(A060142(2*n-n))` -/
def P2875145134069597748.Spec : Prop :=
  ∀ n, P2875145134069597748.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P6499108142064324441

`A274009(A219608(n+1))`
-/

namespace A200649.P6499108142064324441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A219608 (n + 1)).toNat

end

end A200649.P6499108142064324441

namespace A200649

/-- `A274009(A219608(n+1))` -/
def P6499108142064324441.Spec : Prop :=
  ∀ n, P6499108142064324441.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P13455948617726343756

`A000120(A353654(n+1))-1`
-/

namespace A200649.P13455948617726343756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A353654 (n + 1)).toNat - 1

end

end A200649.P13455948617726343756

namespace A200649

/-- `A000120(A353654(n+1))-1` -/
def P13455948617726343756.Spec : Prop :=
  ∀ n, P13455948617726343756.a n = A200649 (n + 1)

end A200649

/-! ## A200649.P10865334885980688225

`A048881(A307096(n+1))`
-/

namespace A200649.P10865334885980688225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A307096 (n + 1)).toNat

end

end A200649.P10865334885980688225

namespace A200649

/-- `A048881(A307096(n+1))` -/
def P10865334885980688225.Spec : Prop :=
  ∀ n, P10865334885980688225.a n = A200649 (n + 1)

end A200649

/-!
# A200650: Number of 0's in Stolarsky representation of n.

The programs for A200650, the canonical program `A200650.P16754403378420458549` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200650 has offset 1).

The definition of A200650 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200648, A200649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A200650.P16754403378420458549

`A200648(n+1)-A200649(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A200650

/-- `A200648(n+1)-A200649(n+1)` -/
def P16754403378420458549.Spec : Prop :=
  ∀ n, P16754403378420458549.a n = A200650 (n + 1)

theorem P16754403378420458549.correct : P16754403378420458549.Spec := by
  intro n
  simp only [A200650, Nat.add_sub_cancel]

end A200650

/-! ## A200650.P10910375478049250659

`A131341(A305847(n+1))`
-/

namespace A200650.P10910375478049250659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131341 (A305847 (n + 1)).toNat

end

end A200650.P10910375478049250659

namespace A200650

/-- `A131341(A305847(n+1))` -/
def P10910375478049250659.Spec : Prop :=
  ∀ n, P10910375478049250659.a n = A200650 (n + 1)

end A200650

/-! ## A200650.P8393472325116308878

`A135523(A353654(n+1))`
-/

namespace A200650.P8393472325116308878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A353654 (n + 1)).toNat

end

end A200650.P8393472325116308878

namespace A200650

/-- `A135523(A353654(n+1))` -/
def P8393472325116308878.Spec : Prop :=
  ∀ n, P8393472325116308878.a n = A200650 (n + 1)

end A200650

/-! ## A200650.P6060704566011221305

`A023416(A358654(n))`
-/

namespace A200650.P6060704566011221305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A358654 n).toNat

end

end A200650.P6060704566011221305

namespace A200650

/-- `A023416(A358654(n))` -/
def P6060704566011221305.Spec : Prop :=
  ∀ n, P6060704566011221305.a n = A200650 (n + 1)

end A200650

/-! ## A200650.P2893162324473679046

`A200648(n+1)-A000120(A358654(n))`
-/

namespace A200650.P2893162324473679046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200648 (n + 1) - A000120 (A358654 n).toNat

end

end A200650.P2893162324473679046

namespace A200650

/-- `A200648(n+1)-A000120(A358654(n))` -/
def P2893162324473679046.Spec : Prop :=
  ∀ n, P2893162324473679046.a n = A200650 (n + 1)

end A200650

/-! ## A200650.P7413282662292932454

`A070939(A358654(n))-A200649(n+1)`
-/

namespace A200650.P7413282662292932454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A358654 n).toNat - A200649 (n + 1)

end

end A200650.P7413282662292932454

namespace A200650

/-- `A070939(A358654(n))-A200649(n+1)` -/
def P7413282662292932454.Spec : Prop :=
  ∀ n, P7413282662292932454.a n = A200650 (n + 1)

end A200650

/-! ## A200650.P5537609259257037690

`A200648(n+1)-A000120(A200714(n+1))`
-/

namespace A200650.P5537609259257037690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200648 (n + 1) - A000120 (A200714 (n + 1)).toNat

end

end A200650.P5537609259257037690

namespace A200650

/-- `A200648(n+1)-A000120(A200714(n+1))` -/
def P5537609259257037690.Spec : Prop :=
  ∀ n, P5537609259257037690.a n = A200650 (n + 1)

end A200650

/-! ## A200650.P10284078343131041982

`A070939(A200714(n+1))-A200649(n+1)`
-/

namespace A200650.P10284078343131041982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A200714 (n + 1)).toNat - A200649 (n + 1)

end

end A200650.P10284078343131041982

namespace A200650

/-- `A070939(A200714(n+1))-A200649(n+1)` -/
def P10284078343131041982.Spec : Prop :=
  ∀ n, P10284078343131041982.a n = A200650 (n + 1)

end A200650

/-! ## A200650.P1754497022346728304

`A023416(A280873(n))`
-/

namespace A200650.P1754497022346728304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A280873 n).toNat

end

end A200650.P1754497022346728304

namespace A200650

/-- `A023416(A280873(n))` -/
def P1754497022346728304.Spec : Prop :=
  ∀ n, P1754497022346728304.a n = A200650 (n + 1)

end A200650

/-! ## A200650.P15388668997509526264

`A087116(eq[1, A087117(2*n)])`
-/

namespace A200650.P15388668997509526264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200650.P15388668997509526264

namespace A200650

/-- `A087116(eq[1, A087117(2*n)])` -/
def P15388668997509526264.Spec : Prop :=
  ∀ n, P15388668997509526264.a n = A200650 (n + 1)

end A200650

/-!
# A200651: Number of equal bit-runs in Stolarsky Representation of n.

The programs for A200651, there is no canonical definition to state claims against.
-/

/-! ## A200651.P13558113780121794862

`A001221(A290674(n+1)+ceil(n*sqrt(5)))`
-/

namespace A200651.P13558113780121794862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A290674 (n + 1) + ⌈(n : ℝ) * Real.sqrt (5 : ℝ)⌉).toNat

end

end A200651.P13558113780121794862

/-! ## A200651.P16326718448467631860

`A055642(p?[A181409(A109395(n+1))])`
-/

namespace A200651.P16326718448467631860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181409 (A109395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A200651.P16326718448467631860

/-! ## A200651.P12797608834256778124

`A264990(A058978(n+1)^A026741(n))`
-/

namespace A200651.P12797608834256778124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264990 (SequenceMachineLib.roundAway ((A058978 (n + 1) : ℚ) ^ (A026741 n : ℤ))).toNat

end

end A200651.P12797608834256778124

/-! ## A200651.P16674114735621550279

`A001222(A216062(n+1)+A002955(n+1))`
-/

namespace A200651.P16674114735621550279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A216062 (n + 1) + A002955 (n + 1)).toNat

end

end A200651.P16674114735621550279

/-! ## A200651.P4776733890417014179

`A128428(A375379(n)+A078442(2*n+1))`
-/

namespace A200651.P4776733890417014179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (A375379 n + A078442 (2 * n + 1)).toNat

end

end A200651.P4776733890417014179

/-!
# A200656: Successive values x such that the Mordell elliptic curve x^3 - y^2 = d has extremal points with quadratic extension over the rationals.

The programs for A200656, there is no canonical definition to state claims against.
-/

/-! ## A200656.P754022495189789916

`∪[A201047(1+n), A201048(n+1)]`
-/

namespace A200656.P754022495189789916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201047 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A200656.P754022495189789916

/-! ## A200656.P4985404002540676131

`round(root(A200657(n+1), 3)²)`
-/

namespace A200656.P4985404002540676131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A200657 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2)

end

end A200656.P4985404002540676131

/-!
# A200657: Successive values y such that Mordell elliptic curve x^3 - y^2 = d has a quadratic extension over rationals.

The programs for A200657, there is no canonical definition to state claims against.
-/

/-! ## A200657.P13284639786928960647

`round(sqrt(A200656(n+1)^3))`
-/

namespace A200657.P13284639786928960647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A200656 (n + 1) ^ 3 : ℝ))

end

end A200657.P13284639786928960647

/-!
# A200658: a(n) = A200656(n)^3 - A200657(n)^2.

The programs for A200658, there is no canonical definition to state claims against.
-/

/-! ## A200658.P1398032489181868863

`A200656(n+1)^3-A200657(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200658.P1398032489181868863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200656 (n + 1) ^ 3 - A200657 (n + 1) ^ 2

end

end A200658.P1398032489181868863

/-!
# A200659: Triangle T(n,k), read by rows, given by (1,2,2,3,3,4,4,5,5,6,6,...) DELTA (1,0,1,0,1,0,1,0,1,0,1,0,1,...) where DELTA is the operator defined in A084938.

The programs for A200659, there is no canonical definition to state claims against.
-/

/-! ## A200659.P9765633288379419528

`A018387(A167040(n))*A104980(n)`
-/

namespace A200659.P9765633288379419528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018387 (A167040 n).toNat * A104980 n

end

end A200659.P9765633288379419528

/-! ## A200659.P16813437307771166928

`A018387(A167040(n))*A156628(n)`
-/

namespace A200659.P16813437307771166928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018387 (A167040 n).toNat * A156628 n

end

end A200659.P16813437307771166928

/-! ## A200659.P16709642902460744289

`A104980(n)*A296658(A056941(n))`
-/

namespace A200659.P16709642902460744289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 n * A296658 (A056941 n).toNat

end

end A200659.P16709642902460744289

/-! ## A200659.P3210290873287069958

`A059110(n)-A125005(A006722(n))`
-/

namespace A200659.P3210290873287069958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 n - A125005 (A006722 n).toNat

end

end A200659.P3210290873287069958

/-! ## A200659.P17479798625260855947

`A007895(A156645(n))*A156628(n)`
-/

namespace A200659.P17479798625260855947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A156645 n).toNat * A156628 n

end

end A200659.P17479798625260855947

/-!
# A200660: Sum of the number of arcs describing the set partitions of {1,2,...,n}.

The programs for A200660, there is no canonical definition to state claims against.
-/

/-! ## A200660.P9947066396456792454

`A127741(n)-∑[A005494(n)]`
-/

namespace A200660.P9947066396456792454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127741 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200660.P9947066396456792454

/-! ## A200660.P7510309224613083250

`Δ[A070071(n+1)]-A005493(n+1)`
-/

namespace A200660.P7510309224613083250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005493 (n + 1)

end

end A200660.P7510309224613083250

/-! ## A200660.P8918041267947803676

`Δ[A070071(n+1)-A000110(n+2)]`
-/

namespace A200660.P8918041267947803676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070071 (n + 1) - A000110 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200660.P8918041267947803676

/-!
# A200661: Number of 0..1 arrays x(0..n-1) of n elements with each no smaller than the sum of its three previous neighbors modulo 2.

The programs for A200661, the canonical program `A200661.P8723582164782986320` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200661 has offset 1).

The definition of A200661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 679 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200661.P6312434817577631069

`ogf((2+x-x^4-x^5+x^6)/(1-x-x^2+x^5+x^6-x^7))`
-/

namespace A200661.P6312434817577631069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 0, 0, -1, -1, 1] [1, -1, -1, 0, 0, 1, 1, -1] n

end

end A200661.P6312434817577631069

namespace A200661

/-- `ogf((2+x-x^4-x^5+x^6)/(1-x-x^2+x^5+x^6-x^7))` -/
def P6312434817577631069.Spec : Prop :=
  ∀ n, P6312434817577631069.a n = A200661 (n + 1)

end A200661

/-! ## A200661.P8723582164782986320

`a(n-1)+a(n-2)-a(n-5)-a(n-6)+a(n-7)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8, a(4)=12, a(5)=17, a(6)=25`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A200661

/-- `a(n-1)+a(n-2)-a(n-5)-a(n-6)+a(n-7)` -/
def P8723582164782986320.Spec : Prop :=
  ∀ n, P8723582164782986320.a n = A200661 (n + 1)

theorem P8723582164782986320.correct : P8723582164782986320.Spec := by
  intro n
  simp only [A200661, Nat.add_sub_cancel]

end A200661

/-! ## A200661.P3357764999721614075

`∑[1+∑[A080013(n+1)]]+1`
-/

namespace A200661.P3357764999721614075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A200661.P3357764999721614075

namespace A200661

/-- `∑[1+∑[A080013(n+1)]]+1` -/
def P3357764999721614075.Spec : Prop :=
  ∀ n, P3357764999721614075.a n = A200661 (n + 1)

end A200661

/-! ## A200661.P8763779901164797803

`A225490(n+1)+A225490(n)`
-/

namespace A200661.P8763779901164797803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225490 (n + 1) + A225490 n

end

end A200661.P8763779901164797803

namespace A200661

/-- `A225490(n+1)+A225490(n)` -/
def P8763779901164797803.Spec : Prop :=
  ∀ n, P8763779901164797803.a n = A200661 (n + 1)

end A200661

/-! ## A200661.P17751066445313787100

`∑[∑[A080013(A057427(n)+n)]]+1`
-/

namespace A200661.P17751066445313787100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (A057427 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A200661.P17751066445313787100

namespace A200661

/-- `∑[∑[A080013(A057427(n)+n)]]+1` -/
def P17751066445313787100.Spec : Prop :=
  ∀ n, P17751066445313787100.a n = A200661 (n + 1)

end A200661

/-! ## A200661.P4261177774718089012

`∑[∑[A080013(A157928(n)+n)]]+1`
-/

namespace A200661.P4261177774718089012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (A157928 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A200661.P4261177774718089012

namespace A200661

/-- `∑[∑[A080013(A157928(n)+n)]]+1` -/
def P4261177774718089012.Spec : Prop :=
  ∀ n, P4261177774718089012.a n = A200661 (n + 1)

end A200661

/-! ## A200661.P12384984134256605818

`∑[A143438(n+1)+A143438(n)]+1`
-/

namespace A200661.P12384984134256605818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 (n + 1) + A143438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A200661.P12384984134256605818

namespace A200661

/-- `∑[A143438(n+1)+A143438(n)]+1` -/
def P12384984134256605818.Spec : Prop :=
  ∀ n, P12384984134256605818.a n = A200661 (n + 1)

end A200661

/-! ## A200661.P17830575217570082488

`A200668(∑[n+1])`
-/

namespace A200661.P17830575217570082488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200661.P17830575217570082488

namespace A200661

/-- `A200668(∑[n+1])` -/
def P17830575217570082488.Spec : Prop :=
  ∀ n, P17830575217570082488.a n = A200661 (n + 1)

end A200661

/-!
# A200662: Number of 0..2 arrays x(0..n-1) of n elements with each no smaller than the sum of its three previous neighbors modulo 3.

The programs for A200662, there is no canonical definition to state claims against.
-/

/-! ## A200662.P14830331032017244912

`A200668(∑[n+2])`
-/

namespace A200662.P14830331032017244912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200662.P14830331032017244912

/-! ## A200662.P5610766882871856257

`record[A200668(A000096(A133310(n)))]`
-/

namespace A200662.P5610766882871856257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200662.P5610766882871856257

/-! ## A200662.P15255196049962844453

`record[A200668(A000096(A143182(n)))]`
-/

namespace A200662.P15255196049962844453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A000096 (A143182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200662.P15255196049962844453

/-! ## A200662.P3274200775251655793

`record[A200668(A000096(A000188(n+1)))]`
-/

namespace A200662.P3274200775251655793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A000096 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200662.P3274200775251655793

/-! ## A200662.P7647132997548492079

`record[A200668(A000096(A002260(n+1)))]`
-/

namespace A200662.P7647132997548492079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200662.P7647132997548492079

/-! ## A200662.P9563040174035221982

`record[A200668(A000096(A067004(n+1)))]`
-/

namespace A200662.P9563040174035221982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A000096 (A067004 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200662.P9563040174035221982

/-! ## A200662.P9398312627950033758

`record[A200668(A000096(A245717(n+1)))]`
-/

namespace A200662.P9398312627950033758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A000096 (A245717 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200662.P9398312627950033758

/-!
# A200663: Number of 0..3 arrays x(0..n-1) of n elements with each no smaller than the sum of its three previous neighbors modulo 4.

The programs for A200663, there is no canonical definition to state claims against.
-/

/-! ## A200663.P10816009616109629402

`A200668(∑[n+3]+1)`
-/

namespace A200663.P10816009616109629402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200663.P10816009616109629402

/-!
# A200664: Number of 0..4 arrays x(0..n-1) of n elements with each no smaller than the sum of its three previous neighbors modulo 5.

The programs for A200664, there is no canonical definition to state claims against.
-/

/-! ## A200664.P512659240731122262

`A200668(∑[n+4]+3)`
-/

namespace A200664.P512659240731122262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200664.P512659240731122262

/-!
# A200665: Number of 0..5 arrays x(0..n-1) of n elements with each no smaller than the sum of its three previous neighbors modulo 6.

The programs for A200665, there is no canonical definition to state claims against.
-/

/-! ## A200665.P18377274769351215582

`A200668(∑[a(n-1)+1])` with `a(0)=11, a(1)=6`
-/

namespace A200665.P18377274769351215582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200665.P18377274769351215582

/-!
# A200666: Number of 0..6 arrays x(0..n-1) of n elements with each no smaller than the sum of its three previous neighbors modulo 7.

The programs for A200666, there is no canonical definition to state claims against.
-/

/-! ## A200666.P13935122234296763778

`A200668(A046691(n+4)-1)`
-/

namespace A200666.P13935122234296763778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A046691 (n + 4) - 1).toNat

end

end A200666.P13935122234296763778

/-!
# A200667: Number of 0..7 arrays x(0..n-1) of n elements with each no smaller than the sum of its three previous neighbors modulo 8.

The programs for A200667, there is no canonical definition to state claims against.
-/

/-! ## A200667.P1765277793821580138

`A200668(C(n+8, 2)-6)`
-/

namespace A200667.P1765277793821580138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (Nat.choose (n + 8) 2 - 6)

end

end A200667.P1765277793821580138

/-!
# A200668: T(n,k)=Number of 0..k arrays x(0..n-1) of n elements with each no smaller than the sum of its three previous neighbors modulo (k+1).

The programs for A200668, there is no canonical definition to state claims against.
-/

/-! ## A200668.P8271829290167445403

`A200251(n+1)-A011734(A156953(n))`
-/

namespace A200668.P8271829290167445403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (n + 1) - A011734 (A156953 n).toNat

end

end A200668.P8271829290167445403

/-! ## A200668.P17263711534076212254

`A200469(n+1)-A011734(A156953(n))`
-/

namespace A200668.P17263711534076212254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (n + 1) - A011734 (A156953 n).toNat

end

end A200668.P17263711534076212254

/-! ## A200668.P7473769195878047300

`A200251(n+1)-A133010(A135722(n))`
-/

namespace A200668.P7473769195878047300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (n + 1) - A133010 (A135722 n).toNat

end

end A200668.P7473769195878047300

/-! ## A200668.P6779607720201067966

`A200469(n+1)-A133010(A135722(n))`
-/

namespace A200668.P6779607720201067966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (n + 1) - A133010 (A135722 n).toNat

end

end A200668.P6779607720201067966

/-! ## A200668.P7862304577454412397

`A200251(n+1)-A295883(A001405(n))`
-/

namespace A200668.P7862304577454412397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (n + 1) - A295883 (A001405 n).toNat

end

end A200668.P7862304577454412397

/-!
# A200669: Number of 0..n arrays x(0..4) of 5 elements with each no smaller than the sum of its three previous neighbors modulo (n+1).

The programs for A200669, there is no canonical definition to state claims against.
-/

/-! ## A200669.P7881098721857431760

`A200668(∑[a(n-1)+1])` with `a(0)=15, a(1)=5`
-/

namespace A200669.P7881098721857431760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200669.P7881098721857431760

/-!
# A200670: Number of 0..n arrays x(0..5) of 6 elements with each no smaller than the sum of its three previous neighbors modulo (n+1).

The programs for A200670, there is no canonical definition to state claims against.
-/

/-! ## A200670.P1236993847972827074

`A200668(A166136(n+4))`
-/

namespace A200670.P1236993847972827074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A166136 (n + 4)).toNat

end

end A200670.P1236993847972827074

/-!
# A200671: Number of 0..n arrays x(0..6) of 7 elements with each no smaller than the sum of its three previous neighbors modulo (n+1).

The programs for A200671, there is no canonical definition to state claims against.
-/

/-! ## A200671.P15257439693219602347

`A200668(A167499(n+5)+2)`
-/

namespace A200671.P15257439693219602347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (A167499 (n + 5) + 2).toNat

end

end A200671.P15257439693219602347

/-!
# A200672: Partial sums of A173862.

The programs for A200672, the canonical program `A200672.P4468506009293891896` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200672 has offset 1).

The definition of A200672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200672.P4468506009293891896

`2*a(n-3)+3` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A200672

/-- `2*a(n-3)+3` -/
def P4468506009293891896.Spec : Prop :=
  ∀ n, (P4468506009293891896.a n : ℤ) = A200672 (n + 1)

theorem P4468506009293891896.correct : P4468506009293891896.Spec := by
  intro n
  simp only [A200672, Nat.add_sub_cancel]

end A200672

/-! ## A200672.P6910486813359355281

`ogf((1+x+x^2)/(1-x-2x^3+2x^4))`
-/

namespace A200672.P6910486813359355281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, 0, -2, 2] n

end

end A200672.P6910486813359355281

namespace A200672

/-- `ogf((1+x+x^2)/(1-x-2x^3+2x^4))` -/
def P6910486813359355281.Spec : Prop :=
  ∀ n, P6910486813359355281.a n = A200672 (n + 1)

end A200672

/-! ## A200672.P4768393673219701197

`∑[2^floor(n/3)]`
-/

namespace A200672.P4768393673219701197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200672.P4768393673219701197

namespace A200672

/-- `∑[2^floor(n/3)]` -/
def P4768393673219701197.Spec : Prop :=
  ∀ n, P4768393673219701197.a n = (A200672 (n + 1) : ℚ)

end A200672

/-! ## A200672.P3342053466367314455

`record[2*T(n-1,k-1)+3]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A200672.P3342053466367314455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  2 * SequenceMachineLib.triUpLeft f1 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200672.P3342053466367314455

namespace A200672

/-- `record[2*T(n-1,k-1)+3]` -/
def P3342053466367314455.Spec : Prop :=
  ∀ n, (P3342053466367314455.a n : ℤ) = A200672 (n + 1)

end A200672

/-! ## A200672.P8395167186080515204

`record[3+T(n-1,k-1)+T(n-1,k-1)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A200672.P8395167186080515204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  3 + SequenceMachineLib.triUpLeft f1 n + SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200672.P8395167186080515204

namespace A200672

/-- `record[3+T(n-1,k-1)+T(n-1,k-1)]` -/
def P8395167186080515204.Spec : Prop :=
  ∀ n, (P8395167186080515204.a n : ℤ) = A200672 (n + 1)

end A200672

/-! ## A200672.P9793273766271704239

`∑[2*a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A200672.P9793273766271704239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  2 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200672.P9793273766271704239

namespace A200672

/-- `∑[2*a(n-3)]` -/
def P9793273766271704239.Spec : Prop :=
  ∀ n, (P9793273766271704239.a n : ℤ) = A200672 (n + 1)

end A200672

/-! ## A200672.P16306605394668828181

`a(n-1)+2^floor(n/3)` with `a(0)=1`
-/

namespace A200672.P16306605394668828181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

end

end A200672.P16306605394668828181

namespace A200672

/-- `a(n-1)+2^floor(n/3)` -/
def P16306605394668828181.Spec : Prop :=
  ∀ n, P16306605394668828181.a n = (A200672 (n + 1) : ℚ)

end A200672

/-! ## A200672.P9489291642108538220

`5-2*(1-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A200672.P9489291642108538220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  5 - 2 * (1 - a (n - 3))

end

end A200672.P9489291642108538220

namespace A200672

/-- `5-2*(1-a(n-3))` -/
def P9489291642108538220.Spec : Prop :=
  ∀ n, P9489291642108538220.a n = A200672 (n + 1)

end A200672

/-! ## A200672.P10835441197739798290

`∑[2^∑[a(n-3)²]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A200672.P10835441197739798290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200672.P10835441197739798290

namespace A200672

/-- `∑[2^∑[a(n-3)²]]` -/
def P10835441197739798290.Spec : Prop :=
  ∀ n, (P10835441197739798290.a n : ℤ) = A200672 (n + 1)

end A200672

/-! ## A200672.P5490729172433283121

`∑[2^∑[floor(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A200672.P5490729172433283121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200672.P5490729172433283121

namespace A200672

/-- `∑[2^∑[floor(a(n-3))]]` -/
def P5490729172433283121.Spec : Prop :=
  ∀ n, (P5490729172433283121.a n : ℤ) = A200672 (n + 1)

end A200672

/-! ## A200672.P1849202067857914625

`∑[a(n-3)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A200672.P1849202067857914625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 3) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200672.P1849202067857914625

namespace A200672

/-- `∑[a(n-3)+a(n-3)]` -/
def P1849202067857914625.Spec : Prop :=
  ∀ n, (P1849202067857914625.a n : ℤ) = A200672 (n + 1)

end A200672

/-! ## A200672.P2774606621021201465

`floor(a(n-3)+a(n-3)+3)` with `a(0)=1, a(1)=2, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A200672.P2774606621021201465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) + (a (n - 3) + 3)

end

end A200672.P2774606621021201465

namespace A200672

/-- `floor(a(n-3)+a(n-3)+3)` -/
def P2774606621021201465.Spec : Prop :=
  ∀ n, (P2774606621021201465.a n : ℤ) = A200672 (n + 1)

theorem P2774606621021201465.correct : P2774606621021201465.Spec := by
  intro n
  simp only [A200672, Nat.add_sub_cancel, A200672.P2774606621021201465.a, A200672.P4468506009293891896.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A200672

/-! ## A200672.P12798709374024504313

`A029747(n+4)-3`
-/

namespace A200672.P12798709374024504313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (n + 4) - 3

end

end A200672.P12798709374024504313

namespace A200672

/-- `A029747(n+4)-3` -/
def P12798709374024504313.Spec : Prop :=
  ∀ n, P12798709374024504313.a n = A200672 (n + 1)

end A200672

/-! ## A200672.P11195837212082969159

`A173862(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A200672.P11195837212082969159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A173862 (n + 1) + a (n - 1)

end

end A200672.P11195837212082969159

namespace A200672

/-- `A173862(n+1)+a(n-1)` -/
def P11195837212082969159.Spec : Prop :=
  ∀ n, P11195837212082969159.a n = A200672 (n + 1)

end A200672

/-! ## A200672.P15281598389910465276

`∑[A000051(comp[4*n-1]-n)]-(n+1)`
-/

namespace A200672.P15281598389910465276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A200672.P15281598389910465276

namespace A200672

/-- `∑[A000051(comp[4*n-1]-n)]-(n+1)` -/
def P15281598389910465276.Spec : Prop :=
  ∀ n, P15281598389910465276.a n = A200672 (n + 1)

end A200672

/-! ## A200672.P2425810394617990804

`A320674(n+1)-A158799(n)`
-/

namespace A200672.P2425810394617990804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320674 (n + 1) - A158799 n

end

end A200672.P2425810394617990804

namespace A200672

/-- `A320674(n+1)-A158799(n)` -/
def P2425810394617990804.Spec : Prop :=
  ∀ n, P2425810394617990804.a n = A200672 (n + 1)

end A200672

/-! ## A200672.P18382658865339630199

`∪[A136252(n), A154117(n)]`
-/

namespace A200672.P18382658865339630199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154117 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A200672.P18382658865339630199

namespace A200672

/-- `∪[A136252(n), A154117(n)]` -/
def P18382658865339630199.Spec : Prop :=
  ∀ n, (P18382658865339630199.a n : ℤ) = A200672 (n + 1)

end A200672

/-!
# A200673: Total number of nested arcs in the set partitions of n.

The programs for A200673, there is no canonical definition to state claims against.
-/

/-! ## A200673.P3888470809654654037

`∑{#}[n+1, C(n+1, #)*A226854(#)]`
-/

namespace A200673.P3888470809654654037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A226854 k

end

end A200673.P3888470809654654037

/-! ## A200673.P14007241265528656

`ceil(log2(A018934(n)!))`
-/

namespace A200673.P14007241265528656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.factorial (A018934 n).toNat : ℝ)⌉

end

end A200673.P14007241265528656

/-!
# A200674: Total eccentricity of Tower of Hanoi graph H_n^{3} (divided by 3).

The programs for A200674, the canonical program `A200674.P3039750400080413108` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200674 has offset 0).

The definition of A200674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200674.P3039750400080413108

`ogf((x-x^2-2x^3)/(1-10x+27x^2-18x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A200674

/-- `ogf((x-x^2-2x^3)/(1-10x+27x^2-18x^3))` -/
def P3039750400080413108.Spec : Prop :=
  ∀ n, P3039750400080413108.a n = A200674 n

theorem P3039750400080413108.correct : P3039750400080413108.Spec := by
  intro n
  simp only [A200674]

end A200674

/-! ## A200674.P11773186253695563103

`A061858(∑[2*5^n-4^n])+5^n-4^n`
-/

namespace A200674.P11773186253695563103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ n : ℤ) - (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((5 ^ n : ℤ) - (4 ^ n : ℤ))

end

end A200674.P11773186253695563103

namespace A200674

/-- `A061858(∑[2*5^n-4^n])+5^n-4^n` -/
def P11773186253695563103.Spec : Prop :=
  ∀ n, P11773186253695563103.a n = A200674 n

end A200674

/-!
# A200675: Powers of 2 repeated 4 times.

The programs for A200675, the canonical program `A200675.P9268376083334969132` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200675 has offset 0).

The definition of A200675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200675.P9268376083334969132

`2^floor(n/4)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A200675

/-- `2^floor(n/4)` -/
def P9268376083334969132.Spec : Prop :=
  ∀ n, P9268376083334969132.a n = (A200675 n : ℚ)

end A200675

/-! ## A200675.P9795157919348605697

`∏[runs[∑[n%5]]]`
-/

namespace A200675.P9795157919348605697
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P9795157919348605697

namespace A200675

/-- `∏[runs[∑[n%5]]]` -/
def P9795157919348605697.Spec : Prop :=
  ∀ n, (P9795157919348605697.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P9306609074568214371

`∏[Δ[comp[lcm(5, n+1)]]]`
-/

namespace A200675.P9306609074568214371
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P9306609074568214371

namespace A200675

/-- `∏[Δ[comp[lcm(5, n+1)]]]` -/
def P9306609074568214371.Spec : Prop :=
  ∀ n, P9306609074568214371.a n = A200675 n

end A200675

/-! ## A200675.P12766370535990594382

`∏[char[lcm(4, 1+n)]+1]`
-/

namespace A200675.P12766370535990594382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P12766370535990594382

namespace A200675

/-- `∏[char[lcm(4, 1+n)]+1]` -/
def P12766370535990594382.Spec : Prop :=
  ∀ n, (P12766370535990594382.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P10277875424428685977

`∏[gcd(∑[n+2], ∏{p}[n, #])]`
-/

namespace A200675.P10277875424428685977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f2 j) (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P10277875424428685977

namespace A200675

/-- `∏[gcd(∑[n+2], ∏{p}[n, #])]` -/
def P10277875424428685977.Spec : Prop :=
  ∀ n, (P10277875424428685977.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P2034251076304263685

`2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A200675.P2034251076304263685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  2 * a (n - 4)

end

end A200675.P2034251076304263685

namespace A200675

/-- `2*a(n-4)` -/
def P2034251076304263685.Spec : Prop :=
  ∀ n, (P2034251076304263685.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P5125126281085916867

`ceil(2^((or(3, n)-3)/4))`
-/

namespace A200675.P5125126281085916867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ (((Nat.lor 3 n : ℤ) - 3 : ℚ) / 4 : ℝ)⌉

end

end A200675.P5125126281085916867

namespace A200675

/-- `ceil(2^((or(3, n)-3)/4))` -/
def P5125126281085916867.Spec : Prop :=
  ∀ n, P5125126281085916867.a n = A200675 n

end A200675

/-! ## A200675.P9241595235171485875

`round(2^((or(3, n)-3)/4))`
-/

namespace A200675.P9241595235171485875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ (((Nat.lor 3 n : ℤ) - 3 : ℚ) / 4 : ℝ))

end

end A200675.P9241595235171485875

namespace A200675

/-- `round(2^((or(3, n)-3)/4))` -/
def P9241595235171485875.Spec : Prop :=
  ∀ n, P9241595235171485875.a n = A200675 n

end A200675

/-! ## A200675.P7911064501508614564

`∏[a(n-4)!]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A200675.P7911064501508614564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  Nat.factorial (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P7911064501508614564

namespace A200675

/-- `∏[a(n-4)!]` -/
def P7911064501508614564.Spec : Prop :=
  ∀ n, (P7911064501508614564.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P6621910711215793335

`∏[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A200675.P6621910711215793335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P6621910711215793335

namespace A200675

/-- `∏[floor(a(n-4))]` -/
def P6621910711215793335.Spec : Prop :=
  ∀ n, (P6621910711215793335.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P5834597239889383035

`2^∑[a(n-4)²]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A200675.P5834597239889383035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n f1 =>
  f1 (n - 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200675.P5834597239889383035

namespace A200675

/-- `2^∑[a(n-4)²]` -/
def P5834597239889383035.Spec : Prop :=
  ∀ n, (P5834597239889383035.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P15224935405107689900

`2^∑[floor(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A200675.P15224935405107689900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200675.P15224935405107689900

namespace A200675

/-- `2^∑[floor(a(n-4))]` -/
def P15224935405107689900.Spec : Prop :=
  ∀ n, (P15224935405107689900.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P9786739568476782594

`a(n-4)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A200675.P9786739568476782594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 4) + a (n - 4)

end

end A200675.P9786739568476782594

namespace A200675

/-- `a(n-4)+a(n-4)` -/
def P9786739568476782594.Spec : Prop :=
  ∀ n, (P9786739568476782594.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P2499319605602659486

`∏[abs(A164117(n))]`
-/

namespace A200675.P2499319605602659486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164117 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P2499319605602659486

namespace A200675

/-- `∏[abs(A164117(n))]` -/
def P2499319605602659486.Spec : Prop :=
  ∀ n, P2499319605602659486.a n = A200675 n

end A200675

/-! ## A200675.P13036844161477133315

`∏[A098178(n)!]`
-/

namespace A200675.P13036844161477133315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A098178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P13036844161477133315

namespace A200675

/-- `∏[A098178(n)!]` -/
def P13036844161477133315.Spec : Prop :=
  ∀ n, (P13036844161477133315.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P3318320400841349430

`∏[dr(A040791(n))]`
-/

namespace A200675.P3318320400841349430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040791 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P3318320400841349430

namespace A200675

/-- `∏[dr(A040791(n))]` -/
def P3318320400841349430.Spec : Prop :=
  ∀ n, (P3318320400841349430.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P6199791949627440696

`∏[runs[A078690(n)]]`
-/

namespace A200675.P6199791949627440696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078690 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P6199791949627440696

namespace A200675

/-- `∏[runs[A078690(n)]]` -/
def P6199791949627440696.Spec : Prop :=
  ∀ n, (P6199791949627440696.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P4326655016656740051

`∏[runs[A130483(n)]]`
-/

namespace A200675.P4326655016656740051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130483 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P4326655016656740051

namespace A200675

/-- `∏[runs[A130483(n)]]` -/
def P4326655016656740051.Spec : Prop :=
  ∀ n, (P4326655016656740051.a n : ℤ) = A200675 n

end A200675

/-! ## A200675.P17607451708357906648

`A016116(floor(n/2))`
-/

namespace A200675.P17607451708357906648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 ⌊(n : ℚ) / 2⌋.toNat

end

end A200675.P17607451708357906648

namespace A200675

/-- `A016116(floor(n/2))` -/
def P17607451708357906648.Spec : Prop :=
  ∀ n, P17607451708357906648.a n = A200675 n

end A200675

/-! ## A200675.P15110086781667781558

`∏[A177704(abs(1-n))]`
-/

namespace A200675.P15110086781667781558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200675.P15110086781667781558

namespace A200675

/-- `∏[A177704(abs(1-n))]` -/
def P15110086781667781558.Spec : Prop :=
  ∀ n, P15110086781667781558.a n = A200675 n

end A200675

/-!
# A200676: Expansion of g.f. -(3*x^2-5*x+1)/(x^3-3*x^2+5*x-1).

The programs for A200676, the canonical program `A200676.P2502868544105718179` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200676 has offset 0).

The definition of A200676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+3x^2)/(1-5x+3x^2-x^3))` (program `A200676.P2502868544105718179`, by `A200676.P2502868544105718179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200676.P2502868544105718179

`ogf((1-5x+3x^2)/(1-5x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A200676

/-- `ogf((1-5x+3x^2)/(1-5x+3x^2-x^3))` -/
def P2502868544105718179.Spec : Prop :=
  ∀ n, P2502868544105718179.a n = A200676 n

theorem P2502868544105718179.correct : P2502868544105718179.Spec := by
  intro n
  simp only [A200676]

end A200676

/-! ## A200676.P10299369394672515453

`xor(A008612(A074088(n)), A131728(n))`
-/

namespace A200676.P10299369394672515453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008612 (A074088 n).toNat) (A131728 n)

end

end A200676.P10299369394672515453

namespace A200676

/-- `xor(A008612(A074088(n)), A131728(n))` -/
def P10299369394672515453.Spec : Prop :=
  ∀ n, P10299369394672515453.a n = A200676 n

end A200676

/-!
# A200677: Smallest semiprime such that the sum of the two prime factors equals n, or zero if impossible.

The programs for A200677, there is no canonical definition to state claims against.
-/

/-! ## A200677.P6839369215014152370

`A243485(A187829(n+1))%∑[A080339(n+1)]²`
-/

namespace A200677.P6839369215014152370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243485 (A187829 (n + 1)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A200677.P6839369215014152370

/-! ## A200677.P12455531858398638740

`A243485(n+1)%A016921(A081651(n))`
-/

namespace A200677.P12455531858398638740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243485 (n + 1)) (A016921 (A081651 n).toNat)

end

end A200677.P12455531858398638740

/-!
# A200678: Partial sums of A200675.

The programs for A200678, the canonical program `A200678.P18426392645393721190` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200678 has offset 1).

The definition of A200678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200678.P18426392645393721190

`ogf((1+x+x^2+x^3)/(1-x-2x^4+2x^5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A200678

/-- `ogf((1+x+x^2+x^3)/(1-x-2x^4+2x^5))` -/
def P18426392645393721190.Spec : Prop :=
  ∀ n, P18426392645393721190.a n = A200678 (n + 1)

theorem P18426392645393721190.correct : P18426392645393721190.Spec := by
  intro n
  simp only [A200678, Nat.add_sub_cancel]

end A200678

/-! ## A200678.P10537495729038247390

`∑[2^floor(n/4)]`
-/

namespace A200678.P10537495729038247390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200678.P10537495729038247390

namespace A200678

/-- `∑[2^floor(n/4)]` -/
def P10537495729038247390.Spec : Prop :=
  ∀ n, P10537495729038247390.a n = (A200678 (n + 1) : ℚ)

end A200678

/-! ## A200678.P2963566514241163434

`∑[2*a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A200678.P2963566514241163434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  2 * f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200678.P2963566514241163434

namespace A200678

/-- `∑[2*a(n-4)]` -/
def P2963566514241163434.Spec : Prop :=
  ∀ n, (P2963566514241163434.a n : ℤ) = A200678 (n + 1)

end A200678

/-! ## A200678.P9437342771399389362

`2*(2+a(n-4))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A200678.P9437342771399389362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  2 * (2 + a (n - 4))

end

end A200678.P9437342771399389362

namespace A200678

/-- `2*(2+a(n-4))` -/
def P9437342771399389362.Spec : Prop :=
  ∀ n, (P9437342771399389362.a n : ℤ) = A200678 (n + 1)

end A200678

/-! ## A200678.P13367002972803246985

`2^floor(n/4)+a(n-1)` with `a(0)=1`
-/

namespace A200678.P13367002972803246985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ) + a (n - 1)

end

end A200678.P13367002972803246985

namespace A200678

/-- `2^floor(n/4)+a(n-1)` -/
def P13367002972803246985.Spec : Prop :=
  ∀ n, P13367002972803246985.a n = (A200678 (n + 1) : ℚ)

end A200678

/-! ## A200678.P13880882930534618470

`∑[a(n-4)+a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A200678.P13880882930534618470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  f1 (n - 4) + f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200678.P13880882930534618470

namespace A200678

/-- `∑[a(n-4)+a(n-4)]` -/
def P13880882930534618470.Spec : Prop :=
  ∀ n, (P13880882930534618470.a n : ℤ) = A200678 (n + 1)

end A200678

/-! ## A200678.P13420042969281388496

`floor(a(n-4)+a(n-4)+4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A200678.P13420042969281388496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 4) + (a (n - 4) + 4)

end

end A200678.P13420042969281388496

namespace A200678

/-- `floor(a(n-4)+a(n-4)+4)` -/
def P13420042969281388496.Spec : Prop :=
  ∀ n, (P13420042969281388496.a n : ℤ) = A200678 (n + 1)

end A200678

/-! ## A200678.P4153048028790467919

`A029750(n+5)-4`
-/

namespace A200678.P4153048028790467919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 5) - 4

end

end A200678.P4153048028790467919

namespace A200678

/-- `A029750(n+5)-4` -/
def P4153048028790467919.Spec : Prop :=
  ∀ n, P4153048028790467919.a n = A200678 (n + 1)

end A200678

/-! ## A200678.P1333408099659122324

`abs(∑[A154589(A008621(n))])`
-/

namespace A200678.P1333408099659122324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154589 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A200678.P1333408099659122324

namespace A200678

/-- `abs(∑[A154589(A008621(n))])` -/
def P1333408099659122324.Spec : Prop :=
  ∀ n, P1333408099659122324.a n = A200678 (n + 1)

end A200678

/-! ## A200678.P5046496246877562905

`∑[A000225(A002265(n))]+n+1`
-/

namespace A200678.P5046496246877562905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A200678.P5046496246877562905

namespace A200678

/-- `∑[A000225(A002265(n))]+n+1` -/
def P5046496246877562905.Spec : Prop :=
  ∀ n, P5046496246877562905.a n = A200678 (n + 1)

end A200678

/-! ## A200678.P13353232162811638702

`∑[A200675(n+4)]/2`
-/

namespace A200678.P13353232162811638702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200675 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A200678.P13353232162811638702

namespace A200678

/-- `∑[A200675(n+4)]/2` -/
def P13353232162811638702.Spec : Prop :=
  ∀ n, P13353232162811638702.a n = (A200678 (n + 1) : ℚ)

end A200678

/-! ## A200678.P14768410145647101383

`A288732(n+1)/2-1`
-/

namespace A200678.P14768410145647101383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288732 (n + 1) : ℚ) / 2 - 1

end

end A200678.P14768410145647101383

namespace A200678

/-- `A288732(n+1)/2-1` -/
def P14768410145647101383.Spec : Prop :=
  ∀ n, P14768410145647101383.a n = (A200678 (n + 1) : ℚ)

end A200678

/-! ## A200678.P10039676833205145398

`∑[A060546(A008619(n))]/2`
-/

namespace A200678.P10039676833205145398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A008619 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A200678.P10039676833205145398

namespace A200678

/-- `∑[A060546(A008619(n))]/2` -/
def P10039676833205145398.Spec : Prop :=
  ∀ n, P10039676833205145398.a n = (A200678 (n + 1) : ℚ)

end A200678

/-! ## A200678.P15503127312150793196

`∑[A000079(A002265(n)+2)]/4`
-/

namespace A200678.P15503127312150793196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002265 n + 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A200678.P15503127312150793196

namespace A200678

/-- `∑[A000079(A002265(n)+2)]/4` -/
def P15503127312150793196.Spec : Prop :=
  ∀ n, P15503127312150793196.a n = (A200678 (n + 1) : ℚ)

end A200678

/-!
# A200682: Decimal expansion of the greater of two values of x satisfying 3*x^2 = tan(x) and 0 < x < Pi/2.

The programs for A200682, there is no canonical definition to state claims against.
-/

/-! ## A200682.P9410728201772483497

`A005810(n)%A040043(A194559(n)/A081125(n))`
-/

namespace A200682.P9410728201772483497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005810 n) (A040043 (SequenceMachineLib.roundAway ((A194559 n : ℚ) / (A081125 n : ℚ))).toNat)

end

end A200682.P9410728201772483497

