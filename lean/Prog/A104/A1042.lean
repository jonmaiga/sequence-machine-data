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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A104200: Upper bound on a straddle prime pair.

The programs for A104200, there is no canonical definition to state claims against.
-/

/-! ## A104200.P1862765302454680261

`p?[Δ[A013636(n+1)]]`
-/

namespace A104200.P1862765302454680261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104200.P1862765302454680261

/-! ## A104200.P997357485348452143

`A240699(comp[p?[round(8*n/7)]-2]-n)`
-/

namespace A104200.P997357485348452143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240699 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A104200.P997357485348452143

/-! ## A104200.P944296187900944785

`A007918(Δ[A053767(n)])`
-/

namespace A104200.P944296187900944785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (n + 1) - f1 n).toNat

end

end A104200.P944296187900944785

/-! ## A104200.P4086187760686802226

`A066169(Δ[A053767(n)])`
-/

namespace A104200.P4086187760686802226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (f1 (n + 1) - f1 n).toNat

end

end A104200.P4086187760686802226

/-! ## A104200.P5153417997053303670

`A151800(Δ[A053767(n)])`
-/

namespace A104200.P5153417997053303670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n).toNat

end

end A104200.P5153417997053303670

/-! ## A104200.P9763605740419147673

`A151800(comp[A351078(n)])`
-/

namespace A104200.P9763605740419147673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A104200.P9763605740419147673

/-! ## A104200.P16963288628282197878

`A007918(A002808(n+1))`
-/

namespace A104200.P16963288628282197878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A002808 (n + 1)).toNat

end

end A104200.P16963288628282197878

/-! ## A104200.P11292744616946433760

`A000040(A073169(n+1))`
-/

namespace A104200.P11292744616946433760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A073169 (n + 1)).toNat

end

end A104200.P11292744616946433760

/-! ## A104200.P6081662015516589020

`A007918(A079696(n+1))`
-/

namespace A104200.P6081662015516589020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A079696 (n + 1)).toNat

end

end A104200.P6081662015516589020

/-! ## A104200.P14312193861617374349

`A007918(A118742(n+1))`
-/

namespace A104200.P14312193861617374349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A118742 (n + 1)).toNat

end

end A104200.P14312193861617374349

/-!
# A104201: Sums of straddle primes.

The programs for A104201, the canonical program `A104201.P12103817333759853652` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104201 has offset 4).

The definition of A104201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104201.P10502354602991987627

`A001043(A073425(n+1))`
-/

namespace A104201.P10502354602991987627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A073425 (n + 1)).toNat

end

end A104201.P10502354602991987627

namespace A104201

/-- `A001043(A073425(n+1))` -/
def P10502354602991987627.Spec : Prop :=
  ∀ n, P10502354602991987627.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P12103817333759853652

`A011974(A073169(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104201

/-- `A011974(A073169(n+1))` -/
def P12103817333759853652.Spec : Prop :=
  ∀ n, P12103817333759853652.a n = A104201 (n + 4)

theorem P12103817333759853652.correct : P12103817333759853652.Spec := by
  intro n
  simp only [A104201, Nat.add_sub_cancel]

end A104201

/-! ## A104201.P3948828246895975908

`A001043(A073169(n+1)-1)`
-/

namespace A104201.P3948828246895975908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A073169 (n + 1) - 1).toNat

end

end A104201.P3948828246895975908

namespace A104201

/-- `A001043(A073169(n+1)-1)` -/
def P3948828246895975908.Spec : Prop :=
  ∀ n, P3948828246895975908.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P7312508097439884902

`A069102(A002808(n+1)-n)`
-/

namespace A104201.P7312508097439884902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069102 (A002808 (n + 1) - (n : ℤ)).toNat

end

end A104201.P7312508097439884902

namespace A104201

/-- `A069102(A002808(n+1)-n)` -/
def P7312508097439884902.Spec : Prop :=
  ∀ n, P7312508097439884902.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P16530551939102712325

`A164653(A002808(n+1)-n)`
-/

namespace A104201.P16530551939102712325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (A002808 (n + 1) - (n : ℤ)).toNat

end

end A104201.P16530551939102712325

namespace A104201

/-- `A164653(A002808(n+1)-n)` -/
def P16530551939102712325.Spec : Prop :=
  ∀ n, P16530551939102712325.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P8672525693053704775

`A164653(A018252(n+2)-n)`
-/

namespace A104201.P8672525693053704775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (A018252 (n + 2) - (n : ℤ)).toNat

end

end A104201.P8672525693053704775

namespace A104201

/-- `A164653(A018252(n+2)-n)` -/
def P8672525693053704775.Spec : Prop :=
  ∀ n, P8672525693053704775.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P2010005015544991056

`A011974(A002808(n+1)-(n+1))`
-/

namespace A104201.P2010005015544991056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A002808 (n + 1) - (n + 1 : ℤ)).toNat

end

end A104201.P2010005015544991056

namespace A104201

/-- `A011974(A002808(n+1)-(n+1))` -/
def P2010005015544991056.Spec : Prop :=
  ∀ n, P2010005015544991056.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P5319391017843115754

`A001043(A002808(n+1)-(n+2))`
-/

namespace A104201.P5319391017843115754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A002808 (n + 1) - (n + 2 : ℤ)).toNat

end

end A104201.P5319391017843115754

namespace A104201

/-- `A001043(A002808(n+1)-(n+2))` -/
def P5319391017843115754.Spec : Prop :=
  ∀ n, P5319391017843115754.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P15594430934021925451

`A001043(A018252(n+2)-(n+2))`
-/

namespace A104201.P15594430934021925451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A018252 (n + 2) - (n + 2 : ℤ)).toNat

end

end A104201.P15594430934021925451

namespace A104201

/-- `A001043(A018252(n+2)-(n+2))` -/
def P15594430934021925451.Spec : Prop :=
  ∀ n, P15594430934021925451.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P10938700201780137477

`A001043(A141468(n+3)-(n+2))`
-/

namespace A104201.P10938700201780137477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A141468 (n + 3) - (n + 2 : ℤ)).toNat

end

end A104201.P10938700201780137477

namespace A104201

/-- `A001043(A141468(n+3)-(n+2))` -/
def P10938700201780137477.Spec : Prop :=
  ∀ n, P10938700201780137477.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P4336701831478210794

`A011974(lt[2, A000005(n+1)]-n)`
-/

namespace A104201.P4336701831478210794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - n)

end

end A104201.P4336701831478210794

namespace A104201

/-- `A011974(lt[2, A000005(n+1)]-n)` -/
def P4336701831478210794.Spec : Prop :=
  ∀ n, P4336701831478210794.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P11683567142033650493

`A011974(lt[A006530(n+1), n]-n)`
-/

namespace A104201.P11683567142033650493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - n)

end

end A104201.P11683567142033650493

namespace A104201

/-- `A011974(lt[A006530(n+1), n]-n)` -/
def P11683567142033650493.Spec : Prop :=
  ∀ n, P11683567142033650493.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P1134903092209291095

`A001043(∑[char[A006093(n+1)-(n+1)]]+1)`
-/

namespace A104201.P1134903092209291095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A104201.P1134903092209291095

namespace A104201

/-- `A001043(∑[char[A006093(n+1)-(n+1)]]+1)` -/
def P1134903092209291095.Spec : Prop :=
  ∀ n, P1134903092209291095.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P17374649037334610801

`A001043(A000720(A002808(n+1)))`
-/

namespace A104201.P17374649037334610801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A000720 (A002808 (n + 1)).toNat).toNat

end

end A104201.P17374649037334610801

namespace A104201

/-- `A001043(A000720(A002808(n+1)))` -/
def P17374649037334610801.Spec : Prop :=
  ∀ n, P17374649037334610801.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P7633915441196000181

`A011974(lt[A111089(n+1), n]-n)`
-/

namespace A104201.P7633915441196000181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - n)

end

end A104201.P7633915441196000181

namespace A104201

/-- `A011974(lt[A111089(n+1), n]-n)` -/
def P7633915441196000181.Spec : Prop :=
  ∀ n, P7633915441196000181.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P10858506623654620146

`A335186(A282671(n+1))`
-/

namespace A104201.P10858506623654620146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335186 (A282671 (n + 1)).toNat

end

end A104201.P10858506623654620146

namespace A104201

/-- `A335186(A282671(n+1))` -/
def P10858506623654620146.Spec : Prop :=
  ∀ n, P10858506623654620146.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P5381408072852311855

`A335186(A139270(n+2))`
-/

namespace A104201.P5381408072852311855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335186 (A139270 (n + 2)).toNat

end

end A104201.P5381408072852311855

namespace A104201

/-- `A335186(A139270(n+2))` -/
def P5381408072852311855.Spec : Prop :=
  ∀ n, P5381408072852311855.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P3214688004835851781

`A335186(A161843(n+2))`
-/

namespace A104201.P3214688004835851781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335186 (A161843 (n + 2)).toNat

end

end A104201.P3214688004835851781

namespace A104201

/-- `A335186(A161843(n+2))` -/
def P3214688004835851781.Spec : Prop :=
  ∀ n, P3214688004835851781.a n = A104201 (n + 4)

end A104201

/-! ## A104201.P17142270631116584298

`A335186(A166257(n+2))`
-/

namespace A104201.P17142270631116584298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335186 (A166257 (n + 2)).toNat

end

end A104201.P17142270631116584298

namespace A104201

/-- `A335186(A166257(n+2))` -/
def P17142270631116584298.Spec : Prop :=
  ∀ n, P17142270631116584298.a n = A104201 (n + 4)

end A104201

/-!
# A104202: Differences of straddle primes.

The programs for A104202, there is no canonical definition to state claims against.
-/

/-! ## A104202.P7577441826218376000

`A001223(comp[p?[round(8*n/7)]-2]-n)`
-/

namespace A104202.P7577441826218376000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A104202.P7577441826218376000

/-! ## A104202.P9840710700155918264

`A166597(A118742(n))`
-/

namespace A104202.P9840710700155918264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A118742 n).toNat

end

end A104202.P9840710700155918264

/-! ## A104202.P1189519516496904198

`A166597(comp[A351078(n)])`
-/

namespace A104202.P1189519516496904198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A104202.P1189519516496904198

/-! ## A104202.P17641662355023290546

`A013633(A002808(n+1))`
-/

namespace A104202.P17641662355023290546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A002808 (n + 1)).toNat

end

end A104202.P17641662355023290546

/-! ## A104202.P11171410042646306781

`A001223(A073425(n+1))`
-/

namespace A104202.P11171410042646306781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A073425 (n + 1)).toNat

end

end A104202.P11171410042646306781

/-! ## A104202.P8112125927716320228

`A054541(A073169(n+1))`
-/

namespace A104202.P8112125927716320228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A073169 (n + 1)).toNat

end

end A104202.P8112125927716320228

/-! ## A104202.P14512943080539526093

`A166597(A056653(n+1))`
-/

namespace A104202.P14512943080539526093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A056653 (n + 1)).toNat

end

end A104202.P14512943080539526093

/-! ## A104202.P17115948803741031718

`A166597(A072668(n+1))`
-/

namespace A104202.P17115948803741031718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A072668 (n + 1)).toNat

end

end A104202.P17115948803741031718

/-! ## A104202.P12958454310290096374

`A166597(A175553(n+1))`
-/

namespace A104202.P12958454310290096374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A175553 (n + 1)).toNat

end

end A104202.P12958454310290096374

/-! ## A104202.P7884364034440418477

`A335185(A282671(n+1))`
-/

namespace A104202.P7884364034440418477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335185 (A282671 (n + 1)).toNat

end

end A104202.P7884364034440418477

/-!
# A104203: Expansion of the sine lemniscate function sl(x).

The programs for A104203, there is no canonical definition to state claims against.
-/

/-! ## A104203.P8486217505499271696

`Δ[A242240(n)]*A014017(n)`
-/

namespace A104203.P8486217505499271696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A014017 n

end

end A104203.P8486217505499271696

/-! ## A104203.P5310200129119908181

`A014017(n)*A242240(n+1)`
-/

namespace A104203.P5310200129119908181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n * A242240 (n + 1)

end

end A104203.P5310200129119908181

/-! ## A104203.P3706177929531914735

`A190904(or(n, n%2+1))`
-/

namespace A104203.P3706177929531914735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190904 (Nat.lor n (n % 2 + 1))

end

end A104203.P3706177929531914735

/-! ## A104203.P6447174231066761217

`A190904(or(n, C(2, and(3, n))!))`
-/

namespace A104203.P6447174231066761217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190904 (Nat.lor n (Nat.factorial (Nat.choose 2 (Nat.land 3 n))))

end

end A104203.P6447174231066761217

/-! ## A104203.P10190123056014922015

`A000035(n+1)*A190904(n+1)`
-/

namespace A104203.P10190123056014922015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A190904 (n + 1)

end

end A104203.P10190123056014922015

/-!
# A104204: If n==0 (mod 3) then a(n)=a(n-1); if n==1 (mod 3) then a(n)=a(n-2)+a(n-3); if n==2 (mod 3) then a(n)=a(n-3)+a(n-4)+a(n-5).

The programs for A104204, the canonical program `A104204.P6341333983184832658` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104204 has offset 0).

The definition of A104204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104204.P6341333983184832658

`ogf((1+x+2x^2+x^3+3x^4-3x^6-2x^7+2x^8+2x^9-x^10-x^11)/(1-2x^3-x^6+x^9))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104204

/-- `ogf((1+x+2x^2+x^3+3x^4-3x^6-2x^7+2x^8+2x^9-x^10-x^11)/(1-2x^3-x^6+x^9))` -/
def P6341333983184832658.Spec : Prop :=
  ∀ n, P6341333983184832658.a n = A104204 n

theorem P6341333983184832658.correct : P6341333983184832658.Spec := by
  intro n
  simp only [A104204]

end A104204

/-!
# A104208: Numbers of digits in p1^p2 where p2 > p1 and (p1, p2) are twin primes.

The programs for A104208, there is no canonical definition to state claims against.
-/

/-! ## A104208.P4795123445864522509

`∑[A049604(∑[A033632(n+1)])]`
-/

namespace A104208.P4795123445864522509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033632 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049604 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104208.P4795123445864522509

/-! ## A104208.P3804996303466118434

`A104222(n+1)+A051265(A174808(n))`
-/

namespace A104208.P3804996303466118434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104222 (n + 1) + A051265 (A174808 n).toNat

end

end A104208.P3804996303466118434

/-! ## A104208.P10523637766611962594

`A358992(A001359(n+1))+A028310(n)`
-/

namespace A104208.P10523637766611962594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 (A001359 (n + 1)).toNat + A028310 n

end

end A104208.P10523637766611962594

/-!
# A104210: Positive integers divisible by at least 2 consecutive primes.

The programs for A104210, the canonical program `A104210.P6329043992730066091` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104210 has offset 1).

The definition of A104210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104210.P16211327241578963648

`eq[1, A296210(n+1)]+1`
-/

namespace A104210.P16211327241578963648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104210.P16211327241578963648

namespace A104210

/-- `eq[1, A296210(n+1)]+1` -/
def P16211327241578963648.Spec : Prop :=
  ∀ n, (P16211327241578963648.a n : ℤ) = A104210 (n + 1)

end A104210

/-! ## A104210.P6329043992730066091

