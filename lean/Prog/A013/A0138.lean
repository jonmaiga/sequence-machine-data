import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C040
import Seq.B000.C045
import Seq.B001.C000
import Seq.Opaque.C000
import Seq.Opaque.C001

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A013800: 

The programs for A013800, there is no canonical definition to state claims against.
-/

/-! ## A013800.P5132665371345325123

`14^(4*n+1)`
-/

namespace A013800.P5132665371345325123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ (4 * n + 1)

end

end A013800.P5132665371345325123

/-! ## A013800.P4550035504580069538

`record[14^Δ[-(n*(-1)^n)]]`
-/

namespace A013800.P4550035504580069538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013800.P4550035504580069538

/-! ## A013800.P17563074979349175861

`a(n-1)/(1/14)²²` with `a(0)=14`
-/

namespace A013800.P17563074979349175861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [14] fun n a =>
  a (n - 1) / (((1 : ℚ) / 14) ^ 2) ^ 2

end

end A013800.P17563074979349175861

/-! ## A013800.P14651857504152585933

`A013719(2*n)`
-/

namespace A013800.P14651857504152585933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013719 (2 * n)

end

end A013800.P14651857504152585933

/-! ## A013800.P11606040848291689273

`A013719(n)²/14`
-/

namespace A013800.P11606040848291689273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013719 n ^ 2 : ℚ) / 14

end

end A013800.P11606040848291689273

/-!
# A013801: 

The programs for A013801, there is no canonical definition to state claims against.
-/

/-! ## A013801.P16528338686311939261

`record[14^xor(3, n)]`
-/

namespace A013801.P16528338686311939261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013801.P16528338686311939261

/-! ## A013801.P10510423847693204479

`14^(4*n+3)`
-/

namespace A013801.P10510423847693204479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ (4 * n + 3)

end

end A013801.P10510423847693204479

/-! ## A013801.P13478161295937853896

`A013719(Δ[n²])`
-/

namespace A013801.P13478161295937853896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013719 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013801.P13478161295937853896

/-! ## A013801.P329344891226997263

`14*A013719(n)²`
-/

namespace A013801.P329344891226997263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A013719 n ^ 2

end

end A013801.P329344891226997263

/-! ## A013801.P7544474847359966187

`record[14^A004444(n)]`
-/

