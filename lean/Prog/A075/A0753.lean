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
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
# A075300: Array A read by antidiagonals upwards: A(n, k) = array A054582(n,k) - 1 = 2^n*(2*k+1) - 1 with n,k >= 0.

The programs for A075300, the canonical program `A075300.P7225117551987774033` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075300 has offset 0).

The definition of A075300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075300.P16228426725859781110

`(4*(n-C(∑[char[∑[n]]], 2))+2)*2^(C(comp[∑[n]]-n, 2)-n)/4-1`
-/

namespace A075300.P16228426725859781110
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 2 : ℚ) * (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) / 4 - 1

end

end A075300.P16228426725859781110

namespace A075300

/-- `(4*(n-C(∑[char[∑[n]]], 2))+2)*2^(C(comp[∑[n]]-n, 2)-n)/4-1` -/
def P16228426725859781110.Spec : Prop :=
  ∀ n, P16228426725859781110.a n = (A075300 n : ℚ)

end A075300

/-! ## A075300.P5354460075041332774

`(2*(n-C(∑[char[∑[n]]], 2))+1)*∏[char[∑[n+1]]+1]/2^(n-C(∑[char[∑[n]]], 2))-1`
-/

namespace A075300.P5354460075041332774
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f5 j = n then 1 else 0) + 1

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1) * ((∏ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f7 j) 2 : ℤ) : ℤ) - 1

end

end A075300.P5354460075041332774

namespace A075300

/-- `(2*(n-C(∑[char[∑[n]]], 2))+1)*∏[char[∑[n+1]]+1]/2^(n-C(∑[char[∑[n]]], 2))-1` -/
def P5354460075041332774.Spec : Prop :=
  ∀ n, P5354460075041332774.a n = (A075300 n : ℚ)

end A075300

/-! ## A075300.P7225117551987774033

`A054582(n)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A075300

/-- `A054582(n)-1` -/
def P7225117551987774033.Spec : Prop :=
  ∀ n, P7225117551987774033.a n = A075300 n

theorem P7225117551987774033.correct : P7225117551987774033.Spec := by
  intro n
  simp only [A075300]

end A075300

/-! ## A075300.P16600213775601080323

`A288870(n)-2`
-/

namespace A075300.P16600213775601080323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288870 n - 2

end

end A075300.P16600213775601080323

namespace A075300

/-- `A288870(n)-2` -/
def P16600213775601080323.Spec : Prop :=
  ∀ n, P16600213775601080323.a n = A075300 n

end A075300

/-! ## A075300.P8174829789021649820

`floor(A241957(n+1)/2)`
-/

namespace A075300.P8174829789021649820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241957 (n + 1) : ℚ) / 2⌋

end

end A075300.P8174829789021649820

namespace A075300

/-- `floor(A241957(n+1)/2)` -/
def P8174829789021649820.Spec : Prop :=
  ∀ n, P8174829789021649820.a n = A075300 n

end A075300

/-! ## A075300.P8425637865910721046

`A257791(n+1)/4-1`
-/

namespace A075300.P8425637865910721046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257791 (n + 1) : ℚ) / 4 - 1

end

end A075300.P8425637865910721046

namespace A075300

/-- `A257791(n+1)/4-1` -/
def P8425637865910721046.Spec : Prop :=
  ∀ n, P8425637865910721046.a n = (A075300 n : ℚ)

end A075300

/-! ## A075300.P2117745895083960418

`A135764(∑[char[∑[n]]]²-n)-1`
-/

namespace A075300.P2117745895083960418
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A075300.P2117745895083960418

namespace A075300

/-- `A135764(∑[char[∑[n]]]²-n)-1` -/
def P2117745895083960418.Spec : Prop :=
  ∀ n, P2117745895083960418.a n = A075300 n

end A075300

/-! ## A075300.P15809999779119765692

`xor(A054582(n), A130330(n))`
-/

namespace A075300.P15809999779119765692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054582 n) (A130330 n)

end

end A075300.P15809999779119765692

namespace A075300

/-- `xor(A054582(n), A130330(n))` -/
def P15809999779119765692.Spec : Prop :=
  ∀ n, P15809999779119765692.a n = A075300 n

end A075300

/-! ## A075300.P8146784654989808702

`A130321(n)+A376102(n)-2`
-/

namespace A075300.P8146784654989808702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + (A376102 n - 2)

end

end A075300.P8146784654989808702

namespace A075300

/-- `A130321(n)+A376102(n)-2` -/
def P8146784654989808702.Spec : Prop :=
  ∀ n, P8146784654989808702.a n = A075300 n

end A075300

/-! ## A075300.P4903262502228722809

`A241957(n+1)%A054582(n)`
-/

namespace A075300.P4903262502228722809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241957 (n + 1)) (A054582 n)

end

end A075300.P4903262502228722809

namespace A075300

/-- `A241957(n+1)%A054582(n)` -/
def P4903262502228722809.Spec : Prop :=
  ∀ n, P4903262502228722809.a n = A075300 n

end A075300

/-! ## A075300.P9356670479746784641

`A130321(n)*A158405(n+1)-1`
-/

namespace A075300.P9356670479746784641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A158405 (n + 1) - 1

end

end A075300.P9356670479746784641

namespace A075300

/-- `A130321(n)*A158405(n+1)-1` -/
def P9356670479746784641.Spec : Prop :=
  ∀ n, P9356670479746784641.a n = A075300 n

end A075300

/-! ## A075300.P16405807675210517965

`A075302(A061579(n))`
-/

namespace A075300.P16405807675210517965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075302 (A061579 n).toNat

end

end A075300.P16405807675210517965

namespace A075300

/-- `A075302(A061579(n))` -/
def P16405807675210517965.Spec : Prop :=
  ∀ n, P16405807675210517965.a n = A075300 n

end A075300

/-! ## A075300.P13675583126742015422

`floor(A191448(n+1)/(char[C(n, 2)]+1))`
-/

namespace A075300.P13675583126742015422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191448 (n + 1) : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)⌋

end

end A075300.P13675583126742015422

namespace A075300

/-- `floor(A191448(n+1)/(char[C(n, 2)]+1))` -/
def P13675583126742015422.Spec : Prop :=
  ∀ n, P13675583126742015422.a n = A075300 n

end A075300

/-! ## A075300.P7179503894535966648

`A191448(n+1)%A013620(n)`
-/

namespace A075300.P7179503894535966648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191448 (n + 1)) (A013620 n)

end

end A075300.P7179503894535966648

namespace A075300

/-- `A191448(n+1)%A013620(n)` -/
def P7179503894535966648.Spec : Prop :=
  ∀ n, P7179503894535966648.a n = A075300 n

end A075300

/-! ## A075300.P39883128503876982

`and(A089633(n), A191448(n+1))`
-/

namespace A075300.P39883128503876982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089633 n) (A191448 (n + 1))

end

end A075300.P39883128503876982

namespace A075300

/-- `and(A089633(n), A191448(n+1))` -/
def P39883128503876982.Spec : Prop :=
  ∀ n, P39883128503876982.a n = A075300 n

end A075300

/-! ## A075300.P5265075063020760849

`and(A164874(n+1), A191448(n+1))`
-/

namespace A075300.P5265075063020760849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164874 (n + 1)) (A191448 (n + 1))

end

end A075300.P5265075063020760849

namespace A075300

/-- `and(A164874(n+1), A191448(n+1))` -/
def P5265075063020760849.Spec : Prop :=
  ∀ n, P5265075063020760849.a n = A075300 n

end A075300

/-! ## A075300.P15970643541333298848

`A387348(A387351(n+1))+A054582(n)`
-/

namespace A075300.P15970643541333298848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387348 (A387351 (n + 1)).toNat + A054582 n

end

end A075300.P15970643541333298848

namespace A075300

/-- `A387348(A387351(n+1))+A054582(n)` -/
def P15970643541333298848.Spec : Prop :=
  ∀ n, P15970643541333298848.a n = A075300 n

end A075300

/-! ## A075300.P2251008149893568309

`A014682(A241957(n+1)-1)`
-/

namespace A075300.P2251008149893568309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A241957 (n + 1) - 1).toNat

end

end A075300.P2251008149893568309

namespace A075300

/-- `A014682(A241957(n+1)-1)` -/
def P2251008149893568309.Spec : Prop :=
  ∀ n, P2251008149893568309.a n = A075300 n

end A075300

/-! ## A075300.P10117279195349706680

`A139708(A345254(n+1))-1`
-/

namespace A075300.P10117279195349706680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (A345254 (n + 1)).toNat - 1

end

end A075300.P10117279195349706680

namespace A075300

/-- `A139708(A345254(n+1))-1` -/
def P10117279195349706680.Spec : Prop :=
  ∀ n, P10117279195349706680.a n = A075300 n

end A075300

/-!
# A075301: Inverse permutation to A075300.

The programs for A075301, the canonical program `A075301.P17074256541668552297` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075301 has offset 0).

The definition of A075301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075301.P17074256541668552297

`A209268(n+1)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A075301

/-- `A209268(n+1)-1` -/
def P17074256541668552297.Spec : Prop :=
  ∀ n, P17074256541668552297.a n = A075301 n

theorem P17074256541668552297.correct : P17074256541668552297.Spec := by
  intro n
  simp only [A075301]

end A075301

/-! ## A075301.P6466068962585153728

`abs(1-A209268(n-log2(1/2)))`
-/

namespace A075301.P6466068962585153728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A209268 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat|

end

end A075301.P6466068962585153728

namespace A075301

/-- `abs(1-A209268(n-log2(1/2)))` -/
def P6466068962585153728.Spec : Prop :=
  ∀ n, P6466068962585153728.a n = A075301 n

end A075301

/-! ## A075301.P8536674406912412273

`abs(A209268(comp[2*n]-n)-1)`
-/

namespace A075301.P8536674406912412273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A209268 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - 1|

end

end A075301.P8536674406912412273

namespace A075301

/-- `abs(A209268(comp[2*n]-n)-1)` -/
def P8536674406912412273.Spec : Prop :=
  ∀ n, P8536674406912412273.a n = A075301 n

end A075301

/-! ## A075301.P11710013789244812637

`A025480(n)+A075303(n)-A007814(n+1)`
-/

namespace A075301.P11710013789244812637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + (A075303 n - A007814 (n + 1))

end

end A075301.P11710013789244812637

namespace A075301

/-- `A025480(n)+A075303(n)-A007814(n+1)` -/
def P11710013789244812637.Spec : Prop :=
  ∀ n, P11710013789244812637.a n = A075301 n

end A075301

/-! ## A075301.P11557098605479802419

`A250252(A249811(n+1))-1`
-/

namespace A075301.P11557098605479802419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250252 (A249811 (n + 1)).toNat - 1

end

end A075301.P11557098605479802419

namespace A075301

/-- `A250252(A249811(n+1))-1` -/
def P11557098605479802419.Spec : Prop :=
  ∀ n, P11557098605479802419.a n = A075301 n

end A075301

/-! ## A075301.P18421660270624931691

`A038722(A249725(n+1))-1`
-/

namespace A075301.P18421660270624931691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A249725 (n + 1)).toNat - 1

end

end A075301.P18421660270624931691

namespace A075301

/-- `A038722(A249725(n+1))-1` -/
def P18421660270624931691.Spec : Prop :=
  ∀ n, P18421660270624931691.a n = A075301 n

end A075301

/-! ## A075301.P8636569103783115060

`A061579(A075303(n))`
-/

namespace A075301.P8636569103783115060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A075303 n).toNat

end

end A075301.P8636569103783115060

namespace A075301

/-- `A061579(A075303(n))` -/
def P8636569103783115060.Spec : Prop :=
  ∀ n, P8636569103783115060.a n = A075301 n

end A075301

/-! ## A075301.P17774146656006156254

`A023443(A209268(n+1))`
-/

namespace A075301.P17774146656006156254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A209268 (n + 1)).toNat

end

end A075301.P17774146656006156254

namespace A075301

/-- `A023443(A209268(n+1))` -/
def P17774146656006156254.Spec : Prop :=
  ∀ n, P17774146656006156254.a n = A075301 n

end A075301

/-! ## A075301.P13113093824496232812

`A023444(A209268(n+1)+1)`
-/

namespace A075301.P13113093824496232812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A209268 (n + 1) + 1).toNat

end

end A075301.P13113093824496232812

namespace A075301

/-- `A023444(A209268(n+1)+1)` -/
def P13113093824496232812.Spec : Prop :=
  ∀ n, P13113093824496232812.a n = A075301 n

end A075301

/-! ## A075301.P10076876039969601216

`A289207(A209268(n+1)+1)`
-/

namespace A075301.P10076876039969601216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A209268 (n + 1) + 1).toNat

end

end A075301.P10076876039969601216

namespace A075301

/-- `A289207(A209268(n+1)+1)` -/
def P10076876039969601216.Spec : Prop :=
  ∀ n, P10076876039969601216.a n = A075301 n

end A075301

/-! ## A075301.P11262708045435805353

`A023445(A209268(n+1)+2)`
-/

namespace A075301.P11262708045435805353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A209268 (n + 1) + 2).toNat

end

end A075301.P11262708045435805353

namespace A075301

/-- `A023445(A209268(n+1)+2)` -/
def P11262708045435805353.Spec : Prop :=
  ∀ n, P11262708045435805353.a n = A075301 n

end A075301

/-! ## A075301.P905565065364252874

`A246274(A246676(n+1))-1`
-/

namespace A075301.P905565065364252874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A246676 (n + 1)).toNat - 1

end

end A075301.P905565065364252874

namespace A075301

/-- `A246274(A246676(n+1))-1` -/
def P905565065364252874.Spec : Prop :=
  ∀ n, P905565065364252874.a n = A075301 n

end A075301

/-! ## A075301.P16385877731943169216

`A191362(n+1)+A075303(n)`
-/

namespace A075301.P16385877731943169216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191362 (n + 1) + A075303 n

end

end A075301.P16385877731943169216

namespace A075301

/-- `A191362(n+1)+A075303(n)` -/
def P16385877731943169216.Spec : Prop :=
  ∀ n, P16385877731943169216.a n = A075301 n

end A075301

/-! ## A075301.P4019787536052105121

`A191362(n+1)+A249725(n+1)-1`
-/

namespace A075301.P4019787536052105121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191362 (n + 1) + (A249725 (n + 1) - 1)

end

end A075301.P4019787536052105121

namespace A075301

/-- `A191362(n+1)+A249725(n+1)-1` -/
def P4019787536052105121.Spec : Prop :=
  ∀ n, P4019787536052105121.a n = A075301 n

end A075301

/-!
# A075302: Transpose of array A075300.

The programs for A075302, the canonical program `A075302.P4171815956807541736` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075302 has offset 0).

The definition of A075302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075302.P1833079675586278255

`A135764(n+1)-1`
-/

namespace A075302.P1833079675586278255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (n + 1) - 1

end

end A075302.P1833079675586278255

namespace A075302

/-- `A135764(n+1)-1` -/
def P1833079675586278255.Spec : Prop :=
  ∀ n, P1833079675586278255.a n = A075302 n

end A075302

/-! ## A075302.P13463662877542108322

`A075300(∑[char[∑[n]]]²-n-1)`
-/

namespace A075302.P13463662877542108322
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A075302.P13463662877542108322

namespace A075302

/-- `A075300(∑[char[∑[n]]]²-n-1)` -/
def P13463662877542108322.Spec : Prop :=
  ∀ n, P13463662877542108322.a n = A075302 n

end A075302

/-! ## A075302.P4171815956807541736

`A059268(n)*A099375(n)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A075302

/-- `A059268(n)*A099375(n)-1` -/
def P4171815956807541736.Spec : Prop :=
  ∀ n, P4171815956807541736.a n = A075302 n

theorem P4171815956807541736.correct : P4171815956807541736.Spec := by
  intro n
  simp only [A075302]

end A075302

/-! ## A075302.P16000766622457362301

`A391685(n)%A135764(n+1)`
-/

namespace A075302.P16000766622457362301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391685 n) (A135764 (n + 1))

end

end A075302.P16000766622457362301

namespace A075302

/-- `A391685(n)%A135764(n+1)` -/
def P16000766622457362301.Spec : Prop :=
  ∀ n, P16000766622457362301.a n = A075302 n

end A075302

/-! ## A075302.P14113127808878511593

`A054582(∑[2*n]%comp[∑[n]])-1`
-/

namespace A075302.P14113127808878511593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - 1

end

end A075302.P14113127808878511593

namespace A075302

/-- `A054582(∑[2*n]%comp[∑[n]])-1` -/
def P14113127808878511593.Spec : Prop :=
  ∀ n, P14113127808878511593.a n = A075302 n

end A075302

/-! ## A075302.P4538259234771603025

`A054582(∑[char[∑[n]]]²-(n+1))-1`
-/

namespace A075302.P4538259234771603025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1)) - 1

end

end A075302.P4538259234771603025

namespace A075302

/-- `A054582(∑[char[∑[n]]]²-(n+1))-1` -/
def P4538259234771603025.Spec : Prop :=
  ∀ n, P4538259234771603025.a n = A075302 n

end A075302

/-! ## A075302.P15231511765113198567

`A257791(∑[char[∑[n]]]²-n)/4-1`
-/

namespace A075302.P15231511765113198567
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257791 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) : ℚ) / 4 - 1

end

end A075302.P15231511765113198567

namespace A075302

/-- `A257791(∑[char[∑[n]]]²-n)/4-1` -/
def P15231511765113198567.Spec : Prop :=
  ∀ n, P15231511765113198567.a n = (A075302 n : ℚ)

end A075302

/-! ## A075302.P12144194989359865042

`abs(A135764(n+1)+or(-1, A000041(n)))`
-/

namespace A075302.P12144194989359865042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135764 (n + 1) + Int.lor (-1) (A000041 n)|

end

end A075302.P12144194989359865042

namespace A075302

/-- `abs(A135764(n+1)+or(-1, A000041(n)))` -/
def P12144194989359865042.Spec : Prop :=
  ∀ n, P12144194989359865042.a n = A075302 n

end A075302

/-! ## A075302.P7220813885603424417

`A023443(A135764(n+1))`
-/

namespace A075302.P7220813885603424417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A135764 (n + 1)).toNat

end

end A075302.P7220813885603424417

namespace A075302

/-- `A023443(A135764(n+1))` -/
def P7220813885603424417.Spec : Prop :=
  ∀ n, P7220813885603424417.a n = A075302 n

end A075302

/-! ## A075302.P349859816338392093

`A249812(A249741(n+1))-1`
-/

namespace A075302.P349859816338392093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249812 (A249741 (n + 1)).toNat - 1

end

end A075302.P349859816338392093

namespace A075302

/-- `A249812(A249741(n+1))-1` -/
def P349859816338392093.Spec : Prop :=
  ∀ n, P349859816338392093.a n = A075302 n

end A075302

/-!
# A075303: Inverse permutation to A075302.

The programs for A075303, the canonical program `A075303.P7538692044462103921` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075303 has offset 0).

The definition of A075303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075303.P7538692044462103921

`A249725(n+1)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A075303

/-- `A249725(n+1)-1` -/
def P7538692044462103921.Spec : Prop :=
  ∀ n, P7538692044462103921.a n = A075303 n

theorem P7538692044462103921.correct : P7538692044462103921.Spec := by
  intro n
  simp only [A075303]

end A075303

/-! ## A075303.P14148135522877950071

`(val(n+1, 2)+floor(n/(xor(n, n+1)+1))+1)²-A209268(n+1)`
-/

namespace A075303.P14148135522877950071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)) ^ 2 - A209268 (n + 1)

end

end A075303.P14148135522877950071

namespace A075303

/-- `(val(n+1, 2)+floor(n/(xor(n, n+1)+1))+1)²-A209268(n+1)` -/
def P14148135522877950071.Spec : Prop :=
  ∀ n, P14148135522877950071.a n = A075303 n

end A075303

/-! ## A075303.P14171140529688572189

`A007814(n+1)+A075301(n)-A025480(n)`
-/

namespace A075303.P14171140529688572189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A075301 n - A025480 n)

end

end A075303.P14171140529688572189

namespace A075303

/-- `A007814(n+1)+A075301(n)-A025480(n)` -/
def P14171140529688572189.Spec : Prop :=
  ∀ n, P14171140529688572189.a n = A075303 n

end A075303

/-! ## A075303.P15227979356640623913

`A007814(n+1)+A209268(n+1)-A003602(n+1)`
-/

namespace A075303.P15227979356640623913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A209268 (n + 1) - A003602 (n + 1))

end

end A075303.P15227979356640623913

namespace A075303

/-- `A007814(n+1)+A209268(n+1)-A003602(n+1)` -/
def P15227979356640623913.Spec : Prop :=
  ∀ n, P15227979356640623913.a n = A075303 n

end A075303

/-! ## A075303.P2398518400466425217

`A249742(A249811(n+1))-1`
-/

namespace A075303.P2398518400466425217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A249811 (n + 1)).toNat - 1

end

end A075303.P2398518400466425217

namespace A075303

/-- `A249742(A249811(n+1))-1` -/
def P2398518400466425217.Spec : Prop :=
  ∀ n, P2398518400466425217.a n = A075303 n

end A075303

/-! ## A075303.P4451870994851276346

`A038722(A209268(n+1))-1`
-/

namespace A075303.P4451870994851276346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A209268 (n + 1)).toNat - 1

end

end A075303.P4451870994851276346

namespace A075303

/-- `A038722(A209268(n+1))-1` -/
def P4451870994851276346.Spec : Prop :=
  ∀ n, P4451870994851276346.a n = A075303 n

end A075303

/-! ## A075303.P13336747573500389840

`A023443(A249725(n+1))`
-/

namespace A075303.P13336747573500389840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A249725 (n + 1)).toNat

end

end A075303.P13336747573500389840

namespace A075303

/-- `A023443(A249725(n+1))` -/
def P13336747573500389840.Spec : Prop :=
  ∀ n, P13336747573500389840.a n = A075303 n

end A075303

/-! ## A075303.P14266563804418206019

`A023444(A249725(n+1)+1)`
-/

namespace A075303.P14266563804418206019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A249725 (n + 1) + 1).toNat

end

end A075303.P14266563804418206019

namespace A075303

/-- `A023444(A249725(n+1)+1)` -/
def P14266563804418206019.Spec : Prop :=
  ∀ n, P14266563804418206019.a n = A075303 n

end A075303

/-! ## A075303.P8735028075863032396

`A289207(A249725(n+1)+1)`
-/

namespace A075303.P8735028075863032396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A249725 (n + 1) + 1).toNat

end

end A075303.P8735028075863032396

namespace A075303

/-- `A289207(A249725(n+1)+1)` -/
def P8735028075863032396.Spec : Prop :=
  ∀ n, P8735028075863032396.a n = A075303 n

end A075303

/-! ## A075303.P1535834985688031729

`A061579(A075301(n))`
-/

namespace A075303.P1535834985688031729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A075301 n).toNat

end

end A075303.P1535834985688031729

namespace A075303

/-- `A061579(A075301(n))` -/
def P1535834985688031729.Spec : Prop :=
  ∀ n, P1535834985688031729.a n = A075303 n

end A075303

/-! ## A075303.P3241112435862769004

`A061579(A209268(n+1)-1)`
-/

namespace A075303.P3241112435862769004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A209268 (n + 1) - 1).toNat

end

end A075303.P3241112435862769004

namespace A075303

/-- `A061579(A209268(n+1)-1)` -/
def P3241112435862769004.Spec : Prop :=
  ∀ n, P3241112435862769004.a n = A075303 n

end A075303

/-! ## A075303.P1782395848026866240

`A246276(A246676(n+1))-1`
-/

namespace A075303.P1782395848026866240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A246676 (n + 1)).toNat - 1

end

end A075303.P1782395848026866240

namespace A075303

/-- `A246276(A246676(n+1))-1` -/
def P1782395848026866240.Spec : Prop :=
  ∀ n, P1782395848026866240.a n = A075303 n

end A075303

/-! ## A075303.P18368191869663300602

`A075301(n)-A191362(n+1)`
-/

namespace A075303.P18368191869663300602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075301 n - A191362 (n + 1)

end

end A075303.P18368191869663300602

namespace A075303

/-- `A075301(n)-A191362(n+1)` -/
def P18368191869663300602.Spec : Prop :=
  ∀ n, P18368191869663300602.a n = A075303 n

end A075303

/-! ## A075303.P10456396983769167195

`A209268(n+1)-(A191362(n+1)+1)`
-/

namespace A075303.P10456396983769167195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (n + 1) - (A191362 (n + 1) + 1)

end

end A075303.P10456396983769167195

namespace A075303

/-- `A209268(n+1)-(A191362(n+1)+1)` -/
def P10456396983769167195.Spec : Prop :=
  ∀ n, P10456396983769167195.a n = A075303 n

end A075303

/-!
# A075305: Smallest prime not occurring earlier == 1 mod n-th composite number.

The programs for A075305, there is no canonical definition to state claims against.
-/

/-! ## A075305.P17785286969092704577

`A050921(lcm(2, A110615(n+1)))`
-/

namespace A075305.P17785286969092704577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (Int.lcm 2 (A110615 (n + 1)))

end

end A075305.P17785286969092704577

/-! ## A075305.P17446934017136641410

`A050921(A110615(n+1)*A218344(n+5))`
-/

namespace A075305.P17446934017136641410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (A110615 (n + 1) * A218344 (n + 5)).toNat

end

end A075305.P17446934017136641410

/-! ## A075305.P13245523988282774402

`A114739(lcm(A002808(n+1), A085392(n+1)))`
-/

namespace A075305.P13245523988282774402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114739 (Int.lcm (A002808 (n + 1)) (A085392 (n + 1)))

end

end A075305.P13245523988282774402

/-!
# A075306: Smallest number == 0 mod (n+1)-th prime and == 1 mod all smaller primes.

The programs for A075306, there is no canonical definition to state claims against.
-/

/-! ## A075306.P13244116814725173758

`A245457(n+2)-1`
-/

namespace A075306.P13244116814725173758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245457 (n + 2) - 1

end

end A075306.P13244116814725173758

/-! ## A075306.P17299622198205837472

`∑[abs(Δ[A245457(n+1)])]`
-/

namespace A075306.P17299622198205837472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245457 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075306.P17299622198205837472

/-! ## A075306.P6987548592299473706

`∑[A025444(n)+Δ[A245457(n+1)]]`
-/

namespace A075306.P6987548592299473706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245457 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075306.P6987548592299473706

/-! ## A075306.P14175166406885798003

`∑[A014963(10*(n+1))*Δ[A245457(n+1)]]`
-/

namespace A075306.P14175166406885798003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245457 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075306.P14175166406885798003

/-! ## A075306.P5157065292325753815

`∑[Δ[A245457(n+1)]%A057130(n+1)]`
-/

namespace A075306.P5157065292325753815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245457 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A057130 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075306.P5157065292325753815

/-!
# A075307: Smallest number m > 1 with m == k mod k-th prime for k = 1 to n.

The programs for A075307, there is no canonical definition to state claims against.
-/

/-! ## A075307.P13383572108073043045

`floor(A053664(n+1)+2/(2*n+1))`
-/

namespace A075307.P13383572108073043045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053664 (n + 1) : ℚ) + 2 / (2 * n + 1 : ℚ)⌋

end

end A075307.P13383572108073043045

/-! ## A075307.P12770893503138044695

`A053664(n+1)+A000038(n)`
-/

namespace A075307.P12770893503138044695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053664 (n + 1) + A000038 n

end

end A075307.P12770893503138044695

/-! ## A075307.P11922450371810228861

`A187930(n+1)+A000038(n)+1`
-/

namespace A075307.P11922450371810228861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187930 (n + 1) + (A000038 n + 1)

end

end A075307.P11922450371810228861

/-! ## A075307.P11246242305041273918

`A053664(n+1)+floor(2/A052905(n))`
-/

namespace A075307.P11246242305041273918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053664 (n + 1) + ⌊2 / (A052905 n : ℚ)⌋

end

end A075307.P11246242305041273918

/-! ## A075307.P11770058550751554689

`A053664(n+1)+A040040(n+1)%3`
-/

namespace A075307.P11770058550751554689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053664 (n + 1) + Int.tmod (A040040 (n + 1)) 3

end

end A075307.P11770058550751554689

/-!
# A075308: Number of n-digit perfect powers.

The programs for A075308, there is no canonical definition to state claims against.
-/

/-! ## A075308.P17480211643730461908

`Δ[A070428(n)+char[1]]`
-/

namespace A075308.P17480211643730461908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070428 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075308.P17480211643730461908

/-! ## A075308.P2697239615421283179

`A240328(n)+Δ[A070428(n)]`
-/

namespace A075308.P2697239615421283179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 n + (f1 (n + 1) - f1 n)

end

end A075308.P2697239615421283179

/-! ## A075308.P13486106291506846383

`Δ[or(A010057(n), A070428(n))]`
-/