`eq[1, A297173(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A104210

/-- `eq[1, A297173(n+1)]+1` -/
def P6329043992730066091.Spec : Prop :=
  ∀ n, (P6329043992730066091.a n : ℤ) = A104210 (n + 1)

theorem P6329043992730066091.correct : P6329043992730066091.Spec := by
  intro n
  simp only [A104210, Nat.add_sub_cancel]

end A104210

/-! ## A104210.P9818708148952253810

`lt[1, A300820(n+1)]+1`
-/

namespace A104210.P9818708148952253810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104210.P9818708148952253810

namespace A104210

/-- `lt[1, A300820(n+1)]+1` -/
def P9818708148952253810.Spec : Prop :=
  ∀ n, (P9818708148952253810.a n : ℤ) = A104210 (n + 1)

end A104210

/-! ## A104210.P16745863598324152807

`lt[1, A330749(n+1)]+1`
-/

namespace A104210.P16745863598324152807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104210.P16745863598324152807

namespace A104210

/-- `lt[1, A330749(n+1)]+1` -/
def P16745863598324152807.Spec : Prop :=
  ∀ n, (P16745863598324152807.a n : ℤ) = A104210 (n + 1)

end A104210

/-! ## A104210.P13281290134042605720

`filter[A344180(n), A296210(#)]`
-/

namespace A104210.P13281290134042605720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A104210.P13281290134042605720

namespace A104210

/-- `filter[A344180(n), A296210(#)]` -/
def P13281290134042605720.Spec : Prop :=
  ∀ n, P13281290134042605720.a n = A104210 (n + 1)

end A104210

/-! ## A104210.P8508505887094506405

`eq[1, A025480(a(A297173(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A104210.P8508505887094506405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A025480 (f2 (A297173 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104210.P8508505887094506405

namespace A104210

/-- `eq[1, A025480(a(A297173(n)))]` -/
def P8508505887094506405.Spec : Prop :=
  ∀ n, (P8508505887094506405.a n : ℤ) = A104210 (n + 1)

end A104210

/-! ## A104210.P2246348982121077058

`eq[2, A000040(a(A297173(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A104210.P2246348982121077058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000040 (f2 (A297173 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104210.P2246348982121077058

namespace A104210

/-- `eq[2, A000040(a(A297173(n)))]` -/
def P2246348982121077058.Spec : Prop :=
  ∀ n, (P2246348982121077058.a n : ℤ) = A104210 (n + 1)

end A104210

/-! ## A104210.P5228632768205365229

`filter[A305980(n+1), A296210(#)]`
-/

namespace A104210.P5228632768205365229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A104210.P5228632768205365229

namespace A104210

/-- `filter[A305980(n+1), A296210(#)]` -/
def P5228632768205365229.Spec : Prop :=
  ∀ n, P5228632768205365229.a n = A104210 (n + 1)

end A104210

/-! ## A104210.P14072331935188810683

`filter[A289509(n+2), A296210(#)]`
-/

namespace A104210.P14072331935188810683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A104210.P14072331935188810683

namespace A104210

/-- `filter[A289509(n+2), A296210(#)]` -/
def P14072331935188810683.Spec : Prop :=
  ∀ n, P14072331935188810683.a n = A104210 (n + 1)

end A104210

/-! ## A104210.P8382689673690149372

`filter[A005279(n+1), A296210(#)]`
-/

namespace A104210.P8382689673690149372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A104210.P8382689673690149372

namespace A104210

/-- `filter[A005279(n+1), A296210(#)]` -/
def P8382689673690149372.Spec : Prop :=
  ∀ n, P8382689673690149372.a n = A104210 (n + 1)

end A104210

/-! ## A104210.P11622697712022181569

`lt[1, A322361(n+1)]+1`
-/

namespace A104210.P11622697712022181569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104210.P11622697712022181569

namespace A104210

/-- `lt[1, A322361(n+1)]+1` -/
def P11622697712022181569.Spec : Prop :=
  ∀ n, (P11622697712022181569.a n : ℤ) = A104210 (n + 1)

end A104210

/-! ## A104210.P2707949402820553147

`lt[A348990(n+1), n]+1`
-/

namespace A104210.P2707949402820553147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A104210.P2707949402820553147

namespace A104210

/-- `lt[A348990(n+1), n]+1` -/
def P2707949402820553147.Spec : Prop :=
  ∀ n, (P2707949402820553147.a n : ℤ) = A104210 (n + 1)

end A104210

/-! ## A104210.P15897605427945932922

`eq[2, 2%A322361(n+2)]+2`
-/

namespace A104210.P15897605427945932922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A322361 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A104210.P15897605427945932922

namespace A104210

/-- `eq[2, 2%A322361(n+2)]+2` -/
def P15897605427945932922.Spec : Prop :=
  ∀ n, (P15897605427945932922.a n : ℤ) = A104210 (n + 1)

end A104210

/-! ## A104210.P13587549030408484536

`filter[A002808(n+1), A296210(#)]`
-/

namespace A104210.P13587549030408484536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A104210.P13587549030408484536

namespace A104210

/-- `filter[A002808(n+1), A296210(#)]` -/
def P13587549030408484536.Spec : Prop :=
  ∀ n, P13587549030408484536.a n = A104210 (n + 1)

end A104210

/-! ## A104210.P4279984906513858679

`eq[1, A133388(a(A322361(n)))]` with `a(0)=2, a(1)=4`
-/

namespace A104210.P4279984906513858679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  A133388 (f2 (A322361 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104210.P4279984906513858679

namespace A104210

/-- `eq[1, A133388(a(A322361(n)))]` -/
def P4279984906513858679.Spec : Prop :=
  ∀ n, (P4279984906513858679.a n : ℤ) = A104210 (n + 1)

end A104210

/-! ## A104210.P12704929776936442346

`filter[A350803(n+1), A296210(#)]`
-/

namespace A104210.P12704929776936442346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A104210.P12704929776936442346

namespace A104210

/-- `filter[A350803(n+1), A296210(#)]` -/
def P12704929776936442346.Spec : Prop :=
  ∀ n, P12704929776936442346.a n = A104210 (n + 1)

end A104210

/-! ## A104210.P11662368089697273802

`filter[A024619(n+1), A296210(#)]`
-/

namespace A104210.P11662368089697273802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A104210.P11662368089697273802

namespace A104210

/-- `filter[A024619(n+1), A296210(#)]` -/
def P11662368089697273802.Spec : Prop :=
  ∀ n, P11662368089697273802.a n = A104210 (n + 1)

end A104210

/-! ## A104210.P15265688749470908538

`filter[A361102(n+1), A296210(#)]`
-/

namespace A104210.P15265688749470908538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A104210.P15265688749470908538

namespace A104210

/-- `filter[A361102(n+1), A296210(#)]` -/
def P15265688749470908538.Spec : Prop :=
  ∀ n, P15265688749470908538.a n = A104210 (n + 1)

end A104210

/-! ## A104210.P13410402300201252597

`filter[A387335(n+1), A296210(#)]`
-/

namespace A104210.P13410402300201252597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A104210.P13410402300201252597

namespace A104210

/-- `filter[A387335(n+1), A296210(#)]` -/
def P13410402300201252597.Spec : Prop :=
  ∀ n, P13410402300201252597.a n = A104210 (n + 1)

end A104210

/-! ## A104210.P17615816790031245132

`filter[A139118(n+1), A296210(#)]`
-/

namespace A104210.P17615816790031245132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A104210.P17615816790031245132

namespace A104210

/-- `filter[A139118(n+1), A296210(#)]` -/
def P17615816790031245132.Spec : Prop :=
  ∀ n, P17615816790031245132.a n = A104210 (n + 1)

end A104210

/-!
# A104211: Integers n such that the sum of the digits of n is not prime.

The programs for A104211, the canonical program `A104211.P8119416011438240202` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104211 has offset 1).

The definition of A104211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104211.P17813460440009023849

`comp[A129630(n+1)]+1`
-/

namespace A104211.P17813460440009023849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A104211.P17813460440009023849

namespace A104211

/-- `comp[A129630(n+1)]+1` -/
def P17813460440009023849.Spec : Prop :=
  ∀ n, (P17813460440009023849.a n : ℤ) = A104211 (n + 1)

end A104211

/-! ## A104211.P16547730412943110026

`comp[A028834(n+1)-1]+1`
-/

namespace A104211.P16547730412943110026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A104211.P16547730412943110026

namespace A104211

/-- `comp[A028834(n+1)-1]+1` -/
def P16547730412943110026.Spec : Prop :=
  ∀ n, (P16547730412943110026.a n : ℤ) = A104211 (n + 1)

end A104211

/-! ## A104211.P8119416011438240202

`eq[0, A055672(∑{digits}[n+1, #])]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A104211

/-- `eq[0, A055672(∑{digits}[n+1, #])]+1` -/
def P8119416011438240202.Spec : Prop :=
  ∀ n, (P8119416011438240202.a n : ℤ) = A104211 (n + 1)

theorem P8119416011438240202.correct : P8119416011438240202.Spec := by
  intro n
  simp only [A104211, Nat.add_sub_cancel]

end A104211

/-! ## A104211.P11474506915437442670

`record[n+1-A055671(∑{digits}[n+1, #])]`
-/

namespace A104211.P11474506915437442670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055671 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104211.P11474506915437442670

namespace A104211

/-- `record[n+1-A055671(∑{digits}[n+1, #])]` -/
def P11474506915437442670.Spec : Prop :=
  ∀ n, P11474506915437442670.a n = A104211 (n + 1)

end A104211

/-! ## A104211.P756743334832932990

`lt[n*A105700(A118881(n)), n]`
-/

namespace A104211.P756743334832932990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105700 (A118881 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104211.P756743334832932990

namespace A104211

/-- `lt[n*A105700(A118881(n)), n]` -/
def P756743334832932990.Spec : Prop :=
  ∀ n, (P756743334832932990.a n : ℤ) = A104211 (n + 1)

end A104211

/-! ## A104211.P10984585069154462503

`eq[1, A005171(A007953(n+1))]+1`
-/

namespace A104211.P10984585069154462503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A007953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104211.P10984585069154462503

namespace A104211

/-- `eq[1, A005171(A007953(n+1))]+1` -/
def P10984585069154462503.Spec : Prop :=
  ∀ n, (P10984585069154462503.a n : ℤ) = A104211 (n + 1)

end A104211

/-! ## A104211.P4265627199984695306

`eq[A000038(n), A055671(A062028(n)-n)]`
-/

namespace A104211.P4265627199984695306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104211.P4265627199984695306

namespace A104211

/-- `eq[A000038(n), A055671(A062028(n)-n)]` -/
def P4265627199984695306.Spec : Prop :=
  ∀ n, (P4265627199984695306.a n : ℤ) = A104211 (n + 1)

end A104211

/-! ## A104211.P16733574498863805979

`lt[A105700(A007953(n)²)², A002828(n)]`
-/

namespace A104211.P16733574498863805979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007953 n ^ 2).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104211.P16733574498863805979

namespace A104211

/-- `lt[A105700(A007953(n)²)², A002828(n)]` -/
def P16733574498863805979.Spec : Prop :=
  ∀ n, (P16733574498863805979.a n : ℤ) = A104211 (n + 1)

end A104211

/-! ## A104211.P14619601431148782734

`lt[∑{p}[A007953(n), #], A007953(n)]`
-/

namespace A104211.P14619601431148782734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A104211.P14619601431148782734

namespace A104211

/-- `lt[∑{p}[A007953(n), #], A007953(n)]` -/
def P14619601431148782734.Spec : Prop :=
  ∀ n, (P14619601431148782734.a n : ℤ) = A104211 (n + 1)

end A104211

/-! ## A104211.P10486757591229783432

`record[n+1-A055671(n+1-A066568(n+1))]`
-/

namespace A104211.P10486757591229783432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055671 ((n + 1 : ℤ) - A066568 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104211.P10486757591229783432

namespace A104211

/-- `record[n+1-A055671(n+1-A066568(n+1))]` -/
def P10486757591229783432.Spec : Prop :=
  ∀ n, P10486757591229783432.a n = A104211 (n + 1)

end A104211

/-! ## A104211.P14587045091247729891

`eq[A000007(n), A055671(A062028(n)-n)]`
-/

namespace A104211.P14587045091247729891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104211.P14587045091247729891

namespace A104211

/-- `eq[A000007(n), A055671(A062028(n)-n)]` -/
def P14587045091247729891.Spec : Prop :=
  ∀ n, (P14587045091247729891.a n : ℤ) = A104211 (n + 1)

end A104211

/-! ## A104211.P12007302304621196099

`∪[A141640(n+1), A141641(n+1)]`
-/

namespace A104211.P12007302304621196099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104211.P12007302304621196099

namespace A104211

/-- `∪[A141640(n+1), A141641(n+1)]` -/
def P12007302304621196099.Spec : Prop :=
  ∀ n, (P12007302304621196099.a n : ℤ) = A104211 (n + 1)

end A104211

/-! ## A104211.P9563337985676258735

`eq[A055671(2*(n+1)), A055671(A007953(n))]`
-/

namespace A104211.P9563337985676258735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104211.P9563337985676258735

namespace A104211

/-- `eq[A055671(2*(n+1)), A055671(A007953(n))]` -/
def P9563337985676258735.Spec : Prop :=
  ∀ n, (P9563337985676258735.a n : ℤ) = A104211 (n + 1)

end A104211

/-! ## A104211.P3850248268181921770

`eq[A055671(A007953(n)), A090192(2*n)]`
-/

namespace A104211.P3850248268181921770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104211.P3850248268181921770

namespace A104211

/-- `eq[A055671(A007953(n)), A090192(2*n)]` -/
def P3850248268181921770.Spec : Prop :=
  ∀ n, (P3850248268181921770.a n : ℤ) = A104211 (n + 1)

end A104211

/-!
# A104212: Sum of the digits of n when the sum is prime.

The programs for A104212, there is no canonical definition to state claims against.
-/

/-! ## A104212.P18195469929520626426

`∑{digits}[A028834(n+1), #]`
-/

namespace A104212.P18195469929520626426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A104212.P18195469929520626426

/-! ## A104212.P4533565144148711393

`∑{digits}[A129630(n+1)+1, #]`
-/

namespace A104212.P4533565144148711393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A104212.P4533565144148711393

/-! ## A104212.P13929179568348256435

`p?[A037123(n+1)-A037123(n)]`
-/

namespace A104212.P13929179568348256435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (n + 1) - A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104212.P13929179568348256435

/-! ## A104212.P1410631198822826769

`p?[∑{digits}[n+2, #]]`
-/

namespace A104212.P1410631198822826769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A104212.P1410631198822826769

/-! ## A104212.P2309952344798721008

`p?[Δ[A037123(n+1)]]`
-/

namespace A104212.P2309952344798721008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104212.P2309952344798721008

/-! ## A104212.P17206089166674808520

`p?[A160931(n+1)-(n+1)]`
-/

namespace A104212.P17206089166674808520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160931 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104212.P17206089166674808520

/-! ## A104212.P18401790042213576352

`p?[A007953(n)]`
-/

namespace A104212.P18401790042213576352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104212.P18401790042213576352

/-! ## A104212.P11614011272803841043

`p?[A062028(n)-n]`
-/

namespace A104212.P11614011272803841043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104212.P11614011272803841043

/-! ## A104212.P3290556789805212206

`p?[n-A066568(n)]`
-/

namespace A104212.P3290556789805212206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A066568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104212.P3290556789805212206

/-! ## A104212.P5367848203753748416

`p?[A160939(n+1)-(n+1)]`
-/

namespace A104212.P5367848203753748416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104212.P5367848203753748416

/-! ## A104212.P17296803296372443078

`A007953(A028834(n+1))`
-/

namespace A104212.P17296803296372443078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A028834 (n + 1)).toNat

end

end A104212.P17296803296372443078

/-! ## A104212.P13607278959729455857

`p?[A062329(n)+A007954(n)]`
-/

namespace A104212.P13607278959729455857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + A007954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104212.P13607278959729455857

/-! ## A104212.P2741019290590374302

`p?[A061762(n)-A007954(n)]`
-/

namespace A104212.P2741019290590374302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n - A007954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104212.P2741019290590374302

/-! ## A104212.P1578747202413608958

`A007953(A129630(n+1)+1)`
-/

namespace A104212.P1578747202413608958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A129630 (n + 1) + 1).toNat

end

end A104212.P1578747202413608958

/-! ## A104212.P11023409064460585911

`filter[A007953(n+1), A010051(#)]`
-/

namespace A104212.P11023409064460585911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A104212.P11023409064460585911

/-!
# A104213: Primes with nonprime sums of digits.

The programs for A104213, the canonical program `A104213.P5615323875581109589` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104213 has offset 1).

The definition of A104213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 878 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104213.P5615323875581109589

`p?[A104211(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A104213

/-- `p?[A104211(n+1)]` -/
def P5615323875581109589.Spec : Prop :=
  ∀ n, P5615323875581109589.a n = A104213 (n + 1)

theorem P5615323875581109589.correct : P5615323875581109589.Spec := by
  intro n
  simp only [A104213, Nat.add_sub_cancel]

end A104213

/-! ## A104213.P8246974491399141040

`p?[comp[A028834(n+1)]]`
-/

namespace A104213.P8246974491399141040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A104213.P8246974491399141040

namespace A104213

/-- `p?[comp[A028834(n+1)]]` -/
def P8246974491399141040.Spec : Prop :=
  ∀ n, (P8246974491399141040.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P5788475181085276548

`filter[A104211(n+1), A010051(#)]`
-/

namespace A104213.P5788475181085276548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A104213.P5788475181085276548

namespace A104213

/-- `filter[A104211(n+1), A010051(#)]` -/
def P5788475181085276548.Spec : Prop :=
  ∀ n, P5788475181085276548.a n = A104213 (n + 1)

end A104213

/-! ## A104213.P4347432326873345167

`∩[A000040(n+1), A104211(n+1)]`
-/

namespace A104213.P4347432326873345167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104213.P4347432326873345167

namespace A104213

/-- `∩[A000040(n+1), A104211(n+1)]` -/
def P4347432326873345167.Spec : Prop :=
  ∀ n, (P4347432326873345167.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P17102482337278547846

`∩[A004139(n+1), A104211(n+1)]`
-/

namespace A104213.P17102482337278547846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104213.P17102482337278547846

namespace A104213

/-- `∩[A004139(n+1), A104211(n+1)]` -/
def P17102482337278547846.Spec : Prop :=
  ∀ n, (P17102482337278547846.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P7775924267976955653

`∩[A045319(n+1), A104211(n+1)]`
-/

namespace A104213.P7775924267976955653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104213.P7775924267976955653

namespace A104213

/-- `∩[A045319(n+1), A104211(n+1)]` -/
def P7775924267976955653.Spec : Prop :=
  ∀ n, (P7775924267976955653.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P8952856956273138264

`∩[A045344(n+1), A104211(n+1)]`
-/

namespace A104213.P8952856956273138264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104213.P8952856956273138264

namespace A104213

/-- `∩[A045344(n+1), A104211(n+1)]` -/
def P8952856956273138264.Spec : Prop :=
  ∀ n, (P8952856956273138264.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P15654628126932634749

`∩[A065091(n+1), A104211(n+1)]`
-/

namespace A104213.P15654628126932634749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104213.P15654628126932634749

namespace A104213

/-- `∩[A065091(n+1), A104211(n+1)]` -/
def P15654628126932634749.Spec : Prop :=
  ∀ n, (P15654628126932634749.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P1304651672563634625

`∩[A104211(n+1), A108719(n+1)]`
-/

namespace A104213.P1304651672563634625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104213.P1304651672563634625

namespace A104213

/-- `∩[A104211(n+1), A108719(n+1)]` -/
def P1304651672563634625.Spec : Prop :=
  ∀ n, (P1304651672563634625.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P2416352626133041393

`∩[A104211(n+1), A182986(n+1)]`
-/

namespace A104213.P2416352626133041393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104213.P2416352626133041393

namespace A104213

/-- `∩[A104211(n+1), A182986(n+1)]` -/
def P2416352626133041393.Spec : Prop :=
  ∀ n, (P2416352626133041393.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P6762799051906824310

`∩[A104211(n+1), A215848(n+1)]`
-/

namespace A104213.P6762799051906824310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104213.P6762799051906824310

namespace A104213

/-- `∩[A104211(n+1), A215848(n+1)]` -/
def P6762799051906824310.Spec : Prop :=
  ∀ n, (P6762799051906824310.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P15956945622409866570

`p?[lt[2, A306509(n+1)]+1]`
-/

namespace A104213.P15956945622409866570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A104213.P15956945622409866570

namespace A104213

/-- `p?[lt[2, A306509(n+1)]+1]` -/
def P15956945622409866570.Spec : Prop :=
  ∀ n, (P15956945622409866570.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P13832050685893488740

`record[A014963(A104211(n+7))]`
-/

namespace A104213.P13832050685893488740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A104211 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104213.P13832050685893488740

namespace A104213

/-- `record[A014963(A104211(n+7))]` -/
def P13832050685893488740.Spec : Prop :=
  ∀ n, P13832050685893488740.a n = A104213 (n + 1)

end A104213

/-! ## A104213.P18011804993330331385

`filter[A104211(n+1), A171387(#)]`
-/

namespace A104213.P18011804993330331385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A104213.P18011804993330331385

namespace A104213

/-- `filter[A104211(n+1), A171387(#)]` -/
def P18011804993330331385.Spec : Prop :=
  ∀ n, P18011804993330331385.a n = A104213 (n + 1)

end A104213

/-! ## A104213.P11701256701286323964

`filter[A104211(n+2), A080339(#)]`
-/

namespace A104213.P11701256701286323964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A104213.P11701256701286323964

namespace A104213

/-- `filter[A104211(n+2), A080339(#)]` -/
def P11701256701286323964.Spec : Prop :=
  ∀ n, P11701256701286323964.a n = A104213 (n + 1)

end A104213

/-! ## A104213.P7214928373260728449

`filter[A104211(n+2), A080545(#)]`
-/

namespace A104213.P7214928373260728449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A104213.P7214928373260728449

namespace A104213

/-- `filter[A104211(n+2), A080545(#)]` -/
def P7214928373260728449.Spec : Prop :=
  ∀ n, P7214928373260728449.a n = A104213 (n + 1)

end A104213

/-! ## A104213.P10482986509800622846

`∩[A091923(n+1), A104211(n+1)]`
-/

namespace A104213.P10482986509800622846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104213.P10482986509800622846

namespace A104213

/-- `∩[A091923(n+1), A104211(n+1)]` -/
def P10482986509800622846.Spec : Prop :=
  ∀ n, (P10482986509800622846.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P10202355905069018538

`eq[A051699(n), A055671(A007953(n))]`
-/

namespace A104213.P10202355905069018538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104213.P10202355905069018538

namespace A104213

/-- `eq[A051699(n), A055671(A007953(n))]` -/
def P10202355905069018538.Spec : Prop :=
  ∀ n, (P10202355905069018538.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P9862877096475515060

`lt[A003415(n)², A003415(A007953(n))]`
-/

namespace A104213.P9862877096475515060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104213.P9862877096475515060

namespace A104213

/-- `lt[A003415(n)², A003415(A007953(n))]` -/
def P9862877096475515060.Spec : Prop :=
  ∀ n, (P9862877096475515060.a n : ℤ) = A104213 (n + 1)

end A104213

/-! ## A104213.P14263486082946874137

`lt[A032741(n)², A032741(A007953(n))]`
-/

namespace A104213.P14263486082946874137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104213.P14263486082946874137

namespace A104213

/-- `lt[A032741(n)², A032741(A007953(n))]` -/
def P14263486082946874137.Spec : Prop :=
  ∀ n, (P14263486082946874137.a n : ℤ) = A104213 (n + 1)

end A104213

/-!
# A104214: Numbers n such that the sum of the digits of the n-th lower twin prime is prime.

The programs for A104214, there is no canonical definition to state claims against.
-/

/-! ## A104214.P1498998811128741624

`eq[2, A306509(A181747(n+1))]`
-/

namespace A104214.P1498998811128741624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (A181747 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104214.P1498998811128741624

/-! ## A104214.P15917741407971175160

`eq[2, A306509(A144834(n+1)+1)]+1`
-/

namespace A104214.P15917741407971175160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (A144834 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104214.P15917741407971175160

/-! ## A104214.P381730798047134298

`eq[1, A054024(∑{digits}[A001359(n+1), #])]+1`
-/

namespace A104214.P381730798047134298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104214.P381730798047134298

/-! ## A104214.P2328468749446394955

`lt[A001222(∑{digits}[A001359(n+1), #]), 2]+1`
-/

namespace A104214.P2328468749446394955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A104214.P2328468749446394955

/-! ## A104214.P8883821126565993060

`lt[A000005(∑{digits}[A001359(n+1), #])², 14]+1`
-/

namespace A104214.P8883821126565993060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A104214.P8883821126565993060

/-!
# A104216: Primes p such that the sum of the digits of the p-th lower twin prime is a lower twin prime.

The programs for A104216, there is no canonical definition to state claims against.
-/

/-! ## A104216.P7728510227118711612

`p?[A104215(n+1)]`
-/

namespace A104216.P7728510227118711612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104216.P7728510227118711612

/-! ## A104216.P11029989844561013459

`p?[record[A104215(A154958(n))]]`
-/

namespace A104216.P11029989844561013459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104215 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104216.P11029989844561013459

/-! ## A104216.P17242219271349858004

`p?[record[A104215(A291769(n))]]`
-/

namespace A104216.P17242219271349858004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104215 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104216.P17242219271349858004

/-! ## A104216.P14716874926424442626

`record[A006530(A104215(n+2))]`
-/

namespace A104216.P14716874926424442626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104215 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104216.P14716874926424442626

/-! ## A104216.P17555840812991097656

`filter[A104215(n+1), A010051(#)]`
-/

namespace A104216.P17555840812991097656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A104216.P17555840812991097656

/-!
# A104219: Triangle read by rows: T(n,k) is number of Schroeder paths of length 2n and having k peaks at height 1, for 0 <= k <= n.

The programs for A104219, the canonical program `A104219.P7379330912832028178` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104219 has offset 0).

The definition of A104219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104219.P7379330912832028178

`A011117(A061579(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104219

/-- `A011117(A061579(n))` -/
def P7379330912832028178.Spec : Prop :=
  ∀ n, P7379330912832028178.a n = A104219 n

theorem P7379330912832028178.correct : P7379330912832028178.Spec := by
  intro n
  simp only [A104219]

end A104219

/-! ## A104219.P18446267814822134691

`A011117(A114327(n)+n)`
-/

namespace A104219.P18446267814822134691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A114327 n + (n : ℤ)).toNat

end

end A104219.P18446267814822134691

namespace A104219

/-- `A011117(A114327(n)+n)` -/
def P18446267814822134691.Spec : Prop :=
  ∀ n, P18446267814822134691.a n = A104219 n

end A104219

/-! ## A104219.P2251818151022973564

`A011117(∑[A198954(n)-1])`
-/

namespace A104219.P2251818151022973564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104219.P2251818151022973564

namespace A104219

/-- `A011117(∑[A198954(n)-1])` -/
def P2251818151022973564.Spec : Prop :=
  ∀ n, P2251818151022973564.a n = A104219 n

end A104219

/-! ## A104219.P2466270586957079105

`A011117(A038722(n+1)-1)`
-/

namespace A104219.P2466270586957079105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A038722 (n + 1) - 1).toNat

end

end A104219.P2466270586957079105

namespace A104219

/-- `A011117(A038722(n+1)-1)` -/
def P2466270586957079105.Spec : Prop :=
  ∀ n, P2466270586957079105.a n = A104219 n

end A104219

/-! ## A104219.P7821759403645261734

`A011117(A002024(n+1)²-(n+1))`
-/

namespace A104219.P7821759403645261734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A104219.P7821759403645261734

namespace A104219

/-- `A011117(A002024(n+1)²-(n+1))` -/
def P7821759403645261734.Spec : Prop :=
  ∀ n, P7821759403645261734.a n = A104219 n

end A104219

/-! ## A104219.P4917094825833661286

`A011117(A057944(n)+A025581(n))`
-/

namespace A104219.P4917094825833661286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A057944 n + A025581 n).toNat

end

end A104219.P4917094825833661286

namespace A104219

/-- `A011117(A057944(n)+A025581(n))` -/
def P4917094825833661286.Spec : Prop :=
  ∀ n, P4917094825833661286.a n = A104219 n

end A104219

/-! ## A104219.P4369857733170252366

`A011117(A038722(n+2))`
-/

namespace A104219.P4369857733170252366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A038722 (n + 2)).toNat

end

end A104219.P4369857733170252366

namespace A104219

/-- `A011117(A038722(n+2))` -/
def P4369857733170252366.Spec : Prop :=
  ∀ n, P4369857733170252366.a n = A104219 n

end A104219

/-!
# A104220: a(n) = 1 + Fibonacci(n) - (Fibonacci(n) mod 2).

The programs for A104220, the canonical program `A104220.P9596488223206580704` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104220 has offset 0).

The definition of A104220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A000045(n)-A000045(n)%2` (program `A104220.P9596488223206580704`, by `A104220.P9596488223206580704.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104220.P17120753710326429319

`ogf((1-x^2-x^4)/(1-x-x^2-x^3+x^4+x^5))`
-/

namespace A104220.P17120753710326429319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 0, -1] [1, -1, -1, -1, 1, 1] n

end

end A104220.P17120753710326429319

namespace A104220

/-- `ogf((1-x^2-x^4)/(1-x-x^2-x^3+x^4+x^5))` -/
def P17120753710326429319.Spec : Prop :=
  ∀ n, P17120753710326429319.a n = A104220 n

end A104220

/-! ## A104220.P9596488223206580704

`1+A000045(n)-A000045(n)%2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104220

/-- `1+A000045(n)-A000045(n)%2` -/
def P9596488223206580704.Spec : Prop :=
  ∀ n, P9596488223206580704.a n = A104220 n

theorem P9596488223206580704.correct : P9596488223206580704.Spec := by
  intro n
  simp only [A104220]

end A104220

/-! ## A104220.P7232764550967379200

`or(1, ∑[a(n-2)+a(n-1)])` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A104220.P7232764550967379200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104220.P7232764550967379200

namespace A104220

/-- `or(1, ∑[a(n-2)+a(n-1)])` -/
def P7232764550967379200.Spec : Prop :=
  ∀ n, (P7232764550967379200.a n : ℤ) = A104220 n

end A104220

/-! ## A104220.P5539736698119288992

`gcd(3, n)-2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A104220.P5539736698119288992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.gcd 3 n : ℤ) - 2 + (a (n - 1) + a (n - 2))

end

end A104220.P5539736698119288992

namespace A104220

/-- `gcd(3, n)-2+a(n-1)+a(n-2)` -/
def P5539736698119288992.Spec : Prop :=
  ∀ n, P5539736698119288992.a n = A104220 n

end A104220

/-! ## A104220.P12515184110780931794

`A104221(n)+1`
-/

namespace A104220.P12515184110780931794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 n + 1

end

end A104220.P12515184110780931794

namespace A104220

/-- `A104221(n)+1` -/
def P12515184110780931794.Spec : Prop :=
  ∀ n, P12515184110780931794.a n = A104220 n

theorem P12515184110780931794.correct : P12515184110780931794.Spec := by
  intro n
  simp only [A104220, Nat.add_sub_cancel, A104220.P12515184110780931794.a, A104220.P9596488223206580704.a, A000045, A000045.P11838749114346432762.a, A104221, A104221.P10742156069593710407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104220

/-! ## A104220.P9670267655824710565

`or(1, A000045(n))`
-/

namespace A104220.P9670267655824710565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000045 n)

end

end A104220.P9670267655824710565

namespace A104220

/-- `or(1, A000045(n))` -/
def P9670267655824710565.Spec : Prop :=
  ∀ n, P9670267655824710565.a n = A104220 n

end A104220

/-! ## A104220.P11556852091632160389

`2*A004695(n)+1`
-/

namespace A104220.P11556852091632160389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004695 n + 1

end

end A104220.P11556852091632160389

namespace A104220

/-- `2*A004695(n)+1` -/
def P11556852091632160389.Spec : Prop :=
  ∀ n, P11556852091632160389.a n = A104220 n

end A104220

/-! ## A104220.P5421544029294500501

`2*A147997(n)-1`
-/

namespace A104220.P5421544029294500501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147997 n - 1

end

end A104220.P5421544029294500501

namespace A104220

/-- `2*A147997(n)-1` -/
def P5421544029294500501.Spec : Prop :=
  ∀ n, P5421544029294500501.a n = A104220 n

end A104220

/-! ## A104220.P11874406097792159460

`or(1, A212804(n+1))`
-/

namespace A104220.P11874406097792159460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A212804 (n + 1))

end

end A104220.P11874406097792159460

namespace A104220

/-- `or(1, A212804(n+1))` -/
def P11874406097792159460.Spec : Prop :=
  ∀ n, P11874406097792159460.a n = A104220 n

end A104220

/-! ## A104220.P3277788179324338268

`or(1, A324969(n+1))`
-/

namespace A104220.P3277788179324338268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A324969 (n + 1))

end

end A104220.P3277788179324338268

namespace A104220

/-- `or(1, A324969(n+1))` -/
def P3277788179324338268.Spec : Prop :=
  ∀ n, P3277788179324338268.a n = A104220 n

end A104220

/-! ## A104220.P14414823313741260736

`or(1, A001611(n)-1)`
-/

namespace A104220.P14414823313741260736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001611 n - 1)

end

end A104220.P14414823313741260736

namespace A104220

/-- `or(1, A001611(n)-1)` -/
def P14414823313741260736.Spec : Prop :=
  ∀ n, P14414823313741260736.a n = A104220 n

end A104220

/-! ## A104220.P8109265354631189685

`or(1, A103609(2*n))`
-/

namespace A104220.P8109265354631189685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103609 (2 * n))

end

end A104220.P8109265354631189685

namespace A104220

/-- `or(1, A103609(2*n))` -/
def P8109265354631189685.Spec : Prop :=
  ∀ n, P8109265354631189685.a n = A104220 n

end A104220

/-! ## A104220.P16085405352147960063

`2*A173673(2*n)+1`
-/

namespace A104220.P16085405352147960063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173673 (2 * n) + 1

end

end A104220.P16085405352147960063

namespace A104220

/-- `2*A173673(2*n)+1` -/
def P16085405352147960063.Spec : Prop :=
  ∀ n, P16085405352147960063.a n = A104220 n

end A104220

/-! ## A104220.P7858993372701902422

`or(1, A129982(2*n+1))`
-/

namespace A104220.P7858993372701902422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A129982 (2 * n + 1))

end

end A104220.P7858993372701902422

namespace A104220

/-- `or(1, A129982(2*n+1))` -/
def P7858993372701902422.Spec : Prop :=
  ∀ n, P7858993372701902422.a n = A104220 n

end A104220

/-! ## A104220.P6775347684917437362

`a(n-3)+2*A000045(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A104220.P6775347684917437362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + 2 * A000045 (n - 2)

end

end A104220.P6775347684917437362

namespace A104220

/-- `a(n-3)+2*A000045(n-2)` -/
def P6775347684917437362.Spec : Prop :=
  ∀ n, P6775347684917437362.a n = A104220 n

end A104220

/-! ## A104220.P1475739588811471742

`A079978(n)+A000045(n)`
-/

namespace A104220.P1475739588811471742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + A000045 n

end

end A104220.P1475739588811471742

namespace A104220

/-- `A079978(n)+A000045(n)` -/
def P1475739588811471742.Spec : Prop :=
  ∀ n, P1475739588811471742.a n = A104220 n

end A104220

/-! ## A104220.P7264651826134246248

`A147997(n)+A004695(n)`
-/

namespace A104220.P7264651826134246248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 n + A004695 n

end

end A104220.P7264651826134246248

namespace A104220

/-- `A147997(n)+A004695(n)` -/
def P7264651826134246248.Spec : Prop :=
  ∀ n, P7264651826134246248.a n = A104220 n

end A104220

/-! ## A104220.P7008512020911407121

`A001611(n)-A011655(n)`
-/

namespace A104220.P7008512020911407121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A011655 n

end

end A104220.P7008512020911407121

namespace A104220

/-- `A001611(n)-A011655(n)` -/
def P7008512020911407121.Spec : Prop :=
  ∀ n, P7008512020911407121.a n = A104220 n

end A104220

/-! ## A104220.P17908983388794318852

`A157725(n)-A130196(n)`
-/

namespace A104220.P17908983388794318852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - A130196 n

end

end A104220.P17908983388794318852

namespace A104220

/-- `A157725(n)-A130196(n)` -/
def P17908983388794318852.Spec : Prop :=
  ∀ n, P17908983388794318852.a n = A104220 n

end A104220

/-! ## A104220.P13153363599622189644

`A147534(n+1)+A065220(n)`
-/

namespace A104220.P13153363599622189644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (n + 1) + A065220 n

end

end A104220.P13153363599622189644

namespace A104220

/-- `A147534(n+1)+A065220(n)` -/
def P13153363599622189644.Spec : Prop :=
  ∀ n, P13153363599622189644.a n = A104220 n

end A104220

/-!
# A104221: a(n) = Fibonacci(n) - (Fibonacci(n) mod 2).

The programs for A104221, the canonical program `A104221.P10742156069593710407` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104221 has offset 0).

The definition of A104221 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)-A000045(n)%2` (program `A104221.P10742156069593710407`, by `A104221.P10742156069593710407.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104221.P10170146213161668115

`ogf(2x^3/(1-x-x^2-x^3+x^4+x^5))`
-/

namespace A104221.P10170146213161668115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 2] [1, -1, -1, -1, 1, 1] n

end

end A104221.P10170146213161668115

namespace A104221

/-- `ogf(2x^3/(1-x-x^2-x^3+x^4+x^5))` -/
def P10170146213161668115.Spec : Prop :=
  ∀ n, P10170146213161668115.a n = A104221 n

end A104221

/-! ## A104221.P14710829544417749963

`2*A004695(n)`
-/

namespace A104221.P14710829544417749963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004695 n

end

end A104221.P14710829544417749963

namespace A104221

/-- `2*A004695(n)` -/
def P14710829544417749963.Spec : Prop :=
  ∀ n, P14710829544417749963.a n = A104221 n

end A104221

/-! ## A104221.P10896784117162257993

`2*floor(A000045(n)/2)`
-/

namespace A104221.P10896784117162257993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A000045 n : ℚ) / 2⌋

end

end A104221.P10896784117162257993

namespace A104221

/-- `2*floor(A000045(n)/2)` -/
def P10896784117162257993.Spec : Prop :=
  ∀ n, P10896784117162257993.a n = A104221 n

end A104221

/-! ## A104221.P18193387533714323500

`A000045(n)-A011655(n)`
-/

namespace A104221.P18193387533714323500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A011655 n

end

end A104221.P18193387533714323500

namespace A104221

/-- `A000045(n)-A011655(n)` -/
def P18193387533714323500.Spec : Prop :=
  ∀ n, P18193387533714323500.a n = A104221 n

end A104221

/-! ## A104221.P10742156069593710407

`A000045(n)-A000045(n)%2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104221

/-- `A000045(n)-A000045(n)%2` -/
def P10742156069593710407.Spec : Prop :=
  ∀ n, P10742156069593710407.a n = A104221 n

theorem P10742156069593710407.correct : P10742156069593710407.Spec := by
  intro n
  simp only [A104221]

end A104221

/-! ## A104221.P476556635167633355

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=2`
-/

namespace A104221.P476556635167633355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2, 2] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4) - a (n - 5)

end

end A104221.P476556635167633355

namespace A104221

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P476556635167633355.Spec : Prop :=
  ∀ n, P476556635167633355.a n = A104221 n

end A104221

/-! ## A104221.P9836033367199714178

`gcd(3, n)-1+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A104221.P9836033367199714178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Nat.gcd 3 n : ℤ) - 1 + (a (n - 1) + a (n - 2))

end

end A104221.P9836033367199714178

namespace A104221

/-- `gcd(3, n)-1+a(n-1)+a(n-2)` -/
def P9836033367199714178.Spec : Prop :=
  ∀ n, P9836033367199714178.a n = A104221 n

end A104221

/-! ## A104221.P1012717739937093854

`A104220(n)-1`
-/

namespace A104221.P1012717739937093854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104220 n - 1

end

end A104221.P1012717739937093854

namespace A104221

/-- `A104220(n)-1` -/
def P1012717739937093854.Spec : Prop :=
  ∀ n, P1012717739937093854.a n = A104221 n

theorem P1012717739937093854.correct : P1012717739937093854.Spec := by
  intro n
  simp only [A104221, Nat.add_sub_cancel, A104221.P1012717739937093854.a, A104221.P10742156069593710407.a, A000045, A000045.P11838749114346432762.a, A104220, A104220.P9596488223206580704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104221

/-! ## A104221.P4793930308272237027

`2*(A147997(n)-1)`
-/

namespace A104221.P4793930308272237027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A147997 n - 1)

end

end A104221.P4793930308272237027

namespace A104221

/-- `2*(A147997(n)-1)` -/
def P4793930308272237027.Spec : Prop :=
  ∀ n, P4793930308272237027.a n = A104221 n

end A104221

/-! ## A104221.P12498073503842080986

`2*A173673(2*n)`
-/

namespace A104221.P12498073503842080986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173673 (2 * n)

end

end A104221.P12498073503842080986

namespace A104221

/-- `2*A173673(2*n)` -/
def P12498073503842080986.Spec : Prop :=
  ∀ n, P12498073503842080986.a n = A104221 n

end A104221

/-! ## A104221.P17846478620070389285

`or(1, A000045(n))-1`
-/

namespace A104221.P17846478620070389285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000045 n) - 1

end

end A104221.P17846478620070389285

namespace A104221

/-- `or(1, A000045(n))-1` -/
def P17846478620070389285.Spec : Prop :=
  ∀ n, P17846478620070389285.a n = A104221 n

end A104221

/-! ## A104221.P1736688891280978336

`or(1, A212804(n+1))-1`
-/

namespace A104221.P1736688891280978336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A212804 (n + 1)) - 1

end

end A104221.P1736688891280978336

namespace A104221

/-- `or(1, A212804(n+1))-1` -/
def P1736688891280978336.Spec : Prop :=
  ∀ n, P1736688891280978336.a n = A104221 n

end A104221

/-! ## A104221.P7749088375530129705

`or(1, A324969(n+1))-1`
-/

namespace A104221.P7749088375530129705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A324969 (n + 1)) - 1

end

end A104221.P7749088375530129705

namespace A104221

/-- `or(1, A324969(n+1))-1` -/
def P7749088375530129705.Spec : Prop :=
  ∀ n, P7749088375530129705.a n = A104221 n

end A104221

/-! ## A104221.P7396101722139808155

`a(n-3)+2*A000045(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A104221.P7396101722139808155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 3) + 2 * A000045 (n - 2)

end

end A104221.P7396101722139808155

namespace A104221

/-- `a(n-3)+2*A000045(n-2)` -/
def P7396101722139808155.Spec : Prop :=
  ∀ n, P7396101722139808155.a n = A104221 n

end A104221

/-! ## A104221.P3116971711447261898

`A001611(n)-A130196(n)`
-/

namespace A104221.P3116971711447261898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A130196 n

end

end A104221.P3116971711447261898

namespace A104221

/-- `A001611(n)-A130196(n)` -/
def P3116971711447261898.Spec : Prop :=
  ∀ n, P3116971711447261898.a n = A104221 n

end A104221

/-! ## A104221.P10203056047726186733

`and(A000045(n), A113679(n))`
-/

namespace A104221.P10203056047726186733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 n) (A113679 n)

end

end A104221.P10203056047726186733

namespace A104221

/-- `and(A000045(n), A113679(n))` -/
def P10203056047726186733.Spec : Prop :=
  ∀ n, P10203056047726186733.a n = A104221 n

end A104221

/-! ## A104221.P14653632178063060531

`A000045(n)-A128834(n)²`
-/

namespace A104221.P14653632178063060531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A128834 n ^ 2

end

end A104221.P14653632178063060531

namespace A104221

/-- `A000045(n)-A128834(n)²` -/
def P14653632178063060531.Spec : Prop :=
  ∀ n, P14653632178063060531.a n = A104221 n

end A104221

/-! ## A104221.P4144356421848548259

`A001611(n)-(A011655(n)+1)`
-/

namespace A104221.P4144356421848548259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (A011655 n + 1)

end

end A104221.P4144356421848548259

namespace A104221

/-- `A001611(n)-(A011655(n)+1)` -/
def P4144356421848548259.Spec : Prop :=
  ∀ n, P4144356421848548259.a n = A104221 n

end A104221

/-! ## A104221.P12150219923655109282

`A000045(n)+A079978(n)-1`
-/

namespace A104221.P12150219923655109282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A079978 n - 1)

end

end A104221.P12150219923655109282

namespace A104221

/-- `A000045(n)+A079978(n)-1` -/
def P12150219923655109282.Spec : Prop :=
  ∀ n, P12150219923655109282.a n = A104221 n

end A104221

/-! ## A104221.P16748577780773682290

`A000045(n)+1-A130196(n)`
-/

namespace A104221.P16748577780773682290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (1 - A130196 n)

end

end A104221.P16748577780773682290

namespace A104221

/-- `A000045(n)+1-A130196(n)` -/
def P16748577780773682290.Spec : Prop :=
  ∀ n, P16748577780773682290.a n = A104221 n

end A104221

/-!
# A104222: Number of digits in p2^p1 where p2 > p1 and (p1,p2) are twin primes.

The programs for A104222, there is no canonical definition to state claims against.
-/

/-! ## A104222.P726836607484385162

`A358992(A001359(n+1))+A358992(A358993(n))`
-/

namespace A104222.P726836607484385162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 (A001359 (n + 1)).toNat + A358992 (A358993 n).toNat

end

end A104222.P726836607484385162

/-!
# A104224: Sum of the smallest and the largest n-digit primes.

The programs for A104224, there is no canonical definition to state claims against.
-/

/-! ## A104224.P15684200640220328599

`A003618(n+1)+A003617(n+1)`
-/

namespace A104224.P15684200640220328599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) + A003617 (n + 1)

end

end A104224.P15684200640220328599

/-! ## A104224.P7112562940038182090

`A101592(Δ[n²])+A003618(n+1)`
-/

namespace A104224.P7112562940038182090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A003618 (n + 1)

end

end A104224.P7112562940038182090

/-! ## A104224.P15729555723872710644

`A139052(Δ[n²])+A003618(n+1)`
-/

namespace A104224.P15729555723872710644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A003618 (n + 1)

end

end A104224.P15729555723872710644

/-! ## A104224.P16972602546808595636

`A073862(n+1)+2*A003617(n+1)`
-/

namespace A104224.P16972602546808595636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073862 (n + 1) + 2 * A003617 (n + 1)

end

end A104224.P16972602546808595636

/-! ## A104224.P8753061519107293757

`A101592(2*(n+1))+A003617(n+1)`
-/

namespace A104224.P8753061519107293757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * (n + 1)) + A003617 (n + 1)

end

end A104224.P8753061519107293757

/-!
# A104226: Product of the smallest and largest n-digit primes.

The programs for A104226, there is no canonical definition to state claims against.
-/

/-! ## A104226.P12379762189339225904

`A003617(n+1)*A003618(n+1)`
-/

namespace A104226.P12379762189339225904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) * A003618 (n + 1)

end

end A104226.P12379762189339225904

/-! ## A104226.P13318807337256900352

`A003618(n+1)*A131581(2*n)`
-/

namespace A104226.P13318807337256900352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) * A131581 (2 * n)

end

end A104226.P13318807337256900352

/-! ## A104226.P9213180739353647381

`A003617(n+1)*A101592(2*(n+1))`
-/

namespace A104226.P9213180739353647381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) * A101592 (2 * (n + 1))

end

end A104226.P9213180739353647381

/-! ## A104226.P6547358432988464518

`A003618(n+1)*A101592(2*n+1)`
-/

namespace A104226.P6547358432988464518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) * A101592 (2 * n + 1)

end

end A104226.P6547358432988464518

/-! ## A104226.P1133331535848147807

`A003618(n+1)*A139052(2*n+1)`
-/

namespace A104226.P1133331535848147807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) * A139052 (2 * n + 1)

end

end A104226.P1133331535848147807

/-!
# A104227: Primes one less than the sum over a sexy prime pair.

The programs for A104227, the canonical program `A104227.P10518120145948658045` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104227 has offset 1).

The definition of A104227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104227.P10518120145948658045

`p?[A104010(n+1)-1]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A104227

/-- `p?[A104010(n+1)-1]` -/
def P10518120145948658045.Spec : Prop :=
  ∀ n, P10518120145948658045.a n = A104227 (n + 1)

theorem P10518120145948658045.correct : P10518120145948658045.Spec := by
  intro n
  simp only [A104227, Nat.add_sub_cancel]

end A104227

/-! ## A104227.P12443849486279919736

`p?[2*A087695(n+1)-1]`
-/

namespace A104227.P12443849486279919736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087695 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P12443849486279919736

namespace A104227

/-- `p?[2*A087695(n+1)-1]` -/
def P12443849486279919736.Spec : Prop :=
  ∀ n, P12443849486279919736.a n = A104227 (n + 1)

end A104227

/-! ## A104227.P16527556671681396553

`p?[4*A088763(n+1)-1]`
-/

namespace A104227.P16527556671681396553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088763 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P16527556671681396553

namespace A104227

/-- `p?[4*A088763(n+1)-1]` -/
def P16527556671681396553.Spec : Prop :=
  ∀ n, P16527556671681396553.a n = A104227 (n + 1)

end A104227

/-! ## A104227.P3141170044412592249

`p?[2*A023201(n+1)+5]`
-/

namespace A104227.P3141170044412592249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023201 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P3141170044412592249

namespace A104227

/-- `p?[2*A023201(n+1)+5]` -/
def P3141170044412592249.Spec : Prop :=
  ∀ n, P3141170044412592249.a n = A104227 (n + 1)

theorem P3141170044412592249.correct : P3141170044412592249.Spec := by
  intro n
  simp only [A104227, Nat.add_sub_cancel, A104227.P3141170044412592249.f1, A104227.P3141170044412592249.a, A104227.P10518120145948658045.f1, A104227.P10518120145948658045.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A104010, A104010.P5743034670165287868.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A087695, A087695.P4000952237766351123.a, A046117, A046117.P460302525211984613.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104227

/-! ## A104227.P6507349573831066541

`p?[2*A046117(n+1)-7]`
-/

namespace A104227.P6507349573831066541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046117 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P6507349573831066541

namespace A104227

/-- `p?[2*A046117(n+1)-7]` -/
def P6507349573831066541.Spec : Prop :=
  ∀ n, P6507349573831066541.a n = A104227 (n + 1)

theorem P6507349573831066541.correct : P6507349573831066541.Spec := by
  intro n
  simp only [A104227, Nat.add_sub_cancel, A104227.P6507349573831066541.f1, A104227.P6507349573831066541.a, A104227.P10518120145948658045.f1, A104227.P10518120145948658045.a, A046117, A046117.P460302525211984613.a, A104010, A104010.P5743034670165287868.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A087695, A087695.P4000952237766351123.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A281006, A281006.P4753203276795461863.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104227

/-! ## A104227.P15579499650745231356

`p?[A023201(n+1)+A046117(n+1)-1]`
-/

namespace A104227.P15579499650745231356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) + (A046117 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P15579499650745231356

namespace A104227

/-- `p?[A023201(n+1)+A046117(n+1)-1]` -/
def P15579499650745231356.Spec : Prop :=
  ∀ n, P15579499650745231356.a n = A104227 (n + 1)

theorem P15579499650745231356.correct : P15579499650745231356.Spec := by
  intro n
  simp only [A104227, Nat.add_sub_cancel, A104227.P15579499650745231356.f1, A104227.P15579499650745231356.a, A104227.P10518120145948658045.f1, A104227.P10518120145948658045.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A046117, A046117.P460302525211984613.a, A104010, A104010.P5743034670165287868.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A087695, A087695.P4000952237766351123.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104227

/-! ## A104227.P11664807075080199657

`p?[A023201(n+1)+A087695(n+1)+2]`
-/

namespace A104227.P11664807075080199657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) + (A087695 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P11664807075080199657

namespace A104227

/-- `p?[A023201(n+1)+A087695(n+1)+2]` -/
def P11664807075080199657.Spec : Prop :=
  ∀ n, P11664807075080199657.a n = A104227 (n + 1)

theorem P11664807075080199657.correct : P11664807075080199657.Spec := by
  intro n
  simp only [A104227, Nat.add_sub_cancel, A104227.P11664807075080199657.f1, A104227.P11664807075080199657.a, A104227.P10518120145948658045.f1, A104227.P10518120145948658045.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A087695, A087695.P4000952237766351123.a, A104010, A104010.P5743034670165287868.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A046117, A046117.P460302525211984613.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104227

/-! ## A104227.P188656326399104978

`p?[A087695(n+2)+A087695(n+2)-1]`
-/

namespace A104227.P188656326399104978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 2) + (A087695 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P188656326399104978

namespace A104227

/-- `p?[A087695(n+2)+A087695(n+2)-1]` -/
def P188656326399104978.Spec : Prop :=
  ∀ n, P188656326399104978.a n = A104227 (n + 1)

end A104227

/-! ## A104227.P10623090114895892784

`∩[A008578(n+1), A104010(n+1)-1]`
-/

namespace A104227.P10623090114895892784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104010 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104227.P10623090114895892784

namespace A104227

/-- `∩[A008578(n+1), A104010(n+1)-1]` -/
def P10623090114895892784.Spec : Prop :=
  ∀ n, (P10623090114895892784.a n : ℤ) = A104227 (n + 1)

end A104227

/-! ## A104227.P12344081358231785079

`record[A006530(A104010(n+2)-1)]`
-/

namespace A104227.P12344081358231785079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104010 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104227.P12344081358231785079

namespace A104227

/-- `record[A006530(A104010(n+2)-1)]` -/
def P12344081358231785079.Spec : Prop :=
  ∀ n, P12344081358231785079.a n = A104227 (n + 1)

end A104227

/-! ## A104227.P15654145175965693628

`record[A020639(A104010(n+2)-1)]`
-/

namespace A104227.P15654145175965693628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104010 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104227.P15654145175965693628

namespace A104227

/-- `record[A020639(A104010(n+2)-1)]` -/
def P15654145175965693628.Spec : Prop :=
  ∀ n, P15654145175965693628.a n = A104227 (n + 1)

end A104227

/-! ## A104227.P9231871699046932465

`p?[A005408(A023201(n+1)+2)]`
-/

namespace A104227.P9231871699046932465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A023201 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P9231871699046932465

namespace A104227

/-- `p?[A005408(A023201(n+1)+2)]` -/
def P9231871699046932465.Spec : Prop :=
  ∀ n, P9231871699046932465.a n = A104227 (n + 1)

end A104227

/-! ## A104227.P8206249675331968942

`p?[A020742(A023201(n+1)-1)]`
-/

namespace A104227.P8206249675331968942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A023201 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P8206249675331968942

namespace A104227

/-- `p?[A020742(A023201(n+1)-1)]` -/
def P8206249675331968942.Spec : Prop :=
  ∀ n, P8206249675331968942.a n = A104227 (n + 1)

end A104227

/-! ## A104227.P10877625598684955420

`p?[A005408(A087695(n+1)-1)]`
-/

namespace A104227.P10877625598684955420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A087695 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P10877625598684955420

namespace A104227

/-- `p?[A005408(A087695(n+1)-1)]` -/
def P10877625598684955420.Spec : Prop :=
  ∀ n, P10877625598684955420.a n = A104227 (n + 1)

end A104227

/-! ## A104227.P7703928830378708027

`record[A076565(A087695(n+2)-1)]`
-/

namespace A104227.P7703928830378708027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A087695 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104227.P7703928830378708027

namespace A104227

/-- `record[A076565(A087695(n+2)-1)]` -/
def P7703928830378708027.Spec : Prop :=
  ∀ n, P7703928830378708027.a n = A104227 (n + 1)

end A104227

/-! ## A104227.P10341531904476438737

`p?[A004280(A046117(n+1)-2)]`
-/

namespace A104227.P10341531904476438737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A046117 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104227.P10341531904476438737

namespace A104227

/-- `p?[A004280(A046117(n+1)-2)]` -/
def P10341531904476438737.Spec : Prop :=
  ∀ n, P10341531904476438737.a n = A104227 (n + 1)

end A104227

/-!
# A104228: Primes one larger than the sum over a sexy prime pair.

The programs for A104228, there is no canonical definition to state claims against.
-/

/-! ## A104228.P18391463242468940729

`p?[A104010(n+1)+1]`
-/

namespace A104228.P18391463242468940729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104228.P18391463242468940729

/-! ## A104228.P5274061945347840062

`p?[2*A087695(n+1)+1]`
-/

namespace A104228.P5274061945347840062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087695 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104228.P5274061945347840062

/-! ## A104228.P4117073365792092847

`p?[4*A088763(n+1)+1]`
-/

namespace A104228.P4117073365792092847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088763 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104228.P4117073365792092847

/-! ## A104228.P14724399906817436757

`p?[2*A046117(n+1)-5]`
-/

namespace A104228.P14724399906817436757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046117 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104228.P14724399906817436757

/-! ## A104228.P13414814038376253308

`p?[2*A023201(n+1)+7]`
-/

namespace A104228.P13414814038376253308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023201 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104228.P13414814038376253308

/-! ## A104228.P2763423678001380010

`record[A076565(A087695(n+1))]`
-/

namespace A104228.P2763423678001380010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A087695 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104228.P2763423678001380010

/-! ## A104228.P3420936791625612302

`p?[A020742(A023201(n+1))]`
-/

namespace A104228.P3420936791625612302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A023201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104228.P3420936791625612302

/-! ## A104228.P12155427190255622197

`record[A006530(A104010(n+1)+1)]`
-/

namespace A104228.P12155427190255622197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104010 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104228.P12155427190255622197

/-! ## A104228.P18270674295901420303

`record[A020639(A104010(n+1)+1)]`
-/

namespace A104228.P18270674295901420303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104010 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104228.P18270674295901420303

/-! ## A104228.P10061727350506662259

`p?[A004280(A046117(n+1)-1)]`
-/

namespace A104228.P10061727350506662259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A046117 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104228.P10061727350506662259

/-!
# A104229: Primes equal to the product of two successive sexy primes plus 6.

The programs for A104229, there is no canonical definition to state claims against.
-/

/-! ## A104229.P2892044600493736657

`p?[A111192(n+1)+6]`
-/

namespace A104229.P2892044600493736657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111192 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104229.P2892044600493736657

/-! ## A104229.P280872597922943994

`p?[A087695(n+1)²-3]`
-/

namespace A104229.P280872597922943994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104229.P280872597922943994

/-! ## A104229.P12730436674760963703

`p?[(A023201(n+1)+3)²-3]`
-/

namespace A104229.P12730436674760963703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023201 (n + 1) + 3) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104229.P12730436674760963703

/-! ## A104229.P14288329650459241364

`p?[(2*A088763(n+1))²-3]`
-/

namespace A104229.P14288329650459241364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A088763 (n + 1)) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104229.P14288329650459241364

/-! ## A104229.P5388820517834450931

`p?[A028872(A087695(n+1))]`
-/

namespace A104229.P5388820517834450931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A087695 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104229.P5388820517834450931

/-!
# A104230: Minimal number of primes needed to sum to n^2.

The programs for A104230, there is no canonical definition to state claims against.
-/

/-! ## A104230.P10829788650993324594

`A051034(A000290(n+2))`
-/

namespace A104230.P10829788650993324594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051034 (A000290 (n + 2)).toNat

end

end A104230.P10829788650993324594

/-! ## A104230.P13173010288587789814

`A051034((n+2)²)`
-/

namespace A104230.P13173010288587789814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051034 ((n + 2) ^ 2)

end

end A104230.P13173010288587789814

/-! ## A104230.P6406718421654720181

`A270003((n+2)²-2)`
-/

namespace A104230.P6406718421654720181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270003 ((n + 2) ^ 2 - 2)

end

end A104230.P6406718421654720181

/-! ## A104230.P9510504610661943715

`and(1, A106544(n+2))+2`
-/

namespace A104230.P9510504610661943715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A106544 (n + 2)) + 2

end

end A104230.P9510504610661943715

/-! ## A104230.P13329911840712653657

`(Δ[A106544(n+1)]%(n+1))²+2`
-/

namespace A104230.P13329911840712653657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ) ^ 2 + 2

end

end A104230.P13329911840712653657

/-! ## A104230.P5220578108948883210

`A010693(A106544(n+2))`
-/

namespace A104230.P5220578108948883210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A106544 (n + 2)).toNat

end

end A104230.P5220578108948883210

/-! ## A104230.P4599194646237389351

`A319956(A106545(n+2))`
-/

namespace A104230.P4599194646237389351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319956 (A106545 (n + 2)).toNat

end

end A104230.P4599194646237389351

/-! ## A104230.P8791491729492315841

`A072491(A141310(n+1)²)`
-/

namespace A104230.P8791491729492315841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A141310 (n + 1) ^ 2).toNat

end

end A104230.P8791491729492315841

/-! ## A104230.P2166829403420912571

`p?[and(n, A001221(A087420(n+1)))]`
-/

namespace A104230.P2166829403420912571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A001221 (A087420 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104230.P2166829403420912571

/-! ## A104230.P15808758436812389340

`A020639(A106544(n+2)+1)+1`
-/

namespace A104230.P15808758436812389340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A106544 (n + 2) + 1).toNat + 1

end

end A104230.P15808758436812389340

/-!
# A104231: Triangle read by rows, based on the morphism f: 1->2, 2->3, 3->{3,3,5,4}, 4->5, 5->6, 6->{6,6,2,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A104231, there is no canonical definition to state claims against.
-/

/-! ## A104231.P5539007219074668255

`A105112(n)-A004530(A000799(n+1))`
-/

namespace A104231.P5539007219074668255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105112 n - A004530 (A000799 (n + 1)).toNat

end

end A104231.P5539007219074668255

/-! ## A104231.P9852161260045297445

`A000120(∑[(n+1)^A337605(n)])`
-/

namespace A104231.P9852161260045297445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A337605 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A104231.P9852161260045297445

/-! ## A104231.P12567535612305944606

`A000120(∑[A007318(A226541(n))])`
-/

namespace A104231.P12567535612305944606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A226541 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104231.P12567535612305944606

/-! ## A104231.P8277164987015986514

`A000120(∑[A000225(A147381(n+1))])`
-/

namespace A104231.P8277164987015986514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A147381 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104231.P8277164987015986514

/-! ## A104231.P932745199923594081

`A227944(A002729(n)*A007425(2*n+3))`
-/

namespace A104231.P932745199923594081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (A002729 n * A007425 (2 * n + 3)).toNat

end

end A104231.P932745199923594081

/-!
# A104232: Triangle read by rows, based on the morphism f: 1->2, 2->3, 3->{2,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A104232, there is no canonical definition to state claims against.
-/

/-! ## A104232.P6503740341701601499

`(A105102(n)-1)%3+1`
-/

namespace A104232.P6503740341701601499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105102 n - 1) 3 + 1

end

end A104232.P6503740341701601499

/-! ## A104232.P2538720122671141376

`A002828(lcm((-1)^n, A105102(n)))`
-/

namespace A104232.P2538720122671141376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.lcm ((-1) ^ n) (A105102 n))

end

end A104232.P2538720122671141376

/-! ## A104232.P3139399922836545144

`(A128467(n)+A105102(n))%3+1`
-/

namespace A104232.P3139399922836545144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128467 n + A105102 n) 3 + 1

end

end A104232.P3139399922836545144

/-! ## A104232.P10418723786407485785

`(A141852(C(2, n+2)+1)+A105102(n))%3+1`
-/

namespace A104232.P10418723786407485785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141852 (Nat.choose 2 (n + 2) + 1) + A105102 n) 3 + 1

end

end A104232.P10418723786407485785

/-! ## A104232.P16616759570287411181

`(A112405(val(n²+1, 2)+1)+A105102(n))%3+1`
-/

namespace A104232.P16616759570287411181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112405 (SequenceMachineLib.valuation (n ^ 2 + 1) 2 + 1) + A105102 n) 3 + 1

end

end A104232.P16616759570287411181

/-! ## A104232.P15742819029879612676

`A002828(A105102(n)*A123726(n))`
-/

namespace A104232.P15742819029879612676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A105102 n * A123726 n).toNat

end

end A104232.P15742819029879612676

/-! ## A104232.P7801214280822692650

`A010882(A105102(n)+n-A010882(n))`
-/

namespace A104232.P7801214280822692650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A105102 n + ((n : ℤ) - A010882 n)).toNat

end

end A104232.P7801214280822692650

/-! ## A104232.P6528114203578958335

`A010882(n-(A010882(n)-A105102(n)))`
-/

namespace A104232.P6528114203578958335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 ((n : ℤ) - (A010882 n - A105102 n)).toNat

end

end A104232.P6528114203578958335

/-! ## A104232.P7235750736155512021

`(A171977(2*n+5)+A105102(n))%3+1`
-/

namespace A104232.P7235750736155512021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171977 (2 * n + 5) + A105102 n) 3 + 1

end

end A104232.P7235750736155512021

/-! ## A104232.P4961745501571589390

`A010882(A128467(n)+A105102(n))`
-/

namespace A104232.P4961745501571589390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A128467 n + A105102 n).toNat

end

end A104232.P4961745501571589390

/-! ## A104232.P3065947062537508803

`A010882(A107190(n+1)+A105102(n))`
-/

namespace A104232.P3065947062537508803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A107190 (n + 1) + A105102 n).toNat

end

end A104232.P3065947062537508803

/-! ## A104232.P7370156235271176667

`A053737(A162510(n+1)²*A105102(n))`
-/

namespace A104232.P7370156235271176667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A162510 (n + 1) ^ 2 * A105102 n).toNat

end

end A104232.P7370156235271176667

/-!
# A104233: Positive integers which have a "compact" representation using fewer decimal digits than just writing the number normally.

The programs for A104233, there is no canonical definition to state claims against.
-/

/-! ## A104233.P9843550343958514410

`A111231(A045918(n)-2)`
-/

namespace A104233.P9843550343958514410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111231 (A045918 n - 2).toNat

end

end A104233.P9843550343958514410

/-! ## A104233.P16848334690232165413

`A111231(A039723(n)+8)`
-/

namespace A104233.P16848334690232165413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111231 (A039723 n + 8).toNat

end

end A104233.P16848334690232165413

/-! ## A104233.P17938754126223247752

`A111231(A046469(n)+8)`
-/

namespace A104233.P17938754126223247752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111231 (A046469 n + 8).toNat

end

end A104233.P17938754126223247752

/-! ## A104233.P17891516719341021036

`A111231(A051022(n)+8)`
-/

namespace A104233.P17891516719341021036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111231 (A051022 n + 8).toNat

end

end A104233.P17891516719341021036

/-! ## A104233.P15619743130671191661

`A076467(A087051(n)+8)`
-/

namespace A104233.P15619743130671191661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (A087051 n + 8).toNat

end

end A104233.P15619743130671191661

/-!
# A104234: Number of k >= 1 such that k+n == 0 mod 2^k.

The programs for A104234, there is no canonical definition to state claims against.
-/

/-! ## A104234.P16362047915733189910

`∑{d}[A105023(n), #%2]`
-/

namespace A104234.P16362047915733189910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A104234.P16362047915733189910

/-! ## A104234.P15087950227261563681

`A000120(A103185(n))`
-/

namespace A104234.P15087950227261563681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A103185 n).toNat

end

end A104234.P15087950227261563681

/-! ## A104234.P9256108212297202108

`A000120(A105023(n))`
-/

namespace A104234.P9256108212297202108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105023 n).toNat

end

end A104234.P9256108212297202108

/-! ## A104234.P5694672841102814052

`A139355(A103185(n)²)`
-/

namespace A104234.P5694672841102814052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A103185 n ^ 2).toNat

end

end A104234.P5694672841102814052

/-! ## A104234.P14836846474025254939

`A001221(A103185(n)+1)`
-/

namespace A104234.P14836846474025254939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103185 n + 1).toNat

end

end A104234.P14836846474025254939

/-! ## A104234.P5460659002553685524

`A048881(2*A103185(n))`
-/

namespace A104234.P5460659002553685524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A103185 n).toNat

end

end A104234.P5460659002553685524

/-! ## A104234.P4974364532012150165

`A000120(A102370(n)-n)`
-/

namespace A104234.P4974364532012150165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A102370 n - (n : ℤ)).toNat

end

end A104234.P4974364532012150165

/-! ## A104234.P10524770734837585982

`A048881(A102370(n)-n)`
-/

namespace A104234.P10524770734837585982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A102370 n - (n : ℤ)).toNat

end

end A104234.P10524770734837585982

/-! ## A104234.P1050419332456378777

`A001221(or(1, A102370(n))-n)`
-/

namespace A104234.P1050419332456378777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 1 (A102370 n) - (n : ℤ)).toNat

end

end A104234.P1050419332456378777

/-! ## A104234.P10632567821802679904

`A001222(or(1, A102370(n))-n)`
-/

namespace A104234.P10632567821802679904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 1 (A102370 n) - (n : ℤ)).toNat

end

end A104234.P10632567821802679904

/-! ## A104234.P12629721835887339506

`∑{p}[A103185(n)+1, A001222(#)]`
-/

namespace A104234.P12629721835887339506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A104234.P12629721835887339506

/-! ## A104234.P1373335181668312286

`A001222(∏{p}[A103185(n)+1, #])`
-/

namespace A104234.P1373335181668312286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A104234.P1373335181668312286

/-! ## A104234.P5989869724123329987

`∑{e}[A000005(A103185(n)+1), #]`
-/

namespace A104234.P5989869724123329987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A103185 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104234.P5989869724123329987

/-! ## A104234.P12803011001799649540

`∑{e}[A103185(n)+1, A000010(#)]`
-/

namespace A104234.P12803011001799649540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A104234.P12803011001799649540

/-! ## A104234.P6088700068376084015

`A001222(∏{p}[2*A103185(n), #])`
-/

namespace A104234.P6088700068376084015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A104234.P6088700068376084015

/-! ## A104234.P11993825922789787127

`∑{p}[n-A102370(n), A001222(#)]`
-/

namespace A104234.P11993825922789787127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A102370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A104234.P11993825922789787127

/-! ## A104234.P10507706622888669226

`A001221(∏{p}[n-A102370(n), #])`
-/

namespace A104234.P10507706622888669226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A102370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A104234.P10507706622888669226

/-! ## A104234.P82564439559860374

`A001222(∏{p}[n-A102370(n), #])`
-/

namespace A104234.P82564439559860374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A102370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A104234.P82564439559860374

/-! ## A104234.P820900781171267002

`A001222(4*39*A103185(n)+1)`
-/

namespace A104234.P820900781171267002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (39 * A103185 n) + 1).toNat

end

end A104234.P820900781171267002

/-! ## A104234.P12249293212116067660

`A001221((A102370(n)-n)/2+1)`
-/

namespace A104234.P12249293212116067660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A102370 n - (n : ℤ) : ℚ) / 2 + 1)).toNat