namespace A013801.P7544474847359966187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (A004444 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013801.P7544474847359966187

/-!
# A013802: 

The programs for A013802, there is no canonical definition to state claims against.
-/

/-! ## A013802.P17418393263384472024

`15^(4*n+1)`
-/

namespace A013802.P17418393263384472024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ (4 * n + 1)

end

end A013802.P17418393263384472024

/-! ## A013802.P7534636336608474594

`record[15^abs(Δ[xor(1, n²)])]`
-/

namespace A013802.P7534636336608474594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (|(f2 (n + 1) : ℤ) - (f2 n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013802.P7534636336608474594

/-! ## A013802.P8070230222959119199

`record[15^(lcm(2, n+1)-1)]`
-/

namespace A013802.P8070230222959119199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ ((Nat.lcm 2 (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013802.P8070230222959119199

/-! ## A013802.P6428594024834639425

`a(n-1)/(1/15)²²` with `a(0)=15`
-/

namespace A013802.P6428594024834639425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [15] fun n a =>
  a (n - 1) / (((1 : ℚ) / 15) ^ 2) ^ 2

end

end A013802.P6428594024834639425

/-! ## A013802.P2259972323345982402

`record[15^(2*n^(n%2)-1)]`
-/

namespace A013802.P2259972323345982402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ ((2 * n ^ (n % 2) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013802.P2259972323345982402

/-!
# A013803: 

The programs for A013803, there is no canonical definition to state claims against.
-/

/-! ## A013803.P7086067937403620286

`record[15^xor(3, n)]`
-/

namespace A013803.P7086067937403620286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013803.P7086067937403620286

/-! ## A013803.P3907870751515643357

`15^(4*n+3)`
-/

namespace A013803.P3907870751515643357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ (4 * n + 3)

end

end A013803.P3907870751515643357

/-! ## A013803.P1084860892997869967

`A013720(Δ[n²])`
-/

namespace A013803.P1084860892997869967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013803.P1084860892997869967

/-! ## A013803.P16741868270684848055

`record[A013720(xor(1, n))]`
-/

namespace A013803.P16741868270684848055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013720 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013803.P16741868270684848055

/-! ## A013803.P9440479455945541268

`record[15^A004444(n)]`
-/

namespace A013803.P9440479455945541268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (A004444 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013803.P9440479455945541268

/-!
# A013804: 

The programs for A013804, there is no canonical definition to state claims against.
-/

/-! ## A013804.P17828477342659355620

`4^(8*n+2)`
-/

namespace A013804.P17828477342659355620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (8 * n + 2)

end

end A013804.P17828477342659355620

/-! ## A013804.P2420045044003539472

`(4^or(1, 4*n))²`
-/

namespace A013804.P2420045044003539472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ Nat.lor 1 (4 * n)) ^ 2

end

end A013804.P2420045044003539472

/-! ## A013804.P10118375452968406662

`(4^xor(1, 4*n))²`
-/

namespace A013804.P10118375452968406662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ Nat.xor 1 (4 * n)) ^ 2

end

end A013804.P10118375452968406662

/-! ## A013804.P4058132623370221192

`(4^Δ[C(2*n, 2)])²`
-/

namespace A013804.P4058132623370221192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)) ^ 2

end

end A013804.P4058132623370221192

/-! ## A013804.P18040115333845544839

`record[4^(lcm(4, n+1)-2)]`
-/

namespace A013804.P18040115333845544839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((Nat.lcm 4 (n + 1) : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013804.P18040115333845544839

/-!
# A013805: 

The programs for A013805, there is no canonical definition to state claims against.
-/

/-! ## A013805.P5916811669736680674

`record[16^xor(3, n)]`
-/

namespace A013805.P5916811669736680674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013805.P5916811669736680674

/-! ## A013805.P11076577055156833401

`4^(8*n+6)`
-/

namespace A013805.P11076577055156833401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (8 * n + 6)

end

end A013805.P11076577055156833401

/-! ## A013805.P286801078689297552

`record[(-4)^or(6, n)]`
-/

namespace A013805.P286801078689297552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013805.P286801078689297552

/-! ## A013805.P13357948599120303405

`(4^xor(3, 4*n))²`
-/

namespace A013805.P13357948599120303405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ Nat.xor 3 (4 * n)) ^ 2

end

end A013805.P13357948599120303405

/-! ## A013805.P1131164858894770615

`(2^or(6, 8*n))²`
-/

namespace A013805.P1131164858894770615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.lor 6 (8 * n)) ^ 2

end

end A013805.P1131164858894770615

/-!
# A013806: 

The programs for A013806, there is no canonical definition to state claims against.
-/

/-! ## A013806.P8602345919239471390

`17^(4*n+1)`
-/

namespace A013806.P8602345919239471390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (4 * n + 1)

end

end A013806.P8602345919239471390

/-! ## A013806.P4909273756739448531

`record[17^Δ[-(n*(-1)^n)]]`
-/

namespace A013806.P4909273756739448531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013806.P4909273756739448531

/-! ## A013806.P10819500312414942442

`a(n-1)/(1/17)²²` with `a(0)=17`
-/

namespace A013806.P10819500312414942442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [17] fun n a =>
  a (n - 1) / (((1 : ℚ) / 17) ^ 2) ^ 2

end

end A013806.P10819500312414942442

/-! ## A013806.P2392184258188208311

`A013722(2*n)`
-/

namespace A013806.P2392184258188208311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013722 (2 * n)

end

end A013806.P2392184258188208311

/-! ## A013806.P12639820867327418671

`A001026(4*n+1)`
-/

namespace A013806.P12639820867327418671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 (4 * n + 1)

end

end A013806.P12639820867327418671

/-!
# A013807: 

The programs for A013807, there is no canonical definition to state claims against.
-/

/-! ## A013807.P16719849870928780217

`record[17^xor(3, n)]`
-/

namespace A013807.P16719849870928780217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013807.P16719849870928780217

/-! ## A013807.P10681349031684952022

`17^(4*n+3)`
-/

namespace A013807.P10681349031684952022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (4 * n + 3)

end

end A013807.P10681349031684952022

/-! ## A013807.P12353625613890196068

`A013722(Δ[n²])`
-/

namespace A013807.P12353625613890196068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013722 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013807.P12353625613890196068

/-! ## A013807.P11142969252667423685

`17*A013722(n)²`
-/

namespace A013807.P11142969252667423685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A013722 n ^ 2

end

end A013807.P11142969252667423685

/-! ## A013807.P3584677053309509324

`record[17^A059029(n+1)]`
-/

namespace A013807.P3584677053309509324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (A059029 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013807.P3584677053309509324

/-!
# A013808: 

The programs for A013808, there is no canonical definition to state claims against.
-/

/-! ## A013808.P14489353405164676184

`18^(4*n+1)`
-/

namespace A013808.P14489353405164676184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ (4 * n + 1)

end

end A013808.P14489353405164676184

/-! ## A013808.P3797917766804170640

`floor(18^Δ[C(2*n, 2)])`
-/

namespace A013808.P3797917766804170640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(18 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)⌋

end

end A013808.P3797917766804170640

/-! ## A013808.P6177254394773141149

`a(n-1)/(1/18)²²` with `a(0)=18`
-/

namespace A013808.P6177254394773141149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [18] fun n a =>
  a (n - 1) / (((1 : ℚ) / 18) ^ 2) ^ 2

end

end A013808.P6177254394773141149

/-! ## A013808.P6293565801811922325

`record[18^(2*n^(n%2)-1)]`
-/

namespace A013808.P6293565801811922325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 : ℚ) ^ ((2 * n ^ (n % 2) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013808.P6293565801811922325

/-! ## A013808.P9022292015313920877

`18*18*18*18*a(n-1)` with `a(0)=18`
-/

namespace A013808.P9022292015313920877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18] fun n a =>
  18 * (18 * (18 * (18 * a (n - 1))))

end

end A013808.P9022292015313920877

/-!
# A013809: 

The programs for A013809, there is no canonical definition to state claims against.
-/

/-! ## A013809.P11119561116169985294

`record[18^xor(3, n)]`
-/

namespace A013809.P11119561116169985294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013809.P11119561116169985294

/-! ## A013809.P5819170439592649001

`18^(4*n+3)`
-/

namespace A013809.P5819170439592649001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ (4 * n + 3)

end

end A013809.P5819170439592649001

/-! ## A013809.P17246481226989475249

`A013723(Δ[n²])`
-/

namespace A013809.P17246481226989475249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013723 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013809.P17246481226989475249

/-! ## A013809.P14249281758307845092

`18*A013723(n)²`
-/

namespace A013809.P14249281758307845092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A013723 n ^ 2

end

end A013809.P14249281758307845092

/-! ## A013809.P17531546781337609792

`record[18^A166519(n)]`
-/

namespace A013809.P17531546781337609792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 : ℚ) ^ (A166519 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013809.P17531546781337609792

/-!
# A013810: 

The programs for A013810, there is no canonical definition to state claims against.
-/

/-! ## A013810.P5756626560156153115

`19^(4*n+1)`
-/

namespace A013810.P5756626560156153115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ (4 * n + 1)

end

end A013810.P5756626560156153115

/-! ## A013810.P10823845063942488113

`a(n-1)/(1/19)²²` with `a(0)=19`
-/

namespace A013810.P10823845063942488113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [19] fun n a =>
  a (n - 1) / (((1 : ℚ) / 19) ^ 2) ^ 2

end

end A013810.P10823845063942488113

/-! ## A013810.P6920024647277276586

`record[19^(2*n^(n%2)-1)]`
-/

namespace A013810.P6920024647277276586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (19 : ℚ) ^ ((2 * n ^ (n % 2) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013810.P6920024647277276586

/-! ## A013810.P12926839409912424104

`A013724(2*n)`
-/

namespace A013810.P12926839409912424104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013724 (2 * n)

end

end A013810.P12926839409912424104

/-! ## A013810.P16830790744765269738

`record[19^A009001(n)]`
-/

namespace A013810.P16830790744765269738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (19 : ℚ) ^ (A009001 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013810.P16830790744765269738

/-!
# A013811: 

The programs for A013811, there is no canonical definition to state claims against.
-/

/-! ## A013811.P1766401864946734262

`record[19^xor(3, n)]`
-/

namespace A013811.P1766401864946734262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013811.P1766401864946734262

/-! ## A013811.P15427144235685035645

`19^(4*n+3)`
-/

namespace A013811.P15427144235685035645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ (4 * n + 3)

end

end A013811.P15427144235685035645

/-! ## A013811.P13531908027565144648

`A013724(Δ[n²])`
-/

namespace A013811.P13531908027565144648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013724 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013811.P13531908027565144648

/-! ## A013811.P7110673252164176002

`A017961(Δ[A002943(n)])`
-/

namespace A013811.P7110673252164176002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 (f1 (n + 1) - f1 n).toNat

end

end A013811.P7110673252164176002

/-! ## A013811.P6500978270386664137

`A001029(2*(n+1))*A013724(n)`
-/

namespace A013811.P6500978270386664137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 (2 * (n + 1)) * A013724 n

end

end A013811.P6500978270386664137

/-!
# A013812: 

The programs for A013812, there is no canonical definition to state claims against.
-/

/-! ## A013812.P10136761950371412043

`20^(4*n+1)`
-/

namespace A013812.P10136761950371412043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ (4 * n + 1)

end

end A013812.P10136761950371412043

/-! ## A013812.P9078066815624265851

`record[20^(xor(3, n)-2)]`
-/

namespace A013812.P9078066815624265851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ ((Nat.xor 3 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013812.P9078066815624265851

/-! ## A013812.P3618940840456162615

`record[20^(lcm(2, n+1)-1)]`
-/

namespace A013812.P3618940840456162615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ ((Nat.lcm 2 (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013812.P3618940840456162615

/-! ## A013812.P1016223646449632869

`a(n-1)/(1/20)²²` with `a(0)=20`
-/

namespace A013812.P1016223646449632869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [20] fun n a =>
  a (n - 1) / (((1 : ℚ) / 20) ^ 2) ^ 2

end

end A013812.P1016223646449632869

/-! ## A013812.P15942166225249843502

`record[20^(2*n^(n%2)-1)]`
-/

namespace A013812.P15942166225249843502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ ((2 * n ^ (n % 2) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013812.P15942166225249843502

/-!
# A013813: 

The programs for A013813, there is no canonical definition to state claims against.
-/

/-! ## A013813.P18103240881244025911

`record[20^xor(3, n)]`
-/

namespace A013813.P18103240881244025911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013813.P18103240881244025911

/-! ## A013813.P14050274687342549255

`20^(4*n+3)`
-/

namespace A013813.P14050274687342549255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ (4 * n + 3)

end

end A013813.P14050274687342549255

/-! ## A013813.P7262114711464241016

`A013725(Δ[n²])`
-/

namespace A013813.P7262114711464241016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013725 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013813.P7262114711464241016

/-! ## A013813.P12293211599580690592

`record[20^A004444(n)]`
-/

namespace A013813.P12293211599580690592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ (A004444 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013813.P12293211599580690592

/-! ## A013813.P2982213511334844291

`A018033(3*record[xor(3, n)])`
-/

namespace A013813.P2982213511334844291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018033 (3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A013813.P2982213511334844291

/-!
# A013814: 

The programs for A013814, there is no canonical definition to state claims against.
-/

/-! ## A013814.P6490830608075392378

`21^(4*n+1)`
-/

namespace A013814.P6490830608075392378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ (4 * n + 1)

end

end A013814.P6490830608075392378

/-! ## A013814.P5656327260536229

`a(n-1)/(1/21)²²` with `a(0)=21`
-/

namespace A013814.P5656327260536229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [21] fun n a =>
  a (n - 1) / (((1 : ℚ) / 21) ^ 2) ^ 2

end

end A013814.P5656327260536229

/-! ## A013814.P15371444428454789490

`A013726(2*n)`
-/

namespace A013814.P15371444428454789490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013726 (2 * n)

end

end A013814.P15371444428454789490

/-! ## A013814.P5963486795852493363

`A013726(n)²/21`
-/

namespace A013814.P5963486795852493363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013726 n ^ 2 : ℚ) / 21

end

end A013814.P5963486795852493363

/-! ## A013814.P11941064945369635668

`record[21^A009001(n)]`
-/

namespace A013814.P11941064945369635668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A009001 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013814.P11941064945369635668

/-!
# A013815: 

The programs for A013815, there is no canonical definition to state claims against.
-/

/-! ## A013815.P7563182744196582949

`record[21^xor(3, n)]`
-/

namespace A013815.P7563182744196582949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013815.P7563182744196582949

/-! ## A013815.P7692560132416840356

`21^(4*n+3)`
-/

namespace A013815.P7692560132416840356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ (4 * n + 3)

end

end A013815.P7692560132416840356

/-! ## A013815.P13676329711409871586

`A013726(Δ[n²])`
-/

namespace A013815.P13676329711409871586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013726 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013815.P13676329711409871586

/-! ## A013815.P17251930172297384063

`21*A013726(n)²`
-/

namespace A013815.P17251930172297384063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A013726 n ^ 2

end

end A013815.P17251930172297384063

/-! ## A013815.P7415299819489329982

`record[21^A166519(n)]`
-/

namespace A013815.P7415299819489329982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A166519 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013815.P7415299819489329982

/-!
# A013816: 

The programs for A013816, there is no canonical definition to state claims against.
-/

/-! ## A013816.P10053641219939699373

`22^(4*n+1)`
-/

namespace A013816.P10053641219939699373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ (4 * n + 1)

end

end A013816.P10053641219939699373

/-! ## A013816.P16969233884421548192

`a(n-1)/(1/22)²²` with `a(0)=22`
-/

namespace A013816.P16969233884421548192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [22] fun n a =>
  a (n - 1) / (((1 : ℚ) / 22) ^ 2) ^ 2

end

end A013816.P16969233884421548192

/-! ## A013816.P9424693256423599446

`record[22^(2*n^(n%2)-1)]`
-/

namespace A013816.P9424693256423599446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ ((2 * n ^ (n % 2) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013816.P9424693256423599446

/-! ## A013816.P4413518287591955110

`record[22^(lcm(2, n+1)/(xor(2, n)-n))]`
-/

namespace A013816.P4413518287591955110
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (22 : ℝ) ^ ((Nat.lcm 2 (n + 1) : ℚ) / ((Nat.xor 2 n : ℤ) - (n : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013816.P4413518287591955110

/-! ## A013816.P15681891958461686964

`A013727(2*n)`
-/

namespace A013816.P15681891958461686964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013727 (2 * n)

end

end A013816.P15681891958461686964

/-!
# A013817: 

The programs for A013817, there is no canonical definition to state claims against.
-/

/-! ## A013817.P9899782624136435500

`record[22^xor(3, n)]`
-/

namespace A013817.P9899782624136435500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013817.P9899782624136435500

/-! ## A013817.P4983384162443479841

`22^(4*n+3)`
-/

namespace A013817.P4983384162443479841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ (4 * n + 3)

end

end A013817.P4983384162443479841

/-! ## A013817.P15109278680646398319

`A013727(Δ[n²])`
-/

namespace A013817.P15109278680646398319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013727 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013817.P15109278680646398319

/-! ## A013817.P8487795392297424596

`record[22^A065259(n+1)]`
-/

namespace A013817.P8487795392297424596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ (A065259 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013817.P8487795392297424596

/-!
# A013818: 

The programs for A013818, there is no canonical definition to state claims against.
-/

/-! ## A013818.P10660744106906633222

`23^(4*n+1)`
-/

namespace A013818.P10660744106906633222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ (4 * n + 1)

end

end A013818.P10660744106906633222

/-! ## A013818.P8615757449940574423

`record[23^abs(Δ[xor(1, n²)])]`
-/

namespace A013818.P8615757449940574423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) ^ (|(f2 (n + 1) : ℤ) - (f2 n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013818.P8615757449940574423

/-! ## A013818.P13178454730223790707

`record[23^(lcm(2, n+1)-1)]`
-/

namespace A013818.P13178454730223790707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) ^ ((Nat.lcm 2 (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013818.P13178454730223790707

/-! ## A013818.P12466101980182133365

`a(n-1)/(1/23)²²` with `a(0)=23`
-/

namespace A013818.P12466101980182133365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [23] fun n a =>
  a (n - 1) / (((1 : ℚ) / 23) ^ 2) ^ 2

end

end A013818.P12466101980182133365

/-! ## A013818.P10825360378292839398

`record[23^(2*n^(n%2)-1)]`
-/

namespace A013818.P10825360378292839398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) ^ ((2 * n ^ (n % 2) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013818.P10825360378292839398

/-!
# A013819: 

The programs for A013819, there is no canonical definition to state claims against.
-/

/-! ## A013819.P3951858976972521223

`record[23^xor(3, n)]`
-/

namespace A013819.P3951858976972521223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013819.P3951858976972521223

/-! ## A013819.P13719758104320330363

`23^(4*n+3)`
-/

namespace A013819.P13719758104320330363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ (4 * n + 3)

end

end A013819.P13719758104320330363

/-! ## A013819.P3863693688261241416

`A013728(Δ[n²])`
-/

namespace A013819.P3863693688261241416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013728 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013819.P3863693688261241416

/-! ## A013819.P15930786210767977661

`23*A013728(n)²`
-/

namespace A013819.P15930786210767977661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A013728 n ^ 2

end

end A013819.P15930786210767977661

/-! ## A013819.P1163311442640205730

`or(1, A013728(2*n+1))`
-/

namespace A013819.P1163311442640205730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013728 (2 * n + 1))

end

end A013819.P1163311442640205730

/-!
# A013820: 

The programs for A013820, there is no canonical definition to state claims against.
-/

/-! ## A013820.P2208361833929930946

`24^(4*n+1)`
-/

namespace A013820.P2208361833929930946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ (4 * n + 1)

end

end A013820.P2208361833929930946

/-! ## A013820.P7949342205170336729

`record[gcd(4, n)!^(n+1)]`
-/

namespace A013820.P7949342205170336729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 4 n) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013820.P7949342205170336729

/-! ## A013820.P5187517439723057133

`record[24^(2*xor(1, n)-1)]`
-/

namespace A013820.P5187517439723057133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 : ℚ) ^ ((2 * Nat.xor 1 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013820.P5187517439723057133

/-! ## A013820.P18403233695273379087

`record[24^Δ[-(n*(-1)^n)]]`
-/

namespace A013820.P18403233695273379087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013820.P18403233695273379087

/-! ## A013820.P6334024039546405065

`a(n-1)/(1/24)²²` with `a(0)=24`
-/

namespace A013820.P6334024039546405065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [24] fun n a =>
  a (n - 1) / (((1 : ℚ) / 24) ^ 2) ^ 2

end

end A013820.P6334024039546405065

/-!
# A013821: 

The programs for A013821, there is no canonical definition to state claims against.
-/

/-! ## A013821.P13758884469958454942

`24^record[xor(3, n)]`
-/

namespace A013821.P13758884469958454942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013821.P13758884469958454942

/-! ## A013821.P18176393282220091339

`24^(4*n+3)`
-/

namespace A013821.P18176393282220091339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ (4 * n + 3)

end

end A013821.P18176393282220091339

/-! ## A013821.P17885557371899966194

`A013729(Δ[n²])`
-/

namespace A013821.P17885557371899966194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013729 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013821.P17885557371899966194

/-! ## A013821.P13823325607618167792

`record[A013729(xor(1, n))]`
-/

namespace A013821.P13823325607618167792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013729 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013821.P13823325607618167792

/-! ## A013821.P1625566621590367035

`record[24^A166519(n)]`
-/

namespace A013821.P1625566621590367035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 : ℚ) ^ (A166519 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013821.P1625566621590367035

/-!
# A013822: a(n) = 2^(5*n + 1).

The programs for A013822, the canonical program `A013822.P17731622055345328102` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013822 has offset 0).

The definition of A013822 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(5*n+1)` (program `A013822.P17731622055345328102`, by `A013822.P17731622055345328102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013822.P559707538797817953

`ogf(2/(1-32x))`
-/

namespace A013822.P559707538797817953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -32] n

end

end A013822.P559707538797817953

namespace A013822

/-- `ogf(2/(1-32x))` -/
def P559707538797817953.Spec : Prop :=
  ∀ n, P559707538797817953.a n = A013822 n

end A013822

/-! ## A013822.P17731622055345328102

`2^(5*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013822

/-- `2^(5*n+1)` -/
def P17731622055345328102.Spec : Prop :=
  ∀ n, (P17731622055345328102.a n : ℤ) = A013822 n

theorem P17731622055345328102.correct : P17731622055345328102.Spec := by
  intro n
  simp only [A013822]

end A013822

/-! ## A013822.P16219435347432863530

`32*a(n-1)` with `a(0)=2`
-/

namespace A013822.P16219435347432863530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  32 * a (n - 1)

end

end A013822.P16219435347432863530

namespace A013822

/-- `32*a(n-1)` -/
def P16219435347432863530.Spec : Prop :=
  ∀ n, (P16219435347432863530.a n : ℤ) = A013822 n

theorem P16219435347432863530.correct : P16219435347432863530.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013822, Nat.add_sub_cancel, A013822.P16219435347432863530.a, A013822.P17731622055345328102.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013822, Nat.add_sub_cancel, A013822.P16219435347432863530.a, A013822.P17731622055345328102.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013822

/-! ## A013822.P1712072720690525013

`2*A009976(n)`
-/

namespace A013822.P1712072720690525013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009976 n

end

end A013822.P1712072720690525013

namespace A013822

/-- `2*A009976(n)` -/
def P1712072720690525013.Spec : Prop :=
  ∀ n, P1712072720690525013.a n = A013822 n

end A013822

/-! ## A013822.P9025018535194878594

`A000079(A016861(n))`
-/

namespace A013822.P9025018535194878594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A016861 n).toNat

end

end A013822.P9025018535194878594

namespace A013822

/-- `A000079(A016861(n))` -/
def P9025018535194878594.Spec : Prop :=
  ∀ n, P9025018535194878594.a n = A013822 n

end A013822

/-! ## A013822.P1300403621201800147

`A013823(n)/2`
-/

namespace A013822.P1300403621201800147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013823 n : ℚ) / 2

end

end A013822.P1300403621201800147

namespace A013822

/-- `A013823(n)/2` -/
def P1300403621201800147.Spec : Prop :=
  ∀ n, P1300403621201800147.a n = (A013822 n : ℚ)

theorem P1300403621201800147.correct : P1300403621201800147.Spec := by
  intro n
  simp only [A013822, Nat.add_sub_cancel, A013822.P1300403621201800147.a, A013822.P17731622055345328102.a, A013823, A013823.P13296377485291357389.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013822

/-! ## A013822.P660095915415940743

`A135530(10*n)`
-/

namespace A013822.P660095915415940743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (10 * n)

end

end A013822.P660095915415940743

namespace A013822

/-- `A135530(10*n)` -/
def P660095915415940743.Spec : Prop :=
  ∀ n, P660095915415940743.a n = A013822 n

end A013822

/-! ## A013822.P6311778310189330395

`A000079(5*n+1)`
-/

namespace A013822.P6311778310189330395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (5 * n + 1)

end

end A013822.P6311778310189330395

namespace A013822

/-- `A000079(5*n+1)` -/
def P6311778310189330395.Spec : Prop :=
  ∀ n, P6311778310189330395.a n = A013822 n

end A013822

/-! ## A013822.P4680981819809334150

`A171869(5*(n+1))`
-/

namespace A013822.P4680981819809334150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171869 (5 * (n + 1))

end

end A013822.P4680981819809334150

namespace A013822

/-- `A171869(5*(n+1))` -/
def P4680981819809334150.Spec : Prop :=
  ∀ n, P4680981819809334150.a n = A013822 n

end A013822

/-! ## A013822.P367363247177633669

`2*A000079(5*n)`
-/

namespace A013822.P367363247177633669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 (5 * n)

end

end A013822.P367363247177633669

namespace A013822

/-- `2*A000079(5*n)` -/
def P367363247177633669.Spec : Prop :=
  ∀ n, P367363247177633669.a n = A013822 n

theorem P367363247177633669.correct : P367363247177633669.Spec := by
  intro n
  simp only [A013822, Nat.add_sub_cancel, A013822.P367363247177633669.a, A013822.P17731622055345328102.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013822

/-!
# A013823: a(n) = 2^(5*n + 2).

The programs for A013823, the canonical program `A013823.P13296377485291357389` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013823 has offset 0).

The definition of A013823 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(5*n+2)` (program `A013823.P13296377485291357389`, by `A013823.P13296377485291357389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013823.P17761421995071325652

`ogf(4/(1-32x))`
-/

namespace A013823.P17761421995071325652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -32] n

end

end A013823.P17761421995071325652

namespace A013823

/-- `ogf(4/(1-32x))` -/
def P17761421995071325652.Spec : Prop :=
  ∀ n, P17761421995071325652.a n = A013823 n

end A013823

/-! ## A013823.P13296377485291357389

`2^(5*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013823

/-- `2^(5*n+2)` -/
def P13296377485291357389.Spec : Prop :=
  ∀ n, (P13296377485291357389.a n : ℤ) = A013823 n

theorem P13296377485291357389.correct : P13296377485291357389.Spec := by
  intro n
  simp only [A013823]

end A013823

/-! ## A013823.P9682421061879669868

`32*a(n-1)` with `a(0)=4`
-/

namespace A013823.P9682421061879669868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  32 * a (n - 1)

end

end A013823.P9682421061879669868

namespace A013823

/-- `32*a(n-1)` -/
def P9682421061879669868.Spec : Prop :=
  ∀ n, (P9682421061879669868.a n : ℤ) = A013823 n

theorem P9682421061879669868.correct : P9682421061879669868.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013823, Nat.add_sub_cancel, A013823.P9682421061879669868.a, A013823.P13296377485291357389.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013823, Nat.add_sub_cancel, A013823.P9682421061879669868.a, A013823.P13296377485291357389.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013823

/-! ## A013823.P10183493402073237752

`2*A013822(n)`
-/

namespace A013823.P10183493402073237752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013822 n

end

end A013823.P10183493402073237752

namespace A013823

/-- `2*A013822(n)` -/
def P10183493402073237752.Spec : Prop :=
  ∀ n, P10183493402073237752.a n = A013823 n

theorem P10183493402073237752.correct : P10183493402073237752.Spec := by
  intro n
  simp only [A013823, Nat.add_sub_cancel, A013823.P10183493402073237752.a, A013823.P13296377485291357389.a, A013822, A013822.P17731622055345328102.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013823

/-! ## A013823.P7974455498183287097

`4*A009976(n)`
-/

namespace A013823.P7974455498183287097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A009976 n

end

end A013823.P7974455498183287097

namespace A013823

/-- `4*A009976(n)` -/
def P7974455498183287097.Spec : Prop :=
  ∀ n, P7974455498183287097.a n = A013823 n

end A013823

/-! ## A013823.P5649692884682505819

`A000079(A016873(n))`
-/

namespace A013823.P5649692884682505819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A016873 n).toNat

end

end A013823.P5649692884682505819

namespace A013823

/-- `A000079(A016873(n))` -/
def P5649692884682505819.Spec : Prop :=
  ∀ n, P5649692884682505819.a n = A013823 n

end A013823

/-! ## A013823.P3012391143697846667

`A013824(n)/2`
-/

namespace A013823.P3012391143697846667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013824 n : ℚ) / 2

end

end A013823.P3012391143697846667

namespace A013823

/-- `A013824(n)/2` -/
def P3012391143697846667.Spec : Prop :=
  ∀ n, P3012391143697846667.a n = (A013823 n : ℚ)

theorem P3012391143697846667.correct : P3012391143697846667.Spec := by
  intro n
  simp only [A013823, Nat.add_sub_cancel, A013823.P3012391143697846667.a, A013823.P13296377485291357389.a, A013824, A013824.P9397672784032918292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013823

/-! ## A013823.P15740054641178187698

`A020707(5*n)`
-/

namespace A013823.P15740054641178187698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (5 * n)

end

end A013823.P15740054641178187698

namespace A013823

/-- `A020707(5*n)` -/
def P15740054641178187698.Spec : Prop :=
  ∀ n, P15740054641178187698.a n = A013823 n

end A013823

/-! ## A013823.P6751839821966962118

`A112032(10*n)`
-/

namespace A013823.P6751839821966962118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 (10 * n)

end

end A013823.P6751839821966962118

namespace A013823

/-- `A112032(10*n)` -/
def P6751839821966962118.Spec : Prop :=
  ∀ n, P6751839821966962118.a n = A013823 n

end A013823

/-! ## A013823.P861196259573537827

`A016116(5*(2*n+1))`
-/

namespace A013823.P861196259573537827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (5 * (2 * n + 1))

end

end A013823.P861196259573537827

namespace A013823

/-- `A016116(5*(2*n+1))` -/
def P861196259573537827.Spec : Prop :=
  ∀ n, P861196259573537827.a n = A013823 n

end A013823

/-!
# A013824: a(n) = 2^(5*n + 3).

The programs for A013824, the canonical program `A013824.P9397672784032918292` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013824 has offset 0).

The definition of A013824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(5*n+3)` (program `A013824.P9397672784032918292`, by `A013824.P9397672784032918292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013824.P11049389218267821109

`ogf(8/(1-32x))`
-/

namespace A013824.P11049389218267821109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -32] n

end

end A013824.P11049389218267821109

namespace A013824

/-- `ogf(8/(1-32x))` -/
def P11049389218267821109.Spec : Prop :=
  ∀ n, P11049389218267821109.a n = A013824 n

end A013824

/-! ## A013824.P9397672784032918292

`2^(5*n+3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013824

/-- `2^(5*n+3)` -/
def P9397672784032918292.Spec : Prop :=
  ∀ n, (P9397672784032918292.a n : ℤ) = A013824 n

theorem P9397672784032918292.correct : P9397672784032918292.Spec := by
  intro n
  simp only [A013824]

end A013824

/-! ## A013824.P875894074671462372

`32*a(n-1)` with `a(0)=8`
-/

namespace A013824.P875894074671462372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  32 * a (n - 1)

end

end A013824.P875894074671462372

namespace A013824

/-- `32*a(n-1)` -/
def P875894074671462372.Spec : Prop :=
  ∀ n, (P875894074671462372.a n : ℤ) = A013824 n

theorem P875894074671462372.correct : P875894074671462372.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013824, Nat.add_sub_cancel, A013824.P875894074671462372.a, A013824.P9397672784032918292.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013824, Nat.add_sub_cancel, A013824.P875894074671462372.a, A013824.P9397672784032918292.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013824

/-! ## A013824.P3205598714142677636

`2*A013823(n)`
-/

namespace A013824.P3205598714142677636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013823 n

end

end A013824.P3205598714142677636

namespace A013824

/-- `2*A013823(n)` -/
def P3205598714142677636.Spec : Prop :=
  ∀ n, P3205598714142677636.a n = A013824 n

theorem P3205598714142677636.correct : P3205598714142677636.Spec := by
  intro n
  simp only [A013824, Nat.add_sub_cancel, A013824.P3205598714142677636.a, A013824.P9397672784032918292.a, A013823, A013823.P13296377485291357389.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013824

/-! ## A013824.P7462248486144909284

`4*A013822(n)`
-/

namespace A013824.P7462248486144909284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A013822 n

end

end A013824.P7462248486144909284

namespace A013824

/-- `4*A013822(n)` -/
def P7462248486144909284.Spec : Prop :=
  ∀ n, P7462248486144909284.a n = A013824 n

theorem P7462248486144909284.correct : P7462248486144909284.Spec := by
  intro n
  simp only [A013824, Nat.add_sub_cancel, A013824.P7462248486144909284.a, A013824.P9397672784032918292.a, A013822, A013822.P17731622055345328102.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013824

/-! ## A013824.P913164313509745043

`8*A009976(n)`
-/

namespace A013824.P913164313509745043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A009976 n

end

end A013824.P913164313509745043

namespace A013824

/-- `8*A009976(n)` -/
def P913164313509745043.Spec : Prop :=
  ∀ n, P913164313509745043.a n = A013824 n

end A013824

/-! ## A013824.P9620292281281981418

`A000079(A016885(n))`
-/

namespace A013824.P9620292281281981418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A016885 n).toNat

end

end A013824.P9620292281281981418

namespace A013824

/-- `A000079(A016885(n))` -/
def P9620292281281981418.Spec : Prop :=
  ∀ n, P9620292281281981418.a n = A013824 n

end A013824

/-! ## A013824.P13191746052405462573

`A013825(n)/2`
-/

namespace A013824.P13191746052405462573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013825 n : ℚ) / 2

end

end A013824.P13191746052405462573

namespace A013824

/-- `A013825(n)/2` -/
def P13191746052405462573.Spec : Prop :=
  ∀ n, P13191746052405462573.a n = (A013824 n : ℚ)

theorem P13191746052405462573.correct : P13191746052405462573.Spec := by
  intro n
  simp only [A013824, Nat.add_sub_cancel, A013824.P13191746052405462573.a, A013824.P9397672784032918292.a, A013825, A013825.P3194917141678171610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013824

/-! ## A013824.P15926943260182058542

`A009976(n+1)/4`
-/

namespace A013824.P15926943260182058542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009976 (n + 1) : ℚ) / 4

end

end A013824.P15926943260182058542

namespace A013824

/-- `A009976(n+1)/4` -/
def P15926943260182058542.Spec : Prop :=
  ∀ n, P15926943260182058542.a n = (A013824 n : ℚ)

end A013824

/-! ## A013824.P9171741138311009780

`A034008(5*(n+1))`
-/

namespace A013824.P9171741138311009780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (5 * (n + 1))

end

end A013824.P9171741138311009780

namespace A013824

/-- `A034008(5*(n+1))` -/
def P9171741138311009780.Spec : Prop :=
  ∀ n, P9171741138311009780.a n = A013824 n

end A013824

/-!
# A013825: a(n) = 2^(5*n + 4).

The programs for A013825, the canonical program `A013825.P3194917141678171610` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013825 has offset 0).

The definition of A013825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(5*n+4)` (program `A013825.P3194917141678171610`, by `A013825.P3194917141678171610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013825.P11364132975659076210

`ogf(16/(1-32x))`
-/

namespace A013825.P11364132975659076210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16] [1, -32] n

end

end A013825.P11364132975659076210

namespace A013825

/-- `ogf(16/(1-32x))` -/
def P11364132975659076210.Spec : Prop :=
  ∀ n, P11364132975659076210.a n = A013825 n

end A013825

/-! ## A013825.P3194917141678171610

`2^(5*n+4)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013825

/-- `2^(5*n+4)` -/
def P3194917141678171610.Spec : Prop :=
  ∀ n, (P3194917141678171610.a n : ℤ) = A013825 n

theorem P3194917141678171610.correct : P3194917141678171610.Spec := by
  intro n
  simp only [A013825]

end A013825

/-! ## A013825.P11215539330554528701

`32*a(n-1)` with `a(0)=16`
-/

namespace A013825.P11215539330554528701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  32 * a (n - 1)

end

end A013825.P11215539330554528701

namespace A013825

/-- `32*a(n-1)` -/
def P11215539330554528701.Spec : Prop :=
  ∀ n, (P11215539330554528701.a n : ℤ) = A013825 n

theorem P11215539330554528701.correct : P11215539330554528701.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013825, Nat.add_sub_cancel, A013825.P11215539330554528701.a, A013825.P3194917141678171610.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013825, Nat.add_sub_cancel, A013825.P11215539330554528701.a, A013825.P3194917141678171610.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013825

/-! ## A013825.P12467890239965153312

`16*A009976(n)`
-/

namespace A013825.P12467890239965153312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A009976 n

end

end A013825.P12467890239965153312

namespace A013825

/-- `16*A009976(n)` -/
def P12467890239965153312.Spec : Prop :=
  ∀ n, P12467890239965153312.a n = A013825 n

end A013825

/-! ## A013825.P18371436796692162429

`A000079(A016897(n))`
-/

namespace A013825.P18371436796692162429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A016897 n).toNat

end

end A013825.P18371436796692162429

namespace A013825

/-- `A000079(A016897(n))` -/
def P18371436796692162429.Spec : Prop :=
  ∀ n, P18371436796692162429.a n = A013825 n

end A013825

/-! ## A013825.P13707316688321381152

`2*A013824(n)`
-/

namespace A013825.P13707316688321381152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013824 n

end

end A013825.P13707316688321381152

namespace A013825

/-- `2*A013824(n)` -/
def P13707316688321381152.Spec : Prop :=
  ∀ n, P13707316688321381152.a n = A013825 n

theorem P13707316688321381152.correct : P13707316688321381152.Spec := by
  intro n
  simp only [A013825, Nat.add_sub_cancel, A013825.P13707316688321381152.a, A013825.P3194917141678171610.a, A013824, A013824.P9397672784032918292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013825

/-! ## A013825.P10103557887474223990

`4*A013823(n)`
-/

namespace A013825.P10103557887474223990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A013823 n

end

end A013825.P10103557887474223990

namespace A013825

/-- `4*A013823(n)` -/
def P10103557887474223990.Spec : Prop :=
  ∀ n, P10103557887474223990.a n = A013825 n

theorem P10103557887474223990.correct : P10103557887474223990.Spec := by
  intro n
  simp only [A013825, Nat.add_sub_cancel, A013825.P10103557887474223990.a, A013825.P3194917141678171610.a, A013823, A013823.P13296377485291357389.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013825

/-! ## A013825.P4561651434334786600

`8*A013822(n)`
-/

namespace A013825.P4561651434334786600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A013822 n

end

end A013825.P4561651434334786600

namespace A013825

/-- `8*A013822(n)` -/
def P4561651434334786600.Spec : Prop :=
  ∀ n, P4561651434334786600.a n = A013825 n

theorem P4561651434334786600.correct : P4561651434334786600.Spec := by
  intro n
  simp only [A013825, Nat.add_sub_cancel, A013825.P4561651434334786600.a, A013825.P3194917141678171610.a, A013822, A013822.P17731622055345328102.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013825

/-! ## A013825.P5680512339652225295

`Δ[A349842(5*n)]`
-/

namespace A013825.P5680512339652225295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349842 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013825.P5680512339652225295

namespace A013825

/-- `Δ[A349842(5*n)]` -/
def P5680512339652225295.Spec : Prop :=
  ∀ n, P5680512339652225295.a n = A013825 n

end A013825

/-! ## A013825.P13892000103607092685

`A009976(n+1)/2`
-/

namespace A013825.P13892000103607092685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009976 (n + 1) : ℚ) / 2

end

end A013825.P13892000103607092685

namespace A013825

/-- `A009976(n+1)/2` -/
def P13892000103607092685.Spec : Prop :=
  ∀ n, P13892000103607092685.a n = (A013825 n : ℚ)

end A013825

/-!
# A013826: a(n) = 3^(5*n + 1).

The programs for A013826, the canonical program `A013826.P7206658672717729567` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013826 has offset 0).

The definition of A013826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(5*n+1)` (program `A013826.P7206658672717729567`, by `A013826.P7206658672717729567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013826.P7206658672717729567

`3^(5*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013826

/-- `3^(5*n+1)` -/
def P7206658672717729567.Spec : Prop :=
  ∀ n, (P7206658672717729567.a n : ℤ) = A013826 n

theorem P7206658672717729567.correct : P7206658672717729567.Spec := by
  intro n
  simp only [A013826]

end A013826

/-! ## A013826.P4789006994691677068

`243*a(n-1)` with `a(0)=3`
-/

namespace A013826.P4789006994691677068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  243 * a (n - 1)

end

end A013826.P4789006994691677068

namespace A013826

/-- `243*a(n-1)` -/
def P4789006994691677068.Spec : Prop :=
  ∀ n, (P4789006994691677068.a n : ℤ) = A013826 n

theorem P4789006994691677068.correct : P4789006994691677068.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013826, Nat.add_sub_cancel, A013826.P4789006994691677068.a, A013826.P7206658672717729567.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013826, Nat.add_sub_cancel, A013826.P4789006994691677068.a, A013826.P7206658672717729567.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013826

/-! ## A013826.P5030574567899173923

`a(n-1)*243` with `a(0)=3`
-/

namespace A013826.P5030574567899173923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * 243

end

end A013826.P5030574567899173923

namespace A013826

/-- `a(n-1)*243` -/
def P5030574567899173923.Spec : Prop :=
  ∀ n, (P5030574567899173923.a n : ℤ) = A013826 n

theorem P5030574567899173923.correct : P5030574567899173923.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013826, Nat.add_sub_cancel, A013826.P5030574567899173923.a, A013826.P7206658672717729567.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013826, Nat.add_sub_cancel, A013826.P5030574567899173923.a, A013826.P7206658672717729567.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013826

/-! ## A013826.P14724853231352483723

`record[(gcd(5, n)-2)^(n+1)]`
-/

namespace A013826.P14724853231352483723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 5 n : ℤ) - 2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013826.P14724853231352483723

namespace A013826

/-- `record[(gcd(5, n)-2)^(n+1)]` -/
def P14724853231352483723.Spec : Prop :=
  ∀ n, P14724853231352483723.a n = A013826 n

end A013826

/-! ## A013826.P14622324648708380120

`a(n-1)/(1/3)^5` with `a(0)=3`
-/

namespace A013826.P14622324648708380120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 5

end

end A013826.P14622324648708380120

namespace A013826

/-- `a(n-1)/(1/3)^5` -/
def P14622324648708380120.Spec : Prop :=
  ∀ n, P14622324648708380120.a n = (A013826 n : ℚ)

theorem P14622324648708380120.correct : P14622324648708380120.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013826, Nat.add_sub_cancel, A013826.P14622324648708380120.a, A013826.P7206658672717729567.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013826, Nat.add_sub_cancel, A013826.P14622324648708380120.a, A013826.P7206658672717729567.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013826

/-!
# A013827: a(n) = 3^(5*n + 2).

The programs for A013827, the canonical program `A013827.P9487378613253153524` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013827 has offset 0).

The definition of A013827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(5*n+2)` (program `A013827.P9487378613253153524`, by `A013827.P9487378613253153524.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013827.P9487378613253153524

`3^(5*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013827

/-- `3^(5*n+2)` -/
def P9487378613253153524.Spec : Prop :=
  ∀ n, (P9487378613253153524.a n : ℤ) = A013827 n

theorem P9487378613253153524.correct : P9487378613253153524.Spec := by
  intro n
  simp only [A013827]

end A013827

/-! ## A013827.P4242439482506417089

`243*a(n-1)` with `a(0)=9`
-/

namespace A013827.P4242439482506417089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  243 * a (n - 1)

end

end A013827.P4242439482506417089

namespace A013827

/-- `243*a(n-1)` -/
def P4242439482506417089.Spec : Prop :=
  ∀ n, (P4242439482506417089.a n : ℤ) = A013827 n

theorem P4242439482506417089.correct : P4242439482506417089.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013827, Nat.add_sub_cancel, A013827.P4242439482506417089.a, A013827.P9487378613253153524.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013827, Nat.add_sub_cancel, A013827.P4242439482506417089.a, A013827.P9487378613253153524.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013827

/-! ## A013827.P9187695585992716948

`3*A013826(n)`
-/

namespace A013827.P9187695585992716948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A013826 n

end

end A013827.P9187695585992716948

namespace A013827

/-- `3*A013826(n)` -/
def P9187695585992716948.Spec : Prop :=
  ∀ n, P9187695585992716948.a n = A013827 n

theorem P9187695585992716948.correct : P9187695585992716948.Spec := by
  intro n
  simp only [A013827, Nat.add_sub_cancel, A013827.P9187695585992716948.a, A013827.P9487378613253153524.a, A013826, A013826.P7206658672717729567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013827

/-! ## A013827.P8819445760128350050

`a(n-1)*243` with `a(0)=9`
-/

namespace A013827.P8819445760128350050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) * 243

end

end A013827.P8819445760128350050

namespace A013827

/-- `a(n-1)*243` -/
def P8819445760128350050.Spec : Prop :=
  ∀ n, (P8819445760128350050.a n : ℤ) = A013827 n

theorem P8819445760128350050.correct : P8819445760128350050.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013827, Nat.add_sub_cancel, A013827.P8819445760128350050.a, A013827.P9487378613253153524.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013827, Nat.add_sub_cancel, A013827.P8819445760128350050.a, A013827.P9487378613253153524.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013827

/-! ## A013827.P429056814978809778

`record[(gcd(5, n)-2)^(n+2)]`
-/

namespace A013827.P429056814978809778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 5 n : ℤ) - 2) ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013827.P429056814978809778

namespace A013827

/-- `record[(gcd(5, n)-2)^(n+2)]` -/
def P429056814978809778.Spec : Prop :=
  ∀ n, P429056814978809778.a n = A013827 n

end A013827

/-!
# A013828: a(n) = 3^(5*n + 3).

The programs for A013828, the canonical program `A013828.P4255778069026322537` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013828 has offset 0).

The definition of A013828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(5*n+3)` (program `A013828.P4255778069026322537`, by `A013828.P4255778069026322537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013828.P4255778069026322537

`3^(5*n+3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013828

/-- `3^(5*n+3)` -/
def P4255778069026322537.Spec : Prop :=
  ∀ n, (P4255778069026322537.a n : ℤ) = A013828 n

theorem P4255778069026322537.correct : P4255778069026322537.Spec := by
  intro n
  simp only [A013828]

end A013828

/-! ## A013828.P212945757678792419

`243*a(n-1)` with `a(0)=27`
-/

namespace A013828.P212945757678792419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [27] fun n a =>
  243 * a (n - 1)

end

end A013828.P212945757678792419

namespace A013828

/-- `243*a(n-1)` -/
def P212945757678792419.Spec : Prop :=
  ∀ n, (P212945757678792419.a n : ℤ) = A013828 n

theorem P212945757678792419.correct : P212945757678792419.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013828, Nat.add_sub_cancel, A013828.P212945757678792419.a, A013828.P4255778069026322537.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013828, Nat.add_sub_cancel, A013828.P212945757678792419.a, A013828.P4255778069026322537.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013828

/-! ## A013828.P5569030345725936652

`3*A013827(n)`
-/

namespace A013828.P5569030345725936652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A013827 n

end

end A013828.P5569030345725936652

namespace A013828

/-- `3*A013827(n)` -/
def P5569030345725936652.Spec : Prop :=
  ∀ n, P5569030345725936652.a n = A013828 n

theorem P5569030345725936652.correct : P5569030345725936652.Spec := by
  intro n
  simp only [A013828, Nat.add_sub_cancel, A013828.P5569030345725936652.a, A013828.P4255778069026322537.a, A013827, A013827.P9487378613253153524.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013828

/-! ## A013828.P2305641723919030340

`A013829(n)/3`
-/

namespace A013828.P2305641723919030340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013829 n : ℚ) / 3

end

end A013828.P2305641723919030340

namespace A013828

/-- `A013829(n)/3` -/
def P2305641723919030340.Spec : Prop :=
  ∀ n, P2305641723919030340.a n = (A013828 n : ℚ)

theorem P2305641723919030340.correct : P2305641723919030340.Spec := by
  intro n
  simp only [A013828, Nat.add_sub_cancel, A013828.P2305641723919030340.a, A013828.P4255778069026322537.a, A013829, A013829.P4387884866928190256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013828

/-! ## A013828.P8459517083539598627

`9*A013826(n)`
-/

namespace A013828.P8459517083539598627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A013826 n

end

end A013828.P8459517083539598627

namespace A013828

/-- `9*A013826(n)` -/
def P8459517083539598627.Spec : Prop :=
  ∀ n, P8459517083539598627.a n = A013828 n

theorem P8459517083539598627.correct : P8459517083539598627.Spec := by
  intro n
  simp only [A013828, Nat.add_sub_cancel, A013828.P8459517083539598627.a, A013828.P4255778069026322537.a, A013826, A013826.P7206658672717729567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013828

/-!
# A013829: a(n) = 3^(5*n + 4).

The programs for A013829, the canonical program `A013829.P4387884866928190256` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013829 has offset 0).

The definition of A013829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(5*n+4)` (program `A013829.P4387884866928190256`, by `A013829.P4387884866928190256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013829.P4387884866928190256

`3^(5*n+4)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013829

/-- `3^(5*n+4)` -/
def P4387884866928190256.Spec : Prop :=
  ∀ n, (P4387884866928190256.a n : ℤ) = A013829 n

theorem P4387884866928190256.correct : P4387884866928190256.Spec := by
  intro n
  simp only [A013829]

end A013829

/-! ## A013829.P10092195745824147879

`243*a(n-1)` with `a(0)=81`
-/

namespace A013829.P10092195745824147879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [81] fun n a =>
  243 * a (n - 1)

end

end A013829.P10092195745824147879

namespace A013829

/-- `243*a(n-1)` -/
def P10092195745824147879.Spec : Prop :=
  ∀ n, (P10092195745824147879.a n : ℤ) = A013829 n

theorem P10092195745824147879.correct : P10092195745824147879.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013829, Nat.add_sub_cancel, A013829.P10092195745824147879.a, A013829.P4387884866928190256.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013829, Nat.add_sub_cancel, A013829.P10092195745824147879.a, A013829.P4387884866928190256.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013829

/-! ## A013829.P17986777119558335264

`3*A013828(n)`
-/

namespace A013829.P17986777119558335264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A013828 n

end

end A013829.P17986777119558335264

namespace A013829

/-- `3*A013828(n)` -/
def P17986777119558335264.Spec : Prop :=
  ∀ n, P17986777119558335264.a n = A013829 n

theorem P17986777119558335264.correct : P17986777119558335264.Spec := by
  intro n
  simp only [A013829, Nat.add_sub_cancel, A013829.P17986777119558335264.a, A013829.P4387884866928190256.a, A013828, A013828.P4255778069026322537.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013829

/-! ## A013829.P7388655948388330307

`9*A013827(n)`
-/

namespace A013829.P7388655948388330307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A013827 n

end

end A013829.P7388655948388330307

namespace A013829

/-- `9*A013827(n)` -/
def P7388655948388330307.Spec : Prop :=
  ∀ n, P7388655948388330307.a n = A013829 n

theorem P7388655948388330307.correct : P7388655948388330307.Spec := by
  intro n
  simp only [A013829, Nat.add_sub_cancel, A013829.P7388655948388330307.a, A013829.P4387884866928190256.a, A013827, A013827.P9487378613253153524.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013829

/-! ## A013829.P11557948001307814316

`27*A013826(n)`
-/

namespace A013829.P11557948001307814316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A013826 n

end

end A013829.P11557948001307814316

namespace A013829

/-- `27*A013826(n)` -/
def P11557948001307814316.Spec : Prop :=
  ∀ n, P11557948001307814316.a n = A013829 n

theorem P11557948001307814316.correct : P11557948001307814316.Spec := by
  intro n
  simp only [A013829, Nat.add_sub_cancel, A013829.P11557948001307814316.a, A013829.P4387884866928190256.a, A013826, A013826.P7206658672717729567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013829

/-!
# A013830: a(n) = 4^(5*n + 1).

The programs for A013830, the canonical program `A013830.P647347822768287833` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013830 has offset 0).

The definition of A013830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(5*n+1)` (program `A013830.P647347822768287833`, by `A013830.P647347822768287833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013830.P647347822768287833

`4^(5*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013830

/-- `4^(5*n+1)` -/
def P647347822768287833.Spec : Prop :=
  ∀ n, (P647347822768287833.a n : ℤ) = A013830 n

theorem P647347822768287833.correct : P647347822768287833.Spec := by
  intro n
  simp only [A013830]

end A013830

/-! ## A013830.P15764760109996727736

`32*32*a(n-1)` with `a(0)=4`
-/

namespace A013830.P15764760109996727736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  32 * (32 * a (n - 1))

end

end A013830.P15764760109996727736

namespace A013830

/-- `32*32*a(n-1)` -/
def P15764760109996727736.Spec : Prop :=
  ∀ n, (P15764760109996727736.a n : ℤ) = A013830 n

theorem P15764760109996727736.correct : P15764760109996727736.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013830, Nat.add_sub_cancel, A013830.P15764760109996727736.a, A013830.P647347822768287833.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013830, Nat.add_sub_cancel, A013830.P15764760109996727736.a, A013830.P647347822768287833.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013830

/-! ## A013830.P7699053545063909630

`4*32^((2*n)%67)`
-/

namespace A013830.P7699053545063909630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 32 ^ (2 * n % 67)

end

end A013830.P7699053545063909630

namespace A013830

/-- `4*32^((2*n)%67)` -/
def P7699053545063909630.Spec : Prop :=
  ∀ n, (P7699053545063909630.a n : ℤ) = A013830 n

end A013830

/-! ## A013830.P16183340024183771781

`A013822(n)²`
-/

namespace A013830.P16183340024183771781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013822 n ^ 2

end

end A013830.P16183340024183771781

namespace A013830

/-- `A013822(n)²` -/
def P16183340024183771781.Spec : Prop :=
  ∀ n, P16183340024183771781.a n = A013830 n

end A013830

/-! ## A013830.P17848481281591055737

`A000302(A016861(n))`
-/

namespace A013830.P17848481281591055737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A016861 n).toNat

end

end A013830.P17848481281591055737

namespace A013830

/-- `A000302(A016861(n))` -/
def P17848481281591055737.Spec : Prop :=
  ∀ n, P17848481281591055737.a n = A013830 n

end A013830

/-!
# A013831: a(n) = 4^(5n+2).

The programs for A013831, the canonical program `A013831.P12176834696164211990` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013831 has offset 0).

The definition of A013831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(5*n+2)` (program `A013831.P12176834696164211990`, by `A013831.P12176834696164211990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013831.P12176834696164211990

`4^(5*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013831

/-- `4^(5*n+2)` -/
def P12176834696164211990.Spec : Prop :=
  ∀ n, (P12176834696164211990.a n : ℤ) = A013831 n

theorem P12176834696164211990.correct : P12176834696164211990.Spec := by
  intro n
  simp only [A013831]

end A013831

/-! ## A013831.P4157911019116743446

`32*32*a(n-1)` with `a(0)=16`
-/

namespace A013831.P4157911019116743446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  32 * (32 * a (n - 1))

end

end A013831.P4157911019116743446

namespace A013831

/-- `32*32*a(n-1)` -/
def P4157911019116743446.Spec : Prop :=
  ∀ n, (P4157911019116743446.a n : ℤ) = A013831 n

theorem P4157911019116743446.correct : P4157911019116743446.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013831, Nat.add_sub_cancel, A013831.P4157911019116743446.a, A013831.P12176834696164211990.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013831, Nat.add_sub_cancel, A013831.P4157911019116743446.a, A013831.P12176834696164211990.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013831

/-! ## A013831.P296715185326832745

`record[(gcd(5, n)-1)^(n+2)]`
-/

namespace A013831.P296715185326832745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 5 n : ℤ) - 1) ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013831.P296715185326832745

namespace A013831

/-- `record[(gcd(5, n)-1)^(n+2)]` -/
def P296715185326832745.Spec : Prop :=
  ∀ n, P296715185326832745.a n = A013831 n

end A013831

/-! ## A013831.P981393678248716417

`A013823(n)²`
-/

namespace A013831.P981393678248716417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013823 n ^ 2

end

end A013831.P981393678248716417

namespace A013831

/-- `A013823(n)²` -/
def P981393678248716417.Spec : Prop :=
  ∀ n, P981393678248716417.a n = A013831 n

end A013831

/-! ## A013831.P9751281285537735715

`4*A013830(n)`
-/

namespace A013831.P9751281285537735715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A013830 n

end

end A013831.P9751281285537735715

namespace A013831

/-- `4*A013830(n)` -/
def P9751281285537735715.Spec : Prop :=
  ∀ n, P9751281285537735715.a n = A013831 n

theorem P9751281285537735715.correct : P9751281285537735715.Spec := by
  intro n
  simp only [A013831, Nat.add_sub_cancel, A013831.P9751281285537735715.a, A013831.P12176834696164211990.a, A013830, A013830.P647347822768287833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013831

/-!
# A013832: a(n) = 4^(5*n + 3).

The programs for A013832, the canonical program `A013832.P2872893367710367040` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013832 has offset 0).

The definition of A013832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(5*n+3)` (program `A013832.P2872893367710367040`, by `A013832.P2872893367710367040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013832.P2872893367710367040

`4^(5*n+3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013832

/-- `4^(5*n+3)` -/
def P2872893367710367040.Spec : Prop :=
  ∀ n, (P2872893367710367040.a n : ℤ) = A013832 n

theorem P2872893367710367040.correct : P2872893367710367040.Spec := by
  intro n
  simp only [A013832]

end A013832

/-! ## A013832.P992038157256452538

`32*32*a(n-1)` with `a(0)=64`
-/

namespace A013832.P992038157256452538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [64] fun n a =>
  32 * (32 * a (n - 1))

end

end A013832.P992038157256452538

namespace A013832

/-- `32*32*a(n-1)` -/
def P992038157256452538.Spec : Prop :=
  ∀ n, (P992038157256452538.a n : ℤ) = A013832 n

theorem P992038157256452538.correct : P992038157256452538.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013832, Nat.add_sub_cancel, A013832.P992038157256452538.a, A013832.P2872893367710367040.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013832, Nat.add_sub_cancel, A013832.P992038157256452538.a, A013832.P2872893367710367040.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013832

/-! ## A013832.P4450329243817530612

`a(n-1)/(2/64)²` with `a(0)=64`
-/

namespace A013832.P4450329243817530612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [64] fun n a =>
  a (n - 1) / ((2 : ℚ) / 64) ^ 2

end

end A013832.P4450329243817530612

namespace A013832

/-- `a(n-1)/(2/64)²` -/
def P4450329243817530612.Spec : Prop :=
  ∀ n, P4450329243817530612.a n = (A013832 n : ℚ)

theorem P4450329243817530612.correct : P4450329243817530612.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013832, Nat.add_sub_cancel, A013832.P4450329243817530612.a, A013832.P2872893367710367040.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013832, Nat.add_sub_cancel, A013832.P4450329243817530612.a, A013832.P2872893367710367040.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013832

/-! ## A013832.P3937960594768071797

`A013824(n)²`
-/

namespace A013832.P3937960594768071797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013824 n ^ 2

end

end A013832.P3937960594768071797

namespace A013832

/-- `A013824(n)²` -/
def P3937960594768071797.Spec : Prop :=
  ∀ n, P3937960594768071797.a n = A013832 n

end A013832

/-! ## A013832.P13544528811408913792

`4*A013831(n)`
-/

namespace A013832.P13544528811408913792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A013831 n

end

end A013832.P13544528811408913792

namespace A013832

/-- `4*A013831(n)` -/
def P13544528811408913792.Spec : Prop :=
  ∀ n, P13544528811408913792.a n = A013832 n

theorem P13544528811408913792.correct : P13544528811408913792.Spec := by
  intro n
  simp only [A013832, Nat.add_sub_cancel, A013832.P13544528811408913792.a, A013832.P2872893367710367040.a, A013831, A013831.P12176834696164211990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013832

/-!
# A013833: a(n) = 4^(5*n + 4).

The programs for A013833, the canonical program `A013833.P4848068160502465529` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013833 has offset 0).

The definition of A013833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(5*n+4)` (program `A013833.P4848068160502465529`, by `A013833.P4848068160502465529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013833.P4848068160502465529

`4^(5*n+4)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013833

/-- `4^(5*n+4)` -/
def P4848068160502465529.Spec : Prop :=
  ∀ n, (P4848068160502465529.a n : ℤ) = A013833 n

theorem P4848068160502465529.correct : P4848068160502465529.Spec := by
  intro n
  simp only [A013833]

end A013833

/-! ## A013833.P6845938386728677324

`A013825(n)²`
-/

namespace A013833.P6845938386728677324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013825 n ^ 2

end

end A013833.P6845938386728677324

namespace A013833

/-- `A013825(n)²` -/
def P6845938386728677324.Spec : Prop :=
  ∀ n, P6845938386728677324.a n = A013833 n

end A013833

/-! ## A013833.P14818863990163467073

`4*A013832(n)`
-/

namespace A013833.P14818863990163467073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A013832 n

end

end A013833.P14818863990163467073

namespace A013833

/-- `4*A013832(n)` -/
def P14818863990163467073.Spec : Prop :=
  ∀ n, P14818863990163467073.a n = A013833 n

theorem P14818863990163467073.correct : P14818863990163467073.Spec := by
  intro n
  simp only [A013833, Nat.add_sub_cancel, A013833.P14818863990163467073.a, A013833.P4848068160502465529.a, A013832, A013832.P2872893367710367040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013833

/-! ## A013833.P7967749285767340082

`A000302(A016897(n))`
-/

namespace A013833.P7967749285767340082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A016897 n).toNat

end

end A013833.P7967749285767340082

namespace A013833

/-- `A000302(A016897(n))` -/
def P7967749285767340082.Spec : Prop :=
  ∀ n, P7967749285767340082.a n = A013833 n

end A013833

/-! ## A013833.P11672624623614755938

`A016116(A017377(n))²`
-/

namespace A013833.P11672624623614755938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A017377 n).toNat ^ 2

end

end A013833.P11672624623614755938

namespace A013833

/-- `A016116(A017377(n))²` -/
def P11672624623614755938.Spec : Prop :=
  ∀ n, P11672624623614755938.a n = A013833 n

end A013833

/-!
# A013834: a(n) = 5^(5*n + 1).

The programs for A013834, the canonical program `A013834.P7278462991576409801` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013834 has offset 0).

The definition of A013834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(5*n+1)` (program `A013834.P7278462991576409801`, by `A013834.P7278462991576409801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013834.P7278462991576409801

`5^(5*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013834

/-- `5^(5*n+1)` -/
def P7278462991576409801.Spec : Prop :=
  ∀ n, (P7278462991576409801.a n : ℤ) = A013834 n

theorem P7278462991576409801.correct : P7278462991576409801.Spec := by
  intro n
  simp only [A013834]

end A013834

/-! ## A013834.P3679323711652647916

`record[gcd(5, n)^(n+1)]`
-/

namespace A013834.P3679323711652647916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013834.P3679323711652647916

namespace A013834

/-- `record[gcd(5, n)^(n+1)]` -/
def P3679323711652647916.Spec : Prop :=
  ∀ n, (P3679323711652647916.a n : ℤ) = A013834 n

end A013834

/-! ## A013834.P10887673982338278788

`root(5, 1/5)*a(n-1)` with `a(0)=5`
-/

namespace A013834.P10887673982338278788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5] fun n a =>
  (5 : ℝ) ^ (1 / ((1 : ℚ) / 5 : ℝ)) * a (n - 1)

end

end A013834.P10887673982338278788

namespace A013834

/-- `root(5, 1/5)*a(n-1)` -/
def P10887673982338278788.Spec : Prop :=
  ∀ n, P10887673982338278788.a n = (A013834 n : ℝ)

theorem P10887673982338278788.correct : P10887673982338278788.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013834, Nat.add_sub_cancel, A013834.P10887673982338278788.a, A013834.P7278462991576409801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013834, Nat.add_sub_cancel, A013834.P10887673982338278788.a, A013834.P7278462991576409801.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013834

/-! ## A013834.P3449855578367940436

`a(n-1)/(1/5)^5` with `a(0)=5`
-/

namespace A013834.P3449855578367940436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 5) ^ 5

end

end A013834.P3449855578367940436

namespace A013834

/-- `a(n-1)/(1/5)^5` -/
def P3449855578367940436.Spec : Prop :=
  ∀ n, P3449855578367940436.a n = (A013834 n : ℚ)

theorem P3449855578367940436.correct : P3449855578367940436.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013834, Nat.add_sub_cancel, A013834.P3449855578367940436.a, A013834.P7278462991576409801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013834, Nat.add_sub_cancel, A013834.P3449855578367940436.a, A013834.P7278462991576409801.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013834

/-! ## A013834.P1501273194693285270

`5*25*25*a(n-1)` with `a(0)=5`
-/

namespace A013834.P1501273194693285270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  5 * (25 * (25 * a (n - 1)))

end

end A013834.P1501273194693285270

namespace A013834

/-- `5*25*25*a(n-1)` -/
def P1501273194693285270.Spec : Prop :=
  ∀ n, (P1501273194693285270.a n : ℤ) = A013834 n

theorem P1501273194693285270.correct : P1501273194693285270.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013834, Nat.add_sub_cancel, A013834.P1501273194693285270.a, A013834.P7278462991576409801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013834, Nat.add_sub_cancel, A013834.P1501273194693285270.a, A013834.P7278462991576409801.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013834

/-!
# A013835: a(n) = 5^(5*n + 2).

The programs for A013835, the canonical program `A013835.P4056191732166710602` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013835 has offset 0).

The definition of A013835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(5*n+2)` (program `A013835.P4056191732166710602`, by `A013835.P4056191732166710602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013835.P4056191732166710602

`5^(5*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013835

/-- `5^(5*n+2)` -/
def P4056191732166710602.Spec : Prop :=
  ∀ n, (P4056191732166710602.a n : ℤ) = A013835 n

theorem P4056191732166710602.correct : P4056191732166710602.Spec := by
  intro n
  simp only [A013835]

end A013835

/-! ## A013835.P5943524715633498541

`record[gcd(5, n)^(n+2)]`
-/

namespace A013835.P5943524715633498541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013835.P5943524715633498541

namespace A013835

/-- `record[gcd(5, n)^(n+2)]` -/
def P5943524715633498541.Spec : Prop :=
  ∀ n, (P5943524715633498541.a n : ℤ) = A013835 n

end A013835

/-! ## A013835.P6173061934230079097

`5*25*25*a(n-1)` with `a(0)=25`
-/

namespace A013835.P6173061934230079097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25] fun n a =>
  5 * (25 * (25 * a (n - 1)))

end

end A013835.P6173061934230079097

namespace A013835

/-- `5*25*25*a(n-1)` -/
def P6173061934230079097.Spec : Prop :=
  ∀ n, (P6173061934230079097.a n : ℤ) = A013835 n

theorem P6173061934230079097.correct : P6173061934230079097.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013835, Nat.add_sub_cancel, A013835.P6173061934230079097.a, A013835.P4056191732166710602.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013835, Nat.add_sub_cancel, A013835.P6173061934230079097.a, A013835.P4056191732166710602.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013835

/-! ## A013835.P574733795017546488

`5*A013834(n)`
-/

namespace A013835.P574733795017546488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A013834 n

end

end A013835.P574733795017546488

namespace A013835

/-- `5*A013834(n)` -/
def P574733795017546488.Spec : Prop :=
  ∀ n, P574733795017546488.a n = A013835 n

theorem P574733795017546488.correct : P574733795017546488.Spec := by
  intro n
  simp only [A013835, Nat.add_sub_cancel, A013835.P574733795017546488.a, A013835.P4056191732166710602.a, A013834, A013834.P7278462991576409801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013835

/-! ## A013835.P17093633850841252658

`A000351(5*n+2)`
-/

namespace A013835.P17093633850841252658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (5 * n + 2)

end

end A013835.P17093633850841252658

namespace A013835

/-- `A000351(5*n+2)` -/
def P17093633850841252658.Spec : Prop :=
  ∀ n, P17093633850841252658.a n = A013835 n

end A013835

/-!
# A013836: 

The programs for A013836, there is no canonical definition to state claims against.
-/

/-! ## A013836.P14605887196002898652

`5^(5*n+3)`
-/

namespace A013836.P14605887196002898652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (5 * n + 3)

end

end A013836.P14605887196002898652

/-! ## A013836.P15814212285255907600

`record[gcd(5, n)^(n+3)]`
-/

namespace A013836.P15814212285255907600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n ^ (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013836.P15814212285255907600

/-! ## A013836.P8516761144942005259

`5*A013835(n)`
-/

namespace A013836.P8516761144942005259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A013835 n

end

end A013836.P8516761144942005259

/-! ## A013836.P2440018765806829693

`A000351(5*n+3)`
-/

namespace A013836.P2440018765806829693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (5 * n + 3)

end

end A013836.P2440018765806829693

/-! ## A013836.P2639536570943436152

`5*5^A016873(n)`
-/

namespace A013836.P2639536570943436152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (5 : ℚ) ^ (A016873 n : ℤ)

end

end A013836.P2639536570943436152

/-!
# A013837: 

The programs for A013837, there is no canonical definition to state claims against.
-/

/-! ## A013837.P5820760429940160745

`5^(5*n+4)`
-/

namespace A013837.P5820760429940160745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (5 * n + 4)

end

end A013837.P5820760429940160745

/-! ## A013837.P13995421501058110512

`record[gcd(5, n)^(n+4)]`
-/

namespace A013837.P13995421501058110512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n ^ (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013837.P13995421501058110512

/-! ## A013837.P2901666808087251838

`A000351(5*n+4)`
-/

namespace A013837.P2901666808087251838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (5 * n + 4)

end

end A013837.P2901666808087251838

/-! ## A013837.P15927185627881531354

`(sqrt(5)^A016897(n))²`
-/

namespace A013837.P15927185627881531354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (5 : ℝ) ^ (A016897 n : ℤ)) ^ 2

end

end A013837.P15927185627881531354

/-!
# A013838: 

The programs for A013838, there is no canonical definition to state claims against.
-/

/-! ## A013838.P7887443842993242534

`6^(5*n+1)`
-/

namespace A013838.P7887443842993242534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (5 * n + 1)

end

end A013838.P7887443842993242534

/-! ## A013838.P663946860886303422

`a(n-1)/(1/6)^5` with `a(0)=6`
-/

namespace A013838.P663946860886303422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) / ((1 : ℚ) / 6) ^ 5

end

end A013838.P663946860886303422

/-! ## A013838.P16045984823445896974

`A000400(5*n+1)`
-/

namespace A013838.P16045984823445896974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (5 * n + 1)

end

end A013838.P16045984823445896974

/-! ## A013838.P2740678588358504444

`6*A000400(n)^5`
-/

namespace A013838.P2740678588358504444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000400 n ^ 5

end

end A013838.P2740678588358504444

/-!
# A013839: 

The programs for A013839, there is no canonical definition to state claims against.
-/

/-! ## A013839.P15704939441991113147

`6^(5*n+2)`
-/

namespace A013839.P15704939441991113147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (5 * n + 2)

end

end A013839.P15704939441991113147

/-! ## A013839.P11558298445971681635

`6*6^A016861(n)`
-/

namespace A013839.P11558298445971681635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (6 : ℚ) ^ (A016861 n : ℤ)

end

end A013839.P11558298445971681635

/-! ## A013839.P765569423987365912

`6*A000400(5*n+1)`
-/

namespace A013839.P765569423987365912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000400 (5 * n + 1)

end

end A013839.P765569423987365912

/-!
# A013840: 

The programs for A013840, there is no canonical definition to state claims against.
-/

/-! ## A013840.P1496602640969038334

`6^(5*n+3)`
-/

namespace A013840.P1496602640969038334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (5 * n + 3)

end

end A013840.P1496602640969038334

/-! ## A013840.P9745664166295886369

`A000400(5*n+3)`
-/

namespace A013840.P9745664166295886369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (5 * n + 3)

end

end A013840.P9745664166295886369

/-! ## A013840.P2202133339301035612

`6^n*A013785(n)`
-/

namespace A013840.P2202133339301035612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A013785 n

end

end A013840.P2202133339301035612

/-! ## A013840.P5771869516572596787

`A026549(A017341(n))`
-/

namespace A013840.P5771869516572596787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (A017341 n).toNat

end

end A013840.P5771869516572596787

/-!
# A013841: 

The programs for A013841, there is no canonical definition to state claims against.
-/

/-! ## A013841.P10877914981920411084

`6^(5*n+4)`
-/

namespace A013841.P10877914981920411084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (5 * n + 4)

end

end A013841.P10877914981920411084

/-! ## A013841.P14537323390940928331

`A166027(10*(n+1))`
-/

namespace A013841.P14537323390940928331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166027 (10 * (n + 1))

end

end A013841.P14537323390940928331

/-! ## A013841.P13005863388068307560

`6*A000400(5*n+3)`
-/

namespace A013841.P13005863388068307560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000400 (5 * n + 3)

end

end A013841.P13005863388068307560

/-!
# A013842: 

The programs for A013842, there is no canonical definition to state claims against.
-/

/-! ## A013842.P6800532087548898296

`7^(5*n+1)`
-/

namespace A013842.P6800532087548898296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (5 * n + 1)

end

end A013842.P6800532087548898296

/-! ## A013842.P2513768116613606344

`a(n-1)/(1/7)^5` with `a(0)=7`
-/

namespace A013842.P2513768116613606344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) / ((1 : ℚ) / 7) ^ 5

end

end A013842.P2513768116613606344

/-! ## A013842.P3245749763103958301

`A000420(5*n+1)`
-/

namespace A013842.P3245749763103958301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (5 * n + 1)

end

end A013842.P3245749763103958301

/-! ## A013842.P1314951447806104992

`A017926(5*2*n+2)`
-/

namespace A013842.P1314951447806104992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017926 (5 * (2 * n) + 2)

end

end A013842.P1314951447806104992

/-!
# A013843: 

The programs for A013843, there is no canonical definition to state claims against.
-/

/-! ## A013843.P5059450566993257724

`7^(5*n+2)`
-/

namespace A013843.P5059450566993257724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (5 * n + 2)

end

end A013843.P5059450566993257724

/-! ## A013843.P14176693469743896875

`A000420(5*n+2)`
-/

namespace A013843.P14176693469743896875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (5 * n + 2)

end

end A013843.P14176693469743896875

/-! ## A013843.P5869257021411278018

`7*7^A016861(n)`
-/

namespace A013843.P5869257021411278018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (7 : ℚ) ^ (A016861 n : ℤ)

end

end A013843.P5869257021411278018

/-!
# A013844: 

The programs for A013844, there is no canonical definition to state claims against.
-/

/-! ## A013844.P17226992917198520281

`7^(5*n+3)`
-/

namespace A013844.P17226992917198520281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (5 * n + 3)

end

end A013844.P17226992917198520281

/-! ## A013844.P1114967613228983045

`A000420(4*n+n+3)`
-/

namespace A013844.P1114967613228983045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (4 * n + (n + 3))

end

end A013844.P1114967613228983045

/-! ## A013844.P808176287154832449

`A013712(n)*A013741(n)`
-/

namespace A013844.P808176287154832449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013712 n * A013741 n

end

end A013844.P808176287154832449

/-! ## A013844.P9058055965425097738

`A123752(A016861(A005408(n)))`
-/

namespace A013844.P9058055965425097738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (A016861 (A005408 n).toNat).toNat

end

end A013844.P9058055965425097738

/-!
# A013845: 

The programs for A013845, there is no canonical definition to state claims against.
-/

/-! ## A013845.P14779499632074090502

`7^(5*n+4)`
-/

namespace A013845.P14779499632074090502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (5 * n + 4)

end

end A013845.P14779499632074090502

/-! ## A013845.P1893606833746538950

`A017925(A008592(n)+8)`
-/

namespace A013845.P1893606833746538950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 (A008592 n + 8).toNat

end

end A013845.P1893606833746538950

/-! ## A013845.P10837688213514335991

`A000420(record[Δ[A006370(n)]])`
-/

namespace A013845.P10837688213514335991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A013845.P10837688213514335991

/-! ## A013845.P6872862887360544060

`A000420(A008706(n+1)-1)`
-/

namespace A013845.P6872862887360544060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A008706 (n + 1) - 1).toNat

end

end A013845.P6872862887360544060

/-!
# A013846: 

The programs for A013846, there is no canonical definition to state claims against.
-/

/-! ## A013846.P7304235491566714355

`8^(5*n+1)`
-/

namespace A013846.P7304235491566714355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (5 * n + 1)

end

end A013846.P7304235491566714355

/-! ## A013846.P3916671764275881994

`a(n-1)/(1/8)^5` with `a(0)=8`
-/

namespace A013846.P3916671764275881994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) / ((1 : ℚ) / 8) ^ 5

end

end A013846.P3916671764275881994

/-! ## A013846.P10280199543565445151

`A013824(3*n)`
-/

namespace A013846.P10280199543565445151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013824 (3 * n)

end

end A013846.P10280199543565445151

/-! ## A013846.P4975546200692434978

`A001018(5*n+1)`
-/

namespace A013846.P4975546200692434978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (5 * n + 1)

end

end A013846.P4975546200692434978

/-! ## A013846.P18384781909394616886

`2*A013823(3*n)`
-/

namespace A013846.P18384781909394616886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013823 (3 * n)

end

end A013846.P18384781909394616886

/-!
# A013847: 

The programs for A013847, there is no canonical definition to state claims against.
-/

/-! ## A013847.P3209119346726934788

`8^(5*n+2)`
-/

namespace A013847.P3209119346726934788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (5 * n + 2)

end

end A013847.P3209119346726934788

/-! ## A013847.P9038641622502482808

`A000079(15*n+6)`
-/

namespace A013847.P9038641622502482808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (15 * n + 6)

end

end A013847.P9038641622502482808

/-! ## A013847.P7703059479848956363

`8*8^A016861(n)`
-/

namespace A013847.P7703059479848956363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (8 : ℚ) ^ (A016861 n : ℤ)

end

end A013847.P7703059479848956363

/-! ## A013847.P9002211912476556720

`A001018(5*(n+1)-3)`
-/

namespace A013847.P9002211912476556720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (5 * (n + 1) - 3)

end

end A013847.P9002211912476556720

/-! ## A013847.P17929875645845500114

`A013822(2*n+n+1)`
-/

namespace A013847.P17929875645845500114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013822 (2 * n + (n + 1))

end

end A013847.P17929875645845500114

/-!
# A013848: 

The programs for A013848, there is no canonical definition to state claims against.
-/

/-! ## A013848.P164064597978804979

`8^(5*n+3)`
-/

namespace A013848.P164064597978804979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (5 * n + 3)

end

end A013848.P164064597978804979

/-! ## A013848.P11621173954910126117

`A001018(5*n+3)`
-/

namespace A013848.P11621173954910126117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (5 * n + 3)

end

end A013848.P11621173954910126117

/-! ## A013848.P5405016605169022010

`A000079(15*n+9)`
-/

namespace A013848.P5405016605169022010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (15 * n + 9)

end

end A013848.P5405016605169022010

/-! ## A013848.P10467673186082626606

`A011782(15*n+10)`
-/

namespace A013848.P10467673186082626606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (15 * n + 10)

end

end A013848.P10467673186082626606

/-!
# A013849: 

The programs for A013849, there is no canonical definition to state claims against.
-/

/-! ## A013849.P5179646604646630507

`8^(5*n+4)`
-/

namespace A013849.P5179646604646630507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (5 * n + 4)

end

end A013849.P5179646604646630507

/-! ## A013849.P10051347560228281857

`A013823(3*n+2)`
-/

namespace A013849.P10051347560228281857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013823 (3 * n + 2)

end

end A013849.P10051347560228281857

/-! ## A013849.P12891770320358869131

`A001018(5*(n+1)-1)`
-/

namespace A013849.P12891770320358869131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (5 * (n + 1) - 1)

end

end A013849.P12891770320358869131

/-! ## A013849.P8646910081246282837

`A164640(A017341(n)+3)`
-/

namespace A013849.P8646910081246282837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164640 (A017341 n + 3).toNat

end

end A013849.P8646910081246282837

/-!
# A013850: 

The programs for A013850, there is no canonical definition to state claims against.
-/

/-! ## A013850.P17399402460244319543

`3^(10*n+2)`
-/

namespace A013850.P17399402460244319543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (10 * n + 2)

end

end A013850.P17399402460244319543

/-! ## A013850.P16564335426063044675

`record[(2-gcd(5, n))^(n+2)]`
-/

namespace A013850.P16564335426063044675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 5 n : ℤ)) ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013850.P16564335426063044675

/-! ## A013850.P4344674523596582118

`a(n-1)/(1/3)^10` with `a(0)=9`
-/

namespace A013850.P4344674523596582118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 10

end

end A013850.P4344674523596582118

/-! ## A013850.P10513311312090874559

`(3^record[a(n-3)+5])²` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A013850.P10513311312090874559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A013850.P10513311312090874559

/-! ## A013850.P1663983583546819303

`A013826(n)²`
-/

namespace A013850.P1663983583546819303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013826 n ^ 2

end

end A013850.P1663983583546819303

/-!
# A013851: 

The programs for A013851, there is no canonical definition to state claims against.
-/

/-! ## A013851.P17755699786759402304

`9^(5*n+2)`
-/

namespace A013851.P17755699786759402304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (5 * n + 2)

end

end A013851.P17755699786759402304

/-! ## A013851.P18174128899690582459

`(record[3^(gcd(5, n)+n-2)]/3)²`
-/

namespace A013851.P18174128899690582459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.gcd 5 n : ℤ) + ((n : ℤ) - 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 3) ^ 2

end

end A013851.P18174128899690582459

/-! ## A013851.P11797232758916257895

`A013827(n)²`
-/

namespace A013851.P11797232758916257895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013827 n ^ 2

end

end A013851.P11797232758916257895

/-! ## A013851.P7260885819302352584

`A013829(2*n)`
-/

namespace A013851.P7260885819302352584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013829 (2 * n)

end

end A013851.P7260885819302352584

/-!
# A013852: 

The programs for A013852, there is no canonical definition to state claims against.
-/

/-! ## A013852.P11081242525349940413

`9^(5*n+3)`
-/

namespace A013852.P11081242525349940413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (5 * n + 3)

end

end A013852.P11081242525349940413

/-! ## A013852.P14160084551903462778

`(3^(record[xor(3, n)]+n))²`
-/

namespace A013852.P14160084551903462778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n)) ^ 2

end

end A013852.P14160084551903462778

/-! ## A013852.P9444627666428347410

`(3^record[a(n-3)+5])²` with `a(0)=3, a(1)=1, a(2)=0`
-/

namespace A013852.P9444627666428347410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 0] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A013852.P9444627666428347410

/-! ## A013852.P8767806036541516745

`(record[3^(gcd(5, n)+n-2)]/(1-and(2, n)))²`
-/

namespace A013852.P8767806036541516745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.gcd 5 n : ℤ) + ((n : ℤ) - 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (1 - (Nat.land 2 n : ℤ) : ℚ)) ^ 2

end

end A013852.P8767806036541516745

/-! ## A013852.P5564417573050654808

`A013828(n)²`
-/

namespace A013852.P5564417573050654808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013828 n ^ 2

end

end A013852.P5564417573050654808

/-!
# A013853: 

The programs for A013853, there is no canonical definition to state claims against.
-/

/-! ## A013853.P14910654789659694970

`9^(5*n+4)`
-/

namespace A013853.P14910654789659694970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (5 * n + 4)

end

end A013853.P14910654789659694970

/-! ## A013853.P9197195965408922403

`(3^record[a(n-3)+5])²` with `a(0)=4, a(1)=1, a(2)=0`
-/

namespace A013853.P9197195965408922403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 0] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A013853.P9197195965408922403

/-! ## A013853.P3919498771256463436

`A013829(n)²`
-/

namespace A013853.P3919498771256463436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013829 n ^ 2

end

end A013853.P3919498771256463436

/-! ## A013853.P4454212367629286514

`A013828(Δ[n²])`
-/

namespace A013853.P4454212367629286514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013828 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013853.P4454212367629286514

/-!
# A013854: 

The programs for A013854, there is no canonical definition to state claims against.
-/

/-! ## A013854.P11575235214026656596

`10^(5*n+1)`
-/

namespace A013854.P11575235214026656596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (5 * n + 1)

end

end A013854.P11575235214026656596

/-! ## A013854.P2917411645772780334

`a(n-1)/(1/10)^5` with `a(0)=10`
-/

namespace A013854.P2917411645772780334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) / ((1 : ℚ) / 10) ^ 5

end

end A013854.P2917411645772780334

/-! ## A013854.P3279234884136055626

`A011557(5*n+1)`
-/

namespace A013854.P3279234884136055626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (5 * n + 1)

end

end A013854.P3279234884136055626

/-! ## A013854.P2867936020663268563

`A178500(5*n+1)`
-/

namespace A013854.P2867936020663268563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 (5 * n + 1)

end

end A013854.P2867936020663268563

/-! ## A013854.P8274485178039828089

`A178501(5*n+2)`
-/

namespace A013854.P8274485178039828089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (5 * n + 2)

end

end A013854.P8274485178039828089

/-!
# A013855: 

The programs for A013855, there is no canonical definition to state claims against.
-/

/-! ## A013855.P2942179774946790103

`10^(5*n+2)`
-/

namespace A013855.P2942179774946790103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (5 * n + 2)

end

end A013855.P2942179774946790103

/-! ## A013855.P15904728290123922244

`A011557(5*n+2)`
-/

namespace A013855.P15904728290123922244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (5 * n + 2)

end

end A013855.P15904728290123922244

/-! ## A013855.P12880125514955635702

`A104459(10*n+5)`
-/

namespace A013855.P12880125514955635702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (10 * n + 5)

end

end A013855.P12880125514955635702

/-! ## A013855.P2160715568136658971

`A018072(2*(10*n+4))`
-/

namespace A013855.P2160715568136658971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 (2 * (10 * n + 4))

end

end A013855.P2160715568136658971

/-!
# A013856: 

The programs for A013856, there is no canonical definition to state claims against.
-/

/-! ## A013856.P8537044534210814857

`10^(5*n+3)`
-/

namespace A013856.P8537044534210814857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (5 * n + 3)

end

end A013856.P8537044534210814857

/-! ## A013856.P7899663100207609252

`A011557(5*n+3)`
-/

namespace A013856.P7899663100207609252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (5 * n + 3)

end

end A013856.P7899663100207609252

/-! ## A013856.P17006045793333772076

`A178501(5*n+4)`
-/

namespace A013856.P17006045793333772076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (5 * n + 4)

end

end A013856.P17006045793333772076

/-! ## A013856.P3438186041356022441

`10*10^A016873(n)`
-/

namespace A013856.P3438186041356022441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * (10 : ℚ) ^ (A016873 n : ℤ)

end

end A013856.P3438186041356022441

/-!
# A013857: 

The programs for A013857, there is no canonical definition to state claims against.
-/

/-! ## A013857.P10891920298219896284

`10^(5*n+4)`
-/

namespace A013857.P10891920298219896284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (5 * n + 4)

end

end A013857.P10891920298219896284

/-! ## A013857.P3261598949691145631

`A178501(5*(n+1))`
-/

namespace A013857.P3261598949691145631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (5 * (n + 1))

end

end A013857.P3261598949691145631

/-! ## A013857.P4132082435561344421

`A011557(5*n+4)`
-/

namespace A013857.P4132082435561344421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (5 * n + 4)

end

end A013857.P4132082435561344421

/-! ## A013857.P18273261189697454443

`10*10^A016885(n)`
-/

namespace A013857.P18273261189697454443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * (10 : ℚ) ^ (A016885 n : ℤ)

end

end A013857.P18273261189697454443

/-! ## A013857.P15642980409452380682

`A286508(A017353(n))`
-/

namespace A013857.P15642980409452380682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 (A017353 n).toNat

end

end A013857.P15642980409452380682

/-!
# A013858: 

The programs for A013858, there is no canonical definition to state claims against.
-/

/-! ## A013858.P10732731071088417721

`11^(5*n+1)`
-/

namespace A013858.P10732731071088417721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (5 * n + 1)

end

end A013858.P10732731071088417721

/-! ## A013858.P5201729105152628928

`A001020(5*n+1)`
-/

namespace A013858.P5201729105152628928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (5 * n + 1)

end

end A013858.P5201729105152628928

/-! ## A013858.P8951154445031107435

`A073219(25*∑[n]+3)`
-/

namespace A013858.P8951154445031107435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073219 (25 * (∑ j ∈ Finset.range (n + 1), f1 j) + 3)

end

end A013858.P8951154445031107435

/-! ## A013858.P10509604365535065843

`A017937(5*2*n+2)`
-/

namespace A013858.P10509604365535065843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017937 (5 * (2 * n) + 2)

end

end A013858.P10509604365535065843

/-! ## A013858.P15023840415091385292

`A017938(5*2*n+2)`
-/

namespace A013858.P15023840415091385292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017938 (5 * (2 * n) + 2)

end

end A013858.P15023840415091385292

/-!
# A013859: 

The programs for A013859, there is no canonical definition to state claims against.
-/

/-! ## A013859.P11637586140046799981

`11^(5*n+2)`
-/

namespace A013859.P11637586140046799981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (5 * n + 2)

end

end A013859.P11637586140046799981

/-! ## A013859.P14780064747398753123

`A001020(A016897(n)-2)`
-/

namespace A013859.P14780064747398753123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A016897 n - 2).toNat

end

end A013859.P14780064747398753123

/-! ## A013859.P14312520308388083670

`A013716(n)*A013748(n)`
-/

namespace A013859.P14312520308388083670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013716 n * A013748 n

end

end A013859.P14312520308388083670

/-! ## A013859.P16981091646786076204

`A013716(n)²*A001020(n)`
-/

namespace A013859.P16981091646786076204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013716 n ^ 2 * A001020 n

end

end A013859.P16981091646786076204

/-! ## A013859.P10173521427343986965

`11^A016873(n)/A057979(2*n)`
-/

namespace A013859.P10173521427343986965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A016873 n : ℤ) / (A057979 (2 * n) : ℚ)

end

end A013859.P10173521427343986965

/-!
# A013860: 

The programs for A013860, there is no canonical definition to state claims against.
-/

/-! ## A013860.P10116109884853253283

`11^(5*n+3)`
-/

namespace A013860.P10116109884853253283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (5 * n + 3)

end

end A013860.P10116109884853253283

/-! ## A013860.P4722427136850715259

`A001020(A016885(n))`
-/

namespace A013860.P4722427136850715259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A016885 n).toNat

end

end A013860.P4722427136850715259

/-! ## A013860.P16215051679629866971

`A001020(A016897(n)-1)`
-/

namespace A013860.P16215051679629866971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A016897 n - 1).toNat

end

end A013860.P16215051679629866971

/-! ## A013860.P16801548756097211618

`A013716(n)*A013749(n)`
-/

namespace A013860.P16801548756097211618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013716 n * A013749 n

end

end A013860.P16801548756097211618

/-!
# A013861: 

The programs for A013861, there is no canonical definition to state claims against.
-/

/-! ## A013861.P18309822356387924536

`11^(5*n+4)`
-/

namespace A013861.P18309822356387924536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (5 * n + 4)

end

end A013861.P18309822356387924536

/-! ## A013861.P16161254181913156672

`A001020(A016897(n))`
-/

namespace A013861.P16161254181913156672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A016897 n).toNat

end

end A013861.P16161254181913156672

/-! ## A013861.P14056097359584720708

`A034524(sqrt(A016874(n))+2)-1`
-/

namespace A013861.P14056097359584720708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034524 (SequenceMachineLib.roundAway (Real.sqrt (A016874 n : ℝ) + 2)).toNat - 1

end

end A013861.P14056097359584720708

/-! ## A013861.P14103741099046409711

`11^A016897(n)/A057979(2*n)`
-/

namespace A013861.P14103741099046409711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A016897 n : ℤ) / (A057979 (2 * n) : ℚ)

end

end A013861.P14103741099046409711

/-! ## A013861.P10791425585315159633

`A001020(n+1)²²*A001020(n)`
-/

namespace A013861.P10791425585315159633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001020 (n + 1) ^ 2) ^ 2 * A001020 n

end

end A013861.P10791425585315159633

/-!
# A013862: 

The programs for A013862, there is no canonical definition to state claims against.
-/

/-! ## A013862.P10389998942508292494

`12^(5*n+1)`
-/

namespace A013862.P10389998942508292494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ (5 * n + 1)

end

end A013862.P10389998942508292494

/-! ## A013862.P13738069135092164009

`floor(12^(A016885(n)-2))`
-/

namespace A013862.P13738069135092164009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 : ℚ) ^ (A016885 n - 2 : ℤ)⌋

end

end A013862.P13738069135092164009

/-! ## A013862.P741370645451457046

`A001021(4*n+1+n)`
-/

namespace A013862.P741370645451457046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (4 * n + 1 + n)

end

end A013862.P741370645451457046

/-! ## A013862.P10280305052185367831

`A013826(n)*A013830(n)`
-/

namespace A013862.P10280305052185367831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013826 n * A013830 n

end

end A013862.P10280305052185367831

/-!
# A013863: 

The programs for A013863, there is no canonical definition to state claims against.
-/

/-! ## A013863.P3047689621576516885

`12^(5*n+2)`
-/

namespace A013863.P3047689621576516885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ (5 * n + 2)

end

end A013863.P3047689621576516885

/-! ## A013863.P11999719196250385614

`A001021(2*n+3*n+2)`
-/

namespace A013863.P11999719196250385614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (2 * n + 3 * n + 2)

end

end A013863.P11999719196250385614

/-! ## A013863.P2305269492336949449

`A282022(A017209(n)+n)`
-/

namespace A013863.P2305269492336949449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282022 (A017209 n + (n : ℤ)).toNat

end

end A013863.P2305269492336949449

/-! ## A013863.P7611774323985505034

`A013717(n)*A013750(n)`
-/

namespace A013863.P7611774323985505034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013717 n * A013750 n

end

end A013863.P7611774323985505034

/-!
# A013864: 

The programs for A013864, there is no canonical definition to state claims against.
-/

/-! ## A013864.P11845312784105066770

`12^(5*n+3)`
-/

namespace A013864.P11845312784105066770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ (5 * n + 3)

end

end A013864.P11845312784105066770

/-! ## A013864.P10707643686436973809

`A001021(A016885(n))`
-/

namespace A013864.P10707643686436973809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (A016885 n).toNat

end

end A013864.P10707643686436973809

/-! ## A013864.P11862298816748342365

`A018080(4*A016885(n))`
-/

namespace A013864.P11862298816748342365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018080 (4 * A016885 n).toNat

end

end A013864.P11862298816748342365

/-! ## A013864.P18403347225288510079

`A013717(n)*A013751(n)`
-/

namespace A013864.P18403347225288510079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013717 n * A013751 n

end

end A013864.P18403347225288510079

/-!
# A013865: 

The programs for A013865, there is no canonical definition to state claims against.
-/

/-! ## A013865.P229975758752749213

`12^(5*n+4)`
-/

namespace A013865.P229975758752749213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ (5 * n + 4)

end

end A013865.P229975758752749213

/-! ## A013865.P10799123079132388768

`A001021(5*(n+1)-1)`
-/

namespace A013865.P10799123079132388768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (5 * (n + 1) - 1)

end

end A013865.P10799123079132388768

/-! ## A013865.P3732644833272036315

`A013829(n)*A013833(n)`
-/

namespace A013865.P3732644833272036315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013829 n * A013833 n

end

end A013865.P3732644833272036315

/-! ## A013865.P2024775453487038930

`A013825(n)²*A013829(n)`
-/

namespace A013865.P2024775453487038930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013825 n ^ 2 * A013829 n

end

end A013865.P2024775453487038930

/-!
# A013866: 

The programs for A013866, there is no canonical definition to state claims against.
-/

/-! ## A013866.P15614125265609515317

`13^(5*n+1)`
-/

namespace A013866.P15614125265609515317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ (5 * n + 1)

end

end A013866.P15614125265609515317

/-! ## A013866.P17836446198437698157

`(13^n)²*A013752(n)`
-/

namespace A013866.P17836446198437698157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((13 ^ n) ^ 2 : ℤ) * A013752 n

end

end A013866.P17836446198437698157

/-! ## A013866.P3108590538351855807

`A017943(5*2*n+2)`
-/

namespace A013866.P3108590538351855807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017943 (5 * (2 * n) + 2)

end

end A013866.P3108590538351855807

/-! ## A013866.P13455202490701025722

`A017945(5*2*n+2)`
-/

namespace A013866.P13455202490701025722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 (5 * (2 * n) + 2)

end

end A013866.P13455202490701025722

/-! ## A013866.P4273255918886232801

`A001022(4*n+n+1)`
-/

namespace A013866.P4273255918886232801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 (4 * n + (n + 1))

end

end A013866.P4273255918886232801

/-!
# A013867: 

The programs for A013867, there is no canonical definition to state claims against.
-/

/-! ## A013867.P1406066423052328712

`13^(5*n+2)`
-/

namespace A013867.P1406066423052328712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ (5 * n + 2)

end

end A013867.P1406066423052328712

/-! ## A013867.P11807332396977517124

`(13^n)²*A013753(n)`
-/

namespace A013867.P11807332396977517124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((13 ^ n) ^ 2 : ℤ) * A013753 n

end

end A013867.P11807332396977517124

/-! ## A013867.P13065367718807376570

`A001022(4*n+n+2)`
-/

namespace A013867.P13065367718807376570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 (4 * n + (n + 2))

end

end A013867.P13065367718807376570

/-! ## A013867.P4638576103504977024

`A013718(n)*A013752(n)`
-/

namespace A013867.P4638576103504977024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013718 n * A013752 n

end

end A013867.P4638576103504977024

/-!
# A013868: 

The programs for A013868, there is no canonical definition to state claims against.
-/

/-! ## A013868.P2147493156662080232

`13^(5*n+3)`
-/

namespace A013868.P2147493156662080232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ (5 * n + 3)

end

end A013868.P2147493156662080232

/-! ## A013868.P8326261761767382765

`13^A016897(n)/13`
-/

namespace A013868.P8326261761767382765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A016897 n : ℤ) / 13

end

end A013868.P8326261761767382765

/-! ## A013868.P14591581174551726287

`A001022(4*n+n+3)`
-/

namespace A013868.P14591581174551726287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 (4 * n + (n + 3))

end

end A013868.P14591581174551726287

/-! ## A013868.P10145647080757769442

`A013718(n)*A013753(n)`
-/

namespace A013868.P10145647080757769442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013718 n * A013753 n

end

end A013868.P10145647080757769442

/-! ## A013868.P12738015714412397589

`sqrt(13^A017341(n))`
-/

namespace A013868.P12738015714412397589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((13 : ℚ) ^ (A017341 n : ℤ) : ℝ)

end

end A013868.P12738015714412397589

/-!
# A013869: 

The programs for A013869, there is no canonical definition to state claims against.
-/

/-! ## A013869.P6361605503529006021

`13^(5*n+4)`
-/

namespace A013869.P6361605503529006021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ (5 * n + 4)

end

end A013869.P6361605503529006021

/-! ## A013869.P11141797427092348215

`(sqrt(13)^A016897(n))²`
-/

namespace A013869.P11141797427092348215
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (13 : ℝ) ^ (A016897 n : ℤ)) ^ 2

end

end A013869.P11141797427092348215

/-! ## A013869.P7225770494080301885

`A001022(5*(n+1)-1)`
-/

namespace A013869.P7225770494080301885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 (5 * (n + 1) - 1)

end

end A013869.P7225770494080301885

/-! ## A013869.P13218369473530393100

`A141012(5*(n+1))-1`
-/

namespace A013869.P13218369473530393100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141012 (5 * (n + 1)) - 1

end

end A013869.P13218369473530393100

/-!
# A013870: 

The programs for A013870, there is no canonical definition to state claims against.
-/

/-! ## A013870.P8322634239138066192

`14^(5*n+1)`
-/

namespace A013870.P8322634239138066192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ (5 * n + 1)

end

end A013870.P8322634239138066192

/-! ## A013870.P17797955357466905683

`A017946(5*2*n+2)`
-/

namespace A013870.P17797955357466905683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017946 (5 * (2 * n) + 2)

end

end A013870.P17797955357466905683

/-! ## A013870.P5164276806186766214

`A017948(5*2*n+2)`
-/

namespace A013870.P5164276806186766214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017948 (5 * (2 * n) + 2)

end

end A013870.P5164276806186766214

/-! ## A013870.P11579864101462036696

`A001023(A016861(n))`
-/

namespace A013870.P11579864101462036696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 (A016861 n).toNat

end

end A013870.P11579864101462036696

/-! ## A013870.P7149954526190747563

`A018086(A215145(n)+3)`
-/

namespace A013870.P7149954526190747563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018086 (A215145 n + 3).toNat

end

end A013870.P7149954526190747563

/-!
# A013871: 

The programs for A013871, there is no canonical definition to state claims against.
-/

/-! ## A013871.P9362370806003961457

`14^(5*n+2)`
-/

namespace A013871.P9362370806003961457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ (5 * n + 2)

end

end A013871.P9362370806003961457

/-! ## A013871.P6389523924784650490

`lcm(4, sqrt(14)^A017317(n))`
-/

namespace A013871.P6389523924784650490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (SequenceMachineLib.roundAway (Real.sqrt (14 : ℝ) ^ (A017317 n : ℤ)))

end

end A013871.P6389523924784650490

/-! ## A013871.P6531383071423145892

`A018086(A215145(n)+7)`
-/

namespace A013871.P6531383071423145892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018086 (A215145 n + 7).toNat

end

end A013871.P6531383071423145892

/-! ## A013871.P12871923186283498927

`A013719(n)*A013754(n)`
-/

namespace A013871.P12871923186283498927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013719 n * A013754 n

end

end A013871.P12871923186283498927

/-!
# A013872: 

The programs for A013872, there is no canonical definition to state claims against.
-/

/-! ## A013872.P9823214202622381284

`14^(5*n+3)`
-/

namespace A013872.P9823214202622381284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ (5 * n + 3)

end

end A013872.P9823214202622381284

/-! ## A013872.P12399765916992253190

`A001023(2*n+3*(n+1))`
-/

namespace A013872.P12399765916992253190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 (2 * n + 3 * (n + 1))

end

end A013872.P12399765916992253190

/-! ## A013872.P10199127878089020468

`A018086(A215145(n)+11)`
-/

namespace A013872.P10199127878089020468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018086 (A215145 n + 11).toNat

end

end A013872.P10199127878089020468

/-!
# A013873: 

The programs for A013873, there is no canonical definition to state claims against.
-/

/-! ## A013873.P123359446826044687

`14^(5*n+4)`
-/

namespace A013873.P123359446826044687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ (5 * n + 4)

end

end A013873.P123359446826044687

/-! ## A013873.P3234088340750562705

`A001023(A016897(n))`
-/

namespace A013873.P3234088340750562705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 (A016897 n).toNat

end

end A013873.P3234088340750562705

/-! ## A013873.P7314400586717671011

`A018086(A215145(n)+15)`
-/

namespace A013873.P7314400586717671011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018086 (A215145 n + 15).toNat

end

end A013873.P7314400586717671011

/-!
# A013874: 

The programs for A013874, there is no canonical definition to state claims against.
-/

/-! ## A013874.P11512437802671408093

`15^(5*n+1)`
-/

namespace A013874.P11512437802671408093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ (5 * n + 1)

end

end A013874.P11512437802671408093

/-! ## A013874.P4839060998887338689

`A017950(5*2*n+2)`
-/

namespace A013874.P4839060998887338689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017950 (5 * (2 * n) + 2)

end

end A013874.P4839060998887338689

/-! ## A013874.P6532067498718482507

`A017951(5*2*n+2)`
-/

namespace A013874.P6532067498718482507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017951 (5 * (2 * n) + 2)

end

end A013874.P6532067498718482507

/-! ## A013874.P7657796870726820701

`A001024(∑[10*n]+1-5*n²)`
-/

namespace A013874.P7657796870726820701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001024 (∑ j ∈ Finset.range (n + 1), f1 j + 1 - 5 * n ^ 2)

end

end A013874.P7657796870726820701

/-! ## A013874.P12394023078502232001

`A013826(n)*A013834(n)`
-/

namespace A013874.P12394023078502232001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013826 n * A013834 n

end

end A013874.P12394023078502232001

/-!
# A013875: 

The programs for A013875, there is no canonical definition to state claims against.
-/

/-! ## A013875.P15638026904806495147

`15^(5*n+2)`
-/

namespace A013875.P15638026904806495147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ (5 * n + 2)

end

end A013875.P15638026904806495147

/-! ## A013875.P12245950176727121267

`A101553(10*n+4)`
-/

namespace A013875.P12245950176727121267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101553 (10 * n + 4)

end

end A013875.P12245950176727121267

/-! ## A013875.P2930068708546750811

`A013720(n)*A013756(n)`
-/

namespace A013875.P2930068708546750811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013720 n * A013756 n

end

end A013875.P2930068708546750811

/-! ## A013875.P16398149645955718457

`A013827(n)*A013835(n)`
-/

namespace A013875.P16398149645955718457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013827 n * A013835 n

end

end A013875.P16398149645955718457

/-! ## A013875.P15463512100509543092

`A013720(n)²*A001024(n)`
-/

namespace A013875.P15463512100509543092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013720 n ^ 2 * A001024 n

end

end A013875.P15463512100509543092

/-!
# A013876: 

The programs for A013876, there is no canonical definition to state claims against.
-/

/-! ## A013876.P3931459038182228595

`15^(5*n+3)`
-/

namespace A013876.P3931459038182228595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ (5 * n + 3)

end

end A013876.P3931459038182228595

/-! ## A013876.P16338926689889090540

`15*15^A016873(n)`
-/

namespace A013876.P16338926689889090540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 * (15 : ℚ) ^ (A016873 n : ℤ)

end

end A013876.P16338926689889090540

/-! ## A013876.P15438601826249088460

`ceil(15*15^(A016885(n)-1))`
-/

namespace A013876.P15438601826249088460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈15 * (15 : ℚ) ^ (A016885 n - 1 : ℤ)⌉

end

end A013876.P15438601826249088460

/-! ## A013876.P7345233188699744498

`xor(1, A001024(5*n+3))+1`
-/

namespace A013876.P7345233188699744498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001024 (5 * n + 3)) + 1

end

end A013876.P7345233188699744498

/-! ## A013876.P837688047533338003

`A017949(sqrt(A017342(n)))`
-/

namespace A013876.P837688047533338003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 (SequenceMachineLib.roundAway (Real.sqrt (A017342 n : ℝ))).toNat

end

end A013876.P837688047533338003

/-!
# A013877: 

The programs for A013877, there is no canonical definition to state claims against.
-/

/-! ## A013877.P12198271815844271618

`15^(5*n+4)`
-/

namespace A013877.P12198271815844271618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ (5 * n + 4)

end

end A013877.P12198271815844271618

/-! ## A013877.P10816563066814945846

`15*15^A016885(n)`
-/

namespace A013877.P10816563066814945846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 * (15 : ℚ) ^ (A016885 n : ℤ)

end

end A013877.P10816563066814945846

/-! ## A013877.P17665112637226843825

`A001024(A016897(n))`
-/

namespace A013877.P17665112637226843825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001024 (A016897 n).toNat

end

end A013877.P17665112637226843825

/-! ## A013877.P10212208972885885175

`A017949(A004442(A017377(n)))`
-/

namespace A013877.P10212208972885885175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 (A004442 (A017377 n).toNat).toNat

end

end A013877.P10212208972885885175

/-!
# A013878: 

The programs for A013878, there is no canonical definition to state claims against.
-/

/-! ## A013878.P3760233143035716743

`4^(10*n+2)`
-/

namespace A013878.P3760233143035716743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (10 * n + 2)

end

end A013878.P3760233143035716743

/-! ## A013878.P9412325442591853519

`record[(1-gcd(5, n))^(n+2)]`
-/

namespace A013878.P9412325442591853519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.gcd 5 n : ℤ)) ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013878.P9412325442591853519

/-! ## A013878.P12400563379882648473

`A013830(n)²`
-/

namespace A013878.P12400563379882648473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013830 n ^ 2

end

end A013878.P12400563379882648473

/-! ## A013878.P4919635465265360038

`A013831(2*n)`
-/

namespace A013878.P4919635465265360038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013831 (2 * n)

end

end A013878.P4919635465265360038

/-! ## A013878.P10956514961573702696

`A013825(4*n)`
-/

namespace A013878.P10956514961573702696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013825 (4 * n)

end

end A013878.P10956514961573702696

/-!
# A013879: 

The programs for A013879, there is no canonical definition to state claims against.
-/

/-! ## A013879.P2425141429283032869

`4^(10*n+4)`
-/

namespace A013879.P2425141429283032869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (10 * n + 4)

end

end A013879.P2425141429283032869

/-! ## A013879.P16583252132559237210

`A013831(n)²`
-/

namespace A013879.P16583252132559237210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013831 n ^ 2

end

end A013879.P16583252132559237210

/-! ## A013879.P14002213378426316445

`A013833(2*n)`
-/

namespace A013879.P14002213378426316445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013833 (2 * n)

end

end A013879.P14002213378426316445

/-! ## A013879.P15034058244811947774

`A013823(n)²²`
-/

namespace A013879.P15034058244811947774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013823 n ^ 2) ^ 2

end

end A013879.P15034058244811947774

/-! ## A013879.P809286118952181963

`A013825(2*n)²`
-/

namespace A013879.P809286118952181963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013825 (2 * n) ^ 2

end

end A013879.P809286118952181963

/-!
# A013880: 

The programs for A013880, there is no canonical definition to state claims against.
-/

/-! ## A013880.P3572682122513329133

`4^(10*n+6)`
-/

namespace A013880.P3572682122513329133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (10 * n + 6)

end

end A013880.P3572682122513329133

/-! ## A013880.P1290043681400659129

`lcm(2, (8*32^n)²²)`
-/

namespace A013880.P1290043681400659129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (((8 * 32 ^ n) ^ 2) ^ 2)

end

end A013880.P1290043681400659129

/-! ## A013880.P7840717599413431515

`and(-2, (8*32^n)²²)`
-/

namespace A013880.P7840717599413431515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (((8 * 32 ^ n) ^ 2) ^ 2 : ℤ)

end

end A013880.P7840717599413431515

/-! ## A013880.P769834056765499154

`A013832(n)²`
-/

namespace A013880.P769834056765499154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013832 n ^ 2

end

end A013880.P769834056765499154

/-! ## A013880.P12231414746899460121

`A013824(n)²²`
-/

namespace A013880.P12231414746899460121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013824 n ^ 2) ^ 2

end

end A013880.P12231414746899460121

/-!
# A013881: 

The programs for A013881, there is no canonical definition to state claims against.
-/

/-! ## A013881.P154192891690149358

`4^(10*n+8)`
-/

namespace A013881.P154192891690149358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (10 * n + 8)

end

end A013881.P154192891690149358

/-! ## A013881.P16744118311912429000

`A013833(n)²`
-/

namespace A013881.P16744118311912429000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013833 n ^ 2

end

end A013881.P16744118311912429000

/-! ## A013881.P1348873230608649510

`A013825(n)²²`
-/

namespace A013881.P1348873230608649510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013825 n ^ 2) ^ 2

