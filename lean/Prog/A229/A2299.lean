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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A229900: G.f. satisfies: A(x) = x*exp( Sum_{n>=1} A(Lucas(n)*x^n) / n ).

The programs for A229900, there is no canonical definition to state claims against.
-/

/-! ## A229900.P10329956295176765461

`A390674(A069143(n+1))`
-/

namespace A229900.P10329956295176765461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390674 (A069143 (n + 1)).toNat

end

end A229900.P10329956295176765461

/-! ## A229900.P16952806311599531339

`A156689(A149152(n)+C(n, 6))`
-/

namespace A229900.P16952806311599531339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A149152 n + (Nat.choose n 6 : ℤ)).toNat

end

end A229900.P16952806311599531339

/-! ## A229900.P15459473803863085933

`A156689(xor(C(n, 6), A149152(n)))`
-/

namespace A229900.P15459473803863085933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (Int.xor (Nat.choose n 6 : ℤ) (A149152 n)).toNat

end

end A229900.P15459473803863085933

/-!
# A229901: G.f. satisfies: A(x) = x*exp( Sum_{n>=1} A(2^n*x^n) / n ).

The programs for A229901, there is no canonical definition to state claims against.
-/

/-! ## A229901.P13214094749199677577

`2^n*A179470(n)`
-/

namespace A229901.P13214094749199677577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A179470 n

end

end A229901.P13214094749199677577

/-! ## A229901.P7860818445681318909

`A179470(n)*A011782(n+1)`
-/

namespace A229901.P7860818445681318909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179470 n * A011782 (n + 1)

end

end A229901.P7860818445681318909

/-! ## A229901.P11259877174959347257

`A179470(n)/(2^A008683(A020483(n)))^n`
-/

namespace A229901.P11259877174959347257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179470 n : ℚ) / ((2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)) ^ n

end

end A229901.P11259877174959347257

/-! ## A229901.P16802588456161830560

`A179470(n)*A256999(A000079(n))`
-/

namespace A229901.P16802588456161830560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179470 n * A256999 (A000079 n).toNat

end

end A229901.P16802588456161830560

/-!
# A229903: a(n) = (190/99)*(100^A001651(n)-1).

The programs for A229903, the canonical program `A229903.P2338630133382938004` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229903 has offset 1).

The definition of A229903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229903.P2338630133382938004