end

end A104234.P12249293212116067660

/-!
# A104235: Numbers n such that A102370(n) = n.

The programs for A104235, the canonical program `A104235.P9319615713035384455` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104235 has offset 1).

The definition of A104235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5939 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104235.P9319615713035384455

`comp[or(n, n+1)-val(n+1, 2)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104235

/-- `comp[or(n, n+1)-val(n+1, 2)]` -/
def P9319615713035384455.Spec : Prop :=
  ∀ n, (P9319615713035384455.a n : ℤ) = A104235 (n + 1)

theorem P9319615713035384455.correct : P9319615713035384455.Spec := by
  intro n
  simp only [A104235, Nat.add_sub_cancel]

end A104235

/-! ## A104235.P13264061657206959211

`4*A104401(n)`
-/

namespace A104235.P13264061657206959211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A104401 n

end

end A104235.P13264061657206959211

namespace A104235

/-- `4*A104401(n)` -/
def P13264061657206959211.Spec : Prop :=
  ∀ n, P13264061657206959211.a n = A104235 (n + 1)

end A104235

/-! ## A104235.P12264082716334306722

`A008586(A104401(n))`
-/

namespace A104235.P12264082716334306722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A104401 n).toNat

end

end A104235.P12264082716334306722

namespace A104235

/-- `A008586(A104401(n))` -/
def P12264082716334306722.Spec : Prop :=
  ∀ n, P12264082716334306722.a n = A104235 (n + 1)

end A104235

/-! ## A104235.P5490654953681638210

`eq[1, A227287(n)]`
-/

namespace A104235.P5490654953681638210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227287 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104235.P5490654953681638210

namespace A104235

/-- `eq[1, A227287(n)]` -/
def P5490654953681638210.Spec : Prop :=
  ∀ n, (P5490654953681638210.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P4104106290790211860

`eq[n, A102370(n)]`
-/

namespace A104235.P4104106290790211860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104235.P4104106290790211860

namespace A104235

/-- `eq[n, A102370(n)]` -/
def P4104106290790211860.Spec : Prop :=
  ∀ n, (P4104106290790211860.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P1368255479045590769

`filter[2*n, A227287(#)]`
-/

namespace A104235.P1368255479045590769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A227287 (f1 j) = 1) n)

end

end A104235.P1368255479045590769

namespace A104235