end

end A013881.P1348873230608649510

/-! ## A013881.P7012987268965648366

`A013832(Δ[n²])`
-/

namespace A013881.P7012987268965648366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013832 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013881.P7012987268965648366

/-! ## A013881.P17157276501154468672

`(4*A013832(n))²`
-/

namespace A013881.P17157276501154468672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A013832 n) ^ 2

end

end A013881.P17157276501154468672

/-!
# A013882: 

The programs for A013882, there is no canonical definition to state claims against.
-/

/-! ## A013882.P9336285408005273482

`17^(5*n+1)`
-/

namespace A013882.P9336285408005273482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (5 * n + 1)

end

end A013882.P9336285408005273482

/-! ## A013882.P12073905621571265962

`A017956(5*2*n+2)`
-/

namespace A013882.P12073905621571265962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017956 (5 * (2 * n) + 2)

end

end A013882.P12073905621571265962

/-! ## A013882.P1226307984154242733

`A017957(A017293(n))`
-/

namespace A013882.P1226307984154242733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 (A017293 n).toNat

end

end A013882.P1226307984154242733

/-! ## A013882.P3160878026841635631

`A017955(A017413(n)-n)`
-/

namespace A013882.P3160878026841635631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 (A017413 n - (n : ℤ)).toNat

end