`190/99*(100^floor((3*(n+1)-1)/2)-1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229903

/-- `190/99*(100^floor((3*(n+1)-1)/2)-1)` -/
def P2338630133382938004.Spec : Prop :=
  ∀ n, P2338630133382938004.a n = (A229903 (n + 1) : ℚ)

end A229903

/-! ## A229903.P18059222258385446010

`190/99*(100^A001651(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A229903.P18059222258385446010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (190 : ℚ) / 99 * ((100 : ℚ) ^ (A001651 (n + 1) : ℤ) - 1)

end

end A229903.P18059222258385446010

namespace A229903

/-- `190/99*(100^A001651(n+1)-1)` -/
def P18059222258385446010.Spec : Prop :=
  ∀ n, P18059222258385446010.a n = (A229903 (n + 1) : ℚ)

end A229903

/-!
# A229904: Number of additional unit squares completely encircled in the first quadrant of a Cartesian grid by a circle centered at the origin as the radius squared increases from one sum of two square integers to the next larger sum of two square integers.

The programs for A229904, the canonical program `A229904.P63020032265155901` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229904 has offset 1).

The definition of A229904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229904.P63020032265155901

`A063725(A000404(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A229904

/-- `A063725(A000404(n+1))` -/
def P63020032265155901.Spec : Prop :=
  ∀ n, P63020032265155901.a n = A229904 (n + 1)

theorem P63020032265155901.correct : P63020032265155901.Spec := by
  intro n
  simp only [A229904, Nat.add_sub_cancel]

end A229904

/-! ## A229904.P16455872804188137869

`A063725(lt[0, A025426(n)])`
-/

namespace A229904.P16455872804188137869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A229904.P16455872804188137869

namespace A229904

/-- `A063725(lt[0, A025426(n)])` -/
def P16455872804188137869.Spec : Prop :=
  ∀ n, P16455872804188137869.a n = A229904 (n + 1)

end A229904

/-! ## A229904.P4631091658855598672

`A063725(lt[0, A063725(n)])`
-/

namespace A229904.P4631091658855598672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A229904.P4631091658855598672

namespace A229904

/-- `A063725(lt[0, A063725(n)])` -/
def P4631091658855598672.Spec : Prop :=
  ∀ n, P4631091658855598672.a n = A229904 (n + 1)

end A229904

/-! ## A229904.P7727990266414854190

`A063725(sqrt(A135784(n+1)))`
-/

namespace A229904.P7727990266414854190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (SequenceMachineLib.roundAway (Real.sqrt (A135784 (n + 1) : ℝ))).toNat

end

end A229904.P7727990266414854190

namespace A229904

/-- `A063725(sqrt(A135784(n+1)))` -/
def P7727990266414854190.Spec : Prop :=
  ∀ n, P7727990266414854190.a n = A229904 (n + 1)

end A229904

/-! ## A229904.P1140536278654142350

`A063725(A339273(n+1)/4)`
-/

namespace A229904.P1140536278654142350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (SequenceMachineLib.roundAway ((A339273 (n + 1) : ℚ) / 4)).toNat

end

end A229904.P1140536278654142350

namespace A229904

/-- `A063725(A339273(n+1)/4)` -/
def P1140536278654142350.Spec : Prop :=
  ∀ n, P1140536278654142350.a n = A229904 (n + 1)

end A229904

/-! ## A229904.P9293142642216893701

`A063725(eq[1, gcd(7, A063725(n))])`
-/

namespace A229904.P9293142642216893701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A063725 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229904.P9293142642216893701

namespace A229904

/-- `A063725(eq[1, gcd(7, A063725(n))])` -/
def P9293142642216893701.Spec : Prop :=
  ∀ n, P9293142642216893701.a n = A229904 (n + 1)

end A229904

/-! ## A229904.P17885275209395443902

`A063725(eq[1, ceil(A063725(n)/(n+1))])`
-/

namespace A229904.P17885275209395443902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229904.P17885275209395443902

namespace A229904

/-- `A063725(eq[1, ceil(A063725(n)/(n+1))])` -/
def P17885275209395443902.Spec : Prop :=
  ∀ n, P17885275209395443902.a n = A229904 (n + 1)

end A229904

/-! ## A229904.P1406629128427601858

`A063725(A135787(n+1)/A135786(n+1))`
-/

namespace A229904.P1406629128427601858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (SequenceMachineLib.roundAway ((A135787 (n + 1) : ℚ) / (A135786 (n + 1) : ℚ))).toNat

end

end A229904.P1406629128427601858

namespace A229904

/-- `A063725(A135787(n+1)/A135786(n+1))` -/
def P1406629128427601858.Spec : Prop :=
  ∀ n, P1406629128427601858.a n = A229904 (n + 1)

end A229904

/-! ## A229904.P10786270906417650867

`A063725(A339273(n+1))`
-/

namespace A229904.P10786270906417650867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A339273 (n + 1)).toNat

end

end A229904.P10786270906417650867

namespace A229904

/-- `A063725(A339273(n+1))` -/
def P10786270906417650867.Spec : Prop :=
  ∀ n, P10786270906417650867.a n = A229904 (n + 1)

end A229904

/-! ## A229904.P8835890782769668055

`Δ[record[A237526(n-A237526(n))]]`
-/

namespace A229904.P8835890782769668055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 ((n : ℤ) - A237526 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229904.P8835890782769668055

namespace A229904

/-- `Δ[record[A237526(n-A237526(n))]]` -/
def P8835890782769668055.Spec : Prop :=
  ∀ n, P8835890782769668055.a n = A229904 (n + 1)

end A229904

/-! ## A229904.P10738942878388856346

`A063725(A336725(∑[n+2]))`
-/

namespace A229904.P10738942878388856346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A336725 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A229904.P10738942878388856346

namespace A229904

/-- `A063725(A336725(∑[n+2]))` -/
def P10738942878388856346.Spec : Prop :=
  ∀ n, P10738942878388856346.a n = A229904 (n + 1)

end A229904

/-!
# A229906: Composite numbers whose sum of digits is 19.

The programs for A229906, there is no canonical definition to state claims against.
-/

/-! ## A229906.P13934541335480340855

`filter[A166459(n+1), A373977(#)]`
-/

namespace A229906.P13934541335480340855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A229906.P13934541335480340855

/-! ## A229906.P9850614673663712668

`filter[A166459(n+1), A005171(#)]`
-/

namespace A229906.P9850614673663712668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A229906.P9850614673663712668

/-! ## A229906.P12712825567818697993

`filter[A166459(n+1), A066247(#)]`
-/

namespace A229906.P12712825567818697993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A229906.P12712825567818697993

/-! ## A229906.P591026599806939720

`filter[A166459(n+1), A292438(#)]`
-/

namespace A229906.P591026599806939720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A229906.P591026599806939720

/-! ## A229906.P12253345415016176852

`filter[A166459(n+1), A323162(#)]`
-/

namespace A229906.P12253345415016176852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A229906.P12253345415016176852

/-! ## A229906.P17290171431251703834

`∩[A141642(n+1), A166459(n+1)]`
-/

namespace A229906.P17290171431251703834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229906.P17290171431251703834

/-! ## A229906.P15261528950387267628

`∩[A166459(n+1), A329522(n+1)]`
-/

namespace A229906.P15261528950387267628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229906.P15261528950387267628

/-! ## A229906.P6614664697070385986

`∩[A141468(n+1), A166459(n+1)]`
-/

namespace A229906.P6614664697070385986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229906.P6614664697070385986

/-! ## A229906.P5626853031675741571

`∩[A166459(n+1), A171993(n+1)]`
-/

namespace A229906.P5626853031675741571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229906.P5626853031675741571

/-! ## A229906.P11978775318750912255

`∩[A166459(n+1), A166460(n+1)+1]`
-/

namespace A229906.P11978775318750912255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229906.P11978775318750912255

/-! ## A229906.P1372061069677371330

`eq[A004500(A007953(n)), A055671(n)]`
-/

namespace A229906.P1372061069677371330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229906.P1372061069677371330

/-! ## A229906.P10916987034023211289

`∩[A166459(n+1), A291745(n+1)]`
-/

namespace A229906.P10916987034023211289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229906.P10916987034023211289

/-!
# A229907: Initial primes in prime quadruplets (p, p+2, p+6, p+8) preceding the maximal gaps in A113404.

The programs for A229907, there is no canonical definition to state claims against.
-/

/-! ## A229907.P11497328922466532669

`A113403(n+1)-A113404(n+1)`
-/

namespace A229907.P11497328922466532669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113403 (n + 1) - A113404 (n + 1)

end

end A229907.P11497328922466532669

/-! ## A229907.P1696540460660077159

`A113403(n+1)-record[Δ[A007530(n+1)]]`
-/

namespace A229907.P1696540460660077159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113403 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229907.P1696540460660077159

/-! ## A229907.P13401276514827874095

`A113403(n+1)-record[Δ[A090258(n+1)]]`
-/

namespace A229907.P13401276514827874095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113403 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229907.P13401276514827874095

/-! ## A229907.P16616671370220315263

`A113403(n+1)-record[Δ[A136721(n+1)]]`
-/

namespace A229907.P16616671370220315263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113403 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229907.P16616671370220315263

/-! ## A229907.P16282264595716951928

`A113403(n+1)-record[Δ[A173037(n+1)]]`
-/

namespace A229907.P16282264595716951928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113403 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229907.P16282264595716951928

/-!
# A229908: The least prime that has at least n embedded primes, reading forward and backward.

The programs for A229908, there is no canonical definition to state claims against.
-/

/-! ## A229908.P49151593299997342

`A257529(A244421(n))`
-/

namespace A229908.P49151593299997342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257529 (A244421 n).toNat

end

end A229908.P49151593299997342

/-! ## A229908.P1745328649781414132

`p?[A108872(A291873(n+1))]`
-/

namespace A229908.P1745328649781414132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (A291873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229908.P1745328649781414132

/-!
# A229910: a(n) = |{0 < g < prime(n): both g and g + g^{-1} are primitive roots modulo prime(n)}|, where g^{-1} is the inverse of g modulo prime(n).

The programs for A229910, there is no canonical definition to state claims against.
-/

/-! ## A229910.P6913850584355455007

`A271346(n+1)%A353328(A020714(n))`
-/

namespace A229910.P6913850584355455007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271346 (n + 1)) (A353328 (A020714 n).toNat)

end

end A229910.P6913850584355455007

/-!
# A229912: a(n) = Fibonacci(n) * (2*Fibonacci(n) + 1).

The programs for A229912, the canonical program `A229912.P11352936917927614539` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229912 has offset 0).

The definition of A229912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*(2*A000045(n)+1)` (program `A229912.P11352936917927614539`, by `A229912.P11352936917927614539.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229912.P4073503391704194822

`A000045(n)+2*A007598(n)`
-/

namespace A229912.P4073503391704194822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 2 * A007598 n

end

end A229912.P4073503391704194822

namespace A229912

/-- `A000045(n)+2*A007598(n)` -/
def P4073503391704194822.Spec : Prop :=
  ∀ n, P4073503391704194822.a n = A229912 n

theorem P4073503391704194822.correct : P4073503391704194822.Spec := by
  intro n
  simp only [A229912, Nat.add_sub_cancel, A229912.P4073503391704194822.a, A229912.P11352936917927614539.a, A000045, A000045.P11838749114346432762.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229912

/-! ## A229912.P11352936917927614539

`A000045(n)*(2*A000045(n)+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A229912

/-- `A000045(n)*(2*A000045(n)+1)` -/
def P11352936917927614539.Spec : Prop :=
  ∀ n, P11352936917927614539.a n = A229912 n

theorem P11352936917927614539.correct : P11352936917927614539.Spec := by
  intro n
  simp only [A229912]

end A229912

/-! ## A229912.P7896111138894158958

`A059727(n)+round(ϕ^n/sqrt(5))²`
-/

namespace A229912.P7896111138894158958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059727 n + SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

end

end A229912.P7896111138894158958

namespace A229912

/-- `A059727(n)+round(ϕ^n/sqrt(5))²` -/
def P7896111138894158958.Spec : Prop :=
  ∀ n, P7896111138894158958.a n = A229912 n

end A229912

/-! ## A229912.P17789482139793882535

`A175395(n)+A000045(n)`
-/

namespace A229912.P17789482139793882535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n + A000045 n

end

end A229912.P17789482139793882535

namespace A229912

/-- `A175395(n)+A000045(n)` -/
def P17789482139793882535.Spec : Prop :=
  ∀ n, P17789482139793882535.a n = A229912 n

theorem P17789482139793882535.correct : P17789482139793882535.Spec := by
  intro n
  simp only [A229912, Nat.add_sub_cancel, A229912.P17789482139793882535.a, A229912.P11352936917927614539.a, A000045, A000045.P11838749114346432762.a, A175395, A175395.P1994188799197197583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229912

/-! ## A229912.P2879096204795068424

`A192873(n)+A109522(n)`
-/

namespace A229912.P2879096204795068424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 n + A109522 n

end

end A229912.P2879096204795068424

namespace A229912

/-- `A192873(n)+A109522(n)` -/
def P2879096204795068424.Spec : Prop :=
  ∀ n, P2879096204795068424.a n = A229912 n

end A229912

/-! ## A229912.P18096381643877714339

`A382845(n)+A001611(n)`
-/

namespace A229912.P18096381643877714339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382845 n + A001611 n

end

end A229912.P18096381643877714339

namespace A229912

/-- `A382845(n)+A001611(n)` -/
def P18096381643877714339.Spec : Prop :=
  ∀ n, P18096381643877714339.a n = A229912 n

theorem P18096381643877714339.correct : P18096381643877714339.Spec := by
  intro n
  simp only [A229912, Nat.add_sub_cancel, A229912.P18096381643877714339.a, A229912.P11352936917927614539.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, A382845, A382845.P16632734929146409984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229912

/-! ## A229912.P13561877384200777118

`A382843(n)+A022086(n)`
-/

namespace A229912.P13561877384200777118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382843 n + A022086 n

end

end A229912.P13561877384200777118

namespace A229912

/-- `A382843(n)+A022086(n)` -/
def P13561877384200777118.Spec : Prop :=
  ∀ n, P13561877384200777118.a n = A229912 n

end A229912

/-! ## A229912.P5859145987122579643

`A382608(n)-A000045(n)`
-/

namespace A229912.P5859145987122579643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382608 n - A000045 n

end

end A229912.P5859145987122579643

namespace A229912

/-- `A382608(n)-A000045(n)` -/
def P5859145987122579643.Spec : Prop :=
  ∀ n, P5859145987122579643.a n = A229912 n

end A229912

/-! ## A229912.P16544247937066521601

`A382609(n)-A001588(n)`
-/

namespace A229912.P16544247937066521601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382609 n - A001588 n

end

end A229912.P16544247937066521601

namespace A229912

/-- `A382609(n)-A001588(n)` -/
def P16544247937066521601.Spec : Prop :=
  ∀ n, P16544247937066521601.a n = A229912 n

end A229912

/-! ## A229912.P16222276112977324939

`A382308(n)-A187893(n)`
-/

namespace A229912.P16222276112977324939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382308 n - A187893 n

end

end A229912.P16222276112977324939

namespace A229912

/-- `A382308(n)-A187893(n)` -/
def P16222276112977324939.Spec : Prop :=
  ∀ n, P16222276112977324939.a n = A229912 n

end A229912

/-! ## A229912.P12309881520707430294

`A000045(n)*A001588(n)`
-/

namespace A229912.P12309881520707430294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001588 n

end

end A229912.P12309881520707430294

namespace A229912

/-- `A000045(n)*A001588(n)` -/
def P12309881520707430294.Spec : Prop :=
  ∀ n, P12309881520707430294.a n = A229912 n

end A229912

/-! ## A229912.P13093059728083074127

`A162460(n+1)+A059512(n)`
-/

namespace A229912.P13093059728083074127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162460 (n + 1) + A059512 n

end

end A229912.P13093059728083074127

namespace A229912

/-- `A162460(n+1)+A059512(n)` -/
def P13093059728083074127.Spec : Prop :=
  ∀ n, P13093059728083074127.a n = A229912 n

end A229912

/-! ## A229912.P668682620996112723

`(A055389(n)+1)*A000045(n)`
-/

namespace A229912.P668682620996112723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055389 n + 1) * A000045 n

end

end A229912.P668682620996112723

namespace A229912

/-- `(A055389(n)+1)*A000045(n)` -/
def P668682620996112723.Spec : Prop :=
  ∀ n, P668682620996112723.a n = A229912 n

end A229912

/-! ## A229912.P5624109550251040299

`(A001611(n)-1)*A001588(n)`
-/

namespace A229912.P5624109550251040299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A001588 n

end

end A229912.P5624109550251040299

namespace A229912

/-- `(A001611(n)-1)*A001588(n)` -/
def P5624109550251040299.Spec : Prop :=
  ∀ n, P5624109550251040299.a n = A229912 n

end A229912

/-! ## A229912.P16535207208448511218

`A007598(n)+2*A033192(n)`
-/

namespace A229912.P16535207208448511218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + 2 * A033192 n

end

end A229912.P16535207208448511218

namespace A229912

/-- `A007598(n)+2*A033192(n)` -/
def P16535207208448511218.Spec : Prop :=
  ∀ n, P16535207208448511218.a n = A229912 n

end A229912

/-! ## A229912.P578331453880602534

`A095122(n)+2*A000045(n)`
-/

namespace A229912.P578331453880602534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095122 n + 2 * A000045 n

end

end A229912.P578331453880602534

namespace A229912

/-- `A095122(n)+2*A000045(n)` -/
def P578331453880602534.Spec : Prop :=
  ∀ n, P578331453880602534.a n = A229912 n

theorem P578331453880602534.correct : P578331453880602534.Spec := by
  intro n
  simp only [A229912, Nat.add_sub_cancel, A229912.P578331453880602534.a, A229912.P11352936917927614539.a, A000045, A000045.P11838749114346432762.a, A095122, A095122.P15035804079666453.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229912

/-! ## A229912.P17366559352279736170

`A175395(n)+A103609(2*n)`
-/

namespace A229912.P17366559352279736170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n + A103609 (2 * n)

end

end A229912.P17366559352279736170

namespace A229912

/-- `A175395(n)+A103609(2*n)` -/
def P17366559352279736170.Spec : Prop :=
  ∀ n, P17366559352279736170.a n = A229912 n

end A229912

/-! ## A229912.P7084356700234362219

`(A157725(n)-2)*A001588(n)`
-/

namespace A229912.P7084356700234362219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n - 2) * A001588 n

end

end A229912.P7084356700234362219

namespace A229912

/-- `(A157725(n)-2)*A001588(n)` -/
def P7084356700234362219.Spec : Prop :=
  ∀ n, P7084356700234362219.a n = A229912 n

end A229912

/-! ## A229912.P4385462239994927850

`A001588(n)*A103609(2*n)`
-/

namespace A229912.P4385462239994927850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n * A103609 (2 * n)

end

end A229912.P4385462239994927850

namespace A229912

/-- `A001588(n)*A103609(2*n)` -/
def P4385462239994927850.Spec : Prop :=
  ∀ n, P4385462239994927850.a n = A229912 n

end A229912

/-!
# A229914: Number of pyramid polycubes of a given volume in dimension 3.

The programs for A229914, there is no canonical definition to state claims against.
-/

/-! ## A229914.P13751793333768031972

`A347262(a(n-1))+1+n` with `a(0)=1`
-/

namespace A229914.P13751793333768031972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347262 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A229914.P13751793333768031972

/-! ## A229914.P8876972112198441712

`A002024(3*(∑[n]+C(n, 4))*a(n-1)+1)` with `a(0)=1`
-/

namespace A229914.P8876972112198441712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002024 (((3 * (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 4) : ℕ) : ℤ) * a (n - 1) + 1).toNat

end

end A229914.P8876972112198441712

/-! ## A229914.P2729951684873816432

`A006855(A101277(n+1))`
-/

namespace A229914.P2729951684873816432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006855 (A101277 (n + 1)).toNat

end

end A229914.P2729951684873816432

/-!
# A229915: Number of espalier polycubes of a given volume in dimension 3.

The programs for A229915, there is no canonical definition to state claims against.
-/

/-! ## A229915.P2513689507369763144

`A335376(A320886(n))`
-/

namespace A229915.P2513689507369763144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (A320886 n).toNat

end

end A229915.P2513689507369763144

/-! ## A229915.P1901621440062874160

`A367935(A306319(n))`
-/

namespace A229915.P1901621440062874160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367935 (A306319 n).toNat

end

end A229915.P1901621440062874160

/-! ## A229915.P17828417436455796153

`A089300(n)+A014306(A006319(n))`
-/

namespace A229915.P17828417436455796153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089300 n + A014306 (A006319 n).toNat

end

end A229915.P17828417436455796153

/-! ## A229915.P6974712043242146206

`A089300(n)+A052409(A003319(n))`
-/

namespace A229915.P6974712043242146206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089300 n + A052409 (A003319 n).toNat

end

end A229915.P6974712043242146206

/-! ## A229915.P14143244112600740660

`A319066(n)-A124762(A085146(n+1))`
-/

namespace A229915.P14143244112600740660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n - A124762 (A085146 (n + 1)).toNat

end

end A229915.P14143244112600740660

/-!
# A229916: Numbers of pyramid polycubes of a given volume in dimension 4.

The programs for A229916, there is no canonical definition to state claims against.
-/

/-! ## A229916.P16376382760793426394

`A342742(A154324(n+1))`
-/

namespace A229916.P16376382760793426394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342742 (A154324 (n + 1)).toNat

end

end A229916.P16376382760793426394

/-! ## A229916.P9513132733631880607

`∑[A123578(A027098(n)*A187478(n+1))]`
-/

namespace A229916.P9513132733631880607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A027098 n * A187478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229916.P9513132733631880607

/-!
# A229924: Numbers of pyramid polycubes of a given volume in dimension 5.

The programs for A229924, there is no canonical definition to state claims against.
-/

/-! ## A229924.P13131669089543570251

`∑[A329996(A229180(n))]`
-/

namespace A229924.P13131669089543570251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (A229180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229924.P13131669089543570251

/-! ## A229924.P10857164932356863420

`A302796(A092539(n))-n`
-/

namespace A229924.P10857164932356863420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302796 (A092539 n).toNat - (n : ℤ)

end

end A229924.P10857164932356863420

/-!
# A229928: Number of nX2 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A229928, there is no canonical definition to state claims against.
-/

/-! ## A229928.P13974796692358629639

`A229934(∑[n+1]+2)`
-/

namespace A229928.P13974796692358629639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229928.P13974796692358629639

/-! ## A229928.P8555985674182027679

`record[A229934(n+2)/A060854(n+1)]`
-/

namespace A229928.P8555985674182027679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229934 (n + 2) : ℚ) / (A060854 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229928.P8555985674182027679

/-! ## A229928.P6755848828703858594

`record[gcd(A229934(n+2), A230910(n+1))]`
-/

namespace A229928.P6755848828703858594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229934 (n + 2)) (A230910 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229928.P6755848828703858594

/-! ## A229928.P17510751383362872401

`record[gcd(A229934(n+1), A240250(n+1))]`
-/

namespace A229928.P17510751383362872401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229934 (n + 1)) (A240250 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229928.P17510751383362872401

/-! ## A229928.P6095060831279804676

`record[A129686(n+1)*A229934(n+3)]`
-/

namespace A229928.P6095060831279804676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129686 (n + 1) * A229934 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229928.P6095060831279804676

/-!
# A229929: Number of nX3 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A229929, there is no canonical definition to state claims against.
-/

/-! ## A229929.P758343529036278497

`A229934(∑[n+2]+4)`
-/

namespace A229929.P758343529036278497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229929.P758343529036278497

/-! ## A229929.P14078975598996715112

`or(1, A229934(A167614(n+1)))`
-/

namespace A229929.P14078975598996715112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229934 (A167614 (n + 1)).toNat)

end

end A229929.P14078975598996715112

/-! ## A229929.P13302700384823186432

`A229934(A167614(n+1))+A185284(n)`
-/

namespace A229929.P13302700384823186432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (A167614 (n + 1)).toNat + A185284 n

end

end A229929.P13302700384823186432

/-! ## A229929.P11742153812425962148

`A229934(A167614(n+1))%A041144(n)`
-/

namespace A229929.P11742153812425962148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229934 (A167614 (n + 1)).toNat) (A041144 n)

end

end A229929.P11742153812425962148

/-! ## A229929.P15677261750409953156

`lcm(A020985(n), A229934(A167614(n+1)))`
-/

namespace A229929.P15677261750409953156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A229934 (A167614 (n + 1)).toNat)

end

end A229929.P15677261750409953156

/-!
# A229930: Number of nX4 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A229930, there is no canonical definition to state claims against.
-/

/-! ## A229930.P2689043519510719569

`A229934(A374004(n+1))`
-/

namespace A229930.P2689043519510719569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (A374004 (n + 1)).toNat

end

end A229930.P2689043519510719569

/-! ## A229930.P2825287609859511904

`A229934(A141214(n)+7)`
-/

namespace A229930.P2825287609859511904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (A141214 n + 7).toNat

end

end A229930.P2825287609859511904

/-! ## A229930.P9970548325944072296

`A229934(A055999(n)+10)`
-/

namespace A229930.P9970548325944072296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (A055999 n + 10).toNat

end

end A229930.P9970548325944072296

/-! ## A229930.P3780752894735111790

`A229934(eq[5, A066657(n)])`
-/

namespace A229930.P3780752894735111790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229930.P3780752894735111790

/-! ## A229930.P7442944728887206872

`A229934(A167614(n+2)+1)`
-/

namespace A229930.P7442944728887206872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (A167614 (n + 2) + 1).toNat

end

end A229930.P7442944728887206872

/-!
# A229931: Number of nX5 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A229931, there is no canonical definition to state claims against.
-/

/-! ## A229931.P4085818107848804836

`A229934(A374005(n+1))`
-/

namespace A229931.P4085818107848804836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (A374005 (n + 1)).toNat

end

end A229931.P4085818107848804836

/-! ## A229931.P6342316977081175745

`A229934(A155212(n)+13)`
-/

namespace A229931.P6342316977081175745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (A155212 n + 13).toNat

end

end A229931.P6342316977081175745

/-! ## A229931.P4463088620549232137

`A229934(A056000(n)+15)`
-/

namespace A229931.P4463088620549232137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (A056000 n + 15).toNat

end

end A229931.P4463088620549232137

/-! ## A229931.P14268859286453215848

`A229934(eq[7, A066657(n)])`
-/

namespace A229931.P14268859286453215848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229931.P14268859286453215848

/-! ## A229931.P14720884981025222384

`A229934(eq[6, A131818(n+1)])`
-/

namespace A229931.P14720884981025222384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229931.P14720884981025222384

/-!
# A229932: Number of nX6 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A229932, there is no canonical definition to state claims against.
-/

/-! ## A229932.P4768548673430677335

`A229934(A374007(n+1))`
-/

namespace A229932.P4768548673430677335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (A374007 (n + 1)).toNat

end

end A229932.P4768548673430677335

/-! ## A229932.P4090110475788589684

`A229934(eq[7, A131818(n+1)])`
-/

namespace A229932.P4090110475788589684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229932.P4090110475788589684

/-! ## A229932.P4719992163319047039

`A229934(eq[3, A219347(n)])`
-/

namespace A229932.P4719992163319047039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229932.P4719992163319047039

/-! ## A229932.P6363071321216812092

`A229934(eq[8, A185782(n+1)])`
-/

namespace A229932.P6363071321216812092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229932.P6363071321216812092

/-! ## A229932.P5532138761335138302

`A229934(Δ[Δ[A006504(n+1)]])`
-/

namespace A229932.P5532138761335138302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (f1 (n + 1) - f1 n).toNat

end

end A229932.P5532138761335138302

/-!
# A229933: Number of nX7 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A229933, there is no canonical definition to state claims against.
-/

/-! ## A229933.P13352982606483277132

`A229934(A374008(n+1))`
-/

namespace A229933.P13352982606483277132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (A374008 (n + 1)).toNat

end

end A229933.P13352982606483277132

/-! ## A229933.P4046557402940465127

`A229934(eq[8, A131818(n+1)])`
-/

namespace A229933.P4046557402940465127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229933.P4046557402940465127

/-! ## A229933.P2918332848783542569

`A229934(eq[4, A219347(n)])`
-/

namespace A229933.P2918332848783542569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229933.P2918332848783542569

/-! ## A229933.P11327145329515542943

`A229934(eq[10, A185782(n+1)])`
-/

namespace A229933.P11327145329515542943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229933.P11327145329515542943

/-!
# A229935: Total number of parts in all compositions of n with at least two parts in increasing order.

The programs for A229935, there is no canonical definition to state claims against.
-/

/-! ## A229935.P17691492553766759388

`Δ[(n-1)*floor(2^(n-2))]-A006128(n)`
-/

namespace A229935.P17691492553766759388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006128 n

end

end A229935.P17691492553766759388

/-! ## A229935.P14366001592466086770

`∑[4*(a(n-1)-a(n-2))]-A211978(n)/2` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A229935.P14366001592466086770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A211978 n : ℚ) / 2

end

end A229935.P14366001592466086770

/-! ## A229935.P16711602840246688823

`∑[4*(a(n-1)-a(n-2))]-A278355(n)/4` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A229935.P16711602840246688823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A278355 n : ℚ) / 4

end

end A229935.P16711602840246688823

/-! ## A229935.P5006410730774757090

`∑[4*(a(n-1)-a(n-2))]-(A225596(n)-n)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A229935.P5006410730774757090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A225596 n - (n : ℤ))

end

end A229935.P5006410730774757090

/-! ## A229935.P16222873316647924631

`abs(A049610(n+1)-A006128(n))`
-/

namespace A229935.P16222873316647924631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049610 (n + 1) - A006128 n|

end

end A229935.P16222873316647924631

/-!
# A229936: Sum of all parts of all compositions of n with at least two parts in increasing order.

The programs for A229936, there is no canonical definition to state claims against.
-/

/-! ## A229936.P10433097011858714454

`n*A056823(n)`
-/

namespace A229936.P10433097011858714454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056823 n

end

end A229936.P10433097011858714454

/-! ## A229936.P4696967069836020280

`A001787(n)-A066186(n)`
-/

namespace A229936.P4696967069836020280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A066186 n

end

end A229936.P4696967069836020280

/-! ## A229936.P16525384013898462063

`n*(A011782(n)-A000041(n))`
-/

namespace A229936.P16525384013898462063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011782 n - A000041 n)

end

end A229936.P16525384013898462063

/-! ## A229936.P14624344116132448239

`n*(2^(n-1)-∑[A002865(n)])`
-/

namespace A229936.P14624344116132448239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A229936.P14624344116132448239

/-! ## A229936.P6149742445130884765

`n*(A237047(n)+A230441(n))`
-/

namespace A229936.P6149742445130884765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A237047 n + A230441 n)