namespace A075308.P13486106291506846383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 n) (A070428 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075308.P13486106291506846383

/-! ## A075308.P15468855639939151771

`Δ[or(A014380(n), A070428(n))]`
-/

namespace A075308.P15468855639939151771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014380 n) (A070428 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075308.P15468855639939151771

/-! ## A075308.P17976708291816238554

`Δ[or(A033683(n), A070428(n))]`
-/

namespace A075308.P17976708291816238554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033683 n) (A070428 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075308.P17976708291816238554

/-!
# A075309: Distinct-digit perfect powers.

The programs for A075309, there is no canonical definition to state claims against.
-/

/-! ## A075309.P4951723999033948520

`∩[A001597(n+1), A210441(n+1)]`
-/

namespace A075309.P4951723999033948520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075309.P4951723999033948520

/-! ## A075309.P2257544530530403823

`∩[A090516(n+1), A210441(n+1)]`
-/

namespace A075309.P2257544530530403823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075309.P2257544530530403823

/-! ## A075309.P2724373400811134662

`∩[A210441(n+1), A396856(n+1)]`
-/

namespace A075309.P2724373400811134662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075309.P2724373400811134662

/-! ## A075309.P6443169155022671345

`∩[A001597(n+1), A010784(n+1)]`
-/

namespace A075309.P6443169155022671345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075309.P6443169155022671345

/-! ## A075309.P8031037101164723502

`∩[A010784(n+1), A090516(n+1)]`
-/

namespace A075309.P8031037101164723502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075309.P8031037101164723502

/-! ## A075309.P11317863270203463594

`∩[A090516(n+1), A266279(n+1)]`
-/

namespace A075309.P11317863270203463594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075309.P11317863270203463594

/-! ## A075309.P16327463126806833640

`record[A137564(A001597(n+1))]`
-/

namespace A075309.P16327463126806833640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A001597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075309.P16327463126806833640

/-! ## A075309.P16542504167520630706

`record[A137564(A090516(n+1))]`
-/

namespace A075309.P16542504167520630706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A090516 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075309.P16542504167520630706

/-! ## A075309.P12856839856436729306

`filter[A001597(n+1), A178788(#)]`
-/

namespace A075309.P12856839856436729306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A075309.P12856839856436729306

/-! ## A075309.P9751100445009275255

`filter[A090516(n+1), A178788(#)]`
-/

namespace A075309.P9751100445009275255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A075309.P9751100445009275255

/-!
# A075311: a(1) = 1; for n > 1, a(n) is the smallest number m > a(n-1) such that the number of 1's in the binary expansion of m is not already in the sequence.

The programs for A075311, the canonical program `A075311.P6686021265299365214` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075311 has offset 1).

The definition of A075311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075311.P13718984454388228057

`eq[1, (n^A180094(n))%(n+1)]`
-/

namespace A075311.P13718984454388228057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) ^ (A180094 n : ℤ))) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075311.P13718984454388228057

namespace A075311

/-- `eq[1, (n^A180094(n))%(n+1)]` -/
def P13718984454388228057.Spec : Prop :=
  ∀ n, (P13718984454388228057.a n : ℤ) = A075311 (n + 1)

end A075311

/-! ## A075311.P6686021265299365214

`lt[1, 2-a(n-A011371(n))]` with `a(0)=0, a(1)=21`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075311

/-- `lt[1, 2-a(n-A011371(n))]` -/
def P6686021265299365214.Spec : Prop :=
  ∀ n, (P6686021265299365214.a n : ℤ) = A075311 (n + 1)

theorem P6686021265299365214.correct : P6686021265299365214.Spec := by
  intro n
  simp only [A075311, Nat.add_sub_cancel]

end A075311

/-! ## A075311.P8371144082302348107

`eq[1, A000360(a(A000120(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A075311.P8371144082302348107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000360 (f2 (A000120 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075311.P8371144082302348107

namespace A075311

/-- `eq[1, A000360(a(A000120(n)))]` -/
def P8371144082302348107.Spec : Prop :=
  ∀ n, (P8371144082302348107.a n : ℤ) = A075311 (n + 1)

end A075311

/-! ## A075311.P11711271185995462957

`eq[1, A000931(a(A000120(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A075311.P11711271185995462957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000931 (f2 (A000120 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075311.P11711271185995462957

namespace A075311

/-- `eq[1, A000931(a(A000120(n)))]` -/
def P11711271185995462957.Spec : Prop :=
  ∀ n, (P11711271185995462957.a n : ℤ) = A075311 (n + 1)

end A075311

/-! ## A075311.P14975868303704276463

`eq[1, A330328(a(A000120(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A075311.P14975868303704276463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A330328 (f2 (A000120 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075311.P14975868303704276463

namespace A075311

/-- `eq[1, A330328(a(A000120(n)))]` -/
def P14975868303704276463.Spec : Prop :=
  ∀ n, (P14975868303704276463.a n : ℤ) = A075311 (n + 1)

end A075311

/-! ## A075311.P9580161510995420778

`eq[1, A001511(a(A000120(n))+1)]` with `a(0)=2, a(1)=1`
-/

namespace A075311.P9580161510995420778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A001511 (f2 (A000120 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075311.P9580161510995420778

namespace A075311

/-- `eq[1, A001511(a(A000120(n))+1)]` -/
def P9580161510995420778.Spec : Prop :=
  ∀ n, (P9580161510995420778.a n : ℤ) = A075311 (n + 1)

end A075311

/-!
# A075312: Products of Wythoff pairs: [n*r]*[n*r^2], where [] is the floor function and r is the golden ratio, (1+sqrt(5))/2.

The programs for A075312, the canonical program `A075312.P13937281751554376934` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075312 has offset 1).

The definition of A075312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075312.P13937281751554376934

`A000201(n+1)*A001950(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075312

/-- `A000201(n+1)*A001950(n+1)` -/
def P13937281751554376934.Spec : Prop :=
  ∀ n, P13937281751554376934.a n = A075312 (n + 1)

theorem P13937281751554376934.correct : P13937281751554376934.Spec := by
  intro n
  simp only [A075312, Nat.add_sub_cancel]

end A075312

/-! ## A075312.P6085132710749158636

`floor(ϕ*(n+1))*comp[floor(ϕ*n)]`
-/

namespace A075312.P6085132710749158636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A075312.P6085132710749158636

namespace A075312

/-- `floor(ϕ*(n+1))*comp[floor(ϕ*n)]` -/
def P6085132710749158636.Spec : Prop :=
  ∀ n, P6085132710749158636.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P102787960254553692

`abs(floor(cot((2-ϕ)/(n+1)))*floor(ϕ*(n+1)))`
-/

namespace A075312.P102787960254553692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.cot ((2 - Real.goldenRatio) / (n + 1 : ℝ))⌋ * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋|

end

end A075312.P102787960254553692

namespace A075312

/-- `abs(floor(cot((2-ϕ)/(n+1)))*floor(ϕ*(n+1)))` -/
def P102787960254553692.Spec : Prop :=
  ∀ n, P102787960254553692.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P4320461398629539137

`abs(floor(ϕ*(n+1))*floor(C(n+1, n)/(2-ϕ)))`
-/

namespace A075312.P4320461398629539137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.goldenRatio * (n + 1 : ℝ)⌋ * ⌊(Nat.choose (n + 1) n : ℝ) / (2 - Real.goldenRatio)⌋|

end

end A075312.P4320461398629539137

namespace A075312

/-- `abs(floor(ϕ*(n+1))*floor(C(n+1, n)/(2-ϕ)))` -/
def P4320461398629539137.Spec : Prop :=
  ∀ n, P4320461398629539137.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P18389973731678365503

`abs((floor(∑[ϕ-n])+C(n+2, 2))*floor(ϕ*(n+1)))`
-/

namespace A075312.P18389973731678365503
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (Nat.choose (n + 2) 2 : ℤ)) * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋|

end

end A075312.P18389973731678365503

namespace A075312

/-- `abs((floor(∑[ϕ-n])+C(n+2, 2))*floor(ϕ*(n+1)))` -/
def P18389973731678365503.Spec : Prop :=
  ∀ n, P18389973731678365503.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P10064953799924806687

`abs(floor(ϕ²*(n+1)%(n+2))*ceil(ϕ*(n+1)-and(1, 2*n+1)))`
-/

namespace A075312.P10064953799924806687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.goldenRatio ^ 2 * (((n + 1) % (n + 2) : ℕ) : ℝ)⌋ * ⌈Real.goldenRatio * (n + 1 : ℝ) - (Nat.land 1 (2 * n + 1) : ℝ)⌉|

end

end A075312.P10064953799924806687

namespace A075312

/-- `abs(floor(ϕ²*(n+1)%(n+2))*ceil(ϕ*(n+1)-and(1, 2*n+1)))` -/
def P10064953799924806687.Spec : Prop :=
  ∀ n, P10064953799924806687.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P8039481522609594812

`abs((∑[A000040(Δ[ceil(ϕ*n)])]-1)*floor(ϕ*(n+1)))`
-/

namespace A075312.P8039481522609594812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j - 1) * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋|

end

end A075312.P8039481522609594812

namespace A075312

/-- `abs((∑[A000040(Δ[ceil(ϕ*n)])]-1)*floor(ϕ*(n+1)))` -/
def P8039481522609594812.Spec : Prop :=
  ∀ n, P8039481522609594812.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P7143202398048460463

`A293688(n)+A101863(n+1)`
-/

namespace A075312.P7143202398048460463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 n + A101863 (n + 1)

end

end A075312.P7143202398048460463

namespace A075312

/-- `A293688(n)+A101863(n+1)` -/
def P7143202398048460463.Spec : Prop :=
  ∀ n, P7143202398048460463.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P18015414143258437508

`A000201(n+1)+A000201(n+1)*A003622(n+1)`
-/

namespace A075312.P18015414143258437508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + A000201 (n + 1) * A003622 (n + 1)

end

end A075312.P18015414143258437508

namespace A075312

/-- `A000201(n+1)+A000201(n+1)*A003622(n+1)` -/
def P18015414143258437508.Spec : Prop :=
  ∀ n, P18015414143258437508.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P664611360130747883

`A001950(n+1)+A001950(n+1)*A022342(n+1)`
-/

namespace A075312.P664611360130747883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + A001950 (n + 1) * A022342 (n + 1)

end

end A075312.P664611360130747883

namespace A075312

/-- `A001950(n+1)+A001950(n+1)*A022342(n+1)` -/
def P664611360130747883.Spec : Prop :=
  ∀ n, P664611360130747883.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P13005965503840664945

`A001950(n+1)*A026351(n+1)-A001950(n+1)`
-/

namespace A075312.P13005965503840664945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) * A026351 (n + 1) - A001950 (n + 1)

end

end A075312.P13005965503840664945

namespace A075312

/-- `A001950(n+1)*A026351(n+1)-A001950(n+1)` -/
def P13005965503840664945.Spec : Prop :=
  ∀ n, P13005965503840664945.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P2734573923214994938

`A000201(n+1)*A026352(n+1)-A000201(n+1)`
-/

namespace A075312.P2734573923214994938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) * A026352 (n + 1) - A000201 (n + 1)

end

end A075312.P2734573923214994938

namespace A075312

/-- `A000201(n+1)*A026352(n+1)-A000201(n+1)` -/
def P2734573923214994938.Spec : Prop :=
  ∀ n, P2734573923214994938.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P5647402913349539130

`record[A002251(n+1)*(n+1)]`
-/

namespace A075312.P5647402913349539130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075312.P5647402913349539130

namespace A075312

/-- `record[A002251(n+1)*(n+1)]` -/
def P5647402913349539130.Spec : Prop :=
  ∀ n, P5647402913349539130.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P1556787951598734926

`A088207(A000201(n+1))+A054347(n)`
-/

namespace A075312.P1556787951598734926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (A000201 (n + 1)).toNat + A054347 n

end

end A075312.P1556787951598734926

namespace A075312

/-- `A088207(A000201(n+1))+A054347(n)` -/
def P1556787951598734926.Spec : Prop :=
  ∀ n, P1556787951598734926.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P10311707837430582518

`A293688(A003622(n+1))`
-/

namespace A075312.P10311707837430582518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 (A003622 (n + 1)).toNat

end

end A075312.P10311707837430582518

namespace A075312

/-- `A293688(A003622(n+1))` -/
def P10311707837430582518.Spec : Prop :=
  ∀ n, P10311707837430582518.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P16918975500926031363

`A293688(A001950(n+1)-1)`
-/

namespace A075312.P16918975500926031363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 (A001950 (n + 1) - 1).toNat

end

end A075312.P16918975500926031363

namespace A075312

/-- `A293688(A001950(n+1)-1)` -/
def P16918975500926031363.Spec : Prop :=
  ∀ n, P16918975500926031363.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P13725689345859899509

`A293688(A000201(n+1)+n)`
-/

namespace A075312.P13725689345859899509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 (A000201 (n + 1) + (n : ℤ)).toNat

end

end A075312.P13725689345859899509

namespace A075312

/-- `A293688(A000201(n+1)+n)` -/
def P13725689345859899509.Spec : Prop :=
  ∀ n, P13725689345859899509.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P14429408446368670758

`A293688(A066096(n+1)+n)`
-/

namespace A075312.P14429408446368670758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 (A066096 (n + 1) + (n : ℤ)).toNat

end

end A075312.P14429408446368670758

namespace A075312

/-- `A293688(A066096(n+1)+n)` -/
def P14429408446368670758.Spec : Prop :=
  ∀ n, P14429408446368670758.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P13188810022248713458

`A293688(A022342(n+1)+n+1)`
-/

namespace A075312.P13188810022248713458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 (A022342 (n + 1) + (n + 1 : ℤ)).toNat

end

end A075312.P13188810022248713458

namespace A075312

/-- `A293688(A022342(n+1)+n+1)` -/
def P13188810022248713458.Spec : Prop :=
  ∀ n, P13188810022248713458.a n = A075312 (n + 1)

end A075312

/-! ## A075312.P10495448169679976976

`A293688(A005206(n)+2*n+1)`
-/

namespace A075312.P10495448169679976976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 (A005206 n + (2 * n + 1 : ℤ)).toNat

end

end A075312.P10495448169679976976

namespace A075312

/-- `A293688(A005206(n)+2*n+1)` -/
def P10495448169679976976.Spec : Prop :=
  ∀ n, P10495448169679976976.a n = A075312 (n + 1)

end A075312

/-!
# A075313: Pair the natural numbers such that the n-th pair is (k, k+prime(n)) where k is the smallest number not occurring earlier and prime(n) is the n-th prime. (1, 3), (2, 5), (4, 9), (6, 13), (7, 18), (8, 21), (10, 27), (11, 30), (12, 35), (14, 43), ... This is the sequence of the first member of every pair.

The programs for A075313, there is no canonical definition to state claims against.
-/

/-! ## A075313.P1707415323850782651

`comp[A075314(n+1)-1]+1`
-/

namespace A075313.P1707415323850782651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075314 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A075313.P1707415323850782651

/-! ## A075313.P6664888259504805280

`A075314(n+1)-A000040(n+1)`
-/

namespace A075313.P6664888259504805280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075314 (n + 1) - A000040 (n + 1)

end

end A075313.P6664888259504805280

/-! ## A075313.P15272511256260361742

`A075315(n+1)-A075314(n+1)`
-/

namespace A075313.P15272511256260361742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075315 (n + 1) - A075314 (n + 1)

end

end A075313.P15272511256260361742

/-! ## A075313.P9225461201437941958

`A075316(n+1)/A075314(n+1)`
-/

namespace A075313.P9225461201437941958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075316 (n + 1) : ℚ) / (A075314 (n + 1) : ℚ)

end

end A075313.P9225461201437941958

/-! ## A075313.P7410641226988214864

`A075314(n+1)-record[A006530(n+2)]`
-/

namespace A075313.P7410641226988214864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075314 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075313.P7410641226988214864

/-! ## A075313.P6253873149593104644

`A075314(n+1)-record[A020639(n+2)]`
-/

namespace A075313.P6253873149593104644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075314 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075313.P6253873149593104644

/-! ## A075313.P17808965131536630083

`A075314(n+1)-p?[A001057(n)]`
-/

namespace A075313.P17808965131536630083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075314 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075313.P17808965131536630083

/-!
# A075314: Pair the natural numbers such that the n-th pair is (k, k+p(n)) where k is the smallest number not occurring earlier and p(n) is the n-th prime. (1, 3), (2, 5), (4, 9), (6, 13), (7, 18), (8, 21), (10, 27), (11, 30), (12, 35), (14, 43), ... This is the sequence of the second member of every pair.

The programs for A075314, there is no canonical definition to state claims against.
-/

/-! ## A075314.P6881127778913420572

`A075313(n+1)+Δ[A007504(n)]`
-/

namespace A075314.P6881127778913420572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075313 (n + 1) + (f1 (n + 1) - f1 n)

end

end A075314.P6881127778913420572

/-! ## A075314.P88891713880851061

`A075313(n+1)+A000040(n+1)`
-/

namespace A075314.P88891713880851061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075313 (n + 1) + A000040 (n + 1)

end

end A075314.P88891713880851061

/-! ## A075314.P640169125133290527

`A075315(n+1)-A075313(n+1)`
-/

namespace A075314.P640169125133290527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075315 (n + 1) - A075313 (n + 1)

end

end A075314.P640169125133290527

/-! ## A075314.P14887601443119405856

`A075316(n+1)/A075313(n+1)`
-/

namespace A075314.P14887601443119405856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075316 (n + 1) : ℚ) / (A075313 (n + 1) : ℚ)

end

end A075314.P14887601443119405856

/-! ## A075314.P14613785895512432663

`A075313(n+1)+record[A006530(n+2)]`
-/

namespace A075314.P14613785895512432663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075313 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075314.P14613785895512432663

/-! ## A075314.P1079111381719217009

`A075313(n+1)+record[A020639(n+2)]`
-/

namespace A075314.P1079111381719217009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075313 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075314.P1079111381719217009

/-! ## A075314.P18394909779306870111

`record[A000010(n+1)]+A075313(n+1)+1`
-/

namespace A075314.P18394909779306870111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A075313 (n + 1) + 1)

end

end A075314.P18394909779306870111

/-! ## A075314.P15273434655508310386

`A075313(n+1)+p?[A001057(n)]`
-/

namespace A075314.P15273434655508310386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075313 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075314.P15273434655508310386

/-!
# A075315: Pair the natural numbers such that the n-th pair is (k, k+p(n)) where k is the smallest number not occurring earlier and p(n) is the n-th prime. (1, 3), (2, 5), (4, 9), (6, 13), (7, 18), (8, 21), (10, 27), (11, 30), (12, 35), (14, 43), ... This is the sequence of the sum of the members of every pair.

The programs for A075315, there is no canonical definition to state claims against.
-/

/-! ## A075315.P4120869846608459296

`A075314(n+1)+A075313(n+1)`
-/

namespace A075315.P4120869846608459296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075314 (n + 1) + A075313 (n + 1)

end

end A075315.P4120869846608459296

/-! ## A075315.P16575391618772937054

`A000040(n+1)+2*A075313(n+1)`
-/

namespace A075315.P16575391618772937054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A075313 (n + 1)

end

end A075315.P16575391618772937054

/-! ## A075315.P4754096627701550079

`2*A075314(n+1)-A000040(n+1)`
-/

namespace A075315.P4754096627701550079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075314 (n + 1) - A000040 (n + 1)

end

end A075315.P4754096627701550079

/-! ## A075315.P14506190316269083072

`A075313(n+1)+A075316(n+1)/A075313(n+1)`
-/

namespace A075315.P14506190316269083072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075313 (n + 1) : ℚ) + (A075316 (n + 1) : ℚ) / (A075313 (n + 1) : ℚ)

end

end A075315.P14506190316269083072

/-! ## A075315.P107408753100965077

`A075314(n+1)+A075316(n+1)/A075314(n+1)`
-/

namespace A075315.P107408753100965077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075314 (n + 1) : ℚ) + (A075316 (n + 1) : ℚ) / (A075314 (n + 1) : ℚ)

end

end A075315.P107408753100965077

/-! ## A075315.P4080544004713375198

`p?[A001057(n)]+2*A075313(n+1)`
-/

namespace A075315.P4080544004713375198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 * A075313 (n + 1)

end

end A075315.P4080544004713375198

/-! ## A075315.P3507131308463401289

`2*A075314(n+1)-p?[A001057(n)]`
-/

namespace A075315.P3507131308463401289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075314 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075315.P3507131308463401289

/-!
# A075316: Pair the natural numbers such that the n-th pair is (k, k+p(n)) where k is the smallest number not occurring earlier and p(n) is the n-th prime. (1, 3), (2, 5), (4, 9), (6, 13), (7, 18), (8, 21), (10, 27), (11, 30), (12, 35), (14, 43), ... This is the sequence of the product of the members of every pair.

The programs for A075316, there is no canonical definition to state claims against.
-/

/-! ## A075316.P8562260459356872865

`A075313(n+1)*A075314(n+1)`
-/

namespace A075316.P8562260459356872865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075313 (n + 1) * A075314 (n + 1)

end

end A075316.P8562260459356872865

/-! ## A075316.P18226938275841714531

`(A075313(n+1)+A000040(n+1))*A075313(n+1)`
-/

namespace A075316.P18226938275841714531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075313 (n + 1) + A000040 (n + 1)) * A075313 (n + 1)

end

end A075316.P18226938275841714531

/-! ## A075316.P138147248258561167

`(A075314(n+1)-A000040(n+1))*A075314(n+1)`
-/

namespace A075316.P138147248258561167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075314 (n + 1) - A000040 (n + 1)) * A075314 (n + 1)

end

end A075316.P138147248258561167

/-! ## A075316.P17633234695296012409

`(A075315(n+1)-A075313(n+1))*A075313(n+1)`
-/

namespace A075316.P17633234695296012409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075315 (n + 1) - A075313 (n + 1)) * A075313 (n + 1)

end

end A075316.P17633234695296012409

/-! ## A075316.P15753032743965605760

`(A075315(n+1)-A075314(n+1))*A075314(n+1)`
-/

namespace A075316.P15753032743965605760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075315 (n + 1) - A075314 (n + 1)) * A075314 (n + 1)

end

end A075316.P15753032743965605760

/-!
# A075317: Pair the odd numbers such that the k-th pair is (r, r+2k) where r is the smallest odd number not included earlier: (1,3),(5,9),(7,13),(11,19),(15,25),(17,29),(21,35),(23,39),(27,45),... This is the sequence of the first member of pairs.

The programs for A075317, the canonical program `A075317.P11695724334803457321` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075317 has offset 1).

The definition of A075317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075317.P11695724334803457321

`2*floor((n+1)*ϕ)-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A075317

/-- `2*floor((n+1)*ϕ)-1` -/
def P11695724334803457321.Spec : Prop :=
  ∀ n, P11695724334803457321.a n = A075317 (n + 1)

theorem P11695724334803457321.correct : P11695724334803457321.Spec := by
  intro n
  simp only [A075317, Nat.add_sub_cancel]

end A075317

/-! ## A075317.P3480091894234007188

`or(1, floor(floor(ϕ*(n+1))+ϕ*n))`
-/

namespace A075317.P3480091894234007188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(⌊Real.goldenRatio * (n + 1 : ℝ)⌋ : ℝ) + Real.goldenRatio * (n : ℝ)⌋

end

end A075317.P3480091894234007188

namespace A075317

/-- `or(1, floor(floor(ϕ*(n+1))+ϕ*n))` -/
def P3480091894234007188.Spec : Prop :=
  ∀ n, P3480091894234007188.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P5718645786131631554

`abs(1-A283233(n+1))`
-/

namespace A075317.P5718645786131631554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A283233 (n + 1)|

end

end A075317.P5718645786131631554

namespace A075317

/-- `abs(1-A283233(n+1))` -/
def P5718645786131631554.Spec : Prop :=
  ∀ n, P5718645786131631554.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P13895102206051137863

`2*(A005206(n)+(2*n+1)/2)`
-/

namespace A075317.P13895102206051137863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A005206 n : ℚ) + (2 * n + 1 : ℚ) / 2)

end

end A075317.P13895102206051137863

namespace A075317

/-- `2*(A005206(n)+(2*n+1)/2)` -/
def P13895102206051137863.Spec : Prop :=
  ∀ n, P13895102206051137863.a n = (A075317 (n + 1) : ℚ)

end A075317

/-! ## A075317.P8719871933947127471

`xor(A096270(n), A191402(n))`
-/

namespace A075317.P8719871933947127471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096270 n) (A191402 n)

end

end A075317.P8719871933947127471

namespace A075317

/-- `xor(A096270(n), A191402(n))` -/
def P8719871933947127471.Spec : Prop :=
  ∀ n, P8719871933947127471.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P7457995589328707940

`A035337(n)%A054770(n+1)`
-/

namespace A075317.P7457995589328707940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035337 n) (A054770 (n + 1))

end

end A075317.P7457995589328707940

namespace A075317

/-- `A035337(n)%A054770(n+1)` -/
def P7457995589328707940.Spec : Prop :=
  ∀ n, P7457995589328707940.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P12099713627052837533

`A134860(n+1)%A003231(n+1)`
-/

namespace A075317.P12099713627052837533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134860 (n + 1)) (A003231 (n + 1))

end

end A075317.P12099713627052837533

namespace A075317

/-- `A134860(n+1)%A003231(n+1)` -/
def P12099713627052837533.Spec : Prop :=
  ∀ n, P12099713627052837533.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P5800769263235580928

`A075319(n+1)%A075318(n+1)`
-/

namespace A075317.P5800769263235580928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075319 (n + 1)) (A075318 (n + 1))

end

end A075317.P5800769263235580928

namespace A075317

/-- `A075319(n+1)%A075318(n+1)` -/
def P5800769263235580928.Spec : Prop :=
  ∀ n, P5800769263235580928.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P3149631705727744007

`∩[2*n+1, A287658(n+1)]`
-/

namespace A075317.P3149631705727744007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075317.P3149631705727744007

namespace A075317

/-- `∩[2*n+1, A287658(n+1)]` -/
def P3149631705727744007.Spec : Prop :=
  ∀ n, (P3149631705727744007.a n : ℤ) = A075317 (n + 1)

end A075317

/-! ## A075317.P16718365676933326677

`A004273(A000201(n+1))`
-/

namespace A075317.P16718365676933326677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000201 (n + 1)).toNat

end

end A075317.P16718365676933326677

namespace A075317

/-- `A004273(A000201(n+1))` -/
def P16718365676933326677.Spec : Prop :=
  ∀ n, P16718365676933326677.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P7479747269947271777

`A004273(A066096(n+1))`
-/

namespace A075317.P7479747269947271777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A066096 (n + 1)).toNat

end

end A075317.P7479747269947271777

namespace A075317

/-- `A004273(A066096(n+1))` -/
def P7479747269947271777.Spec : Prop :=
  ∀ n, P7479747269947271777.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P3903920377406494433

`A223134(A022342(n+1))`
-/

namespace A075317.P3903920377406494433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A022342 (n + 1)).toNat

end

end A075317.P3903920377406494433

namespace A075317

/-- `A223134(A022342(n+1))` -/
def P3903920377406494433.Spec : Prop :=
  ∀ n, P3903920377406494433.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P12291240184366306903

`A287658(A005206(n)+n+1)`
-/

namespace A075317.P12291240184366306903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (A005206 n + (n + 1 : ℤ)).toNat

end

end A075317.P12291240184366306903

namespace A075317

/-- `A287658(A005206(n)+n+1)` -/
def P12291240184366306903.Spec : Prop :=
  ∀ n, P12291240184366306903.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P10630705046002217834

`A287658(A003622(n+1)-n)`
-/

namespace A075317.P10630705046002217834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (A003622 (n + 1) - (n : ℤ)).toNat

end

end A075317.P10630705046002217834

namespace A075317

/-- `A287658(A003622(n+1)-n)` -/
def P10630705046002217834.Spec : Prop :=
  ∀ n, P10630705046002217834.a n = A075317 (n + 1)

end A075317

/-! ## A075317.P17922887711736698234

`∩[A287658(n+1), A004273(n)]`
-/

namespace A075317.P17922887711736698234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075317.P17922887711736698234

namespace A075317

/-- `∩[A287658(n+1), A004273(n)]` -/
def P17922887711736698234.Spec : Prop :=
  ∀ n, (P17922887711736698234.a n : ℤ) = A075317 (n + 1)

end A075317

/-! ## A075317.P4455222292899936813

`∩[A287658(n+1), A060747(n)]`
-/

namespace A075317.P4455222292899936813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075317.P4455222292899936813

namespace A075317

/-- `∩[A287658(n+1), A060747(n)]` -/
def P4455222292899936813.Spec : Prop :=
  ∀ n, (P4455222292899936813.a n : ℤ) = A075317 (n + 1)

end A075317

/-! ## A075317.P2033599442805006610

`∩[A287658(n+1), A163985(n)]`
-/

namespace A075317.P2033599442805006610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075317.P2033599442805006610

namespace A075317

/-- `∩[A287658(n+1), A163985(n)]` -/
def P2033599442805006610.Spec : Prop :=
  ∀ n, (P2033599442805006610.a n : ℤ) = A075317 (n + 1)

end A075317

/-! ## A075317.P16741061241357805676

`∩[A287658(n+1), A004274(n)]`
-/

namespace A075317.P16741061241357805676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075317.P16741061241357805676

namespace A075317

/-- `∩[A287658(n+1), A004274(n)]` -/
def P16741061241357805676.Spec : Prop :=
  ∀ n, (P16741061241357805676.a n : ℤ) = A075317 (n + 1)

end A075317

/-! ## A075317.P14555645271196193460

`A137708(Δ[n²])`
-/

namespace A075317.P14555645271196193460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075317.P14555645271196193460

namespace A075317

/-- `A137708(Δ[n²])` -/
def P14555645271196193460.Spec : Prop :=
  ∀ n, P14555645271196193460.a n = A075317 (n + 1)

end A075317

/-!
# A075318: Pair the odd numbers such that the k-th pair is (r, r+2k) where r is the smallest odd number not included earlier: (1,3),(5,9),(7,13),(11,19),(15,25),(17,29),(21,35),(23,39),(27,45),... This is the sequence of the second member of pairs.

The programs for A075318, the canonical program `A075318.P2781081715488450542` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075318 has offset 1).

The definition of A075318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075318.P2781081715488450542

`2*floor((n+1)*ϕ²)-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A075318