end A013882.P3160878026841635631

/-!
# A013883: 

The programs for A013883, there is no canonical definition to state claims against.
-/

/-! ## A013883.P2724830769089973943

`17^(5*n+2)`
-/

namespace A013883.P2724830769089973943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (5 * n + 2)

end

end A013883.P2724830769089973943

/-! ## A013883.P12214199870698257008

`A096881(A017317(n))`
-/

namespace A013883.P12214199870698257008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096881 (A017317 n).toNat

end

end A013883.P12214199870698257008

/-! ## A013883.P17596097361671411096

`17^A016873(n)/A057979(2*n)`
-/

namespace A013883.P17596097361671411096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (A016873 n : ℤ) / (A057979 (2 * n) : ℚ)

end

end A013883.P17596097361671411096

/-! ## A013883.P7752714751184191956

`A001026(n)²*A001026(3*n+2)`
-/

namespace A013883.P7752714751184191956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 n ^ 2 * A001026 (3 * n + 2)

end

end A013883.P7752714751184191956

/-!
# A013884: 

The programs for A013884, there is no canonical definition to state claims against.
-/

/-! ## A013884.P16561790047141426133

`17^(5*n+3)`
-/

namespace A013884.P16561790047141426133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (5 * n + 3)

end

end A013884.P16561790047141426133