/-- `filter[2*n, A227287(#)]` -/
def P1368255479045590769.Spec : Prop :=
  ∀ n, (P1368255479045590769.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P16252095417925057029

`A102370(lt[A102370(n), n+1])`
-/

namespace A104235.P16252095417925057029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A104235.P16252095417925057029

namespace A104235

/-- `A102370(lt[A102370(n), n+1])` -/
def P16252095417925057029.Spec : Prop :=
  ∀ n, P16252095417925057029.a n = A104235 (n + 1)

end A104235

/-! ## A104235.P17339396329663239052

`lt[A003415(A102370(n)-n), 1]`
-/

namespace A104235.P17339396329663239052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A102370 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104235.P17339396329663239052

namespace A104235

/-- `lt[A003415(A102370(n)-n), 1]` -/
def P17339396329663239052.Spec : Prop :=
  ∀ n, (P17339396329663239052.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P10129444821562529100

`lt[A003817(A102370(n)-n), 1]`
-/

namespace A104235.P10129444821562529100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A102370 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104235.P10129444821562529100

namespace A104235

/-- `lt[A003817(A102370(n)-n), 1]` -/
def P10129444821562529100.Spec : Prop :=
  ∀ n, (P10129444821562529100.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P2113223134729109953

`lt[A055649(A102370(n)-n), 1]`
-/

namespace A104235.P2113223134729109953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 (A102370 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104235.P2113223134729109953

namespace A104235

/-- `lt[A055649(A102370(n)-n), 1]` -/
def P2113223134729109953.Spec : Prop :=
  ∀ n, (P2113223134729109953.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P16417820760575311702

`A102370(lt[A102370(n)-1, n])`
-/

namespace A104235.P16417820760575311702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A104235.P16417820760575311702

namespace A104235

/-- `A102370(lt[A102370(n)-1, n])` -/
def P16417820760575311702.Spec : Prop :=
  ∀ n, P16417820760575311702.a n = A104235 (n + 1)

end A104235

/-! ## A104235.P10982279635144443338

`eq[0, A103185(n)]`
-/

namespace A104235.P10982279635144443338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104235.P10982279635144443338

namespace A104235

/-- `eq[0, A103185(n)]` -/
def P10982279635144443338.Spec : Prop :=
  ∀ n, (P10982279635144443338.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P1832309110838640622

`eq[0, A105023(n)]`
-/

namespace A104235.P1832309110838640622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104235.P1832309110838640622

namespace A104235

/-- `eq[0, A105023(n)]` -/
def P1832309110838640622.Spec : Prop :=
  ∀ n, (P1832309110838640622.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P18071416020061704463

`eq[n+1, A105228(n+1)]`
-/

namespace A104235.P18071416020061704463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104235.P18071416020061704463

namespace A104235

/-- `eq[n+1, A105228(n+1)]` -/
def P18071416020061704463.Spec : Prop :=
  ∀ n, (P18071416020061704463.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P15902579135489692667

`eq[A007088(n), A103542(n)]`
-/

namespace A104235.P15902579135489692667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104235.P15902579135489692667

namespace A104235

/-- `eq[A007088(n), A103542(n)]` -/
def P15902579135489692667.Spec : Prop :=
  ∀ n, (P15902579135489692667.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P11222121444680275483

`eq[A030101(n), A105104(n)]`
-/

namespace A104235.P11222121444680275483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104235.P11222121444680275483

namespace A104235

/-- `eq[A030101(n), A105104(n)]` -/
def P11222121444680275483.Spec : Prop :=
  ∀ n, (P11222121444680275483.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P7259468528364790773

`lt[A005117(A103185(n)+1), 2]`
-/

namespace A104235.P7259468528364790773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A103185 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104235.P7259468528364790773

namespace A104235

/-- `lt[A005117(A103185(n)+1), 2]` -/
def P7259468528364790773.Spec : Prop :=
  ∀ n, (P7259468528364790773.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P18231423232540257971

`lt[A103185(n), char[A103164(n)]]`
-/

namespace A104235.P18231423232540257971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104235.P18231423232540257971

namespace A104235

/-- `lt[A103185(n), char[A103164(n)]]` -/
def P18231423232540257971.Spec : Prop :=
  ∀ n, (P18231423232540257971.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P6662319479871533492

`eq[1, A227277(A010078(n+1)+1)]`
-/

namespace A104235.P6662319479871533492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (A010078 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104235.P6662319479871533492

namespace A104235

/-- `eq[1, A227277(A010078(n+1)+1)]` -/
def P6662319479871533492.Spec : Prop :=
  ∀ n, (P6662319479871533492.a n : ℤ) = A104235 (n + 1)

end A104235

/-! ## A104235.P17354921191326738254

`eq[1, A227277(A269160(n))]`
-/

namespace A104235.P17354921191326738254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (A269160 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104235.P17354921191326738254

namespace A104235

/-- `eq[1, A227277(A269160(n))]` -/
def P17354921191326738254.Spec : Prop :=
  ∀ n, (P17354921191326738254.a n : ℤ) = A104235 (n + 1)

end A104235

/-!
# A104236: n*Golomb's sequence.

The programs for A104236, the canonical program `A104236.P4332644214263664855` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104236 has offset 1).

The definition of A104236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104236.P4332644214263664855

`(n+1)*A001462(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104236

/-- `(n+1)*A001462(n+1)` -/
def P4332644214263664855.Spec : Prop :=
  ∀ n, P4332644214263664855.a n = A104236 (n + 1)

theorem P4332644214263664855.correct : P4332644214263664855.Spec := by
  intro n
  simp only [A104236, Nat.add_sub_cancel]

end A104236

/-! ## A104236.P9242686878517459426

`(n+1)*∑[char[A109512(n)-n]]`
-/

namespace A104236.P9242686878517459426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104236.P9242686878517459426

namespace A104236

/-- `(n+1)*∑[char[A109512(n)-n]]` -/
def P9242686878517459426.Spec : Prop :=
  ∀ n, (P9242686878517459426.a n : ℤ) = A104236 (n + 1)

end A104236

/-! ## A104236.P14347018362937425340

`(n+1)*Δ[A095114(n+1)]`
-/

namespace A104236.P14347018362937425340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A104236.P14347018362937425340

namespace A104236

/-- `(n+1)*Δ[A095114(n+1)]` -/
def P14347018362937425340.Spec : Prop :=
  ∀ n, P14347018362937425340.a n = A104236 (n + 1)

theorem P14347018362937425340.correct : P14347018362937425340.Spec := by
  intro n
  simp only [A104236, Nat.add_sub_cancel, A104236.P14347018362937425340.f1, A104236.P14347018362937425340.a, A104236.P4332644214263664855.a, A001462, A001462.P2570616953797054601.a, A095114, A095114.P18128364600797049740.f1, A095114.P18128364600797049740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104236

/-! ## A104236.P7106428960038389505

`(n+1)*(A224731(n+1)-(n+1))`
-/

namespace A104236.P7106428960038389505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A224731 (n + 1) - (n + 1 : ℤ))

end

end A104236.P7106428960038389505

namespace A104236

/-- `(n+1)*(A224731(n+1)-(n+1))` -/
def P7106428960038389505.Spec : Prop :=
  ∀ n, P7106428960038389505.a n = A104236 (n + 1)

end A104236

/-! ## A104236.P858225915465618130

`Δ[A095114(A095114(n+1))]`
-/

namespace A104236.P858225915465618130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (A095114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104236.P858225915465618130

namespace A104236

/-- `Δ[A095114(A095114(n+1))]` -/
def P858225915465618130.Spec : Prop :=
  ∀ n, P858225915465618130.a n = A104236 (n + 1)

end A104236

/-! ## A104236.P595990067352621262

`(n+1)*A143124(∑[n+1])`
-/

namespace A104236.P595990067352621262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104236.P595990067352621262

namespace A104236

/-- `(n+1)*A143124(∑[n+1])` -/
def P595990067352621262.Spec : Prop :=
  ∀ n, P595990067352621262.a n = A104236 (n + 1)

end A104236

/-!
# A104237: Expansion of (1 - x + x^2)*(1 + x + x^2 - x^3 + 2*x^4)/((1 - x)*(1 + x)^2*(1 + x^2)*(1 + x - x^2 + x^3)).

The programs for A104237, the canonical program `A104237.P17751553425908189037` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104237 has offset 0).

The definition of A104237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2-x^3+4x^4-3x^5+2x^6)/(1+2x-2x^5-x^8))` (program `A104237.P17751553425908189037`, by `A104237.P17751553425908189037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104237.P17751553425908189037

`ogf((1+x^2-x^3+4x^4-3x^5+2x^6)/(1+2x-2x^5-x^8))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104237

/-- `ogf((1+x^2-x^3+4x^4-3x^5+2x^6)/(1+2x-2x^5-x^8))` -/
def P17751553425908189037.Spec : Prop :=
  ∀ n, P17751553425908189037.a n = A104237 n

theorem P17751553425908189037.correct : P17751553425908189037.Spec := by
  intro n
  simp only [A104237]

end A104237

/-!
# A104238: Positive integers n such that n^5 + 1 is semiprime.

The programs for A104238, there is no canonical definition to state claims against.
-/

/-! ## A104238.P18297072897415417880

`p?[A246392(n+1)+1]-1`
-/

namespace A104238.P18297072897415417880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A104238.P18297072897415417880

/-! ## A104238.P6239267357784377573

`∩[A006093(n+1), A246392(n+1)]`
-/

namespace A104238.P6239267357784377573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104238.P6239267357784377573

/-! ## A104238.P2079093870749068080

`∩[A000040(n+1)-1, A246392(n+1)]`
-/

namespace A104238.P2079093870749068080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104238.P2079093870749068080

/-! ## A104238.P200043214185488817

`∩[A008578(n+1)-1, A246392(n+1)]`
-/

namespace A104238.P200043214185488817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104238.P200043214185488817

/-! ## A104238.P17500066944820123295

`∩[A158611(n+1)-1, A246392(n+1)]`
-/

namespace A104238.P17500066944820123295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104238.P17500066944820123295

/-! ## A104238.P17365779343298032625

`∩[A182986(n+1)-1, A246392(n+1)]`
-/

namespace A104238.P17365779343298032625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104238.P17365779343298032625

/-! ## A104238.P8053632670896967471

`A000010(p?[A246392(n+1)+1])`
-/

namespace A104238.P8053632670896967471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104238.P8053632670896967471

/-! ## A104238.P408065204236975846

`A003958(p?[A246392(n+1)+1])`
-/

namespace A104238.P408065204236975846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104238.P408065204236975846

/-! ## A104238.P14220248615606834673

`A173557(p?[A246392(n+1)+1])`
-/

namespace A104238.P14220248615606834673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104238.P14220248615606834673

/-! ## A104238.P5791262087691346488

`record[A063994(A246392(n+1)+1)]`
-/

namespace A104238.P5791262087691346488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A246392 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104238.P5791262087691346488

/-! ## A104238.P12864144732256101004

`A004442(p?[A246392(n+1)+1])`
-/

namespace A104238.P12864144732256101004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104238.P12864144732256101004

/-! ## A104238.P10330741269121534397

`A010848(p?[A246392(n+1)+1])`
-/

namespace A104238.P10330741269121534397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104238.P10330741269121534397

/-! ## A104238.P9608454129528988180

`A014684(p?[A246392(n+1)+1])`
-/

namespace A104238.P9608454129528988180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104238.P9608454129528988180

/-! ## A104238.P13849028819286564210

`A029578(p?[A246392(n+1)+1])`
-/

namespace A104238.P13849028819286564210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104238.P13849028819286564210

/-! ## A104238.P4528464181899812482

`A290139(p?[A246392(n+1)+1])`
-/

namespace A104238.P4528464181899812482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290139 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104238.P4528464181899812482

/-!
# A104240: Nonnegative integers n such that 13*n^2 + 13*n + 1 is a square.

The programs for A104240, there is no canonical definition to state claims against.
-/

/-! ## A104240.P7895037637545102648

`A105046(n+1)-1`
-/

namespace A104240.P7895037637545102648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105046 (n + 1) - 1

end

end A104240.P7895037637545102648

/-! ## A104240.P5839886633104700029

`Δ[∑[A105046(n)]-n]`
-/

namespace A104240.P5839886633104700029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104240.P5839886633104700029

/-! ## A104240.P367238503684915433

`(A105046(n+1)+log2(1/2))*A057427(n)`
-/

namespace A104240.P367238503684915433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A105046 (n + 1) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A057427 n : ℝ)

end

end A104240.P367238503684915433

/-! ## A104240.P6545854573361577209

`A328310(A000040(n+1))+A105046(n+1)`
-/

namespace A104240.P6545854573361577209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A000040 (n + 1)).toNat + A105046 (n + 1)

end

end A104240.P6545854573361577209

/-! ## A104240.P542528764519385357

`A328310(A033216(n+1))+A105046(n+1)`
-/

namespace A104240.P542528764519385357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A033216 (n + 1)).toNat + A105046 (n + 1)

end

end A104240.P542528764519385357

/-! ## A104240.P10901743261535128760

`A228826(A272838(n))+A105046(n+1)`
-/

namespace A104240.P10901743261535128760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A272838 n).toNat + A105046 (n + 1)

end

end A104240.P10901743261535128760

/-!
# A104242: Primes which are the concatenation of two consecutive square numbers.

The programs for A104242, there is no canonical definition to state claims against.
-/

/-! ## A104242.P12672383605337243875

`A246973(A090738(n+1))`
-/

namespace A104242.P12672383605337243875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246973 (A090738 (n + 1)).toNat

end

end A104242.P12672383605337243875

/-! ## A104242.P16413299327203303961

`∩[A345314(n+1), A246973(n)]`
-/

namespace A104242.P16413299327203303961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246973 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104242.P16413299327203303961

/-!
# A104243: Semiprimes of the form prime(n) + prime(n+2) - prime(n+1).

The programs for A104243, there is no canonical definition to state claims against.
-/

/-! ## A104243.P6014650607232965182

`or(A062721(n+1), A225099((n+1)*∏{p}[n+1, #]))`
-/

namespace A104243.P6014650607232965182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062721 (n + 1)) (A225099 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)))

end

end A104243.P6014650607232965182

/-! ## A104243.P15762957568983221663

`A122840(A018046(n))+A062721(n+1)`
-/

namespace A104243.P15762957568983221663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A018046 n).toNat + A062721 (n + 1)

end

end A104243.P15762957568983221663

/-! ## A104243.P16514012784687145086

`A257778(A001411(n))+A062721(n+1)`
-/

namespace A104243.P16514012784687145086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 (A001411 n).toNat + A062721 (n + 1)

end

end A104243.P16514012784687145086

/-! ## A104243.P5485417728219501332

`A343023(A000139(n))+A062721(n+1)`
-/

namespace A104243.P5485417728219501332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (A000139 n).toNat + A062721 (n + 1)

end

end A104243.P5485417728219501332

/-!
# A104244: Suppose m = Product_{i=1..k} p_i^e_i, where p_i is the i-th prime number and each e_i is a nonnegative integer. Then we can define P_m(x) = Sum_{i=1..k} e_i*x^(i-1). The sequence is the square array A(n,m) = P_m(n) read by descending antidiagonals.

The programs for A104244, there is no canonical definition to state claims against.
-/

/-! ## A104244.P12569491542732303826

`A104245(∑[char[∑[n]]]²-n)`
-/

namespace A104244.P12569491542732303826
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104245 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A104244.P12569491542732303826

/-! ## A104244.P6806896417919079918

`or(char[1], A104245(A038722(n+1)))`
-/

namespace A104244.P6806896417919079918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A104245 (A038722 (n + 1)).toNat)

end

end A104244.P6806896417919079918

/-! ## A104244.P16350121662673174672

`A104245(A038722(n+1))%A000124(n)`
-/

namespace A104244.P16350121662673174672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104245 (A038722 (n + 1)).toNat) (A000124 n)

end

end A104244.P16350121662673174672

/-! ## A104244.P15049117248665412250

`lcm(A033999(n), A104245(A038722(n+1)))`
-/

namespace A104244.P15049117248665412250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A104245 (A038722 (n + 1)).toNat)

end

end A104244.P15049117248665412250

/-! ## A104244.P6538895204270419059

`A104245(A038722(n+1))+char[A017440(n)]`
-/

namespace A104244.P6538895204270419059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104245 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A104244.P6538895204270419059

/-! ## A104244.P9121075997131412230

`A320656(n+1)!*A104245(A038722(n+1))`
-/

namespace A104244.P9121075997131412230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A320656 (n + 1)).toNat : ℤ) * A104245 (A038722 (n + 1)).toNat

end

end A104244.P9121075997131412230

/-! ## A104244.P10475465592222475734

`A104245(A038722(n+1))^A014963(∑[n+1])`
-/

namespace A104244.P10475465592222475734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104245 (A038722 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A104244.P10475465592222475734

/-! ## A104244.P11208986551125512862

`A104245(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A104244.P11208986551125512862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104245 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A104244.P11208986551125512862

/-! ## A104244.P13643306333434346604

`A014963(4*n+2)*A104245(A038722(n+1))`
-/

namespace A104244.P13643306333434346604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A104245 (A038722 (n + 1)).toNat

end

end A104244.P13643306333434346604

/-! ## A104244.P2851918790112321625

`A000032(((-1)^n)²)*A104245(A038722(n+1))`
-/

namespace A104244.P2851918790112321625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (((-1) ^ n) ^ 2).toNat * A104245 (A038722 (n + 1)).toNat

end

end A104244.P2851918790112321625

/-!
# A104245: Suppose n=(p1^e1)(p2^e2)... where p1,p2,... are the prime numbers and e1,e2,... are nonnegative integers. Then we can define Pn(x) = e1 + (e2)*x + (e3)*(x^2) + (e4)*(x^3) + ... + (ek)*(x^(k-1)) + ... The sequence is the table T(x,n)=Pn(x) read by antidiagonals.

The programs for A104245, there is no canonical definition to state claims against.
-/

/-! ## A104245.P9684213105298646691

`A104244(∑[char[∑[n]]]²-n)`
-/

namespace A104245.P9684213105298646691
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A104245.P9684213105298646691

/-! ## A104245.P9518503992912994752

`and(-1, A104244(A061579(n)+1))`
-/

namespace A104245.P9518503992912994752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A104244 (A061579 n + 1).toNat)

end

end A104245.P9518503992912994752

/-! ## A104245.P3670181642236580077

`(char[1]+1)*A104244(A038722(n+1))`
-/

namespace A104245.P3670181642236580077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A104244 (A038722 (n + 1)).toNat

end

end A104245.P3670181642236580077

/-! ## A104245.P4141584120422551003

`A057427(n)*A104244(A061579(n)+1)`
-/

namespace A104245.P4141584120422551003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A104244 (A061579 n + 1).toNat

end

end A104245.P4141584120422551003

/-! ## A104245.P6431991821819018702

`A104244(A038722(n+1))*A157928(n)`
-/

namespace A104245.P6431991821819018702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A038722 (n + 1)).toNat * A157928 n

end

end A104245.P6431991821819018702

/-! ## A104245.P15320739772471615153

`A104244(A061579(n)+1)%A000040(n+1)`
-/

namespace A104245.P15320739772471615153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104244 (A061579 n + 1).toNat) (A000040 (n + 1))

end

end A104245.P15320739772471615153

/-! ## A104245.P5859481752063988208

`A007318(C(2, n))*A104244(A061579(n)+1)`
-/

namespace A104245.P5859481752063988208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A104244 (A061579 n + 1).toNat

end

end A104245.P5859481752063988208

/-! ## A104245.P17835161788986873207

`A104244(A061579(n)+1)+A008683(4*(n+1))`
-/

namespace A104245.P17835161788986873207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A061579 n + 1).toNat + A008683 (4 * (n + 1))

end

end A104245.P17835161788986873207

/-!
# A104246: Minimal number of tetrahedral numbers (A000292(k) = k(k+1)(k+2)/6) needed to sum to n.

The programs for A104246, there is no canonical definition to state claims against.
-/

/-! ## A104246.P9126437724249908263

`A281367(and(1, A256172(n+1))+n)`
-/

namespace A104246.P9126437724249908263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281367 (Int.land 1 (A256172 (n + 1)) + (n : ℤ)).toNat

end

end A104246.P9126437724249908263

/-! ## A104246.P15992054177576624843

`A281367(and(1, A269520(n+1))+n)`
-/

namespace A104246.P15992054177576624843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281367 (Int.land 1 (A269520 (n + 1)) + (n : ℤ)).toNat

end

end A104246.P15992054177576624843

/-! ## A104246.P1498310692729826041

`A281367(and(1, A269521(n+1))+n)`
-/

namespace A104246.P1498310692729826041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281367 (Int.land 1 (A269521 (n + 1)) + (n : ℤ)).toNat

end

end A104246.P1498310692729826041

/-! ## A104246.P15226945249921832907

`gcd(A052787(lcm(n+1, n*(n+2))/6), A281367(n+1))`
-/

namespace A104246.P15226945249921832907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052787 (SequenceMachineLib.roundAway ((Nat.lcm (n + 1) (n * (n + 2)) : ℚ) / 6)).toNat) (A281367 (n + 1))

end

end A104246.P15226945249921832907

/-! ## A104246.P15671975449111525230

`A281367(n+1)+A007814(A062332(n+1))`
-/

namespace A104246.P15671975449111525230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281367 (n + 1) + A007814 (A062332 (n + 1)).toNat

end

end A104246.P15671975449111525230

/-!
# A104247: Primes that are the sum of digits of the first k primes for some k.

The programs for A104247, the canonical program `A104247.P9484724603255366417` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104247 has offset 1).

The definition of A104247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104247.P9484724603255366417

`p?[A051351(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104247

/-- `p?[A051351(n)]` -/
def P9484724603255366417.Spec : Prop :=
  ∀ n, P9484724603255366417.a n = A104247 (n + 1)

theorem P9484724603255366417.correct : P9484724603255366417.Spec := by
  intro n
  simp only [A104247, Nat.add_sub_cancel]

end A104247

/-! ## A104247.P18148933106096038441

`p?[∑[A007605(n+1)]]`
-/

namespace A104247.P18148933106096038441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104247.P18148933106096038441

namespace A104247

/-- `p?[∑[A007605(n+1)]]` -/
def P18148933106096038441.Spec : Prop :=
  ∀ n, P18148933106096038441.a n = A104247 (n + 1)

end A104247

/-! ## A104247.P11918994073344027424

`p?[∑[∑{digits}[A000040(n+1), #]]]`
-/

namespace A104247.P11918994073344027424
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A104247.P11918994073344027424

namespace A104247

/-- `p?[∑[∑{digits}[A000040(n+1), #]]]` -/
def P11918994073344027424.Spec : Prop :=
  ∀ n, (P11918994073344027424.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P2797033258457531531

`p?[∑[∑{digits}[A006093(n+1)+1, #]]]`
-/

namespace A104247.P2797033258457531531
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A104247.P2797033258457531531

namespace A104247

/-- `p?[∑[∑{digits}[A006093(n+1)+1, #]]]` -/
def P2797033258457531531.Spec : Prop :=
  ∀ n, (P2797033258457531531.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P11228539584809103771

`A051351(A058049(n+1))`
-/

namespace A104247.P11228539584809103771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 (A058049 (n + 1)).toNat

end

end A104247.P11228539584809103771

namespace A104247

/-- `A051351(A058049(n+1))` -/
def P11228539584809103771.Spec : Prop :=
  ∀ n, P11228539584809103771.a n = A104247 (n + 1)

end A104247

/-! ## A104247.P17343978282298801745

`p?[A037123(n)-A239324(n)]`
-/

namespace A104247.P17343978282298801745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n - A239324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104247.P17343978282298801745

namespace A104247

/-- `p?[A037123(n)-A239324(n)]` -/
def P17343978282298801745.Spec : Prop :=
  ∀ n, P17343978282298801745.a n = A104247 (n + 1)

end A104247

/-! ## A104247.P7006858270122646269

`∩[A000040(n+1), A051351(n)]`
-/

namespace A104247.P7006858270122646269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P7006858270122646269

namespace A104247

/-- `∩[A000040(n+1), A051351(n)]` -/
def P7006858270122646269.Spec : Prop :=
  ∀ n, (P7006858270122646269.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P14255857464989218337

`∩[A008578(n+1), A051351(n)]`
-/

namespace A104247.P14255857464989218337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P14255857464989218337

namespace A104247

/-- `∩[A008578(n+1), A051351(n)]` -/
def P14255857464989218337.Spec : Prop :=
  ∀ n, (P14255857464989218337.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P3951623932483964352

`∩[A033946(n+1), A051351(n)]`
-/

namespace A104247.P3951623932483964352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P3951623932483964352

namespace A104247

/-- `∩[A033946(n+1), A051351(n)]` -/
def P3951623932483964352.Spec : Prop :=
  ∀ n, (P3951623932483964352.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P1067325611025395988

`∩[A045344(n+1), A051351(n)]`
-/

namespace A104247.P1067325611025395988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P1067325611025395988

namespace A104247

/-- `∩[A045344(n+1), A051351(n)]` -/
def P1067325611025395988.Spec : Prop :=
  ∀ n, (P1067325611025395988.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P7935536334580794471

`∩[A046022(n+1), A051351(n)]`
-/

namespace A104247.P7935536334580794471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P7935536334580794471

namespace A104247

/-- `∩[A046022(n+1), A051351(n)]` -/
def P7935536334580794471.Spec : Prop :=
  ∀ n, (P7935536334580794471.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P13921708384708562076

`∩[A051948(n+1), A051351(n)]`
-/

namespace A104247.P13921708384708562076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P13921708384708562076

namespace A104247

/-- `∩[A051948(n+1), A051351(n)]` -/
def P13921708384708562076.Spec : Prop :=
  ∀ n, (P13921708384708562076.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P5685019666170939366

`∩[A053813(n+1), A051351(n)]`
-/

namespace A104247.P5685019666170939366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P5685019666170939366

namespace A104247

/-- `∩[A053813(n+1), A051351(n)]` -/
def P5685019666170939366.Spec : Prop :=
  ∀ n, (P5685019666170939366.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P690202672248856784

`∩[A062972(n+1), A051351(n)]`
-/

namespace A104247.P690202672248856784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P690202672248856784

namespace A104247

/-- `∩[A062972(n+1), A051351(n)]` -/
def P690202672248856784.Spec : Prop :=
  ∀ n, (P690202672248856784.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P6365163929792910561

`∩[A067126(n+1), A051351(n)]`
-/

namespace A104247.P6365163929792910561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P6365163929792910561

namespace A104247

/-- `∩[A067126(n+1), A051351(n)]` -/
def P6365163929792910561.Spec : Prop :=
  ∀ n, (P6365163929792910561.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P18101774745722665503

`∩[A067133(n+1), A051351(n)]`
-/

namespace A104247.P18101774745722665503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P18101774745722665503

namespace A104247

/-- `∩[A067133(n+1), A051351(n)]` -/
def P18101774745722665503.Spec : Prop :=
  ∀ n, (P18101774745722665503.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P950764466710677670

`∩[A106118(n+1), A051351(n)]`
-/

namespace A104247.P950764466710677670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P950764466710677670

namespace A104247

/-- `∩[A106118(n+1), A051351(n)]` -/
def P950764466710677670.Spec : Prop :=
  ∀ n, (P950764466710677670.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P2643182838110282395

`∩[A116974(n+1), A051351(n)]`
-/

namespace A104247.P2643182838110282395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P2643182838110282395

namespace A104247

/-- `∩[A116974(n+1), A051351(n)]` -/
def P2643182838110282395.Spec : Prop :=
  ∀ n, (P2643182838110282395.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P7639321636646711330

`∩[A132630(n+1), A051351(n)]`
-/

namespace A104247.P7639321636646711330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P7639321636646711330

namespace A104247

/-- `∩[A132630(n+1), A051351(n)]` -/
def P7639321636646711330.Spec : Prop :=
  ∀ n, (P7639321636646711330.a n : ℤ) = A104247 (n + 1)

end A104247

/-! ## A104247.P6550905361840586952

`∩[A174090(n+1), A051351(n)]`
-/

namespace A104247.P6550905361840586952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104247.P6550905361840586952

namespace A104247

/-- `∩[A174090(n+1), A051351(n)]` -/
def P6550905361840586952.Spec : Prop :=
  ∀ n, (P6550905361840586952.a n : ℤ) = A104247 (n + 1)

end A104247

/-!
# A104248: Lengths of successive runs of 1's in the Thue-Morse sequence A010060.

The programs for A104248, the canonical program `A104248.P3887207961911586058` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104248 has offset 1).

The definition of A104248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104248.P3887207961911586058

`A026465(2*(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104248

/-- `A026465(2*(n+1))` -/
def P3887207961911586058.Spec : Prop :=
  ∀ n, P3887207961911586058.a n = A104248 (n + 1)

theorem P3887207961911586058.correct : P3887207961911586058.Spec := by
  intro n
  simp only [A104248, Nat.add_sub_cancel]

end A104248

/-! ## A104248.P11072987978062105390

`(p?[A254378(n+1)]-1)/2`
-/

namespace A104248.P11072987978062105390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A104248.P11072987978062105390

namespace A104248

/-- `(p?[A254378(n+1)]-1)/2` -/
def P11072987978062105390.Spec : Prop :=
  ∀ n, P11072987978062105390.a n = (A104248 (n + 1) : ℚ)

end A104248

/-! ## A104248.P17465288646538389131

`A091785(n+1)-A091855(n+1)`
-/

namespace A104248.P17465288646538389131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1) - A091855 (n + 1)

end

end A104248.P17465288646538389131

namespace A104248

/-- `A091785(n+1)-A091855(n+1)` -/
def P17465288646538389131.Spec : Prop :=
  ∀ n, P17465288646538389131.a n = A104248 (n + 1)

end A104248

/-! ## A104248.P4423192775014689865

`A285961(n+1)-A285959(n+1)`
-/

namespace A104248.P4423192775014689865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285961 (n + 1) - A285959 (n + 1)

end

end A104248.P4423192775014689865

namespace A104248

/-- `A285961(n+1)-A285959(n+1)` -/
def P4423192775014689865.Spec : Prop :=
  ∀ n, P4423192775014689865.a n = A104248 (n + 1)

theorem P4423192775014689865.correct : P4423192775014689865.Spec := by
  intro n
  simp only [A104248, Nat.add_sub_cancel, A104248.P4423192775014689865.a, A104248.P3887207961911586058.a, A026465, A026465.P4870457713372314206.a, A285959, A285959.P12122029514880620375.a, A285961, A285961.P11025727463194114248.a, A091785, A091785.P17722584434212151531.a, A171947, A171947.P16384979975700383487.f1, A171947.P16384979975700383487.f2, A171947.P16384979975700383487.a, A191254, A191254.P17375190648081682118.a, A036554, A036554.P8175060370953883075.a, A072939, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104248

/-! ## A104248.P14802944203387072655

`A180682(A157970(n+1)-A157971(n+1)+1)`
-/

namespace A104248.P14802944203387072655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180682 (A157970 (n + 1) - A157971 (n + 1) + 1).toNat

end

end A104248.P14802944203387072655

namespace A104248

/-- `A180682(A157970(n+1)-A157971(n+1)+1)` -/
def P14802944203387072655.Spec : Prop :=
  ∀ n, P14802944203387072655.a n = A104248 (n + 1)

end A104248

/-! ## A104248.P281796729031124114

`Δ[A285976(n+1)]-1`
-/

namespace A104248.P281796729031124114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A104248.P281796729031124114

namespace A104248

/-- `Δ[A285976(n+1)]-1` -/
def P281796729031124114.Spec : Prop :=
  ∀ n, P281796729031124114.a n = A104248 (n + 1)

end A104248

/-! ## A104248.P11960766613039113493

`3-Δ[A284934(n+1)]`
-/

namespace A104248.P11960766613039113493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A104248.P11960766613039113493

namespace A104248

/-- `3-Δ[A284934(n+1)]` -/
def P11960766613039113493.Spec : Prop :=
  ∀ n, P11960766613039113493.a n = A104248 (n + 1)

end A104248

/-! ## A104248.P4788363335557083810

`Δ[comp[A171946(2*(n+1))-1]]`
-/

namespace A104248.P4788363335557083810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (2 * (n + 1)) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A104248.P4788363335557083810

namespace A104248

/-- `Δ[comp[A171946(2*(n+1))-1]]` -/
def P4788363335557083810.Spec : Prop :=
  ∀ n, P4788363335557083810.a n = A104248 (n + 1)

end A104248

/-! ## A104248.P7207412882370876825

`A000010(Δ[A285976(n+1)])`
-/

namespace A104248.P7207412882370876825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A104248.P7207412882370876825

namespace A104248

/-- `A000010(Δ[A285976(n+1)])` -/
def P7207412882370876825.Spec : Prop :=
  ∀ n, P7207412882370876825.a n = A104248 (n + 1)

end A104248

/-! ## A104248.P2720505543896625237

`A000045(Δ[A285976(n+1)])`
-/

namespace A104248.P2720505543896625237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A104248.P2720505543896625237

namespace A104248

/-- `A000045(Δ[A285976(n+1)])` -/
def P2720505543896625237.Spec : Prop :=
  ∀ n, P2720505543896625237.a n = A104248 (n + 1)

end A104248

/-! ## A104248.P6940310733056363665

`p?[A036585(n+1)]-1`
-/

namespace A104248.P6940310733056363665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A104248.P6940310733056363665

namespace A104248

/-- `p?[A036585(n+1)]-1` -/
def P6940310733056363665.Spec : Prop :=
  ∀ n, P6940310733056363665.a n = A104248 (n + 1)

end A104248

/-! ## A104248.P11464022867365760703

`p?[A316826(n)+1]-1`
-/

namespace A104248.P11464022867365760703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A104248.P11464022867365760703

namespace A104248

/-- `p?[A316826(n)+1]-1` -/
def P11464022867365760703.Spec : Prop :=
  ∀ n, P11464022867365760703.a n = A104248 (n + 1)

end A104248

/-! ## A104248.P10956051591403544108

`A286064(A285970(n+1))+1`
-/

namespace A104248.P10956051591403544108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286064 (A285970 (n + 1)).toNat + 1

end

end A104248.P10956051591403544108

namespace A104248

/-- `A286064(A285970(n+1))+1` -/
def P10956051591403544108.Spec : Prop :=
  ∀ n, P10956051591403544108.a n = A104248 (n + 1)

end A104248

/-!
# A104249: a(n) = (3*n^2 + n + 2)/2.

The programs for A104249, the canonical program `A104249.P14664189962821564658` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104249 has offset 0).

The definition of A104249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n²+n+2)/2` (program `A104249.P17047042018584103364`, by `A104249.P17047042018584103364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104249.P3083334175473813910

`ogf((1+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A104249.P3083334175473813910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -3, 3, -1] n

end

end A104249.P3083334175473813910

namespace A104249

/-- `ogf((1+2x^2)/(1-3x+3x^2-x^3))` -/
def P3083334175473813910.Spec : Prop :=
  ∀ n, P3083334175473813910.a n = A104249 n

end A104249

/-! ## A104249.P17047042018584103364

`(3*n²+n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104249.P17047042018584103364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 + n + 2 : ℚ) / 2

end

end A104249.P17047042018584103364

namespace A104249

/-- `(3*n²+n+2)/2` -/
def P17047042018584103364.Spec : Prop :=
  ∀ n, P17047042018584103364.a n = (A104249 n : ℚ)

theorem P17047042018584103364.correct : P17047042018584103364.Spec := by
  intro n
  induction n with
  | zero => simp [A104249, A104249.P17047042018584103364.a, A104249.P14664189962821564658.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A104249, Nat.add_sub_cancel, A104249.P17047042018584103364.a, A104249.P14664189962821564658.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A104249

/-! ## A104249.P14664189962821564658

`a(n-1)+3*n-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104249

/-- `a(n-1)+3*n-1` -/
def P14664189962821564658.Spec : Prop :=
  ∀ n, P14664189962821564658.a n = A104249 n

theorem P14664189962821564658.correct : P14664189962821564658.Spec := by
  intro n
  simp only [A104249]

end A104249

/-! ## A104249.P2482208485708590516

`Δ[n*(C(n, 2)+1)]`
-/

namespace A104249.P2482208485708590516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose n 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A104249.P2482208485708590516

namespace A104249

/-- `Δ[n*(C(n, 2)+1)]` -/
def P2482208485708590516.Spec : Prop :=
  ∀ n, P2482208485708590516.a n = A104249 n

end A104249

/-! ## A104249.P3653974172269496653

`n²-xor(-1, ∑[n])`
-/

namespace A104249.P3653974172269496653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A104249.P3653974172269496653

namespace A104249

/-- `n²-xor(-1, ∑[n])` -/
def P3653974172269496653.Spec : Prop :=
  ∀ n, P3653974172269496653.a n = A104249 n

end A104249

/-! ## A104249.P6667829988423081405

`∑[floor(3/acot(n))]-n`
-/

namespace A104249.P6667829988423081405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A104249.P6667829988423081405

namespace A104249

/-- `∑[floor(3/acot(n))]-n` -/
def P6667829988423081405.Spec : Prop :=
  ∀ n, P6667829988423081405.a n = A104249 n

end A104249

/-! ## A104249.P17939367508493839622

`abs(xor(∑[n]+n², -1))`
-/

namespace A104249.P17939367508493839622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℤ) (-1)|

end

end A104249.P17939367508493839622

namespace A104249

/-- `abs(xor(∑[n]+n², -1))` -/
def P17939367508493839622.Spec : Prop :=
  ∀ n, P17939367508493839622.a n = A104249 n

end A104249

/-! ## A104249.P9852463258465480652

`-xor(∑[n]+n², -1)`
-/

namespace A104249.P9852463258465480652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℤ) (-1)

end

end A104249.P9852463258465480652

namespace A104249

/-- `-xor(∑[n]+n², -1)` -/
def P9852463258465480652.Spec : Prop :=
  ∀ n, P9852463258465480652.a n = A104249 n

end A104249

/-! ## A104249.P2092057281631947244

`∑[a(n-1)+3]` with `a(0)=1, a(1)=2`
-/

namespace A104249.P2092057281631947244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104249.P2092057281631947244

namespace A104249

/-- `∑[a(n-1)+3]` -/
def P2092057281631947244.Spec : Prop :=
  ∀ n, (P2092057281631947244.a n : ℤ) = A104249 n

end A104249

/-! ## A104249.P3291818588403829454

`∑[ogf((1+2x^2)/(1-2x+x^2))]`
-/

namespace A104249.P3291818588403829454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104249.P3291818588403829454

namespace A104249

/-- `∑[ogf((1+2x^2)/(1-2x+x^2))]` -/
def P3291818588403829454.Spec : Prop :=
  ∀ n, P3291818588403829454.a n = A104249 n

end A104249

/-! ## A104249.P4637118727198447914

`2-∑[a(n-1)-3]` with `a(0)=1`
-/

namespace A104249.P4637118727198447914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104249.P4637118727198447914

namespace A104249

/-- `2-∑[a(n-1)-3]` -/
def P4637118727198447914.Spec : Prop :=
  ∀ n, P4637118727198447914.a n = A104249 n

end A104249

/-! ## A104249.P14034315179825892719

`C(n+1, 2)+n²+1`
-/

namespace A104249.P14034315179825892719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (n ^ 2 + 1)

end

end A104249.P14034315179825892719

namespace A104249

/-- `C(n+1, 2)+n²+1` -/
def P14034315179825892719.Spec : Prop :=
  ∀ n, (P14034315179825892719.a n : ℤ) = A104249 n

end A104249

/-! ## A104249.P4378150145552465047

`lcm(3, ∑[n]+1)-(n+2)`
-/

namespace A104249.P4378150145552465047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) - (n + 2 : ℤ)

end

end A104249.P4378150145552465047

namespace A104249

/-- `lcm(3, ∑[n]+1)-(n+2)` -/
def P4378150145552465047.Spec : Prop :=
  ∀ n, P4378150145552465047.a n = A104249 n

end A104249

/-! ## A104249.P1875889287200458021

`∑[2*n]+C(n, 2)+1`
-/

namespace A104249.P1875889287200458021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 + 1)

end

end A104249.P1875889287200458021

namespace A104249

/-- `∑[2*n]+C(n, 2)+1` -/
def P1875889287200458021.Spec : Prop :=
  ∀ n, (P1875889287200458021.a n : ℤ) = A104249 n

end A104249

/-! ## A104249.P8811021938874391407

`∑[lcm(n, 3*n)]-(n-1)`
-/

namespace A104249.P8811021938874391407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)

end

end A104249.P8811021938874391407

namespace A104249

/-- `∑[lcm(n, 3*n)]-(n-1)` -/
def P8811021938874391407.Spec : Prop :=
  ∀ n, P8811021938874391407.a n = A104249 n

end A104249

/-! ## A104249.P10434763551672374567

`3*C(n+1, 2)-(n-1)`
-/

namespace A104249.P10434763551672374567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 1) 2 : ℤ) - ((n : ℤ) - 1)

end

end A104249.P10434763551672374567

namespace A104249

/-- `3*C(n+1, 2)-(n-1)` -/
def P10434763551672374567.Spec : Prop :=
  ∀ n, P10434763551672374567.a n = A104249 n

end A104249

/-! ## A104249.P13396105437453854817

`3*n+a(n-1)-1` with `a(0)=1`
-/

namespace A104249.P13396105437453854817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n : ℤ) + a (n - 1) - 1

end

end A104249.P13396105437453854817

namespace A104249

/-- `3*n+a(n-1)-1` -/
def P13396105437453854817.Spec : Prop :=
  ∀ n, P13396105437453854817.a n = A104249 n

end A104249

/-! ## A104249.P17189961172851598488

`3*n-(1-a(n-1))` with `a(0)=1`
-/

namespace A104249.P17189961172851598488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n : ℤ) - (1 - a (n - 1))

end

end A104249.P17189961172851598488

namespace A104249

/-- `3*n-(1-a(n-1))` -/
def P17189961172851598488.Spec : Prop :=
  ∀ n, P17189961172851598488.a n = A104249 n

end A104249

/-! ## A104249.P5078677927729438565

`C(n, 2)+n*(n+1)+1`
-/

namespace A104249.P5078677927729438565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n * (n + 1) + 1

end

end A104249.P5078677927729438565

namespace A104249

/-- `C(n, 2)+n*(n+1)+1` -/
def P5078677927729438565.Spec : Prop :=
  ∀ n, (P5078677927729438565.a n : ℤ) = A104249 n

end A104249

/-! ## A104249.P8428246970200503321

`Δ[lcm(n-1, n²)/2]+1`
-/

namespace A104249.P8428246970200503321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A104249.P8428246970200503321

namespace A104249

/-- `Δ[lcm(n-1, n²)/2]+1` -/
def P8428246970200503321.Spec : Prop :=
  ∀ n, P8428246970200503321.a n = (A104249 n : ℚ)

end A104249

/-!
# A104250: Sum of prime digits of n-th prime.

The programs for A104250, there is no canonical definition to state claims against.
-/

/-! ## A104250.P1880510463451009109

`A007605(n+1)-A104251(n+1)`
-/

namespace A104250.P1880510463451009109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) - A104251 (n + 1)

end

end A104250.P1880510463451009109

/-! ## A104250.P5501557664982289854

`∑{digits}[A000040(n+1), A047814(#)]`
-/

namespace A104250.P5501557664982289854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047814 x).sum

end

end A104250.P5501557664982289854

/-! ## A104250.P882219765874295670

`A104260(n+1)+A104261(n+1)-A104251(n+1)`
-/

namespace A104250.P882219765874295670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104260 (n + 1) + (A104261 (n + 1) - A104251 (n + 1))

end

end A104250.P882219765874295670

/-! ## A104250.P5983921339670995210

`A085563(A028905(n+1))`
-/

namespace A104250.P5983921339670995210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A028905 (n + 1)).toNat

end

end A104250.P5983921339670995210

/-! ## A104250.P9418157086176265062

`A085563(p?[comp[n²]])`
-/

namespace A104250.P9418157086176265062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A104250.P9418157086176265062

/-! ## A104250.P8427974455746654030

`A085563(Δ[A007504(n)])`
-/

namespace A104250.P8427974455746654030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (f1 (n + 1) - f1 n).toNat

end

end A104250.P8427974455746654030

/-! ## A104250.P6069740728473336071

`A085563(A000040(n+1))`
-/

namespace A104250.P6069740728473336071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A000040 (n + 1)).toNat

end

end A104250.P6069740728473336071

/-! ## A104250.P3342237084242139852

`A085563(A004087(n+1))`
-/

namespace A104250.P3342237084242139852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A004087 (n + 1)).toNat

end

end A104250.P3342237084242139852

/-! ## A104250.P15069472017038938480

`A085563(A028906(n+1))`
-/

namespace A104250.P15069472017038938480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A028906 (n + 1)).toNat

end

end A104250.P15069472017038938480

/-! ## A104250.P7408123335882501780

`A085563(A171019(n+1))`
-/

namespace A104250.P7408123335882501780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171019 (n + 1)).toNat

end

end A104250.P7408123335882501780

/-! ## A104250.P15763608862304015996

`A085563(A171020(n+1))`
-/

namespace A104250.P15763608862304015996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171020 (n + 1)).toNat

end

end A104250.P15763608862304015996

/-! ## A104250.P5323949549928929598

`A085563(A171028(n+1))`
-/

namespace A104250.P5323949549928929598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171028 (n + 1)).toNat

end

end A104250.P5323949549928929598

/-! ## A104250.P10493643959813957862

`A085563(A171029(n+1))`
-/

namespace A104250.P10493643959813957862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171029 (n + 1)).toNat