end

end A229936.P6149742445130884765

/-! ## A229936.P599367231116600386

`n*A011782(n)-A066186(n)`
-/

namespace A229936.P599367231116600386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 n - A066186 n

end

end A229936.P599367231116600386

/-! ## A229936.P8717617054175945316

`n*(A094373(n)-A052810(n))`
-/

namespace A229936.P8717617054175945316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A094373 n - A052810 n)

end

end A229936.P8717617054175945316

/-! ## A229936.P5613490998391643577

`n*(A337698(n)-A047967(n))`
-/

namespace A229936.P5613490998391643577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A337698 n - A047967 n)

end

end A229936.P5613490998391643577

/-! ## A229936.P4336806547425413539

`n*(A288133(n+1)-A133041(n))`
-/

namespace A229936.P4336806547425413539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A288133 (n + 1) - A133041 n)

end

end A229936.P4336806547425413539

/-! ## A229936.P5601730195219986177

`n*(A011782(n)-A035363(2*n))`
-/

namespace A229936.P5601730195219986177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011782 n - A035363 (2 * n))

end

end A229936.P5601730195219986177

/-! ## A229936.P15732039297017850040

`n*(A011782(n)-A139582(n)/2)`
-/

namespace A229936.P15732039297017850040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A011782 n : ℚ) - (A139582 n : ℚ) / 2)

end

end A229936.P15732039297017850040

/-! ## A229936.P846629537250617675

`n*(A034008(n+1)-A035363(2*n))`
-/

namespace A229936.P846629537250617675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A034008 (n + 1) - A035363 (2 * n))

end

end A229936.P846629537250617675

/-! ## A229936.P3636840449943737353

`n*(A034008(n+1)-A119620(2*n))`
-/

namespace A229936.P3636840449943737353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A034008 (n + 1) - A119620 (2 * n))

end

end A229936.P3636840449943737353

/-! ## A229936.P6157713310164386633

`A001787(n)+A066185(n)-A066184(n)`
-/

namespace A229936.P6157713310164386633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A066185 n - A066184 n)

end

end A229936.P6157713310164386633

/-! ## A229936.P11851848157702945411

`A001787(n)+A188814(n)-A182094(n)`
-/

namespace A229936.P11851848157702945411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A188814 n - A182094 n)

end

end A229936.P11851848157702945411

/-! ## A229936.P1652387204857766769

`n*(A011782(n)-A143229(n)/A000070(n))`
-/

namespace A229936.P1652387204857766769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A011782 n : ℚ) - (A143229 n : ℚ) / (A000070 n : ℚ))

end

end A229936.P1652387204857766769

/-!
# A229937: Nonprime odious numbers.

The programs for A229937, the canonical program `A229937.P7651752296760210712` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229937 has offset 1).

The definition of A229937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229937.P11753135616820900361

`∪[A000302(n), A125495(n+1)]`
-/

namespace A229937.P11753135616820900361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P11753135616820900361

namespace A229937

/-- `∪[A000302(n), A125495(n+1)]` -/
def P11753135616820900361.Spec : Prop :=
  ∀ n, (P11753135616820900361.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P14245816835265437134

`∪[A125495(n+1), A008359(n)]`
-/

namespace A229937.P14245816835265437134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008359 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P14245816835265437134

namespace A229937

/-- `∪[A125495(n+1), A008359(n)]` -/
def P14245816835265437134.Spec : Prop :=
  ∀ n, (P14245816835265437134.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P9570519267280962620

`∪[A125495(n+1), A008361(n)]`
-/

namespace A229937.P9570519267280962620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008361 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P9570519267280962620

namespace A229937

/-- `∪[A125495(n+1), A008361(n)]` -/
def P9570519267280962620.Spec : Prop :=
  ∀ n, (P9570519267280962620.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P1098647932414651021

`∪[A125495(n+1), A008389(n)]`
-/

namespace A229937.P1098647932414651021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008389 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P1098647932414651021

namespace A229937

/-- `∪[A125495(n+1), A008389(n)]` -/
def P1098647932414651021.Spec : Prop :=
  ∀ n, (P1098647932414651021.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P15533996953917400165

`∪[A125495(n+1), A008395(n)]`
-/

namespace A229937.P15533996953917400165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P15533996953917400165

namespace A229937

/-- `∪[A125495(n+1), A008395(n)]` -/
def P15533996953917400165.Spec : Prop :=
  ∀ n, (P15533996953917400165.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P7651752296760210712

`∪[A125495(n+1), A014769(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A229937

/-- `∪[A125495(n+1), A014769(n)]` -/
def P7651752296760210712.Spec : Prop :=
  ∀ n, (P7651752296760210712.a n : ℤ) = A229937 (n + 1)

theorem P7651752296760210712.correct : P7651752296760210712.Spec := by
  intro n
  simp only [A229937, Nat.add_sub_cancel]

end A229937

/-! ## A229937.P2982973416400170246

`∪[A125495(n+1), A014795(n)]`
-/

namespace A229937.P2982973416400170246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014795 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P2982973416400170246

namespace A229937

/-- `∪[A125495(n+1), A014795(n)]` -/
def P2982973416400170246.Spec : Prop :=
  ∀ n, (P2982973416400170246.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P11101214055314460248

`∪[A014797(n), A125495(n+1)]`
-/

namespace A229937.P11101214055314460248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014797 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P11101214055314460248

namespace A229937

/-- `∪[A014797(n), A125495(n+1)]` -/
def P11101214055314460248.Spec : Prop :=
  ∀ n, (P11101214055314460248.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P1132521409765958208

`∪[A125495(n+1), A017284(n)]`
-/

namespace A229937.P1132521409765958208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P1132521409765958208

namespace A229937

/-- `∪[A125495(n+1), A017284(n)]` -/
def P1132521409765958208.Spec : Prop :=
  ∀ n, (P1132521409765958208.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P12270815226870228710

`∪[A125495(n+1), A092546(n)]`
-/

namespace A229937.P12270815226870228710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P12270815226870228710

namespace A229937

/-- `∪[A125495(n+1), A092546(n)]` -/
def P12270815226870228710.Spec : Prop :=
  ∀ n, (P12270815226870228710.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P10592233451600246112

`record[A268669(A018252(n+1))]`
-/

namespace A229937.P10592233451600246112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229937.P10592233451600246112

namespace A229937

/-- `record[A268669(A018252(n+1))]` -/
def P10592233451600246112.Spec : Prop :=
  ∀ n, P10592233451600246112.a n = A229937 (n + 1)

end A229937

/-! ## A229937.P14035988985592206587

`filter[A000069(n+1), A005171(#)]`
-/

namespace A229937.P14035988985592206587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A229937.P14035988985592206587

namespace A229937

/-- `filter[A000069(n+1), A005171(#)]` -/
def P14035988985592206587.Spec : Prop :=
  ∀ n, P14035988985592206587.a n = A229937 (n + 1)

end A229937

/-! ## A229937.P16230940814341219403

`∩[A000069(n+1), A018252(n+1)]`
-/

namespace A229937.P16230940814341219403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P16230940814341219403

namespace A229937

/-- `∩[A000069(n+1), A018252(n+1)]` -/
def P16230940814341219403.Spec : Prop :=
  ∀ n, (P16230940814341219403.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P6469037942302443708

`filter[A018252(n+1), A010060(#)]`
-/

namespace A229937.P6469037942302443708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A229937.P6469037942302443708

namespace A229937

/-- `filter[A018252(n+1), A010060(#)]` -/
def P6469037942302443708.Spec : Prop :=
  ∀ n, P6469037942302443708.a n = A229937 (n + 1)

end A229937

/-! ## A229937.P623618432348502848

`filter[A141468(n+1), A010060(#)]`
-/

namespace A229937.P623618432348502848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A229937.P623618432348502848

namespace A229937

/-- `filter[A141468(n+1), A010060(#)]` -/
def P623618432348502848.Spec : Prop :=
  ∀ n, P623618432348502848.a n = A229937 (n + 1)

end A229937

/-! ## A229937.P872836542205408351

`filter[A222307(2*n+1), A010060(#)]`
-/

namespace A229937.P872836542205408351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A229937.P872836542205408351

namespace A229937

/-- `filter[A222307(2*n+1), A010060(#)]` -/
def P872836542205408351.Spec : Prop :=
  ∀ n, P872836542205408351.a n = A229937 (n + 1)

end A229937

/-! ## A229937.P7343386427849282930

`eq[A010059(n), A055671(n)]`
-/

namespace A229937.P7343386427849282930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229937.P7343386427849282930

namespace A229937

/-- `eq[A010059(n), A055671(n)]` -/
def P7343386427849282930.Spec : Prop :=
  ∀ n, (P7343386427849282930.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P9311805479516638021

`eq[A010059(n), A055672(n)]`
-/

namespace A229937.P9311805479516638021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229937.P9311805479516638021

namespace A229937

/-- `eq[A010059(n), A055672(n)]` -/
def P9311805479516638021.Spec : Prop :=
  ∀ n, (P9311805479516638021.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P4519813133500060536

`eq[A055671(n), A102389(n)]`
-/

namespace A229937.P4519813133500060536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229937.P4519813133500060536

namespace A229937

/-- `eq[A055671(n), A102389(n)]` -/
def P4519813133500060536.Spec : Prop :=
  ∀ n, (P4519813133500060536.a n : ℤ) = A229937 (n + 1)

end A229937

/-! ## A229937.P10798972473439846686

`eq[A055672(n), A102389(n)]`
-/

namespace A229937.P10798972473439846686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229937.P10798972473439846686

namespace A229937

/-- `eq[A055672(n), A102389(n)]` -/
def P10798972473439846686.Spec : Prop :=
  ∀ n, (P10798972473439846686.a n : ℤ) = A229937 (n + 1)

end A229937

/-!
# A229939: Decimal expansion of 9*Pi/10.

The programs for A229939, there is no canonical definition to state claims against.
-/

/-! ## A229939.P18270039973925997312

`A239297(A028310(n)+A000007(n))%10`
-/

namespace A229939.P18270039973925997312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239297 (A028310 n + A000007 n).toNat) 10

end

end A229939.P18270039973925997312

/-!
# A229940: Triangle T(n,k) read by rows: column k lists a periodic sequence with period 2*k, repeated: S, where S is a sequence formed by 2*k-1 1's together with a zero, starting in row A056220(k), n >=1, k >= 1.

The programs for A229940, there is no canonical definition to state claims against.
-/

/-! ## A229940.P17568028265806928014

`A005614(A023523(n+1)-A069911(n))`
-/

namespace A229940.P17568028265806928014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A023523 (n + 1) - A069911 n).toNat

end

end A229940.P17568028265806928014

/-! ## A229940.P15790485403526117969

`A000035(C(A119885(n+5), A117358(n+4)))`
-/

namespace A229940.P15790485403526117969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.choose (A119885 (n + 5)).toNat (A117358 (n + 4)).toNat)

end

end A229940.P15790485403526117969

/-! ## A229940.P157624268617578136

`A014707(A315259(n)+A029744(n+1))`
-/

namespace A229940.P157624268617578136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A315259 n + A029744 (n + 1)).toNat

end

end A229940.P157624268617578136

/-! ## A229940.P5802251883916218065

`A059841(A311059(2*n+1)+A210608(n+2))`
-/

namespace A229940.P5802251883916218065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A311059 (2 * n + 1) + A210608 (n + 2)).toNat

end

end A229940.P5802251883916218065

/-! ## A229940.P11089609314300419658

`A309218(A067625(n+1))`
-/

namespace A229940.P11089609314300419658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309218 (A067625 (n + 1)).toNat

end

end A229940.P11089609314300419658

/-!
# A229941: Sequence of triples: the 10 solutions of 1/p + 1/q + 1/r = 1/2 with 0 < p <= q <= r, lexicographically sorted.

The programs for A229941, there is no canonical definition to state claims against.
-/

/-! ## A229941.P17825752175482653282

`A260819(floor(n/3)+n+2)`
-/

namespace A229941.P17825752175482653282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260819 (⌊(n : ℚ) / 3⌋ + (n + 2 : ℤ)).toNat

end

end A229941.P17825752175482653282

/-!
# A229942: Number of exposed toothpick endpoints in the n-th row of the toothpick structure of A229940 (also A229950).

The programs for A229942, there is no canonical definition to state claims against.
-/

/-! ## A229942.P8874748712340189162

`A211272(n+1)+A211263(n+2)`
-/

namespace A229942.P8874748712340189162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (n + 1) + A211263 (n + 2)

end

end A229942.P8874748712340189162

/-! ## A229942.P7495502442017741715

`A000005(floor(n/2)+1)-Δ[A211272(n+1)]`
-/

namespace A229942.P7495502442017741715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (⌊(n : ℚ) / 2⌋ + 1).toNat - (f1 (n + 1) - f1 n)

end

end A229942.P7495502442017741715

/-! ## A229942.P300303450777589294

`A211272(n+1)+A056924(A008619(n))`
-/

namespace A229942.P300303450777589294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (n + 1) + A056924 (A008619 n).toNat

end

end A229942.P300303450777589294

/-! ## A229942.P2525751020791087998

`A211272(n+1)+A056924(A008621(2*n))`
-/

namespace A229942.P2525751020791087998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (n + 1) + A056924 (A008621 (2 * n)).toNat

end

end A229942.P2525751020791087998

/-! ## A229942.P3723317672176787681

`A220400(2*(n%2+n))+A056924(A008621(2*n))`
-/

namespace A229942.P3723317672176787681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (2 * (n % 2 + n)) + A056924 (A008621 (2 * n)).toNat

end

end A229942.P3723317672176787681

/-! ## A229942.P5133199757727832638

`abs(Δ[Δ[A229951(n)]])`
-/

namespace A229942.P5133199757727832638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A229942.P5133199757727832638

/-! ## A229942.P134737343073156282

`-(Δ[Δ[A229951(n)]]*A033999(n))`
-/

namespace A229942.P134737343073156282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f1 (n + 1) - f1 n) * A033999 n)

end

end A229942.P134737343073156282

/-! ## A229942.P12643033682590795715

`Δ[Δ[A229951(n)]]*A033999(n+1)`
-/

namespace A229942.P12643033682590795715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (n + 1)

end

end A229942.P12643033682590795715

/-!
# A229944: Triangle read by rows in which T(2n-2,k) = n/k if k divides n and n/k > sqrt(n), otherwise 0, for n >= 2. Also T(2n-1,k) = k if k divides n, otherwise 0, for n >= 1. Row lengths are the same row lengths of A229940.

The programs for A229944, there is no canonical definition to state claims against.
-/

/-! ## A229944.P8531864012921071788

`A122203(gcd(A152667(3*n+4), A253550(n+1)))`
-/

namespace A229944.P8531864012921071788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (Int.gcd (A152667 (3 * n + 4)) (A253550 (n + 1)))

end

end A229944.P8531864012921071788

/-! ## A229944.P15929709535386234650

`and(A003052(n+1), A071518(A296526(3*n+2)))`
-/

namespace A229944.P15929709535386234650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003052 (n + 1)) (A071518 (A296526 (3 * n + 2)).toNat)

end

end A229944.P15929709535386234650

/-! ## A229944.P6247134274441638949

`∑[A302231(3*n+5)]%A006530(A350398(2*(n+1)))`
-/

namespace A229944.P6247134274441638949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A006530 (A350398 (2 * (n + 1))).toNat)

end

end A229944.P6247134274441638949

/-!
# A229945: Triangle read by rows in which row n lists the union of the primes <= n and the divisors of n.

The programs for A229945, there is no canonical definition to state claims against.
-/

/-! ## A229945.P3444826984252703348

`A002260(lt[A244142(n), A247835(2*(n+1))])`
-/

namespace A229945.P3444826984252703348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247835 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229945.P3444826984252703348

/-! ## A229945.P11203322381937997644

`A002260(∑[A003557(A143670(n+1))])`
-/

namespace A229945.P11203322381937997644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A143670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229945.P11203322381937997644

/-! ## A229945.P1520460729317234006

`A002260(lt[A099731(n+1), A103016(n+1)])`
-/

namespace A229945.P1520460729317234006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229945.P1520460729317234006

/-! ## A229945.P7125027667744020615

`A002260(record[A008619(A249870(n))])`
-/

namespace A229945.P7125027667744020615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A249870 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229945.P7125027667744020615

/-! ## A229945.P16129935629260137629

`A002260(lt[A397884(n+1), A125741(3*n+1)]+1)`
-/

namespace A229945.P16129935629260137629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125741 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A229945.P16129935629260137629

/-!
# A229946: Height of the peaks and the valleys in the Dyck path whose j-th ascending line segment has A141285(j) steps and whose j-th descending line segment has A194446(j) steps.

The programs for A229946, there is no canonical definition to state claims against.
-/

/-! ## A229946.P109222316015192833

`a(n-1)+(-1)^(n-1)*A220517(n)` with `a(0)=0`
-/

namespace A229946.P109222316015192833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A220517 n : ℚ)