/-! ## A013884.P11446484822464689027

`A096881(A017317(n)+2)`
-/

namespace A013884.P11446484822464689027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096881 (A017317 n + 2).toNat

end

end A013884.P11446484822464689027

/-! ## A013884.P3577250507833340179

`A018093(2*A017341(n))`
-/

namespace A013884.P3577250507833340179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 (2 * A017341 n).toNat

end

end A013884.P3577250507833340179

/-! ## A013884.P14103773865897890563

`A018164(5*A016885(n))`
-/

namespace A013884.P14103773865897890563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018164 (5 * A016885 n).toNat

end

end A013884.P14103773865897890563

/-! ## A013884.P3457097727512700979

`A018164(lcm(5, A016885(n)))`
-/

namespace A013884.P3457097727512700979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018164 (Int.lcm 5 (A016885 n))

end

end A013884.P3457097727512700979

/-!
# A013885: 

The programs for A013885, there is no canonical definition to state claims against.
-/

/-! ## A013885.P7807798925817870096

`17^(5*n+4)`
-/

namespace A013885.P7807798925817870096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (5 * n + 4)

end

end A013885.P7807798925817870096

/-! ## A013885.P11164680429610703613

`A001026(A016897(n))`
-/

namespace A013885.P11164680429610703613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 (A016897 n).toNat