end

end A104250.P10493643959813957862

/-! ## A104250.P10779087570098170017

`A085563(A171032(n+1))`
-/

namespace A104250.P10779087570098170017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171032 (n + 1)).toNat

end

end A104250.P10779087570098170017

/-! ## A104250.P1838754774434802874

`A085563(A171041(n+1))`
-/

namespace A104250.P1838754774434802874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171041 (n + 1)).toNat

end

end A104250.P1838754774434802874

/-! ## A104250.P9752948109898138473

`A085563(A171042(n+1))`
-/

namespace A104250.P9752948109898138473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171042 (n + 1)).toNat

end

end A104250.P9752948109898138473

/-! ## A104250.P9389754636588849315

`A085563(A171045(n+1))`
-/

namespace A104250.P9389754636588849315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171045 (n + 1)).toNat

end

end A104250.P9389754636588849315

/-! ## A104250.P17620543815457933679

`A085563(A171047(n+1))`
-/

namespace A104250.P17620543815457933679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171047 (n + 1)).toNat

end

end A104250.P17620543815457933679

/-! ## A104250.P7000268636738872562

`A085563(A171049(n+1))`
-/

namespace A104250.P7000268636738872562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171049 (n + 1)).toNat

end

end A104250.P7000268636738872562

/-! ## A104250.P13055675113150671808

`A085563(A171050(n+1))`
-/

namespace A104250.P13055675113150671808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A171050 (n + 1)).toNat

end

end A104250.P13055675113150671808

/-!
# A104251: Sum of nonprime digits of n-th prime.

The programs for A104251, there is no canonical definition to state claims against.
-/

/-! ## A104251.P3961369801446669591

`A007605(n+1)-A104250(n+1)`
-/

namespace A104251.P3961369801446669591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) - A104250 (n + 1)

end

end A104251.P3961369801446669591

/-! ## A104251.P12005387865435770527

`∑{digits}[∑[A054541(n+1)], #]-A104250(n+1)`
-/

namespace A104251.P12005387865435770527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A104250 (n + 1)

end

end A104251.P12005387865435770527

/-! ## A104251.P3499697834226425319

`A104260(n+1)+A104261(n+1)-A104250(n+1)`
-/

namespace A104251.P3499697834226425319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104260 (n + 1) + (A104261 (n + 1) - A104250 (n + 1))

end

end A104251.P3499697834226425319

/-! ## A104251.P14031411638994407731

`A085562(A028905(n+1))`
-/

namespace A104251.P14031411638994407731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A028905 (n + 1)).toNat

end

end A104251.P14031411638994407731

/-! ## A104251.P10860580330785706804

`A085562(p?[xor(1, n)])`
-/

namespace A104251.P10860580330785706804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A104251.P10860580330785706804

/-! ## A104251.P5227446825746547879

`A085562(p?[comp[n²]])`
-/

namespace A104251.P5227446825746547879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A104251.P5227446825746547879

/-! ## A104251.P17445287471953671171

`A085562(Δ[A007504(n)])`
-/

namespace A104251.P17445287471953671171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (f1 (n + 1) - f1 n).toNat

end

end A104251.P17445287471953671171

/-! ## A104251.P11467470073058744986

`A085562(A000040(n+1))`
-/

namespace A104251.P11467470073058744986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A000040 (n + 1)).toNat

end

end A104251.P11467470073058744986

/-! ## A104251.P17802995254842119668

`A085562(A004087(n+1))`
-/

namespace A104251.P17802995254842119668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A004087 (n + 1)).toNat

end

end A104251.P17802995254842119668

/-! ## A104251.P6401875995244236025

`A085562(A028906(n+1))`
-/

namespace A104251.P6401875995244236025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A028906 (n + 1)).toNat

end

end A104251.P6401875995244236025

/-! ## A104251.P12043636679413713519

`A085562(A171018(n+1))`
-/

namespace A104251.P12043636679413713519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A171018 (n + 1)).toNat

end

end A104251.P12043636679413713519

/-! ## A104251.P12291506108236855675

`A085562(A171025(n+1))`
-/

namespace A104251.P12291506108236855675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A171025 (n + 1)).toNat

end

end A104251.P12291506108236855675

/-! ## A104251.P350401267898706881

`A085562(A171026(n+1))`
-/

namespace A104251.P350401267898706881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A171026 (n + 1)).toNat

end

end A104251.P350401267898706881

/-! ## A104251.P893929702549976588

`A085562(A171036(n+1))`
-/

namespace A104251.P893929702549976588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A171036 (n + 1)).toNat

end

end A104251.P893929702549976588

/-! ## A104251.P4068530067813629606

`A085562(A171037(n+1))`
-/

namespace A104251.P4068530067813629606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A171037 (n + 1)).toNat

end

end A104251.P4068530067813629606

/-! ## A104251.P4378639604279129

`A085562(A171039(n+1))`
-/

namespace A104251.P4378639604279129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A171039 (n + 1)).toNat

end

end A104251.P4378639604279129

/-! ## A104251.P764266822461034697

`A085562(A008578(n+2))`
-/

namespace A104251.P764266822461034697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A008578 (n + 2)).toNat

end

end A104251.P764266822461034697

/-! ## A104251.P15076779944561771348

`A085562(A101989(n+1))`
-/

namespace A104251.P15076779944561771348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A101989 (n + 1)).toNat

end

end A104251.P15076779944561771348

/-! ## A104251.P12433733473895439849

`A085562(A142342(n+1))`
-/

namespace A104251.P12433733473895439849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085562 (A142342 (n + 1)).toNat

end

end A104251.P12433733473895439849

/-!
# A104252: Expansion of q^2 in powers of g, where q is the elliptic nome in Zinn-Justin and Zuber's enumeration of oriented prime alternating tangles.

The programs for A104252, there is no canonical definition to state claims against.
-/

/-! ## A104252.P2911880065500401131

`A034887(∑[∏[A251534(n+1)]])`
-/

namespace A104252.P2911880065500401131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251534 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104252.P2911880065500401131

/-! ## A104252.P16630543878090081703

`floor(A127757(A003949(n))/2)+1`
-/

namespace A104252.P16630543878090081703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127757 (A003949 n).toNat : ℚ) / 2⌋ + 1

end

end A104252.P16630543878090081703

/-!
# A104253: Row sums of triangle in A116925.

The programs for A104253, there is no canonical definition to state claims against.
-/

/-! ## A104253.P1184103812999708331

`∑[A002024(∏[ceil(2^(n/2))])]`
-/

namespace A104253.P1184103812999708331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104253.P1184103812999708331

/-! ## A104253.P6711189062617501321

`∑[∑[A088725(A000105(n))]]`
-/

namespace A104253.P6711189062617501321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (A000105 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104253.P6711189062617501321

/-! ## A104253.P14563670902024399752

`∑[∑[A180447(A001858(n))]]`
-/

namespace A104253.P14563670902024399752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A001858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104253.P14563670902024399752

/-!
# A104254: a(n) = n^n - (-1)^n*(n+1)!.

The programs for A104254, the canonical program `A104254.P3704825003902140049` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104254 has offset 1).

The definition of A104254 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)-(-1)^(n+1)*(n+2)!` (program `A104254.P3704825003902140049`, by `A104254.P3704825003902140049.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104254.P3704825003902140049

`(n+1)^(n+1)-(-1)^(n+1)*(n+2)!`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104254

/-- `(n+1)^(n+1)-(-1)^(n+1)*(n+2)!` -/
def P3704825003902140049.Spec : Prop :=
  ∀ n, P3704825003902140049.a n = A104254 (n + 1)

theorem P3704825003902140049.correct : P3704825003902140049.Spec := by
  intro n
  simp only [A104254, Nat.add_sub_cancel]

end A104254

/-! ## A104254.P10854039176828861696

`(n+1)^(n+1)-∏[-(n+2)]`
-/

namespace A104254.P10854039176828861696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104254.P10854039176828861696

namespace A104254

/-- `(n+1)^(n+1)-∏[-(n+2)]` -/
def P10854039176828861696.Spec : Prop :=
  ∀ n, P10854039176828861696.a n = A104254 (n + 1)

end A104254

/-!
# A104255: a(n) = floor( (2n-1)!!/(2n) ).

The programs for A104255, there is no canonical definition to state claims against.
-/

/-! ## A104255.P16506288055407958411

`floor(∏[2*n+1]/(2*(n+1)))`
-/

namespace A104255.P16506288055407958411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A104255.P16506288055407958411

/-! ## A104255.P4654309302334541718

`ceil(A001147(n+1)/A348717(2*(n+1)))-1`
-/

namespace A104255.P4654309302334541718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001147 (n + 1) : ℚ) / (A348717 (2 * (n + 1)) : ℚ)⌉ - 1

end

end A104255.P4654309302334541718

/-! ## A104255.P11983217023927567027

`ceil(A001147(n+1)/A052928(2*n+3))-1`
-/

namespace A104255.P11983217023927567027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001147 (n + 1) : ℚ) / (A052928 (2 * n + 3) : ℚ)⌉ - 1

end

end A104255.P11983217023927567027

/-!
# A104256: [ (2n-1)!!/(4n) ].

The programs for A104256, there is no canonical definition to state claims against.
-/

/-! ## A104256.P7355848160648794462

`floor(∏[2*n+1]/(4*(n+1)))`
-/

namespace A104256.P7355848160648794462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (4 * (n + 1) : ℚ)⌋

end

end A104256.P7355848160648794462

/-! ## A104256.P4764911827680237629

`A004526(A104255(n+1))`
-/

namespace A104256.P4764911827680237629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A104255 (n + 1)).toNat

end

end A104256.P4764911827680237629

/-! ## A104256.P646261374677804575

`A004524(A104255(n+1)+1)`
-/

namespace A104256.P646261374677804575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A104255 (n + 1) + 1).toNat

end

end A104256.P646261374677804575

/-!
# A104258: Replace 2^i with n^i in binary representation of n.

The programs for A104258, there is no canonical definition to state claims against.
-/

/-! ## A104258.P6671376062114957496

`A341907(∑[4*(n+1)])`
-/

namespace A104258.P6671376062114957496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104258.P6671376062114957496

/-! ## A104258.P7282424963029683818

`record[A341907(A156678(n+1))]`
-/

namespace A104258.P7282424963029683818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (A156678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104258.P7282424963029683818

/-! ## A104258.P15279714801186853549

`record[A341907(A092530(n+2))]`
-/

namespace A104258.P15279714801186853549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (A092530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104258.P15279714801186853549

/-! ## A104258.P16495509230669742456

`record[A341907((n+1)*A057979(n))]`
-/

namespace A104258.P16495509230669742456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 ((n + 1 : ℤ) * A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104258.P16495509230669742456

/-! ## A104258.P13533040139884663312

`lcm((-1)^n, A341907(A092530(2*(n+1))))`
-/

namespace A104258.P13533040139884663312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A341907 (A092530 (2 * (n + 1))).toNat)

end

end A104258.P13533040139884663312

/-!
# A104259: Triangle T read by rows: matrix product of Pascal and Catalan triangle.

The programs for A104259, there is no canonical definition to state claims against.
-/

/-! ## A104259.P17923802086680463941

`abs(A154930(n))`
-/

namespace A104259.P17923802086680463941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A154930 n|

end

end A104259.P17923802086680463941

/-! ## A104259.P16919647829913515523

`A097807(n)*A154930(n)`
-/

namespace A104259.P16919647829913515523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A154930 n

end

end A104259.P16919647829913515523

/-! ## A104259.P3672914474450984514

`gcd(A000038(n), A154930(n))`
-/

namespace A104259.P3672914474450984514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A154930 n)

end

end A104259.P3672914474450984514

/-! ## A104259.P14526189327777074519

`lcm(A020985(n), A154930(n))`
-/

namespace A104259.P14526189327777074519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A154930 n)

end

end A104259.P14526189327777074519

/-! ## A104259.P2591943911710309893

`lcm(-A154930(n), A087960(n))`
-/

namespace A104259.P2591943911710309893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A154930 n) (A087960 n)

end

end A104259.P2591943911710309893

/-! ## A104259.P3865189114351246500

`A034947(A099375(n))*A154930(n)`
-/

namespace A104259.P3865189114351246500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A099375 n).toNat * A154930 n

end

end A104259.P3865189114351246500

/-! ## A104259.P16927308515878533664

`A062157(A004736(n+1))*A154930(n)`
-/

namespace A104259.P16927308515878533664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A154930 n

end

end A104259.P16927308515878533664

/-! ## A104259.P2215467910962365626

`A155887(A014132(n+1))`
-/

namespace A104259.P2215467910962365626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155887 (A014132 (n + 1)).toNat

end

end A104259.P2215467910962365626

/-! ## A104259.P1504348406986100318

`A033184(n+1)*A154930(n)/A171567(n)`
-/

namespace A104259.P1504348406986100318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033184 (n + 1) * A154930 n : ℚ) / (A171567 n : ℚ)

end

end A104259.P1504348406986100318

/-! ## A104259.P10302794673061164675

`A020985(A130328(n))*A154930(n)`
-/

namespace A104259.P10302794673061164675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130328 n).toNat * A154930 n

end

end A104259.P10302794673061164675

/-!
# A104260: Sum of odd digits (1,3,5,7,9) of n-th prime.

The programs for A104260, the canonical program `A104260.P17281038735353621208` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104260 has offset 1).

The definition of A104260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104260.P15034565987008451085

`A007605(n+1)-A104261(n+1)`
-/

namespace A104260.P15034565987008451085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) - A104261 (n + 1)

end

end A104260.P15034565987008451085

namespace A104260

/-- `A007605(n+1)-A104261(n+1)` -/
def P15034565987008451085.Spec : Prop :=
  ∀ n, P15034565987008451085.a n = A104260 (n + 1)

theorem P15034565987008451085.correct : P15034565987008451085.Spec := by
  intro n
  simp only [A104260, Nat.add_sub_cancel, A104260.P15034565987008451085.a, A104260.P17281038735353621208.f1, A104260.P17281038735353621208.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007605, A007605.P14521423581831153617.a, A104261, A104261.P6514449015023123147.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104260

/-! ## A104260.P17281038735353621208

`∑{digits}[A000040(n+1), (#^5)%16]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104260

/-- `∑{digits}[A000040(n+1), (#^5)%16]` -/
def P17281038735353621208.Spec : Prop :=
  ∀ n, (P17281038735353621208.a n : ℤ) = A104260 (n + 1)

theorem P17281038735353621208.correct : P17281038735353621208.Spec := by
  intro n
  simp only [A104260, Nat.add_sub_cancel]

end A104260

/-! ## A104260.P4054084566475737674

`A104250(n+1)+A104251(n+1)-A104261(n+1)`
-/

namespace A104260.P4054084566475737674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104250 (n + 1) + (A104251 (n + 1) - A104261 (n + 1))

end

end A104260.P4054084566475737674

namespace A104260

/-- `A104250(n+1)+A104251(n+1)-A104261(n+1)` -/
def P4054084566475737674.Spec : Prop :=
  ∀ n, P4054084566475737674.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P2609191095040610636

`∑{digits}[record[A020639(n+2)], lcm(2, #)-#]`
-/

namespace A104260.P2609191095040610636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (Nat.lcm 2 x : ℤ) - (x : ℤ)).sum

end

end A104260.P2609191095040610636

namespace A104260

/-- `∑{digits}[record[A020639(n+2)], lcm(2, #)-#]` -/
def P2609191095040610636.Spec : Prop :=
  ∀ n, P2609191095040610636.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P778547065793350263

`A071649(A028905(n+1))`
-/

namespace A104260.P778547065793350263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A028905 (n + 1)).toNat

end

end A104260.P778547065793350263

namespace A104260

/-- `A071649(A028905(n+1))` -/
def P778547065793350263.Spec : Prop :=
  ∀ n, P778547065793350263.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P18403486239926035659

`∑{digits}[record[A014963(n+2)], and(15, #^5)]`
-/

namespace A104260.P18403486239926035659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.land 15 (x ^ 5)).sum

end

end A104260.P18403486239926035659

namespace A104260

/-- `∑{digits}[record[A014963(n+2)], and(15, #^5)]` -/
def P18403486239926035659.Spec : Prop :=
  ∀ n, (P18403486239926035659.a n : ℤ) = A104260 (n + 1)

end A104260

/-! ## A104260.P10327211721440483483

`A071649(Δ[A007504(n)])`
-/

namespace A104260.P10327211721440483483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (f1 (n + 1) - f1 n).toNat

end

end A104260.P10327211721440483483

namespace A104260

/-- `A071649(Δ[A007504(n)])` -/
def P10327211721440483483.Spec : Prop :=
  ∀ n, P10327211721440483483.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P6005924459772601482

`A071649(A000040(n+1))`
-/

namespace A104260.P6005924459772601482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A000040 (n + 1)).toNat

end

end A104260.P6005924459772601482

namespace A104260

/-- `A071649(A000040(n+1))` -/
def P6005924459772601482.Spec : Prop :=
  ∀ n, P6005924459772601482.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P7508395974339188091

`A071649(A004087(n+1))`
-/

namespace A104260.P7508395974339188091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A004087 (n + 1)).toNat

end

end A104260.P7508395974339188091

namespace A104260

/-- `A071649(A004087(n+1))` -/
def P7508395974339188091.Spec : Prop :=
  ∀ n, P7508395974339188091.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P15558293892397254764

`A071649(A028906(n+1))`
-/

namespace A104260.P15558293892397254764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A028906 (n + 1)).toNat

end

end A104260.P15558293892397254764

namespace A104260

/-- `A071649(A028906(n+1))` -/
def P15558293892397254764.Spec : Prop :=
  ∀ n, P15558293892397254764.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P13647470131541336962

`A071649(A171019(n+1))`
-/

namespace A104260.P13647470131541336962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A171019 (n + 1)).toNat

end

end A104260.P13647470131541336962

namespace A104260

/-- `A071649(A171019(n+1))` -/
def P13647470131541336962.Spec : Prop :=
  ∀ n, P13647470131541336962.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P14192275048584317667

`A071649(A171021(n+1))`
-/

namespace A104260.P14192275048584317667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A171021 (n + 1)).toNat

end

end A104260.P14192275048584317667

namespace A104260

/-- `A071649(A171021(n+1))` -/
def P14192275048584317667.Spec : Prop :=
  ∀ n, P14192275048584317667.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P12406815515058738632

`A071649(A171028(n+1))`
-/

namespace A104260.P12406815515058738632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A171028 (n + 1)).toNat

end

end A104260.P12406815515058738632

namespace A104260

/-- `A071649(A171028(n+1))` -/
def P12406815515058738632.Spec : Prop :=
  ∀ n, P12406815515058738632.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P7803239332696012059

`A071649(A171030(n+1))`
-/

namespace A104260.P7803239332696012059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A171030 (n + 1)).toNat

end

end A104260.P7803239332696012059

namespace A104260

/-- `A071649(A171030(n+1))` -/
def P7803239332696012059.Spec : Prop :=
  ∀ n, P7803239332696012059.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P14761313105940675499

`A071649(A171032(n+1))`
-/

namespace A104260.P14761313105940675499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A171032 (n + 1)).toNat

end

end A104260.P14761313105940675499

namespace A104260

/-- `A071649(A171032(n+1))` -/
def P14761313105940675499.Spec : Prop :=
  ∀ n, P14761313105940675499.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P11647497756155917067

`A071649(A171041(n+1))`
-/

namespace A104260.P11647497756155917067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A171041 (n + 1)).toNat

end

end A104260.P11647497756155917067

namespace A104260

/-- `A071649(A171041(n+1))` -/
def P11647497756155917067.Spec : Prop :=
  ∀ n, P11647497756155917067.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P14577922894430198383

`A071649(A171043(n+1))`
-/

namespace A104260.P14577922894430198383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A171043 (n + 1)).toNat

end

end A104260.P14577922894430198383

namespace A104260

/-- `A071649(A171043(n+1))` -/
def P14577922894430198383.Spec : Prop :=
  ∀ n, P14577922894430198383.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P6103569035236291139

`A071649(A171045(n+1))`
-/

namespace A104260.P6103569035236291139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A171045 (n + 1)).toNat

end

end A104260.P6103569035236291139

namespace A104260

/-- `A071649(A171045(n+1))` -/
def P6103569035236291139.Spec : Prop :=
  ∀ n, P6103569035236291139.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P14915781755723171095

`A071649(A171047(n+1))`
-/

namespace A104260.P14915781755723171095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A171047 (n + 1)).toNat

end

end A104260.P14915781755723171095

namespace A104260

/-- `A071649(A171047(n+1))` -/
def P14915781755723171095.Spec : Prop :=
  ∀ n, P14915781755723171095.a n = A104260 (n + 1)

end A104260

/-! ## A104260.P11824385001960947513

`A071649(A101989(n+1))`
-/

namespace A104260.P11824385001960947513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A101989 (n + 1)).toNat

end

end A104260.P11824385001960947513

namespace A104260

/-- `A071649(A101989(n+1))` -/
def P11824385001960947513.Spec : Prop :=
  ∀ n, P11824385001960947513.a n = A104260 (n + 1)

end A104260

/-!
# A104261: Sum of even digits (0,2,4,6,8) of n-th prime.

The programs for A104261, the canonical program `A104261.P6514449015023123147` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104261 has offset 1).

The definition of A104261 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A104260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104261.P6514449015023123147

`A007605(n+1)-A104260(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104261

/-- `A007605(n+1)-A104260(n+1)` -/
def P6514449015023123147.Spec : Prop :=
  ∀ n, P6514449015023123147.a n = A104261 (n + 1)

theorem P6514449015023123147.correct : P6514449015023123147.Spec := by
  intro n
  simp only [A104261, Nat.add_sub_cancel]

end A104261

/-! ## A104261.P9522485099374045084

`∑{digits}[A000040(n+1), #%or(1, #)]`
-/

namespace A104261.P9522485099374045084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x % Nat.lor 1 x).sum

end

end A104261.P9522485099374045084

namespace A104261

/-- `∑{digits}[A000040(n+1), #%or(1, #)]` -/
def P9522485099374045084.Spec : Prop :=
  ∀ n, (P9522485099374045084.a n : ℤ) = A104261 (n + 1)

end A104261

/-! ## A104261.P14123950761799895218

`A104250(n+1)+A104251(n+1)-A104260(n+1)`
-/

namespace A104261.P14123950761799895218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104250 (n + 1) + (A104251 (n + 1) - A104260 (n + 1))

end

end A104261.P14123950761799895218

namespace A104261

/-- `A104250(n+1)+A104251(n+1)-A104260(n+1)` -/
def P14123950761799895218.Spec : Prop :=
  ∀ n, P14123950761799895218.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P5285790565909638641

`A071648(A028905(n+1))`
-/

namespace A104261.P5285790565909638641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A028905 (n + 1)).toNat

end

end A104261.P5285790565909638641

namespace A104261

/-- `A071648(A028905(n+1))` -/
def P5285790565909638641.Spec : Prop :=
  ∀ n, P5285790565909638641.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P2891685416383659217

`A071648(Δ[A007504(n)])`
-/

namespace A104261.P2891685416383659217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (f1 (n + 1) - f1 n).toNat

end

end A104261.P2891685416383659217

namespace A104261

/-- `A071648(Δ[A007504(n)])` -/
def P2891685416383659217.Spec : Prop :=
  ∀ n, P2891685416383659217.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P354135499878896800

`A071648(record[A051698(n)])`
-/

namespace A104261.P354135499878896800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104261.P354135499878896800

namespace A104261

/-- `A071648(record[A051698(n)])` -/
def P354135499878896800.Spec : Prop :=
  ∀ n, P354135499878896800.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P6209497072519371836

`A071648(A000040(n+1))`
-/

namespace A104261.P6209497072519371836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A000040 (n + 1)).toNat

end

end A104261.P6209497072519371836

namespace A104261

/-- `A071648(A000040(n+1))` -/
def P6209497072519371836.Spec : Prop :=
  ∀ n, P6209497072519371836.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P16933212139648929204

`A071648(A004087(n+1))`
-/

namespace A104261.P16933212139648929204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A004087 (n + 1)).toNat

end

end A104261.P16933212139648929204

namespace A104261

/-- `A071648(A004087(n+1))` -/
def P16933212139648929204.Spec : Prop :=
  ∀ n, P16933212139648929204.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P5211225198195199318

`A071648(A028906(n+1))`
-/

namespace A104261.P5211225198195199318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A028906 (n + 1)).toNat

end

end A104261.P5211225198195199318

namespace A104261

/-- `A071648(A028906(n+1))` -/
def P5211225198195199318.Spec : Prop :=
  ∀ n, P5211225198195199318.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P4596649624484634162

`A071648(A161847(n+1))`
-/

namespace A104261.P4596649624484634162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A161847 (n + 1)).toNat

end

end A104261.P4596649624484634162

namespace A104261

/-- `A071648(A161847(n+1))` -/
def P4596649624484634162.Spec : Prop :=
  ∀ n, P4596649624484634162.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P13719312558266018373

`A071648(A171024(n+1))`
-/

namespace A104261.P13719312558266018373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A171024 (n + 1)).toNat

end

end A104261.P13719312558266018373

namespace A104261

/-- `A071648(A171024(n+1))` -/
def P13719312558266018373.Spec : Prop :=
  ∀ n, P13719312558266018373.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P14835079454303256745

`A071648(A171026(n+1))`
-/

namespace A104261.P14835079454303256745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A171026 (n + 1)).toNat

end

end A104261.P14835079454303256745

namespace A104261