/-- `2*floor((n+1)*ϕ²)-1` -/
def P2781081715488450542.Spec : Prop :=
  ∀ n, P2781081715488450542.a n = A075318 (n + 1)

theorem P2781081715488450542.correct : P2781081715488450542.Spec := by
  intro n
  simp only [A075318, Nat.add_sub_cancel]

end A075318

/-! ## A075318.P3428701879609646716

`abs(1-A283234(n+1))`
-/

namespace A075318.P3428701879609646716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A283234 (n + 1)|

end

end A075318.P3428701879609646716

namespace A075318

/-- `abs(1-A283234(n+1))` -/
def P3428701879609646716.Spec : Prop :=
  ∀ n, P3428701879609646716.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P6489539267058589071

`abs(1-2*A001950(n+1))`
-/

namespace A075318.P6489539267058589071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A001950 (n + 1)|

end

end A075318.P6489539267058589071

namespace A075318

/-- `abs(1-2*A001950(n+1))` -/
def P6489539267058589071.Spec : Prop :=
  ∀ n, P6489539267058589071.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P7659472316488533871

`∑[(Δ[ceil(ϕ*n)]+1)*(2-A000007(n))]`
-/

namespace A075318.P7659472316488533871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 1) * (2 - A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075318.P7659472316488533871

namespace A075318

/-- `∑[(Δ[ceil(ϕ*n)]+1)*(2-A000007(n))]` -/
def P7659472316488533871.Spec : Prop :=
  ∀ n, P7659472316488533871.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P11784334003536055590

`A134863(n+1)%A190509(n+1)`
-/

namespace A075318.P11784334003536055590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134863 (n + 1)) (A190509 (n + 1))

end

end A075318.P11784334003536055590

namespace A075318

/-- `A134863(n+1)%A190509(n+1)` -/
def P11784334003536055590.Spec : Prop :=
  ∀ n, P11784334003536055590.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P12095481397423673057

`A130568(A000201(n+1))`
-/

namespace A075318.P12095481397423673057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 (A000201 (n + 1)).toNat

end

end A075318.P12095481397423673057

namespace A075318

/-- `A130568(A000201(n+1))` -/
def P12095481397423673057.Spec : Prop :=
  ∀ n, P12095481397423673057.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P7215641427844790478

`A130568(A066096(n+1))`
-/

namespace A075318.P7215641427844790478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 (A066096 (n + 1)).toNat

end

end A075318.P7215641427844790478

namespace A075318

/-- `A130568(A066096(n+1))` -/
def P7215641427844790478.Spec : Prop :=
  ∀ n, P7215641427844790478.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P17773412606492371649

`A130568(A022342(n+1)+1)`
-/

namespace A075318.P17773412606492371649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 (A022342 (n + 1) + 1).toNat

end

end A075318.P17773412606492371649

namespace A075318

/-- `A130568(A022342(n+1)+1)` -/
def P17773412606492371649.Spec : Prop :=
  ∀ n, P17773412606492371649.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P10629483197259865807

`A130568(A005206(n)+n+1)`
-/

namespace A075318.P10629483197259865807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 (A005206 n + (n + 1 : ℤ)).toNat

end

end A075318.P10629483197259865807

namespace A075318

/-- `A130568(A005206(n)+n+1)` -/
def P10629483197259865807.Spec : Prop :=
  ∀ n, P10629483197259865807.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P15622369503286465596

`A137709(Δ[n²])`
-/

namespace A075318.P15622369503286465596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137709 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075318.P15622369503286465596

namespace A075318

/-- `A137709(Δ[n²])` -/
def P15622369503286465596.Spec : Prop :=
  ∀ n, P15622369503286465596.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P330104003843119135

`A187577(Δ[n²])`
-/

namespace A075318.P330104003843119135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187577 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075318.P330104003843119135

namespace A075318

/-- `A187577(Δ[n²])` -/
def P330104003843119135.Spec : Prop :=
  ∀ n, P330104003843119135.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P18142234804390005332

`record[2*A054084(n+1)-1]`
-/

namespace A075318.P18142234804390005332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054084 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075318.P18142234804390005332

namespace A075318

/-- `record[2*A054084(n+1)-1]` -/
def P18142234804390005332.Spec : Prop :=
  ∀ n, P18142234804390005332.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P15391373500600902230

`∩[A137709(n+1), A130568(n)]`
-/

namespace A075318.P15391373500600902230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075318.P15391373500600902230

namespace A075318

/-- `∩[A137709(n+1), A130568(n)]` -/
def P15391373500600902230.Spec : Prop :=
  ∀ n, (P15391373500600902230.a n : ℤ) = A075318 (n + 1)

end A075318

/-! ## A075318.P3902897758515975884

`∩[A187577(n+1), A130568(n)]`
-/

namespace A075318.P3902897758515975884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075318.P3902897758515975884

namespace A075318

/-- `∩[A187577(n+1), A130568(n)]` -/
def P3902897758515975884.Spec : Prop :=
  ∀ n, (P3902897758515975884.a n : ℤ) = A075318 (n + 1)

end A075318

/-! ## A075318.P13471571276274640603

`filter[A137709(2*n+1), A035263(#)]`
-/

namespace A075318.P13471571276274640603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137709 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A075318.P13471571276274640603

namespace A075318

/-- `filter[A137709(2*n+1), A035263(#)]` -/
def P13471571276274640603.Spec : Prop :=
  ∀ n, P13471571276274640603.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P12020995983523577008

`filter[A137709(2*n+1), A039982(#)]`
-/

namespace A075318.P12020995983523577008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137709 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A075318.P12020995983523577008

namespace A075318

/-- `filter[A137709(2*n+1), A039982(#)]` -/
def P12020995983523577008.Spec : Prop :=
  ∀ n, P12020995983523577008.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P16261947616121407998

`filter[A187577(2*n+1), A035263(#)]`
-/

namespace A075318.P16261947616121407998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187577 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A075318.P16261947616121407998

namespace A075318

/-- `filter[A187577(2*n+1), A035263(#)]` -/
def P16261947616121407998.Spec : Prop :=
  ∀ n, P16261947616121407998.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P14996308695897584336

`filter[A187577(2*n+1), A039982(#)]`
-/

namespace A075318.P14996308695897584336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187577 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A075318.P14996308695897584336

namespace A075318

/-- `filter[A187577(2*n+1), A039982(#)]` -/
def P14996308695897584336.Spec : Prop :=
  ∀ n, P14996308695897584336.a n = A075318 (n + 1)

end A075318

/-! ## A075318.P12161003519346738553

`filter[A137709(2*n+1), A093719(#)]`
-/

namespace A075318.P12161003519346738553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137709 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A075318.P12161003519346738553

namespace A075318

/-- `filter[A137709(2*n+1), A093719(#)]` -/
def P12161003519346738553.Spec : Prop :=
  ∀ n, P12161003519346738553.a n = A075318 (n + 1)

end A075318

/-!
# A075319: Pair the odd numbers such that the k-th pair is (r, r+2k) where r is the smallest odd number not included earlier: (1,3),(5,9),(7,13),(11,19),(15,25),(17,29),(21,35),(23,39),(27,45),... This is the sequence of the sum of the members of pairs.

The programs for A075319, the canonical program `A075319.P9049366003982921558` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075319 has offset 1).

The definition of A075319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075319.P9049366003982921558

`A075317(n+1)+A075318(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075319

/-- `A075317(n+1)+A075318(n+1)` -/
def P9049366003982921558.Spec : Prop :=
  ∀ n, P9049366003982921558.a n = A075319 (n + 1)

theorem P9049366003982921558.correct : P9049366003982921558.Spec := by
  intro n
  simp only [A075319, Nat.add_sub_cancel]

end A075319

/-! ## A075319.P15820037432368106634

`2*(2*floor(ϕ*(n+1))+n)`
-/

namespace A075319.P15820037432368106634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ))

end

end A075319.P15820037432368106634

namespace A075319

/-- `2*(2*floor(ϕ*(n+1))+n)` -/
def P15820037432368106634.Spec : Prop :=
  ∀ n, P15820037432368106634.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P1686680662051313897

`∑[Δ[ceil(n*ϕ²)]!+4]-6`
-/

namespace A075319.P1686680662051313897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6

end

end A075319.P1686680662051313897

namespace A075319

/-- `∑[Δ[ceil(n*ϕ²)]!+4]-6` -/
def P1686680662051313897.Spec : Prop :=
  ∀ n, P1686680662051313897.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P6875085056981217119

`∑[lcm(2, Δ[ceil(n*ϕ²)])+4]-6`
-/

namespace A075319.P6875085056981217119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f2 (n + 1) - f2 n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6

end

end A075319.P6875085056981217119

namespace A075319

/-- `∑[lcm(2, Δ[ceil(n*ϕ²)])+4]-6` -/
def P6875085056981217119.Spec : Prop :=
  ∀ n, P6875085056981217119.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P13246039715552368439

`∑[C(Δ[ceil(n*ϕ²)]+2, 2)]-6`
-/

namespace A075319.P13246039715552368439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (n + 1) - f2 n + 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6

end

end A075319.P13246039715552368439

namespace A075319

/-- `∑[C(Δ[ceil(n*ϕ²)]+2, 2)]-6` -/
def P13246039715552368439.Spec : Prop :=
  ∀ n, P13246039715552368439.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P3981920198788417614

`∑[gcd(5, Δ[floor(n/ϕ²)])+5]-6`
-/

namespace A075319.P3981920198788417614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (f2 (n + 1) - f2 n) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6

end

end A075319.P3981920198788417614

namespace A075319

/-- `∑[gcd(5, Δ[floor(n/ϕ²)])+5]-6` -/
def P3981920198788417614.Spec : Prop :=
  ∀ n, P3981920198788417614.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P1929032959895371264

`A101869(n+1)-6`
-/

namespace A075319.P1929032959895371264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101869 (n + 1) - 6

end

end A075319.P1929032959895371264

namespace A075319

/-- `A101869(n+1)-6` -/
def P1929032959895371264.Spec : Prop :=
  ∀ n, P1929032959895371264.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P15618803896707657907

`(A035339(n)-n)/2`
-/

namespace A075319.P15618803896707657907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035339 n - (n : ℤ) : ℚ) / 2

end

end A075319.P15618803896707657907

namespace A075319

/-- `(A035339(n)-n)/2` -/
def P15618803896707657907.Spec : Prop :=
  ∀ n, P15618803896707657907.a n = (A075319 (n + 1) : ℚ)

end A075319

/-! ## A075319.P12098512129826732619

`A035337(n)+A000201(n+1)`
-/

namespace A075319.P12098512129826732619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n + A000201 (n + 1)

end

end A075319.P12098512129826732619

namespace A075319

/-- `A035337(n)+A000201(n+1)` -/
def P12098512129826732619.Spec : Prop :=
  ∀ n, P12098512129826732619.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P3756223236004143591

`A066096(n+1)+A035337(n)`
-/

namespace A075319.P3756223236004143591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n + 1) + A035337 n

end

end A075319.P3756223236004143591

namespace A075319

/-- `A066096(n+1)+A035337(n)` -/
def P3756223236004143591.Spec : Prop :=
  ∀ n, P3756223236004143591.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P1254939716717098686

`A035338(n)-A003622(n+1)`
-/

namespace A075319.P1254939716717098686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 n - A003622 (n + 1)

end

end A075319.P1254939716717098686

namespace A075319

/-- `A035338(n)-A003622(n+1)` -/
def P1254939716717098686.Spec : Prop :=
  ∀ n, P1254939716717098686.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P12052257227595867891

`A134859(n+1)+A003623(n+1)`
-/

namespace A075319.P12052257227595867891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1) + A003623 (n + 1)

end

end A075319.P12052257227595867891

namespace A075319

/-- `A134859(n+1)+A003623(n+1)` -/
def P12052257227595867891.Spec : Prop :=
  ∀ n, P12052257227595867891.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P13932146317484229581

`A134860(n+1)+A022342(n+1)`
-/

namespace A075319.P13932146317484229581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1) + A022342 (n + 1)

end

end A075319.P13932146317484229581

namespace A075319

/-- `A134860(n+1)+A022342(n+1)` -/
def P13932146317484229581.Spec : Prop :=
  ∀ n, P13932146317484229581.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P7040693259721649389

`A342089(n+1)+A057843(n+1)`
-/

namespace A075319.P7040693259721649389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342089 (n + 1) + A057843 (n + 1)

end

end A075319.P7040693259721649389

namespace A075319

/-- `A342089(n+1)+A057843(n+1)` -/
def P7040693259721649389.Spec : Prop :=
  ∀ n, P7040693259721649389.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P14801039809376969792

`A372302(n+1)-A001950(n+1)`
-/

namespace A075319.P14801039809376969792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372302 (n + 1) - A001950 (n + 1)

end

end A075319.P14801039809376969792

namespace A075319

/-- `A372302(n+1)-A001950(n+1)` -/
def P14801039809376969792.Spec : Prop :=
  ∀ n, P14801039809376969792.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P8748727961276933294

`record[Δ[2*A026275(n+1)]]`
-/

namespace A075319.P8748727961276933294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026275 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075319.P8748727961276933294

namespace A075319

/-- `record[Δ[2*A026275(n+1)]]` -/
def P8748727961276933294.Spec : Prop :=
  ∀ n, P8748727961276933294.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P7773098156745036377

`A283234(A000201(n+1))`
-/

namespace A075319.P7773098156745036377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (A000201 (n + 1)).toNat

end

end A075319.P7773098156745036377

namespace A075319

/-- `A283234(A000201(n+1))` -/
def P7773098156745036377.Spec : Prop :=
  ∀ n, P7773098156745036377.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P11193485021527542879

`A283234(A066096(n+1))`
-/

namespace A075319.P11193485021527542879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (A066096 (n + 1)).toNat

end

end A075319.P11193485021527542879

namespace A075319

/-- `A283234(A066096(n+1))` -/
def P11193485021527542879.Spec : Prop :=
  ∀ n, P11193485021527542879.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P4858949297075914304

`A075318(∑[A001468(n)])+1`
-/

namespace A075319.P4858949297075914304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A075319.P4858949297075914304

namespace A075319

/-- `A075318(∑[A001468(n)])+1` -/
def P4858949297075914304.Spec : Prop :=
  ∀ n, P4858949297075914304.a n = A075319 (n + 1)

end A075319

/-! ## A075319.P7585955465412278713

`A283234(A004956(n+1)-1)`
-/

namespace A075319.P7585955465412278713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (A004956 (n + 1) - 1).toNat

end

end A075319.P7585955465412278713

namespace A075319

/-- `A283234(A004956(n+1)-1)` -/
def P7585955465412278713.Spec : Prop :=
  ∀ n, P7585955465412278713.a n = A075319 (n + 1)

end A075319

/-!
# A075320: Pair the odd numbers such that the k-th pair is (r, r+2k) where r is the smallest odd number not included earlier: (1, 3), (5, 9), (7, 13), (11, 19), (15, 25), (17, 29), (21, 35), (23, 39), (27, 45), ... This is the sequence of the product of the members of pairs.

The programs for A075320, the canonical program `A075320.P2426209755735520172` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075320 has offset 1).

The definition of A075320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075320.P2426209755735520172

`A075317(n+1)*A075318(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075320

/-- `A075317(n+1)*A075318(n+1)` -/
def P2426209755735520172.Spec : Prop :=
  ∀ n, P2426209755735520172.a n = A075320 (n + 1)

theorem P2426209755735520172.correct : P2426209755735520172.Spec := by
  intro n
  simp only [A075320, Nat.add_sub_cancel]

end A075320

/-! ## A075320.P16550384323177428918

`(2*floor(ϕ*(n+1))+n)²-(n+1)²`
-/

namespace A075320.P16550384323177428918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)) ^ 2 - ((n + 1) ^ 2 : ℤ)

end

end A075320.P16550384323177428918

namespace A075320

/-- `(2*floor(ϕ*(n+1))+n)²-(n+1)²` -/
def P16550384323177428918.Spec : Prop :=
  ∀ n, P16550384323177428918.a n = A075320 (n + 1)

end A075320

/-! ## A075320.P6767023394433747737

`(2*floor(ϕ*(n+1))-1)*abs(1-2*A001950(n+1))`
-/

namespace A075320.P6767023394433747737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1) * |1 - 2 * A001950 (n + 1)|

end

end A075320.P6767023394433747737

namespace A075320

/-- `(2*floor(ϕ*(n+1))-1)*abs(1-2*A001950(n+1))` -/
def P6767023394433747737.Spec : Prop :=
  ∀ n, P6767023394433747737.a n = A075320 (n + 1)

end A075320

/-! ## A075320.P13439414916043023152

`(A075319(n+1)-A075317(n+1))*A075317(n+1)`
-/

namespace A075320.P13439414916043023152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075319 (n + 1) - A075317 (n + 1)) * A075317 (n + 1)

end

end A075320.P13439414916043023152

namespace A075320

/-- `(A075319(n+1)-A075317(n+1))*A075317(n+1)` -/
def P13439414916043023152.Spec : Prop :=
  ∀ n, P13439414916043023152.a n = A075320 (n + 1)

end A075320

/-! ## A075320.P12808712237216415535

`(A075319(n+1)-A075318(n+1))*A075318(n+1)`
-/

namespace A075320.P12808712237216415535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075319 (n + 1) - A075318 (n + 1)) * A075318 (n + 1)

end

end A075320.P12808712237216415535

namespace A075320

/-- `(A075319(n+1)-A075318(n+1))*A075318(n+1)` -/
def P12808712237216415535.Spec : Prop :=
  ∀ n, P12808712237216415535.a n = A075320 (n + 1)

end A075320

/-! ## A075320.P104245125171782886

`A137708(2*n+1)*A137709(2*n+1)`
-/

namespace A075320.P104245125171782886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (2 * n + 1) * A137709 (2 * n + 1)

end

end A075320.P104245125171782886

namespace A075320

/-- `A137708(2*n+1)*A137709(2*n+1)` -/
def P104245125171782886.Spec : Prop :=
  ∀ n, P104245125171782886.a n = A075320 (n + 1)

end A075320

/-! ## A075320.P15064015782035735208

`(2*floor(ϕ*(n+1))-1)*lt[n*A284620(n+2), n]`
-/

namespace A075320.P15064015782035735208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284620 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1) * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A075320.P15064015782035735208

namespace A075320

/-- `(2*floor(ϕ*(n+1))-1)*lt[n*A284620(n+2), n]` -/
def P15064015782035735208.Spec : Prop :=
  ∀ n, P15064015782035735208.a n = A075320 (n + 1)

end A075320

/-!
# A075321: Pair the odd primes so that the n-th pair is (p, p+2n) where p is the smallest prime not included earlier such that p and p+2n are primes and p+2n also does not occur earlier: (3, 5), (7, 11), (13, 19), (23, 31), (37, 47), (17, 29), (53, 67) ... This is the sequence of the first member of every pair.

The programs for A075321, there is no canonical definition to state claims against.
-/

/-! ## A075321.P10908093748656658901

`A333779(n+1)-(n+1)`
-/

namespace A075321.P10908093748656658901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333779 (n + 1) - (n + 1 : ℤ)

end

end A075321.P10908093748656658901

/-! ## A075321.P2653355166664019420

`A075322(n+1)-2*(n+1)`
-/

namespace A075321.P2653355166664019420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075322 (n + 1) - (2 * (n + 1) : ℤ)

end

end A075321.P2653355166664019420

/-! ## A075321.P3575748028132486168

`∑[n]+A075322(n+1)-A000096(n+1)`
-/

namespace A075321.P3575748028132486168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A075322 (n + 1) - A000096 (n + 1))

end

end A075321.P3575748028132486168

/-! ## A075321.P15266747402951956182

`A075323(Δ[n²])`
-/

namespace A075321.P15266747402951956182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075321.P15266747402951956182

/-! ## A075321.P12617651616233358552

`p?[A075323(2*n+1)]`
-/

namespace A075321.P12617651616233358552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075321.P12617651616233358552

/-! ## A075321.P11060809764692877437

`A075323(2*n+1)+A010051(2*(n+2))`
-/

namespace A075321.P11060809764692877437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A075321.P11060809764692877437

/-! ## A075321.P8128557676836981302

`A075323(2*n+1)*A215030(2*(n+1))`
-/

namespace A075321.P8128557676836981302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1) * A215030 (2 * (n + 1))

end

end A075321.P8128557676836981302

/-! ## A075321.P6155555188643031541

`A075323(A004277(n+1))-A004277(n+1)`
-/

namespace A075321.P6155555188643031541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004277 (n + 1)).toNat - A004277 (n + 1)

end

end A075321.P6155555188643031541

/-! ## A075321.P15787561851758676363

`filter[A075323(2*n+1), A008966(#)]`
-/

namespace A075321.P15787561851758676363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A075321.P15787561851758676363

/-! ## A075321.P2993987384537564416

`filter[A075323(2*n+1), A010051(#)]`
-/

namespace A075321.P2993987384537564416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A075321.P2993987384537564416

/-! ## A075321.P11899882925150058769

`filter[A075323(2*n+1), A066829(#)]`
-/

namespace A075321.P11899882925150058769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A075321.P11899882925150058769

/-! ## A075321.P15682198162646652624

`filter[A075323(2*n+1), A069513(#)]`
-/

namespace A075321.P15682198162646652624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A075321.P15682198162646652624

/-! ## A075321.P15233092703927795030

`filter[A075323(2*n+1), A011558(#)]`
-/

namespace A075321.P15233092703927795030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A075321.P15233092703927795030

/-! ## A075321.P11786244168230970253

`filter[A075323(2*n+1), A014306(#)]`
-/

namespace A075321.P11786244168230970253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A075321.P11786244168230970253

/-! ## A075321.P12620876554257779456

`filter[A075323(2*n+1), A035263(#)]`
-/

namespace A075321.P12620876554257779456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A075321.P12620876554257779456

/-! ## A075321.P7104113466649389870

`filter[A075323(2*n+1), A039982(#)]`
-/

namespace A075321.P7104113466649389870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A075321.P7104113466649389870

/-! ## A075321.P18002376610351776380

`filter[A075323(2*n+1), A049240(#)]`
-/

namespace A075321.P18002376610351776380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A075321.P18002376610351776380

/-! ## A075321.P9906042747911845545

`filter[A075323(2*n+1), A091862(#)]`
-/

namespace A075321.P9906042747911845545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A075321.P9906042747911845545

/-! ## A075321.P4238514197745905259

`filter[A075323(2*n+1), A093719(#)]`
-/

namespace A075321.P4238514197745905259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A075321.P4238514197745905259

/-! ## A075321.P8381904540944270929

`filter[A075323(2*n+1), A098725(#)]`
-/

namespace A075321.P8381904540944270929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A075321.P8381904540944270929

/-!
# A075322: Pair the odd primes so that the k-th pair is (p, p+2n) where p is the smallest prime not included earlier such that p and p+2n are primes and p+2n also does not occur earlier: (3, 5), (7, 11), (13, 19), (23, 31), (37, 47), (17, 29), ... This is the sequence of the second member of every pair.

The programs for A075322, there is no canonical definition to state claims against.
-/

/-! ## A075322.P16109086980665630391

`A075321(n+1)+2*(n+1)`
-/

namespace A075322.P16109086980665630391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075321 (n + 1) + (2 * (n + 1) : ℤ)

end

end A075322.P16109086980665630391

/-! ## A075322.P3556503361386910962

`A075323(2*(n+1))`
-/

namespace A075322.P3556503361386910962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (2 * (n + 1))

end

end A075322.P3556503361386910962

/-! ## A075322.P4821699158600622575

`A333779(n+1)+1+n`
-/

namespace A075322.P4821699158600622575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333779 (n + 1) + 1 + (n : ℤ)

end

end A075322.P4821699158600622575

/-! ## A075322.P3645502093408541442

`p?[A075323(n+2+n)]`
-/

namespace A075322.P3645502093408541442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075322.P3645502093408541442

/-! ## A075322.P12648198858921884081

`A075323(A004277(n+1))+A000007(n+1)`
-/

namespace A075322.P12648198858921884081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004277 (n + 1)).toNat + A000007 (n + 1)

end

end A075322.P12648198858921884081

/-! ## A075322.P12229636821675688005

`A075323(A004273(n+1))+A004277(n+1)`
-/

namespace A075322.P12229636821675688005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004273 (n + 1)).toNat + A004277 (n + 1)

end

end A075322.P12229636821675688005

/-! ## A075322.P424448162154687253

`A029579(A075323(n+n+2))`
-/

namespace A075322.P424448162154687253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A075323 (n + n + 2)).toNat

end

end A075322.P424448162154687253

/-!
# A075323: Pair the odd primes so that the n-th pair is (p, p+2n) where p is the smallest prime not included earlier such that p and p+2n are primes and p+2n also does not occur earlier: (3, 5), (7, 11), (13, 19), (23, 31), (37, 47), (17, 29), ... This lists the successive pairs in order.

The programs for A075323, there is no canonical definition to state claims against.
-/

/-! ## A075323.P18176610065881037666

`p?[(2*n+3)^∑{d}[n+1, (#%3)%2]]`
-/

namespace A075323.P18176610065881037666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) ^ (∑ d ∈ Nat.divisors (f2 n), d % 3 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075323.P18176610065881037666

/-! ## A075323.P10356405872822627790

`A147513(n+1)`
-/

namespace A075323.P10356405872822627790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147513 (n + 1)

end

end A075323.P10356405872822627790

/-! ## A075323.P14513202623569340188

`p?[record[∏{d}[A323529(n), #]]]`
-/

namespace A075323.P14513202623569340188
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323529 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n).natAbs, d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075323.P14513202623569340188

/-! ## A075323.P11120978854357080173

`A000040(∑{e}[(n-1)*a(n-1), #]+2)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A075323.P11120978854357080173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 2)

end

end A075323.P11120978854357080173

/-! ## A075323.P13168300983814127343

`A132779(A064704(n+1))`
-/

namespace A075323.P13168300983814127343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132779 (A064704 (n + 1)).toNat

end

end A075323.P13168300983814127343

/-!
# A075325: Pair the natural numbers such that the m-th pair is (r, s) where r, s and s-r are the smallest numbers which have not occurred earlier and also are not equal to the difference of any earlier pair: (1, 3), (4, 9), (6, 13), (8, 18), (11, 23), (14, 29), (16, 33), (19, 39), (21, 43), (24, 49), (26, 53), (28, 58), ... Sequence gives first term of each pair.

The programs for A075325, the canonical program `A075325.P8762803133825797995` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075325 has offset 1).

The definition of A075325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075325.P8428997936308358705

`5*(n+1)-A298468(n+1)`
-/

namespace A075325.P8428997936308358705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A298468 (n + 1)

end

end A075325.P8428997936308358705

namespace A075325

/-- `5*(n+1)-A298468(n+1)` -/
def P8428997936308358705.Spec : Prop :=
  ∀ n, P8428997936308358705.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P11504352814362499823

`A047219(n+1)+char[lt[0, val(n+1, 2)%2]]`
-/

namespace A075325.P11504352814362499823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A075325.P11504352814362499823

namespace A075325

/-- `A047219(n+1)+char[lt[0, val(n+1, 2)%2]]` -/
def P11504352814362499823.Spec : Prop :=
  ∀ n, P11504352814362499823.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P8762803133825797995

`A056832(n+1)+A047215(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A075325

/-- `A056832(n+1)+A047215(n)` -/
def P8762803133825797995.Spec : Prop :=
  ∀ n, P8762803133825797995.a n = A075325 (n + 1)

theorem P8762803133825797995.correct : P8762803133825797995.Spec := by
  intro n
  simp only [A075325, Nat.add_sub_cancel]

end A075325

/-! ## A075325.P18423884706060630089

`A096268(n)+A047219(n+1)`
-/

namespace A075325.P18423884706060630089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n + A047219 (n + 1)

end

end A075325.P18423884706060630089

namespace A075325

/-- `A096268(n)+A047219(n+1)` -/
def P18423884706060630089.Spec : Prop :=
  ∀ n, P18423884706060630089.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P10337603743432637849

`A075326(n+1)-A075328(n)`
-/

namespace A075325.P10337603743432637849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (n + 1) - A075328 n

end

end A075325.P10337603743432637849

namespace A075325

/-- `A075326(n+1)-A075328(n)` -/
def P10337603743432637849.Spec : Prop :=
  ∀ n, P10337603743432637849.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P6428400665354346848

`A075326(n+1)-∑[A010693(n)]`
-/

namespace A075325.P6428400665354346848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075325.P6428400665354346848

namespace A075325

/-- `A075326(n+1)-∑[A010693(n)]` -/
def P6428400665354346848.Spec : Prop :=
  ∀ n, P6428400665354346848.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P16137025517279786277

`A359832(n+1)+A047218(n+1)`
-/

namespace A075325.P16137025517279786277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359832 (n + 1) + A047218 (n + 1)

end

end A075325.P16137025517279786277

namespace A075325

/-- `A359832(n+1)+A047218(n+1)` -/
def P16137025517279786277.Spec : Prop :=
  ∀ n, P16137025517279786277.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P4097132569970006436

`A047211(n+1)-A035263(n+1)`
-/

namespace A075325.P4097132569970006436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (n + 1) - A035263 (n + 1)

end

end A075325.P4097132569970006436

namespace A075325

/-- `A047211(n+1)-A035263(n+1)` -/
def P4097132569970006436.Spec : Prop :=
  ∀ n, P4097132569970006436.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P9796640517463512340

`A047211(n+1)+A096268(n)-1`
-/

namespace A075325.P9796640517463512340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (n + 1) + (A096268 n - 1)

end

end A075325.P9796640517463512340

namespace A075325

/-- `A047211(n+1)+A096268(n)-1` -/
def P9796640517463512340.Spec : Prop :=
  ∀ n, P9796640517463512340.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P10494820853516541843

`A075327(n+1)-A075326(n+1)`
-/

namespace A075325.P10494820853516541843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075327 (n + 1) - A075326 (n + 1)

end

end A075325.P10494820853516541843

namespace A075325

/-- `A075327(n+1)-A075326(n+1)` -/
def P10494820853516541843.Spec : Prop :=
  ∀ n, P10494820853516541843.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P14713885029364071399

`A047209(n+1)-A328981(n+1)`
-/

namespace A075325.P14713885029364071399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) - A328981 (n + 1)