end

end A229946.P109222316015192833

/-! ## A229946.P15492509919009892729

`A228110(A225600(n))`
-/

namespace A229946.P15492509919009892729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228110 (A225600 n).toNat

end

end A229946.P15492509919009892729

/-! ## A229946.P9278670822335823719

`A228110(∑[A220517(abs(1-n)+1)]-1)`
-/

namespace A229946.P9278670822335823719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228110 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A229946.P9278670822335823719

/-! ## A229946.P8443452131869185080

`∑{e}[A137735(A286169(n)), #]`
-/

namespace A229946.P8443452131869185080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A286169 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A229946.P8443452131869185080

/-! ## A229946.P1349725760584589334

`A001222(A156885(n)*A280412(n))`
-/

namespace A229946.P1349725760584589334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A156885 n * A280412 n).toNat

end

end A229946.P1349725760584589334

/-!
# A229947: Primes congruent to {1, 11, 13, 17, 19, 29} mod 30.

The programs for A229947, the canonical program `A229947.P4592846590888887576` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229947 has offset 1).

The definition of A229947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229947.P4592846590888887576

`p?[A230462(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A229947

/-- `p?[A230462(n+1)]` -/
def P4592846590888887576.Spec : Prop :=
  ∀ n, P4592846590888887576.a n = A229947 (n + 1)

theorem P4592846590888887576.correct : P4592846590888887576.Spec := by
  intro n
  simp only [A229947, Nat.add_sub_cancel]

end A229947

/-! ## A229947.P587736234362096719

`record[A006530(A230462(n+2))]`
-/

namespace A229947.P587736234362096719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A230462 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229947.P587736234362096719

namespace A229947

/-- `record[A006530(A230462(n+2))]` -/
def P587736234362096719.Spec : Prop :=
  ∀ n, P587736234362096719.a n = A229947 (n + 1)

end A229947

/-! ## A229947.P11327513734880408138

`filter[A230462(n+1), A010051(#)]`
-/

namespace A229947.P11327513734880408138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A229947.P11327513734880408138

namespace A229947

/-- `filter[A230462(n+1), A010051(#)]` -/
def P11327513734880408138.Spec : Prop :=
  ∀ n, P11327513734880408138.a n = A229947 (n + 1)

end A229947

/-! ## A229947.P9555613222719083436

`filter[A230462(n+1), A323153(#)]`
-/

namespace A229947.P9555613222719083436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A229947.P9555613222719083436

namespace A229947

/-- `filter[A230462(n+1), A323153(#)]` -/
def P9555613222719083436.Spec : Prop :=
  ∀ n, P9555613222719083436.a n = A229947 (n + 1)

end A229947

/-! ## A229947.P12711616447537941070

`filter[A230462(n+1), A327861(#)]`
-/

namespace A229947.P12711616447537941070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A229947.P12711616447537941070

namespace A229947

/-- `filter[A230462(n+1), A327861(#)]` -/
def P12711616447537941070.Spec : Prop :=
  ∀ n, P12711616447537941070.a n = A229947 (n + 1)

end A229947

/-! ## A229947.P10202753282019672120

`filter[A230462(n+1), A353670(#)]`
-/

namespace A229947.P10202753282019672120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A229947.P10202753282019672120

namespace A229947

/-- `filter[A230462(n+1), A353670(#)]` -/
def P10202753282019672120.Spec : Prop :=
  ∀ n, P10202753282019672120.a n = A229947 (n + 1)

end A229947

/-! ## A229947.P14954044473102368526

`∩[A000040(n+1), A230462(n+1)]`
-/

namespace A229947.P14954044473102368526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P14954044473102368526

namespace A229947

/-- `∩[A000040(n+1), A230462(n+1)]` -/
def P14954044473102368526.Spec : Prop :=
  ∀ n, (P14954044473102368526.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P6863585091668834899

`∩[A001751(n+1), A230462(n+1)]`
-/

namespace A229947.P6863585091668834899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P6863585091668834899

namespace A229947

/-- `∩[A001751(n+1), A230462(n+1)]` -/
def P6863585091668834899.Spec : Prop :=
  ∀ n, (P6863585091668834899.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P3056678894366531266

`∩[A004139(n+1), A230462(n+1)]`
-/

namespace A229947.P3056678894366531266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P3056678894366531266

namespace A229947

/-- `∩[A004139(n+1), A230462(n+1)]` -/
def P3056678894366531266.Spec : Prop :=
  ∀ n, (P3056678894366531266.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P406346776856222779

`∩[A045319(n+1), A230462(n+1)]`
-/

namespace A229947.P406346776856222779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P406346776856222779

namespace A229947

/-- `∩[A045319(n+1), A230462(n+1)]` -/
def P406346776856222779.Spec : Prop :=
  ∀ n, (P406346776856222779.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P16648499003828938088

`∩[A045344(n+1), A230462(n+1)]`
-/

namespace A229947.P16648499003828938088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P16648499003828938088

namespace A229947

/-- `∩[A045344(n+1), A230462(n+1)]` -/
def P16648499003828938088.Spec : Prop :=
  ∀ n, (P16648499003828938088.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P15256800323188211752

`∩[A051948(n+1), A230462(n+1)]`
-/

namespace A229947.P15256800323188211752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P15256800323188211752

namespace A229947

/-- `∩[A051948(n+1), A230462(n+1)]` -/
def P15256800323188211752.Spec : Prop :=
  ∀ n, (P15256800323188211752.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P12214445820062793623

`∩[A053577(n+1), A230462(n+1)]`
-/

namespace A229947.P12214445820062793623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P12214445820062793623

namespace A229947

/-- `∩[A053577(n+1), A230462(n+1)]` -/
def P12214445820062793623.Spec : Prop :=
  ∀ n, (P12214445820062793623.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P15046128763632651865

`∩[A053813(n+1), A230462(n+1)]`
-/

namespace A229947.P15046128763632651865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P15046128763632651865

namespace A229947

/-- `∩[A053813(n+1), A230462(n+1)]` -/
def P15046128763632651865.Spec : Prop :=
  ∀ n, (P15046128763632651865.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P10452885897700760378

`∩[A058363(n+1), A230462(n+1)]`
-/

namespace A229947.P10452885897700760378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P10452885897700760378

namespace A229947

/-- `∩[A058363(n+1), A230462(n+1)]` -/
def P10452885897700760378.Spec : Prop :=
  ∀ n, (P10452885897700760378.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P15595110415565661439

`∩[A065091(n+1), A230462(n+1)]`
-/

namespace A229947.P15595110415565661439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P15595110415565661439

namespace A229947

/-- `∩[A065091(n+1), A230462(n+1)]` -/
def P15595110415565661439.Spec : Prop :=
  ∀ n, (P15595110415565661439.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P15256118447082663436

`∩[A082378(n+1), A230462(n+1)]`
-/

namespace A229947.P15256118447082663436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P15256118447082663436

namespace A229947

/-- `∩[A082378(n+1), A230462(n+1)]` -/
def P15256118447082663436.Spec : Prop :=
  ∀ n, (P15256118447082663436.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P5397525184060028145

`∩[A085118(n+1), A230462(n+1)]`
-/

namespace A229947.P5397525184060028145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P5397525184060028145

namespace A229947

/-- `∩[A085118(n+1), A230462(n+1)]` -/
def P5397525184060028145.Spec : Prop :=
  ∀ n, (P5397525184060028145.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P3360454841742592641

`∩[A140826(n+1), A230462(n+1)]`
-/

namespace A229947.P3360454841742592641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P3360454841742592641

namespace A229947

/-- `∩[A140826(n+1), A230462(n+1)]` -/
def P3360454841742592641.Spec : Prop :=
  ∀ n, (P3360454841742592641.a n : ℤ) = A229947 (n + 1)

end A229947

/-! ## A229947.P17803239909922403379

`∩[A161346(n+1), A230462(n+1)]`
-/

namespace A229947.P17803239909922403379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229947.P17803239909922403379

namespace A229947

/-- `∩[A161346(n+1), A230462(n+1)]` -/
def P17803239909922403379.Spec : Prop :=
  ∀ n, (P17803239909922403379.a n : ℤ) = A229947 (n + 1)

end A229947

/-!
# A229949: Number of divisors of the n-th positive quarter-square.

The programs for A229949, the canonical program `A229949.P12190683132002036541` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229949 has offset 1).

The definition of A229949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229949.P12190683132002036541

`A000005(A002620(n+2))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A229949

/-- `A000005(A002620(n+2))` -/
def P12190683132002036541.Spec : Prop :=
  ∀ n, P12190683132002036541.a n = A229949 (n + 1)

theorem P12190683132002036541.correct : P12190683132002036541.Spec := by
  intro n
  simp only [A229949, Nat.add_sub_cancel]

end A229949

/-! ## A229949.P10415647012091597162

`∏{e}[∑[∑[char[2*n]]], #+1]`
-/

namespace A229949.P10415647012091597162
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A229949.P10415647012091597162

namespace A229949

/-- `∏{e}[∑[∑[char[2*n]]], #+1]` -/
def P10415647012091597162.Spec : Prop :=
  ∀ n, (P10415647012091597162.a n : ℤ) = A229949 (n + 1)

end A229949

/-! ## A229949.P6148393511043442815

`∑{d}[∑[∑[char[2*n]]], (#%2)!]`
-/

namespace A229949.P6148393511043442815
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2)

end

end A229949.P6148393511043442815

namespace A229949

/-- `∑{d}[∑[∑[char[2*n]]], (#%2)!]` -/
def P6148393511043442815.Spec : Prop :=
  ∀ n, (P6148393511043442815.a n : ℤ) = A229949 (n + 1)

end A229949

/-! ## A229949.P6543419100978574224

`A000005(A278259(n+2))`
-/

namespace A229949.P6543419100978574224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278259 (n + 2)).toNat

end

end A229949.P6543419100978574224

namespace A229949

/-- `A000005(A278259(n+2))` -/
def P6543419100978574224.Spec : Prop :=
  ∀ n, P6543419100978574224.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P6019182483218514193

`A000005(∑[∑[log2(gcd(2, n))]])`
-/

namespace A229949.P6019182483218514193
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A229949.P6019182483218514193

namespace A229949

/-- `A000005(∑[∑[log2(gcd(2, n))]])` -/
def P6019182483218514193.Spec : Prop :=
  ∀ n, P6019182483218514193.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P3059841889416631443

`A000005(∑[∑[char[2*n]]])`
-/

namespace A229949.P3059841889416631443
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229949.P3059841889416631443

namespace A229949

/-- `A000005(∑[∑[char[2*n]]])` -/
def P3059841889416631443.Spec : Prop :=
  ∀ n, P3059841889416631443.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P14025310593999057503

`lcm((-1)^n, A000005(floor((n/2+1)²)))`
-/

namespace A229949.P14025310593999057503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A000005 ⌊((n : ℚ) / 2 + 1) ^ 2⌋.toNat)

end

end A229949.P14025310593999057503

namespace A229949

/-- `lcm((-1)^n, A000005(floor((n/2+1)²)))` -/
def P14025310593999057503.Spec : Prop :=
  ∀ n, (P14025310593999057503.a n : ℤ) = A229949 (n + 1)

end A229949

/-! ## A229949.P9409965592017276846

`A000027(A000005(∑[floor(n/2)+1]))`
-/

namespace A229949.P9409965592017276846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A229949.P9409965592017276846

namespace A229949

/-- `A000027(A000005(∑[floor(n/2)+1]))` -/
def P9409965592017276846.Spec : Prop :=
  ∀ n, P9409965592017276846.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P9256754535229578977

`A001222(((-1)^n)²)+A000005(floor((n/2+1)²))`
-/

namespace A229949.P9256754535229578977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (((-1) ^ n) ^ 2).toNat + A000005 ⌊((n : ℚ) / 2 + 1) ^ 2⌋.toNat

end

end A229949.P9256754535229578977

namespace A229949

/-- `A001222(((-1)^n)²)+A000005(floor((n/2+1)²))` -/
def P9256754535229578977.Spec : Prop :=
  ∀ n, P9256754535229578977.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P3885911903875072272

`A032741(∑[A008619(n)])+1`
-/

namespace A229949.P3885911903875072272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A229949.P3885911903875072272

namespace A229949

/-- `A032741(∑[A008619(n)])+1` -/
def P3885911903875072272.Spec : Prop :=
  ∀ n, P3885911903875072272.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P492391304261921783

`A395330(A000982(n+1))`
-/

namespace A229949.P492391304261921783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395330 (A000982 (n + 1)).toNat

end

end A229949.P492391304261921783

namespace A229949

/-- `A395330(A000982(n+1))` -/
def P492391304261921783.Spec : Prop :=
  ∀ n, P492391304261921783.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P18273070349382890833

`A395330(A030978(n+1))`
-/

namespace A229949.P18273070349382890833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395330 (A030978 (n + 1)).toNat

end

end A229949.P18273070349382890833

namespace A229949

/-- `A395330(A030978(n+1))` -/
def P18273070349382890833.Spec : Prop :=
  ∀ n, P18273070349382890833.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P7293024799546543576

`A395330(A074133(n+1))`
-/

namespace A229949.P7293024799546543576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395330 (A074133 (n + 1)).toNat

end

end A229949.P7293024799546543576

namespace A229949

/-- `A395330(A074133(n+1))` -/
def P7293024799546543576.Spec : Prop :=
  ∀ n, P7293024799546543576.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P15640726990046012503

`A395330(A080827(n+1))`
-/

namespace A229949.P15640726990046012503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395330 (A080827 (n + 1)).toNat

end

end A229949.P15640726990046012503

namespace A229949

/-- `A395330(A080827(n+1))` -/
def P15640726990046012503.Spec : Prop :=
  ∀ n, P15640726990046012503.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P4808019611157508763

`A395330(A104563(n+1))`
-/

namespace A229949.P4808019611157508763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395330 (A104563 (n + 1)).toNat

end

end A229949.P4808019611157508763

namespace A229949

/-- `A395330(A104563(n+1))` -/
def P4808019611157508763.Spec : Prop :=
  ∀ n, P4808019611157508763.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P10372858294661115460

`A395330(A099392(n+2))`
-/

namespace A229949.P10372858294661115460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395330 (A099392 (n + 2)).toNat

end

end A229949.P10372858294661115460

namespace A229949

/-- `A395330(A099392(n+2))` -/
def P10372858294661115460.Spec : Prop :=
  ∀ n, P10372858294661115460.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P3403863923476714638

`A069157(A080476(n+2))`
-/

namespace A229949.P3403863923476714638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A080476 (n + 2)).toNat

end

end A229949.P3403863923476714638

namespace A229949

/-- `A069157(A080476(n+2))` -/
def P3403863923476714638.Spec : Prop :=
  ∀ n, P3403863923476714638.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P6324676592559996428

`A277692(A080827(n+2))`
-/

namespace A229949.P6324676592559996428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A080827 (n + 2)).toNat

end

end A229949.P6324676592559996428

namespace A229949

/-- `A277692(A080827(n+2))` -/
def P6324676592559996428.Spec : Prop :=
  ∀ n, P6324676592559996428.a n = A229949 (n + 1)

end A229949

/-! ## A229949.P9496115360565642914

`A183063(A000982(n+1)+n+1)`
-/

namespace A229949.P9496115360565642914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000982 (n + 1) + (n + 1 : ℤ)).toNat

end

end A229949.P9496115360565642914

namespace A229949

/-- `A183063(A000982(n+1)+n+1)` -/
def P9496115360565642914.Spec : Prop :=
  ∀ n, P9496115360565642914.a n = A229949 (n + 1)

end A229949

/-!
# A229950: Total number of toothpicks after n-th stage in a toothpick structure in which the toothpicks represent the 1's of triangle A229940.

The programs for A229950, there is no canonical definition to state claims against.
-/

/-! ## A229950.P5871424614501599810

`∑[A229951(n)]`
-/

namespace A229950.P5871424614501599810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229950.P5871424614501599810

/-! ## A229950.P12832503056631520327

`∑[A000196(floor(n/2))-A220400(2*n)]`
-/

namespace A229950.P12832503056631520327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊(n : ℚ) / 2⌋.toNat - A220400 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229950.P12832503056631520327

/-! ## A229950.P817275349068641076

`∑[A004526(A000196(2*n))-A220400(2*n)]`
-/

namespace A229950.P817275349068641076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000196 (2 * n)).toNat - A220400 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229950.P817275349068641076

/-! ## A229950.P5186352811327615704

`A111660(A174868(n)+1-n)`
-/

namespace A229950.P5186352811327615704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A174868 n + (1 - (n : ℤ))).toNat

end

end A229950.P5186352811327615704

/-! ## A229950.P12521353727725636921

`A111660(1-(n-A174868(n)))`
-/

namespace A229950.P12521353727725636921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (1 - ((n : ℤ) - A174868 n)).toNat

end

end A229950.P12521353727725636921

/-!
# A229951: Number of toothpicks added at n-th stage to the toothpick structure of A229950.

The programs for A229951, there is no canonical definition to state claims against.
-/

/-! ## A229951.P3124276899944493180

`∑[char[2*(n+1)²]]-A220400(2*n)`
-/

namespace A229951.P3124276899944493180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A220400 (2 * n)

end

end A229951.P3124276899944493180

/-! ## A229951.P7823197887324336847

`abs(A000196(A004526(n))-A220400(2*n))`
-/

namespace A229951.P7823197887324336847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000196 (A004526 n).toNat - A220400 (2 * n)|

end

end A229951.P7823197887324336847

/-! ## A229951.P4175713056998389572

`A247760(A000196(floor(n/2))-A220400(2*n)+1)`
-/

namespace A229951.P4175713056998389572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247760 (A000196 ⌊(n : ℚ) / 2⌋.toNat - A220400 (2 * n) + 1).toNat

end

end A229951.P4175713056998389572

/-! ## A229951.P12127412751238284266

`(A004526(A000196(2*n+1))-A220400(2*n))%(n+1)`
-/

namespace A229951.P12127412751238284266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A000196 (2 * n + 1)).toNat - A220400 (2 * n)) (n + 1 : ℤ)

end

end A229951.P12127412751238284266

/-! ## A229951.P266309523723657451

`A004526(A000196(2*n))-A007953(A220400(2*n))`
-/

namespace A229951.P266309523723657451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000196 (2 * n)).toNat - A007953 (A220400 (2 * n)).toNat

end

end A229951.P266309523723657451

/-! ## A229951.P13572175650472626533

`Δ[A229950(abs(1-n))]`
-/

namespace A229951.P13572175650472626533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229951.P13572175650472626533

/-! ## A229951.P4383204203624892731

`abs(Δ[A229950(A289207(n+1))])`
-/

namespace A229951.P4383204203624892731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A229951.P4383204203624892731

/-! ## A229951.P15808169084068185274

`A229950(n)-A229950(abs(1-n))`
-/

namespace A229951.P15808169084068185274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 n - A229950 |1 - (n : ℤ)|.toNat

end

end A229951.P15808169084068185274

/-! ## A229951.P1148618010940509363

`Δ[A229950(A000007(n)-1+n)]%6`
-/

namespace A229951.P1148618010940509363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A229951.P1148618010940509363

/-! ## A229951.P13659212460710728303

`Δ[A229950(n-(1-A000007(n)))]%6`
-/

namespace A229951.P13659212460710728303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 ((n : ℤ) - (1 - A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A229951.P13659212460710728303

/-!
# A229953: Numbers k for which k = sigma(sigma(x)) = sigma(sigma(y)) for some x and y such that k = x + y.

The programs for A229953, there is no canonical definition to state claims against.
-/

/-! ## A229953.P387373992782599747

`p?[eq[n, A160552(n)]]+1`
-/

namespace A229953.P387373992782599747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1

end

end A229953.P387373992782599747

/-! ## A229953.P11110895698501611833

`eq[A062584(n), A160552(n)]+1`
-/

namespace A229953.P11110895698501611833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A229953.P11110895698501611833

/-!
# A229960: Primes of the form n^3 - T(n) - 1 where T(n) is the n-th triangular number.

The programs for A229960, there is no canonical definition to state claims against.
-/

/-! ## A229960.P3756489406828878921

`p?[(2*n+1)*C(n, 2)-1]`
-/

namespace A229960.P3756489406828878921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.choose n 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229960.P3756489406828878921

/-! ## A229960.P5163738565334129230

`p?[n^3-(C(n+1, 2)+1)]`
-/

namespace A229960.P5163738565334129230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose (n + 1) 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229960.P5163738565334129230

/-! ## A229960.P12473491450268191269

`p?[(n-1)^3-C(n, 2)-1]`
-/

namespace A229960.P12473491450268191269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3 - (Nat.choose n 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229960.P12473491450268191269

/-! ## A229960.P4794237234529394724

`p?[C(n, 2)*or(1, 2*n)-1]`
-/

namespace A229960.P4794237234529394724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 * Nat.lor 1 (2 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229960.P4794237234529394724

/-! ## A229960.P18345560294457865451

`p?[∑[n-1]+(n-1)*n²]`
-/

namespace A229960.P18345560294457865451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((n : ℤ) - 1) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229960.P18345560294457865451

/-!
# A229961: T(n,k) is the number of partitions in each run k of strictly increasing numbers of 2 X 2 squares in the list of partitions of n^2 into squares, where partition sorting order is ascending with larger squares taking higher precedence; irregular triangle T(n,k), 1 <= n, 1 <= k <= A227940(n), read by rows.

The programs for A229961, there is no canonical definition to state claims against.
-/

/-! ## A229961.P13388431552580297042

`and(A070321(n+1), A153183(A001333(n)))`
-/

namespace A229961.P13388431552580297042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070321 (n + 1)) (A153183 (A001333 n).toNat)

end

end A229961.P13388431552580297042

/-!
# A229963: a(n) = 11*binomial(10*n + 11, n)/(10*n + 11).

The programs for A229963, the canonical program `A229963.P15987772240577070665` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229963 has offset 0).

The definition of A229963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229963.P15987772240577070665

`11*C(10*n+11, n)/(10*n+11)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229963

/-- `11*C(10*n+11, n)/(10*n+11)` -/
def P15987772240577070665.Spec : Prop :=
  ∀ n, P15987772240577070665.a n = (A229963 n : ℚ)

end A229963

/-! ## A229963.P7317835597688454557

`A234525(n+1)-A059968(n+1)`
-/

namespace A229963.P7317835597688454557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234525 (n + 1) - A059968 (n + 1)

end

end A229963.P7317835597688454557

namespace A229963

/-- `A234525(n+1)-A059968(n+1)` -/
def P7317835597688454557.Spec : Prop :=
  ∀ n, P7317835597688454557.a n = A229963 n

end A229963

/-!
# A229964: Number of pairs of integers q1, q2 with 1 < q1 < q2 < n such that if we randomly pick an integer in {1, ..., n}, the event of being divisible by q1 is independent of being divisible by q2.

The programs for A229964, there is no canonical definition to state claims against.
-/

/-! ## A229964.P11261858817845837687

`A001222(A178470(2*n+3))%A323300(n+1)`
-/

namespace A229964.P11261858817845837687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A178470 (2 * n + 3)).toNat) (A323300 (n + 1))

end

end A229964.P11261858817845837687

/-! ## A229964.P2022783377661125138

`A325817(A102456(n)+xor(1, n))`
-/

namespace A229964.P2022783377661125138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (A102456 n + (Nat.xor 1 n : ℤ)).toNat

end

end A229964.P2022783377661125138

/-! ## A229964.P5979148411619208726

`A001972(A001972(n²))%A001299(n)`
-/

namespace A229964.P5979148411619208726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001972 (A001972 (n ^ 2)).toNat) (A001299 n)

end

end A229964.P5979148411619208726

/-! ## A229964.P9713097184144336071

`A131810(C(A051953(n+1), A098505(n)))`
-/

namespace A229964.P9713097184144336071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131810 (Nat.choose (A051953 (n + 1)).toNat (A098505 n).toNat)

end

end A229964.P9713097184144336071

/-! ## A229964.P4370752999734086995

`A198066(A209140(n+1)-A198066(n+1))`
-/

namespace A229964.P4370752999734086995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198066 (A209140 (n + 1) - A198066 (n + 1)).toNat

end

end A229964.P4370752999734086995

/-!
# A229965: Numbers n such that A229964(n) = 1.

The programs for A229965, there is no canonical definition to state claims against.
-/

/-! ## A229965.P2389982724156877511

`eq[1, A229964(A028310(n))]`
-/

namespace A229965.P2389982724156877511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229965.P2389982724156877511

/-!
# A229966: Numbers n such that A229964(n) = 3.

The programs for A229966, there is no canonical definition to state claims against.
-/

/-! ## A229966.P15334035506149105634

`eq[3, A229964(n+1)]+1`
-/

namespace A229966.P15334035506149105634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229966.P15334035506149105634

/-! ## A229966.P5972699499505510018

`eq[3, A229964(A028310(n))]`
-/

namespace A229966.P5972699499505510018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229966.P5972699499505510018

/-! ## A229966.P17447813111147248409

`A065475(eq[3, A229964(n+1)])`
-/

namespace A229966.P17447813111147248409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229966.P17447813111147248409

/-! ## A229966.P14230791679018702695

`A114637(eq[3, A229964(n+1)])`
-/

namespace A229966.P14230791679018702695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229966.P14230791679018702695

/-! ## A229966.P15202901377303314934

`eq[3, A229964(A233583(n+1))]`
-/

namespace A229966.P15202901377303314934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229966.P15202901377303314934

/-!
# A229967: Numbers n such that A229964(n) = 4.

The programs for A229967, there is no canonical definition to state claims against.
-/

/-! ## A229967.P16342389313348948237

`eq[4, A229964(n+1)]+1`
-/

namespace A229967.P16342389313348948237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229967.P16342389313348948237

/-! ## A229967.P413007913828864555

`eq[4, A229964(A028310(n))]`
-/

namespace A229967.P413007913828864555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229967.P413007913828864555

/-! ## A229967.P4081007699595704611

`A065475(eq[4, A229964(n+1)])`
-/

namespace A229967.P4081007699595704611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229967.P4081007699595704611

/-! ## A229967.P1443677503284915329

`A114637(eq[4, A229964(n+1)])`
-/

namespace A229967.P1443677503284915329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229967.P1443677503284915329

/-! ## A229967.P1093936569066814656

`eq[4, A229964(A233583(n+1))]`
-/

namespace A229967.P1093936569066814656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229967.P1093936569066814656

/-!
# A229968: Numbers not divisible by 3 or 11.

The programs for A229968, the canonical program `A229968.P11121608724241166143` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229968 has offset 1).

The definition of A229968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229968.P11121608724241166143

`comp[∪[3*n, 11*n]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229968

/-- `comp[∪[3*n, 11*n]]` -/
def P11121608724241166143.Spec : Prop :=
  ∀ n, (P11121608724241166143.a n : ℤ) = A229968 (n + 1)

theorem P11121608724241166143.correct : P11121608724241166143.Spec := by
  intro n
  simp only [A229968, Nat.add_sub_cancel]

end A229968

/-! ## A229968.P1790250312280383900

`record[lcm(99, n+1)/99]`
-/

namespace A229968.P1790250312280383900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 99 (n + 1) : ℚ) / 99

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229968.P1790250312280383900

namespace A229968

/-- `record[lcm(99, n+1)/99]` -/
def P1790250312280383900.Spec : Prop :=
  ∀ n, P1790250312280383900.a n = (A229968 (n + 1) : ℚ)

end A229968

/-! ## A229968.P3873119303517003893

`eq[1, root(gcd(33, n), n+1)]`
-/

namespace A229968.P3873119303517003893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 33 n : ℝ) ^ (1 / (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A229968.P3873119303517003893

namespace A229968

/-- `eq[1, root(gcd(33, n), n+1)]` -/
def P3873119303517003893.Spec : Prop :=
  ∀ n, (P3873119303517003893.a n : ℤ) = A229968 (n + 1)

end A229968

/-! ## A229968.P17522897189245407001

`record[(n+1)/gcd(n+1, 32-n)]`
-/

namespace A229968.P17522897189245407001
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (32 - (n : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229968.P17522897189245407001

namespace A229968

/-- `record[(n+1)/gcd(n+1, 32-n)]` -/
def P17522897189245407001.Spec : Prop :=
  ∀ n, P17522897189245407001.a n = (A229968 (n + 1) : ℚ)

end A229968

/-! ## A229968.P4372398386021918352

`∩[A001651(n+1), A160542(n+1)]`
-/

namespace A229968.P4372398386021918352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229968.P4372398386021918352

namespace A229968

/-- `∩[A001651(n+1), A160542(n+1)]` -/
def P4372398386021918352.Spec : Prop :=
  ∀ n, (P4372398386021918352.a n : ℤ) = A229968 (n + 1)

end A229968

/-! ## A229968.P17362921334254533591

`record[A106612(A001651(n+1))]`
-/

namespace A229968.P17362921334254533591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229968.P17362921334254533591

namespace A229968

/-- `record[A106612(A001651(n+1))]` -/
def P17362921334254533591.Spec : Prop :=
  ∀ n, P17362921334254533591.a n = A229968 (n + 1)

end A229968

/-! ## A229968.P13799679783205330599

`record[A106612(A106610(n+1))]`
-/

namespace A229968.P13799679783205330599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A106610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229968.P13799679783205330599

namespace A229968

/-- `record[A106612(A106610(n+1))]` -/
def P13799679783205330599.Spec : Prop :=
  ∀ n, P13799679783205330599.a n = A229968 (n + 1)

end A229968

/-! ## A229968.P9631670067971018006

`filter[A091684(n), A145568(#)]`
-/

namespace A229968.P9631670067971018006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A229968.P9631670067971018006

namespace A229968

/-- `filter[A091684(n), A145568(#)]` -/
def P9631670067971018006.Spec : Prop :=
  ∀ n, P9631670067971018006.a n = A229968 (n + 1)

end A229968

/-! ## A229968.P7790060948415114533

`eq[A088439(n), A109014(n)]`
-/

namespace A229968.P7790060948415114533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229968.P7790060948415114533

namespace A229968

/-- `eq[A088439(n), A109014(n)]` -/
def P7790060948415114533.Spec : Prop :=
  ∀ n, (P7790060948415114533.a n : ℤ) = A229968 (n + 1)

end A229968

/-! ## A229968.P17742415531659539218

`eq[A101443(n), A109014(n)]`
-/

namespace A229968.P17742415531659539218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229968.P17742415531659539218

namespace A229968

/-- `eq[A101443(n), A109014(n)]` -/
def P17742415531659539218.Spec : Prop :=
  ∀ n, (P17742415531659539218.a n : ℤ) = A229968 (n + 1)

end A229968

/-! ## A229968.P12246898930570847200

`eq[n, A257174(A106612(n))]`
-/

namespace A229968.P12246898930570847200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 (A106612 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229968.P12246898930570847200

namespace A229968

/-- `eq[n, A257174(A106612(n))]` -/
def P12246898930570847200.Spec : Prop :=
  ∀ n, (P12246898930570847200.a n : ℤ) = A229968 (n + 1)

end A229968

/-! ## A229968.P1304089167130730468

`record[A106612(A051176(n+1))]`
-/

namespace A229968.P1304089167130730468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A051176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229968.P1304089167130730468

namespace A229968

/-- `record[A106612(A051176(n+1))]` -/
def P1304089167130730468.Spec : Prop :=
  ∀ n, P1304089167130730468.a n = A229968 (n + 1)

end A229968

/-! ## A229968.P14564266931758138753

`filter[A001651(n+1), A145568(#)]`
-/

namespace A229968.P14564266931758138753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A229968.P14564266931758138753

namespace A229968

/-- `filter[A001651(n+1), A145568(#)]` -/
def P14564266931758138753.Spec : Prop :=
  ∀ n, P14564266931758138753.a n = A229968 (n + 1)

end A229968

/-! ## A229968.P10995869077867844873

`filter[A160542(n+1), A011655(#)]`
-/

namespace A229968.P10995869077867844873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A229968.P10995869077867844873

namespace A229968

/-- `filter[A160542(n+1), A011655(#)]` -/
def P10995869077867844873.Spec : Prop :=
  ∀ n, P10995869077867844873.a n = A229968 (n + 1)

end A229968

/-! ## A229968.P5250830914794536862

`filter[A160542(n+1), A267208(#)]`
-/

namespace A229968.P5250830914794536862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A229968.P5250830914794536862

namespace A229968

/-- `filter[A160542(n+1), A267208(#)]` -/
def P5250830914794536862.Spec : Prop :=
  ∀ n, P5250830914794536862.a n = A229968 (n + 1)

end A229968

/-! ## A229968.P5944888708889339870

`lt[A088439(n), 2*A145568(n)]`
-/

namespace A229968.P5944888708889339870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229968.P5944888708889339870

namespace A229968

/-- `lt[A088439(n), 2*A145568(n)]` -/
def P5944888708889339870.Spec : Prop :=
  ∀ n, (P5944888708889339870.a n : ℤ) = A229968 (n + 1)

end A229968

/-! ## A229968.P4337926326499341712

`eq[A051176(n+1), A106612(n+1)]+1`
-/

namespace A229968.P4337926326499341712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A229968.P4337926326499341712

namespace A229968

/-- `eq[A051176(n+1), A106612(n+1)]+1` -/
def P4337926326499341712.Spec : Prop :=
  ∀ n, (P4337926326499341712.a n : ℤ) = A229968 (n + 1)

end A229968

/-! ## A229968.P16804957263028257903

`filter[A131742(n), A145568(#)]`
-/

namespace A229968.P16804957263028257903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A229968.P16804957263028257903

namespace A229968

/-- `filter[A131742(n), A145568(#)]` -/
def P16804957263028257903.Spec : Prop :=
  ∀ n, P16804957263028257903.a n = A229968 (n + 1)

end A229968

/-! ## A229968.P5135680083637003225

`filter[A037915(2*n), A145568(#)]`
-/

namespace A229968.P5135680083637003225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A229968.P5135680083637003225

namespace A229968

/-- `filter[A037915(2*n), A145568(#)]` -/
def P5135680083637003225.Spec : Prop :=
  ∀ n, P5135680083637003225.a n = A229968 (n + 1)

end A229968

/-! ## A229968.P13612596699176210994

`filter[A066530(2*n), A145568(#)]`
-/

namespace A229968.P13612596699176210994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A229968.P13612596699176210994

namespace A229968

/-- `filter[A066530(2*n), A145568(#)]` -/
def P13612596699176210994.Spec : Prop :=
  ∀ n, P13612596699176210994.a n = A229968 (n + 1)

end A229968

/-!
# A229970: Numbers n such that the product of their proper divisors is a palindrome > 1 and not equal to n.

The programs for A229970, there is no canonical definition to state claims against.
-/

/-! ## A229970.P10421307830277981673

`A376732(A126656(n+2))`
-/

namespace A229970.P10421307830277981673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A126656 (n + 2)).toNat

end

end A229970.P10421307830277981673

/-! ## A229970.P165422491550536255

`A049769(A001147(n))+A001248(n+1)`
-/

namespace A229970.P165422491550536255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049769 (A001147 n).toNat + A001248 (n + 1)

end

end A229970.P165422491550536255

/-!
# A229971: Palindromes n whose product of proper divisors is a palindrome > 1 and not equal to n.

The programs for A229971, there is no canonical definition to state claims against.
-/

/-! ## A229971.P13185095843743333188

`∩[A082208(n+1), A229970(n+1)]`
-/

namespace A229971.P13185095843743333188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229971.P13185095843743333188

/-! ## A229971.P13267360769797991665

`∩[A117055(n+1), A229970(n+1)]`
-/

namespace A229971.P13267360769797991665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229971.P13267360769797991665

/-! ## A229971.P18342563775990596407

`∩[A117056(n+1), A229970(n+1)]`
-/

namespace A229971.P18342563775990596407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229971.P18342563775990596407

/-! ## A229971.P11926893346749488036

`∩[A002113(n+1), A229970(n+1)]`
-/

namespace A229971.P11926893346749488036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229971.P11926893346749488036

/-!
# A229972: Nonprime numbers whose product of proper divisors is a perfect cube.

The programs for A229972, the canonical program `A229972.P9080360286845708223` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229972 has offset 1).

The definition of A229972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229972.P9080360286845708223

`filter[A375960(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A229972

/-- `filter[A375960(n+1), A005171(#)]` -/
def P9080360286845708223.Spec : Prop :=
  ∀ n, P9080360286845708223.a n = A229972 (n + 1)

theorem P9080360286845708223.correct : P9080360286845708223.Spec := by
  intro n
  simp only [A229972, Nat.add_sub_cancel]

end A229972

/-! ## A229972.P5914074659993817012

`∩[A264828(n+1), A375960(n+1)]`
-/

namespace A229972.P5914074659993817012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229972.P5914074659993817012

namespace A229972

/-- `∩[A264828(n+1), A375960(n+1)]` -/
def P5914074659993817012.Spec : Prop :=
  ∀ n, (P5914074659993817012.a n : ℤ) = A229972 (n + 1)

end A229972

/-! ## A229972.P13892672267046594695

`∩[A018252(n+1), A375960(n+1)]`
-/

namespace A229972.P13892672267046594695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229972.P13892672267046594695

namespace A229972

/-- `∩[A018252(n+1), A375960(n+1)]` -/
def P13892672267046594695.Spec : Prop :=
  ∀ n, (P13892672267046594695.a n : ℤ) = A229972 (n + 1)

end A229972

/-! ## A229972.P15926006318763042102

`∩[A141468(n+1), A375960(n+1)]`
-/

namespace A229972.P15926006318763042102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229972.P15926006318763042102

namespace A229972

/-- `∩[A141468(n+1), A375960(n+1)]` -/
def P15926006318763042102.Spec : Prop :=
  ∀ n, (P15926006318763042102.a n : ℤ) = A229972 (n + 1)

end A229972

/-! ## A229972.P16053746730019437736

`∩[A111087(n+1), A375960(n+1)]`
-/

namespace A229972.P16053746730019437736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229972.P16053746730019437736

namespace A229972

/-- `∩[A111087(n+1), A375960(n+1)]` -/
def P16053746730019437736.Spec : Prop :=
  ∀ n, (P16053746730019437736.a n : ℤ) = A229972 (n + 1)

end A229972

/-! ## A229972.P6134048944878877325

`∩[A289553(n+1), A375960(n+1)]`
-/

namespace A229972.P6134048944878877325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229972.P6134048944878877325

namespace A229972

/-- `∩[A289553(n+1), A375960(n+1)]` -/
def P6134048944878877325.Spec : Prop :=
  ∀ n, (P6134048944878877325.a n : ℤ) = A229972 (n + 1)

end A229972

/-! ## A229972.P833336551349246883

`∩[A257586(n+1), A375960(n+1)]`
-/

namespace A229972.P833336551349246883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229972.P833336551349246883

namespace A229972

/-- `∩[A257586(n+1), A375960(n+1)]` -/
def P833336551349246883.Spec : Prop :=
  ∀ n, (P833336551349246883.a n : ℤ) = A229972 (n + 1)

end A229972

/-! ## A229972.P8096372285282553772

`∩[A056653(n+1), A375960(n+1)]`
-/

namespace A229972.P8096372285282553772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229972.P8096372285282553772

namespace A229972

/-- `∩[A056653(n+1), A375960(n+1)]` -/
def P8096372285282553772.Spec : Prop :=
  ∀ n, (P8096372285282553772.a n : ℤ) = A229972 (n + 1)

end A229972

/-!
# A229973: Numbers coprime to 39.

The programs for A229973, the canonical program `A229973.P17728179948878337418` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229973 has offset 1).

The definition of A229973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229973.P17728179948878337418

`lt[18*n, lcm(39, n)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229973

/-- `lt[18*n, lcm(39, n)]` -/
def P17728179948878337418.Spec : Prop :=
  ∀ n, (P17728179948878337418.a n : ℤ) = A229973 (n + 1)

theorem P17728179948878337418.correct : P17728179948878337418.Spec := by
  intro n
  simp only [A229973, Nat.add_sub_cancel]

end A229973

/-! ## A229973.P1219521646928645410

`eq[1, gcd(n, 39^dr(n+1))]`
-/

namespace A229973.P1219521646928645410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (39 ^ SequenceMachineLib.digitalRoot (n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229973.P1219521646928645410

namespace A229973

/-- `eq[1, gcd(n, 39^dr(n+1))]` -/
def P1219521646928645410.Spec : Prop :=
  ∀ n, (P1219521646928645410.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P2817272356557405493

`record[n+1-gcd(39, n+1)]+1`
-/

namespace A229973.P2817272356557405493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.gcd 39 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A229973.P2817272356557405493

namespace A229973

/-- `record[n+1-gcd(39, n+1)]+1` -/
def P2817272356557405493.Spec : Prop :=
  ∀ n, P2817272356557405493.a n = A229973 (n + 1)

end A229973

/-! ## A229973.P3907994027756454820

`∩[A001651(n+1), A113763(n+1)]`
-/

namespace A229973.P3907994027756454820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229973.P3907994027756454820

namespace A229973

/-- `∩[A001651(n+1), A113763(n+1)]` -/
def P3907994027756454820.Spec : Prop :=
  ∀ n, (P3907994027756454820.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P769233037999685005

`record[A106614(∑[A040001(n)])]`
-/

namespace A229973.P769233037999685005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229973.P769233037999685005

namespace A229973

/-- `record[A106614(∑[A040001(n)])]` -/
def P769233037999685005.Spec : Prop :=
  ∀ n, P769233037999685005.a n = A229973 (n + 1)

end A229973

/-! ## A229973.P18432216085519915986

`record[A106614(A001651(n+1))]`
-/

namespace A229973.P18432216085519915986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229973.P18432216085519915986

namespace A229973

/-- `record[A106614(A001651(n+1))]` -/
def P18432216085519915986.Spec : Prop :=
  ∀ n, P18432216085519915986.a n = A229973 (n + 1)

end A229973

/-! ## A229973.P3883439656952799226

`lt[n/2, A106614(A106610(n))]`
-/

namespace A229973.P3883439656952799226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A106610 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A229973.P3883439656952799226

namespace A229973

/-- `lt[n/2, A106614(A106610(n))]` -/
def P3883439656952799226.Spec : Prop :=
  ∀ n, (P3883439656952799226.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P14134708012058556344

`eq[A026741(n+1), A106614(A060789(n+1))]+1`
-/

namespace A229973.P14134708012058556344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A060789 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A229973.P14134708012058556344

namespace A229973

/-- `eq[A026741(n+1), A106614(A060789(n+1))]+1` -/
def P14134708012058556344.Spec : Prop :=
  ∀ n, (P14134708012058556344.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P17778275361707716257

`eq[n, A257174(A106614(n))]`
-/

namespace A229973.P17778275361707716257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 (A106614 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229973.P17778275361707716257

namespace A229973

/-- `eq[n, A257174(A106614(n))]` -/
def P17778275361707716257.Spec : Prop :=
  ∀ n, (P17778275361707716257.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P17499381577640920836

`filter[A113763(n+1), A011655(#)]`
-/

namespace A229973.P17499381577640920836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A229973.P17499381577640920836

namespace A229973

/-- `filter[A113763(n+1), A011655(#)]` -/
def P17499381577640920836.Spec : Prop :=
  ∀ n, P17499381577640920836.a n = A229973 (n + 1)

end A229973

/-! ## A229973.P16275614559790295059

`filter[A113763(n+1), A267208(#)]`
-/

namespace A229973.P16275614559790295059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A229973.P16275614559790295059

namespace A229973

/-- `filter[A113763(n+1), A267208(#)]` -/
def P16275614559790295059.Spec : Prop :=
  ∀ n, P16275614559790295059.a n = A229973 (n + 1)

end A229973

/-! ## A229973.P4239732987065786434

`eq[n, A106614(A130509(n+1))]`
-/

namespace A229973.P4239732987065786434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A130509 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229973.P4239732987065786434

namespace A229973

/-- `eq[n, A106614(A130509(n+1))]` -/
def P4239732987065786434.Spec : Prop :=
  ∀ n, (P4239732987065786434.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P13788001792940258101

`eq[n, A106614(A147534(n+1))]`
-/

namespace A229973.P13788001792940258101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A147534 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229973.P13788001792940258101

namespace A229973

/-- `eq[n, A106614(A147534(n+1))]` -/
def P13788001792940258101.Spec : Prop :=
  ∀ n, (P13788001792940258101.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P6181559741399432907

`lt[n/2, A106614(A051176(n))]`
-/

namespace A229973.P6181559741399432907
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A051176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A229973.P6181559741399432907

namespace A229973

/-- `lt[n/2, A106614(A051176(n))]` -/
def P6181559741399432907.Spec : Prop :=
  ∀ n, (P6181559741399432907.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P4141044432038445318

`lt[(A051176(n)-A106614(n))², n]`
-/

namespace A229973.P4141044432038445318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051176 n - A106614 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229973.P4141044432038445318

namespace A229973

/-- `lt[(A051176(n)-A106614(n))², n]` -/
def P4141044432038445318.Spec : Prop :=
  ∀ n, (P4141044432038445318.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P4375785426681819173

`eq[A051176(n+1), A106614(n+1)]+1`
-/

namespace A229973.P4375785426681819173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A229973.P4375785426681819173

namespace A229973

/-- `eq[A051176(n+1), A106614(n+1)]+1` -/
def P4375785426681819173.Spec : Prop :=
  ∀ n, (P4375785426681819173.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P11845989209671669975

`lt[n, A106610(A106614(2*n))]`
-/

namespace A229973.P11845989209671669975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A106614 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229973.P11845989209671669975

namespace A229973

/-- `lt[n, A106610(A106614(2*n))]` -/
def P11845989209671669975.Spec : Prop :=
  ∀ n, (P11845989209671669975.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P7388686333592019388

`record[A060789(A106614(2*(n+1)))]`
-/

namespace A229973.P7388686333592019388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A106614 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229973.P7388686333592019388

namespace A229973

/-- `record[A060789(A106614(2*(n+1)))]` -/
def P7388686333592019388.Spec : Prop :=
  ∀ n, P7388686333592019388.a n = A229973 (n + 1)

end A229973

/-! ## A229973.P221877867972432151

`eq[A060789(2*(n+1)), A106614(n+1)]+1`
-/

namespace A229973.P221877867972432151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A229973.P221877867972432151

namespace A229973

/-- `eq[A060789(2*(n+1)), A106614(n+1)]+1` -/
def P221877867972432151.Spec : Prop :=
  ∀ n, (P221877867972432151.a n : ℤ) = A229973 (n + 1)

end A229973

/-! ## A229973.P16871601865086475326

`lt[A106611(n), A106616(A106614(n))]/2`
-/

namespace A229973.P16871601865086475326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A106614 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A229973.P16871601865086475326

namespace A229973

/-- `lt[A106611(n), A106616(A106614(n))]/2` -/
def P16871601865086475326.Spec : Prop :=
  ∀ n, P16871601865086475326.a n = (A229973 (n + 1) : ℚ)

end A229973

/-!
# A229975: The base 8 expansion of the number of trailing zeros of the base 8 expansion of (8^n)!.

The programs for A229975, there is no canonical definition to state claims against.
-/

/-! ## A229975.P18011687975164878745

`ogf((2+5x)/(1-10x-x^2+10x^3))`
-/

namespace A229975.P18011687975164878745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5] [1, -10, -1, 10] n

end

end A229975.P18011687975164878745

/-! ## A229975.P15602187232426093355

`floor(A266508(n+1)/4)`
-/

namespace A229975.P15602187232426093355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266508 (n + 1) : ℚ) / 4⌋

end

end A229975.P15602187232426093355

/-! ## A229975.P6961493845776514729

`floor(A002279(n+2)/22)`
-/

namespace A229975.P6961493845776514729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002279 (n + 2) : ℚ) / 22⌋

end

end A229975.P6961493845776514729

/-! ## A229975.P16875137759852615328

`floor(A000042(n+3)/44)`
-/

namespace A229975.P16875137759852615328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000042 (n + 3) : ℚ) / 44⌋

end

end A229975.P16875137759852615328

/-! ## A229975.P17110930408532935212

`floor(A287742(2*(n+1))/4)`
-/

namespace A229975.P17110930408532935212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287742 (2 * (n + 1)) : ℚ) / 4⌋

end

end A229975.P17110930408532935212

/-!
# A229977: Gosper island perimeter (rounded to the nearest integer) after n iterations, let starting perimeter = 1.

The programs for A229977, there is no canonical definition to state claims against.
-/

/-! ## A229977.P3009195722529378997

`A048766(A290076(n)+∑[A306318(n)])`
-/

namespace A229977.P3009195722529378997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A290076 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229977.P3009195722529378997

/-! ## A229977.P11286943539415666498

`A048766(A290077(n)+∑[A306318(n)])`
-/

namespace A229977.P11286943539415666498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A290077 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229977.P11286943539415666498

/-! ## A229977.P13484978573901141251

`A127321(A186425(n+1)+A006950(n))`
-/

namespace A229977.P13484978573901141251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A186425 (n + 1) + A006950 n).toNat

end

end A229977.P13484978573901141251

/-! ## A229977.P4256281895053078801

`A127321(A328789(n)+A186425(n+1))`
-/

namespace A229977.P4256281895053078801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A328789 n + A186425 (n + 1)).toNat

end

end A229977.P4256281895053078801

/-! ## A229977.P13060367548191923424

`A324381(A324381(n+1)+A000032(n))`
-/

namespace A229977.P13060367548191923424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324381 (A324381 (n + 1) + A000032 n).toNat

end

end A229977.P13060367548191923424

/-!
# A229978: Numbers k such that (2*k+1) + phi(2*k+1) <= sigma(2*k+1).

The programs for A229978, there is no canonical definition to state claims against.
-/

/-! ## A229978.P18297660170521163670

`floor(A084821(n+1)/2)`
-/

namespace A229978.P18297660170521163670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084821 (n + 1) : ℚ) / 2⌋

end

end A229978.P18297660170521163670

/-! ## A229978.P16961317756285552023

`(A084821(2*n+1-n)-1)/2`
-/

namespace A229978.P16961317756285552023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084821 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat - 1 : ℚ) / 2

end

end A229978.P16961317756285552023

/-! ## A229978.P15391784784221721696

`lt[2*n, A051612(2*n+1)]`
-/

namespace A229978.P15391784784221721696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229978.P15391784784221721696

/-! ## A229978.P5298227830073865624

`A004524(A084821(n+1))`
-/

namespace A229978.P5298227830073865624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A084821 (n + 1)).toNat

end

end A229978.P5298227830073865624

/-! ## A229978.P18166151945209048201

`A001281(A084821(n+1)-1)`
-/

namespace A229978.P18166151945209048201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A084821 (n + 1) - 1).toNat

end

end A229978.P18166151945209048201

/-! ## A229978.P2145188341952366794

`A004525(A084821(n+1)-1)`
-/

namespace A229978.P2145188341952366794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A084821 (n + 1) - 1).toNat

end

end A229978.P2145188341952366794

/-! ## A229978.P15668443801158425291

`A026741(A084821(n+1)-1)`
-/

namespace A229978.P15668443801158425291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A084821 (n + 1) - 1).toNat

end

end A229978.P15668443801158425291

/-! ## A229978.P7371750549089883294

`A110654(A084821(n+1)-1)`
-/

namespace A229978.P7371750549089883294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A084821 (n + 1) - 1).toNat

end

end A229978.P7371750549089883294

/-! ## A229978.P1038982060594249104

`lt[A000010(2*n+1), A001065(2*n+1)]`
-/

namespace A229978.P1038982060594249104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229978.P1038982060594249104

/-! ## A229978.P741907521452478657

`lt[A109606(2*n+1), A001065(2*n+1)]`
-/

namespace A229978.P741907521452478657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229978.P741907521452478657

/-! ## A229978.P15051008544697284187

`lt[A121048(2*n+1), A000203(2*n+1)]`
-/

namespace A229978.P15051008544697284187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229978.P15051008544697284187

/-! ## A229978.P3396033249116625453

`lt[A000010(2*n+1), A173455(2*n+1)]`
-/

namespace A229978.P3396033249116625453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229978.P3396033249116625453

/-!
# A229979: Numerators of interleaved A063524(n) and A002427(n)/A006955(n).

The programs for A229979, there is no canonical definition to state claims against.
-/

/-! ## A229979.P1624591788617056747

`A050925(n-a(2%n))` with `a(0)=0, a(1)=1`
-/

namespace A229979.P1624591788617056747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A050925 ((n : ℤ) - a (2 % n)).toNat

end

end A229979.P1624591788617056747

/-! ## A229979.P16276879803938201802

`A050925(round(sqrt((2-n)²+1))+1)`
-/

namespace A229979.P16276879803938201802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050925 (SequenceMachineLib.roundAway (Real.sqrt ((2 - (n : ℤ)) ^ 2 + 1 : ℝ)) + 1).toNat

end

end A229979.P16276879803938201802

/-! ## A229979.P15589561109501995382

`A162298(A000124(n))-A000007(n)`
-/

namespace A229979.P15589561109501995382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162298 (A000124 n).toNat - A000007 n

end

end A229979.P15589561109501995382

/-! ## A229979.P13508206580591132144

`A162298(A000124(n))-A151933(n)`
-/

namespace A229979.P13508206580591132144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162298 (A000124 n).toNat - A151933 n

end

end A229979.P13508206580591132144

/-! ## A229979.P7781732104877954119

`A057427(n)*A162298(A000124(n))`
-/

namespace A229979.P7781732104877954119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A162298 (A000124 n).toNat

end

end A229979.P7781732104877954119

/-!
# A229980: Smallest integer m > 0 such that p(n) + m*p(n + 1) and m*p(n) + p(n + 1) are prime, p(n) = n-th prime.

The programs for A229980, there is no canonical definition to state claims against.
-/

/-! ## A229980.P17277979444113332986

`A286657(∑[n+1])`
-/

namespace A229980.P17277979444113332986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286657 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229980.P17277979444113332986

/-! ## A229980.P12346307379443274049

`A000027(A286657(record[A066182(n+1)]))`
-/

namespace A229980.P12346307379443274049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A286657 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A229980.P12346307379443274049

/-! ## A229980.P8515455598970438765

`A286657(A000217(n+1))%A001546(n)`
-/

namespace A229980.P8515455598970438765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286657 (A000217 (n + 1)).toNat) (A001546 n)

end

end A229980.P8515455598970438765

/-! ## A229980.P8634512595501555523

`lcm(A033999(n), A286657(A000217(n+1)))`
-/

namespace A229980.P8634512595501555523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A286657 (A000217 (n + 1)).toNat)