/-- `A071648(A171026(n+1))` -/
def P14835079454303256745.Spec : Prop :=
  ∀ n, P14835079454303256745.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P1962289965158662033

`A071648(A171035(n+1))`
-/

namespace A104261.P1962289965158662033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A171035 (n + 1)).toNat

end

end A104261.P1962289965158662033

namespace A104261

/-- `A071648(A171035(n+1))` -/
def P1962289965158662033.Spec : Prop :=
  ∀ n, P1962289965158662033.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P12168156640093226779

`A071648(A171037(n+1))`
-/

namespace A104261.P12168156640093226779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A171037 (n + 1)).toNat

end

end A104261.P12168156640093226779

namespace A104261

/-- `A071648(A171037(n+1))` -/
def P12168156640093226779.Spec : Prop :=
  ∀ n, P12168156640093226779.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P7466280315140307288

`A071648(A171039(n+1))`
-/

namespace A104261.P7466280315140307288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A171039 (n + 1)).toNat

end

end A104261.P7466280315140307288

namespace A104261

/-- `A071648(A171039(n+1))` -/
def P7466280315140307288.Spec : Prop :=
  ∀ n, P7466280315140307288.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P10705711283704051537

`A071648(A171049(n+1))`
-/

namespace A104261.P10705711283704051537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A171049 (n + 1)).toNat

end

end A104261.P10705711283704051537

namespace A104261

/-- `A071648(A171049(n+1))` -/
def P10705711283704051537.Spec : Prop :=
  ∀ n, P10705711283704051537.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P12960426987081773289

`A071648(A171050(n+1))`
-/

namespace A104261.P12960426987081773289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A171050 (n + 1)).toNat

end

end A104261.P12960426987081773289

namespace A104261

/-- `A071648(A171050(n+1))` -/
def P12960426987081773289.Spec : Prop :=
  ∀ n, P12960426987081773289.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P14034476938433917993

`A071648(A171052(n+1))`
-/

namespace A104261.P14034476938433917993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A171052 (n + 1)).toNat

end

end A104261.P14034476938433917993

namespace A104261

/-- `A071648(A171052(n+1))` -/
def P14034476938433917993.Spec : Prop :=
  ∀ n, P14034476938433917993.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P3134175818988706075

`A071648(A171054(n+1))`
-/

namespace A104261.P3134175818988706075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A171054 (n + 1)).toNat

end

end A104261.P3134175818988706075

namespace A104261

/-- `A071648(A171054(n+1))` -/
def P3134175818988706075.Spec : Prop :=
  ∀ n, P3134175818988706075.a n = A104261 (n + 1)

end A104261

/-! ## A104261.P18076923388797666342

`A071648(A171056(n+1))`
-/

namespace A104261.P18076923388797666342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A171056 (n + 1)).toNat

end

end A104261.P18076923388797666342

namespace A104261

/-- `A071648(A171056(n+1))` -/
def P18076923388797666342.Spec : Prop :=
  ∀ n, P18076923388797666342.a n = A104261 (n + 1)

end A104261

/-!
# A104264: Number of n-digit squares with no zero digits.

The programs for A104264, there is no canonical definition to state claims against.
-/

/-! ## A104264.P4937541099743400281

`A367917(A385706(n+2))`
-/

namespace A104264.P4937541099743400281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367917 (A385706 (n + 2)).toNat

end

end A104264.P4937541099743400281

/-!
# A104265: Smallest n-digit square with no zero digits.

The programs for A104265, there is no canonical definition to state claims against.
-/

/-! ## A104265.P9987126240180998517

`A181440(A096483(n+1)+A001221(2*n+3))²`
-/

namespace A104265.P9987126240180998517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A096483 (n + 1) + A001221 (2 * n + 3)).toNat ^ 2

end

end A104265.P9987126240180998517

/-! ## A104265.P12929927240629361855

`ceil(∏{p}[A289400(n), sqrt(#)])²`
-/

namespace A104265.P12929927240629361855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n).natAbs, Real.sqrt (p : ℝ)⌉ ^ 2

end

end A104265.P12929927240629361855

/-!
# A104266: Largest n-digit square with no zero digits.

The programs for A104266, there is no canonical definition to state claims against.
-/

/-! ## A104266.P13617980558223855306

`A052041(∑[A104264(n+1)])`
-/

namespace A104266.P13617980558223855306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104266.P13617980558223855306

/-! ## A104266.P13842171147022527459

`A052040(∑[A104264(n+1)])²`
-/

namespace A104266.P13842171147022527459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A104266.P13842171147022527459

/-!
# A104268: a(n) = 2*4^(n-1) - (3n-1)/(2n+2)*C(2n,n).

The programs for A104268, the canonical program `A104268.P3559039472787898477` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104268 has offset 1).

The definition of A104268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104268.P3559039472787898477

`2*4^n-(3*(n+1)-1)/(2*(n+1)+2)*C(2*(n+1), n+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104268

/-- `2*4^n-(3*(n+1)-1)/(2*(n+1)+2)*C(2*(n+1), n+1)` -/
def P3559039472787898477.Spec : Prop :=
  ∀ n, P3559039472787898477.a n = (A104268 (n + 1) : ℚ)

end A104268

/-! ## A104268.P18087575557998394585

`A006419(n)+Δ[A014137(n)]`
-/

namespace A104268.P18087575557998394585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006419 n + (f1 (n + 1) - f1 n)

end

end A104268.P18087575557998394585

namespace A104268

/-- `A006419(n)+Δ[A014137(n)]` -/
def P18087575557998394585.Spec : Prop :=
  ∀ n, P18087575557998394585.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P13022782175977830709

`A006419(n)+Δ[A014138(n)]`
-/

namespace A104268.P13022782175977830709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006419 n + (f1 (n + 1) - f1 n)

end

end A104268.P13022782175977830709

namespace A104268

/-- `A006419(n)+Δ[A014138(n)]` -/
def P13022782175977830709.Spec : Prop :=
  ∀ n, P13022782175977830709.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P5334691701870053334

`A006419(n)+record[A097331(n)]`
-/

namespace A104268.P5334691701870053334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006419 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104268.P5334691701870053334

namespace A104268

/-- `A006419(n)+record[A097331(n)]` -/
def P5334691701870053334.Spec : Prop :=
  ∀ n, P5334691701870053334.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P12185630538740288290

`A006419(n)+A000108(n+1)`
-/

namespace A104268.P12185630538740288290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006419 n + A000108 (n + 1)

end

end A104268.P12185630538740288290

namespace A104268

/-- `A006419(n)+A000108(n+1)` -/
def P12185630538740288290.Spec : Prop :=
  ∀ n, P12185630538740288290.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P13722311345390216398

`A319028(n+1)+A008549(n)`
-/

namespace A104268.P13722311345390216398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319028 (n + 1) + A008549 n

end

end A104268.P13722311345390216398

namespace A104268

/-- `A319028(n+1)+A008549(n)` -/
def P13722311345390216398.Spec : Prop :=
  ∀ n, P13722311345390216398.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P18203212633048590314

`A000346(n)-A276666(n+1)`
-/

namespace A104268.P18203212633048590314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 n - A276666 (n + 1)

end

end A104268.P18203212633048590314

namespace A104268

/-- `A000346(n)-A276666(n+1)` -/
def P18203212633048590314.Spec : Prop :=
  ∀ n, P18203212633048590314.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P16758772290965945830

`A000346(n)-A024483(n+2)`
-/

namespace A104268.P16758772290965945830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 n - A024483 (n + 2)

end

end A104268.P16758772290965945830

namespace A104268

/-- `A000346(n)-A024483(n+2)` -/
def P16758772290965945830.Spec : Prop :=
  ∀ n, P16758772290965945830.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P15636215188991200920

`A026008(2*n)+A006419(n)`
-/

namespace A104268.P15636215188991200920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n) + A006419 n

end

end A104268.P15636215188991200920

namespace A104268

/-- `A026008(2*n)+A006419(n)` -/
def P15636215188991200920.Spec : Prop :=
  ∀ n, P15636215188991200920.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P8495274734348629492

`2*A008549(n)-A246434(n+1)`
-/

namespace A104268.P8495274734348629492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008549 n - A246434 (n + 1)

end

end A104268.P8495274734348629492

namespace A104268

/-- `2*A008549(n)-A246434(n+1)` -/
def P8495274734348629492.Spec : Prop :=
  ∀ n, P8495274734348629492.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P16138064356435547063

`A246434(n+1)+2*A319028(n+1)`
-/

namespace A104268.P16138064356435547063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246434 (n + 1) + 2 * A319028 (n + 1)

end

end A104268.P16138064356435547063

namespace A104268

/-- `A246434(n+1)+2*A319028(n+1)` -/
def P16138064356435547063.Spec : Prop :=
  ∀ n, P16138064356435547063.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P13778963655470399659

`A032443(n+1)-2*A001791(n+1)`
-/

namespace A104268.P13778963655470399659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 (n + 1) - 2 * A001791 (n + 1)

end

end A104268.P13778963655470399659

namespace A104268

/-- `A032443(n+1)-2*A001791(n+1)` -/
def P13778963655470399659.Spec : Prop :=
  ∀ n, P13778963655470399659.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P12781722330520053097

`A093387(2*(n+1))-A246434(n+1)`
-/

namespace A104268.P12781722330520053097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093387 (2 * (n + 1)) - A246434 (n + 1)

end

end A104268.P12781722330520053097

namespace A104268

/-- `A093387(2*(n+1))-A246434(n+1)` -/
def P12781722330520053097.Spec : Prop :=
  ∀ n, P12781722330520053097.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P9997126473852116006

`A191389(2*(n+1))+A126120(2*(n+1))`
-/

namespace A104268.P9997126473852116006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (2 * (n + 1)) + A126120 (2 * (n + 1))

end

end A104268.P9997126473852116006

namespace A104268

/-- `A191389(2*(n+1))+A126120(2*(n+1))` -/
def P9997126473852116006.Spec : Prop :=
  ∀ n, P9997126473852116006.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P17013862953502908570

`A045621(2*n+1)-n*A000108(n+1)`
-/

namespace A104268.P17013862953502908570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n + 1) - (n : ℤ) * A000108 (n + 1)

end

end A104268.P17013862953502908570

namespace A104268

/-- `A045621(2*n+1)-n*A000108(n+1)` -/
def P17013862953502908570.Spec : Prop :=
  ∀ n, P17013862953502908570.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P11294356643809722418

`A014138(n+1)+A006419(n)-A014138(n)`
-/

namespace A104268.P11294356643809722418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (n + 1) + (A006419 n - A014138 n)

end

end A104268.P11294356643809722418

namespace A104268

/-- `A014138(n+1)+A006419(n)-A014138(n)` -/
def P11294356643809722418.Spec : Prop :=
  ∀ n, P11294356643809722418.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P9710728130757726778

`A000108(n+1)+A008549(n+1)-A000346(n)`
-/

namespace A104268.P9710728130757726778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A008549 (n + 1) - A000346 n)

end

end A104268.P9710728130757726778

namespace A104268

/-- `A000108(n+1)+A008549(n+1)-A000346(n)` -/
def P9710728130757726778.Spec : Prop :=
  ∀ n, P9710728130757726778.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P4435642762269128717

`A000302(n+1)-(A162551(n+1)+A000346(n))`
-/

namespace A104268.P4435642762269128717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) - (A162551 (n + 1) + A000346 n)

end

end A104268.P4435642762269128717

namespace A104268

/-- `A000302(n+1)-(A162551(n+1)+A000346(n))` -/
def P4435642762269128717.Spec : Prop :=
  ∀ n, P4435642762269128717.a n = A104268 (n + 1)

end A104268

/-! ## A104268.P11080378394011333625

`A000108(n+1)+A032443(n+1)-A001700(n+1)`
-/

namespace A104268.P11080378394011333625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A032443 (n + 1) - A001700 (n + 1))

end

end A104268.P11080378394011333625

namespace A104268

/-- `A000108(n+1)+A032443(n+1)-A001700(n+1)` -/
def P11080378394011333625.Spec : Prop :=
  ∀ n, P11080378394011333625.a n = A104268 (n + 1)

end A104268

/-!
# A104269: Prime numbers p such that primepi(p) + p is a square.

The programs for A104269, there is no canonical definition to state claims against.
-/

/-! ## A104269.P14942922413403866318

`A086968(n+1)*A086968(n+1)-A064371(n+2)`
-/

namespace A104269.P14942922413403866318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086968 (n + 1) * A086968 (n + 1) - A064371 (n + 2)

end

end A104269.P14942922413403866318

/-! ## A104269.P6499847563732312083

`p?[A073945(n+1)]`
-/

namespace A104269.P6499847563732312083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104269.P6499847563732312083

/-! ## A104269.P13132155455124174186

`p?[record[A073945(A291769(n))]]`
-/

namespace A104269.P13132155455124174186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073945 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104269.P13132155455124174186

/-! ## A104269.P12007443669096497318

`p?[record[A073945(A329048(n))]]`
-/

namespace A104269.P12007443669096497318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073945 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104269.P12007443669096497318

/-! ## A104269.P12431366574732008196

`A000040(A064371(n+2))`
-/

namespace A104269.P12431366574732008196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064371 (n + 2)).toNat

end

end A104269.P12431366574732008196

/-!
# A104270: a(n) = 2^(n - 2)*(binomial(n,2) + 2).

The programs for A104270, the canonical program `A104270.P10364995611620010943` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104270 has offset 1).

The definition of A104270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104270.P16430586498243554407

`2^(n-1)*(C(n+1, 2)+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104270.P16430586498243554407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 1) 2 + 2 : ℚ)

end

end A104270.P16430586498243554407

namespace A104270

/-- `2^(n-1)*(C(n+1, 2)+2)` -/
def P16430586498243554407.Spec : Prop :=
  ∀ n, P16430586498243554407.a n = (A104270 (n + 1) : ℚ)

end A104270

/-! ## A104270.P9065591948753218188

`2^(n-2)*((n+1)²-(n+1)+4)`
-/

namespace A104270.P9065591948753218188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 4 : ℚ)

end

end A104270.P9065591948753218188

namespace A104270

/-- `2^(n-2)*((n+1)²-(n+1)+4)` -/
def P9065591948753218188.Spec : Prop :=
  ∀ n, P9065591948753218188.a n = (A104270 (n + 1) : ℚ)

theorem P9065591948753218188.correct : P9065591948753218188.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A104270, Nat.add_sub_cancel, A104270.P9065591948753218188.a, A104270.P10364995611620010943.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A104270, Nat.add_sub_cancel, A104270.P9065591948753218188.a, A104270.P10364995611620010943.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A104270

/-! ## A104270.P2158635884633437219

`ogf((1-3x+4x^2)/(1-6x+12x^2-8x^3))`
-/

namespace A104270.P2158635884633437219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -6, 12, -8] n

end

end A104270.P2158635884633437219

namespace A104270

/-- `ogf((1-3x+4x^2)/(1-6x+12x^2-8x^3))` -/
def P2158635884633437219.Spec : Prop :=
  ∀ n, P2158635884633437219.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P10364995611620010943

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104270

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P10364995611620010943.Spec : Prop :=
  ∀ n, P10364995611620010943.a n = A104270 (n + 1)

theorem P10364995611620010943.correct : P10364995611620010943.Spec := by
  intro n
  simp only [A104270, Nat.add_sub_cancel]

end A104270

/-! ## A104270.P13142442309455517307

`2*a(n-1)+n*2^(n-1)` with `a(0)=1`
-/

namespace A104270.P13142442309455517307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A104270.P13142442309455517307

namespace A104270

/-- `2*a(n-1)+n*2^(n-1)` -/
def P13142442309455517307.Spec : Prop :=
  ∀ n, P13142442309455517307.a n = (A104270 (n + 1) : ℚ)

end A104270

/-! ## A104270.P13285558071743776744

`∑[A084264(n)]`
-/

namespace A104270.P13285558071743776744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104270.P13285558071743776744

namespace A104270

/-- `∑[A084264(n)]` -/
def P13285558071743776744.Spec : Prop :=
  ∀ n, P13285558071743776744.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P7133528086687298909

`A001788(n)+2^n`
-/

namespace A104270.P7133528086687298909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (2 ^ n : ℤ)

end

end A104270.P7133528086687298909

namespace A104270

/-- `A001788(n)+2^n` -/
def P7133528086687298909.Spec : Prop :=
  ∀ n, P7133528086687298909.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P4973678257609373350

`A081908(n+1)-2^n`
-/

namespace A104270.P4973678257609373350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 (n + 1) - (2 ^ n : ℤ)

end

end A104270.P4973678257609373350

namespace A104270

/-- `A081908(n+1)-2^n` -/
def P4973678257609373350.Spec : Prop :=
  ∀ n, P4973678257609373350.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P4616280335032930807

`2^(n+1)-A127276(n)`
-/

namespace A104270.P4616280335032930807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A127276 n

end

end A104270.P4616280335032930807

namespace A104270

/-- `2^(n+1)-A127276(n)` -/
def P4616280335032930807.Spec : Prop :=
  ∀ n, P4616280335032930807.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P15930879717934135753

`2^n+∑[n]*A011782(n)`
-/

namespace A104270.P15930879717934135753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011782 n

end

end A104270.P15930879717934135753

namespace A104270

/-- `2^n+∑[n]*A011782(n)` -/
def P15930879717934135753.Spec : Prop :=
  ∀ n, P15930879717934135753.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P16405556440805686964

`A001787(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A104270.P16405556440805686964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001787 n + 2 * a (n - 1)

end

end A104270.P16405556440805686964

namespace A104270

/-- `A001787(n)+2*a(n-1)` -/
def P16405556440805686964.Spec : Prop :=
  ∀ n, P16405556440805686964.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P8437923866207924319

`A139756(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A104270.P8437923866207924319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139756 (n + 1) + 2 * a (n - 1)

end

end A104270.P8437923866207924319

namespace A104270

/-- `A139756(n+1)+2*a(n-1)` -/
def P8437923866207924319.Spec : Prop :=
  ∀ n, P8437923866207924319.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P1591936635252186434

`A000079(n)+A001788(n)`
-/

namespace A104270.P1591936635252186434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A001788 n

end

end A104270.P1591936635252186434

namespace A104270

/-- `A000079(n)+A001788(n)` -/
def P1591936635252186434.Spec : Prop :=
  ∀ n, P1591936635252186434.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P17826630108445348033

`A001815(n)+A001792(n)`
-/

namespace A104270.P17826630108445348033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + A001792 n

end

end A104270.P17826630108445348033

namespace A104270

/-- `A001815(n)+A001792(n)` -/
def P17826630108445348033.Spec : Prop :=
  ∀ n, P17826630108445348033.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P17820104310583284774

`A048506(n)+A000225(n)`
-/

namespace A104270.P17820104310583284774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 n + A000225 n

end

end A104270.P17820104310583284774

namespace A104270

/-- `A048506(n)+A000225(n)` -/
def P17820104310583284774.Spec : Prop :=
  ∀ n, P17820104310583284774.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P9381299738581648287

`A053730(n)+A001787(n)`
-/

namespace A104270.P9381299738581648287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053730 n + A001787 n

end

end A104270.P9381299738581648287

namespace A104270

/-- `A053730(n)+A001787(n)` -/
def P9381299738581648287.Spec : Prop :=
  ∀ n, P9381299738581648287.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P13633037994168576424

`A053545(n)+A005183(n)`
-/

namespace A104270.P13633037994168576424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053545 n + A005183 n

end

end A104270.P13633037994168576424

namespace A104270

/-- `A053545(n)+A005183(n)` -/
def P13633037994168576424.Spec : Prop :=
  ∀ n, P13633037994168576424.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P17068135808071754475

`A131577(n)+A087431(n)`
-/

namespace A104270.P17068135808071754475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A087431 n

end

end A104270.P17068135808071754475

namespace A104270

/-- `A131577(n)+A087431(n)` -/
def P17068135808071754475.Spec : Prop :=
  ∀ n, P17068135808071754475.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P1762878386928034772

`A176027(n)+A159964(n)`
-/

namespace A104270.P1762878386928034772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n + A159964 n

end

end A104270.P1762878386928034772

namespace A104270

/-- `A176027(n)+A159964(n)` -/
def P1762878386928034772.Spec : Prop :=
  ∀ n, P1762878386928034772.a n = A104270 (n + 1)

end A104270

/-! ## A104270.P15463888410952082505

`A000225(n)+A001788(n)+1`
-/

namespace A104270.P15463888410952082505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A001788 n + 1)

end

end A104270.P15463888410952082505

namespace A104270

/-- `A000225(n)+A001788(n)+1` -/
def P15463888410952082505.Spec : Prop :=
  ∀ n, P15463888410952082505.a n = A104270 (n + 1)

end A104270

/-!
# A104271: First element of first run of exactly n consecutive numbers not of form x^2+y^2.

The programs for A104271, there is no canonical definition to state claims against.
-/

/-! ## A104271.P15373995053028294313

`A260157(n+1)*A333768(A276959(n+1))`
-/

namespace A104271.P15373995053028294313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260157 (n + 1) * A333768 (A276959 (n + 1)).toNat

end

end A104271.P15373995053028294313

/-! ## A104271.P12870504008232323078

`lcm(A036036(A005435(n+1)), A260157(n+1))`
-/

namespace A104271.P12870504008232323078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036036 (A005435 (n + 1)).toNat) (A260157 (n + 1))

end

end A104271.P12870504008232323078

/-! ## A104271.P8730647851439465249

`A014963(A052556(n))*A260157(n+1)`
-/

namespace A104271.P8730647851439465249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A052556 n).toNat * A260157 (n + 1)

end

end A104271.P8730647851439465249

/-!
# A104272: Ramanujan primes R_n: a(n) is the smallest number such that if x >= a(n), then pi(x) - pi(x/2) >= n, where pi(x) is the number of primes <= x.

The programs for A104272, there is no canonical definition to state claims against.
-/

/-! ## A104272.P2967352922496061386

`A000040(2*(n+1))+A233739(n+1)`
-/

namespace A104272.P2967352922496061386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) + A233739 (n + 1)

end

end A104272.P2967352922496061386

/-! ## A104272.P13793726874128707932

`A000040(A179196(n+1))`
-/

namespace A104272.P13793726874128707932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179196 (n + 1)).toNat

end

end A104272.P13793726874128707932

/-! ## A104272.P17746275371930205571

`A182873(n)+a(n-1)` with `a(0)=2`
-/

namespace A104272.P17746275371930205571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A182873 n + a (n - 1)

end

end A104272.P17746275371930205571

/-! ## A104272.P11664053106465955373

`A233739(n+1)+A031215(n+1)`
-/

namespace A104272.P11664053106465955373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233739 (n + 1) + A031215 (n + 1)

end

end A104272.P11664053106465955373

/-! ## A104272.P10808198938704245548

`A194217(n+1)+A080359(n+1)`
-/

namespace A104272.P10808198938704245548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194217 (n + 1) + A080359 (n + 1)

end

end A104272.P10808198938704245548

/-! ## A104272.P12155882271160575926

`2*A168421(n+1)-A165959(n+1)`
-/

namespace A104272.P12155882271160575926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168421 (n + 1) - A165959 (n + 1)

end

end A104272.P12155882271160575926

/-! ## A104272.P4711752845840817659

`∑[A182873(n+1)]+2-A182873(n+1)`
-/

namespace A104272.P4711752845840817659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A182873 (n + 1))

end

end A104272.P4711752845840817659

/-! ## A104272.P11121582686695489427

`A006093(abs(A179196(n+1)-1)+1)+1`
-/

namespace A104272.P11121582686695489427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (|A179196 (n + 1) - 1| + 1).toNat + 1

end

end A104272.P11121582686695489427

/-! ## A104272.P5458060473804544128

`A000040(A000720(A084139(n))+1+n)`
-/

namespace A104272.P5458060473804544128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A084139 n).toNat + 1 + (n : ℤ)).toNat

end

end A104272.P5458060473804544128

/-! ## A104272.P8966268296195576577

`A000040(A000720(A168421(n+1))+n)`
-/

namespace A104272.P8966268296195576577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A168421 (n + 1)).toNat + (n : ℤ)).toNat

end

end A104272.P8966268296195576577

/-! ## A104272.P9860092919163477619

`A057427(n+1)+A006093(A179196(n+1))`
-/

namespace A104272.P9860092919163477619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + A006093 (A179196 (n + 1)).toNat

end

end A104272.P9860092919163477619

/-! ## A104272.P15552443338049509854

`A151800(2*A084139(n)-1)`
-/

namespace A104272.P15552443338049509854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A084139 n - 1).toNat

end

end A104272.P15552443338049509854

/-! ## A104272.P11821104243922368620

`A151800(A084139(n)+A084139(n)-1)`
-/

namespace A104272.P11821104243922368620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A084139 n + (A084139 n - 1)).toNat

end

end A104272.P11821104243922368620

/-! ## A104272.P6536061000085368807

`A151800(A084139(n)-(1-A084139(n)))`
-/

namespace A104272.P6536061000085368807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A084139 n - (1 - A084139 n)).toNat

end

end A104272.P6536061000085368807

/-! ## A104272.P12637333537028414745

`A034694(A084139(n))`
-/

namespace A104272.P12637333537028414745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A084139 n).toNat

end

end A104272.P12637333537028414745

/-! ## A104272.P2750233470650469141

`A047268(A084139(n)+1)`
-/

namespace A104272.P2750233470650469141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (A084139 n + 1).toNat

end

end A104272.P2750233470650469141

/-! ## A104272.P17991105412797882352

`A047268(A084140(n+1))`
-/

namespace A104272.P17991105412797882352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (A084140 (n + 1)).toNat

end

end A104272.P17991105412797882352

/-! ## A104272.P10896357203379980846

`A005408(A084139(n))+n-A028310(n)`
-/

namespace A104272.P10896357203379980846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A084139 n).toNat + ((n : ℤ) - A028310 n)

end

end A104272.P10896357203379980846

/-! ## A104272.P3416371948088578542

`A194659(n+1)+A194658(n+1)`
-/

namespace A104272.P3416371948088578542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194659 (n + 1) + A194658 (n + 1)

end

end A104272.P3416371948088578542

/-!
# A104273: Table of Sprague-Grundy functions for a certain family of hypergraphs, read by antidiagonals.

The programs for A104273, there is no canonical definition to state claims against.
-/

/-! ## A104273.P11483331803992900720

`11%(A051778(n+3)+1)`
-/

namespace A104273.P11483331803992900720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A051778 (n + 3) + 1)

end

end A104273.P11483331803992900720

/-! ## A104273.P10521617651369049195

`A002186(A051778(n+3))`
-/

namespace A104273.P10521617651369049195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 (A051778 (n + 3)).toNat

end

end A104273.P10521617651369049195

/-! ## A104273.P7092533857755465940

`A092234(A051778(n+3)²)`
-/

namespace A104273.P7092533857755465940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092234 (A051778 (n + 3) ^ 2).toNat

end

end A104273.P7092533857755465940

/-! ## A104273.P18054190348852241078

`A004648(A051778(n+3)+1)`
-/

namespace A104273.P18054190348852241078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A051778 (n + 3) + 1).toNat

end

end A104273.P18054190348852241078

/-! ## A104273.P6210756834403628342

`A066909(A051778(n+3)+1)`
-/

namespace A104273.P6210756834403628342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066909 (A051778 (n + 3) + 1).toNat

end

end A104273.P6210756834403628342

/-!
# A104275: Numbers k such that 2k-1 is not prime.

The programs for A104275, the canonical program `A104275.P760458328655210773` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104275 has offset 1).

The definition of A104275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104275.P760458328655210773