end

end A075325.P14713885029364071399

namespace A075325

/-- `A047209(n+1)-A328981(n+1)` -/
def P14713885029364071399.Spec : Prop :=
  ∀ n, P14713885029364071399.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P10576186203892781493

`A001651(n+1)+A096268(n)+n`
-/

namespace A075325.P10576186203892781493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + (A096268 n + (n : ℤ))

end

end A075325.P10576186203892781493

namespace A075325

/-- `A001651(n+1)+A096268(n)+n` -/
def P10576186203892781493.Spec : Prop :=
  ∀ n, P10576186203892781493.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P11180181028675987024

`A047219(n+1)+1-A035263(n+1)`
-/

namespace A075325.P11180181028675987024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (n + 1) + (1 - A035263 (n + 1))

end

end A075325.P11180181028675987024

namespace A075325

/-- `A047219(n+1)+1-A035263(n+1)` -/
def P11180181028675987024.Spec : Prop :=
  ∀ n, P11180181028675987024.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P17528780242817706111

`4*(n+1)+A110654(n+1)-A026491(n+1)`
-/

namespace A075325.P17528780242817706111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + (A110654 (n + 1) - A026491 (n + 1))

end

end A075325.P17528780242817706111

namespace A075325

/-- `4*(n+1)+A110654(n+1)-A026491(n+1)` -/
def P17528780242817706111.Spec : Prop :=
  ∀ n, P17528780242817706111.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P9180264981868559588

`A075326(n)-(A075328(n)-A249032(n))`
-/

namespace A075325.P9180264981868559588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n - (A075328 n - A249032 n)

end

end A075325.P9180264981868559588

namespace A075325

/-- `A075326(n)-(A075328(n)-A249032(n))` -/
def P9180264981868559588.Spec : Prop :=
  ∀ n, P9180264981868559588.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P2688070151030892285

`A075326(n+1)-A047215(n+1)`
-/

namespace A075325.P2688070151030892285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (n + 1) - A047215 (n + 1)

end

end A075325.P2688070151030892285

namespace A075325

/-- `A075326(n+1)-A047215(n+1)` -/
def P2688070151030892285.Spec : Prop :=
  ∀ n, P2688070151030892285.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P10813896952940720720

`A075326(n+1)-(A001651(n+2)+n)`
-/

namespace A075325.P10813896952940720720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (n + 1) - (A001651 (n + 2) + (n : ℤ))

end

end A075325.P10813896952940720720

namespace A075325

/-- `A075326(n+1)-(A001651(n+2)+n)` -/
def P10813896952940720720.Spec : Prop :=
  ∀ n, P10813896952940720720.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P9360254984908969542

`4*(n+1)+A065033(n+1)-A026491(n+1)`
-/

namespace A075325.P9360254984908969542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + (A065033 (n + 1) - A026491 (n + 1))

end

end A075325.P9360254984908969542

namespace A075325

/-- `4*(n+1)+A065033(n+1)-A026491(n+1)` -/
def P9360254984908969542.Spec : Prop :=
  ∀ n, P9360254984908969542.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P14158789575542472913

`3*n+2-(A285384(n+2)+A004526(n+1))`
-/

namespace A075325.P14158789575542472913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - (A285384 (n + 2) + A004526 (n + 1))

end

end A075325.P14158789575542472913

namespace A075325

/-- `3*n+2-(A285384(n+2)+A004526(n+1))` -/
def P14158789575542472913.Spec : Prop :=
  ∀ n, P14158789575542472913.a n = A075325 (n + 1)

end A075325

/-! ## A075325.P11801007192712516691

`A249031(Δ[n²])`
-/

namespace A075325.P11801007192712516691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075325.P11801007192712516691

namespace A075325

/-- `A249031(Δ[n²])` -/
def P11801007192712516691.Spec : Prop :=
  ∀ n, P11801007192712516691.a n = A075325 (n + 1)

end A075325

/-!
# A075326: Anti-Fibonacci numbers: start with a(0) = 0, and extend by the rule that the next term is the sum of the two smallest numbers that are not in the sequence nor were used to form an earlier sum.

The programs for A075326, the canonical program `A075326.P6416656601313117773` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075326 has offset 0).

The definition of A075326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075326.P6416656601313117773

`(10*n)%A297469(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075326

/-- `(10*n)%A297469(n)` -/
def P6416656601313117773.Spec : Prop :=
  ∀ n, P6416656601313117773.a n = A075326 n

theorem P6416656601313117773.correct : P6416656601313117773.Spec := by
  intro n
  simp only [A075326]

end A075326

/-! ## A075326.P5012915493505757832

`∑[A249032(n)]-A249032(n)`
-/

namespace A075326.P5012915493505757832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A249032 n

end

end A075326.P5012915493505757832

namespace A075326

/-- `∑[A249032(n)]-A249032(n)` -/
def P5012915493505757832.Spec : Prop :=
  ∀ n, P5012915493505757832.a n = A075326 n

end A075326

/-! ## A075326.P1919018771216636826

`A008458(n)+n-A026491(n)`
-/

namespace A075326.P1919018771216636826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A026491 n)

end

end A075326.P1919018771216636826

namespace A075326

/-- `A008458(n)+n-A026491(n)` -/
def P1919018771216636826.Spec : Prop :=
  ∀ n, P1919018771216636826.a n = A075326 n

end A075326

/-! ## A075326.P16158841419676931970

`A008458(n)-(A285383(n+1)+n+1)`
-/

namespace A075326.P16158841419676931970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A285383 (n + 1) + (n + 1 : ℤ))

end

end A075326.P16158841419676931970

namespace A075326

/-- `A008458(n)-(A285383(n+1)+n+1)` -/
def P16158841419676931970.Spec : Prop :=
  ∀ n, P16158841419676931970.a n = A075326 n

end A075326

/-! ## A075326.P6926455462574907184

`A008706(n)-A123346(and(1, A088705(n)))`
-/

namespace A075326.P6926455462574907184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A123346 (Int.land 1 (A088705 n)).toNat

end

end A075326.P6926455462574907184

namespace A075326

/-- `A008706(n)-A123346(and(1, A088705(n)))` -/
def P6926455462574907184.Spec : Prop :=
  ∀ n, P6926455462574907184.a n = A075326 n

end A075326

/-! ## A075326.P12294709328926165295

`A075325(n+1)+A075328(n)-A249032(n)`
-/

namespace A075326.P12294709328926165295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075325 (n + 1) + (A075328 n - A249032 n)

end

end A075326.P12294709328926165295

namespace A075326

/-- `A075325(n+1)+A075328(n)-A249032(n)` -/
def P12294709328926165295.Spec : Prop :=
  ∀ n, P12294709328926165295.a n = A075326 n

end A075326

/-! ## A075326.P2097673696199650050

`A075327(n+1)-(A249032(n)+A075325(n+1))`
-/

namespace A075326.P2097673696199650050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075327 (n + 1) - (A249032 n + A075325 (n + 1))

end

end A075326.P2097673696199650050

namespace A075326

/-- `A075327(n+1)-(A249032(n)+A075325(n+1))` -/
def P2097673696199650050.Spec : Prop :=
  ∀ n, P2097673696199650050.a n = A075326 n

end A075326

/-! ## A075326.P5412230137474508987

`A047215(n+1)+A075325(n+1)-A249032(n)`
-/

namespace A075326.P5412230137474508987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 (n + 1) + (A075325 (n + 1) - A249032 n)

end

end A075326.P5412230137474508987

namespace A075326

/-- `A047215(n+1)+A075325(n+1)-A249032(n)` -/
def P5412230137474508987.Spec : Prop :=
  ∀ n, P5412230137474508987.a n = A075326 n

end A075326

/-! ## A075326.P4835621303378306244

`A080427(3*n+1)-1`
-/

namespace A075326.P4835621303378306244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (3 * n + 1) - 1

end

end A075326.P4835621303378306244

namespace A075326

/-- `A080427(3*n+1)-1` -/
def P4835621303378306244.Spec : Prop :=
  ∀ n, P4835621303378306244.a n = A075326 n

end A075326

/-! ## A075326.P9295607402445834099

`record[Δ[-A080427(n+1)]]`
-/

namespace A075326.P9295607402445834099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A080427 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075326.P9295607402445834099

namespace A075326

/-- `record[Δ[-A080427(n+1)]]` -/
def P9295607402445834099.Spec : Prop :=
  ∀ n, P9295607402445834099.a n = A075326 n

end A075326

/-! ## A075326.P9196707321019170601

`record[A080427(n+1)-A080427(n+5)]`
-/

namespace A075326.P9196707321019170601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (n + 1) - A080427 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075326.P9196707321019170601

namespace A075326

/-- `record[A080427(n+1)-A080427(n+5)]` -/
def P9196707321019170601.Spec : Prop :=
  ∀ n, P9196707321019170601.a n = A075326 n

end A075326

/-! ## A075326.P982064280033922915

`A075325(A008706(n)-n)-A008706(n)`
-/

namespace A075326.P982064280033922915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075325 (A008706 n - (n : ℤ)).toNat - A008706 n

end

end A075326.P982064280033922915

namespace A075326

/-- `A075325(A008706(n)-n)-A008706(n)` -/
def P982064280033922915.Spec : Prop :=
  ∀ n, P982064280033922915.a n = A075326 n

end A075326

/-! ## A075326.P7960539273280422437

`comp[A249031(n+1)]%A160525(2*(n+1))`
-/

namespace A075326.P7960539273280422437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A160525 (2 * (n + 1)))

end

end A075326.P7960539273280422437

namespace A075326

/-- `comp[A249031(n+1)]%A160525(2*(n+1))` -/
def P7960539273280422437.Spec : Prop :=
  ∀ n, P7960539273280422437.a n = A075326 n

end A075326

/-! ## A075326.P12797786228921703103

`lt[char[A249031(n+1)], 1]`
-/

namespace A075326.P12797786228921703103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A075326.P12797786228921703103

namespace A075326

/-- `lt[char[A249031(n+1)], 1]` -/
def P12797786228921703103.Spec : Prop :=
  ∀ n, (P12797786228921703103.a n : ℤ) = A075326 n

end A075326

/-! ## A075326.P9667523068372077915

`A008587(n)-A091297(A008574(2*n))`
-/

namespace A075326.P9667523068372077915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - A091297 (A008574 (2 * n)).toNat

end

end A075326.P9667523068372077915

namespace A075326

/-- `A008587(n)-A091297(A008574(2*n))` -/
def P9667523068372077915.Spec : Prop :=
  ∀ n, P9667523068372077915.a n = A075326 n

end A075326

/-! ## A075326.P87195660101553673

`record[A315257(n)%A328190(n+1)]`
-/

namespace A075326.P87195660101553673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315257 n) (A328190 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075326.P87195660101553673

namespace A075326

/-- `record[A315257(n)%A328190(n+1)]` -/
def P87195660101553673.Spec : Prop :=
  ∀ n, P87195660101553673.a n = A075326 n

end A075326

/-! ## A075326.P6001757307379416789

`A315257(2*n)-A328190(2*n+1)`
-/

namespace A075326.P6001757307379416789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315257 (2 * n) - A328190 (2 * n + 1)

end

end A075326.P6001757307379416789

namespace A075326

/-- `A315257(2*n)-A328190(2*n+1)` -/
def P6001757307379416789.Spec : Prop :=
  ∀ n, P6001757307379416789.a n = A075326 n

end A075326

/-!
# A075327: Sum of n-th pair in A075325.

The programs for A075327, the canonical program `A075327.P15273917995873250238` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075327 has offset 1).

The definition of A075327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075327.P14376672072478589203

`A075325(n+1)+∑[A249032(n)]`
-/

namespace A075327.P14376672072478589203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075325 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075327.P14376672072478589203

namespace A075327

/-- `A075325(n+1)+∑[A249032(n)]` -/
def P14376672072478589203.Spec : Prop :=
  ∀ n, P14376672072478589203.a n = A075327 (n + 1)

end A075327

/-! ## A075327.P15273917995873250238

`A075326(n+1)+A075325(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A075327

/-- `A075326(n+1)+A075325(n+1)` -/
def P15273917995873250238.Spec : Prop :=
  ∀ n, P15273917995873250238.a n = A075327 (n + 1)

theorem P15273917995873250238.correct : P15273917995873250238.Spec := by
  intro n
  simp only [A075327, Nat.add_sub_cancel]

end A075327

/-! ## A075327.P15462600821314050234

`A075328(n)+2*A075325(n+1)`
-/

namespace A075327.P15462600821314050234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n + 2 * A075325 (n + 1)

end

end A075327.P15462600821314050234

namespace A075327

/-- `A075328(n)+2*A075325(n+1)` -/
def P15462600821314050234.Spec : Prop :=
  ∀ n, P15462600821314050234.a n = A075327 (n + 1)

end A075327

/-! ## A075327.P13750998819308932622

`2*A075326(n+1)-∑[A010693(n)]`
-/

namespace A075327.P13750998819308932622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075326 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075327.P13750998819308932622

namespace A075327

/-- `2*A075326(n+1)-∑[A010693(n)]` -/
def P13750998819308932622.Spec : Prop :=
  ∀ n, P13750998819308932622.a n = A075327 (n + 1)

end A075327

/-! ## A075327.P6913400808478175058

`A075326(n+1)+A075326(n+1)-A075328(n)`
-/

namespace A075327.P6913400808478175058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (n + 1) + (A075326 (n + 1) - A075328 n)

end

end A075327.P6913400808478175058

namespace A075327

/-- `A075326(n+1)+A075326(n+1)-A075328(n)` -/
def P6913400808478175058.Spec : Prop :=
  ∀ n, P6913400808478175058.a n = A075327 (n + 1)

end A075327

/-! ## A075327.P14278503859891225342

`A075325(n+1)+A075325(n+1)+A047215(n+1)`
-/

namespace A075327.P14278503859891225342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075325 (n + 1) + (A075325 (n + 1) + A047215 (n + 1))

end

end A075327.P14278503859891225342

namespace A075327

/-- `A075325(n+1)+A075325(n+1)+A047215(n+1)` -/
def P14278503859891225342.Spec : Prop :=
  ∀ n, P14278503859891225342.a n = A075327 (n + 1)

end A075327

/-! ## A075327.P4224725250317950678

`A075326(n+1)+A075326(n+1)-A047215(n+1)`
-/

namespace A075327.P4224725250317950678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (n + 1) + (A075326 (n + 1) - A047215 (n + 1))

end

end A075327.P4224725250317950678

namespace A075327

/-- `A075326(n+1)+A075326(n+1)-A047215(n+1)` -/
def P4224725250317950678.Spec : Prop :=
  ∀ n, P4224725250317950678.a n = A075327 (n + 1)

end A075327

/-! ## A075327.P13388378974936375218

`A249031(2*n+1)+A075326(n+1)`
-/

namespace A075327.P13388378974936375218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 (2 * n + 1) + A075326 (n + 1)

end

end A075327.P13388378974936375218

namespace A075327

/-- `A249031(2*n+1)+A075326(n+1)` -/
def P13388378974936375218.Spec : Prop :=
  ∀ n, P13388378974936375218.a n = A075327 (n + 1)

end A075327

/-! ## A075327.P16406397896625190177

`A001651(∑[A249032(n)])`
-/

namespace A075327.P16406397896625190177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075327.P16406397896625190177

namespace A075327

/-- `A001651(∑[A249032(n)])` -/
def P16406397896625190177.Spec : Prop :=
  ∀ n, P16406397896625190177.a n = A075327 (n + 1)

end A075327

/-! ## A075327.P11828038069399172839

`A001651(A075326(n+1))`
-/

namespace A075327.P11828038069399172839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A075326 (n + 1)).toNat

end

end A075327.P11828038069399172839

namespace A075327

/-- `A001651(A075326(n+1))` -/
def P11828038069399172839.Spec : Prop :=
  ∀ n, P11828038069399172839.a n = A075327 (n + 1)

end A075327

/-! ## A075327.P17500405968231638936

`A093393(A309231(n+1))`
-/

namespace A075327.P17500405968231638936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093393 (A309231 (n + 1)).toNat

end

end A075327.P17500405968231638936

namespace A075327

/-- `A093393(A309231(n+1))` -/
def P17500405968231638936.Spec : Prop :=
  ∀ n, P17500405968231638936.a n = A075327 (n + 1)

end A075327

/-! ## A075327.P1445925747986630825

`A004524(3*A075326(n+1))`
-/

namespace A075327.P1445925747986630825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (3 * A075326 (n + 1)).toNat

end

end A075327.P1445925747986630825

namespace A075327

/-- `A004524(3*A075326(n+1))` -/
def P1445925747986630825.Spec : Prop :=
  ∀ n, P1445925747986630825.a n = A075327 (n + 1)

end A075327

/-!
# A075328: Difference between n-th pair in A075325.

The programs for A075328, the canonical program `A075328.P2416714229913307570` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075328 has offset 0).

The definition of A075328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075328.P2416714229913307570

`∑[n%2+2]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A075328

/-- `∑[n%2+2]` -/
def P2416714229913307570.Spec : Prop :=
  ∀ n, (P2416714229913307570.a n : ℤ) = A075328 n

theorem P2416714229913307570.correct : P2416714229913307570.Spec := by
  intro n
  simp only [A075328]

end A075328

/-! ## A075328.P9612809309582935563

`∑[4-gcd(2, n)]`
-/

namespace A075328.P9612809309582935563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P9612809309582935563

namespace A075328

/-- `∑[4-gcd(2, n)]` -/
def P9612809309582935563.Spec : Prop :=
  ∀ n, P9612809309582935563.a n = A075328 n

end A075328

/-! ## A075328.P14857636135958343211

`∑[and(1, n)+2]`
-/

namespace A075328.P14857636135958343211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P14857636135958343211

namespace A075328

/-- `∑[and(1, n)+2]` -/
def P14857636135958343211.Spec : Prop :=
  ∀ n, (P14857636135958343211.a n : ℤ) = A075328 n

theorem P14857636135958343211.correct : P14857636135958343211.Spec := by
  intro n
  simp only [A075328, Nat.add_sub_cancel, A075328.P14857636135958343211.f1, A075328.P14857636135958343211.a, A075328.P2416714229913307570.f1, A075328.P2416714229913307570.a, SequenceMachineLib.memo_apply]
  try simp

end A075328

/-! ## A075328.P13183597680645606097

`∑[or(2, n)%4]`
-/

namespace A075328.P13183597680645606097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P13183597680645606097

namespace A075328

/-- `∑[or(2, n)%4]` -/
def P13183597680645606097.Spec : Prop :=
  ∀ n, (P13183597680645606097.a n : ℤ) = A075328 n

end A075328

/-! ## A075328.P13953713213944047284

`∑[or(2, and(1, n))]`
-/

namespace A075328.P13953713213944047284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P13953713213944047284

namespace A075328

/-- `∑[or(2, and(1, n))]` -/
def P13953713213944047284.Spec : Prop :=
  ∀ n, (P13953713213944047284.a n : ℤ) = A075328 n

end A075328

/-! ## A075328.P6668071748439365933

`∑[xor(2, and(1, n))]`
-/

namespace A075328.P6668071748439365933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P6668071748439365933

namespace A075328

/-- `∑[xor(2, and(1, n))]` -/
def P6668071748439365933.Spec : Prop :=
  ∀ n, (P6668071748439365933.a n : ℤ) = A075328 n

end A075328

/-! ## A075328.P8281399325551596296

`∑[2--n%2]`
-/

namespace A075328.P8281399325551596296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (-(n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P8281399325551596296

namespace A075328

/-- `∑[2--n%2]` -/
def P8281399325551596296.Spec : Prop :=
  ∀ n, P8281399325551596296.a n = A075328 n

end A075328

/-! ## A075328.P7038598835424346386

`∑[and(3, n²-2)]`
-/

namespace A075328.P7038598835424346386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n ^ 2 : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P7038598835424346386

namespace A075328

/-- `∑[and(3, n²-2)]` -/
def P7038598835424346386.Spec : Prop :=
  ∀ n, P7038598835424346386.a n = A075328 n

end A075328

/-! ## A075328.P2523476018532129230

`∑[or(n, -2)+4]`
-/

namespace A075328.P2523476018532129230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P2523476018532129230

namespace A075328

/-- `∑[or(n, -2)+4]` -/
def P2523476018532129230.Spec : Prop :=
  ∀ n, P2523476018532129230.a n = A075328 n

end A075328

/-! ## A075328.P10682448552989217516

`∑[xor(2, n²%2)]`
-/

namespace A075328.P10682448552989217516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P10682448552989217516

namespace A075328

/-- `∑[xor(2, n²%2)]` -/
def P10682448552989217516.Spec : Prop :=
  ∀ n, (P10682448552989217516.a n : ℤ) = A075328 n

end A075328

/-! ## A075328.P11058033829115624959

`∑[3-char[2*n]]`
-/

namespace A075328.P11058033829115624959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P11058033829115624959

namespace A075328

/-- `∑[3-char[2*n]]` -/
def P11058033829115624959.Spec : Prop :=
  ∀ n, P11058033829115624959.a n = A075328 n

end A075328

/-! ## A075328.P17979246471178443475

`a(n-2)+5` with `a(0)=2, a(1)=5`
-/

namespace A075328.P17979246471178443475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + 5

end

end A075328.P17979246471178443475

namespace A075328

/-- `a(n-2)+5` -/
def P17979246471178443475.Spec : Prop :=
  ∀ n, (P17979246471178443475.a n : ℤ) = A075328 n

end A075328

/-! ## A075328.P15494705234246593195

`floor(cosh(log(5*(n+1))))`
-/

namespace A075328.P15494705234246593195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (5 * (n + 1) : ℝ))⌋

end

end A075328.P15494705234246593195

namespace A075328

/-- `floor(cosh(log(5*(n+1))))` -/
def P15494705234246593195.Spec : Prop :=
  ∀ n, P15494705234246593195.a n = A075328 n

end A075328

/-! ## A075328.P1366789056313069956

`round(sinh(log(5*(n+1))))`
-/

namespace A075328.P1366789056313069956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (5 * (n + 1) : ℝ)))

end

end A075328.P1366789056313069956

namespace A075328

/-- `round(sinh(log(5*(n+1))))` -/
def P1366789056313069956.Spec : Prop :=
  ∀ n, P1366789056313069956.a n = A075328 n

end A075328

/-! ## A075328.P2799259107319281469

`floor(∑[5-a(n-1)])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A075328.P2799259107319281469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075328.P2799259107319281469

namespace A075328

/-- `floor(∑[5-a(n-1)])` -/
def P2799259107319281469.Spec : Prop :=
  ∀ n, P2799259107319281469.a n = A075328 n

end A075328

/-! ## A075328.P923635799014848538

`∑[n+3]-∑[or(1, n)]`
-/

namespace A075328.P923635799014848538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A075328.P923635799014848538

namespace A075328

/-- `∑[n+3]-∑[or(1, n)]` -/
def P923635799014848538.Spec : Prop :=
  ∀ n, P923635799014848538.a n = A075328 n

end A075328

/-! ## A075328.P9362884493771643087

`∑[3-(n-1)%2]-2`
-/

namespace A075328.P9362884493771643087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A075328.P9362884493771643087

namespace A075328

/-- `∑[3-(n-1)%2]-2` -/
def P9362884493771643087.Spec : Prop :=
  ∀ n, P9362884493771643087.a n = A075328 n

end A075328

/-! ## A075328.P13357781963854675897

`comp[3*n]+or(1, n+1)`
-/

namespace A075328.P13357781963854675897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + Nat.lor 1 (n + 1)

end

end A075328.P13357781963854675897

namespace A075328

/-- `comp[3*n]+or(1, n+1)` -/
def P13357781963854675897.Spec : Prop :=
  ∀ n, (P13357781963854675897.a n : ℤ) = A075328 n

end A075328

/-! ## A075328.P4461860090933036297

`∑[5-a(n-1)]-1` with `a(0)=3, a(1)=3`
-/

namespace A075328.P4461860090933036297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A075328.P4461860090933036297

namespace A075328

/-- `∑[5-a(n-1)]-1` -/
def P4461860090933036297.Spec : Prop :=
  ∀ n, P4461860090933036297.a n = A075328 n

end A075328

/-!
# A075329: Pair up the natural numbers as (r, s) (say) so that all natural numbers are obtained only once as r, s, s+r or s-r: (1, 3), (5, 11), (7, 15), (9, 19), (12, 25), (14, 31), (18, 38), ... Sequence gives first member of each pair.

The programs for A075329, there is no canonical definition to state claims against.
-/

/-! ## A075329.P6362317508242517931

`A075330(n+1)-A075332(n+1)`
-/

namespace A075329.P6362317508242517931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075330 (n + 1) - A075332 (n + 1)

end

end A075329.P6362317508242517931

/-! ## A075329.P13913721567876763778

`A075331(n+1)-A075330(n+1)`
-/

namespace A075329.P13913721567876763778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075331 (n + 1) - A075330 (n + 1)

end

end A075329.P13913721567876763778

/-! ## A075329.P701543468004076724

`(A075331(n+1)-A075332(n+1))/2`
-/

namespace A075329.P701543468004076724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075331 (n + 1) - A075332 (n + 1) : ℚ) / 2

end

end A075329.P701543468004076724

/-! ## A075329.P14809639259570252191

`A075330(C(n+1, n))%A075332(n+1)`
-/

namespace A075329.P14809639259570252191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075330 (Nat.choose (n + 1) n)) (A075332 (n + 1))

end

end A075329.P14809639259570252191

/-! ## A075329.P8911320045794503712

`A075330(-xor(n, -1))%A075332(n+1)`
-/

namespace A075329.P8911320045794503712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075330 (-Int.xor (n : ℤ) (-1)).toNat) (A075332 (n + 1))

end

end A075329.P8911320045794503712

/-! ## A075329.P2311166730504852982

`A075330(and(1, n)!+n)%A075332(n+1)`
-/

namespace A075329.P2311166730504852982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075330 (Nat.factorial (Nat.land 1 n) + n)) (A075332 (n + 1))

end

end A075329.P2311166730504852982

/-! ## A075329.P16632984271287979142

`A075330(n^floor(atan(n))+1)%A075332(n+1)`
-/

namespace A075329.P16632984271287979142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075330 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ) + 1)).toNat) (A075332 (n + 1))

end

end A075329.P16632984271287979142

/-! ## A075329.P16778787856910353195

`A075330((n+1)^ceil(sin(n)²))%A075332(n+1)`
-/

namespace A075329.P16778787856910353195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat) (A075332 (n + 1))

end

end A075329.P16778787856910353195

/-! ## A075329.P17480744097439180230

`A075330(floor(acot(n)²)+n+1)%A075332(n+1)`
-/

namespace A075329.P17480744097439180230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075330 (⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + (n + 1 : ℤ)).toNat) (A075332 (n + 1))

end

end A075329.P17480744097439180230

/-! ## A075329.P9649279845576249987

`A014682(A075331(n+1)-A075332(n+1))`
-/

namespace A075329.P9649279845576249987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A075331 (n + 1) - A075332 (n + 1)).toNat

end

end A075329.P9649279845576249987

/-! ## A075329.P14532201105297021224

`A075330(A000027(n+1))%A075332(n+1)`
-/

namespace A075329.P14532201105297021224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075330 (A000027 (n + 1)).toNat) (A075332 (n + 1))

end

end A075329.P14532201105297021224

/-! ## A075329.P4909195985668620016

`A028310(A075330(n+1)%A075332(n+1))`
-/

namespace A075329.P4909195985668620016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A075330 (n + 1)) (A075332 (n + 1))).toNat

end

end A075329.P4909195985668620016

/-! ## A075329.P5747623847202192031

`A001281(A075331(n+1)-A075332(n+1))`
-/

namespace A075329.P5747623847202192031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A075331 (n + 1) - A075332 (n + 1)).toNat

end

end A075329.P5747623847202192031

/-! ## A075329.P12637680655042873013

`A004525(A075331(n+1)-A075332(n+1))`
-/

namespace A075329.P12637680655042873013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A075331 (n + 1) - A075332 (n + 1)).toNat

end

end A075329.P12637680655042873013

/-! ## A075329.P6961739104636385129

`A004526(A075331(n+1)-A075332(n+1))`
-/

namespace A075329.P6961739104636385129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075331 (n + 1) - A075332 (n + 1)).toNat

end

end A075329.P6961739104636385129

/-! ## A075329.P10185433344041046476

`A026741(A075331(n+1)-A075332(n+1))`
-/