end

end A013885.P11164680429610703613

/-! ## A013885.P8513270429401049277

`A096881(A017317(n)+4)`
-/

namespace A013885.P8513270429401049277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096881 (A017317 n + 4).toNat

end

end A013885.P8513270429401049277

/-! ## A013885.P4027593451255947704

`17^A016897(n)/A057979(2*n)`
-/

namespace A013885.P4027593451255947704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (A016897 n : ℤ) / (A057979 (2 * n) : ℚ)

end

end A013885.P4027593451255947704

/-!
# A013886: 

The programs for A013886, there is no canonical definition to state claims against.
-/

/-! ## A013886.P2295412063307442906

`18^(5*n+1)`
-/

namespace A013886.P2295412063307442906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ (5 * n + 1)

end

end A013886.P2295412063307442906

/-! ## A013886.P4362919303776854108

`A017958(5*2*n+2)`
-/

namespace A013886.P4362919303776854108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017958 (5 * (2 * n) + 2)

end

end A013886.P4362919303776854108

/-! ## A013886.P386854790605500205

`18*18*18*18*a(n-1)*a(A010894(n))` with `a(0)=18`
-/

namespace A013886.P386854790605500205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18] fun n a =>
  18 * (18 * (18 * (18 * a (n - 1))) * a (A010894 (n + 21)).toNat)