`(A014076(n+1)+1)/2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104275

/-- `(A014076(n+1)+1)/2` -/
def P760458328655210773.Spec : Prop :=
  ∀ n, P760458328655210773.a n = (A104275 (n + 1) : ℚ)

end A104275

/-! ## A104275.P4769205768191879308

`1+A047845(n+1)`
-/

namespace A104275.P4769205768191879308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A047845 (n + 1)

end

end A104275.P4769205768191879308

namespace A104275

/-- `1+A047845(n+1)` -/
def P4769205768191879308.Spec : Prop :=
  ∀ n, P4769205768191879308.a n = A104275 (n + 1)

end A104275

/-! ## A104275.P4744465371179521377

`A153043(n+1)-1`
-/

namespace A104275.P4744465371179521377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1) - 1

end

end A104275.P4744465371179521377

namespace A104275

/-- `A153043(n+1)-1` -/
def P4744465371179521377.Spec : Prop :=
  ∀ n, P4744465371179521377.a n = A104275 (n + 1)

end A104275

/-! ## A104275.P11080457964875924666

`A153044(n+1)-4`
-/

namespace A104275.P11080457964875924666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1) - 4

end

end A104275.P11080457964875924666

namespace A104275

/-- `A153044(n+1)-4` -/
def P11080457964875924666.Spec : Prop :=
  ∀ n, P11080457964875924666.a n = A104275 (n + 1)

end A104275

/-! ## A104275.P16629748720151192369

`A153049(n+1)-6`
-/

namespace A104275.P16629748720151192369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1) - 6

end

end A104275.P16629748720151192369

namespace A104275

/-- `A153049(n+1)-6` -/
def P16629748720151192369.Spec : Prop :=
  ∀ n, P16629748720151192369.a n = A104275 (n + 1)

end A104275

/-! ## A104275.P9029763618339923285

`A153051(n+1)-8`
-/

namespace A104275.P9029763618339923285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (n + 1) - 8

end

end A104275.P9029763618339923285

namespace A104275

/-- `A153051(n+1)-8` -/
def P9029763618339923285.Spec : Prop :=
  ∀ n, P9029763618339923285.a n = A104275 (n + 1)

end A104275

/-! ## A104275.P9069343660447405474

`A153041(n+1)-9`
-/

namespace A104275.P9069343660447405474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153041 (n + 1) - 9

end

end A104275.P9069343660447405474

namespace A104275

/-- `A153041(n+1)-9` -/
def P9069343660447405474.Spec : Prop :=
  ∀ n, P9069343660447405474.a n = A104275 (n + 1)

end A104275

/-! ## A104275.P8396747216580964060

`lt[A101264(n), 1]+1`
-/

namespace A104275.P8396747216580964060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A104275.P8396747216580964060

namespace A104275

/-- `lt[A101264(n), 1]+1` -/
def P8396747216580964060.Spec : Prop :=
  ∀ n, (P8396747216580964060.a n : ℤ) = A104275 (n + 1)

end A104275

/-! ## A104275.P5575187813215321343

`ceil(A014076(n+1)/2)`
-/

namespace A104275.P5575187813215321343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014076 (n + 1) : ℚ) / 2⌉

end

end A104275.P5575187813215321343

namespace A104275

/-- `ceil(A014076(n+1)/2)` -/
def P5575187813215321343.Spec : Prop :=
  ∀ n, P5575187813215321343.a n = A104275 (n + 1)

end A104275

/-! ## A104275.P5781708854222967686

`comp[A005097(n+1)]+1`
-/

namespace A104275.P5781708854222967686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A104275.P5781708854222967686

namespace A104275

/-- `comp[A005097(n+1)]+1` -/
def P5781708854222967686.Spec : Prop :=
  ∀ n, (P5781708854222967686.a n : ℤ) = A104275 (n + 1)

end A104275

/-! ## A104275.P16285590355024250502

`comp[A130290(n+1)]+1`
-/

namespace A104275.P16285590355024250502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A104275.P16285590355024250502

namespace A104275

/-- `comp[A130290(n+1)]+1` -/
def P16285590355024250502.Spec : Prop :=
  ∀ n, (P16285590355024250502.a n : ℤ) = A104275 (n + 1)

end A104275

/-! ## A104275.P10923460285883133748

`comp[A102781(n+2)]+1`
-/

namespace A104275.P10923460285883133748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A104275.P10923460285883133748

namespace A104275

/-- `comp[A102781(n+2)]+1` -/
def P10923460285883133748.Spec : Prop :=
  ∀ n, (P10923460285883133748.a n : ℤ) = A104275 (n + 1)

end A104275

/-! ## A104275.P8351727918684378510

`(A172048(n+1)+1)/3`
-/

namespace A104275.P8351727918684378510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172048 (n + 1) + 1 : ℚ) / 3

end

end A104275.P8351727918684378510

namespace A104275

/-- `(A172048(n+1)+1)/3` -/
def P8351727918684378510.Spec : Prop :=
  ∀ n, P8351727918684378510.a n = (A104275 (n + 1) : ℚ)

end A104275

/-! ## A104275.P15251164936771280112

`A179899(n+1)/3+1`
-/

namespace A104275.P15251164936771280112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179899 (n + 1) : ℚ) / 3 + 1

end

end A104275.P15251164936771280112

namespace A104275

/-- `A179899(n+1)/3+1` -/
def P15251164936771280112.Spec : Prop :=
  ∀ n, P15251164936771280112.a n = (A104275 (n + 1) : ℚ)

end A104275

/-! ## A104275.P13233026798533990444

`A196274(n)+a(n-1)` with `a(0)=1`
-/

namespace A104275.P13233026798533990444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A196274 n + a (n - 1)

end

end A104275.P13233026798533990444

namespace A104275

/-- `A196274(n)+a(n-1)` -/
def P13233026798533990444.Spec : Prop :=
  ∀ n, P13233026798533990444.a n = A104275 (n + 1)

end A104275

/-! ## A104275.P13129662839239169341

`comp[A067076(n+1)+1]+1`
-/

namespace A104275.P13129662839239169341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A104275.P13129662839239169341

namespace A104275

/-- `comp[A067076(n+1)+1]+1` -/
def P13129662839239169341.Spec : Prop :=
  ∀ n, (P13129662839239169341.a n : ℤ) = A104275 (n + 1)

end A104275

/-! ## A104275.P15902701387590602956

`record[A171435(2*n+1)-n]`
-/

namespace A104275.P15902701387590602956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104275.P15902701387590602956

namespace A104275

/-- `record[A171435(2*n+1)-n]` -/
def P15902701387590602956.Spec : Prop :=
  ∀ n, P15902701387590602956.a n = A104275 (n + 1)

end A104275

/-! ## A104275.P15187718475629823989

`comp[floor(A000040(n+1)/2)]+1`
-/

namespace A104275.P15187718475629823989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A104275.P15187718475629823989

namespace A104275

/-- `comp[floor(A000040(n+1)/2)]+1` -/
def P15187718475629823989.Spec : Prop :=
  ∀ n, (P15187718475629823989.a n : ℤ) = A104275 (n + 1)

end A104275

/-! ## A104275.P6798865935578776813

`comp[ceil(sinh(log(A006530(2*n+1))))]`
-/

namespace A104275.P6798865935578776813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (A006530 (2 * n + 1) : ℝ))⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104275.P6798865935578776813

namespace A104275

/-- `comp[ceil(sinh(log(A006530(2*n+1))))]` -/
def P6798865935578776813.Spec : Prop :=
  ∀ n, (P6798865935578776813.a n : ℤ) = A104275 (n + 1)

end A104275

/-! ## A104275.P14062400143303885772

`comp[ceil(sinh(log(A020639(2*n+1))))]`
-/

namespace A104275.P14062400143303885772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (A020639 (2 * n + 1) : ℝ))⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104275.P14062400143303885772

namespace A104275

/-- `comp[ceil(sinh(log(A020639(2*n+1))))]` -/
def P14062400143303885772.Spec : Prop :=
  ∀ n, (P14062400143303885772.a n : ℤ) = A104275 (n + 1)

end A104275

/-! ## A104275.P17022633825475478031

`lt[∑{p}[2*n+1, #], n+2]+1`
-/

namespace A104275.P17022633825475478031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A104275.P17022633825475478031

namespace A104275

/-- `lt[∑{p}[2*n+1, #], n+2]+1` -/
def P17022633825475478031.Spec : Prop :=
  ∀ n, (P17022633825475478031.a n : ℤ) = A104275 (n + 1)

end A104275

/-!
# A104276: Number of partitions of n in which both even and odd squares occur with multiplicity 1. There is no restriction on the parts which are twice even squares.

The programs for A104276, there is no canonical definition to state claims against.
-/

/-! ## A104276.P3300683664611185061

`A284171(n)+A225099(A339164(n))`
-/

namespace A104276.P3300683664611185061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284171 n + A225099 (A339164 n).toNat

end

end A104276.P3300683664611185061

/-! ## A104276.P7248178062807318142

`A230000(A042990(n)+4)`
-/

namespace A104276.P7248178062807318142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230000 (A042990 n + 4).toNat

end

end A104276.P7248178062807318142

/-! ## A104276.P3536187130827969760

`A286320(n)+∑[A249832(A092263(n+1))]`
-/

namespace A104276.P3536187130827969760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A092263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286320 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104276.P3536187130827969760

/-! ## A104276.P15833117811951063241

`A284171(n)+∑[A185284(A189716(n+1))]`
-/

namespace A104276.P15833117811951063241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A189716 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284171 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104276.P15833117811951063241

/-! ## A104276.P17259620657645828797

`A286320(n)+A165877(A191348(n))`
-/

namespace A104276.P17259620657645828797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286320 n + A165877 (A191348 n).toNat

end

end A104276.P17259620657645828797

/-!
# A104278: Numbers m such that 2m+1 and 2m-1 are not primes.

The programs for A104278, the canonical program `A104278.P9462042051971576230` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104278 has offset 1).

The definition of A104278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104278.P6826450536732496171

`sqrt(A296304(n+2))`
-/

namespace A104278.P6826450536732496171
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A296304 (n + 2) : ℝ)

end

end A104278.P6826450536732496171

namespace A104278

/-- `sqrt(A296304(n+2))` -/
def P6826450536732496171.Spec : Prop :=
  ∀ n, P6826450536732496171.a n = (A104278 (n + 1) : ℝ)

end A104278

/-! ## A104278.P15290386070086105877

`A061673(n+1)/2`
-/

namespace A104278.P15290386070086105877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061673 (n + 1) : ℚ) / 2

end

end A104278.P15290386070086105877

namespace A104278

/-- `A061673(n+1)/2` -/
def P15290386070086105877.Spec : Prop :=
  ∀ n, P15290386070086105877.a n = (A104278 (n + 1) : ℚ)

theorem P15290386070086105877.correct : P15290386070086105877.Spec := by
  intro n
  simp only [A104278, Nat.add_sub_cancel, A104278.P15290386070086105877.a, A104278.P9462042051971576230.f1, A104278.P9462042051971576230.f2, A104278.P9462042051971576230.a, A061673, A061673.P6703242266188128252.f1, A061673.P6703242266188128252.f2, A061673.P6703242266188128252.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104278

/-! ## A104278.P7768938483141814949

`lt[2, A067760(n)]+2`
-/

namespace A104278.P7768938483141814949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A104278.P7768938483141814949

namespace A104278

/-- `lt[2, A067760(n)]+2` -/
def P7768938483141814949.Spec : Prop :=
  ∀ n, (P7768938483141814949.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P26869880316988431

`lt[5, A020481(n+2)]`
-/

namespace A104278.P26869880316988431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104278.P26869880316988431

namespace A104278

/-- `lt[5, A020481(n+2)]` -/
def P26869880316988431.Spec : Prop :=
  ∀ n, (P26869880316988431.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P1918554454869627023

`floor(A025583(n+1)/2)`
-/

namespace A104278.P1918554454869627023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025583 (n + 1) : ℚ) / 2⌋

end

end A104278.P1918554454869627023

namespace A104278

/-- `floor(A025583(n+1)/2)` -/
def P1918554454869627023.Spec : Prop :=
  ∀ n, P1918554454869627023.a n = A104278 (n + 1)

end A104278

/-! ## A104278.P5749620178860458015

`(A269345(n+1)+1)/2`
-/

namespace A104278.P5749620178860458015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269345 (n + 1) + 1 : ℚ) / 2

end

end A104278.P5749620178860458015

namespace A104278

/-- `(A269345(n+1)+1)/2` -/
def P5749620178860458015.Spec : Prop :=
  ∀ n, P5749620178860458015.a n = (A104278 (n + 1) : ℚ)

theorem P5749620178860458015.correct : P5749620178860458015.Spec := by
  intro n
  simp only [A104278, Nat.add_sub_cancel, A104278.P5749620178860458015.a, A104278.P9462042051971576230.f1, A104278.P9462042051971576230.f2, A104278.P9462042051971576230.a, A175851, A175851.P13592010490707745070.a, A269345, A269345.P4206844201345878076.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, A061673, A061673.P6703242266188128252.f1, A061673.P6703242266188128252.f2, A061673.P6703242266188128252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104278

/-! ## A104278.P10076208743536096876

`A298366(n+1)/2-2`
-/

namespace A104278.P10076208743536096876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298366 (n + 1) : ℚ) / 2 - 2

end

end A104278.P10076208743536096876

namespace A104278

/-- `A298366(n+1)/2-2` -/
def P10076208743536096876.Spec : Prop :=
  ∀ n, P10076208743536096876.a n = (A104278 (n + 1) : ℚ)

theorem P10076208743536096876.correct : P10076208743536096876.Spec := by
  intro n
  simp only [A104278, Nat.add_sub_cancel, A104278.P10076208743536096876.a, A104278.P9462042051971576230.f1, A104278.P9462042051971576230.f2, A104278.P9462042051971576230.a, A175851, A175851.P13592010490707745070.a, A298366, A298366.P16780955431485269286.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, A061673, A061673.P6703242266188128252.f1, A061673.P6703242266188128252.f2, A061673.P6703242266188128252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104278

/-! ## A104278.P9462042051971576230

`lt[3, A175851(2*n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104278

/-- `lt[3, A175851(2*n+1)]` -/
def P9462042051971576230.Spec : Prop :=
  ∀ n, (P9462042051971576230.a n : ℤ) = A104278 (n + 1)

theorem P9462042051971576230.correct : P9462042051971576230.Spec := by
  intro n
  simp only [A104278, Nat.add_sub_cancel]

end A104278

/-! ## A104278.P9303403244950059883

`(A109934(n+3)-1)/2`
-/

namespace A104278.P9303403244950059883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109934 (n + 3) - 1 : ℚ) / 2

end

end A104278.P9303403244950059883

namespace A104278

/-- `(A109934(n+3)-1)/2` -/
def P9303403244950059883.Spec : Prop :=
  ∀ n, P9303403244950059883.a n = (A104278 (n + 1) : ℚ)

end A104278

/-! ## A104278.P30956791116411620

`A104275(A196276(n+1))`
-/

namespace A104278.P30956791116411620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (A196276 (n + 1)).toNat

end

end A104278.P30956791116411620

namespace A104278

/-- `A104275(A196276(n+1))` -/
def P30956791116411620.Spec : Prop :=
  ∀ n, P30956791116411620.a n = A104278 (n + 1)

end A104278

/-! ## A104278.P3356409052561405824

`∩[A104275(n+1)-1, A104275(n+1)]`
-/

namespace A104278.P3356409052561405824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104278.P3356409052561405824

namespace A104278

/-- `∩[A104275(n+1)-1, A104275(n+1)]` -/
def P3356409052561405824.Spec : Prop :=
  ∀ n, (P3356409052561405824.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P963071795739157597

`A047845(A196276(n+1)+1)`
-/

namespace A104278.P963071795739157597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (A196276 (n + 1) + 1).toNat

end

end A104278.P963071795739157597

namespace A104278

/-- `A047845(A196276(n+1)+1)` -/
def P963071795739157597.Spec : Prop :=
  ∀ n, P963071795739157597.a n = A104278 (n + 1)

end A104278

/-! ## A104278.P18370755303717082145

`∩[A047845(n+1), A053726(n+1)]`
-/

namespace A104278.P18370755303717082145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104278.P18370755303717082145

namespace A104278

/-- `∩[A047845(n+1), A053726(n+1)]` -/
def P18370755303717082145.Spec : Prop :=
  ∀ n, (P18370755303717082145.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P1978323302995993941

`∩[A047845(n+1), A104275(n+1)]`
-/

namespace A104278.P1978323302995993941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104278.P1978323302995993941

namespace A104278

/-- `∩[A047845(n+1), A104275(n+1)]` -/
def P1978323302995993941.Spec : Prop :=
  ∀ n, (P1978323302995993941.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P12280911413965652936

`eq[1, A360097(n+1)]+1`
-/

namespace A104278.P12280911413965652936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104278.P12280911413965652936

namespace A104278

/-- `eq[1, A360097(n+1)]+1` -/
def P12280911413965652936.Spec : Prop :=
  ∀ n, (P12280911413965652936.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P2911435759693548603

`lt[2, A255274(n+1)]+1`
-/

namespace A104278.P2911435759693548603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104278.P2911435759693548603

namespace A104278

/-- `lt[2, A255274(n+1)]+1` -/
def P2911435759693548603.Spec : Prop :=
  ∀ n, (P2911435759693548603.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P6098388657610069192

`lt[2, A309120(n+1)]+1`
-/

namespace A104278.P6098388657610069192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104278.P6098388657610069192

namespace A104278

/-- `lt[2, A309120(n+1)]+1` -/
def P6098388657610069192.Spec : Prop :=
  ∀ n, (P6098388657610069192.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P12562830076446262006

`lt[2, A049847(n+2)]+1`
-/

namespace A104278.P12562830076446262006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049847 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104278.P12562830076446262006

namespace A104278

/-- `lt[2, A049847(n+2)]+1` -/
def P12562830076446262006.Spec : Prop :=
  ∀ n, (P12562830076446262006.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P4710091745706975376

`lt[3, A049653(n+2)]+1`
-/

namespace A104278.P4710091745706975376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104278.P4710091745706975376

namespace A104278

/-- `lt[3, A049653(n+2)]+1` -/
def P4710091745706975376.Spec : Prop :=
  ∀ n, (P4710091745706975376.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P3583410114176418231

`lt[A177961(n+1), n]+1`
-/

namespace A104278.P3583410114176418231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A104278.P3583410114176418231

namespace A104278

/-- `lt[A177961(n+1), n]+1` -/
def P3583410114176418231.Spec : Prop :=
  ∀ n, (P3583410114176418231.a n : ℤ) = A104278 (n + 1)

end A104278

/-! ## A104278.P10075502903448701291

`lt[∑{p}[(2*n)²-1, #], 2*n]`
-/

namespace A104278.P10075502903448701291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A104278.P10075502903448701291

namespace A104278

/-- `lt[∑{p}[(2*n)²-1, #], 2*n]` -/
def P10075502903448701291.Spec : Prop :=
  ∀ n, (P10075502903448701291.a n : ℤ) = A104278 (n + 1)

end A104278

/-!
# A104279: Numbers n such that 2n+1 is prime and 2n-1 is not prime.

The programs for A104279, the canonical program `A104279.P12764755038926620985` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104279 has offset 1).

The definition of A104279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104279.P10928976025756898830

`(A280405(n+1)-3)/6`
-/

namespace A104279.P10928976025756898830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280405 (n + 1) - 3 : ℚ) / 6

end

end A104279.P10928976025756898830

namespace A104279

/-- `(A280405(n+1)-3)/6` -/
def P10928976025756898830.Spec : Prop :=
  ∀ n, P10928976025756898830.a n = (A104279 (n + 1) : ℚ)

theorem P10928976025756898830.correct : P10928976025756898830.Spec := by
  intro n
  simp only [A104279, Nat.add_sub_cancel, A104279.P10928976025756898830.a, A104279.P12764755038926620985.a, A025584, A025584.P1747553391340850671.a, A280405, A280405.P4609664803987210733.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A049688, A049688.P4025135909260073091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104279

/-! ## A104279.P12764755038926620985

`floor(A025584(n+2)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A104279

/-- `floor(A025584(n+2)/2)` -/
def P12764755038926620985.Spec : Prop :=
  ∀ n, P12764755038926620985.a n = A104279 (n + 1)

theorem P12764755038926620985.correct : P12764755038926620985.Spec := by
  intro n
  simp only [A104279, Nat.add_sub_cancel]

end A104279

/-! ## A104279.P17022104314673852925

`A174047(Δ[n²])`
-/

namespace A104279.P17022104314673852925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A104279.P17022104314673852925

namespace A104279

/-- `A174047(Δ[n²])` -/
def P17022104314673852925.Spec : Prop :=
  ∀ n, P17022104314673852925.a n = A104279 (n + 1)

end A104279

/-! ## A104279.P10907631367147602308

`A000027(A174047(2*n+1))`
-/

namespace A104279.P10907631367147602308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A174047 (2 * n + 1)).toNat

end

end A104279.P10907631367147602308

namespace A104279

/-- `A000027(A174047(2*n+1))` -/
def P10907631367147602308.Spec : Prop :=
  ∀ n, P10907631367147602308.a n = A104279 (n + 1)

end A104279

/-! ## A104279.P10539466819700612004

`filter[A174047(n+1), A101264(#)]`
-/

namespace A104279.P10539466819700612004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A104279.P10539466819700612004

namespace A104279

/-- `filter[A174047(n+1), A101264(#)]` -/
def P10539466819700612004.Spec : Prop :=
  ∀ n, P10539466819700612004.a n = A104279 (n + 1)

end A104279

/-! ## A104279.P11038814175358432650

`∩[A005097(n+1), A174047(n+1)]`
-/

namespace A104279.P11038814175358432650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104279.P11038814175358432650

namespace A104279

/-- `∩[A005097(n+1), A174047(n+1)]` -/
def P11038814175358432650.Spec : Prop :=
  ∀ n, (P11038814175358432650.a n : ℤ) = A104279 (n + 1)

end A104279

/-! ## A104279.P10083489387253959879

`∩[A102781(n+1), A174047(n+1)]`
-/

namespace A104279.P10083489387253959879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104279.P10083489387253959879

namespace A104279

/-- `∩[A102781(n+1), A174047(n+1)]` -/
def P10083489387253959879.Spec : Prop :=
  ∀ n, (P10083489387253959879.a n : ℤ) = A104279 (n + 1)

end A104279

/-! ## A104279.P14734551263294732292

`∩[A006254(n+1)-1, A174047(n+1)]`
-/

namespace A104279.P14734551263294732292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104279.P14734551263294732292

namespace A104279

/-- `∩[A006254(n+1)-1, A174047(n+1)]` -/
def P14734551263294732292.Spec : Prop :=
  ∀ n, (P14734551263294732292.a n : ℤ) = A104279 (n + 1)

end A104279

/-! ## A104279.P16861478366628601156

`A100317(A103517(n)+1)/2`
-/

namespace A104279.P16861478366628601156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100317 (A103517 n + 1).toNat : ℚ) / 2

end

end A104279.P16861478366628601156

namespace A104279

/-- `A100317(A103517(n)+1)/2` -/
def P16861478366628601156.Spec : Prop :=
  ∀ n, P16861478366628601156.a n = (A104279 (n + 1) : ℚ)

end A104279

/-! ## A104279.P17853101200312746040

`A000010(A100317(2*(n+1)+1)+1)/2`
-/

namespace A104279.P17853101200312746040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A100317 (2 * (n + 1) + 1) + 1).toNat : ℚ) / 2

end

end A104279.P17853101200312746040

namespace A104279

/-- `A000010(A100317(2*(n+1)+1)+1)/2` -/
def P17853101200312746040.Spec : Prop :=
  ∀ n, P17853101200312746040.a n = (A104279 (n + 1) : ℚ)

end A104279

/-! ## A104279.P9529871022418110946

`filter[A390790(n+1), A101264(#)]`
-/

namespace A104279.P9529871022418110946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A104279.P9529871022418110946

namespace A104279

/-- `filter[A390790(n+1), A101264(#)]` -/
def P9529871022418110946.Spec : Prop :=
  ∀ n, P9529871022418110946.a n = A104279 (n + 1)

end A104279

/-! ## A104279.P3707582140208087999

`∩[A005097(n+1), A390790(n+1)]`
-/

namespace A104279.P3707582140208087999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104279.P3707582140208087999

namespace A104279

/-- `∩[A005097(n+1), A390790(n+1)]` -/
def P3707582140208087999.Spec : Prop :=
  ∀ n, (P3707582140208087999.a n : ℤ) = A104279 (n + 1)

end A104279

/-! ## A104279.P9610557825323148437

`∩[A102781(n+1), A390790(n+1)]`
-/

namespace A104279.P9610557825323148437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104279.P9610557825323148437

namespace A104279

/-- `∩[A102781(n+1), A390790(n+1)]` -/
def P9610557825323148437.Spec : Prop :=
  ∀ n, (P9610557825323148437.a n : ℤ) = A104279 (n + 1)

end A104279

/-! ## A104279.P16782181033207474698

`∩[A174047(n+1), A390790(n+1)]`
-/

namespace A104279.P16782181033207474698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104279.P16782181033207474698

namespace A104279

/-- `∩[A174047(n+1), A390790(n+1)]` -/
def P16782181033207474698.Spec : Prop :=
  ∀ n, (P16782181033207474698.a n : ℤ) = A104279 (n + 1)

end A104279

/-! ## A104279.P8279923594865473242

`A104275(A196277(n+1))`
-/

namespace A104279.P8279923594865473242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (A196277 (n + 1)).toNat

end

end A104279.P8279923594865473242

namespace A104279

/-- `A104275(A196277(n+1))` -/
def P8279923594865473242.Spec : Prop :=
  ∀ n, P8279923594865473242.a n = A104279 (n + 1)

end A104279

/-! ## A104279.P4153257591239880190

`filter[A104275(n+1), A101264(#)]`
-/

namespace A104279.P4153257591239880190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A104279.P4153257591239880190

namespace A104279

/-- `filter[A104275(n+1), A101264(#)]` -/
def P4153257591239880190.Spec : Prop :=
  ∀ n, P4153257591239880190.a n = A104279 (n + 1)

end A104279

/-! ## A104279.P6639664948828164165

`∩[A005097(n+1), A104275(n+1)]`
-/

namespace A104279.P6639664948828164165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104279.P6639664948828164165

namespace A104279

/-- `∩[A005097(n+1), A104275(n+1)]` -/
def P6639664948828164165.Spec : Prop :=
  ∀ n, (P6639664948828164165.a n : ℤ) = A104279 (n + 1)

end A104279

/-! ## A104279.P14156172983134628788

`∩[A102781(n+1), A104275(n+1)]`
-/

namespace A104279.P14156172983134628788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104279.P14156172983134628788

namespace A104279

/-- `∩[A102781(n+1), A104275(n+1)]` -/
def P14156172983134628788.Spec : Prop :=
  ∀ n, (P14156172983134628788.a n : ℤ) = A104279 (n + 1)

end A104279

/-! ## A104279.P9307759322847248762

`∩[A104275(n+1), A174047(n+1)]`
-/

namespace A104279.P9307759322847248762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104279.P9307759322847248762

namespace A104279

/-- `∩[A104275(n+1), A174047(n+1)]` -/
def P9307759322847248762.Spec : Prop :=
  ∀ n, (P9307759322847248762.a n : ℤ) = A104279 (n + 1)

end A104279

/-! ## A104279.P1905130410817527481

`∩[A047845(n+1)+1, A174047(n+1)]`
-/

namespace A104279.P1905130410817527481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104279.P1905130410817527481

namespace A104279

/-- `∩[A047845(n+1)+1, A174047(n+1)]` -/
def P1905130410817527481.Spec : Prop :=
  ∀ n, (P1905130410817527481.a n : ℤ) = A104279 (n + 1)

end A104279

/-!
# A104280: Numbers n such that 2n+1 is not prime and 2n-1 is prime.

The programs for A104280, the canonical program `A104280.P970002712020775772` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104280 has offset 1).

The definition of A104280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104280.P8464945036948350097

`A136798(n+1)/2`
-/

namespace A104280.P8464945036948350097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136798 (n + 1) : ℚ) / 2

end

end A104280.P8464945036948350097

namespace A104280

/-- `A136798(n+1)/2` -/
def P8464945036948350097.Spec : Prop :=
  ∀ n, P8464945036948350097.a n = (A104280 (n + 1) : ℚ)

end A104280

/-! ## A104280.P970002712020775772