namespace A075329.P10185433344041046476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A075331 (n + 1) - A075332 (n + 1)).toNat

end

end A075329.P10185433344041046476

/-! ## A075329.P8758913583134509724

`A032742(A075331(n+1)-A075332(n+1))`
-/

namespace A075329.P8758913583134509724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A075331 (n + 1) - A075332 (n + 1)).toNat

end

end A075329.P8758913583134509724

/-!
# A075330: Second members of pairs in A075329.

The programs for A075330, there is no canonical definition to state claims against.
-/

/-! ## A075330.P4783741645696207412

`A075332(n+1)+A075329(n+1)`
-/

namespace A075330.P4783741645696207412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075332 (n + 1) + A075329 (n + 1)

end

end A075330.P4783741645696207412

/-! ## A075330.P15293847192709395440

`A075331(n+1)-A075329(n+1)`
-/

namespace A075330.P15293847192709395440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075331 (n + 1) - A075329 (n + 1)

end

end A075330.P15293847192709395440

/-! ## A075330.P10751564927049441363

`(A075332(n+1)+A075331(n+1))/2`
-/

namespace A075330.P10751564927049441363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075332 (n + 1) + A075331 (n + 1) : ℚ) / 2

end

end A075330.P10751564927049441363

/-! ## A075330.P312661432307647311

`A014682(A075332(n+1)+A075331(n+1))`
-/

namespace A075330.P312661432307647311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A075332 (n + 1) + A075331 (n + 1)).toNat

end

end A075330.P312661432307647311

/-! ## A075330.P11664235734421041631

`A001281(A075332(n+1)+A075331(n+1))`
-/

namespace A075330.P11664235734421041631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A075332 (n + 1) + A075331 (n + 1)).toNat

end

end A075330.P11664235734421041631

/-! ## A075330.P6000253019329672984

`A004525(A075332(n+1)+A075331(n+1))`
-/

namespace A075330.P6000253019329672984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A075332 (n + 1) + A075331 (n + 1)).toNat

end

end A075330.P6000253019329672984

/-! ## A075330.P15245900527719148090

`A004526(A075332(n+1)+A075331(n+1))`
-/

namespace A075330.P15245900527719148090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075332 (n + 1) + A075331 (n + 1)).toNat

end

end A075330.P15245900527719148090

/-! ## A075330.P7842652300152152621

`A026741(A075332(n+1)+A075331(n+1))`
-/

namespace A075330.P7842652300152152621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A075332 (n + 1) + A075331 (n + 1)).toNat

end

end A075330.P7842652300152152621

/-! ## A075330.P16671411307066813415

`A032742(A075332(n+1)+A075331(n+1))`
-/

namespace A075330.P16671411307066813415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A075332 (n + 1) + A075331 (n + 1)).toNat

end

end A075330.P16671411307066813415

/-!
# A075331: Sums of pairs in A075329.

The programs for A075331, there is no canonical definition to state claims against.
-/

/-! ## A075331.P5998624715343317265

`A075330(n+1)+A075329(n+1)`
-/

namespace A075331.P5998624715343317265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075330 (n + 1) + A075329 (n + 1)

end

end A075331.P5998624715343317265

/-! ## A075331.P2811926226574261251

`A075332(n+1)+2*A075329(n+1)`
-/

namespace A075331.P2811926226574261251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075332 (n + 1) + 2 * A075329 (n + 1)

end

end A075331.P2811926226574261251

/-! ## A075331.P5654871470549782327

`2*A075330(n+1)-A075332(n+1)`
-/

namespace A075331.P5654871470549782327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075330 (n + 1) - A075332 (n + 1)

end

end A075331.P5654871470549782327

/-! ## A075331.P1150434782896943921

`A075330(A000027(n+1))+A075330(n+1)-A075332(n+1)`
-/

namespace A075331.P1150434782896943921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075330 (A000027 (n + 1)).toNat + (A075330 (n + 1) - A075332 (n + 1))

end

end A075331.P1150434782896943921

/-! ## A075331.P17531178315200493690

`A075332(n+1)+A004277(A075329(n+1))`
-/

namespace A075331.P17531178315200493690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075332 (n + 1) + A004277 (A075329 (n + 1)).toNat

end

end A075331.P17531178315200493690

/-! ## A075331.P15024666093562173861

`A004277(A075330(n+1))-A075332(n+1)`
-/

namespace A075331.P15024666093562173861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A075330 (n + 1)).toNat - A075332 (n + 1)

end

end A075331.P15024666093562173861

/-! ## A075331.P9435282435315836331

`A028310(A075330(n+1)+A075330(n+1)-A075332(n+1))`
-/

namespace A075331.P9435282435315836331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A075330 (n + 1) + (A075330 (n + 1) - A075332 (n + 1))).toNat

end

end A075331.P9435282435315836331

/-!
# A075332: Differences of pairs in A075329.

The programs for A075332, there is no canonical definition to state claims against.
-/

/-! ## A075332.P14613774792867634347

`A075330(n+1)-A075329(n+1)`
-/

namespace A075332.P14613774792867634347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075330 (n + 1) - A075329 (n + 1)

end

end A075332.P14613774792867634347

/-! ## A075332.P142962160641537813

`2*A075330(n+1)-A075331(n+1)`
-/

namespace A075332.P142962160641537813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075330 (n + 1) - A075331 (n + 1)

end

end A075332.P142962160641537813

/-! ## A075332.P6556357043024091535

`A075331(n+1)-2*A075329(n+1)`
-/

namespace A075332.P6556357043024091535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075331 (n + 1) - 2 * A075329 (n + 1)

end

end A075332.P6556357043024091535

/-! ## A075332.P12136592599608093217

`A075331(n+1)-A004277(A075329(n+1))`
-/

namespace A075332.P12136592599608093217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075331 (n + 1) - A004277 (A075329 (n + 1)).toNat

end

end A075332.P12136592599608093217

/-! ## A075332.P16572396752891004003

`A004277(A075330(n+1))-A075331(n+1)`
-/

namespace A075332.P16572396752891004003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A075330 (n + 1)).toNat - A075331 (n + 1)

end

end A075332.P16572396752891004003

/-!
# A075333: Pair up the natural numbers as (r, s) (say) so that all natural numbers are obtained only once as r, s, s+r, s-r or r*s: (2, 3), (4, 11), (8, 17), (10, 22), (13, 27), (16, 34), ... Sequence gives first member of each pair.

The programs for A075333, there is no canonical definition to state claims against.
-/

/-! ## A075333.P17117981585453327858

`A075334(n+1)-A075335(n+1)`
-/

namespace A075333.P17117981585453327858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075334 (n + 1) - A075335 (n + 1)

end

end A075333.P17117981585453327858

/-! ## A075333.P14324238155704882156

`A075336(n+1)-A075334(n+1)`
-/

namespace A075333.P14324238155704882156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075336 (n + 1) - A075334 (n + 1)

end

end A075333.P14324238155704882156

/-! ## A075333.P1528122242133199388

`A075337(n+1)/A075334(n+1)`
-/

namespace A075333.P1528122242133199388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075337 (n + 1) : ℚ) / (A075334 (n + 1) : ℚ)

end

end A075333.P1528122242133199388

/-! ## A075333.P8331662959746726609

`(A075336(n+1)-A075335(n+1))/2`
-/

namespace A075333.P8331662959746726609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075336 (n + 1) - A075335 (n + 1) : ℚ) / 2

end

end A075333.P8331662959746726609

/-! ## A075333.P5289512851748365875

`A014682(A075336(n+1)-A075335(n+1))`
-/

namespace A075333.P5289512851748365875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A075336 (n + 1) - A075335 (n + 1)).toNat

end

end A075333.P5289512851748365875

/-! ## A075333.P5813903736853416834

`A075336(A000027(n+1))%A075334(n+1)`
-/

namespace A075333.P5813903736853416834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075336 (A000027 (n + 1)).toNat) (A075334 (n + 1))

end

end A075333.P5813903736853416834

/-! ## A075333.P874085813865388766

`(A075337(n+1)+A075336(n+1))%A075334(n+1)`
-/

namespace A075333.P874085813865388766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075337 (n + 1) + A075336 (n + 1)) (A075334 (n + 1))

end

end A075333.P874085813865388766

/-! ## A075333.P10587572581628847938

`A004525(A075336(n+1)-A075335(n+1))`
-/

namespace A075333.P10587572581628847938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A075336 (n + 1) - A075335 (n + 1)).toNat

end

end A075333.P10587572581628847938

/-! ## A075333.P12940580233521459996

`A025480(A075336(n+1)-A075335(n+1))`
-/

namespace A075333.P12940580233521459996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A075336 (n + 1) - A075335 (n + 1)).toNat

end

end A075333.P12940580233521459996

/-! ## A075333.P5200741152611454573

`A110654(A075336(n+1)-A075335(n+1))`
-/

namespace A075333.P5200741152611454573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A075336 (n + 1) - A075335 (n + 1)).toNat

end

end A075333.P5200741152611454573

/-! ## A075333.P6631562017004702430

`A004526(A075336(n+1)-A075335(n+1))`
-/

namespace A075333.P6631562017004702430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075336 (n + 1) - A075335 (n + 1)).toNat

end

end A075333.P6631562017004702430

/-!
# A075334: Second members of pairs in A075333.

The programs for A075334, there is no canonical definition to state claims against.
-/

/-! ## A075334.P6277700701580435246

`A075335(n+1)+A075333(n+1)`
-/

namespace A075334.P6277700701580435246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075335 (n + 1) + A075333 (n + 1)

end

end A075334.P6277700701580435246

/-! ## A075334.P1015309114756282548

`A075336(n+1)-A075333(n+1)`
-/

namespace A075334.P1015309114756282548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075336 (n + 1) - A075333 (n + 1)

end

end A075334.P1015309114756282548

/-! ## A075334.P4266541439286124755

`A075337(n+1)/A075333(n+1)`
-/

namespace A075334.P4266541439286124755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075337 (n + 1) : ℚ) / (A075333 (n + 1) : ℚ)

end

end A075334.P4266541439286124755

/-! ## A075334.P14618782226495201771

`(A075336(n+1)+A075335(n+1))/2`
-/

namespace A075334.P14618782226495201771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075336 (n + 1) + A075335 (n + 1) : ℚ) / 2

end

end A075334.P14618782226495201771

/-! ## A075334.P16278931795756574703

`A014682(A075336(n+1)+A075335(n+1))`
-/

namespace A075334.P16278931795756574703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A075336 (n + 1) + A075335 (n + 1)).toNat

end

end A075334.P16278931795756574703

/-! ## A075334.P8596081721930679611

`A004525(A075336(n+1)+A075335(n+1))`
-/

namespace A075334.P8596081721930679611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A075336 (n + 1) + A075335 (n + 1)).toNat

end

end A075334.P8596081721930679611

/-! ## A075334.P14559691552816209391

`A004526(A075336(n+1)+A075335(n+1))`
-/

namespace A075334.P14559691552816209391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075336 (n + 1) + A075335 (n + 1)).toNat

end

end A075334.P14559691552816209391

/-! ## A075334.P11239842424664901274

`A025480(A075336(n+1)+A075335(n+1))`
-/

namespace A075334.P11239842424664901274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A075336 (n + 1) + A075335 (n + 1)).toNat

end

end A075334.P11239842424664901274

/-! ## A075334.P5710132076508146868

`A110654(A075336(n+1)+A075335(n+1))`
-/

namespace A075334.P5710132076508146868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A075336 (n + 1) + A075335 (n + 1)).toNat

end

end A075334.P5710132076508146868

/-!
# A075335: Differences of members of pairs in A075333.

The programs for A075335, there is no canonical definition to state claims against.
-/

/-! ## A075335.P16510026205409031326

`A075334(n+1)-A075333(n+1)`
-/

namespace A075335.P16510026205409031326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075334 (n + 1) - A075333 (n + 1)

end

end A075335.P16510026205409031326

/-! ## A075335.P17317322898013266789

`2*A075334(n+1)-A075336(n+1)`
-/

namespace A075335.P17317322898013266789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075334 (n + 1) - A075336 (n + 1)

end

end A075335.P17317322898013266789

/-! ## A075335.P10563566537582005090

`A075336(n+1)-2*A075333(n+1)`
-/

namespace A075335.P10563566537582005090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075336 (n + 1) - 2 * A075333 (n + 1)

end

end A075335.P10563566537582005090

/-! ## A075335.P16842847968297933284

`A075337(n+1)%(A075334(n+1)+1)-1`
-/

namespace A075335.P16842847968297933284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075337 (n + 1)) (A075334 (n + 1) + 1) - 1

end

end A075335.P16842847968297933284

/-! ## A075335.P2078075635900273849

`A075337(n+1)/A075333(n+1)-A075333(n+1)`
-/

namespace A075335.P2078075635900273849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075337 (n + 1) : ℚ) / (A075333 (n + 1) : ℚ) - (A075333 (n + 1) : ℚ)

end

end A075335.P2078075635900273849

/-! ## A075335.P18218422171954275050

`A075334(A000027(n+1))+A075334(n+1)-A075336(n+1)`
-/

namespace A075335.P18218422171954275050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075334 (A000027 (n + 1)).toNat + (A075334 (n + 1) - A075336 (n + 1))

end

end A075335.P18218422171954275050

/-! ## A075335.P15702069898028112647

`A075336(n+1)-(A075333(A000027(n+1))+A075333(n+1))`
-/

namespace A075335.P15702069898028112647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075336 (n + 1) - (A075333 (A000027 (n + 1)).toNat + A075333 (n + 1))

end

end A075335.P15702069898028112647

/-! ## A075335.P6875575421913620616

`A075336(n+1)-A005843(A075333(n+1))`
-/

namespace A075335.P6875575421913620616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075336 (n + 1) - A005843 (A075333 (n + 1)).toNat

end

end A075335.P6875575421913620616

/-! ## A075335.P14277706349577834622

`A004277(A075334(n+1))-A075336(n+1)`
-/

namespace A075335.P14277706349577834622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A075334 (n + 1)).toNat - A075336 (n + 1)

end

end A075335.P14277706349577834622

/-! ## A075335.P12656170347460228505

`A005843(A075334(n+1))%A075336(A000027(n+1))`
-/

namespace A075335.P12656170347460228505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A075334 (n + 1)).toNat) (A075336 (A000027 (n + 1)).toNat)

end

end A075335.P12656170347460228505

/-!
# A075336: Sums of members of pairs in A075333.

The programs for A075336, there is no canonical definition to state claims against.
-/

/-! ## A075336.P4416815688218539919

`A075334(n+1)+A075333(n+1)`
-/

namespace A075336.P4416815688218539919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075334 (n + 1) + A075333 (n + 1)

end

end A075336.P4416815688218539919

/-! ## A075336.P2930909159362102703

`A075335(n+1)+2*A075333(n+1)`
-/

namespace A075336.P2930909159362102703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075335 (n + 1) + 2 * A075333 (n + 1)

end

end A075336.P2930909159362102703

/-! ## A075336.P1946800909416320310

`2*A075334(n+1)-A075335(n+1)`
-/

namespace A075336.P1946800909416320310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075334 (n + 1) - A075335 (n + 1)

end

end A075336.P1946800909416320310

/-! ## A075336.P10194144136703131479

`A075333(n+1)+A075337(n+1)/A075333(n+1)`
-/

namespace A075336.P10194144136703131479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075333 (n + 1) : ℚ) + (A075337 (n + 1) : ℚ) / (A075333 (n + 1) : ℚ)

end

end A075336.P10194144136703131479

/-! ## A075336.P4318557737054031429

`A075334(n+1)+A075337(n+1)/A075334(n+1)`
-/

namespace A075336.P4318557737054031429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075334 (n + 1) : ℚ) + (A075337 (n + 1) : ℚ) / (A075334 (n + 1) : ℚ)

end

end A075336.P4318557737054031429

/-! ## A075336.P10768256582844879919

`A075335(n+1)+A004277(A075333(n+1))`
-/

namespace A075336.P10768256582844879919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075335 (n + 1) + A004277 (A075333 (n + 1)).toNat

end

end A075336.P10768256582844879919

/-! ## A075336.P13839333317860349424

`A004277(A075334(n+1))-A075335(n+1)`
-/

namespace A075336.P13839333317860349424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A075334 (n + 1)).toNat - A075335 (n + 1)

end

end A075336.P13839333317860349424

/-!
# A075337: Products of members of pairs in A075333.

The programs for A075337, there is no canonical definition to state claims against.
-/

/-! ## A075337.P1958271079238545685

`A075333(n+1)*A075334(n+1)`
-/

namespace A075337.P1958271079238545685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075333 (n + 1) * A075334 (n + 1)

end

end A075337.P1958271079238545685

/-! ## A075337.P9684759692783948462

`(A075335(n+1)+A075333(n+1))*A075333(n+1)`
-/

namespace A075337.P9684759692783948462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075335 (n + 1) + A075333 (n + 1)) * A075333 (n + 1)

end

end A075337.P9684759692783948462

/-! ## A075337.P3562405576947820116

`(A075334(n+1)-A075335(n+1))*A075334(n+1)`
-/

namespace A075337.P3562405576947820116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075334 (n + 1) - A075335 (n + 1)) * A075334 (n + 1)

end

end A075337.P3562405576947820116

/-! ## A075337.P8463699765620236898

`(A075336(n+1)-A075333(n+1))*A075333(n+1)`
-/

namespace A075337.P8463699765620236898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075336 (n + 1) - A075333 (n + 1)) * A075333 (n + 1)

end

end A075337.P8463699765620236898

/-! ## A075337.P4082864912574241874

`(A075336(n+1)-A075334(n+1))*A075334(n+1)`
-/

namespace A075337.P4082864912574241874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075336 (n + 1) - A075334 (n + 1)) * A075334 (n + 1)

end

end A075337.P4082864912574241874

/-!
# A075338: a(1) = 1, a(2n) = smallest prime obtained by adding a composite number to a(2n-1). a(2n+1) = the smallest composite number obtained by adding a prime to a(2n).

The programs for A075338, there is no canonical definition to state claims against.
-/

/-! ## A075338.P11573297613047671305

`∑[A127752(A127985(n))]`
-/

namespace A075338.P11573297613047671305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127752 (A127985 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075338.P11573297613047671305

/-! ## A075338.P9358406755194522201

`∑[A213399(A110288(n))%10]`
-/

namespace A075338.P9358406755194522201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213399 (A110288 n).toNat) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075338.P9358406755194522201

/-! ## A075338.P2445332689721391661

`eq[A115525(n), A321351(n+1)]`
-/

namespace A075338.P2445332689721391661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321351 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075338.P2445332689721391661

/-! ## A075338.P7645704394767295106

`∑[dr(A326415(A064961(n+1)))]`
-/

namespace A075338.P7645704394767295106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A326415 (A064961 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075338.P7645704394767295106

/-! ## A075338.P1609482569265048883

`eq[A321351(n+1)², A146094(n)]`
-/

namespace A075338.P1609482569265048883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321351 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075338.P1609482569265048883

/-!
# A075340: a(1) = 1; a(2n) is the smallest prime == 1 mod (a(2n-1)) and a(2n+1) is the smallest composite number == 1 (mod a(2n)).

The programs for A075340, there is no canonical definition to state claims against.
-/

/-! ## A075340.P10492637942703816673

`A114739(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A075340.P10492637942703816673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A114739 (a (n - 1)).toNat

end

end A075340.P10492637942703816673

/-! ## A075340.P8730644867398076303

`A179312(A025555(n+1))+1+n`
-/

namespace A075340.P8730644867398076303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A025555 (n + 1)).toNat + 1 + (n : ℤ)

end

end A075340.P8730644867398076303

/-! ## A075340.P1362236079816126786

`lt[A151800(A350908(n+4)), A329205(n+1)]`
-/

namespace A075340.P1362236079816126786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A350908 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075340.P1362236079816126786

/-!
# A075341: a(1) = 1, a(2n) is the smallest composite number == 1 mod (a(2n-1)) and a(2n+1) is the smallest prime == 1 (mod a(2n)).

The programs for A075341, there is no canonical definition to state claims against.
-/

/-! ## A075341.P2500332019318423078

`A114739(a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A075341.P2500332019318423078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A114739 (a (n - 1)).toNat

end

end A075341.P2500332019318423078

/-! ## A075341.P13083424435017708635

`∑[gcd(A067795(n+1), A067828(2*n+1))]`
-/

namespace A075341.P13083424435017708635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067795 (n + 1)) (A067828 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075341.P13083424435017708635

/-!
# A075342: a(1) = 1, a(n+1) is the smallest number such that there are n primes between a(n) and a(n+1) exclusive.

The programs for A075342, there is no canonical definition to state claims against.
-/

/-! ## A075342.P4275099117999294840

`A055670(∑[n]+1)-char[1]`
-/

namespace A075342.P4275099117999294840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A075342.P4275099117999294840

/-! ## A075342.P5024814389723873866

`A006005(∑[n]+1)+floor(atan(n))`
-/

namespace A075342.P5024814389723873866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ⌊Real.arctan (n : ℝ)⌋

end

end A075342.P5024814389723873866

/-! ## A075342.P352513712685262625

`A000040(∑[n]+1)+ceil(atan(n))-1`
-/

namespace A075342.P352513712685262625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (⌈Real.arctan (n : ℝ)⌉ - 1)

end

end A075342.P352513712685262625

/-! ## A075342.P10716654274137185283

`A121443(A078721(n))`
-/

namespace A075342.P10716654274137185283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (A078721 n).toNat

end

end A075342.P10716654274137185283

/-! ## A075342.P5076469178577359792

`A121443(A000040(∑[n]+1))`
-/

namespace A075342.P5076469178577359792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A075342.P5076469178577359792

/-!
# A075343: a(1) = 1, a(n+1) is the smallest number such that there are n composite numbers between a(n) and a(n+1) exclusive.

The programs for A075343, there is no canonical definition to state claims against.
-/

/-! ## A075343.P354655865993948856

`a(n-1)+A075344(n)+n+1` with `a(0)=1`
-/

namespace A075343.P354655865993948856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A075344 n + (n + 1 : ℤ))

end

end A075343.P354655865993948856

/-! ## A075343.P12208391415859701976

`∑[A075344(floor(acot(n)+n))+n+1]-2`
-/

namespace A075343.P12208391415859701976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075344 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A075343.P12208391415859701976

/-! ## A075343.P5114332385908514305

`∑[A075344(A028310(n))+n+1]-2`
-/

namespace A075343.P5114332385908514305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075344 (A028310 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A075343.P5114332385908514305

/-! ## A075343.P8552007395426803040

`∑[A075344(A000007(n)+n)+n+1]-2`
-/

namespace A075343.P8552007395426803040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075344 (A000007 n + (n : ℤ)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A075343.P8552007395426803040

/-! ## A075343.P10756012210157712820

`∑[A075344(A004277(n)-n)+n+1]-2`
-/

namespace A075343.P10756012210157712820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075344 (A004277 n - (n : ℤ)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A075343.P10756012210157712820

/-! ## A075343.P799006418688739060

`∑[A075344(n+1)+n+1]-A075344(n+1)`
-/

namespace A075343.P799006418688739060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075344 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A075344 (n + 1)

end

end A075343.P799006418688739060

/-!
# A075344: Number of primes between consecutive terms of A075343 (excluding endpoints).

The programs for A075344, there is no canonical definition to state claims against.
-/

/-! ## A075344.P17993334915347476025

`Δ[A075343(n+1)]-(n+2)`
-/

namespace A075344.P17993334915347476025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A075344.P17993334915347476025

/-! ## A075344.P10095248339700970358

`Δ[A075343(n+1)-A000096(n)]`
-/

namespace A075344.P10095248339700970358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075343 (n + 1) - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075344.P10095248339700970358

/-! ## A075344.P6117592186754592900

`Δ[A075343(n+1)-A167487(n)]`
-/

namespace A075344.P6117592186754592900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075343 (n + 1) - A167487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075344.P6117592186754592900

/-! ## A075344.P2881982625928849919

`Δ[A075343(n+1)-A167499(n)]`
-/

namespace A075344.P2881982625928849919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075343 (n + 1) - A167499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075344.P2881982625928849919

/-! ## A075344.P15117105999396086974

`A001478(n+2)+Δ[A075343(n+1)]`
-/

namespace A075344.P15117105999396086974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 2) + (f1 (n + 1) - f1 n)

end

end A075344.P15117105999396086974

/-! ## A075344.P16003199460860478210

`Δ[A075343(n+1)%A000217(n+1)]`
-/

namespace A075344.P16003199460860478210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075343 (n + 1)) (A000217 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075344.P16003199460860478210

/-!
# A075345: Group the natural numbers such that the n-th group contains n terms and the group sum is the smallest possible prime: (2), (1, 4), (3, 5, 9), (6, 7, 8, 10), (11, 12, 13, 14, 17), (15, 16, 18, 19, 20, 21), ... Sequence gives group sums.

The programs for A075345, there is no canonical definition to state claims against.
-/

/-! ## A075345.P10056506282690876703

`A094751(∑[∑[A061555(n)]])`
-/

namespace A075345.P10056506282690876703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061555 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094751 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075345.P10056506282690876703

/-! ## A075345.P8072231967467311648

`A100546(A397983(n))`
-/

namespace A075345.P8072231967467311648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100546 (A397983 n).toNat

end

end A075345.P8072231967467311648

/-! ## A075345.P13972092972611875532

`A327783(A002049(n+1))`
-/

namespace A075345.P13972092972611875532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327783 (A002049 (n + 1)).toNat

end

end A075345.P13972092972611875532

/-!
# A075346: Initial terms of groups in A075345.

The programs for A075346, there is no canonical definition to state claims against.
-/

/-! ## A075346.P8522766522191709898

`A075348(∑[n]+1)`
-/

namespace A075346.P8522766522191709898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A075346.P8522766522191709898

/-! ## A075346.P1540226453072298894

`or(char[1], A075348(A000124(n)))`
-/

namespace A075346.P1540226453072298894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A075348 (A000124 n).toNat)

end

end A075346.P1540226453072298894

/-! ## A075346.P1702447655793294000

`A075348(A000124(n))%A051475(n)`
-/

namespace A075346.P1702447655793294000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075348 (A000124 n).toNat) (A051475 n)

end

end A075346.P1702447655793294000

/-! ## A075346.P4618502915471464936

`gcd(A000038(n), A075348(A000124(n)))`
-/

namespace A075346.P4618502915471464936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A075348 (A000124 n).toNat)

end

end A075346.P4618502915471464936

/-! ## A075346.P3754406267646796208

`∑{d}[A075348(A000124(n)), A000010(#)]`
-/

namespace A075346.P3754406267646796208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A075346.P3754406267646796208

/-! ## A075346.P9610715514506888021

`∏{d}[A075348(A000124(n)), A014963(#)]`
-/

namespace A075346.P9610715514506888021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A075346.P9610715514506888021

/-! ## A075346.P11944435284224080843

`A075348(A000124(n))+A000007(n+1)`
-/

namespace A075346.P11944435284224080843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (A000124 n).toNat + A000007 (n + 1)

end

end A075346.P11944435284224080843

/-! ## A075346.P18245131894430220206

`A075348(A000124(n))+A008683(9*(n+1))`
-/

namespace A075346.P18245131894430220206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (A000124 n).toNat + A008683 (9 * (n + 1))

end

end A075346.P18245131894430220206

/-! ## A075346.P2825454627598254277

`A075348(A000124(n))/A008683(n+1)²!`
-/

namespace A075346.P2825454627598254277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075348 (A000124 n).toNat : ℚ) / (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℚ)

end

end A075346.P2825454627598254277

/-! ## A075346.P8267629466249563496

`A014963(A008458(n))*A075348(A000124(n))`
-/

namespace A075346.P8267629466249563496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A075348 (A000124 n).toNat

end

end A075346.P8267629466249563496

/-! ## A075346.P11492417935563470131

`A018896(A051700(n))*A075348(A000124(n))`
-/

namespace A075346.P11492417935563470131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018896 (A051700 n).toNat * A075348 (A000124 n).toNat

end

end A075346.P11492417935563470131

/-! ## A075346.P14749112724828643484

`A014963(A000217(n+6))*A075348(A000124(n))`
-/

namespace A075346.P14749112724828643484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A075348 (A000124 n).toNat

end

end A075346.P14749112724828643484

/-!
# A075347: Final terms of groups in A075345.

The programs for A075347, there is no canonical definition to state claims against.
-/

/-! ## A075347.P9612265822852824749

`A075348(∑[n+1])`
-/

namespace A075347.P9612265822852824749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075347.P9612265822852824749

/-! ## A075347.P10267350181354081574

`and(-1, A075348(A000217(n+1)))`
-/

namespace A075347.P10267350181354081574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A075348 (A000217 (n + 1)).toNat)

end

end A075347.P10267350181354081574

/-! ## A075347.P17053006729263366892

`or(char[2], A075348(A001972(2*n)))`
-/

namespace A075347.P17053006729263366892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A075348 (A001972 (2 * n)).toNat)

end

end A075347.P17053006729263366892

/-! ## A075347.P15463925223505105217

`A075348(A134519(2*n+1))%(n+2)²`
-/

namespace A075347.P15463925223505105217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075348 (A134519 (2 * n + 1)).toNat) ((n + 2) ^ 2 : ℤ)

end

end A075347.P15463925223505105217

/-! ## A075347.P17771767349700658505

`A075348(A001972(2*n))%A060615(n)`
-/

namespace A075347.P17771767349700658505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075348 (A001972 (2 * n)).toNat) (A060615 n)

end

end A075347.P17771767349700658505