end

end A229980.P8634512595501555523

/-! ## A229980.P11826611308055612752

`or(A000007(n), A286657(A000217(n+1)))`
-/

namespace A229980.P11826611308055612752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A286657 (A000217 (n + 1)).toNat)

end

end A229980.P11826611308055612752

/-! ## A229980.P15729182543973766379

`A000203(abs((-1)^n))*A286657(A000217(n+1))`
-/

namespace A229980.P15729182543973766379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 |(-1) ^ n|.toNat * A286657 (A000217 (n + 1)).toNat

end

end A229980.P15729182543973766379

/-! ## A229980.P15929609919029762584

`A286657(A000217(n+1))/A000005(((-1)^n)²)`
-/

namespace A229980.P15929609919029762584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286657 (A000217 (n + 1)).toNat : ℚ) / (A000005 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A229980.P15929609919029762584

/-!
# A229990: Numbers k such that the interval [floor((k+1)/2), floor(3*(k+1)/2)] contains more primes than the interval [floor(k/2), floor(3*k/2)] does.

The programs for A229990, the canonical program `A229990.P8596526445958010261` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229990 has offset 1).

The definition of A229990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229990.P8596526445958010261

`A131737(A169647(n+2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A229990

/-- `A131737(A169647(n+2))` -/
def P8596526445958010261.Spec : Prop :=
  ∀ n, P8596526445958010261.a n = A229990 (n + 1)

theorem P8596526445958010261.correct : P8596526445958010261.Spec := by
  intro n
  simp only [A229990, Nat.add_sub_cancel]

end A229990

/-! ## A229990.P15456711243541322114

`A004396(A169647(n+2)-1)`
-/

namespace A229990.P15456711243541322114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A169647 (n + 2) - 1).toNat

end

end A229990.P15456711243541322114

namespace A229990

/-- `A004396(A169647(n+2)-1)` -/
def P15456711243541322114.Spec : Prop :=
  ∀ n, P15456711243541322114.a n = A229990 (n + 1)

end A229990

/-! ## A229990.P18388057287984948866

`A004396(xor(1, A169647(n+2)))`
-/

namespace A229990.P18388057287984948866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.xor 1 (A169647 (n + 2))).toNat

end

end A229990.P18388057287984948866

namespace A229990

/-- `A004396(xor(1, A169647(n+2)))` -/
def P18388057287984948866.Spec : Prop :=
  ∀ n, P18388057287984948866.a n = A229990 (n + 1)

end A229990

/-! ## A229990.P13877722882316198300

`floor(record[A006369(A169647(n+1))]/2)`
-/

namespace A229990.P13877722882316198300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A169647 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋

end

end A229990.P13877722882316198300

namespace A229990

/-- `floor(record[A006369(A169647(n+1))]/2)` -/
def P13877722882316198300.Spec : Prop :=
  ∀ n, P13877722882316198300.a n = A229990 (n + 1)

end A229990

/-! ## A229990.P15591663456705319124

`round(A008576(A169647(n+2)-1)/4)`
-/

namespace A229990.P15591663456705319124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A169647 (n + 2) - 1).toNat : ℚ) / 4)

end

end A229990.P15591663456705319124

namespace A229990

/-- `round(A008576(A169647(n+2)-1)/4)` -/
def P15591663456705319124.Spec : Prop :=
  ∀ n, P15591663456705319124.a n = A229990 (n + 1)

end A229990

/-! ## A229990.P2907416983894664368

`A004523(A169647(A103517(n)-n))`
-/

namespace A229990.P2907416983894664368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A169647 (A103517 n - (n : ℤ)).toNat).toNat

end

end A229990.P2907416983894664368

namespace A229990

/-- `A004523(A169647(A103517(n)-n))` -/
def P2907416983894664368.Spec : Prop :=
  ∀ n, P2907416983894664368.a n = A229990 (n + 1)

end A229990

/-! ## A229990.P10056728004396317184

`A004526(record[A006369(A169647(n+1))])`
-/

namespace A229990.P10056728004396317184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A169647 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229990.P10056728004396317184

namespace A229990

/-- `A004526(record[A006369(A169647(n+1))])` -/
def P10056728004396317184.Spec : Prop :=
  ∀ n, P10056728004396317184.a n = A229990 (n + 1)

end A229990

/-! ## A229990.P18418884433909882373

`A028242(record[A006369(A169647(n+1))])`
-/

namespace A229990.P18418884433909882373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A169647 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229990.P18418884433909882373

namespace A229990

/-- `A028242(record[A006369(A169647(n+1))])` -/
def P18418884433909882373.Spec : Prop :=
  ∀ n, P18418884433909882373.a n = A229990 (n + 1)

end A229990

/-!
# A229991: Numbers for which A061214(n) - 1 is prime, where A061214(n) = product of composite numbers between prime(n) and prime(n+1) .

The programs for A229991, there is no canonical definition to state claims against.
-/

/-! ## A229991.P5711650558188113161

`lt[A002275(A076845(n+2)), A261310(n+1)]`
-/

namespace A229991.P5711650558188113161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A076845 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229991.P5711650558188113161

/-! ## A229991.P6181812465318949356

`lt[A349156(A289441(2*n+3)), A161989(n+1)]`
-/

namespace A229991.P6181812465318949356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349156 (A289441 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229991.P6181812465318949356

/-!
# A229992: Numbers for which A061214(n) + 1 is prime, where A061214(n) = product of composite numbers between prime(n) and prime(n+1) .

The programs for A229992, there is no canonical definition to state claims against.
-/

/-! ## A229992.P6588165550253434808

`A000720(A088254(n+2))`
-/

namespace A229992.P6588165550253434808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088254 (n + 2)).toNat

end

end A229992.P6588165550253434808

/-! ## A229992.P4149882302351298929

`A061395(2*A088254(n+2))`
-/

namespace A229992.P4149882302351298929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A088254 (n + 2)).toNat

end

end A229992.P4149882302351298929

/-! ## A229992.P3774626612136915539

`A036234(A088254(n+2)-1)`
-/

namespace A229992.P3774626612136915539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A088254 (n + 2) - 1).toNat

end

end A229992.P3774626612136915539

/-! ## A229992.P9818854039999393398

`A003963(2*A088254(n+2))`
-/

namespace A229992.P9818854039999393398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A088254 (n + 2)).toNat

end

end A229992.P9818854039999393398

/-! ## A229992.P8141949118570607719

`A003963(lcm(2, A088254(n+2)))`
-/

namespace A229992.P8141949118570607719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A088254 (n + 2)))

end

end A229992.P8141949118570607719

/-!
# A229993: Numbers for which c(n) - 1 and c(n) + 1 are twin primes, where c(n) = A061214(n) = product of composite numbers between prime(n) and prime(n+1) .

The programs for A229993, there is no canonical definition to state claims against.
-/

/-! ## A229993.P6520212839179331013

`∩[A229991(n+2), A229992(n+2)]`
-/

namespace A229993.P6520212839179331013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229991 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229992 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229993.P6520212839179331013

/-! ## A229993.P10479418545128573325

`∩[A000720(A088254(n+1)), A229991(n+2)]`
-/

namespace A229993.P10479418545128573325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088254 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229991 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229993.P10479418545128573325

/-! ## A229993.P15895421749962203148

`∩[A036234(A088254(n+1)-1), A229991(n+2)]`
-/

namespace A229993.P15895421749962203148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A088254 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229991 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229993.P15895421749962203148

/-! ## A229993.P9858745236635795679

`∩[A003963(2*A088254(n+1)), A229991(n+2)]`
-/

namespace A229993.P9858745236635795679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A088254 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229991 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229993.P9858745236635795679

/-! ## A229993.P3815526356757256239

`lt[A090332(A064659(n+1)), A143051(n)]`
-/

namespace A229993.P3815526356757256239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (A064659 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229993.P3815526356757256239

/-!
# A229994: For every positive integer m, let u(m) = (d(1),d(2),...,d(k)) be the unitary divisors of m in increasing order. Let Q be the concatenation of the vectors (d(k)/d(1), d(k-1)/d(2), ..., d(1)/d(k)), so that every positive rational number appears in Q exactly once. The numerators form A229994; the denominators, A077610.

The programs for A229994, there is no canonical definition to state claims against.
-/

/-! ## A229994.P1435487970681634266

`gcd(A056538(A349536(n+1)), A110847(n))`
-/

namespace A229994.P1435487970681634266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056538 (A349536 (n + 1)).toNat) (A110847 n)

end

end A229994.P1435487970681634266

/-! ## A229994.P13186696877818269838

`A056538(record[A061295(A305417(n))])`
-/

namespace A229994.P13186696877818269838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061295 (A305417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229994.P13186696877818269838

/-! ## A229994.P507811615248329829

`A056538(A349536(n+1))%p?[A007318(n)]`
-/

namespace A229994.P507811615248329829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056538 (A349536 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229994.P507811615248329829

/-! ## A229994.P2414086525191714523

`A056538(A349536(n+1))^A008277(A046802(n))`
-/

namespace A229994.P2414086525191714523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056538 (A349536 (n + 1)).toNat : ℚ) ^ (A008277 (A046802 n).toNat : ℤ)

end

end A229994.P2414086525191714523

/-!
# A229995: Array of coefficients of numerator polynomials of the rational function p(n, x + 1/x), where p(n,x) is the Fibonacci polynomial defined by p(1,x) = 1, p(2,x) = x, p(n,x) = x*p(n-1,x) + p(n-2,x).

The programs for A229995, there is no canonical definition to state claims against.
-/

/-! ## A229995.P4766203285048655977

`comp[∑[2*n]]%2*A140750(n+1)`
-/

namespace A229995.P4766203285048655977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A140750 (n + 1)

end

end A229995.P4766203285048655977

/-! ## A229995.P3929480000493780962

`A071028(n)*A140750(n+1)`
-/

namespace A229995.P3929480000493780962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n * A140750 (n + 1)

end

end A229995.P3929480000493780962

/-! ## A229995.P10996194359112021392

`lcm(A140750(n+1), A230002(n))`
-/

namespace A229995.P10996194359112021392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140750 (n + 1)) (A230002 n)

end

end A229995.P10996194359112021392

/-! ## A229995.P6844128050376627785

`char[A054791(n)]*A140750(n+1)`
-/

namespace A229995.P6844128050376627785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054791 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A140750 (n + 1)

end

end A229995.P6844128050376627785

/-! ## A229995.P16150813698182746350

`char[A133280(n)]*A140750(n+1)`
-/

namespace A229995.P16150813698182746350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A140750 (n + 1)

end

end A229995.P16150813698182746350

/-! ## A229995.P15714108586212018397

`char[A127367(2*n)]*A140750(n+1)`
-/

namespace A229995.P15714108586212018397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127367 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A140750 (n + 1)

end

end A229995.P15714108586212018397

/-! ## A229995.P5158870519015223791

`A000035(A080883(n))*A140750(n+1)`
-/

namespace A229995.P5158870519015223791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A080883 n).toNat * A140750 (n + 1)

end

end A229995.P5158870519015223791

/-!
# A229996: For every positive integer m, let u(m) = (d(1),d(2),...,d(k)) be the unitary divisors of m. The sequence (a(n)) consists of successive numbers m which d(k)/d(1) + d(k-1)/d(2) + ... + d(k)/d(1) is an integer.

The programs for A229996, there is no canonical definition to state claims against.
-/

/-! ## A229996.P16210814388887401616

`A305995(∑[n]+1)`
-/

namespace A229996.P16210814388887401616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305995 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229996.P16210814388887401616

/-! ## A229996.P16618867352357892109

`A305996(∑[n]+1)`
-/

namespace A229996.P16618867352357892109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305996 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229996.P16618867352357892109

/-! ## A229996.P2561927646171909214

`record[A305995(∑[gcd(1-n, floor(n/2))])]`
-/

namespace A229996.P2561927646171909214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305995 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229996.P2561927646171909214

/-! ## A229996.P17543423801750989294

`record[A305996(record[A194962(n+1)])]`
-/

namespace A229996.P17543423801750989294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194962 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305996 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229996.P17543423801750989294

/-! ## A229996.P15369406970581061208

`record[A010054(n)*A305995(n+1)]`
-/

namespace A229996.P15369406970581061208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A305995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229996.P15369406970581061208

/-!
# A229997: Numerator of d(k)/d(1) + d(k-1)/d(2) + ... + d(k)/d(1), where d(1),d(2),...,d(k) are the unitary divisors of n.

The programs for A229997, there is no canonical definition to state claims against.
-/

/-! ## A229997.P9723861021952722700

`lcm(n+1, A034676(n+1))/(n+1)`
-/

namespace A229997.P9723861021952722700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A034676 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A229997.P9723861021952722700

/-! ## A229997.P10062192188250872852

`A034676(n+1)/A323163((n+1)²)`
-/

namespace A229997.P10062192188250872852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034676 (n + 1) : ℚ) / (A323163 ((n + 1) ^ 2) : ℚ)

end

end A229997.P10062192188250872852

/-! ## A229997.P4038650231961252627

`A034448((n+1)²)/A323163((n+1)²)`
-/

namespace A229997.P4038650231961252627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 ((n + 1) ^ 2) : ℚ) / (A323163 ((n + 1) ^ 2) : ℚ)

end

end A229997.P4038650231961252627

/-! ## A229997.P5185068896735348890

`A034676(n+1)/(n+1)*A229998(n+1)`
-/

namespace A229997.P5185068896735348890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034676 (n + 1) : ℚ) / (n + 1 : ℚ) * (A229998 (n + 1) : ℚ)

end

end A229997.P5185068896735348890

/-! ## A229997.P16626627473456190375

`A034676(n+1)/gcd(A034676(n+1), A131738(n))`
-/

namespace A229997.P16626627473456190375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034676 (n + 1) : ℚ) / (Int.gcd (A034676 (n + 1)) (A131738 n) : ℚ)

end

end A229997.P16626627473456190375

/-! ## A229997.P5843107534459315285

`A034448((n+1)²)/A007947(A323166((n+1)²))`
-/

namespace A229997.P5843107534459315285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 ((n + 1) ^ 2) : ℚ) / (A007947 (A323166 ((n + 1) ^ 2)).toNat : ℚ)

end

end A229997.P5843107534459315285

/-!
# A229998: Denominator of d(k)/d(1) + d(k-1)/d(2) + ... + d(k)/d(1), where d(1),d(2),...,d(k) are the unitary divisors of n.

The programs for A229998, there is no canonical definition to state claims against.
-/

/-! ## A229998.P5859970585968254935

`(n+1)/A323163((n+1)²)`
-/

namespace A229998.P5859970585968254935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323163 ((n + 1) ^ 2) : ℚ)

end

end A229998.P5859970585968254935

/-! ## A229998.P17622752042322031066

`(n+1)/gcd(n+1, A034676(n+1))`
-/

namespace A229998.P17622752042322031066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A034676 (n + 1)) : ℚ)

end

end A229998.P17622752042322031066

/-! ## A229998.P3432168957854752635

`lcm(n+1, A332883((n+1)²))/(n+1)`
-/

namespace A229998.P3432168957854752635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A332883 ((n + 1) ^ 2)) : ℚ) / (n + 1 : ℚ)

end

end A229998.P3432168957854752635

/-! ## A229998.P18335117460087555692

`(n+1)/gcd(A034676(n+1), A131738(n))`
-/

namespace A229998.P18335117460087555692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A034676 (n + 1)) (A131738 n) : ℚ)

end

end A229998.P18335117460087555692

/-! ## A229998.P8607215237656330104

`(n+1)*A323163((n+1)²)^A008683(A003629(n+1))`
-/

namespace A229998.P8607215237656330104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A323163 ((n + 1) ^ 2) : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A229998.P8607215237656330104

/-! ## A229998.P9933033682973255833

`A132671(A132671(n+1))/A007947(A323166((n+1)²))`
-/

namespace A229998.P9933033682973255833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132671 (A132671 (n + 1)).toNat : ℚ) / (A007947 (A323166 ((n + 1) ^ 2)).toNat : ℚ)

end

end A229998.P9933033682973255833

/-! ## A229998.P11091879457897025572

`(n+1)/A034676(n+1)*A229997(n+1)`
-/

namespace A229998.P11091879457897025572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A034676 (n + 1) : ℚ) * (A229997 (n + 1) : ℚ)

end

end A229998.P11091879457897025572

/-!
# A229999: For every positive integer m, let u(m) = (d(1),d(2),...,d(k)) be the unitary divisors of m. The sequence (a(n)) consists of integers of the form d(k)/d(1) + d(k-1)/d(2) + ... + d(k)/d(1).

The programs for A229999, there is no canonical definition to state claims against.
-/

/-! ## A229999.P1022022847521734332

`A034676(A229996(n+1))/A229996(n+1)`
-/

namespace A229999.P1022022847521734332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034676 (A229996 (n + 1)).toNat : ℚ) / (A229996 (n + 1) : ℚ)

end

end A229999.P1022022847521734332