`(A049591(n+1)+1)/2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104280

/-- `(A049591(n+1)+1)/2` -/
def P970002712020775772.Spec : Prop :=
  ∀ n, P970002712020775772.a n = (A104280 (n + 1) : ℚ)

end A104280

/-! ## A104280.P14680259299694870740

`(A107987(n+1)-1)/2`
-/

namespace A104280.P14680259299694870740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107987 (n + 1) - 1 : ℚ) / 2

end

end A104280.P14680259299694870740

namespace A104280

/-- `(A107987(n+1)-1)/2` -/
def P14680259299694870740.Spec : Prop :=
  ∀ n, P14680259299694870740.a n = (A104280 (n + 1) : ℚ)

end A104280

/-! ## A104280.P6708060788414082868

`A297925(n+1)/2-2`
-/

namespace A104280.P6708060788414082868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297925 (n + 1) : ℚ) / 2 - 2

end

end A104280.P6708060788414082868

namespace A104280

/-- `A297925(n+1)/2-2` -/
def P6708060788414082868.Spec : Prop :=
  ∀ n, P6708060788414082868.a n = (A104280 (n + 1) : ℚ)

end A104280

/-! ## A104280.P5321138864964488106

`A111333(A049579(n+1))`
-/

namespace A104280.P5321138864964488106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A049579 (n + 1)).toNat

end

end A104280.P5321138864964488106

namespace A104280

/-- `A111333(A049579(n+1))` -/
def P5321138864964488106.Spec : Prop :=
  ∀ n, P5321138864964488106.a n = A104280 (n + 1)

end A104280

/-! ## A104280.P3359604667101914623

`A000203(A049591(n+1))/2`
-/

namespace A104280.P3359604667101914623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A049591 (n + 1)).toNat : ℚ) / 2

end

end A104280.P3359604667101914623

namespace A104280

/-- `A000203(A049591(n+1))/2` -/
def P3359604667101914623.Spec : Prop :=
  ∀ n, P3359604667101914623.a n = (A104280 (n + 1) : ℚ)

end A104280

/-! ## A104280.P15246231838129525320

`eq[3, A175851(2*n+1)]`
-/

namespace A104280.P15246231838129525320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104280.P15246231838129525320

namespace A104280

/-- `eq[3, A175851(2*n+1)]` -/
def P15246231838129525320.Spec : Prop :=
  ∀ n, (P15246231838129525320.a n : ℤ) = A104280 (n + 1)

end A104280

/-! ## A104280.P6345491294158493969

`A174047(2*(n+1))`
-/

namespace A104280.P6345491294158493969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (2 * (n + 1))

end

end A104280.P6345491294158493969

namespace A104280

/-- `A174047(2*(n+1))` -/
def P6345491294158493969.Spec : Prop :=
  ∀ n, P6345491294158493969.a n = A104280 (n + 1)

end A104280

/-! ## A104280.P7882883620640742881

`∩[A006254(n+1), A174047(n+1)]`
-/

namespace A104280.P7882883620640742881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104280.P7882883620640742881

namespace A104280

/-- `∩[A006254(n+1), A174047(n+1)]` -/
def P7882883620640742881.Spec : Prop :=
  ∀ n, (P7882883620640742881.a n : ℤ) = A104280 (n + 1)

end A104280

/-! ## A104280.P8307949942309180991

`A100317(A103517(n+1))/2`
-/

namespace A104280.P8307949942309180991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100317 (A103517 (n + 1)).toNat : ℚ) / 2

end

end A104280.P8307949942309180991

namespace A104280

/-- `A100317(A103517(n+1))/2` -/
def P8307949942309180991.Spec : Prop :=
  ∀ n, P8307949942309180991.a n = (A104280 (n + 1) : ℚ)

end A104280

/-! ## A104280.P2467677422225093484

`∩[A006254(n+1), A390788(n+1)]`
-/

namespace A104280.P2467677422225093484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104280.P2467677422225093484

namespace A104280

/-- `∩[A006254(n+1), A390788(n+1)]` -/
def P2467677422225093484.Spec : Prop :=
  ∀ n, (P2467677422225093484.a n : ℤ) = A104280 (n + 1)

end A104280

/-! ## A104280.P2535474139443566071

`∩[A111333(n+1), A390788(n+1)]`
-/

namespace A104280.P2535474139443566071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104280.P2535474139443566071

namespace A104280

/-- `∩[A111333(n+1), A390788(n+1)]` -/
def P2535474139443566071.Spec : Prop :=
  ∀ n, (P2535474139443566071.a n : ℤ) = A104280 (n + 1)

end A104280

/-! ## A104280.P6844207898452678746

`∩[A174047(n+1), A390788(n+1)]`
-/

namespace A104280.P6844207898452678746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104280.P6844207898452678746

namespace A104280

/-- `∩[A174047(n+1), A390788(n+1)]` -/
def P6844207898452678746.Spec : Prop :=
  ∀ n, (P6844207898452678746.a n : ℤ) = A104280 (n + 1)

end A104280

/-! ## A104280.P11686526103046295343

`eq[5, A020481(n+2)]`
-/

namespace A104280.P11686526103046295343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104280.P11686526103046295343

namespace A104280

/-- `eq[5, A020481(n+2)]` -/
def P11686526103046295343.Spec : Prop :=
  ∀ n, (P11686526103046295343.a n : ℤ) = A104280 (n + 1)

end A104280

/-! ## A104280.P5439578408585611636

`∩[A006254(n+1), A047845(n+1)]`
-/

namespace A104280.P5439578408585611636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104280.P5439578408585611636

namespace A104280

/-- `∩[A006254(n+1), A047845(n+1)]` -/
def P5439578408585611636.Spec : Prop :=
  ∀ n, (P5439578408585611636.a n : ℤ) = A104280 (n + 1)

end A104280

/-! ## A104280.P6963892580389749508

`∩[A047845(n+1), A111333(n+1)]`
-/

namespace A104280.P6963892580389749508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104280.P6963892580389749508

namespace A104280

/-- `∩[A047845(n+1), A111333(n+1)]` -/
def P6963892580389749508.Spec : Prop :=
  ∀ n, (P6963892580389749508.a n : ℤ) = A104280 (n + 1)

end A104280

/-! ## A104280.P13364422965257484496

`∩[A047845(n+1), A174047(n+1)]`
-/

namespace A104280.P13364422965257484496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104280.P13364422965257484496

namespace A104280

/-- `∩[A047845(n+1), A174047(n+1)]` -/
def P13364422965257484496.Spec : Prop :=
  ∀ n, (P13364422965257484496.a n : ℤ) = A104280 (n + 1)

end A104280

/-! ## A104280.P17830506430342610112

`A196277(n+1)+A008508(A196277(n+1))`
-/

namespace A104280.P17830506430342610112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196277 (n + 1) + A008508 (A196277 (n + 1)).toNat

end

end A104280.P17830506430342610112

namespace A104280

/-- `A196277(n+1)+A008508(A196277(n+1))` -/
def P17830506430342610112.Spec : Prop :=
  ∀ n, P17830506430342610112.a n = A104280 (n + 1)

end A104280

/-! ## A104280.P18232248220646982130

`eq[3, A238737(n)]`
-/

namespace A104280.P18232248220646982130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104280.P18232248220646982130

namespace A104280

/-- `eq[3, A238737(n)]` -/
def P18232248220646982130.Spec : Prop :=
  ∀ n, (P18232248220646982130.a n : ℤ) = A104280 (n + 1)

end A104280

/-! ## A104280.P9491376671536379924

`eq[2, A276417(n+1)]`
-/

namespace A104280.P9491376671536379924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104280.P9491376671536379924

namespace A104280

/-- `eq[2, A276417(n+1)]` -/
def P9491376671536379924.Spec : Prop :=
  ∀ n, (P9491376671536379924.a n : ℤ) = A104280 (n + 1)

end A104280

/-!
# A104290: a = a(n) is such that the a-th prime p(a) is the least prime with digital sum equal to n, or a(n)=0 if no such prime exists.

The programs for A104290, there is no canonical definition to state claims against.
-/

/-! ## A104290.P13810457936700496344

`∑{d}[A067180(n+1), A000720(#)]`
-/

namespace A104290.P13810457936700496344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A104290.P13810457936700496344

/-! ## A104290.P7225510721115694283

`∑{d}[A067180(n+1), A061395(#)]`
-/

namespace A104290.P7225510721115694283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A104290.P7225510721115694283

/-! ## A104290.P18077257029364622969

`A000720(∏{d}[A067180(n+1), #])`
-/

namespace A104290.P18077257029364622969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A104290.P18077257029364622969

/-! ## A104290.P187299110249455678

`A061395(∏{d}[A067180(n+1), #])`
-/

namespace A104290.P187299110249455678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A104290.P187299110249455678

/-! ## A104290.P5719454332878341452

`A000720(∏{p}[A067180(n+1), #])`
-/

namespace A104290.P5719454332878341452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A104290.P5719454332878341452

/-!
# A104293: a(n) = prime((prime(n)-1)/2).

The programs for A104293, the canonical program `A104293.P2911560007998262157` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104293 has offset 2).

The definition of A104293 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((A000040(n+2)-1)/2)` (program `A104293.P2911560007998262157`, by `A104293.P2911560007998262157.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104293.P13060650045455177502

`A104294(n+2)-A104295(n+2)`
-/

namespace A104293.P13060650045455177502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104294 (n + 2) - A104295 (n + 2)

end

end A104293.P13060650045455177502

namespace A104293

/-- `A104294(n+2)-A104295(n+2)` -/
def P13060650045455177502.Spec : Prop :=
  ∀ n, P13060650045455177502.a n = A104293 (n + 2)

theorem P13060650045455177502.correct : P13060650045455177502.Spec := by
  intro n
  simp only [A104293, Nat.add_sub_cancel, A104293.P13060650045455177502.a, A104293.P2911560007998262157.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A104294, A104294.P3217791273721928253.a, A104295, A104295.P7157540274626542787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104293

/-! ## A104293.P2911560007998262157

`A000040((A000040(n+2)-1)/2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104293

/-- `A000040((A000040(n+2)-1)/2)` -/
def P2911560007998262157.Spec : Prop :=
  ∀ n, P2911560007998262157.a n = A104293 (n + 2)

theorem P2911560007998262157.correct : P2911560007998262157.Spec := by
  intro n
  simp only [A104293, Nat.add_sub_cancel]

end A104293

/-! ## A104293.P18302245733387854466

`A000040(A005097(n+1))`
-/

namespace A104293.P18302245733387854466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A005097 (n + 1)).toNat

end

end A104293.P18302245733387854466

namespace A104293

/-- `A000040(A005097(n+1))` -/
def P18302245733387854466.Spec : Prop :=
  ∀ n, P18302245733387854466.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P14417654463027920162

`A008578(A006254(n+1))`
-/

namespace A104293.P14417654463027920162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A006254 (n + 1)).toNat

end

end A104293.P14417654463027920162

namespace A104293

/-- `A008578(A006254(n+1))` -/
def P14417654463027920162.Spec : Prop :=
  ∀ n, P14417654463027920162.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P13444616241357693343

`A158611(A098090(n+1))`
-/

namespace A104293.P13444616241357693343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A098090 (n + 1)).toNat

end

end A104293.P13444616241357693343

namespace A104293

/-- `A158611(A098090(n+1))` -/
def P13444616241357693343.Spec : Prop :=
  ∀ n, P13444616241357693343.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P2184513839054598836

`A000040(A102781(n+2))`
-/

namespace A104293.P2184513839054598836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A102781 (n + 2)).toNat

end

end A104293.P2184513839054598836

namespace A104293

/-- `A000040(A102781(n+2))` -/
def P2184513839054598836.Spec : Prop :=
  ∀ n, P2184513839054598836.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P12488714981994195269

`A008578(A111333(n+2))`
-/

namespace A104293.P12488714981994195269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A111333 (n + 2)).toNat

end

end A104293.P12488714981994195269

namespace A104293

/-- `A008578(A111333(n+2))` -/
def P12488714981994195269.Spec : Prop :=
  ∀ n, P12488714981994195269.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P4389415627489414612

`A000040(A130290(n+2))`
-/

namespace A104293.P4389415627489414612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A130290 (n + 2)).toNat

end

end A104293.P4389415627489414612

namespace A104293

/-- `A000040(A130290(n+2))` -/
def P4389415627489414612.Spec : Prop :=
  ∀ n, P4389415627489414612.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P7650527159773289693

`A008578(A130291(n+2))`
-/

namespace A104293.P7650527159773289693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A130291 (n + 2)).toNat

end

end A104293.P7650527159773289693

namespace A104293

/-- `A008578(A130291(n+2))` -/
def P7650527159773289693.Spec : Prop :=
  ∀ n, P7650527159773289693.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P3586673561558246042

`A000040(record[A037225(n)-n])`
-/

namespace A104293.P3586673561558246042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104293.P3586673561558246042

namespace A104293

/-- `A000040(record[A037225(n)-n])` -/
def P3586673561558246042.Spec : Prop :=
  ∀ n, P3586673561558246042.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P14073189127027250135

`A008578(A005097(n+1)+1)`
-/

namespace A104293.P14073189127027250135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A005097 (n + 1) + 1).toNat

end

end A104293.P14073189127027250135

namespace A104293

/-- `A008578(A005097(n+1)+1)` -/
def P14073189127027250135.Spec : Prop :=
  ∀ n, P14073189127027250135.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P6670241562410326902

`A000040(A067076(n+1)+1)`
-/

namespace A104293.P6670241562410326902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067076 (n + 1) + 1).toNat

end

end A104293.P6670241562410326902

namespace A104293

/-- `A000040(A067076(n+1)+1)` -/
def P6670241562410326902.Spec : Prop :=
  ∀ n, P6670241562410326902.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P1511202192214069896

`A000040(A006254(n+1)-1)`
-/

namespace A104293.P1511202192214069896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006254 (n + 1) - 1).toNat

end

end A104293.P1511202192214069896

namespace A104293

/-- `A000040(A006254(n+1)-1)` -/
def P1511202192214069896.Spec : Prop :=
  ∀ n, P1511202192214069896.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P14006484871113071960

`A008578(A098090(n+1)-1)`
-/

namespace A104293.P14006484871113071960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A098090 (n + 1) - 1).toNat

end

end A104293.P14006484871113071960

namespace A104293

/-- `A008578(A098090(n+1)-1)` -/
def P14006484871113071960.Spec : Prop :=
  ∀ n, P14006484871113071960.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P17858779273818654896

`A008578(A102781(n+2)+1)`
-/

namespace A104293.P17858779273818654896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A102781 (n + 2) + 1).toNat

end

end A104293.P17858779273818654896

namespace A104293

/-- `A008578(A102781(n+2)+1)` -/
def P17858779273818654896.Spec : Prop :=
  ∀ n, P17858779273818654896.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P16733704186731892209

`A158611(A089253(n+1)-1)`
-/

namespace A104293.P16733704186731892209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A089253 (n + 1) - 1).toNat

end

end A104293.P16733704186731892209

namespace A104293

/-- `A158611(A089253(n+1)-1)` -/
def P16733704186731892209.Spec : Prop :=
  ∀ n, P16733704186731892209.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P1336081515562338452

`A000040(A098090(n+1)-2)`
-/

namespace A104293.P1336081515562338452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098090 (n + 1) - 2).toNat

end

end A104293.P1336081515562338452

namespace A104293

/-- `A000040(A098090(n+1)-2)` -/
def P1336081515562338452.Spec : Prop :=
  ∀ n, P1336081515562338452.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P18163169587489240913

`A000040(A111333(n+2)-1)`
-/

namespace A104293.P18163169587489240913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A111333 (n + 2) - 1).toNat

end

end A104293.P18163169587489240913

namespace A104293

/-- `A000040(A111333(n+2)-1)` -/
def P18163169587489240913.Spec : Prop :=
  ∀ n, P18163169587489240913.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P927126314513846301

`A000040(A130291(n+2)-1)`
-/

namespace A104293.P927126314513846301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A130291 (n + 2) - 1).toNat

end

end A104293.P927126314513846301

namespace A104293

/-- `A000040(A130291(n+2)-1)` -/
def P927126314513846301.Spec : Prop :=
  ∀ n, P927126314513846301.a n = A104293 (n + 2)

end A104293

/-! ## A104293.P10537394707615980351

`A000040(A006093(n+2)/2)`
-/

namespace A104293.P10537394707615980351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat

end

end A104293.P10537394707615980351

namespace A104293

/-- `A000040(A006093(n+2)/2)` -/
def P10537394707615980351.Spec : Prop :=
  ∀ n, P10537394707615980351.a n = A104293 (n + 2)

theorem P10537394707615980351.correct : P10537394707615980351.Spec := by
  intro n
  simp only [A104293, Nat.add_sub_cancel, A104293.P10537394707615980351.a, A104293.P2911560007998262157.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104293

/-!
# A104294: a(n) = prime((prime(n)+1)/2).

The programs for A104294, the canonical program `A104294.P3217791273721928253` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104294 has offset 2).

The definition of A104294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((A000040(n+2)+1)/2)` (program `A104294.P3217791273721928253`, by `A104294.P3217791273721928253.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104294.P15743116761921244669

`A104295(n+2)+A104293(n+2)`
-/

namespace A104294.P15743116761921244669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104295 (n + 2) + A104293 (n + 2)

end

end A104294.P15743116761921244669

namespace A104294

/-- `A104295(n+2)+A104293(n+2)` -/
def P15743116761921244669.Spec : Prop :=
  ∀ n, P15743116761921244669.a n = A104294 (n + 2)

theorem P15743116761921244669.correct : P15743116761921244669.Spec := by
  intro n
  simp only [A104294, Nat.add_sub_cancel, A104294.P15743116761921244669.a, A104294.P3217791273721928253.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A104293, A104293.P2911560007998262157.a, A104295, A104295.P7157540274626542787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104294

/-! ## A104294.P3217791273721928253

`A000040((A000040(n+2)+1)/2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104294

/-- `A000040((A000040(n+2)+1)/2)` -/
def P3217791273721928253.Spec : Prop :=
  ∀ n, P3217791273721928253.a n = A104294 (n + 2)

theorem P3217791273721928253.correct : P3217791273721928253.Spec := by
  intro n
  simp only [A104294, Nat.add_sub_cancel]

end A104294

/-! ## A104294.P4681714718594380465

`A000040(A006254(n+1))`
-/

namespace A104294.P4681714718594380465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006254 (n + 1)).toNat

end

end A104294.P4681714718594380465

namespace A104294

/-- `A000040(A006254(n+1))` -/
def P4681714718594380465.Spec : Prop :=
  ∀ n, P4681714718594380465.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P13541398345056887883

`A065091(A005097(n+1))`
-/

namespace A104294.P13541398345056887883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A005097 (n + 1)).toNat

end

end A104294.P13541398345056887883

namespace A104294

/-- `A065091(A005097(n+1))` -/
def P13541398345056887883.Spec : Prop :=
  ∀ n, P13541398345056887883.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P3249740273621373644

`A008578(A098090(n+1))`
-/

namespace A104294.P3249740273621373644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A098090 (n + 1)).toNat

end

end A104294.P3249740273621373644

namespace A104294

/-- `A008578(A098090(n+1))` -/
def P3249740273621373644.Spec : Prop :=
  ∀ n, P3249740273621373644.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P12099618503380713083

`A093515(A006093(n+2))`
-/

namespace A104294.P12099618503380713083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A006093 (n + 2)).toNat

end

end A104294.P12099618503380713083

namespace A104294

/-- `A093515(A006093(n+2))` -/
def P12099618503380713083.Spec : Prop :=
  ∀ n, P12099618503380713083.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P15271256981902880940

`A000040(A111333(n+2))`
-/

namespace A104294.P15271256981902880940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A111333 (n + 2)).toNat

end

end A104294.P15271256981902880940

namespace A104294

/-- `A000040(A111333(n+2))` -/
def P15271256981902880940.Spec : Prop :=
  ∀ n, P15271256981902880940.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P4005655936686939933

`A000040(A130291(n+2))`
-/

namespace A104294.P4005655936686939933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A130291 (n + 2)).toNat

end

end A104294.P4005655936686939933

namespace A104294

/-- `A000040(A130291(n+2))` -/
def P4005655936686939933.Spec : Prop :=
  ∀ n, P4005655936686939933.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P7678141152188957063

`A065091(A102781(n+2))`
-/

namespace A104294.P7678141152188957063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A102781 (n + 2)).toNat

end

end A104294.P7678141152188957063

namespace A104294

/-- `A065091(A102781(n+2))` -/
def P7678141152188957063.Spec : Prop :=
  ∀ n, P7678141152188957063.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P1824391272358318887

`A065091(A130290(n+2))`
-/

namespace A104294.P1824391272358318887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A130290 (n + 2)).toNat

end

end A104294.P1824391272358318887

namespace A104294

/-- `A065091(A130290(n+2))` -/
def P1824391272358318887.Spec : Prop :=
  ∀ n, P1824391272358318887.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P10635171282533500424

`A000040(A005097(n+1)+1)`
-/

namespace A104294.P10635171282533500424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A005097 (n + 1) + 1).toNat

end

end A104294.P10635171282533500424

namespace A104294

/-- `A000040(A005097(n+1)+1)` -/
def P10635171282533500424.Spec : Prop :=
  ∀ n, P10635171282533500424.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P9038738686326569462

`A006005(A005097(n+1)+1)`
-/

namespace A104294.P9038738686326569462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A005097 (n + 1) + 1).toNat

end

end A104294.P9038738686326569462

namespace A104294

/-- `A006005(A005097(n+1)+1)` -/
def P9038738686326569462.Spec : Prop :=
  ∀ n, P9038738686326569462.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P12030693216237625909

`A008578(A006254(n+1)+1)`
-/

namespace A104294.P12030693216237625909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A006254 (n + 1) + 1).toNat

end

end A104294.P12030693216237625909

namespace A104294

/-- `A008578(A006254(n+1)+1)` -/
def P12030693216237625909.Spec : Prop :=
  ∀ n, P12030693216237625909.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P13014853440321741482

`A065091(A067076(n+1)+1)`
-/

namespace A104294.P13014853440321741482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A067076 (n + 1) + 1).toNat

end

end A104294.P13014853440321741482

namespace A104294

/-- `A065091(A067076(n+1)+1)` -/
def P13014853440321741482.Spec : Prop :=
  ∀ n, P13014853440321741482.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P17408922160846500811

`A000040(A067076(n+1)+2)`
-/

namespace A104294.P17408922160846500811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067076 (n + 1) + 2).toNat

end

end A104294.P17408922160846500811

namespace A104294

/-- `A000040(A067076(n+1)+2)` -/
def P17408922160846500811.Spec : Prop :=
  ∀ n, P17408922160846500811.a n = A104294 (n + 2)

theorem P17408922160846500811.correct : P17408922160846500811.Spec := by
  intro n
  simp only [A104294, Nat.add_sub_cancel, A104294.P17408922160846500811.a, A104294.P3217791273721928253.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A067076, A067076.P14247190955968615804.a, A006254, A006254.P17336495081768971287.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104294

/-! ## A104294.P10755393693114975264

`A065091(A006254(n+1)-1)`
-/

namespace A104294.P10755393693114975264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A006254 (n + 1) - 1).toNat

end

end A104294.P10755393693114975264

namespace A104294

/-- `A065091(A006254(n+1)-1)` -/
def P10755393693114975264.Spec : Prop :=
  ∀ n, P10755393693114975264.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P14497855724975132178

`A006005(A067076(n+1)+2)`
-/

namespace A104294.P14497855724975132178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A067076 (n + 1) + 2).toNat

end

end A104294.P14497855724975132178

namespace A104294

/-- `A006005(A067076(n+1)+2)` -/
def P14497855724975132178.Spec : Prop :=
  ∀ n, P14497855724975132178.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P1274007150970652574

`A000040(A098090(n+1)-1)`
-/

namespace A104294.P1274007150970652574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098090 (n + 1) - 1).toNat

end

end A104294.P1274007150970652574

namespace A104294

/-- `A000040(A098090(n+1)-1)` -/
def P1274007150970652574.Spec : Prop :=
  ∀ n, P1274007150970652574.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P17669613973687791624

`A000040(A102781(n+2)+1)`
-/

namespace A104294.P17669613973687791624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A102781 (n + 2) + 1).toNat

end

end A104294.P17669613973687791624

namespace A104294

/-- `A000040(A102781(n+2)+1)` -/
def P17669613973687791624.Spec : Prop :=
  ∀ n, P17669613973687791624.a n = A104294 (n + 2)

end A104294

/-! ## A104294.P10012379766311889251

`A000040(A130290(n+2)+1)`
-/

namespace A104294.P10012379766311889251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A130290 (n + 2) + 1).toNat

end

end A104294.P10012379766311889251

namespace A104294

/-- `A000040(A130290(n+2)+1)` -/
def P10012379766311889251.Spec : Prop :=
  ∀ n, P10012379766311889251.a n = A104294 (n + 2)

end A104294

/-!
# A104295: a(n) = A104294(n) - A104293(n).

The programs for A104295, the canonical program `A104295.P7157540274626542787` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104295 has offset 2).

The definition of A104295 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A104294(n+2)-A104293(n+2)` (program `A104295.P7157540274626542787`, by `A104295.P7157540274626542787.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104295.P7157540274626542787

`A104294(n+2)-A104293(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104295

/-- `A104294(n+2)-A104293(n+2)` -/
def P7157540274626542787.Spec : Prop :=
  ∀ n, P7157540274626542787.a n = A104295 (n + 2)

theorem P7157540274626542787.correct : P7157540274626542787.Spec := by
  intro n
  simp only [A104295, Nat.add_sub_cancel]

end A104295

/-! ## A104295.P15788536582300571412

`A000040((A000040(n+2)+1)/2)-A000040((A000040(n+2)-1)/2)`
-/

namespace A104295.P15788536582300571412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A000040 (n + 2) + 1 : ℚ) / 2)).toNat - A000040 (SequenceMachineLib.roundAway ((A000040 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A104295.P15788536582300571412

namespace A104295

/-- `A000040((A000040(n+2)+1)/2)-A000040((A000040(n+2)-1)/2)` -/
def P15788536582300571412.Spec : Prop :=
  ∀ n, P15788536582300571412.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P12822078153906725739

`A001223(A005097(n+1))`
-/

namespace A104295.P12822078153906725739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A005097 (n + 1)).toNat

end

end A104295.P12822078153906725739

namespace A104295

/-- `A001223(A005097(n+1))` -/
def P12822078153906725739.Spec : Prop :=
  ∀ n, P12822078153906725739.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P3178030767842168278

`A001223(A067076(n+1)+1)`
-/

namespace A104295.P3178030767842168278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A067076 (n + 1) + 1).toNat

end

end A104295.P3178030767842168278

namespace A104295

/-- `A001223(A067076(n+1)+1)` -/
def P3178030767842168278.Spec : Prop :=
  ∀ n, P3178030767842168278.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P6392368967060094481

`A001223(A006254(n+1)-1)`
-/

namespace A104295.P6392368967060094481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A006254 (n + 1) - 1).toNat

end

end A104295.P6392368967060094481

namespace A104295

/-- `A001223(A006254(n+1)-1)` -/
def P6392368967060094481.Spec : Prop :=
  ∀ n, P6392368967060094481.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P12328688930519242082

`A001223(A098090(n+1)-2)`
-/

namespace A104295.P12328688930519242082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A098090 (n + 1) - 2).toNat

end

end A104295.P12328688930519242082

namespace A104295

/-- `A001223(A098090(n+1)-2)` -/
def P12328688930519242082.Spec : Prop :=
  ∀ n, P12328688930519242082.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P9955222324992728547

`A001223(A175540(n+1)-n)`
-/

namespace A104295.P9955222324992728547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A175540 (n + 1) - (n : ℤ)).toNat

end

end A104295.P9955222324992728547

namespace A104295

/-- `A001223(A175540(n+1)-n)` -/
def P9955222324992728547.Spec : Prop :=
  ∀ n, P9955222324992728547.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P10398481853396009374

`A001223(floor(A065091(n+1)/2))`
-/

namespace A104295.P10398481853396009374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ⌊(A065091 (n + 1) : ℚ) / 2⌋.toNat

end

end A104295.P10398481853396009374

namespace A104295

/-- `A001223(floor(A065091(n+1)/2))` -/
def P10398481853396009374.Spec : Prop :=
  ∀ n, P10398481853396009374.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P4240278520624229753

`A001223(A008507(n+1)+n+1)`
-/

namespace A104295.P4240278520624229753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A008507 (n + 1) + (n + 1 : ℤ)).toNat

end

end A104295.P4240278520624229753

namespace A104295

/-- `A001223(A008507(n+1)+n+1)` -/
def P4240278520624229753.Spec : Prop :=
  ∀ n, P4240278520624229753.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P5509095024658799177

`A001223(Δ[A005521(n)])`
-/

namespace A104295.P5509095024658799177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (f1 (n + 1) - f1 n).toNat

end

end A104295.P5509095024658799177

namespace A104295

/-- `A001223(Δ[A005521(n)])` -/
def P5509095024658799177.Spec : Prop :=
  ∀ n, P5509095024658799177.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P18292580891500744569

`A001223(A102781(n+2))`
-/

namespace A104295.P18292580891500744569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A102781 (n + 2)).toNat

end

end A104295.P18292580891500744569

namespace A104295

/-- `A001223(A102781(n+2))` -/
def P18292580891500744569.Spec : Prop :=
  ∀ n, P18292580891500744569.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P13898359872851243065

`A001223(A130290(n+2))`
-/

namespace A104295.P13898359872851243065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A130290 (n + 2)).toNat

end

end A104295.P13898359872851243065

namespace A104295

/-- `A001223(A130290(n+2))` -/
def P13898359872851243065.Spec : Prop :=
  ∀ n, P13898359872851243065.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P13595359317408136330

`A001223(A111333(n+2)-1)`
-/

namespace A104295.P13595359317408136330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A111333 (n + 2) - 1).toNat

end

end A104295.P13595359317408136330

namespace A104295

/-- `A001223(A111333(n+2)-1)` -/
def P13595359317408136330.Spec : Prop :=
  ∀ n, P13595359317408136330.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P5873149834582059987

`A001223(A006093(n+2)/2)`
-/

namespace A104295.P5873149834582059987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat

end

end A104295.P5873149834582059987

namespace A104295

/-- `A001223(A006093(n+2)/2)` -/
def P5873149834582059987.Spec : Prop :=
  ∀ n, P5873149834582059987.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P2076928896690221850

`A001223(eq[1, A001222(2*n+1)])`
-/

namespace A104295.P2076928896690221850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104295.P2076928896690221850

namespace A104295

/-- `A001223(eq[1, A001222(2*n+1)])` -/
def P2076928896690221850.Spec : Prop :=
  ∀ n, P2076928896690221850.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P13459647821750235539

`A001223(eq[2, A000005(2*n+1)])`
-/

namespace A104295.P13459647821750235539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104295.P13459647821750235539

namespace A104295

/-- `A001223(eq[2, A000005(2*n+1)])` -/
def P13459647821750235539.Spec : Prop :=
  ∀ n, P13459647821750235539.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P482927002119467083

`A230849(p?[2*n+1])`
-/

namespace A104295.P482927002119467083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A104295.P482927002119467083

namespace A104295

/-- `A230849(p?[2*n+1])` -/
def P482927002119467083.Spec : Prop :=
  ∀ n, P482927002119467083.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P8022444369753650920

`A054541((p?[2*n+1]-1)/2+1)`
-/

namespace A104295.P8022444369753650920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 2 + 1)).toNat

end

end A104295.P8022444369753650920

namespace A104295

/-- `A054541((p?[2*n+1]-1)/2+1)` -/
def P8022444369753650920.Spec : Prop :=
  ∀ n, P8022444369753650920.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P8941507783888312571

`A054541(A006254(n+1))`
-/

namespace A104295.P8941507783888312571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A006254 (n + 1)).toNat

end

end A104295.P8941507783888312571

namespace A104295

/-- `A054541(A006254(n+1))` -/
def P8941507783888312571.Spec : Prop :=
  ∀ n, P8941507783888312571.a n = A104295 (n + 2)

end A104295

/-! ## A104295.P5144794513890750019

`A230849(A045344(n+1))`
-/

namespace A104295.P5144794513890750019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (A045344 (n + 1)).toNat

end

end A104295.P5144794513890750019

namespace A104295

/-- `A230849(A045344(n+1))` -/
def P5144794513890750019.Spec : Prop :=
  ∀ n, P5144794513890750019.a n = A104295 (n + 2)

end A104295

/-!
# A104296: a(n) = prime((a(n-1)+1)/2), a(1) = 9.

The programs for A104296, the canonical program `A104296.P2459152482830730550` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104296 has offset 1).

The definition of A104296 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((a(n-1)+1)/2)` (program `A104296.P2459152482830730550`, by `A104296.P2459152482830730550.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104296.P2459152482830730550

`A000040((a(n-1)+1)/2)` with `a(0)=9`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104296

/-- `A000040((a(n-1)+1)/2)` -/
def P2459152482830730550.Spec : Prop :=
  ∀ n, P2459152482830730550.a n = A104296 (n + 1)

theorem P2459152482830730550.correct : P2459152482830730550.Spec := by
  intro n
  simp only [A104296, Nat.add_sub_cancel]

end A104296

/-! ## A104296.P17546809957262221891

`A093515(a(n-1)-1)` with `a(0)=9`
-/

namespace A104296.P17546809957262221891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A093515 (a (n - 1) - 1).toNat

end

end A104296.P17546809957262221891

namespace A104296

/-- `A093515(a(n-1)-1)` -/
def P17546809957262221891.Spec : Prop :=
  ∀ n, P17546809957262221891.a n = A104296 (n + 1)

end A104296

/-! ## A104296.P10040106030305243277

`A065091(floor(a(n-1)/2))` with `a(0)=9`
-/

namespace A104296.P10040106030305243277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A065091 ⌊(a (n - 1) : ℚ) / 2⌋.toNat

end

end A104296.P10040106030305243277

namespace A104296

/-- `A065091(floor(a(n-1)/2))` -/
def P10040106030305243277.Spec : Prop :=
  ∀ n, P10040106030305243277.a n = A104296 (n + 1)

end A104296

/-! ## A104296.P5028368419846475144

`A000040(ceil(a(n-1)/2))` with `a(0)=9`
-/

namespace A104296.P5028368419846475144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A000040 ⌈(a (n - 1) : ℚ) / 2⌉.toNat

end

end A104296.P5028368419846475144

namespace A104296

/-- `A000040(ceil(a(n-1)/2))` -/
def P5028368419846475144.Spec : Prop :=
  ∀ n, P5028368419846475144.a n = A104296 (n + 1)

end A104296

/-! ## A104296.P2421032442083405502

`A000040(round(a(n-1)/2))` with `a(0)=9`
-/

namespace A104296.P2421032442083405502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A000040 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 2)).toNat

end

end A104296.P2421032442083405502

namespace A104296

/-- `A000040(round(a(n-1)/2))` -/
def P2421032442083405502.Spec : Prop :=
  ∀ n, P2421032442083405502.a n = A104296 (n + 1)

end A104296

/-!
# A104297: a(n) = prime((a(n-1) + 1)/2), a(1) = 21.

The programs for A104297, the canonical program `A104297.P514665298949438045` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104297 has offset 1).

The definition of A104297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((a(n-1)+1)/2)` (program `A104297.P514665298949438045`, by `A104297.P514665298949438045.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104297.P514665298949438045

`A000040((a(n-1)+1)/2)` with `a(0)=21`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104297

/-- `A000040((a(n-1)+1)/2)` -/
def P514665298949438045.Spec : Prop :=
  ∀ n, P514665298949438045.a n = A104297 (n + 1)

theorem P514665298949438045.correct : P514665298949438045.Spec := by
  intro n
  simp only [A104297, Nat.add_sub_cancel]

end A104297

/-! ## A104297.P14397852852480982848

`A109763(a(n-1))` with `a(0)=21`
-/

namespace A104297.P14397852852480982848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  A109763 (a (n - 1)).toNat

end

end A104297.P14397852852480982848

namespace A104297

/-- `A109763(a(n-1))` -/
def P14397852852480982848.Spec : Prop :=
  ∀ n, P14397852852480982848.a n = A104297 (n + 1)

end A104297

/-! ## A104297.P2314343949647853506

`A173919(a(n-1))` with `a(0)=21`
-/

namespace A104297.P2314343949647853506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  A173919 (a (n - 1)).toNat

end

end A104297.P2314343949647853506

namespace A104297

/-- `A173919(a(n-1))` -/
def P2314343949647853506.Spec : Prop :=
  ∀ n, P2314343949647853506.a n = A104297 (n + 1)

end A104297

/-! ## A104297.P10933196048116006799

`A073846(a(n-1)+1)` with `a(0)=21`
-/

namespace A104297.P10933196048116006799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  A073846 (a (n - 1) + 1).toNat

end

end A104297.P10933196048116006799

namespace A104297

/-- `A073846(a(n-1)+1)` -/
def P10933196048116006799.Spec : Prop :=
  ∀ n, P10933196048116006799.a n = A104297 (n + 1)

end A104297

/-! ## A104297.P3641658093479059155

`A093515(a(n-1)-1)` with `a(0)=21`
-/

namespace A104297.P3641658093479059155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  A093515 (a (n - 1) - 1).toNat

end

end A104297.P3641658093479059155

namespace A104297

/-- `A093515(a(n-1)-1)` -/
def P3641658093479059155.Spec : Prop :=
  ∀ n, P3641658093479059155.a n = A104297 (n + 1)

end A104297

/-!
# A104298: a(n) = prime((a(n-1) + 1)/2), a(1) = 15.

The programs for A104298, the canonical program `A104298.P5498095086449999473` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104298 has offset 1).

The definition of A104298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((a(n-1)+1)/2)` (program `A104298.P5498095086449999473`, by `A104298.P5498095086449999473.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104298.P5498095086449999473

`A000040((a(n-1)+1)/2)` with `a(0)=15`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A104298

/-- `A000040((a(n-1)+1)/2)` -/
def P5498095086449999473.Spec : Prop :=
  ∀ n, P5498095086449999473.a n = A104298 (n + 1)

theorem P5498095086449999473.correct : P5498095086449999473.Spec := by
  intro n
  simp only [A104298, Nat.add_sub_cancel]

end A104298

/-! ## A104298.P350407586816302531

`A109763(a(n-1))` with `a(0)=15`
-/

namespace A104298.P350407586816302531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A109763 (a (n - 1)).toNat

end

end A104298.P350407586816302531

namespace A104298

/-- `A109763(a(n-1))` -/
def P350407586816302531.Spec : Prop :=
  ∀ n, P350407586816302531.a n = A104298 (n + 1)

end A104298

/-! ## A104298.P4556561842655525718

`A134735(a(n-1))` with `a(0)=15`
-/

namespace A104298.P4556561842655525718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A134735 (a (n - 1)).toNat

end

end A104298.P4556561842655525718

namespace A104298

/-- `A134735(a(n-1))` -/
def P4556561842655525718.Spec : Prop :=
  ∀ n, P4556561842655525718.a n = A104298 (n + 1)

end A104298

/-! ## A104298.P329691187941151746

`A066251(a(n-1))+1` with `a(0)=15`
-/

namespace A104298.P329691187941151746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A066251 (a (n - 1)).toNat + 1

end

end A104298.P329691187941151746

namespace A104298

/-- `A066251(a(n-1))+1` -/
def P329691187941151746.Spec : Prop :=
  ∀ n, P329691187941151746.a n = A104298 (n + 1)

end A104298

/-! ## A104298.P10508007563188328829

`A073846(a(n-1)+1)` with `a(0)=15`
-/

namespace A104298.P10508007563188328829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A073846 (a (n - 1) + 1).toNat

end

end A104298.P10508007563188328829

namespace A104298

/-- `A073846(a(n-1)+1)` -/
def P10508007563188328829.Spec : Prop :=
  ∀ n, P10508007563188328829.a n = A104298 (n + 1)

end A104298