/-! ## A075347.P1539746041894316003

`∑{d}[A075348(A001972(2*n)), A000010(#)]`
-/

namespace A075347.P1539746041894316003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (A001972 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A075347.P1539746041894316003

/-! ## A075347.P17905603207632133812

`∏{d}[A075348(A001972(2*n)), A014963(#)]`
-/

namespace A075347.P17905603207632133812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (A001972 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A075347.P17905603207632133812

/-! ## A075347.P4626312455897101576

`A075348(A001972(2*n))+A000007(n+1)`
-/

namespace A075347.P4626312455897101576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (A001972 (2 * n)).toNat + A000007 (n + 1)

end

end A075347.P4626312455897101576

/-! ## A075347.P4286183189510053949

`A075348(A001972(2*n))+A000038(n+1)`
-/

namespace A075347.P4286183189510053949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (A001972 (2 * n)).toNat + A000038 (n + 1)

end

end A075347.P4286183189510053949

/-! ## A075347.P11711907240705021614

`A057427(n+1)*A075348(A001972(2*n))`
-/

namespace A075347.P11711907240705021614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A075348 (A001972 (2 * n)).toNat

end

end A075347.P11711907240705021614

/-! ## A075347.P14359489100432200332

`A057979(2*n)*A075348(A001972(2*n))`
-/

namespace A075347.P14359489100432200332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A075348 (A001972 (2 * n)).toNat

end

end A075347.P14359489100432200332

/-! ## A075347.P11534993329475639328

`A007318(C(2, n))*A075348(A001972(2*n))`
-/

namespace A075347.P11534993329475639328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A075348 (A001972 (2 * n)).toNat

end

end A075347.P11534993329475639328

/-! ## A075347.P14161500562221957368

`A001511(2*n+1)*A075348(A134519(2*n+1))`
-/

namespace A075347.P14161500562221957368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A075348 (A134519 (2 * n + 1)).toNat

end

end A075347.P14161500562221957368

/-!
# A075349: a(1) = 1; first differences follow the pattern 1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,..., i.e., the next n differences are n.

The programs for A075349, the canonical program `A075349.P6934775496947557423` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075349 has offset 1).

The definition of A075349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075349.P14972046593713027705

`∑[round(sqrt(2*n))]+1`
-/

namespace A075349.P14972046593713027705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A075349.P14972046593713027705

namespace A075349

/-- `∑[round(sqrt(2*n))]+1` -/
def P14972046593713027705.Spec : Prop :=
  ∀ n, P14972046593713027705.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P12846403791825620377

`round(a(n-1)+sqrt(2*n))` with `a(0)=1`
-/

namespace A075349.P12846403791825620377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (2 * n : ℝ))

end

end A075349.P12846403791825620377

namespace A075349

/-- `round(a(n-1)+sqrt(2*n))` -/
def P12846403791825620377.Spec : Prop :=
  ∀ n, P12846403791825620377.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P14763459826206708301

`∑[∑[char[a(n-1)+n]]]` with `a(0)=0, a(1)=2`
-/

namespace A075349.P14763459826206708301
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f3 =>
  f3 (n - 1) + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P14763459826206708301

namespace A075349

/-- `∑[∑[char[a(n-1)+n]]]` -/
def P14763459826206708301.Spec : Prop :=
  ∀ n, (P14763459826206708301.a n : ℤ) = A075349 (n + 1)

end A075349

/-! ## A075349.P6934775496947557423

`∑[a(n-a(n-1))+1]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A075349

/-- `∑[a(n-a(n-1))+1]` -/
def P6934775496947557423.Spec : Prop :=
  ∀ n, (P6934775496947557423.a n : ℤ) = A075349 (n + 1)

theorem P6934775496947557423.correct : P6934775496947557423.Spec := by
  intro n
  simp only [A075349, Nat.add_sub_cancel]

end A075349

/-! ## A075349.P16193655407160804286

`∑[comp[∑[n+1]]%(n+1)+1]`
-/

namespace A075349.P16193655407160804286
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P16193655407160804286

namespace A075349

/-- `∑[comp[∑[n+1]]%(n+1)+1]` -/
def P16193655407160804286.Spec : Prop :=
  ∀ n, (P16193655407160804286.a n : ℤ) = A075349 (n + 1)

end A075349

/-! ## A075349.P15783141059761618904

`∑[∑[A326822(n)]]`
-/

namespace A075349.P15783141059761618904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P15783141059761618904

namespace A075349

/-- `∑[∑[A326822(n)]]` -/
def P15783141059761618904.Spec : Prop :=
  ∀ n, P15783141059761618904.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P5664640725339918237

`∑[round(sqrt(A004277(n)))]`
-/

namespace A075349.P5664640725339918237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004277 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P5664640725339918237

namespace A075349

/-- `∑[round(sqrt(A004277(n)))]` -/
def P5664640725339918237.Spec : Prop :=
  ∀ n, P5664640725339918237.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P10300272829680154055

`∑[round(sqrt(A004273(n)+1))]`
-/

namespace A075349.P10300272829680154055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004273 n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P10300272829680154055

namespace A075349

/-- `∑[round(sqrt(A004273(n)+1))]` -/
def P10300272829680154055.Spec : Prop :=
  ∀ n, P10300272829680154055.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P6390657379887392712

`∑[round(sqrt(A004280(n+1)))]`
-/

namespace A075349.P6390657379887392712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004280 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P6390657379887392712

namespace A075349

/-- `∑[round(sqrt(A004280(n+1)))]` -/
def P6390657379887392712.Spec : Prop :=
  ∀ n, P6390657379887392712.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P10008822932030816084

`∑[A028310(round(sqrt(2*n)))]`
-/

namespace A075349.P10008822932030816084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P10008822932030816084

namespace A075349

/-- `∑[A028310(round(sqrt(2*n)))]` -/
def P10008822932030816084.Spec : Prop :=
  ∀ n, P10008822932030816084.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P6123048060879732164

`∑[round(sqrt(A028310(n)+n))]`
-/

namespace A075349.P6123048060879732164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028310 n + (n : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P6123048060879732164

namespace A075349

/-- `∑[round(sqrt(A028310(n)+n))]` -/
def P6123048060879732164.Spec : Prop :=
  ∀ n, P6123048060879732164.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P6645525043817477169

`abs(1-∑[A003056(abs(1-n))+1])`
-/

namespace A075349.P6645525043817477169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 |1 - (n : ℤ)|.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A075349.P6645525043817477169

namespace A075349

/-- `abs(1-∑[A003056(abs(1-n))+1])` -/
def P6645525043817477169.Spec : Prop :=
  ∀ n, P6645525043817477169.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P3326687131045998294

`∑[∑[char[A000217(n+1)+1]]+1]`
-/

namespace A075349.P3326687131045998294
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P3326687131045998294

namespace A075349

/-- `∑[∑[char[A000217(n+1)+1]]+1]` -/
def P3326687131045998294.Spec : Prop :=
  ∀ n, (P3326687131045998294.a n : ℤ) = A075349 (n + 1)

end A075349

/-! ## A075349.P7742688314370379700

`∑[∑[char[A004736(n+1)+1+n]]+1]`
-/

namespace A075349.P7742688314370379700
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 1 + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P7742688314370379700

namespace A075349

/-- `∑[∑[char[A004736(n+1)+1+n]]+1]` -/
def P7742688314370379700.Spec : Prop :=
  ∀ n, (P7742688314370379700.a n : ℤ) = A075349 (n + 1)

end A075349

/-! ## A075349.P12028326615583742209

`∑[A002024(A028310(n))]`
-/

namespace A075349.P12028326615583742209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P12028326615583742209

namespace A075349

/-- `∑[A002024(A028310(n))]` -/
def P12028326615583742209.Spec : Prop :=
  ∀ n, P12028326615583742209.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P3867234357080174991

`∑[A002024(A000007(n)+n)]`
-/

namespace A075349.P3867234357080174991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P3867234357080174991

namespace A075349

/-- `∑[A002024(A000007(n)+n)]` -/
def P3867234357080174991.Spec : Prop :=
  ∀ n, P3867234357080174991.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P16765222299404644008

`∑[A002024(A010054(n+1)+n)]`
-/

namespace A075349.P16765222299404644008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A010054 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P16765222299404644008

namespace A075349

/-- `∑[A002024(A010054(n+1)+n)]` -/
def P16765222299404644008.Spec : Prop :=
  ∀ n, P16765222299404644008.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P15268882884287721493

`∑[A002024(A254667(n+1)-1)]`
-/

namespace A075349.P15268882884287721493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A254667 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P15268882884287721493

namespace A075349

/-- `∑[A002024(A254667(n+1)-1)]` -/
def P15268882884287721493.Spec : Prop :=
  ∀ n, P15268882884287721493.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P1444109089611073881

`∑[A002024(A019590(n+2)+n)]`
-/

namespace A075349.P1444109089611073881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A019590 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P1444109089611073881

namespace A075349

/-- `∑[A002024(A019590(n+2)+n)]` -/
def P1444109089611073881.Spec : Prop :=
  ∀ n, P1444109089611073881.a n = A075349 (n + 1)

end A075349

/-! ## A075349.P4017624758134253382

`∑[A002024(A243148(n)+n)]`
-/

namespace A075349.P4017624758134253382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A243148 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075349.P4017624758134253382

namespace A075349

/-- `∑[A002024(A243148(n)+n)]` -/
def P4017624758134253382.Spec : Prop :=
  ∀ n, P4017624758134253382.a n = A075349 (n + 1)

end A075349

/-!
# A075350: 1-1, 2*3-(2+3), 4*5*6-(4+5+6), 7*8*9*10-(7+8+9+10), ...

The programs for A075350, there is no canonical definition to state claims against.
-/

/-! ## A075350.P14040093652347727401

`A057003(n+1)-Δ[A002817(n)]`
-/

namespace A075350.P14040093652347727401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1) - (f1 (n + 1) - f1 n)

end

end A075350.P14040093652347727401

/-! ## A075350.P5204493524886056566

`A057003(n+1)-A006003(n+1)`
-/

namespace A075350.P5204493524886056566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1) - A006003 (n + 1)

end

end A075350.P5204493524886056566

/-! ## A075350.P8300516495981523621

`A057003(n+1)-∑[∑[A008486(n)]]`
-/

namespace A075350.P8300516495981523621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075350.P8300516495981523621

/-! ## A075350.P4267926689521720169

`Δ[A227364(A000217(n))-A002817(n)]`
-/

namespace A075350.P4267926689521720169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227364 (A000217 n).toNat - A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075350.P4267926689521720169

/-! ## A075350.P2123299015043906558

`A057003(n+1)-Δ[A000217(A000217(n))]`
-/

namespace A075350.P2123299015043906558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1) - (f1 (n + 1) - f1 n)

end

end A075350.P2123299015043906558

/-!
# A075351: a(n) = floor(2*binomial(n+1,2)!/(binomial(n,2)!*n*(n^2+1))).

The programs for A075351, the canonical program `A075351.P7860479907033374252` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075351 has offset 1).

The definition of A075351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075351.P7860479907033374252

`floor(2*((n+2)*(n+1)/2)!/(((n+1)*n/2)!*(n+1)*((n+1)²+1)))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A075351

/-- `floor(2*((n+2)*(n+1)/2)!/(((n+1)*n/2)!*(n+1)*((n+1)²+1)))` -/
def P7860479907033374252.Spec : Prop :=
  ∀ n, P7860479907033374252.a n = A075351 (n + 1)

theorem P7860479907033374252.correct : P7860479907033374252.Spec := by
  intro n
  simp only [A075351, Nat.add_sub_cancel]

end A075351

/-! ## A075351.P12813697347212423074

`floor(A057003(n+1)/Δ[A002817(n)])`
-/

namespace A075351.P12813697347212423074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057003 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A075351.P12813697347212423074

namespace A075351

/-- `floor(A057003(n+1)/Δ[A002817(n)])` -/
def P12813697347212423074.Spec : Prop :=
  ∀ n, P12813697347212423074.a n = A075351 (n + 1)

end A075351

/-! ## A075351.P4381163708141400154

`floor(A057003(n+1)/A006003(n+1))`
-/

namespace A075351.P4381163708141400154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057003 (n + 1) : ℚ) / (A006003 (n + 1) : ℚ)⌋

end

end A075351.P4381163708141400154

namespace A075351

/-- `floor(A057003(n+1)/A006003(n+1))` -/
def P4381163708141400154.Spec : Prop :=
  ∀ n, P4381163708141400154.a n = A075351 (n + 1)

end A075351

/-!
# A075352: Group the natural numbers so that the product of the terms of the n-th group is just >= n!: (1), (2), (3, 4), (5, 6), (7, 8, 9), (10, 11, 12), (13, 14, 15, 16), (17, 18, 19, 20), (21, 22, 23, 24, 25), (26, 27, 28, 29, 30), ... Sequence gives product of numbers in each group.

The programs for A075352, there is no canonical definition to state claims against.
-/

/-! ## A075352.P14918494535657329886

`ratio[A000142(∑[A062108(n)])]`
-/

namespace A075352.P14918494535657329886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A075352.P14918494535657329886

/-! ## A075352.P1030575748662495562

`ratio[A000142(record[A338796(n+1)])]`
-/

namespace A075352.P1030575748662495562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338796 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A075352.P1030575748662495562

/-!
# A075353: Initial term of n-th group in A075352.

The programs for A075353, there is no canonical definition to state claims against.
-/

/-! ## A075353.P15098771247256245619

`a(n-1)+A075355(n)` with `a(0)=1`
-/

namespace A075353.P15098771247256245619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A075355 n

end

end A075353.P15098771247256245619

/-! ## A075353.P4358938790996020822

`∑[A075355(floor(acot(n)+n))]`
-/

namespace A075353.P4358938790996020822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075355 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075353.P4358938790996020822

/-! ## A075353.P7325640359435525720

`∑[A075355(round(acot(n)+n))]`
-/

namespace A075353.P7325640359435525720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075355 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075353.P7325640359435525720

/-! ## A075353.P5453775224338054736

`∑[A075355(abs(1-n)+1)]`
-/

namespace A075353.P5453775224338054736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075355 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075353.P5453775224338054736

/-! ## A075353.P7069458184786495025

`A075354(A028310(n))%∑[n+1]+1`
-/

namespace A075353.P7069458184786495025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075354 (A028310 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1

end

end A075353.P7069458184786495025

/-! ## A075353.P1096088466765612145

`∑[A075355(n+1)]+1-A075355(n+1)`
-/

namespace A075353.P1096088466765612145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A075355 (n + 1))

end

end A075353.P1096088466765612145

/-! ## A075353.P15396692190400900644

`A075354(A028310(n))+2-A014963(4*n+2)`
-/

namespace A075353.P15396692190400900644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075354 (A028310 n).toNat + 2 - A014963 (4 * n + 2)

end

end A075353.P15396692190400900644

/-!
# A075354: Final term of n-th group in A075352.

The programs for A075354, there is no canonical definition to state claims against.
-/

/-! ## A075354.P14403391087886439492

`a(n-1)+A075355(n+1)` with `a(0)=1`
-/

namespace A075354.P14403391087886439492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A075355 (n + 1)

end

end A075354.P14403391087886439492

/-! ## A075354.P10185762796755098666

`A075353(n+2)-1`
-/

namespace A075354.P10185762796755098666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075353 (n + 2) - 1

end

end A075354.P10185762796755098666

/-! ## A075354.P7568280585461147646

`∑[A075355(n+1)]`
-/

namespace A075354.P7568280585461147646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075354.P7568280585461147646

/-! ## A075354.P16396248737849259225

`∑[abs(Δ[A075353(n+1)])]`
-/

namespace A075354.P16396248737849259225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075353 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075354.P16396248737849259225

/-! ## A075354.P4598052400404999578

`∑[A000027(Δ[A075353(n+1)])]`
-/

namespace A075354.P4598052400404999578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075353 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075354.P4598052400404999578

/-! ## A075354.P17794982397684801970

`∑[A014963(6*(n+1))*Δ[A075353(n+1)]]`
-/

namespace A075354.P17794982397684801970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075353 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075354.P17794982397684801970

/-! ## A075354.P14073058401272602840

`A023443(A075353(n+2))`
-/

namespace A075354.P14073058401272602840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075353 (n + 2)).toNat

end

end A075354.P14073058401272602840

/-!
# A075355: Number of terms in n-th group in A075352.

The programs for A075355, there is no canonical definition to state claims against.
-/

/-! ## A075355.P10916334012699510835

`A075354(n+1)-A075353(n+1)+1`
-/

namespace A075355.P10916334012699510835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075354 (n + 1) - A075353 (n + 1) + 1

end

end A075355.P10916334012699510835

/-! ## A075355.P9212304416333113171

`ceil(A075356(n+1)/A075354(n+1))`
-/

namespace A075355.P9212304416333113171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075356 (n + 1) : ℚ) / (A075354 (n + 1) : ℚ)⌉

end

end A075355.P9212304416333113171

/-! ## A075355.P6563589698615173333

`Δ[A075353(n+1)]`
-/

namespace A075355.P6563589698615173333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075355.P6563589698615173333

/-! ## A075355.P9734186870936375159

`A075353(n+2)-A075353(n+1)`
-/

namespace A075355.P9734186870936375159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075353 (n + 2) - A075353 (n + 1)

end

end A075355.P9734186870936375159

/-! ## A075355.P12866189158888428704

`A000196(A163563(n+1)+A022780(n+1))`
-/

namespace A075355.P12866189158888428704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A163563 (n + 1) + A022780 (n + 1)).toNat

end

end A075355.P12866189158888428704

/-! ## A075355.P7944222168209901234

`floor(sqrt(A225634(n)+A022780(n+1)))`
-/

namespace A075355.P7944222168209901234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A225634 n + A022780 (n + 1))

end

end A075355.P7944222168209901234

/-! ## A075355.P7832763128877419143

`A000196(A225634(n)+A022780(n+1))`
-/

namespace A075355.P7832763128877419143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A225634 n + A022780 (n + 1)).toNat

end

end A075355.P7832763128877419143

/-! ## A075355.P15868725285700916925

`floor(∑[A320056(n+1)/A008706(n)])`
-/

namespace A075355.P15868725285700916925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320056 (n + 1) : ℚ) / (A008706 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A075355.P15868725285700916925

/-!
# A075356: Sum of terms in n-th group in A075352.

The programs for A075356, there is no canonical definition to state claims against.
-/

/-! ## A075356.P12471544600749945928

`A075355(n+1)*(A075354(n+1)+A075353(n+1))/2`
-/

namespace A075356.P12471544600749945928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075355 (n + 1) : ℚ) * ((A075354 (n + 1) + A075353 (n + 1) : ℚ) / 2)

end

end A075356.P12471544600749945928

/-! ## A075356.P1641544323119293182

`Δ[C(A075353(n+1), 2)]`
-/

namespace A075356.P1641544323119293182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075353 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A075356.P1641544323119293182

/-! ## A075356.P16567954953405141344

`Δ[A000217(A075353(n+1)-1)]`
-/

namespace A075356.P16567954953405141344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A075353 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075356.P16567954953405141344

/-! ## A075356.P12735468964620716721

`Δ[A145018(A075353(n+1))]`
-/

namespace A075356.P12735468964620716721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145018 (A075353 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075356.P12735468964620716721

/-! ## A075356.P9444828300119464496

`Δ[A000124(A075353(n+1)-1)]`
-/

namespace A075356.P9444828300119464496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A075353 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075356.P9444828300119464496

/-! ## A075356.P9022988786764438447

`Δ[A145018(∑[A075355(abs(1-n)+1)])]`
-/

namespace A075356.P9022988786764438447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075355 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145018 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075356.P9022988786764438447

/-!
# A075357: a(n) = smallest k such that (n+1)(n+2)...(n+k) >= n!.

The programs for A075357, there is no canonical definition to state claims against.
-/

/-! ## A075357.P11257289682184215788

`A094331(n+1)%(n+1)`
-/

namespace A075357.P11257289682184215788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094331 (n + 1)) (n + 1 : ℤ)

end

end A075357.P11257289682184215788

/-! ## A075357.P12257510125895777353

`∑[char[A225515(a(n-1)+1)+n]]` with `a(0)=1`
-/

namespace A075357.P12257510125895777353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A225515 (f2 (n - 1) + 1).toNat + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075357.P12257510125895777353

/-! ## A075357.P7946062864732431330

`A094331(n+1)-A000007(n)`
-/

namespace A075357.P7946062864732431330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094331 (n + 1) - A000007 n

end

end A075357.P7946062864732431330

/-! ## A075357.P1441419122396141638

`A057427(n)*A094331(n+1)`
-/

namespace A075357.P1441419122396141638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A094331 (n + 1)

end

end A075357.P1441419122396141638

/-! ## A075357.P5686709064217180533

`and(A003817(n), A094331(n+1))`
-/

namespace A075357.P5686709064217180533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A094331 (n + 1))

end

end A075357.P5686709064217180533

/-! ## A075357.P3647898488905013537

`and(A057428(n), A094331(n+1))`
-/

namespace A075357.P3647898488905013537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A094331 (n + 1))

end

end A075357.P3647898488905013537

/-! ## A075357.P5131440367690788909

`and(A094331(n+1), A134824(n))`
-/

namespace A075357.P5131440367690788909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094331 (n + 1)) (A134824 n)

end

end A075357.P5131440367690788909

/-! ## A075357.P5576629015238339388

`and(1, A000040(n+1))*A094331(n+1)`
-/

namespace A075357.P5576629015238339388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A094331 (n + 1)

end

end A075357.P5576629015238339388

/-! ## A075357.P15711958516973018678

`A001221(A008578(n+1))*A094331(n+1)`
-/

namespace A075357.P15711958516973018678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 1)).toNat * A094331 (n + 1)

end

end A075357.P15711958516973018678

/-! ## A075357.P8444004038161127065

`and(A094331(n+1), A116362(n))`
-/

namespace A075357.P8444004038161127065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094331 (n + 1)) (A116362 n)

end

end A075357.P8444004038161127065

/-! ## A075357.P8258880976076028613

`and(A088041(n+1), A094331(n+1))`
-/

namespace A075357.P8258880976076028613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088041 (n + 1)) (A094331 (n + 1))

end

end A075357.P8258880976076028613

/-! ## A075357.P3206302923169131470

`and(A000225(n), A094331(n+1))`
-/

namespace A075357.P3206302923169131470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A094331 (n + 1))

end

end A075357.P3206302923169131470

/-! ## A075357.P15457557819740847123

`and(A094331(n+1), A303611(n+2))`
-/

namespace A075357.P15457557819740847123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094331 (n + 1)) (A303611 (n + 2))

end

end A075357.P15457557819740847123

/-! ## A075357.P14474337123219038054

`and(A094331(n+1), A140683(n))`
-/

namespace A075357.P14474337123219038054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094331 (n + 1)) (A140683 n)

end

end A075357.P14474337123219038054

/-! ## A075357.P15848238485935758278

`and(A094331(n+1), A153893(n))`
-/

namespace A075357.P15848238485935758278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094331 (n + 1)) (A153893 n)

end

end A075357.P15848238485935758278

/-! ## A075357.P779764762870458770

`and(1, A061712(n+1))*A094331(n+1)`
-/

namespace A075357.P779764762870458770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061712 (n + 1)) * A094331 (n + 1)

end

end A075357.P779764762870458770

/-! ## A075357.P2054444378779805020

`and(A086224(n), A094331(n+1))`
-/

namespace A075357.P2054444378779805020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A094331 (n + 1))

end

end A075357.P2054444378779805020

/-! ## A075357.P1133486483655363459

`and(A094331(n+1), A153894(n))`
-/

namespace A075357.P1133486483655363459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094331 (n + 1)) (A153894 n)

end

end A075357.P1133486483655363459

/-! ## A075357.P15111135689130668340

`and(A086225(n), A094331(n+1))`
-/

namespace A075357.P15111135689130668340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 n) (A094331 (n + 1))

end

end A075357.P15111135689130668340

/-! ## A075357.P13611703379517973097

`and(A094331(n+1), A196305(n))`
-/

namespace A075357.P13611703379517973097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094331 (n + 1)) (A196305 n)

end

end A075357.P13611703379517973097

/-!
# A075358: a(n) = smallest (n+1)(n+2)...(n+k) that is >= n!.

The programs for A075358, there is no canonical definition to state claims against.
-/

/-! ## A075358.P14212161492932947600

`(n+1+A075357(n+1))!/(n+1)!`
-/

namespace A075358.P14212161492932947600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1 : ℤ) + A075357 (n + 1)).toNat : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A075358.P14212161492932947600

/-! ## A075358.P18021119757845821814

`filter[A374647(n+1), A080764(#)]`
-/

namespace A075358.P18021119757845821814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080764 (f1 j).toNat = 1) n)

end

end A075358.P18021119757845821814

/-! ## A075358.P16749049006889617851

`filter[A374647(n+1), A120530(#)]`
-/

namespace A075358.P16749049006889617851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120530 (f1 j).toNat = 1) n)

end

end A075358.P16749049006889617851

/-!
# A075359: Sum of the digits of the next n numbers.

The programs for A075359, the canonical program `A075359.P5875219699702151333` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075359 has offset 1).

The definition of A075359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037123, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075359.P5875219699702151333