end

end A013886.P386854790605500205

/-! ## A013886.P6336417501557258632

`A001027(A016861(n))`
-/

namespace A013886.P6336417501557258632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001027 (A016861 n).toNat

end

end A013886.P6336417501557258632

/-!
# A013887: 

The programs for A013887, there is no canonical definition to state claims against.
-/

/-! ## A013887.P1756042823833200194

`18^(5*n+2)`
-/

namespace A013887.P1756042823833200194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ (5 * n + 2)

end

end A013887.P1756042823833200194

/-! ## A013887.P6865589941553221027

`A001027(Δ[A005476(n)])`
-/

namespace A013887.P6865589941553221027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001027 (f1 (n + 1) - f1 n).toNat

end

end A013887.P6865589941553221027

/-! ## A013887.P5635574103545563074

`A017958(A017209(n)+n)`
-/

namespace A013887.P5635574103545563074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017958 (A017209 n + (n : ℤ)).toNat

end

end A013887.P5635574103545563074

/-!
# A013888: 

The programs for A013888, there is no canonical definition to state claims against.
-/

/-! ## A013888.P15924872719604078390

`18^(5*n+3)`
-/

namespace A013888.P15924872719604078390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ (5 * n + 3)

end

end A013888.P15924872719604078390

/-!
# A013889: 