`A037123((n+1)*(n+2)/2)-A037123((n+1)*n/2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075359

/-- `A037123((n+1)*(n+2)/2)-A037123((n+1)*n/2)` -/
def P5875219699702151333.Spec : Prop :=
  ∀ n, P5875219699702151333.a n = A075359 (n + 1)

theorem P5875219699702151333.correct : P5875219699702151333.Spec := by
  intro n
  simp only [A075359, Nat.add_sub_cancel]

end A075359

/-! ## A075359.P17779363624496189617

`Δ[A037123(∑[n])]`
-/

namespace A075359.P17779363624496189617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075359.P17779363624496189617

namespace A075359

/-- `Δ[A037123(∑[n])]` -/
def P17779363624496189617.Spec : Prop :=
  ∀ n, P17779363624496189617.a n = A075359 (n + 1)

end A075359

/-! ## A075359.P8312960233026909811

`abs(Δ[A037123(C(n+1, 2))])`
-/

namespace A075359.P8312960233026909811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075359.P8312960233026909811

namespace A075359

/-- `abs(Δ[A037123(C(n+1, 2))])` -/
def P8312960233026909811.Spec : Prop :=
  ∀ n, P8312960233026909811.a n = A075359 (n + 1)

end A075359

/-! ## A075359.P7028952770618470273

`abs(Δ[A037123((n²+n)/2)])`
-/

namespace A075359.P7028952770618470273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075359.P7028952770618470273

namespace A075359

/-- `abs(Δ[A037123((n²+n)/2)])` -/
def P7028952770618470273.Spec : Prop :=
  ∀ n, P7028952770618470273.a n = A075359 (n + 1)

end A075359

/-! ## A075359.P9890107601981632072

`Δ[record[A037123(A091018(n))]]`
-/

namespace A075359.P9890107601981632072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A091018 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075359.P9890107601981632072

namespace A075359

/-- `Δ[record[A037123(A091018(n))]]` -/
def P9890107601981632072.Spec : Prop :=
  ∀ n, P9890107601981632072.a n = A075359 (n + 1)

end A075359

/-! ## A075359.P11758499373849008671

`abs(Δ[-A037123(A000217(n))])`
-/

namespace A075359.P11758499373849008671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037123 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075359.P11758499373849008671

namespace A075359

/-- `abs(Δ[-A037123(A000217(n))])` -/
def P11758499373849008671.Spec : Prop :=
  ∀ n, P11758499373849008671.a n = A075359 (n + 1)

end A075359

/-! ## A075359.P11561392198712626221

`Δ[record[A037123(A056536(n+1)-1)]]`
-/

namespace A075359.P11561392198712626221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A056536 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075359.P11561392198712626221

namespace A075359

/-- `Δ[record[A037123(A056536(n+1)-1)]]` -/
def P11561392198712626221.Spec : Prop :=
  ∀ n, P11561392198712626221.a n = A075359 (n + 1)

end A075359

/-! ## A075359.P16737241564820146869

`A000027(Δ[A037123((n²+n)/2)])`
-/

namespace A075359.P16737241564820146869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A075359.P16737241564820146869

namespace A075359

/-- `A000027(Δ[A037123((n²+n)/2)])` -/
def P16737241564820146869.Spec : Prop :=
  ∀ n, P16737241564820146869.a n = A075359 (n + 1)

end A075359

/-! ## A075359.P3471348873522408041

`Δ[A037123((n²+n)/2)+A007318(C(2, n))]`
-/

namespace A075359.P3471348873522408041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + A007318 (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075359.P3471348873522408041

namespace A075359

/-- `Δ[A037123((n²+n)/2)+A007318(C(2, n))]` -/
def P3471348873522408041.Spec : Prop :=
  ∀ n, P3471348873522408041.a n = A075359 (n + 1)

end A075359

/-! ## A075359.P17999086863667540051

`Δ[A037123(C(n+1, 2))]+A008683(8*n+4)`
-/

namespace A075359.P17999086863667540051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (8 * n + 4)

end

end A075359.P17999086863667540051

namespace A075359

/-- `Δ[A037123(C(n+1, 2))]+A008683(8*n+4)` -/
def P17999086863667540051.Spec : Prop :=
  ∀ n, P17999086863667540051.a n = A075359 (n + 1)

end A075359

/-! ## A075359.P3972427782612896242

`Δ[A037123((n²+n)/2)%(A000040(n+1)²-2)]`
-/

namespace A075359.P3972427782612896242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037123 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (A000040 (n + 1) ^ 2 - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075359.P3972427782612896242

namespace A075359

/-- `Δ[A037123((n²+n)/2)%(A000040(n+1)²-2)]` -/
def P3972427782612896242.Spec : Prop :=
  ∀ n, P3972427782612896242.a n = A075359 (n + 1)

end A075359

/-!
# A075360: Smallest prime (> n-th prime) with sum of digits = the n-th prime, or 0 if no such prime exists.

The programs for A075360, there is no canonical definition to state claims against.
-/

/-! ## A075360.P1885021464175204643

`A184955((3-n)²)+A087556(A000040(n+1))`
-/

namespace A075360.P1885021464175204643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 ((3 - (n : ℤ)) ^ 2).toNat + A087556 (A000040 (n + 1)).toNat

end

end A075360.P1885021464175204643

/-!
# A075361: a(n) = the n-th prime with sum of decimal digits = n, or 0 if no such number exists.

The programs for A075361, there is no canonical definition to state claims against.
-/

/-! ## A075361.P9675501821738859375

`A082258(n+1)`
-/

namespace A075361.P9675501821738859375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082258 (n + 1)

end

end A075361.P9675501821738859375

/-!
# A075362: Triangle read by rows with the n-th row containing the first n multiples of n.

The programs for A075362, the canonical program `A075362.P10649777671025085408` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075362 has offset 1).

The definition of A075362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075362.P16693169026977696546

`A223544(n+1)+1`
-/

namespace A075362.P16693169026977696546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (n + 1) + 1

end

end A075362.P16693169026977696546

namespace A075362

/-- `A223544(n+1)+1` -/
def P16693169026977696546.Spec : Prop :=
  ∀ n, P16693169026977696546.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P16028614272113928662

`∑[char[∑[n]]]*A002260(n+1)`
-/

namespace A075362.P16028614272113928662
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002260 (n + 1)

end

end A075362.P16028614272113928662

namespace A075362

/-- `∑[char[∑[n]]]*A002260(n+1)` -/
def P16028614272113928662.Spec : Prop :=
  ∀ n, P16028614272113928662.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P12501972516383457797

`(A002262(n)+1)*∑[char[∑[n]]]`
-/

namespace A075362.P12501972516383457797
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075362.P12501972516383457797

namespace A075362

/-- `(A002262(n)+1)*∑[char[∑[n]]]` -/
def P12501972516383457797.Spec : Prop :=
  ∀ n, P12501972516383457797.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P7802419287937482760

`∑[char[∑[n]]]²-A095834(n+1)`
-/

namespace A075362.P7802419287937482760
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A095834 (n + 1)

end

end A075362.P7802419287937482760

namespace A075362

/-- `∑[char[∑[n]]]²-A095834(n+1)` -/
def P7802419287937482760.Spec : Prop :=
  ∀ n, P7802419287937482760.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P4340889019929601281

`(A132118(n+1)-n)*∑[char[∑[n]]]`
-/

namespace A075362.P4340889019929601281
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132118 (n + 1) - (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075362.P4340889019929601281

namespace A075362

/-- `(A132118(n+1)-n)*∑[char[∑[n]]]` -/
def P4340889019929601281.Spec : Prop :=
  ∀ n, P4340889019929601281.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P581980348256829950

`(∑[char[∑[n+1]]]+1)*(2*(n+1)-A004201(n+1))`
-/

namespace A075362.P581980348256829950
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * ((2 * (n + 1) : ℤ) - A004201 (n + 1))

end

end A075362.P581980348256829950

namespace A075362

/-- `(∑[char[∑[n+1]]]+1)*(2*(n+1)-A004201(n+1))` -/
def P581980348256829950.Spec : Prop :=
  ∀ n, P581980348256829950.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P10649777671025085408

`A079904(A014132(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A075362

/-- `A079904(A014132(n+1))` -/
def P10649777671025085408.Spec : Prop :=
  ∀ n, P10649777671025085408.a n = A075362 (n + 1)

theorem P10649777671025085408.correct : P10649777671025085408.Spec := by
  intro n
  simp only [A075362, Nat.add_sub_cancel]

end A075362

/-! ## A075362.P16678963313070834511

`A135065(n)/A135278(n)`
-/

namespace A075362.P16678963313070834511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135065 n : ℚ) / (A135278 n : ℚ)

end

end A075362.P16678963313070834511

namespace A075362

/-- `A135065(n)/A135278(n)` -/
def P16678963313070834511.Spec : Prop :=
  ∀ n, P16678963313070834511.a n = (A075362 (n + 1) : ℚ)

end A075362

/-! ## A075362.P13913560760955294150

`A081493(n+1)+A002262(n)`
-/

namespace A075362.P13913560760955294150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) + A002262 n

end

end A075362.P13913560760955294150

namespace A075362

/-- `A081493(n+1)+A002262(n)` -/
def P13913560760955294150.Spec : Prop :=
  ∀ n, P13913560760955294150.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P11603828978669901062

`A076110(n+1)+A051162(n)`
-/

namespace A075362.P11603828978669901062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + A051162 n

end

end A075362.P11603828978669901062

namespace A075362

/-- `A076110(n+1)+A051162(n)` -/
def P11603828978669901062.Spec : Prop :=
  ∀ n, P11603828978669901062.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P5085834381524143294

`A051162(n)+A079904(n)+1`
-/

namespace A075362.P5085834381524143294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (A079904 n + 1)

end

end A075362.P5085834381524143294

namespace A075362

/-- `A051162(n)+A079904(n)+1` -/
def P5085834381524143294.Spec : Prop :=
  ∀ n, P5085834381524143294.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P7294001346652753595

`A094727(n+1)+A079904(n)`
-/

namespace A075362.P7294001346652753595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A079904 n

end

end A075362.P7294001346652753595

namespace A075362

/-- `A094727(n+1)+A079904(n)` -/
def P7294001346652753595.Spec : Prop :=
  ∀ n, P7294001346652753595.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P14988893532543340711

`A185910(n+1)+A004247(n)`
-/

namespace A075362.P14988893532543340711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1) + A004247 n

end

end A075362.P14988893532543340711

namespace A075362

/-- `A185910(n+1)+A004247(n)` -/
def P14988893532543340711.Spec : Prop :=
  ∀ n, P14988893532543340711.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P13419919423919306715

`A134464(n+1)+A087401(n)`
-/

namespace A075362.P13419919423919306715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134464 (n + 1) + A087401 n

end

end A075362.P13419919423919306715

namespace A075362

/-- `A134464(n+1)+A087401(n)` -/
def P13419919423919306715.Spec : Prop :=
  ∀ n, P13419919423919306715.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P9230543479792776537

`A141419(n+1)+A112367(n)`
-/

namespace A075362.P9230543479792776537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + A112367 n

end

end A075362.P9230543479792776537

namespace A075362

/-- `A141419(n+1)+A112367(n)` -/
def P9230543479792776537.Spec : Prop :=
  ∀ n, P9230543479792776537.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P18055350043534396033

`A159797(n)+A158405(n+1)`
-/

namespace A075362.P18055350043534396033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + A158405 (n + 1)

end

end A075362.P18055350043534396033

namespace A075362

/-- `A159797(n)+A158405(n+1)` -/
def P18055350043534396033.Spec : Prop :=
  ∀ n, P18055350043534396033.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P4920957468970926028

`A004201(n+1)-A091435(n)`
-/

namespace A075362.P4920957468970926028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) - A091435 n

end

end A075362.P4920957468970926028

namespace A075362

/-- `A004201(n+1)-A091435(n)` -/
def P4920957468970926028.Spec : Prop :=
  ∀ n, P4920957468970926028.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P12368454856073213150

`A061885(n)+1-A091435(n)`
-/

namespace A075362.P12368454856073213150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n + (1 - A091435 n)

end

end A075362.P12368454856073213150

namespace A075362

/-- `A061885(n)+1-A091435(n)` -/
def P12368454856073213150.Spec : Prop :=
  ∀ n, P12368454856073213150.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P7538824424347671470

`A162610(n+1)-A025581(n)`
-/

namespace A075362.P7538824424347671470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (n + 1) - A025581 n

end

end A075362.P7538824424347671470

namespace A075362

/-- `A162610(n+1)-A025581(n)` -/
def P7538824424347671470.Spec : Prop :=
  ∀ n, P7538824424347671470.a n = A075362 (n + 1)

end A075362

/-! ## A075362.P10988899540796029618

`A105020(n)-A094053(n+1)`
-/

namespace A075362.P10988899540796029618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - A094053 (n + 1)

end

end A075362.P10988899540796029618

namespace A075362

/-- `A105020(n)-A094053(n+1)` -/
def P10988899540796029618.Spec : Prop :=
  ∀ n, P10988899540796029618.a n = A075362 (n + 1)

end A075362

/-!
# A075363: Triangle read by rows, in which n-th row gives n smallest powers of n.

The programs for A075363, the canonical program `A075363.P17414441603583591353` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075363 has offset 1).

The definition of A075363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075363.P17414441603583591353

`A002024(n+1)^A002260(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075363

/-- `A002024(n+1)^A002260(n+1)` -/
def P17414441603583591353.Spec : Prop :=
  ∀ n, P17414441603583591353.a n = (A075363 (n + 1) : ℚ)

end A075363

/-! ## A075363.P16539627128121131152

`A079901(comp[∑[n]])`
-/

namespace A075363.P16539627128121131152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A075363.P16539627128121131152

namespace A075363

/-- `A079901(comp[∑[n]])` -/
def P16539627128121131152.Spec : Prop :=
  ∀ n, P16539627128121131152.a n = A075363 (n + 1)

end A075363

/-! ## A075363.P5850575809758244128

`∑[char[∑[n]]]^A057555(2*n+1)`
-/

namespace A075363.P5850575809758244128
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A057555 (2 * n + 1) : ℤ)

end

end A075363.P5850575809758244128

namespace A075363

/-- `∑[char[∑[n]]]^A057555(2*n+1)` -/
def P5850575809758244128.Spec : Prop :=
  ∀ n, P5850575809758244128.a n = (A075363 (n + 1) : ℚ)

end A075363

/-! ## A075363.P18446263524301937784

`round(sqrt(2*n+1))*A076112(n+1)`
-/

namespace A075363.P18446263524301937784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) * A076112 (n + 1)

end

end A075363.P18446263524301937784

namespace A075363

/-- `round(sqrt(2*n+1))*A076112(n+1)` -/
def P18446263524301937784.Spec : Prop :=
  ∀ n, P18446263524301937784.a n = A075363 (n + 1)

end A075363

/-! ## A075363.P8967671127289796357

`round(sqrt(2*(n+1)))^(A002262(n)+1)`
-/

namespace A075363.P8967671127289796357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℚ) ^ (A002262 n + 1 : ℤ)

end

end A075363.P8967671127289796357

namespace A075363

/-- `round(sqrt(2*(n+1)))^(A002262(n)+1)` -/
def P8967671127289796357.Spec : Prop :=
  ∀ n, P8967671127289796357.a n = (A075363 (n + 1) : ℚ)

end A075363

/-! ## A075363.P3500954832547937313

`A093898(n+1)-A089072(n+1)`
-/

namespace A075363.P3500954832547937313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093898 (n + 1) - A089072 (n + 1)

end

end A075363.P3500954832547937313

namespace A075363

/-- `A093898(n+1)-A089072(n+1)` -/
def P3500954832547937313.Spec : Prop :=
  ∀ n, P3500954832547937313.a n = A075363 (n + 1)

end A075363

/-! ## A075363.P903967489550796264

`A076112(n+1)*A123578(n+1)`
-/

namespace A075363.P903967489550796264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A123578 (n + 1)

end

end A075363.P903967489550796264

namespace A075363

/-- `A076112(n+1)*A123578(n+1)` -/
def P903967489550796264.Spec : Prop :=
  ∀ n, P903967489550796264.a n = A075363 (n + 1)

end A075363

/-! ## A075363.P5917944895955746856

`A002024(n+1)^A048151(comp[∑[n]])`
-/

namespace A075363.P5917944895955746856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A048151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A075363.P5917944895955746856

namespace A075363

/-- `A002024(n+1)^A048151(comp[∑[n]])` -/
def P5917944895955746856.Spec : Prop :=
  ∀ n, P5917944895955746856.a n = (A075363 (n + 1) : ℚ)

end A075363

/-! ## A075363.P10375350328325943694

`A002024(n+1)^(comp[∑[n]]-n-A004736(n+1))`
-/

namespace A075363.P10375350328325943694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - A004736 (n + 1) : ℤ)

end

end A075363.P10375350328325943694

namespace A075363

/-- `A002024(n+1)^(comp[∑[n]]-n-A004736(n+1))` -/
def P10375350328325943694.Spec : Prop :=
  ∀ n, P10375350328325943694.a n = (A075363 (n + 1) : ℚ)

end A075363

/-! ## A075363.P5669618444611546334

`A002024(n+1)^A026100(A026098(n+1))`
-/

namespace A075363.P5669618444611546334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A026100 (A026098 (n + 1)).toNat : ℤ)

end

end A075363.P5669618444611546334

namespace A075363

/-- `A002024(n+1)^A026100(A026098(n+1))` -/
def P5669618444611546334.Spec : Prop :=
  ∀ n, P5669618444611546334.a n = (A075363 (n + 1) : ℚ)

end A075363

/-! ## A075363.P16158613832581986619

`(A007401(n+1)-n)*A079901(A007401(n+1))`
-/

namespace A075363.P16158613832581986619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007401 (n + 1) - (n : ℤ)) * A079901 (A007401 (n + 1)).toNat

end

end A075363.P16158613832581986619

namespace A075363

/-- `(A007401(n+1)-n)*A079901(A007401(n+1))` -/
def P16158613832581986619.Spec : Prop :=
  ∀ n, P16158613832581986619.a n = A075363 (n + 1)

end A075363

/-! ## A075363.P7663182631436235616

`A095896(A038722(n+1))`
-/

namespace A075363.P7663182631436235616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095896 (A038722 (n + 1)).toNat

end

end A075363.P7663182631436235616

namespace A075363

/-- `A095896(A038722(n+1))` -/
def P7663182631436235616.Spec : Prop :=
  ∀ n, P7663182631436235616.a n = A075363 (n + 1)

end A075363

/-! ## A075363.P12757103204377981601

`A095896(A002024(n+1)²-n)`
-/

namespace A075363.P12757103204377981601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095896 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A075363.P12757103204377981601

namespace A075363

/-- `A095896(A002024(n+1)²-n)` -/
def P12757103204377981601.Spec : Prop :=
  ∀ n, P12757103204377981601.a n = A075363 (n + 1)

end A075363

/-! ## A075363.P8709528374571393455

`round(sqrt(2*(n+1)))^A000005(A059268(n))`
-/

namespace A075363.P8709528374571393455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℚ) ^ (A000005 (A059268 n).toNat : ℤ)

end

end A075363.P8709528374571393455

namespace A075363

/-- `round(sqrt(2*(n+1)))^A000005(A059268(n))` -/
def P8709528374571393455.Spec : Prop :=
  ∀ n, P8709528374571393455.a n = (A075363 (n + 1) : ℚ)

end A075363

/-! ## A075363.P2980519161209153322

`∑[A010054(n)]^A000005(2^A002262(n))`
-/

namespace A075363.P2980519161209153322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002262 n : ℤ))).toNat : ℤ)

end

end A075363.P2980519161209153322

namespace A075363

/-- `∑[A010054(n)]^A000005(2^A002262(n))` -/
def P2980519161209153322.Spec : Prop :=
  ∀ n, P2980519161209153322.a n = (A075363 (n + 1) : ℚ)

end A075363

/-!
# A075364: a(n) = floor( geometric mean of n-th row of A075363).

The programs for A075364, there is no canonical definition to state claims against.
-/

/-! ## A075364.P14588375203450898872

`floor((n+1)^(n/2+1))`
-/

namespace A075364.P14588375203450898872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((n : ℚ) / 2 + 1 : ℝ)⌋

end

end A075364.P14588375203450898872

/-! ## A075364.P7259954208879454697

`record[floor(abs(1-n)^(n/2))]`
-/

namespace A075364.P7259954208879454697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - (n : ℤ)| : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075364.P7259954208879454697

/-! ## A075364.P10591959504751554751

`ceil(record[sqrt((n-1)^n+1)])-1`
-/

namespace A075364.P10591959504751554751
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n : ℤ) - 1) ^ n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ - 1

end

end A075364.P10591959504751554751

/-! ## A075364.P5059304214417879644

`Δ[floor(sqrt(n^(n+1)))]+a(n-1)` with `a(0)=1`
-/

namespace A075364.P5059304214417879644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A075364.P5059304214417879644

/-! ## A075364.P3920360101902527560

`A255616((n+1)²+(n+2)²)`
-/

namespace A075364.P3920360101902527560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255616 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A075364.P3920360101902527560

/-!
# A075365: Smallest k such that (n+1)(n+2)...(n+k) is divisible by the product of all the primes up to n.

The programs for A075365, there is no canonical definition to state claims against.
-/

/-! ## A075365.P8756103296317746282

`A175856(n+1)+A121373(A184013(3*(n+1)))`
-/

namespace A075365.P8756103296317746282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175856 (n + 1) + A121373 (A184013 (3 * (n + 1))).toNat

end

end A075365.P8756103296317746282

/-!
# A075366: Smallest product (n+1)(n+2)...(n+k) that is divisible by the product of all the primes up to n.

The programs for A075366, there is no canonical definition to state claims against.
-/

/-! ## A075366.P11205706256974588148

`(∑{p}[n+1, #]+1+n)!/A138902(10^n)`
-/

namespace A075366.P11205706256974588148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), p + 1 + n) : ℚ) / (A138902 (10 ^ n) : ℚ)

end

end A075366.P11205706256974588148

/-!
# A075367: Smallest value of lcm(n+1, n+2, ..., n+k) (for k >= 0) that is divisible by the product of all the primes up to n.

The programs for A075367, there is no canonical definition to state claims against.
-/

/-! ## A075367.P2749904878772468999

`A034386(n+1)*A075368(n+1)`
-/

namespace A075367.P2749904878772468999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1) * A075368 (n + 1)

end

end A075367.P2749904878772468999

/-! ## A075367.P18133970095602185482

`A002110(A000720(n+1))*A075368(n+1)`
-/

namespace A075367.P18133970095602185482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000720 (n + 1)).toNat * A075368 (n + 1)

end

end A075367.P18133970095602185482

/-! ## A075367.P10578095870711333561

`gcd(A002110(n)*A075368(n+1), A075366(n+1))`
-/

namespace A075367.P10578095870711333561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n * A075368 (n + 1)) (A075366 (n + 1))

end

end A075367.P10578095870711333561

/-! ## A075367.P16379375786593854089

`A075368(n+1)*A083907(n+1)`
-/

namespace A075367.P16379375786593854089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075368 (n + 1) * A083907 (n + 1)

end

end A075367.P16379375786593854089

/-!
# A075368: Smallest integer value of lcm(n+1, n+2, ..., n+k) (for k >= 0) divided by the product of all the primes up to n.

The programs for A075368, there is no canonical definition to state claims against.
-/

/-! ## A075368.P3804050477843187420

`A075367(n+1)/A034386(n+1)`
-/

namespace A075368.P3804050477843187420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075367 (n + 1) : ℚ) / (A034386 (n + 1) : ℚ)

end

end A075368.P3804050477843187420

/-! ## A075368.P669381705427815657

`A075367(n+1)/A002110(A000720(n+1))`
-/

namespace A075368.P669381705427815657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075367 (n + 1) : ℚ) / (A002110 (A000720 (n + 1)).toNat : ℚ)

end

end A075368.P669381705427815657

/-! ## A075368.P16098514192553232149

`A075367(n+1)/gcd(A002110(n), A104350(n+1))`
-/

namespace A075368.P16098514192553232149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075367 (n + 1) : ℚ) / (Int.gcd (A002110 n) (A104350 (n + 1)) : ℚ)

end

end A075368.P16098514192553232149

/-! ## A075368.P8967826899555000847

`A075367(n+1)/A083907(n+1)`
-/

namespace A075368.P8967826899555000847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075367 (n + 1) : ℚ) / (A083907 (n + 1) : ℚ)

end

end A075368.P8967826899555000847

/-!
# A075369: Square associated with twin primes (p,p+2): p(p+2) + 1. Square of the average of twin primes.

The programs for A075369, the canonical program `A075369.P17454409901209698204` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075369 has offset 1).

The definition of A075369 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075369.P17454409901209698204

`A014574(n+1)²`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A075369

/-- `A014574(n+1)²` -/
def P17454409901209698204.Spec : Prop :=
  ∀ n, P17454409901209698204.a n = A075369 (n + 1)

theorem P17454409901209698204.correct : P17454409901209698204.Spec := by
  intro n
  simp only [A075369, Nat.add_sub_cancel]

end A075369

/-! ## A075369.P6420350670815614595

`A037074(n+1)+1`
-/

namespace A075369.P6420350670815614595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + 1

end

end A075369.P6420350670815614595

namespace A075369

/-- `A037074(n+1)+1` -/
def P6420350670815614595.Spec : Prop :=
  ∀ n, P6420350670815614595.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P138124600149776153

`A120875(n+1)+2`
-/

namespace A075369.P138124600149776153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1) + 2

end

end A075369.P138124600149776153

namespace A075369

/-- `A120875(n+1)+2` -/
def P138124600149776153.Spec : Prop :=
  ∀ n, P138124600149776153.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P18283469175406213418

`(A001359(n+1)+1)²`
-/

namespace A075369.P18283469175406213418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + 1) ^ 2

end

end A075369.P18283469175406213418

namespace A075369

/-- `(A001359(n+1)+1)²` -/
def P18283469175406213418.Spec : Prop :=
  ∀ n, P18283469175406213418.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P14800851564455697973

`(1-A006512(n+1))²`
-/

namespace A075369.P14800851564455697973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A006512 (n + 1)) ^ 2

end

end A075369.P14800851564455697973

namespace A075369

/-- `(1-A006512(n+1))²` -/
def P14800851564455697973.Spec : Prop :=
  ∀ n, P14800851564455697973.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P8383255925677574446

`(A144834(n+1)+2)²`
-/

namespace A075369.P8383255925677574446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 1) + 2) ^ 2

end

end A075369.P8383255925677574446

namespace A075369

/-- `(A144834(n+1)+2)²` -/
def P8383255925677574446.Spec : Prop :=
  ∀ n, P8383255925677574446.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P946775069443347416

`(2*A040040(n+1))²`
-/

namespace A075369.P946775069443347416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A040040 (n + 1)) ^ 2

end

end A075369.P946775069443347416

namespace A075369

/-- `(2*A040040(n+1))²` -/
def P946775069443347416.Spec : Prop :=
  ∀ n, P946775069443347416.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P11915822614836734844

`(A054735(n+1)/2)²`
-/

namespace A075369.P11915822614836734844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A054735 (n + 1) : ℚ) / 2) ^ 2

end

end A075369.P11915822614836734844

namespace A075369

/-- `(A054735(n+1)/2)²` -/
def P11915822614836734844.Spec : Prop :=
  ∀ n, P11915822614836734844.a n = (A075369 (n + 1) : ℚ)

end A075369

/-! ## A075369.P17566022668022127749

`(A111046(n+1)/4)²`
-/

namespace A075369.P17566022668022127749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A111046 (n + 1) : ℚ) / 4) ^ 2

end

end A075369.P17566022668022127749

namespace A075369

/-- `(A111046(n+1)/4)²` -/
def P17566022668022127749.Spec : Prop :=
  ∀ n, P17566022668022127749.a n = (A075369 (n + 1) : ℚ)

end A075369

/-! ## A075369.P11524113705981897151

`floor(A184417(n+1)/2)`
-/

namespace A075369.P11524113705981897151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184417 (n + 1) : ℚ) / 2⌋

end

end A075369.P11524113705981897151

namespace A075369

/-- `floor(A184417(n+1)/2)` -/
def P11524113705981897151.Spec : Prop :=
  ∀ n, P11524113705981897151.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P13538832265662677997

`floor(sqrt(A135286(n+1)))²`
-/

namespace A075369.P13538832265662677997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A135286 (n + 1)) ^ 2

end

end A075369.P13538832265662677997

namespace A075369

/-- `floor(sqrt(A135286(n+1)))²` -/
def P13538832265662677997.Spec : Prop :=
  ∀ n, P13538832265662677997.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P16540431407428279678

`2*(A120876(n+1)+1)`
-/

namespace A075369.P16540431407428279678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120876 (n + 1) + 1)

end

end A075369.P16540431407428279678

namespace A075369

/-- `2*(A120876(n+1)+1)` -/
def P16540431407428279678.Spec : Prop :=
  ∀ n, P16540431407428279678.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P16573048303496799696

`A071142(n+1)/2+1`
-/

namespace A075369.P16573048303496799696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071142 (n + 1) : ℚ) / 2 + 1

end

end A075369.P16573048303496799696

namespace A075369

/-- `A071142(n+1)/2+1` -/
def P16573048303496799696.Spec : Prop :=
  ∀ n, P16573048303496799696.a n = (A075369 (n + 1) : ℚ)

end A075369

/-! ## A075369.P8683727576798709630

`A063533(n+1)/2-1`
-/

namespace A075369.P8683727576798709630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063533 (n + 1) : ℚ) / 2 - 1

end

end A075369.P8683727576798709630

namespace A075369

/-- `A063533(n+1)/2-1` -/
def P8683727576798709630.Spec : Prop :=
  ∀ n, P8683727576798709630.a n = (A075369 (n + 1) : ℚ)

end A075369

/-! ## A075369.P412490476903037376

`(1-sqrt(A108604(n+1)))²`
-/

namespace A075369.P412490476903037376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - Real.sqrt (A108604 (n + 1) : ℝ)) ^ 2

end

end A075369.P412490476903037376

namespace A075369

/-- `(1-sqrt(A108604(n+1)))²` -/
def P412490476903037376.Spec : Prop :=
  ∀ n, P412490476903037376.a n = (A075369 (n + 1) : ℝ)

end A075369

/-! ## A075369.P10339897648100992094

`ceil(sqrt(A094949(n+1)))+2`
-/

namespace A075369.P10339897648100992094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A094949 (n + 1) : ℝ)⌉ + 2

end

end A075369.P10339897648100992094

namespace A075369

/-- `ceil(sqrt(A094949(n+1)))+2` -/
def P10339897648100992094.Spec : Prop :=
  ∀ n, P10339897648100992094.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P1407019641272762311

`A126251(n+1)-A014574(n+1)`
-/

namespace A075369.P1407019641272762311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126251 (n + 1) - A014574 (n + 1)

end

end A075369.P1407019641272762311

namespace A075369

/-- `A126251(n+1)-A014574(n+1)` -/
def P1407019641272762311.Spec : Prop :=
  ∀ n, P1407019641272762311.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P8001677067668998937

`A328493(n+1)-A001359(n+1)`
-/

namespace A075369.P8001677067668998937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328493 (n + 1) - A001359 (n + 1)

end

end A075369.P8001677067668998937

namespace A075369

/-- `A328493(n+1)-A001359(n+1)` -/
def P8001677067668998937.Spec : Prop :=
  ∀ n, P8001677067668998937.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P4114101760616154875

`A362941(n+1)-A054735(n+1)`
-/

namespace A075369.P4114101760616154875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362941 (n + 1) - A054735 (n + 1)

end

end A075369.P4114101760616154875

namespace A075369

/-- `A362941(n+1)-A054735(n+1)` -/
def P4114101760616154875.Spec : Prop :=
  ∀ n, P4114101760616154875.a n = A075369 (n + 1)

end A075369

/-! ## A075369.P9163066875864146052

`A040040(n+1)*A054735(n+1)`
-/

namespace A075369.P9163066875864146052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) * A054735 (n + 1)

end

end A075369.P9163066875864146052

namespace A075369

/-- `A040040(n+1)*A054735(n+1)` -/
def P9163066875864146052.Spec : Prop :=
  ∀ n, P9163066875864146052.a n = A075369 (n + 1)

end A075369

/-!
# A075371: Smallest squarefree number greater than the previous term such that the every partial sum is squarefree.

The programs for A075371, there is no canonical definition to state claims against.
-/

/-! ## A075371.P7561360038729999756

`∩[A030051(n+1), A052063(n+1)]`
-/

namespace A075371.P7561360038729999756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075371.P7561360038729999756

/-! ## A075371.P3757585090701506014

`∩[A030051(n+1), A052047(n+1)]`
-/

namespace A075371.P3757585090701506014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075371.P3757585090701506014

/-! ## A075371.P13694575643307892307

`∩[A030051(n+1), A129525(n+1)]`
-/

namespace A075371.P13694575643307892307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075371.P13694575643307892307

/-!
# A075373: a(1)=0, a(2)=9; then distinct squares such that the sum of three successive terms is a square.

The programs for A075373, there is no canonical definition to state claims against.
-/

/-! ## A075373.P6504206969480661263

`(A005448(A219288(n+1))%A005448(n+1))²`
-/

namespace A075373.P6504206969480661263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005448 (A219288 (n + 1)).toNat) (A005448 (n + 1)) ^ 2

end

end A075373.P6504206969480661263

/-!
# A075374: a(n+2) = n*a(n+1) - a(n), with a(1)=1, a(2)=2.

The programs for A075374, the canonical program `A075374.P12443012425789492456` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075374 has offset 1).

The definition of A075374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075374.P12443012425789492456

`(n-1)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A075374

/-- `(n-1)*a(n-1)-a(n-2)` -/
def P12443012425789492456.Spec : Prop :=
  ∀ n, P12443012425789492456.a n = A075374 (n + 1)

theorem P12443012425789492456.correct : P12443012425789492456.Spec := by
  intro n
  simp only [A075374, Nat.add_sub_cancel]

end A075374

/-! ## A075374.P10560079504628477781

`a(n-1)/n^-1-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A075374.P10560079504628477781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (a (n - 1) + a (n - 2))

end

end A075374.P10560079504628477781

namespace A075374

/-- `a(n-1)/n^-1-(a(n-1)+a(n-2))` -/
def P10560079504628477781.Spec : Prop :=
  ∀ n, P10560079504628477781.a n = (A075374 (n + 1) : ℚ)

end A075374

/-! ## A075374.P4232995189999000781

`a(n-1)/n^-1-(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A075374.P4232995189999000781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (a (n - 1) - (⌈-a (n - 2)⌉ : ℚ))

end

end A075374.P4232995189999000781

namespace A075374

/-- `a(n-1)/n^-1-(a(n-1)-ceil(-a(n-2)))` -/
def P4232995189999000781.Spec : Prop :=
  ∀ n, P4232995189999000781.a n = (A075374 (n + 1) : ℚ)

end A075374

/-! ## A075374.P2288830108935299191

`a(n-1)/n^-1-(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A075374.P2288830108935299191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (a (n - 1) - (SequenceMachineLib.roundAway (-a (n - 2)) : ℚ))

end

end A075374.P2288830108935299191

namespace A075374

/-- `a(n-1)/n^-1-(a(n-1)-round(-a(n-2)))` -/
def P2288830108935299191.Spec : Prop :=
  ∀ n, P2288830108935299191.a n = (A075374 (n + 1) : ℚ)

end A075374

/-! ## A075374.P18275504667665437254

`a(n-1)*A023443(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A075374.P18275504667665437254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A023443 n - a (n - 2)

end

end A075374.P18275504667665437254

namespace A075374

/-- `a(n-1)*A023443(n)-a(n-2)` -/
def P18275504667665437254.Spec : Prop :=
  ∀ n, P18275504667665437254.a n = A075374 (n + 1)

end A075374

/-!
# A075376: Terms of A075375 for which a(k) = k, i.e., with dislocation 0.

The programs for A075376, there is no canonical definition to state claims against.
-/

/-! ## A075376.P5605234752914897840

`record[gcd(n+1, A075375(n+1))]`
-/

namespace A075376.P5605234752914897840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A075375 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075376.P5605234752914897840

/-! ## A075376.P10051917684474698124

`eq[n, A075375(round(sqrt(n²+1)))]`
-/

namespace A075376.P10051917684474698124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075375 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075376.P10051917684474698124

/-! ## A075376.P13973081464708040472

`A075375(eq[n+1, A075375(n+1)]+1)`
-/

namespace A075376.P13973081464708040472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075376.P13973081464708040472

/-!
# A075377: Triangle read by rows in which n-th row gives all values of n!/{(p!)^a*(q!)^b*(r!)^c*...} (in increasing order) for all factorizations n = p^a*q^b*r^c*....

The programs for A075377, there is no canonical definition to state claims against.
-/

/-! ## A075377.P10493984801192984515

`A036038(eq[A036042(n), A118851(n)])`
-/

namespace A075377.P10493984801192984515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A075377.P10493984801192984515

/-! ## A075377.P8576010258564531470

`A318762(A377852(n+1))`
-/

namespace A075377.P8576010258564531470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A377852 (n + 1)).toNat

end

end A075377.P8576010258564531470

/-! ## A075377.P12179889852393600820

`A046792(∑[A227655(n)!])`
-/

namespace A075377.P12179889852393600820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A227655 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046792 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075377.P12179889852393600820

/-! ## A075377.P4896713876271061732

`A046792(∑[A283950(n+1)!])`
-/

namespace A075377.P4896713876271061732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A283950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046792 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075377.P4896713876271061732

/-! ## A075377.P864216105535554463

`A046792(A331682(n+1))^A056940(2*n+1)`
-/

namespace A075377.P864216105535554463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046792 (A331682 (n + 1)).toNat : ℚ) ^ (A056940 (2 * n + 1) : ℤ)

end

end A075377.P864216105535554463

/-!
# A075378: Rearrangement of natural numbers with a(1) = 1, a(2n) squarefree and a(2n+1) not squarefree.

The programs for A075378, there is no canonical definition to state claims against.
-/

/-! ## A075378.P8443452233273799380

`A088610(A014681(n)+1)`
-/

namespace A075378.P8443452233273799380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A014681 n + 1).toNat

end

end A075378.P8443452233273799380

/-! ## A075378.P6667087071018286821

`A088610(A065190(n+1))`
-/

namespace A075378.P6667087071018286821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A065190 (n + 1)).toNat

end

end A075378.P6667087071018286821

/-! ## A075378.P17244050987644698788

`A088610(A028310(xor(1, n+1)))`
-/

namespace A075378.P17244050987644698788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A028310 (Nat.xor 1 (n + 1))).toNat

end

end A075378.P17244050987644698788

/-! ## A075378.P17286063142693555634

`A088610(xor(1, A087156(n+1)))`
-/

namespace A075378.P17286063142693555634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (Int.xor 1 (A087156 (n + 1))).toNat

end

end A075378.P17286063142693555634

/-! ## A075378.P925896792174930641

`A088610(A062157(n)+1+n)`
-/

namespace A075378.P925896792174930641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A062157 n + 1 + (n : ℤ)).toNat

end

end A075378.P925896792174930641

/-! ## A075378.P1879487305062323886

`A088610(xor(1, A057427(n)+n))`
-/

namespace A075378.P1879487305062323886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (Int.xor 1 (A057427 n + (n : ℤ))).toNat

end

end A075378.P1879487305062323886

/-! ## A075378.P17477097969794537525

`A088610(xor(n+1, A000040(n+1)%2))`
-/

namespace A075378.P17477097969794537525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (Int.xor (n + 1 : ℤ) (Int.tmod (A000040 (n + 1)) 2)).toNat

end

end A075378.P17477097969794537525

/-! ## A075378.P4277533538703333003

`A088609(A088610(n+1))`
-/

namespace A075378.P4277533538703333003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (A088610 (n + 1)).toNat

end

end A075378.P4277533538703333003

/-!
# A075380: Rearrangement of natural numbers so that the sum of two neighboring terms is not squarefree.

The programs for A075380, there is no canonical definition to state claims against.
-/

/-! ## A075380.P16476601182848551761

`A167902(A167901(n+1))`
-/

namespace A075380.P16476601182848551761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167902 (A167901 (n + 1)).toNat

end

end A075380.P16476601182848551761

/-! ## A075380.P991487414274041806

`A167901(A167902(n-log2(1/2)))`
-/

namespace A075380.P991487414274041806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167901 (A167902 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A075380.P991487414274041806

/-! ## A075380.P967773099163879905

`A167903(n)-a(n-1)` with `a(0)=1`
-/

namespace A075380.P967773099163879905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167903 n - a (n - 1)

end

end A075380.P967773099163879905

/-!
# A075381: Fixed points of A075380.

The programs for A075381, there is no canonical definition to state claims against.
-/

/-! ## A075381.P14436040765629576656

`record[gcd(n+1, A075380(n+1))]`
-/

namespace A075381.P14436040765629576656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A075380 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075381.P14436040765629576656

/-! ## A075381.P13792664427979649079

`eq[n, A075380(round(sqrt(n²+1)))]`
-/

namespace A075381.P13792664427979649079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075380 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075381.P13792664427979649079

/-! ## A075381.P1497187452567566846

`record[gcd(A075380(n+1), A131738(n))]`
-/

namespace A075381.P1497187452567566846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075380 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075381.P1497187452567566846

/-! ## A075381.P185445867525967327

`eq[A048673(A064216(n+1)), A075380(n+1)]+1`
-/

namespace A075381.P185445867525967327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A064216 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A075381.P185445867525967327

/-! ## A075381.P17013094863887463589

`eq[n, A167902(round(sqrt(n²+1)))]`
-/

namespace A075381.P17013094863887463589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167902 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075381.P17013094863887463589

/-!
# A075383: Rearrangement of natural numbers so that next n numbers are each divisible by n.

The programs for A075383, there is no canonical definition to state claims against.
-/

/-! ## A075383.P16673886177357002320

`A096780(A096781(n+1))`
-/

namespace A075383.P16673886177357002320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096780 (A096781 (n + 1)).toNat

end

end A075383.P16673886177357002320

/-!
# A075384: Initial term of n-th group in A075383.

The programs for A075384, there is no canonical definition to state claims against.
-/

/-! ## A075384.P17303305505518987671

`(n+1)*A075388(n+1)`
-/

namespace A075384.P17303305505518987671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075388 (n + 1)

end

end A075384.P17303305505518987671

/-! ## A075384.P13010348067776087663

`floor(A075388(n+1)/acot(A000027(n+1)))`
-/

namespace A075384.P13010348067776087663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075388 (n + 1) : ℝ) / SequenceMachineLib.acot (A000027 (n + 1) : ℝ)⌋

end

end A075384.P13010348067776087663

/-! ## A075384.P10703345027282913451

`(n+1)/A075388(n+1)^A008683(A002146(n))`
-/

namespace A075384.P10703345027282913451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A075388 (n + 1) : ℚ) ^ (A008683 (A002146 n).toNat : ℤ)

end

end A075384.P10703345027282913451

/-! ## A075384.P2482386502164605844

`A075362(A075388(n+1)+∑[n])`
-/

namespace A075384.P2482386502164605844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A075388 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A075384.P2482386502164605844

/-! ## A075384.P4164022537314401522

`A075383(∑[n]+1)`
-/

namespace A075384.P4164022537314401522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A075384.P4164022537314401522

/-! ## A075384.P7213194359782651816

`or(char[2], A075383(A000124(n)))`
-/

namespace A075384.P7213194359782651816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A075383 (A000124 n).toNat)

end

end A075384.P7213194359782651816

/-! ## A075384.P13542912362315722399

`A000027(A075383(C(n, 2)+n+1))`
-/

namespace A075384.P13542912362315722399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A075383 (Nat.choose n 2 + (n + 1))).toNat

end

end A075384.P13542912362315722399

/-! ## A075384.P15057013846435439228

`∑{d}[A075383(C(n, 2)+n+1), A000010(#)]`
-/

namespace A075384.P15057013846435439228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (Nat.choose n 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A075384.P15057013846435439228

/-! ## A075384.P4276032888668604896

`A075383(A000124(n))%A006094(n+1)`
-/

namespace A075384.P4276032888668604896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075383 (A000124 n).toNat) (A006094 (n + 1))

end

end A075384.P4276032888668604896

/-! ## A075384.P17176869560674384660

`A075383(A000217(n)+1)%A000302(n+1)`
-/

namespace A075384.P17176869560674384660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075383 (A000217 n + 1).toNat) (A000302 (n + 1))

end

end A075384.P17176869560674384660

/-!
# A075385: Final term of n-th group in A075383.

The programs for A075385, there is no canonical definition to state claims against.
-/

/-! ## A075385.P6203133238513045636

`(n+1)*A075389(n+1)`
-/

namespace A075385.P6203133238513045636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075389 (n + 1)

end

end A075385.P6203133238513045636

/-! ## A075385.P1493024659972624412

`A075383(∑[n+1])`
-/

namespace A075385.P1493024659972624412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075385.P1493024659972624412

/-! ## A075385.P1966015905846215467

`and(-1, A075383(A000217(n+1)))`
-/

namespace A075385.P1966015905846215467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A075383 (A000217 (n + 1)).toNat)

end

end A075385.P1966015905846215467

/-! ## A075385.P14259404971819726741

`∑{d}[A075383(C(n+2, 2)), A000010(#)]`
-/

namespace A075385.P14259404971819726741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (Nat.choose (n + 2) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A075385.P14259404971819726741

/-! ## A075385.P4304653092575682903

`A075383(A000217(n+1))%A099981(n)²`
-/

namespace A075385.P4304653092575682903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075383 (A000217 (n + 1)).toNat) (A099981 n ^ 2)

end

end A075385.P4304653092575682903

/-! ## A075385.P15075969717071624109

`A146076(2*n+1)+A075383(A000217(n+1))`
-/

namespace A075385.P15075969717071624109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (2 * n + 1) + A075383 (A000217 (n + 1)).toNat

end

end A075385.P15075969717071624109

/-! ## A075385.P7039684078905243923

`A075383(A000217(n+1))/gcd(n, A005451(n+1))`
-/

namespace A075385.P7039684078905243923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075383 (A000217 (n + 1)).toNat : ℚ) / (Int.gcd (n : ℤ) (A005451 (n + 1)) : ℚ)

end

end A075385.P7039684078905243923

/-! ## A075385.P3399248790473221479

`A096063(∑[comp[A131577(n)]])`
-/

namespace A075385.P3399248790473221479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096063 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075385.P3399248790473221479

/-!
# A075386: Sum of terms of n-th group in A075383.

The programs for A075386, there is no canonical definition to state claims against.
-/

/-! ## A075386.P18323503984717652427

`(n+1)*A075390(n+1)`
-/

namespace A075386.P18323503984717652427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075390 (n + 1)

end

end A075386.P18323503984717652427

/-! ## A075386.P9185567431730343634

`floor(A000027(n+1)/acot(A075390(n+1)))`
-/

namespace A075386.P9185567431730343634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (n + 1) : ℝ) / SequenceMachineLib.acot (A075390 (n + 1) : ℝ)⌋

end

end A075386.P9185567431730343634

/-! ## A075386.P7891805916714833775

`A075390(A077168(n))*A077168(n)`
-/

namespace A075386.P7891805916714833775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075390 (A077168 n).toNat * A077168 n

end

end A075386.P7891805916714833775

/-!
# A075388: (1/n) times initial term of n-th group in A075383.

The programs for A075388, there is no canonical definition to state claims against.
-/

/-! ## A075388.P3774053362311137235

`A075384(n+1)/(n+1)`
-/

namespace A075388.P3774053362311137235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075384 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075388.P3774053362311137235

/-! ## A075388.P15532837229697775899

`ceil(acot(A000027(n+1))*A075384(n+1))`
-/

namespace A075388.P15532837229697775899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A000027 (n + 1) : ℝ) * (A075384 (n + 1) : ℝ)⌉

end

end A075388.P15532837229697775899

/-! ## A075388.P8753547535759493153

`(n+1)^A008683(A063535(n))*A075384(n+1)`
-/

namespace A075388.P8753547535759493153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A063535 n).toNat : ℤ) * (A075384 (n + 1) : ℚ)

end

end A075388.P8753547535759493153

/-! ## A075388.P872794841714580056

`A075383(∑[n]+1)/(n+1)`
-/

namespace A075388.P872794841714580056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075383 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A075388.P872794841714580056

/-! ## A075388.P15571097860553898130

`1/(n+1)*A075383(C(n, 2)+n+1)`
-/

namespace A075388.P15571097860553898130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A075383 (Nat.choose n 2 + (n + 1)) : ℚ)

end

end A075388.P15571097860553898130

/-! ## A075388.P15960272620041620256

`floor(A075383(A000124(n))/(n+1))`
-/

namespace A075388.P15960272620041620256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075383 (A000124 n).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A075388.P15960272620041620256

/-! ## A075388.P15461844378863198089

`floor(A075383(A000217(n)+1)/(n+1))`
-/

namespace A075388.P15461844378863198089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075383 (A000217 n + 1).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A075388.P15461844378863198089

/-! ## A075388.P5063885814435926732

`A033676(A075384(n+1))`
-/

namespace A075388.P5063885814435926732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A075384 (n + 1)).toNat

end

end A075388.P5063885814435926732

/-! ## A075388.P3912003672266480621

`A060775(lcm(n+1, A075384(n+1)))`
-/

namespace A075388.P3912003672266480621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (Int.lcm (n + 1 : ℤ) (A075384 (n + 1)))

end

end A075388.P3912003672266480621

/-! ## A075388.P13085325049562988900

`A060775(A075384(n+1))%A030430(n+1)`
-/

namespace A075388.P13085325049562988900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060775 (A075384 (n + 1)).toNat) (A030430 (n + 1))

end

end A075388.P13085325049562988900

/-! ## A075388.P11367848502426919613

`A060775(A075384(n+1)%A045032(n+1))`
-/

namespace A075388.P11367848502426919613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (Int.tmod (A075384 (n + 1)) (A045032 (n + 1))).toNat

end

end A075388.P11367848502426919613

/-!
# A075389: (1/n) times final term of n-th group in A075383.

The programs for A075389, there is no canonical definition to state claims against.
-/

/-! ## A075389.P5819653635849162780

`A075385(n+1)/(n+1)`
-/

namespace A075389.P5819653635849162780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075385 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075389.P5819653635849162780

/-! ## A075389.P8700602371820925858

`A075383(∑[n+1])/(n+1)`
-/

namespace A075389.P8700602371820925858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075383 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A075389.P8700602371820925858

/-! ## A075389.P1137094327553101997

`floor(A075383(A000217(n+1))/(n+1))`
-/

namespace A075389.P1137094327553101997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075383 (A000217 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A075389.P1137094327553101997

/-! ## A075389.P10463406852967100241

`∑{d}[A075383(C(n+2, 2)), A000010(#)]/(n+1)`
-/

namespace A075389.P10463406852967100241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (Nat.choose (n + 2) 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A075389.P10463406852967100241

/-! ## A075389.P3781209319730478601

`∑{d}[A075383(A000217(n+1)), A000010(#)]/(n+1)`
-/

namespace A075389.P3781209319730478601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (A000217 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A075389.P3781209319730478601

/-! ## A075389.P124792601702364298

`and(-1, A075383(A000217(n+1)))/A000027(n+1)`
-/

namespace A075389.P124792601702364298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-1) (A075383 (A000217 (n + 1)).toNat) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A075389.P124792601702364298

/-! ## A075389.P16181956625114127203

`(A075383(A000217(n+1))/(n+1))%A048059(n+1)`
-/

namespace A075389.P16181956625114127203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A075383 (A000217 (n + 1)).toNat : ℚ) / (n + 1 : ℚ))) (A048059 (n + 1))

end

end A075389.P16181956625114127203

/-! ## A075389.P5579273934127983397

`A075383(A000217(n+1))^A014963(4*n+2)/(n+1)`
-/

namespace A075389.P5579273934127983397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075383 (A000217 (n + 1)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ) / (n + 1 : ℚ)

end

end A075389.P5579273934127983397

/-! ## A075389.P977535275741041717

`A095165(A075385(n+1))`
-/

namespace A075389.P977535275741041717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095165 (A075385 (n + 1)).toNat

end

end A075389.P977535275741041717

/-!
# A075390: Average of n-th group in A075383.

The programs for A075390, there is no canonical definition to state claims against.
-/

/-! ## A075390.P1756837742984862645

`A075386(n+1)/(n+1)`
-/

namespace A075390.P1756837742984862645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075386 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075390.P1756837742984862645

/-! ## A075390.P9435321504315315116

`ceil(acot(A000027(n+1))*A075386(n+1))`
-/

namespace A075390.P9435321504315315116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A000027 (n + 1) : ℝ) * (A075386 (n + 1) : ℝ)⌉

end

end A075390.P9435321504315315116

/-! ## A075390.P2562442713335861019

`(n+1)^A008683(A007304(n+1))*A075386(n+1)`
-/

namespace A075390.P2562442713335861019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A007304 (n + 1)).toNat : ℤ) * (A075386 (n + 1) : ℚ)

end

end A075390.P2562442713335861019

/-! ## A075390.P11001804678135867268

`(n+1)^A008683(A104887(n+1))*A075386(n+1)`
-/

namespace A075390.P11001804678135867268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A104887 (n + 1)).toNat : ℤ) * (A075386 (n + 1) : ℚ)

end

end A075390.P11001804678135867268

/-! ## A075390.P9330064541027981287

`(n+1)^A008683(A139852(n+1))*A075386(n+1)`
-/

namespace A075390.P9330064541027981287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A139852 (n + 1)).toNat : ℤ) * (A075386 (n + 1) : ℚ)

end

end A075390.P9330064541027981287

/-! ## A075390.P24082195809205326

`(n+1)^A008683(A124273(n+1))*A075386(n+1)`
-/

namespace A075390.P24082195809205326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A124273 (n + 1)).toNat : ℤ) * (A075386 (n + 1) : ℚ)

end

end A075390.P24082195809205326

/-! ## A075390.P13975590148638718252

`(n+1)^A008683(A002385(n+1))*A075386(n+1)`
-/

namespace A075390.P13975590148638718252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A002385 (n + 1)).toNat : ℤ) * (A075386 (n + 1) : ℚ)

end

end A075390.P13975590148638718252

/-!
# A075391: Product/n^n of n-th group in A075383.

The programs for A075391, there is no canonical definition to state claims against.
-/

/-! ## A075391.P6055195985368279682

`A075387(n+1)/(n+1)^(n+1)`
-/

namespace A075391.P6055195985368279682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075387 (n + 1) : ℚ) / ((n + 1) ^ (n + 1) : ℚ)

end

end A075391.P6055195985368279682

/-!
# A075393: Positive integers k that are not divisible by A002034(k).

The programs for A075393, there is no canonical definition to state claims against.
-/

/-! ## A075393.P10485715285283665014

`lt[1, A345932(n+1)]+1`
-/

namespace A075393.P10485715285283665014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A075393.P10485715285283665014

/-! ## A075393.P8080171577680028090

`lt[1, A345932(A028310(n))]`
-/

namespace A075393.P8080171577680028090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075393.P8080171577680028090

/-! ## A075393.P9583418235545942224

`A020725(lt[1, A345932(n+1)])`
-/

namespace A075393.P9583418235545942224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075393.P9583418235545942224

/-! ## A075393.P1881755316146557678

`lt[1, A345932(A138153(n+1))]`
-/

namespace A075393.P1881755316146557678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075393.P1881755316146557678

/-! ## A075393.P11506701618361103595

`lt[A345931(n+1), A002034(n+1)]+1`
-/

namespace A075393.P11506701618361103595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A075393.P11506701618361103595

/-! ## A075393.P2036788978673827979

`A020725(lt[A345931(n+1), A002034(n+1)])`
-/

namespace A075393.P2036788978673827979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075393.P2036788978673827979

/-! ## A075393.P14882721458266209230

`A020725(lt[A345931(n+1)+1, A122416(n+1)])`
-/

namespace A075393.P14882721458266209230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075393.P14882721458266209230

/-! ## A075393.P4966140913864344459

`A020725(lt[A345931(n+1), A061243(n+1)-(n+1)])`
-/

namespace A075393.P4966140913864344459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075393.P4966140913864344459

/-!
# A075394: Numbers n such that S(n-1) < S(n) > S(n+1), where S(n) is the Kempner function A002034(n).

The programs for A075394, there is no canonical definition to state claims against.
-/

/-! ## A075394.P14587717686936477434

`∪[A075395(n+1), A215848(n+1)]`
-/

namespace A075394.P14587717686936477434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075394.P14587717686936477434

/-! ## A075394.P1778695155424891941

`lt[A321721(n), A347299(A111808(n+1))]`
-/

namespace A075394.P1778695155424891941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347299 (A111808 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075394.P1778695155424891941

/-! ## A075394.P17220963665430790361

`lt[A338922(A326849(n)), A247358(n+1)]`
-/

namespace A075394.P17220963665430790361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338922 (A326849 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075394.P17220963665430790361

/-! ## A075394.P13991680988600596828

`eq[A007413(A054429(n+1)), A316827(2*(n+2))]`
-/

namespace A075394.P13991680988600596828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (A054429 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316827 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075394.P13991680988600596828

/-!
# A075395: Composite members of A075394.

The programs for A075395, there is no canonical definition to state claims against.
-/

/-! ## A075395.P8524848628885243243

`filter[A075394(n+1), A005171(#)]`
-/

namespace A075395.P8524848628885243243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A075395.P8524848628885243243

/-! ## A075395.P17636021680676258692

`filter[A075394(n+1), A066247(#)]`
-/

namespace A075395.P17636021680676258692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A075395.P17636021680676258692

/-! ## A075395.P8815277779689687562

`filter[A075394(n+1), A202238(#)]`
-/

namespace A075395.P8815277779689687562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A075395.P8815277779689687562

/-! ## A075395.P7641985636355398717

`filter[A075394(n+1), A292438(#)]`
-/

namespace A075395.P7641985636355398717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A075395.P7641985636355398717

/-! ## A075395.P16065645823065192621

`filter[A075394(n+1), A323162(#)]`
-/

namespace A075395.P16065645823065192621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A075395.P16065645823065192621

/-! ## A075395.P2186666821762187802

`∩[A075394(n+1), A079364(n+1)]`
-/

namespace A075395.P2186666821762187802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P2186666821762187802

/-! ## A075395.P3120507768452670998

`∩[A075394(n+1), A171845(n+1)]`
-/

namespace A075395.P3120507768452670998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P3120507768452670998

/-! ## A075395.P1366195851870708459

`∩[A005381(n+1), A075394(n+1)]`
-/

namespace A075395.P1366195851870708459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P1366195851870708459

/-! ## A075395.P9680212118569830219

`∩[A068780(n+1), A075394(n+1)]`
-/

namespace A075395.P9680212118569830219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P9680212118569830219

/-! ## A075395.P7263153344894331772

`∩[A075394(n+1), A164276(n+1)]`
-/

namespace A075395.P7263153344894331772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P7263153344894331772

/-! ## A075395.P1756792429490330483

`∩[A075394(n+1), A078542(n+1)]`
-/

namespace A075395.P1756792429490330483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P1756792429490330483

/-! ## A075395.P6728564723387956860

`∩[A062973(n+1), A075394(n+1)]`
-/

namespace A075395.P6728564723387956860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P6728564723387956860

/-! ## A075395.P11438441183920569435

`∩[A075394(n+1), A387319(n+1)]`
-/

namespace A075395.P11438441183920569435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P11438441183920569435

/-! ## A075395.P11757018447058234860

`∩[A002808(n+1), A075394(n+1)]`
-/

namespace A075395.P11757018447058234860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P11757018447058234860

/-! ## A075395.P12005002987173464561

`∩[A018252(n+1), A075394(n+1)]`
-/

namespace A075395.P12005002987173464561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P12005002987173464561

/-! ## A075395.P11562662268765623324

`∩[A056653(n+1), A075394(n+1)]`
-/

namespace A075395.P11562662268765623324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P11562662268765623324

/-! ## A075395.P17677499417766844187

`∩[A065090(n+1), A075394(n+1)]`
-/

namespace A075395.P17677499417766844187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P17677499417766844187

/-! ## A075395.P15388852200746281924

`∩[A075394(n+1), A141468(n+1)]`
-/

namespace A075395.P15388852200746281924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P15388852200746281924

/-! ## A075395.P7542711338164222201

`∩[A075394(n+1), A176423(n+1)]`
-/

namespace A075395.P7542711338164222201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P7542711338164222201

/-! ## A075395.P13266757913855848403

`∩[A075394(n+1), A171581(n+1)]`
-/

namespace A075395.P13266757913855848403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075395.P13266757913855848403

/-!
# A075396: Numbers n such that S(n-1) > S(n) < S(n+1), where S(n) = A002034(n).

The programs for A075396, there is no canonical definition to state claims against.
-/

/-! ## A075396.P10818821409856726841

`A323648(n+4)+A286922(A000079(n))`
-/

namespace A075396.P10818821409856726841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323648 (n + 4) + A286922 (A000079 n).toNat

end

end A075396.P10818821409856726841

/-! ## A075396.P8482166078426001928

`lt[A006942(A300787(n)), A048259(n)]`
-/

namespace A075396.P8482166078426001928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (A300787 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048259 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075396.P8482166078426001928

/-! ## A075396.P6205174124659499247

`lt[A057937(A055932(n+1)), A326842(n)]`
-/

namespace A075396.P6205174124659499247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057937 (A055932 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075396.P6205174124659499247

/-! ## A075396.P17098361078583511760

`A075027(n+2)-A136522(A228205(n+2))`
-/

namespace A075396.P17098361078583511760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 2) - A136522 (A228205 (n + 2)).toNat

end

end A075396.P17098361078583511760

/-! ## A075396.P13141690669093717189

`A279029(n+5)-A010815(A245824(n+2))`
-/

namespace A075396.P13141690669093717189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 5) - A010815 (A245824 (n + 2)).toNat

end

end A075396.P13141690669093717189

/-!
# A075399: Largest multiple of n using only nonzero digits with digit sum n, or 0 if no such multiple exists.

The programs for A075399, there is no canonical definition to state claims against.
-/

/-! ## A075399.P9591900398992347118

`(n+1)*A075400(n+1)`
-/

namespace A075399.P9591900398992347118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075400 (n + 1)

end

end A075399.P9591900398992347118

/-! ## A075399.P17066447001728741085

`A075400(n+1)*A199343(n)`
-/

namespace A075399.P17066447001728741085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075400 (n + 1) * A199343 n

end

end A075399.P17066447001728741085

/-! ## A075399.P10276731182067573560

`A075400(A077168(n))*A077168(n)`
-/

namespace A075399.P10276731182067573560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075400 (A077168 n).toNat * A077168 n

end

end A075399.P10276731182067573560

/-! ## A075399.P750371153569940597

`A079840(A001104(n+1))`
-/

namespace A075399.P750371153569940597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079840 (A001104 (n + 1)).toNat

end

end A075399.P750371153569940597