The programs for A013889, there is no canonical definition to state claims against.
-/

/-! ## A013889.P3777084560769228820

`18^(5*n+4)`
-/

namespace A013889.P3777084560769228820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ (5 * n + 4)

end

end A013889.P3777084560769228820

/-! ## A013889.P16131939474333912790

`A001027(A016897(n))`
-/

namespace A013889.P16131939474333912790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001027 (A016897 n).toNat

end

end A013889.P16131939474333912790

/-! ## A013889.P2702876023524627794

`A001027(Δ[A147875(n)])`
-/

namespace A013889.P2702876023524627794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001027 (f1 (n + 1) - f1 n).toNat

end

end A013889.P2702876023524627794

/-! ## A013889.P8477577232820974999

`A001027(A008587(n)+4)`
-/

namespace A013889.P8477577232820974999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001027 (A008587 n + 4).toNat

end

end A013889.P8477577232820974999

/-!
# A013890: 

The programs for A013890, there is no canonical definition to state claims against.
-/

/-! ## A013890.P6258010395728489468

`19^(5*n+1)`
-/

namespace A013890.P6258010395728489468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ (5 * n + 1)

end

end A013890.P6258010395728489468

/-! ## A013890.P2770105077570175776

`A001029(5*n+1)`
-/

namespace A013890.P2770105077570175776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 (5 * n + 1)

end

end A013890.P2770105077570175776

/-! ## A013890.P11363509796646406134

`A017961(5*2*n+2)`
-/

namespace A013890.P11363509796646406134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 (5 * (2 * n) + 2)

end

end A013890.P11363509796646406134

/-! ## A013890.P16356289782839888214

`A017962(Δ[A135706(n)])`
-/

namespace A013890.P16356289782839888214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017962 (f1 (n + 1) - f1 n).toNat

end

end A013890.P16356289782839888214

/-!
# A013891: 

The programs for A013891, there is no canonical definition to state claims against.
-/

/-! ## A013891.P8442177351342071385

`19^(5*n+2)`
-/

namespace A013891.P8442177351342071385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ (5 * n + 2)

end

end A013891.P8442177351342071385

/-! ## A013891.P16484021973078583757

`A013724(n)²*A001029(n)`
-/

namespace A013891.P16484021973078583757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013724 n ^ 2 * A001029 n

end

end A013891.P16484021973078583757

/-! ## A013891.P1328602970303905089

`A001029(A032559(n+1)+4*n+1)`
-/

namespace A013891.P1328602970303905089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 (A032559 (n + 1) + (4 * n + 1 : ℤ)).toNat

end

end A013891.P1328602970303905089

/-!
# A013892: 

The programs for A013892, there is no canonical definition to state claims against.
-/

/-! ## A013892.P8548611277785889833

`19^(5*n+3)`
-/

namespace A013892.P8548611277785889833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ (5 * n + 3)

end

end A013892.P8548611277785889833

/-! ## A013892.P13488409357796877329

`A001029(5*n+3)`
-/

namespace A013892.P13488409357796877329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 (5 * n + 3)

end

end A013892.P13488409357796877329

/-! ## A013892.P3236524949013267796

`A017962(A017341(n))`
-/

namespace A013892.P3236524949013267796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017962 (A017341 n).toNat

end

end A013892.P3236524949013267796

/-!
# A013893: 

The programs for A013893, there is no canonical definition to state claims against.
-/

/-! ## A013893.P6928680689257727465

`19^(5*n+4)`
-/

namespace A013893.P6928680689257727465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ (5 * n + 4)

end

end A013893.P6928680689257727465

/-! ## A013893.P9739060976740680134

`A001029((n+1)/(1/2)²+n)`
-/

namespace A013893.P9739060976740680134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((1 : ℚ) / 2) ^ 2 + (n : ℚ))).toNat

end

end A013893.P9739060976740680134

/-! ## A013893.P3514705541383211478

`sqrt(19^A017365(n))`
-/

namespace A013893.P3514705541383211478
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((19 : ℚ) ^ (A017365 n : ℤ) : ℝ)

end

end A013893.P3514705541383211478

/-!
# A013894: 

The programs for A013894, there is no canonical definition to state claims against.
-/

/-! ## A013894.P1934302080230228730

`20^(5*n+1)`
-/

namespace A013894.P1934302080230228730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ (5 * n + 1)

end

end A013894.P1934302080230228730

/-! ## A013894.P8165723517217081555

`A017964(A017293(n))`
-/

namespace A013894.P8165723517217081555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 (A017293 n).toNat

end

end A013894.P8165723517217081555

/-! ## A013894.P1725494947930199925

`A013830(n)*A013834(n)`
-/

namespace A013894.P1725494947930199925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013830 n * A013834 n

end

end A013894.P1725494947930199925

/-! ## A013894.P15553991038184392428

`A009964(A060747(3*n+1)-n)`
-/

namespace A013894.P15553991038184392428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 (A060747 (3 * n + 1) - (n : ℤ)).toNat

end

end A013894.P15553991038184392428

/-!
# A013895: 

The programs for A013895, there is no canonical definition to state claims against.
-/

/-! ## A013895.P11153688438084076226

`20^(5*n+2)`
-/

namespace A013895.P11153688438084076226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ (5 * n + 2)

end

end A013895.P11153688438084076226

/-! ## A013895.P14104327125819572823

`A009964(A016873(n))`
-/

namespace A013895.P14104327125819572823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 (A016873 n).toNat

end

end A013895.P14104327125819572823

/-! ## A013895.P655440542654119331

`A009964(A017317(n)/2)`
-/

namespace A013895.P655440542654119331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 (SequenceMachineLib.roundAway ((A017317 n : ℚ) / 2)).toNat

end

end A013895.P655440542654119331

/-!
# A013896: 

The programs for A013896, there is no canonical definition to state claims against.
-/

/-! ## A013896.P1396491496123376247

`20^(5*n+3)`
-/

namespace A013896.P1396491496123376247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ (5 * n + 3)

end

end A013896.P1396491496123376247

/-!
# A013897: 

The programs for A013897, there is no canonical definition to state claims against.
-/

/-! ## A013897.P8225553682167177473

`20^(5*n+4)`
-/

namespace A013897.P8225553682167177473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ (5 * n + 4)

end

end A013897.P8225553682167177473

/-!
# A013898: 

The programs for A013898, there is no canonical definition to state claims against.
-/

/-! ## A013898.P949013005423263964

`21^(5*n+1)`
-/

namespace A013898.P949013005423263964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ (5 * n + 1)

end

end A013898.P949013005423263964

/-! ## A013898.P13919603619530124548

`A009965(4*n+n+2)/21`
-/

namespace A013898.P13919603619530124548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009965 (4 * n + (n + 2)) : ℚ) / 21

end

end A013898.P13919603619530124548

/-! ## A013898.P5913913074066648411

`A009965(A016861(n))`
-/

namespace A013898.P5913913074066648411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009965 (A016861 n).toNat

end

end A013898.P5913913074066648411

/-!
# A013899: 

The programs for A013899, there is no canonical definition to state claims against.
-/

/-! ## A013899.P6717353824430861248

`21^(5*n+2)`
-/

namespace A013899.P6717353824430861248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ (5 * n + 2)

end

end A013899.P6717353824430861248

/-! ## A013899.P6461804359549499219

`A013726(n)²*21^n`
-/

namespace A013899.P6461804359549499219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013726 n ^ 2 * (21 ^ n : ℤ)

end

end A013899.P6461804359549499219

/-! ## A013899.P10399834862843522244

`A009965(4*n+n+2)`
-/

namespace A013899.P10399834862843522244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009965 (4 * n + (n + 2))

end

end A013899.P10399834862843522244

