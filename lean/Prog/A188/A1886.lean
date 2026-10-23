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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A188600: Number of n X n binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188600, there is no canonical definition to state claims against.
-/

/-! ## A188600.P7220584044980880261

`A188607(∑[4*n]+1)`
-/

namespace A188600.P7220584044980880261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188600.P7220584044980880261

/-! ## A188600.P10070297089591704263

`record[A003982(n)*A188607(n+1)]`
-/

namespace A188600.P10070297089591704263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A188607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188600.P10070297089591704263

/-! ## A188600.P9942762923680756282

`record[root(A188607(n+1), A143182(n))]`
-/

namespace A188600.P9942762923680756282
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188607 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188600.P9942762923680756282

/-! ## A188600.P14127951553754529090

`record[gcd(A003987(n), A188607(n+1))]`
-/

namespace A188600.P14127951553754529090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A188607 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188600.P14127951553754529090

/-! ## A188600.P9890297464220246052

`A188607(A001844(n))+A025443(n)`
-/

namespace A188600.P9890297464220246052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A001844 n).toNat + A025443 n

end

end A188600.P9890297464220246052

/-!
# A188601: Number of nX3 binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188601, there is no canonical definition to state claims against.
-/

/-! ## A188601.P3663634053469268045

`A188607(∑[n+3]+1)`
-/

namespace A188601.P3663634053469268045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188601.P3663634053469268045

/-! ## A188601.P814656702418753671

`or(A000007(n), A188607(A052905(n)+3))`
-/

namespace A188601.P814656702418753671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A188607 (A052905 n + 3).toNat)

end

end A188601.P814656702418753671

/-! ## A188601.P16162436292363991730

`A188607(A052905(n)+3)+A000007(n+1)`
-/

namespace A188601.P16162436292363991730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A052905 n + 3).toNat + A000007 (n + 1)

end

end A188601.P16162436292363991730

/-! ## A188601.P15281243838421955083

`A007318(n*(2*n+1))*A188607(A052905(n)+3)`
-/

namespace A188601.P15281243838421955083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n * (2 * n + 1)) * A188607 (A052905 n + 3).toNat

end

end A188601.P15281243838421955083

/-! ## A188601.P6551391258029030038

`A188607(A052905(n)+3)+A022895(A000040(n+2))`
-/

namespace A188601.P6551391258029030038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A052905 n + 3).toNat + A022895 (A000040 (n + 2)).toNat

end

end A188601.P6551391258029030038

/-!
# A188602: Number of nX4 binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188602, there is no canonical definition to state claims against.
-/

/-! ## A188602.P466003634145132725

`A188607(A141214(n+1))`
-/

namespace A188602.P466003634145132725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A141214 (n + 1)).toNat

end

end A188602.P466003634145132725

/-! ## A188602.P8967668475461514955

`A188607(A155212(n)+5)`
-/

namespace A188602.P8967668475461514955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A155212 n + 5).toNat

end

end A188602.P8967668475461514955

/-! ## A188602.P1547644656815294934

`A188607(Δ[A034857(n+1)])`
-/

namespace A188602.P1547644656815294934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (f1 (n + 1) - f1 n).toNat

end

end A188602.P1547644656815294934

/-! ## A188602.P1563609194804422803

`A188607(A052905(n+1)+2)`
-/

namespace A188602.P1563609194804422803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A052905 (n + 1) + 2).toNat

end

end A188602.P1563609194804422803

/-! ## A188602.P8918177805133128338

`A188607(A000217(n+4)-3)`
-/

namespace A188602.P8918177805133128338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A000217 (n + 4) - 3).toNat

end

end A188602.P8918177805133128338

/-!
# A188603: Number of nX5 binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188603, there is no canonical definition to state claims against.
-/

/-! ## A188603.P6923791327971441967

`A188607(Δ[A264443(n)])`
-/

namespace A188603.P6923791327971441967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (f1 (n + 1) - f1 n).toNat

end

end A188603.P6923791327971441967

/-! ## A188603.P12480275882269700425

`A188607(eq[4, A193592(n)])`
-/

namespace A188603.P12480275882269700425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188603.P12480275882269700425

/-! ## A188603.P3327829529860566221

`A188607(Δ[A023545(n+1)])`
-/

namespace A188603.P3327829529860566221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (f1 (n + 1) - f1 n).toNat

end

end A188603.P3327829529860566221

/-! ## A188603.P2460596037922569279

`A188607(A052905(n+2)+1)`
-/

namespace A188603.P2460596037922569279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A052905 (n + 2) + 1).toNat

end

end A188603.P2460596037922569279

/-! ## A188603.P10746572410954742536

`A188607(eq[6, A185782(n+1)])`
-/

namespace A188603.P10746572410954742536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188603.P10746572410954742536

/-!
# A188604: Number of n X 6 binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188604, there is no canonical definition to state claims against.
-/

/-! ## A188604.P15066216428628905178

`A188607(eq[3, A219347(n)])`
-/

namespace A188604.P15066216428628905178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188604.P15066216428628905178

/-! ## A188604.P3006187741247708319

`A188607(eq[5, A193592(n)])`
-/

namespace A188604.P3006187741247708319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188604.P3006187741247708319

/-! ## A188604.P6394403976418171126

`A188607(eq[8, A185782(n+1)])`
-/

namespace A188604.P6394403976418171126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188604.P6394403976418171126

/-! ## A188604.P3687063093444678143

`A188607(eq[16, A057728(n+1)])`
-/

namespace A188604.P3687063093444678143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188604.P3687063093444678143

/-! ## A188604.P6974727912151446679

`A188607(Δ[Δ[A006504(n+1)]])`
-/

namespace A188604.P6974727912151446679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (f1 (n + 1) - f1 n).toNat

end

end A188604.P6974727912151446679

/-!
# A188605: Number of nX7 binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188605, there is no canonical definition to state claims against.
-/

/-! ## A188605.P10063431268311466020

`A188607(eq[4, A219347(n)])`
-/

namespace A188605.P10063431268311466020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188605.P10063431268311466020

/-! ## A188605.P864102590479096785

`A188607(eq[6, A193592(n)])`
-/

namespace A188605.P864102590479096785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188605.P864102590479096785

/-! ## A188605.P3259442934856435404

`A188607(eq[10, A185782(n+1)])`
-/

namespace A188605.P3259442934856435404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188605.P3259442934856435404

/-! ## A188605.P1113679216751090331

`A188607(eq[7, A200370(n+1)])`
-/

namespace A188605.P1113679216751090331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188605.P1113679216751090331

/-! ## A188605.P13096721775045077099

`A188607(eq[5, A332954(n)])`
-/

namespace A188605.P13096721775045077099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188605.P13096721775045077099

/-!
# A188606: Number of nX8 binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188606, there is no canonical definition to state claims against.
-/

/-! ## A188606.P3952060857389925199

`A188607(eq[5, A219347(n)])`
-/

namespace A188606.P3952060857389925199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188606.P3952060857389925199

/-! ## A188606.P17213961054585197602

`A188607(eq[7, A193592(n)])`
-/

namespace A188606.P17213961054585197602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188606.P17213961054585197602

/-! ## A188606.P13505285065303955411

`A188607(eq[12, A185782(n+1)])`
-/

namespace A188606.P13505285065303955411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188606.P13505285065303955411

/-! ## A188606.P4093923346482372417

`A188607(eq[64, A057728(n+1)])`
-/

namespace A188606.P4093923346482372417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188606.P4093923346482372417

/-! ## A188606.P13285088624370340754

`A188607(A005408(n)+A167614(n+5)+4)`
-/

namespace A188606.P13285088624370340754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A005408 n + (A167614 (n + 5) + 4)).toNat

end

end A188606.P13285088624370340754

/-!
# A188607: T(n,k)=Number of nXk binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188607, there is no canonical definition to state claims against.
-/

/-! ## A188607.P16248663908214724849

`A188851(n+1)+A005798(A185245(3*(n+1)))`
-/

namespace A188607.P16248663908214724849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (n + 1) + A005798 (A185245 (3 * (n + 1))).toNat

end

end A188607.P16248663908214724849

/-! ## A188607.P8253359906767480236

`A188763(A084192(∑[n]))`
-/

namespace A188607.P8253359906767480236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A188607.P8253359906767480236

/-! ## A188607.P10180405892817210680

`A188523(A004896(n+2))`
-/

namespace A188607.P10180405892817210680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A004896 (n + 2)).toNat

end

end A188607.P10180405892817210680

/-! ## A188607.P7617578131190799856

`A188523(A004907(n+2))`
-/

namespace A188607.P7617578131190799856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A004907 (n + 2)).toNat

end

end A188607.P7617578131190799856

/-! ## A188607.P8311898002735123388

`A188523(A004918(n+2))`
-/

namespace A188607.P8311898002735123388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A004918 (n + 2)).toNat

end

end A188607.P8311898002735123388

/-!
# A188608: Number of 3Xn binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188608, there is no canonical definition to state claims against.
-/

/-! ## A188608.P1560054435135375011

`A188607(∑[n+2]+4)`
-/

namespace A188608.P1560054435135375011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188608.P1560054435135375011

/-! ## A188608.P8606148866694261952

`A188607(A167614(n+1))+C(n, 47)`
-/

namespace A188608.P8606148866694261952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A167614 (n + 1)).toNat + (Nat.choose n 47 : ℤ)

end

end A188608.P8606148866694261952

/-! ## A188608.P14746627967490401963

`lcm((-1)^n, A188607(A046691(n)+7))`
-/

namespace A188608.P14746627967490401963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A188607 (A046691 n + 7).toNat)

end

end A188608.P14746627967490401963

/-! ## A188608.P10719511392886305721

`or(A000007(n), A188607(A046691(n)+7))`
-/

namespace A188608.P10719511392886305721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A188607 (A046691 n + 7).toNat)

end

end A188608.P10719511392886305721

/-! ## A188608.P95187743117362647

`or(A000038(n), A188607(A046691(n)+7))`
-/

namespace A188608.P95187743117362647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A188607 (A046691 n + 7).toNat)

end

end A188608.P95187743117362647

/-!
# A188609: Number of 4 X n binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188609, there is no canonical definition to state claims against.
-/

/-! ## A188609.P9078236325760361221

`A188607(∑[n+3]+7)`
-/

namespace A188609.P9078236325760361221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188609.P9078236325760361221

/-!
# A188610: Number of 5Xn binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188610, there is no canonical definition to state claims against.
-/

/-! ## A188610.P10410318102059931359

`A188607(A167499(n+3))`
-/

namespace A188610.P10410318102059931359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A167499 (n + 3)).toNat

end

end A188610.P10410318102059931359

/-! ## A188610.P11567204670027829853

`A188607(A133263(n+4)+3)`
-/

namespace A188610.P11567204670027829853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A133263 (n + 4) + 3).toNat

end

end A188610.P11567204670027829853

/-! ## A188610.P17732971285824552956

`A188607(A000217(n+4)+5)`
-/

namespace A188610.P17732971285824552956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A000217 (n + 4) + 5).toNat

end

end A188610.P17732971285824552956

/-! ## A188610.P1262154031694758555

`A188607(Δ[A034857(n+1)]+8)`
-/

namespace A188610.P1262154031694758555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (f1 (n + 1) - f1 n + 8).toNat

end

end A188610.P1262154031694758555

/-! ## A188610.P13398075272028955445

`A188607(A141214(A038770(n+1))+8)`
-/

namespace A188610.P13398075272028955445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A141214 (A038770 (n + 1)).toNat + 8).toNat

end

end A188610.P13398075272028955445

/-!
# A188611: Number of 6Xn binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188611, there is no canonical definition to state claims against.
-/

/-! ## A188611.P665299496229256123

`A188607(A056115(n)+21)`
-/

namespace A188611.P665299496229256123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A056115 n + 21).toNat

end

end A188611.P665299496229256123

/-! ## A188611.P9651077444792894648

`A188607(A167499(n+4)+1)`
-/

namespace A188611.P9651077444792894648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A167499 (n + 4) + 1).toNat

end

end A188611.P9651077444792894648

/-! ## A188611.P18153392642611628434

`A188607(A077169(n+6)+1)`
-/

namespace A188611.P18153392642611628434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A077169 (n + 6) + 1).toNat

end

end A188611.P18153392642611628434

/-! ## A188611.P15303563149186003691

`A188607(A056000(n+1)+16)`
-/

namespace A188611.P15303563149186003691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A056000 (n + 1) + 16).toNat

end

end A188611.P15303563149186003691

/-! ## A188611.P14753389277891276827

`A188607(eq[7, A131818(n+1)])`
-/

namespace A188611.P14753389277891276827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188611.P14753389277891276827

/-!
# A188612: Number of 7Xn binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188612, there is no canonical definition to state claims against.
-/

/-! ## A188612.P17541305362198998823

`A188607(A167487(n+5))`
-/

namespace A188612.P17541305362198998823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A167487 (n + 5)).toNat

end

end A188612.P17541305362198998823

/-! ## A188612.P13519911730661501396

`A188607(eq[11, A066657(n)])`
-/

namespace A188612.P13519911730661501396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188612.P13519911730661501396

/-! ## A188612.P3346196582164773543

`A188607(A167614(n+5)+4)`
-/

namespace A188612.P3346196582164773543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A167614 (n + 5) + 4).toNat

end

end A188612.P3346196582164773543

/-! ## A188612.P12629733122034640093

`A188607(eq[8, A131818(n+1)])`
-/

namespace A188612.P12629733122034640093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188612.P12629733122034640093

/-! ## A188612.P15614616871221081821

`A188607(A000124(n+7)-(n+1))`
-/

namespace A188612.P15614616871221081821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A188612.P15614616871221081821

/-!
# A188613: Number of 8Xn binary arrays without the pattern 1 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188613, there is no canonical definition to state claims against.
-/

/-! ## A188613.P15043065595535421237

`A188607(eq[13, A066657(n)])`
-/

namespace A188613.P15043065595535421237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188613.P15043065595535421237

/-! ## A188613.P6005683384722116767

`A188607(A167487(n+6)+1)`
-/

namespace A188613.P6005683384722116767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A167487 (n + 6) + 1).toNat

end

end A188613.P6005683384722116767

/-! ## A188613.P10609773776995890215

`A188607(A055999(n+4)+14)`
-/

namespace A188613.P10609773776995890215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A055999 (n + 4) + 14).toNat

end

end A188613.P10609773776995890215

/-! ## A188613.P5700077004910520998

`A188607(eq[9, A131818(n+1)])`
-/

namespace A188613.P5700077004910520998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188613.P5700077004910520998

/-! ## A188613.P10710734352240034503

`A188607(A000124(n+8)-(n+1))`
-/

namespace A188613.P10710734352240034503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188607 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A188613.P10710734352240034503

/-!
# A188620: Primes of the form x^3 + y^3 + 1.

The programs for A188620, there is no canonical definition to state claims against.
-/

/-! ## A188620.P11584962835420967079

`p?[A003325(n+1)+1]`
-/

namespace A188620.P11584962835420967079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188620.P11584962835420967079

/-! ## A188620.P6335565520509471713

`p?[A338667(n+1)+1]`
-/

namespace A188620.P6335565520509471713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188620.P6335565520509471713

/-! ## A188620.P2418808277646721402

`p?[A004999(n+3)+1]`
-/

namespace A188620.P2418808277646721402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188620.P2418808277646721402

/-! ## A188620.P7779415136724399333

`p?[lt[0, A280618(n)]+1]`
-/

namespace A188620.P7779415136724399333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A188620.P7779415136724399333

/-! ## A188620.P14112407558661062271

`p?[(n+1)*A025455(n)]`
-/

namespace A188620.P14112407558661062271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188620.P14112407558661062271

/-!
# A188621: Smallest number k>1 such that k*(n-th triangular number) is also a triangular number.

The programs for A188621, there is no canonical definition to state claims against.
-/

/-! ## A188621.P677577033101205026

`A068084(n+1)/A000217(n+1)`
-/

namespace A188621.P677577033101205026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068084 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A188621.P677577033101205026

/-! ## A188621.P12688254523210760667

`2*A068084(n+1)/(Δ[A027691(n)]+n²+n)`
-/

namespace A188621.P12688254523210760667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A068084 (n + 1) : ℚ) / (f1 (n + 1) - f1 n + (n ^ 2 + n : ℤ) : ℚ)

end

end A188621.P12688254523210760667

/-! ## A188621.P3674975915888481885

`floor(A068084(n+1)/A117142(2*n+1))`
-/

namespace A188621.P3674975915888481885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068084 (n + 1) : ℚ) / (A117142 (2 * n + 1) : ℚ)⌋

end

end A188621.P3674975915888481885

/-! ## A188621.P973261263254728236

`A110351(n+1)/∑[n+1]+1`
-/

namespace A188621.P973261263254728236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110351 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + 1

end

end A188621.P973261263254728236

/-! ## A188621.P7515381562253289406

`(A110351(n+1)+A000217(n+1))/A000217(n+1)`
-/

namespace A188621.P7515381562253289406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110351 (n + 1) + A000217 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A188621.P7515381562253289406

/-! ## A188621.P3494770004087954661

`A000217(A069752(n+1))/∑[n+1]`
-/

namespace A188621.P3494770004087954661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A069752 (n + 1)).toNat : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A188621.P3494770004087954661

/-! ## A188621.P15639624412686466769

`A110352(n+1)+1`
-/

namespace A188621.P15639624412686466769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110352 (n + 1) + 1

end

end A188621.P15639624412686466769

/-! ## A188621.P1774951860469145130

`A020725(A110352(n+1))`
-/

namespace A188621.P1774951860469145130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A110352 (n + 1)).toNat

end

end A188621.P1774951860469145130

/-!
# A188622: Row sums of the Riordan matrix (1/sqrt(1-4*x), x/(1-x)) (A187888).

The programs for A188622, the canonical program `A188622.P4482994152773459908` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188622 has offset 0).

The definition of A188622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188622.P4482994152773459908

`Δ[A323230(n)]+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188622

/-- `Δ[A323230(n)]+2*a(n-1)` -/
def P4482994152773459908.Spec : Prop :=
  ∀ n, P4482994152773459908.a n = A188622 n

theorem P4482994152773459908.correct : P4482994152773459908.Spec := by
  intro n
  simp only [A188622]

end A188622

/-! ## A188622.P2889986064947486137

`a(n-1)+A051924(n)+a(n-1)` with `a(0)=1`
-/

namespace A188622.P2889986064947486137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A051924 n + a (n - 1))

end

end A188622.P2889986064947486137

namespace A188622

/-- `a(n-1)+A051924(n)+a(n-1)` -/
def P2889986064947486137.Spec : Prop :=
  ∀ n, P2889986064947486137.a n = A188622 n

end A188622

/-! ## A188622.P6188558878513392090

`A000984(n)+A000984(n)-A029759(n)`
-/

namespace A188622.P6188558878513392090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A000984 n - A029759 n)

end

end A188622.P6188558878513392090

namespace A188622

/-- `A000984(n)+A000984(n)-A029759(n)` -/
def P6188558878513392090.Spec : Prop :=
  ∀ n, P6188558878513392090.a n = A188622 n

end A188622

/-! ## A188622.P16494057920714012088

`A028329(n)-A029759(n)`
-/

namespace A188622.P16494057920714012088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A029759 n

end

end A188622.P16494057920714012088

namespace A188622

/-- `A028329(n)-A029759(n)` -/
def P16494057920714012088.Spec : Prop :=
  ∀ n, P16494057920714012088.a n = A188622 n

end A188622

/-! ## A188622.P9413509309855097163

`A134635(n)+Δ[A029759(n)]`
-/

namespace A188622.P9413509309855097163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134635 n + (f1 (n + 1) - f1 n)

end

end A188622.P9413509309855097163

namespace A188622

/-- `A134635(n)+Δ[A029759(n)]` -/
def P9413509309855097163.Spec : Prop :=
  ∀ n, P9413509309855097163.a n = A188622 n

end A188622

/-! ## A188622.P7428703481043621847

`Δ[A000984(n)-A029759(n)]`
-/

namespace A188622.P7428703481043621847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A029759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188622.P7428703481043621847

namespace A188622

/-- `Δ[A000984(n)-A029759(n)]` -/
def P7428703481043621847.Spec : Prop :=
  ∀ n, P7428703481043621847.a n = A188622 n

end A188622

/-! ## A188622.P14234689182546036197

`Δ[A029759(n)-A126966(n)]`
-/

namespace A188622.P14234689182546036197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029759 n - A126966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188622.P14234689182546036197

namespace A188622

/-- `Δ[A029759(n)-A126966(n)]` -/
def P14234689182546036197.Spec : Prop :=
  ∀ n, P14234689182546036197.a n = A188622 n

end A188622

/-! ## A188622.P15453611773473184066

`(A082590(n)+A000984(n))/2`
-/

namespace A188622.P15453611773473184066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082590 n + A000984 n : ℚ) / 2

end

end A188622.P15453611773473184066

namespace A188622

/-- `(A082590(n)+A000984(n))/2` -/
def P15453611773473184066.Spec : Prop :=
  ∀ n, P15453611773473184066.a n = (A188622 n : ℚ)

end A188622

/-! ## A188622.P17809772958271768929

`(A372420(n)+A029759(n))/2`
-/

namespace A188622.P17809772958271768929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372420 n + A029759 n : ℚ) / 2

end

end A188622.P17809772958271768929

namespace A188622

/-- `(A372420(n)+A029759(n))/2` -/
def P17809772958271768929.Spec : Prop :=
  ∀ n, P17809772958271768929.a n = (A188622 n : ℚ)

end A188622

/-! ## A188622.P2901097254041177617

`2*A082590(n)-A372420(n)`
-/

namespace A188622.P2901097254041177617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082590 n - A372420 n

end

end A188622.P2901097254041177617

namespace A188622

/-- `2*A082590(n)-A372420(n)` -/
def P2901097254041177617.Spec : Prop :=
  ∀ n, P2901097254041177617.a n = A188622 n

end A188622

/-! ## A188622.P14112942544542238525

`(A372239(n)+A126966(n))/2`
-/

namespace A188622.P14112942544542238525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372239 n + A126966 n : ℚ) / 2

end

end A188622.P14112942544542238525

namespace A188622

/-- `(A372239(n)+A126966(n))/2` -/
def P14112942544542238525.Spec : Prop :=
  ∀ n, P14112942544542238525.a n = (A188622 n : ℚ)

end A188622

/-! ## A188622.P14741287966268920271

`2*A372420(n)-A372611(n)`
-/

namespace A188622.P14741287966268920271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A372420 n - A372611 n

end

end A188622.P14741287966268920271

namespace A188622

/-- `2*A372420(n)-A372611(n)` -/
def P14741287966268920271.Spec : Prop :=
  ∀ n, P14741287966268920271.a n = A188622 n

end A188622

/-! ## A188622.P3385175171579131902

`record[(A226302(n+2)-A226302(n+3))/2]`
-/

namespace A188622.P3385175171579131902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226302 (n + 2) - A226302 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188622.P3385175171579131902

namespace A188622

/-- `record[(A226302(n+2)-A226302(n+3))/2]` -/
def P3385175171579131902.Spec : Prop :=
  ∀ n, P3385175171579131902.a n = (A188622 n : ℚ)

end A188622

/-! ## A188622.P8195128393275911496

`(A226302(2*(n+1))-A226302(2*n+3))/2`
-/

namespace A188622.P8195128393275911496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226302 (2 * (n + 1)) - A226302 (2 * n + 3) : ℚ) / 2

end

end A188622.P8195128393275911496

namespace A188622

/-- `(A226302(2*(n+1))-A226302(2*n+3))/2` -/
def P8195128393275911496.Spec : Prop :=
  ∀ n, P8195128393275911496.a n = (A188622 n : ℚ)

end A188622

/-! ## A188622.P2819360542302032373

`A082590(n)+A126966(n)-A029759(n)`
-/

namespace A188622.P2819360542302032373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + (A126966 n - A029759 n)

end

end A188622.P2819360542302032373

namespace A188622

/-- `A082590(n)+A126966(n)-A029759(n)` -/
def P2819360542302032373.Spec : Prop :=
  ∀ n, P2819360542302032373.a n = A188622 n

end A188622

/-! ## A188622.P17344048058653612271

`A029759(n)+A372239(n)-A082590(n)`
-/

namespace A188622.P17344048058653612271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029759 n + (A372239 n - A082590 n)

end

end A188622.P17344048058653612271

namespace A188622

/-- `A029759(n)+A372239(n)-A082590(n)` -/
def P17344048058653612271.Spec : Prop :=
  ∀ n, P17344048058653612271.a n = A188622 n

end A188622

/-! ## A188622.P1126627350347980291

`A126966(n)+A372611(n)-A082590(n)`
-/

namespace A188622.P1126627350347980291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n + (A372611 n - A082590 n)

end

end A188622.P1126627350347980291

namespace A188622

/-- `A126966(n)+A372611(n)-A082590(n)` -/
def P1126627350347980291.Spec : Prop :=
  ∀ n, P1126627350347980291.a n = A188622 n

end A188622

/-! ## A188622.P1533984849899185783

`A000984(n)+A372239(n)-A372420(n)`
-/

namespace A188622.P1533984849899185783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A372239 n - A372420 n)

end

end A188622.P1533984849899185783

namespace A188622

/-- `A000984(n)+A372239(n)-A372420(n)` -/
def P1533984849899185783.Spec : Prop :=
  ∀ n, P1533984849899185783.a n = A188622 n

end A188622

/-! ## A188622.P5870560722920497117

`A000984(n)+A372611(n)-A372239(n)`
-/

namespace A188622.P5870560722920497117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A372611 n - A372239 n)

end

end A188622.P5870560722920497117

namespace A188622

/-- `A000984(n)+A372611(n)-A372239(n)` -/
def P5870560722920497117.Spec : Prop :=
  ∀ n, P5870560722920497117.a n = A188622 n

end A188622

/-! ## A188622.P8221444318619190354

`A029759(n)+A372611(n)-A372420(n)`
-/

namespace A188622.P8221444318619190354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029759 n + (A372611 n - A372420 n)

end

end A188622.P8221444318619190354

namespace A188622

/-- `A029759(n)+A372611(n)-A372420(n)` -/
def P8221444318619190354.Spec : Prop :=
  ∀ n, P8221444318619190354.a n = A188622 n

end A188622

/-!
# A188623: Number of reachable configurations in a chip-firing game on a triangle starting with n chips on one vertex.

The programs for A188623, the canonical program `A188623.P7609735149741037324` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188623 has offset 1).

The definition of A188623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188623.P7609735149741037324

`((n+1)*(n+4)-4*(-1)^floor(2*(n+1)/3+1/3)-2)/6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188623

/-- `((n+1)*(n+4)-4*(-1)^floor(2*(n+1)/3+1/3)-2)/6` -/
def P7609735149741037324.Spec : Prop :=
  ∀ n, P7609735149741037324.a n = (A188623 (n + 1) : ℚ)

end A188623

/-! ## A188623.P4945146495082792759

`∑[a(n-3)+1]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A188623.P4945146495082792759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 3] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188623.P4945146495082792759

namespace A188623

/-- `∑[a(n-3)+1]` -/
def P4945146495082792759.Spec : Prop :=
  ∀ n, (P4945146495082792759.a n : ℤ) = A188623 (n + 1)

end A188623

/-! ## A188623.P5964774648260823218

`a(n-3)+1+n` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A188623.P5964774648260823218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 3) + 1 + n

end

end A188623.P5964774648260823218

namespace A188623

/-- `a(n-3)+1+n` -/
def P5964774648260823218.Spec : Prop :=
  ∀ n, (P5964774648260823218.a n : ℤ) = A188623 (n + 1)

end A188623

/-! ## A188623.P1412708083748108603

`n-xor(-1, a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A188623.P1412708083748108603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (n : ℤ) - Int.xor (-1) (a (n - 3))

end

end A188623.P1412708083748108603

namespace A188623

/-- `n-xor(-1, a(n-3))` -/
def P1412708083748108603.Spec : Prop :=
  ∀ n, P1412708083748108603.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P7500446248048445847

`∑[∑[gcd(5, n%3)]]-(n+2)²`
-/

namespace A188623.P7500446248048445847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 2) ^ 2 : ℤ)

end

end A188623.P7500446248048445847

namespace A188623

/-- `∑[∑[gcd(5, n%3)]]-(n+2)²` -/
def P7500446248048445847.Spec : Prop :=
  ∀ n, P7500446248048445847.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P16010572949526813188

`∑[∑[char[3*n]]]-C(n, 2)%3`
-/

namespace A188623.P16010572949526813188
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.choose n 2 % 3 : ℕ) : ℤ)

end

end A188623.P16010572949526813188

namespace A188623

/-- `∑[∑[char[3*n]]]-C(n, 2)%3` -/
def P16010572949526813188.Spec : Prop :=
  ∀ n, P16010572949526813188.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P10278576519933750489

`n-∑[a(n-3)-1]` with `a(0)=-1, a(1)=0, a(2)=1`
-/

namespace A188623.P10278576519933750489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1] fun n f1 =>
  f1 (n - 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188623.P10278576519933750489

namespace A188623

/-- `n-∑[a(n-3)-1]` -/
def P10278576519933750489.Spec : Prop :=
  ∀ n, P10278576519933750489.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P5459262217128455868

`a(n-3)-(n-Δ[n²])` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A188623.P5459262217128455868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 3) - ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A188623.P5459262217128455868

namespace A188623

/-- `a(n-3)-(n-Δ[n²])` -/
def P5459262217128455868.Spec : Prop :=
  ∀ n, P5459262217128455868.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P18428623118548832571

`2*n-(n-1-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A188623.P18428623118548832571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - a (n - 3))

end

end A188623.P18428623118548832571

namespace A188623

/-- `2*n-(n-1-a(n-3))` -/
def P18428623118548832571.Spec : Prop :=
  ∀ n, P18428623118548832571.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P4350446661940532132

`∑[A063942(n)]+n`
-/

namespace A188623.P4350446661940532132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A188623.P4350446661940532132

namespace A188623

/-- `∑[A063942(n)]+n` -/
def P4350446661940532132.Spec : Prop :=
  ∀ n, P4350446661940532132.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P11575334056390081196

`∑[A047360(n+1)]-n²`
-/

namespace A188623.P11575334056390081196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A188623.P11575334056390081196

namespace A188623

/-- `∑[A047360(n+1)]-n²` -/
def P11575334056390081196.Spec : Prop :=
  ∀ n, P11575334056390081196.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P13803550470605202407

`∑[1-A063198(n+1)+n]`
-/

namespace A188623.P13803550470605202407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063198 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188623.P13803550470605202407

namespace A188623

/-- `∑[1-A063198(n+1)+n]` -/
def P13803550470605202407.Spec : Prop :=
  ∀ n, P13803550470605202407.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P13213948101238822597

`A236343(n)+A102283(n)`
-/

namespace A188623.P13213948101238822597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236343 n + A102283 n

end

end A188623.P13213948101238822597

namespace A188623

/-- `A236343(n)+A102283(n)` -/
def P13213948101238822597.Spec : Prop :=
  ∀ n, P13213948101238822597.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P5737859866267841194

`A236337(n)-A086161(n)`
-/

namespace A188623.P5737859866267841194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236337 n - A086161 n

end

end A188623.P5737859866267841194

namespace A188623

/-- `A236337(n)-A086161(n)` -/
def P5737859866267841194.Spec : Prop :=
  ∀ n, P5737859866267841194.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P17958733788975907530

`A230267(n+1)-A000035(n)`
-/

namespace A188623.P17958733788975907530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230267 (n + 1) - A000035 n

end

end A188623.P17958733788975907530

namespace A188623

/-- `A230267(n+1)-A000035(n)` -/
def P17958733788975907530.Spec : Prop :=
  ∀ n, P17958733788975907530.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P11887192595503044515

`A001840(n+1)-A079978(n+1)`
-/

namespace A188623.P11887192595503044515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) - A079978 (n + 1)

end

end A188623.P11887192595503044515

namespace A188623

/-- `A001840(n+1)-A079978(n+1)` -/
def P11887192595503044515.Spec : Prop :=
  ∀ n, P11887192595503044515.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P8126039709197613551

`A001840(n+1)+A002264(n)-A002264(n+1)`
-/

namespace A188623.P8126039709197613551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) + (A002264 n - A002264 (n + 1))

end

end A188623.P8126039709197613551

namespace A188623

/-- `A001840(n+1)+A002264(n)-A002264(n+1)` -/
def P8126039709197613551.Spec : Prop :=
  ∀ n, P8126039709197613551.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P2785021630324138431

`A001840(n+1)+A008620(n)-A008620(n+1)`
-/

namespace A188623.P2785021630324138431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) + (A008620 n - A008620 (n + 1))

end

end A188623.P2785021630324138431

namespace A188623

/-- `A001840(n+1)+A008620(n)-A008620(n+1)` -/
def P2785021630324138431.Spec : Prop :=
  ∀ n, P2785021630324138431.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P2043577674914895048

`A230267(n+1)+A004526(n)-A004526(n+1)`
-/

namespace A188623.P2043577674914895048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230267 (n + 1) + (A004526 n - A004526 (n + 1))

end

end A188623.P2043577674914895048

namespace A188623

/-- `A230267(n+1)+A004526(n)-A004526(n+1)` -/
def P2043577674914895048.Spec : Prop :=
  ∀ n, P2043577674914895048.a n = A188623 (n + 1)

end A188623

/-! ## A188623.P13635196456914100036

`A008748(n+2)-A100063(n+1)`
-/

namespace A188623.P13635196456914100036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 (n + 2) - A100063 (n + 1)

end

end A188623.P13635196456914100036

namespace A188623

/-- `A008748(n+2)-A100063(n+1)` -/
def P13635196456914100036.Spec : Prop :=
  ∀ n, P13635196456914100036.a n = A188623 (n + 1)

end A188623

/-!
# A188624: a(n) = greatest entry in row n of A184957.

The programs for A188624, there is no canonical definition to state claims against.
-/

/-! ## A188624.P18140673560335177054

`A184957(∑[or(1, n)])`
-/

namespace A188624.P18140673560335177054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184957 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188624.P18140673560335177054

/-! ## A188624.P12132864070825553746

`A156041(∑[and(n, -2)]+1)`
-/

namespace A188624.P12132864070825553746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A188624.P12132864070825553746

/-! ## A188624.P13847273845010160210

`A156041(floor(n²/2)+1)`
-/

namespace A188624.P13847273845010160210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (⌊(n ^ 2 : ℚ) / 2⌋ + 1).toNat

end

end A188624.P13847273845010160210

/-! ## A188624.P14263112046239873286

`A184957(round((n+1)²/2))`
-/

namespace A188624.P14263112046239873286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184957 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / 2)).toNat

end

end A188624.P14263112046239873286

/-! ## A188624.P602628805144514855

`A288108(∑[2*∑[or(n+1, -2)+2]])`
-/

namespace A188624.P602628805144514855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188624.P602628805144514855

/-!
# A188625: A bisection of A188624.

The programs for A188625, there is no canonical definition to state claims against.
-/

/-! ## A188625.P11104399478962458723

`A156041(2*n²+1)`
-/

namespace A188625.P11104399478962458723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (2 * n ^ 2 + 1)

end

end A188625.P11104399478962458723

/-! ## A188625.P17295621628255543568

`A288108(2*(n+1)²)`
-/

namespace A188625.P17295621628255543568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (2 * (n + 1) ^ 2)

end

end A188625.P17295621628255543568

/-! ## A188625.P4029976055002602895

`or(A000007(n), A156041(A058331(n)))`
-/

namespace A188625.P4029976055002602895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A156041 (A058331 n).toNat)

end

end A188625.P4029976055002602895

/-! ## A188625.P6938832135025122618

`A247478(n+1)%2*A156041(A058331(n))`
-/

namespace A188625.P6938832135025122618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247478 (n + 1)) 2 * A156041 (A058331 n).toNat

end

end A188625.P6938832135025122618

/-! ## A188625.P8216813241366206792

`A123352(A320278(n))*A156041(A058331(n))`
-/

namespace A188625.P8216813241366206792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A320278 n).toNat * A156041 (A058331 n).toNat

end

end A188625.P8216813241366206792

/-!
# A188626: a(n) = n + (n-1)*2^(n-2).

The programs for A188626, the canonical program `A188626.P11523270679829309453` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188626 has offset 1).

The definition of A188626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188626.P11523270679829309453

`n+1+n*2^(n-1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188626

/-- `n+1+n*2^(n-1)` -/
def P11523270679829309453.Spec : Prop :=
  ∀ n, P11523270679829309453.a n = (A188626 (n + 1) : ℚ)

end A188626

/-! ## A188626.P2150097777931811468

`∑[Δ[A139756(n)]+1]`
-/

namespace A188626.P2150097777931811468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188626.P2150097777931811468

namespace A188626

/-- `∑[Δ[A139756(n)]+1]` -/
def P2150097777931811468.Spec : Prop :=
  ∀ n, P2150097777931811468.a n = A188626 (n + 1)

end A188626

/-! ## A188626.P15406119540760291159

`∑[A049610(n+1)+1]`
-/

namespace A188626.P15406119540760291159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188626.P15406119540760291159

namespace A188626

/-- `∑[A049610(n+1)+1]` -/
def P15406119540760291159.Spec : Prop :=
  ∀ n, P15406119540760291159.a n = A188626 (n + 1)

end A188626

/-! ## A188626.P15667977024931866981

`∑[A336102(2*n)+1]`
-/

namespace A188626.P15667977024931866981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188626.P15667977024931866981

namespace A188626

/-- `∑[A336102(2*n)+1]` -/
def P15667977024931866981.Spec : Prop :=
  ∀ n, P15667977024931866981.a n = A188626 (n + 1)

end A188626

/-! ## A188626.P15110439284508864037

`∑[A349050(2*n)+1]`
-/

namespace A188626.P15110439284508864037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349050 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188626.P15110439284508864037

namespace A188626

/-- `∑[A349050(2*n)+1]` -/
def P15110439284508864037.Spec : Prop :=
  ∀ n, P15110439284508864037.a n = A188626 (n + 1)

end A188626

/-! ## A188626.P1487480950543587324

`∑[ceil(A131056(n+1)/2)]`
-/

namespace A188626.P1487480950543587324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131056 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188626.P1487480950543587324

namespace A188626

/-- `∑[ceil(A131056(n+1)/2)]` -/
def P1487480950543587324.Spec : Prop :=
  ∀ n, P1487480950543587324.a n = A188626 (n + 1)

end A188626

/-! ## A188626.P10475773752371792245

`∑[A131577(n)/2*(n+1)+1]`
-/

namespace A188626.P10475773752371792245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 n : ℚ) / 2 * (n + 1 : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188626.P10475773752371792245

namespace A188626

/-- `∑[A131577(n)/2*(n+1)+1]` -/
def P10475773752371792245.Spec : Prop :=
  ∀ n, P10475773752371792245.a n = (A188626 (n + 1) : ℚ)

end A188626

/-! ## A188626.P3343733561316306809

`abs(A001787(n)+2*n+1-n)`
-/

namespace A188626.P3343733561316306809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001787 n + (2 * n + 1 : ℤ) - (n : ℤ)|

end

end A188626.P3343733561316306809

namespace A188626

/-- `abs(A001787(n)+2*n+1-n)` -/
def P3343733561316306809.Spec : Prop :=
  ∀ n, P3343733561316306809.a n = A188626 (n + 1)

end A188626

/-! ## A188626.P14755595934365518099

`abs(n*(A011782(n)+2)+1-n)`
-/

namespace A188626.P14755595934365518099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A011782 n + 2) + 1 - (n : ℤ)|

end

end A188626.P14755595934365518099

namespace A188626

/-- `abs(n*(A011782(n)+2)+1-n)` -/
def P14755595934365518099.Spec : Prop :=
  ∀ n, P14755595934365518099.a n = A188626 (n + 1)

end A188626

/-! ## A188626.P14315488200946019535

`∑[A111297(n+1)-A000225(n+1)]`
-/

namespace A188626.P14315488200946019535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 (n + 1) - A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188626.P14315488200946019535

namespace A188626

/-- `∑[A111297(n+1)-A000225(n+1)]` -/
def P14315488200946019535.Spec : Prop :=
  ∀ n, P14315488200946019535.a n = A188626 (n + 1)

end A188626

/-! ## A188626.P11562049449277948032

`ceil(A002064(n)/2+n)`
-/

namespace A188626.P11562049449277948032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002064 n : ℚ) / 2 + (n : ℚ)⌉

end

end A188626.P11562049449277948032

namespace A188626

/-- `ceil(A002064(n)/2+n)` -/
def P11562049449277948032.Spec : Prop :=
  ∀ n, P11562049449277948032.a n = A188626 (n + 1)

end A188626

/-! ## A188626.P11709682231750709220

`(A069229(n)+2+n)/2`
-/

namespace A188626.P11709682231750709220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069229 n + 2 + (n : ℤ) : ℚ) / 2

end

end A188626.P11709682231750709220

namespace A188626

/-- `(A069229(n)+2+n)/2` -/
def P11709682231750709220.Spec : Prop :=
  ∀ n, P11709682231750709220.a n = (A188626 (n + 1) : ℚ)

end A188626

/-! ## A188626.P7490112399002282910

`round((n*(A000079(n)+2)+1)/2)`
-/

namespace A188626.P7490112399002282910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) * (A000079 n + 2) + 1 : ℚ) / 2)

end

end A188626.P7490112399002282910

namespace A188626

/-- `round((n*(A000079(n)+2)+1)/2)` -/
def P7490112399002282910.Spec : Prop :=
  ∀ n, P7490112399002282910.a n = A188626 (n + 1)

end A188626

/-! ## A188626.P775433562384722638

`(A097064(n+1)+2*(n+1))/2`
-/

namespace A188626.P775433562384722638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097064 (n + 1) + (2 * (n + 1) : ℤ) : ℚ) / 2

end

end A188626.P775433562384722638

namespace A188626

/-- `(A097064(n+1)+2*(n+1))/2` -/
def P775433562384722638.Spec : Prop :=
  ∀ n, P775433562384722638.a n = (A188626 (n + 1) : ℚ)

end A188626

/-! ## A188626.P12906804009338986424

`(A093968(2*n)+2*(n+1))/2`
-/

namespace A188626.P12906804009338986424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093968 (2 * n) + (2 * (n + 1) : ℤ) : ℚ) / 2

end

end A188626.P12906804009338986424

namespace A188626

/-- `(A093968(2*n)+2*(n+1))/2` -/
def P12906804009338986424.Spec : Prop :=
  ∀ n, P12906804009338986424.a n = (A188626 (n + 1) : ℚ)

end A188626

/-! ## A188626.P12812121011625743232

`((A000225(n)+3)*2*n+4)/4`
-/

namespace A188626.P12812121011625743232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000225 n + 3) * (2 * n : ℤ) + 4 : ℚ) / 4

end

end A188626.P12812121011625743232

namespace A188626

/-- `((A000225(n)+3)*2*n+4)/4` -/
def P12812121011625743232.Spec : Prop :=
  ∀ n, P12812121011625743232.a n = (A188626 (n + 1) : ℚ)

end A188626

/-! ## A188626.P3641460053017200888

`(A036289(n+1)+A001787(2*n))/A000079(n+1)`
-/

namespace A188626.P3641460053017200888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 (n + 1) + A001787 (2 * n) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A188626.P3641460053017200888

namespace A188626

/-- `(A036289(n+1)+A001787(2*n))/A000079(n+1)` -/
def P3641460053017200888.Spec : Prop :=
  ∀ n, P3641460053017200888.a n = (A188626 (n + 1) : ℚ)

end A188626

/-! ## A188626.P4879667543360013451

`∑[∑[A105306(∑[n]+2)]]`
-/

namespace A188626.P4879667543360013451
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (∑ j ∈ Finset.range (n + 1), f3 j + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188626.P4879667543360013451

namespace A188626

/-- `∑[∑[A105306(∑[n]+2)]]` -/
def P4879667543360013451.Spec : Prop :=
  ∀ n, P4879667543360013451.a n = A188626 (n + 1)

end A188626

/-!
# A188629: Numbers k such that k^2 has one more divisor than k^2 - 1.

The programs for A188629, there is no canonical definition to state claims against.
-/

/-! ## A188629.P16101481162014196528

`sqrt(∩[A055927(n+1)+1, n²])`
-/

namespace A188629.P16101481162014196528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055927 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A188629.P16101481162014196528

/-! ## A188629.P16946387816534350861

`record[A056926(A055927(n+2)+1)]`
-/

namespace A188629.P16946387816534350861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A055927 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188629.P16946387816534350861

/-!
# A188630: Triangular numbers that are the product of two triangular numbers greater than 1.

The programs for A188630, there is no canonical definition to state claims against.
-/

/-! ## A188630.P3483015142366068010

`∩[A068143(n+1), A264961(n+1)]`
-/

namespace A188630.P3483015142366068010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P3483015142366068010

/-! ## A188630.P1155052075420263766

`∩[A264961(n+1), A000217(n)]`
-/

namespace A188630.P1155052075420263766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P1155052075420263766

/-! ## A188630.P4526888017552292838

`∩[A144291(n+1), A264961(n+1)]`
-/

namespace A188630.P4526888017552292838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P4526888017552292838

/-! ## A188630.P14316459621201934762

`∩[A161777(n+1), A264961(n+1)]`
-/

namespace A188630.P14316459621201934762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P14316459621201934762

/-! ## A188630.P13132145490018391493

`∩[A264961(n+1), A324600(n+1)]`
-/

namespace A188630.P13132145490018391493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P13132145490018391493

/-! ## A188630.P5276500822104083209

`∩[A264961(n+1), A122493(n)]`
-/

namespace A188630.P5276500822104083209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P5276500822104083209

/-! ## A188630.P16674840226794439801

`∩[A264961(n+1), A253145(n)]`
-/

namespace A188630.P16674840226794439801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P16674840226794439801

/-! ## A188630.P13253273495795480135

`∩[A074134(n+1), A264961(n+1)]`
-/

namespace A188630.P13253273495795480135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P13253273495795480135

/-! ## A188630.P11527173273118723195

`∩[A186783(n+1), A264961(n+1)]`
-/

namespace A188630.P11527173273118723195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P11527173273118723195

/-! ## A188630.P4898508637988488153

`∩[A264961(n+1), A350295(n+3)]`
-/

namespace A188630.P4898508637988488153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P4898508637988488153

/-! ## A188630.P2756692638466063015

`∩[A024412(n+1), A264961(n+1)]`
-/

namespace A188630.P2756692638466063015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P2756692638466063015

/-! ## A188630.P8906129022655040468

`∩[A255508(n+1), A264961(n+1)]`
-/

namespace A188630.P8906129022655040468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188630.P8906129022655040468

/-!
# A188631: Numbers k such that d(k-1) < d(k) < d(k+1) where d(k) is the number of divisors of k.

The programs for A188631, there is no canonical definition to state claims against.
-/

/-! ## A188631.P15287432264983699591

`A364715(n+1)+1`
-/

namespace A188631.P15287432264983699591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364715 (n + 1) + 1

end

end A188631.P15287432264983699591

/-! ## A188631.P10753654755989956805

`∩[A074775(n+1), A240171(n+1)]`
-/

namespace A188631.P10753654755989956805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188631.P10753654755989956805

/-! ## A188631.P10157539630251246136

`∩[A074775(n+2)+1, A074775(n+2)]`
-/

namespace A188631.P10157539630251246136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188631.P10157539630251246136

/-! ## A188631.P10663890294901525387

`∩[A240171(n+2)-1, A240171(n+2)]`
-/

namespace A188631.P10663890294901525387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188631.P10663890294901525387

/-! ## A188631.P14170283878769924965

`A240171(eq[1, A240171(n+2)-A240171(n+1)]+1)`
-/

namespace A188631.P14170283878769924965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (n + 2) - A240171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188631.P14170283878769924965

/-! ## A188631.P6265856670329046563

`A011760(A364715(n+1))`
-/

namespace A188631.P6265856670329046563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A364715 (n + 1)).toNat

end

end A188631.P6265856670329046563

/-! ## A188631.P3166753308415423252

`∩[A074775(n+2), A020725(A074775(n+2))]`
-/

namespace A188631.P3166753308415423252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A074775 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188631.P3166753308415423252

/-!
# A188632: Size of optimal DNA code of length n and minimal distance 1 over alphabet of size 4.

The programs for A188632, there is no canonical definition to state claims against.
-/

/-! ## A188632.P6563487380061749519

`A255072(A150901(n+1))`
-/

namespace A188632.P6563487380061749519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A150901 (n + 1)).toNat

end

end A188632.P6563487380061749519

/-! ## A188632.P17505851849617961774

`A215244(record[Δ[A286732(n)]])`
-/

namespace A188632.P17505851849617961774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188632.P17505851849617961774

/-!
# A188633: Numbers of the form 2^k * m, with k > 1 and m an odd composite number.

The programs for A188633, the canonical program `A188633.P1960431883035544566` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188633 has offset 1).

The definition of A188633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188633.P1960431883035544566

`4*A105441(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A188633

/-- `4*A105441(n+1)` -/
def P1960431883035544566.Spec : Prop :=
  ∀ n, P1960431883035544566.a n = A188633 (n + 1)

theorem P1960431883035544566.correct : P1960431883035544566.Spec := by
  intro n
  simp only [A188633, Nat.add_sub_cancel]

end A188633

/-! ## A188633.P3834208234201924708

`∩[4*(n+1), A320632(n+1)]`
-/

namespace A188633.P3834208234201924708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188633.P3834208234201924708

namespace A188633

/-- `∩[4*(n+1), A320632(n+1)]` -/
def P3834208234201924708.Spec : Prop :=
  ∀ n, (P3834208234201924708.a n : ℤ) = A188633 (n + 1)

end A188633

/-! ## A188633.P9345094582050193378

`filter[A136724(n+1), A379958(#)]`
-/

namespace A188633.P9345094582050193378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P9345094582050193378

namespace A188633

/-- `filter[A136724(n+1), A379958(#)]` -/
def P9345094582050193378.Spec : Prop :=
  ∀ n, P9345094582050193378.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P419895852825881828

`filter[A173035(n+1), A379958(#)]`
-/

namespace A188633.P419895852825881828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P419895852825881828

namespace A188633

/-- `filter[A173035(n+1), A379958(#)]` -/
def P419895852825881828.Spec : Prop :=
  ∀ n, P419895852825881828.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P12022026051862978541

`filter[A124351(n+3), A379958(#)]`
-/

namespace A188633.P12022026051862978541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124351 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P12022026051862978541

namespace A188633

/-- `filter[A124351(n+3), A379958(#)]` -/
def P12022026051862978541.Spec : Prop :=
  ∀ n, P12022026051862978541.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P14734358866489932793

`filter[A124354(n+3), A379958(#)]`
-/

namespace A188633.P14734358866489932793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124354 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P14734358866489932793

namespace A188633

/-- `filter[A124354(n+3), A379958(#)]` -/
def P14734358866489932793.Spec : Prop :=
  ∀ n, P14734358866489932793.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P16814340455854303727

`A192544(A105441(n+1)-1)`
-/

namespace A188633.P16814340455854303727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (A105441 (n + 1) - 1).toNat

end

end A188633.P16814340455854303727

namespace A188633

/-- `A192544(A105441(n+1)-1)` -/
def P16814340455854303727.Spec : Prop :=
  ∀ n, P16814340455854303727.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P4762748991282723210

`filter[A192544(n+1), A379958(#)]`
-/

namespace A188633.P4762748991282723210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P4762748991282723210

namespace A188633

/-- `filter[A192544(n+1), A379958(#)]` -/
def P4762748991282723210.Spec : Prop :=
  ∀ n, P4762748991282723210.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P9474549127109675836

`4*(lt[3, A286364(n+1)]+1)`
-/

namespace A188633.P9474549127109675836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A188633.P9474549127109675836

namespace A188633

/-- `4*(lt[3, A286364(n+1)]+1)` -/
def P9474549127109675836.Spec : Prop :=
  ∀ n, (P9474549127109675836.a n : ℤ) = A188633 (n + 1)

end A188633

/-! ## A188633.P1347872895580262931

`filter[A336705(n+1), A379958(#)]`
-/

namespace A188633.P1347872895580262931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P1347872895580262931

namespace A188633

/-- `filter[A336705(n+1), A379958(#)]` -/
def P1347872895580262931.Spec : Prop :=
  ∀ n, P1347872895580262931.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P13718986299591953791

`∩[A320632(n+1), A336705(n)]`
-/

namespace A188633.P13718986299591953791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188633.P13718986299591953791

namespace A188633

/-- `∩[A320632(n+1), A336705(n)]` -/
def P13718986299591953791.Spec : Prop :=
  ∀ n, (P13718986299591953791.a n : ℤ) = A188633 (n + 1)

end A188633

/-! ## A188633.P12139714118353134001

`A004767(lt[3, A286364(n+1)])+1`
-/

namespace A188633.P12139714118353134001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A188633.P12139714118353134001

namespace A188633

/-- `A004767(lt[3, A286364(n+1)])+1` -/
def P12139714118353134001.Spec : Prop :=
  ∀ n, P12139714118353134001.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P18293752917635261238

`A008574(A105441(n+1))`
-/

namespace A188633.P18293752917635261238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A105441 (n + 1)).toNat

end

end A188633.P18293752917635261238

namespace A188633

/-- `A008574(A105441(n+1))` -/
def P18293752917635261238.Spec : Prop :=
  ∀ n, P18293752917635261238.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P18368215446433093361

`filter[A008574(n), A379958(#)]`
-/

namespace A188633.P18368215446433093361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P18368215446433093361

namespace A188633

/-- `filter[A008574(n), A379958(#)]` -/
def P18368215446433093361.Spec : Prop :=
  ∀ n, P18368215446433093361.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P5448869059426721152

`filter[A265045(n), A379958(#)]`
-/

namespace A188633.P5448869059426721152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P5448869059426721152

namespace A188633

/-- `filter[A265045(n), A379958(#)]` -/
def P5448869059426721152.Spec : Prop :=
  ∀ n, P5448869059426721152.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P6083415085464979647

`filter[A265046(n), A379958(#)]`
-/

namespace A188633.P6083415085464979647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P6083415085464979647

namespace A188633

/-- `filter[A265046(n), A379958(#)]` -/
def P6083415085464979647.Spec : Prop :=
  ∀ n, P6083415085464979647.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P389882327738936795

`filter[A337120(n), A379958(#)]`
-/

namespace A188633.P389882327738936795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P389882327738936795

namespace A188633

/-- `filter[A337120(n), A379958(#)]` -/
def P389882327738936795.Spec : Prop :=
  ∀ n, P389882327738936795.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P3746574100333756693

`filter[A008586(n+1), A379958(#)]`
-/

namespace A188633.P3746574100333756693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P3746574100333756693

namespace A188633

/-- `filter[A008586(n+1), A379958(#)]` -/
def P3746574100333756693.Spec : Prop :=
  ∀ n, P3746574100333756693.a n = A188633 (n + 1)

end A188633

/-! ## A188633.P15102732264487213969

`∩[A320632(n+1), A337120(n)]`
-/

namespace A188633.P15102732264487213969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337120 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188633.P15102732264487213969

namespace A188633

/-- `∩[A320632(n+1), A337120(n)]` -/
def P15102732264487213969.Spec : Prop :=
  ∀ n, (P15102732264487213969.a n : ℤ) = A188633 (n + 1)

end A188633

/-! ## A188633.P13856827262630194962

`filter[A019425(2*n+1), A379958(#)]`
-/

namespace A188633.P13856827262630194962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A188633.P13856827262630194962

namespace A188633

/-- `filter[A019425(2*n+1), A379958(#)]` -/
def P13856827262630194962.Spec : Prop :=
  ∀ n, P13856827262630194962.a n = A188633 (n + 1)

end A188633

/-!
# A188634: E.g.f.: Sum_{n>=0} (1 - exp(-(n+1)*x))^n/(n+1).

The programs for A188634, there is no canonical definition to state claims against.
-/

/-! ## A188634.P3124637910702219500

`A099594(2*n²)`
-/

namespace A188634.P3124637910702219500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (2 * n ^ 2)

end

end A188634.P3124637910702219500

/-! ## A188634.P12704728803452722140

`A266695(A004277(n)-1)`
-/

namespace A188634.P12704728803452722140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266695 (A004277 n - 1).toNat

end

end A188634.P12704728803452722140

/-! ## A188634.P8223454536490826130

`A266695(or(1, A004275(n)))`
-/

namespace A188634.P8223454536490826130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266695 (Int.lor 1 (A004275 n)).toNat

end

end A188634.P8223454536490826130

/-! ## A188634.P12272323263209984541

`A266695(A004275(n+1)-1)`
-/

namespace A188634.P12272323263209984541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266695 (A004275 (n + 1) - 1).toNat

end

end A188634.P12272323263209984541

/-! ## A188634.P4860872967489813526

`A266695(A028310(2*n)-1)`
-/

namespace A188634.P4860872967489813526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266695 (A028310 (2 * n) - 1).toNat

end

end A188634.P4860872967489813526

/-!
# A188641: Characteristic function of Niven (or Harshad) numbers.

The programs for A188641, the canonical program `A188641.P10949182267148863194` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188641 has offset 1).

The definition of A188641 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A188641.P10949182267148863194

`A000007(A070635(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188641

/-- `A000007(A070635(n+1))` -/
def P10949182267148863194.Spec : Prop :=
  ∀ n, P10949182267148863194.a n = A188641 (n + 1)

theorem P10949182267148863194.correct : P10949182267148863194.Spec := by
  intro n
  simp only [A188641, Nat.add_sub_cancel]

end A188641

/-! ## A188641.P8508087532713220106

`floor((n+1)/lcm(n+1, ∑{digits}[n+1, #]))`
-/

namespace A188641.P8508087532713220106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Nat.lcm (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℚ)⌋

end

end A188641.P8508087532713220106

namespace A188641

/-- `floor((n+1)/lcm(n+1, ∑{digits}[n+1, #]))` -/
def P8508087532713220106.Spec : Prop :=
  ∀ n, P8508087532713220106.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P3823600606854916753

`floor(atan(A144262(n+1)))`
-/

namespace A188641.P3823600606854916753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A144262 (n + 1) : ℝ)⌋

end

end A188641.P3823600606854916753

namespace A188641

/-- `floor(atan(A144262(n+1)))` -/
def P3823600606854916753.Spec : Prop :=
  ∀ n, P3823600606854916753.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P3433325084511656563

`round(acot(A065518(n+1)))`
-/

namespace A188641.P3433325084511656563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A065518 (n + 1) : ℝ))

end

end A188641.P3433325084511656563

namespace A188641

/-- `round(acot(A065518(n+1)))` -/
def P3433325084511656563.Spec : Prop :=
  ∀ n, P3433325084511656563.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P11081324876130707699

`floor(1/A144261(n+1))`
-/

namespace A188641.P11081324876130707699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A144261 (n + 1) : ℚ)⌋

end

end A188641.P11081324876130707699

namespace A188641

/-- `floor(1/A144261(n+1))` -/
def P11081324876130707699.Spec : Prop :=
  ∀ n, P11081324876130707699.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P16405625789795937397

`char[A005349(n+1)-1]`
-/

namespace A188641.P16405625789795937397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188641.P16405625789795937397

namespace A188641

/-- `char[A005349(n+1)-1]` -/
def P16405625789795937397.Spec : Prop :=
  ∀ n, (P16405625789795937397.a n : ℤ) = A188641 (n + 1)

end A188641

/-! ## A188641.P4729530644959920608

`C(n+1, A099469(n+1))`
-/

namespace A188641.P4729530644959920608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A099469 (n + 1)).toNat

end

end A188641.P4729530644959920608

namespace A188641

/-- `C(n+1, A099469(n+1))` -/
def P4729530644959920608.Spec : Prop :=
  ∀ n, (P4729530644959920608.a n : ℤ) = A188641 (n + 1)

end A188641

/-! ## A188641.P10313026779562118749

`C(n+1, A357936(n+1))`
-/

namespace A188641.P10313026779562118749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A357936 (n + 1)).toNat

end

end A188641.P10313026779562118749

namespace A188641

/-- `C(n+1, A357936(n+1))` -/
def P10313026779562118749.Spec : Prop :=
  ∀ n, (P10313026779562118749.a n : ℤ) = A188641 (n + 1)

end A188641

/-! ## A188641.P16282123418630255131

`C(A360074(n+1), n+1)`
-/

namespace A188641.P16282123418630255131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A360074 (n + 1)).toNat (n + 1)

end

end A188641.P16282123418630255131

namespace A188641

/-- `C(A360074(n+1), n+1)` -/
def P16282123418630255131.Spec : Prop :=
  ∀ n, (P16282123418630255131.a n : ℤ) = A188641 (n + 1)

end A188641

/-! ## A188641.P8035016829067095984

`A002001((n+1)%∑{digits}[n+1, #])%3`
-/

namespace A188641.P8035016829067095984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002001 ((n + 1) % ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)) 3

end

end A188641.P8035016829067095984

namespace A188641

/-- `A002001((n+1)%∑{digits}[n+1, #])%3` -/
def P8035016829067095984.Spec : Prop :=
  ∀ n, P8035016829067095984.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P12515473763154543942

`A301573(A070635(n+1)²)`
-/

namespace A188641.P12515473763154543942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (A070635 (n + 1) ^ 2).toNat

end

end A188641.P12515473763154543942

namespace A188641

/-- `A301573(A070635(n+1)²)` -/
def P12515473763154543942.Spec : Prop :=
  ∀ n, P12515473763154543942.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P17922219304580624334

`A334659(A144261(n+1)²)`
-/

namespace A188641.P17922219304580624334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334659 (A144261 (n + 1) ^ 2).toNat

end

end A188641.P17922219304580624334

namespace A188641

/-- `A334659(A144261(n+1)²)` -/
def P17922219304580624334.Spec : Prop :=
  ∀ n, P17922219304580624334.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P14618856929403437007

`A010051(2*A144261(n+1))`
-/

namespace A188641.P14618856929403437007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A144261 (n + 1)).toNat

end

end A188641.P14618856929403437007

namespace A188641

/-- `A010051(2*A144261(n+1))` -/
def P14618856929403437007.Spec : Prop :=
  ∀ n, P14618856929403437007.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P13804547141039408395

`A151933(2*A070635(n+1))`
-/

namespace A188641.P13804547141039408395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (2 * A070635 (n + 1)).toNat

end

end A188641.P13804547141039408395

namespace A188641

/-- `A151933(2*A070635(n+1))` -/
def P13804547141039408395.Spec : Prop :=
  ∀ n, P13804547141039408395.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P98575717873613386

`A169585(2*A070635(n+1))`
-/

namespace A188641.P98575717873613386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (2 * A070635 (n + 1)).toNat

end

end A188641.P98575717873613386

namespace A188641

/-- `A169585(2*A070635(n+1))` -/
def P98575717873613386.Spec : Prop :=
  ∀ n, P98575717873613386.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P9031090870899227086

`A178225(2*A070635(n+1))`
-/

namespace A188641.P9031090870899227086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (2 * A070635 (n + 1)).toNat

end

end A188641.P9031090870899227086

namespace A188641

/-- `A178225(2*A070635(n+1))` -/
def P9031090870899227086.Spec : Prop :=
  ∀ n, P9031090870899227086.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P3226530734911364340

`A065518(n+1)%A144262(n+1)`
-/

namespace A188641.P3226530734911364340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065518 (n + 1)) (A144262 (n + 1))

end

end A188641.P3226530734911364340

namespace A188641

/-- `A065518(n+1)%A144262(n+1)` -/
def P3226530734911364340.Spec : Prop :=
  ∀ n, P3226530734911364340.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P2084078315886772110

`A137424(n+1)%A144262(n+1)`
-/

namespace A188641.P2084078315886772110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137424 (n + 1)) (A144262 (n + 1))

end

end A188641.P2084078315886772110

namespace A188641

/-- `A137424(n+1)%A144262(n+1)` -/
def P2084078315886772110.Spec : Prop :=
  ∀ n, P2084078315886772110.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P405461249566814242

`A144261(n+1)%A144262(n+1)`
-/

namespace A188641.P405461249566814242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144261 (n + 1)) (A144262 (n + 1))

end

end A188641.P405461249566814242

namespace A188641

/-- `A144261(n+1)%A144262(n+1)` -/
def P405461249566814242.Spec : Prop :=
  ∀ n, P405461249566814242.a n = A188641 (n + 1)

end A188641

/-! ## A188641.P9829070118786052513

`C(A000005(n+1), n*A070635(n+1))`
-/

namespace A188641.P9829070118786052513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat ((n : ℤ) * A070635 (n + 1)).toNat

end

end A188641.P9829070118786052513

namespace A188641

/-- `C(A000005(n+1), n*A070635(n+1))` -/
def P9829070118786052513.Spec : Prop :=
  ∀ n, (P9829070118786052513.a n : ℤ) = A188641 (n + 1)

end A188641

/-!
# A188642: Characteristic function of numbers that are divisible by the product of their digits.

The programs for A188642, there is no canonical definition to state claims against.
-/

/-! ## A188642.P8681669552862342489

`char[A007602(n+1)]`
-/

namespace A188642.P8681669552862342489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188642.P8681669552862342489

/-! ## A188642.P7045039465191291089

`char[record[A007602(A065648(n))]]`
-/

namespace A188642.P7045039465191291089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188642.P7045039465191291089

/-! ## A188642.P2138043363858829808

`char[record[A007602(A117910(n))]]`
-/

namespace A188642.P2138043363858829808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188642.P2138043363858829808

/-! ## A188642.P3391642321051519730

`char[record[A007602(A154958(n))]]`
-/

namespace A188642.P3391642321051519730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188642.P3391642321051519730

/-! ## A188642.P3288243240160331466

`char[A055471(n+1)]*A168046(n)`
-/

namespace A188642.P3288243240160331466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A168046 n

end

end A188642.P3288243240160331466

/-! ## A188642.P8338182646177452441

`char[∩[A034838(n+1), A055471(n+1)]]`
-/

namespace A188642.P8338182646177452441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188642.P8338182646177452441

/-! ## A188642.P1381642164068664181

`char[A360073(n+1)]`
-/

namespace A188642.P1381642164068664181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188642.P1381642164068664181

/-! ## A188642.P8307209394470288938

`char[A343050(n+1)]+A008683(A141759(n)+1)`
-/

namespace A188642.P8307209394470288938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343050 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A008683 (A141759 n + 1).toNat

end

end A188642.P8307209394470288938

/-! ## A188642.P15050385831848750793

`and(char[A343050(n+1)], A101044(n+1))`
-/

namespace A188642.P15050385831848750793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343050 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A101044 (n + 1))

end

end A188642.P15050385831848750793

/-!
# A188643: Numbers which are not a multiple of the product of their digits.

The programs for A188643, there is no canonical definition to state claims against.
-/

/-! ## A188643.P9604181382146259155

`comp[A007602(n+1)-1]+1`
-/

namespace A188643.P9604181382146259155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188643.P9604181382146259155

/-! ## A188643.P15486679109823115191

`lt[n*A188642(n), n]`
-/

namespace A188643.P15486679109823115191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188642 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A188643.P15486679109823115191

/-! ## A188643.P1337011651353383648

`eq[0, A188642(n+2)]+2`
-/

namespace A188643.P1337011651353383648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A188643.P1337011651353383648

/-! ## A188643.P14214580708207745313

`lt[A188642(n+1), 1]+1`
-/

namespace A188643.P14214580708207745313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A188643.P14214580708207745313

/-! ## A188643.P17526442290875223384

`eq[0, A188642(A028310(n))]`
-/

namespace A188643.P17526442290875223384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188643.P17526442290875223384

/-! ## A188643.P13244548601706021295

`eq[A000038(n), A188642(n)]`
-/

namespace A188643.P13244548601706021295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P13244548601706021295

/-! ## A188643.P7983839614025101057

`eq[1, A081604(a(n-1))-A188642(n)]` with `a(0)=2`
-/

namespace A188643.P7983839614025101057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A081604 (f2 (n - 1)).toNat - A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188643.P7983839614025101057

/-! ## A188643.P5528901526768088965

`eq[A000007(n), A188642(n)]`
-/

namespace A188643.P5528901526768088965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P5528901526768088965

/-! ## A188643.P8594238739768115513

`eq[A045534(n), A188642(n)]`
-/

namespace A188643.P8594238739768115513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P8594238739768115513

/-! ## A188643.P3654641926640741716

`eq[A066156(n), A188642(n)]`
-/

namespace A188643.P3654641926640741716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P3654641926640741716

/-! ## A188643.P14381608269232243833

`eq[A130706(n), A188642(n)]`
-/

namespace A188643.P14381608269232243833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P14381608269232243833

/-! ## A188643.P17791531640679249215

`eq[A166926(n), A188642(n)]`
-/

namespace A188643.P17791531640679249215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P17791531640679249215

/-! ## A188643.P12530234421733190304

`eq[A167858(n), A188642(n)]`
-/

namespace A188643.P12530234421733190304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P12530234421733190304

/-! ## A188643.P4069858157799685871

`eq[A167876(n), A188642(n)]`
-/

namespace A188643.P4069858157799685871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P4069858157799685871

/-! ## A188643.P9347715006073561713

`eq[A167891(n), A188642(n)]`
-/

namespace A188643.P9347715006073561713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P9347715006073561713

/-! ## A188643.P4545805083470262622

`eq[A169585(n), A188642(n)]`
-/

namespace A188643.P4545805083470262622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P4545805083470262622

/-! ## A188643.P10552438124536229537

`eq[A175564(n), A188642(n)]`
-/

namespace A188643.P10552438124536229537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P10552438124536229537

/-! ## A188643.P13857255059118531483

`eq[A068600(n+1), A188642(n)]`
-/

namespace A188643.P13857255059118531483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P13857255059118531483

/-! ## A188643.P9257792763925964509

`eq[A188642(n), A285476(n)]`
-/

namespace A188643.P9257792763925964509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188643.P9257792763925964509

/-!
# A188644: Array of (k^n + k^(-n))/2 where k = (sqrt(x^2-1) + x)^2 for integers x >= 1.

The programs for A188644, there is no canonical definition to state claims against.
-/

/-! ## A188644.P17989811197174282491

`A060964((round(sqrt(2*(n+1)))+1)²+2*n+1)/2`
-/

namespace A188644.P17989811197174282491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060964 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat : ℚ) / 2

end

end A188644.P17989811197174282491

/-! ## A188644.P16633959163410955830

`A056220(A101124(comp[∑[n]]))`
-/

namespace A188644.P16633959163410955830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A101124 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A188644.P16633959163410955830

/-! ## A188644.P9356366089231133325

`A004273(A101124(comp[∑[n]])²)`
-/

namespace A188644.P9356366089231133325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A101124 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2).toNat

end

end A188644.P9356366089231133325

/-!
# A188646: Array of a(n)=a(n-1)*k-((k-1)/(k^n)) where a(0)=1 and k=(sqrt(x^2-1)+x)^2 for integers x>=1.

The programs for A188646, there is no canonical definition to state claims against.
-/

/-! ## A188646.P10852913102238882411

`A277604(A117619(n)-A214789(n+1))`
-/

namespace A188646.P10852913102238882411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277604 (A117619 n - A214789 (n + 1)).toNat

end

end A188646.P10852913102238882411

/-! ## A188646.P12136332990729503959

`A174791(n)^a(n-1)` with `a(0)=1`
-/

namespace A188646.P12136332990729503959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A174791 n : ℝ) ^ (a (n - 1))

end

end A188646.P12136332990729503959

/-! ## A188646.P9273769056326313807

`A100919(A156137(n))`
-/

namespace A188646.P9273769056326313807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100919 (A156137 n).toNat

end

end A188646.P9273769056326313807

/-! ## A188646.P14520047759552283374

`A056718(A255831(n))`
-/

namespace A188646.P14520047759552283374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056718 (A255831 n).toNat

end

end A188646.P14520047759552283374

/-!
# A188647: Array read by antidiagonals of a(n) = a(n-1)*k-((k-1)/(k^n)) where a(0)=1 and k=(sqrt(x^2+1)+x)^2 for integers x>=1.

The programs for A188647, there is no canonical definition to state claims against.
-/

/-! ## A188647.P16779635276050760630

`A157103(Δ[n²]+(n-comp[∑[n]])²)`
-/

namespace A188647.P16779635276050760630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2).toNat

end

end A188647.P16779635276050760630

/-! ## A188647.P442795496548833319

`A172236(A185871(A038722(n+1)))`
-/

namespace A188647.P442795496548833319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (A185871 (A038722 (n + 1)).toNat).toNat

end

end A188647.P442795496548833319

/-! ## A188647.P4626844020985234300

`or(1, A329399(A292922(n+1)))`
-/

namespace A188647.P4626844020985234300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A329399 (A292922 (n + 1)).toNat)

end

end A188647.P4626844020985234300

/-!
# A188648: Binomial sums a(n) = Sum_{k=0..n} (binomial(2n-k,k))^2.

The programs for A188648, there is no canonical definition to state claims against.
-/

/-! ## A188648.P12595156861785607322

`A051286(2*n)`
-/

namespace A188648.P12595156861785607322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (2 * n)

end

end A188648.P12595156861785607322

/-! ## A188648.P4076176719166537888

`A077419(4*n)`
-/

namespace A188648.P4076176719166537888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (4 * n)

end

end A188648.P4076176719166537888

/-! ## A188648.P3055501566938996746

`∑[A051292(2*n)]-1`
-/

namespace A188648.P3055501566938996746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A188648.P3055501566938996746

/-! ## A188648.P9209489455671410594

`record[A051286(n)/(-1)^n]`
-/

namespace A188648.P9209489455671410594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051286 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188648.P9209489455671410594

/-! ## A188648.P6428627721626849056

`record[A051286(A005131(n))]`
-/

namespace A188648.P6428627721626849056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188648.P6428627721626849056

/-! ## A188648.P9574473753766610337

`record[A051286(A014681(n))]`
-/

namespace A188648.P9574473753766610337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188648.P9574473753766610337

/-! ## A188648.P4869556407458541569

`record[A051286(A230423(n))]`
-/

namespace A188648.P4869556407458541569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (A230423 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188648.P4869556407458541569

/-! ## A188648.P4426870230503203767

`∑[A051292(A028310(2*n))]`
-/

namespace A188648.P4426870230503203767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188648.P4426870230503203767

/-! ## A188648.P13206429804266777236

`record[A051286(A006257(n)+1)]`
-/

namespace A188648.P13206429804266777236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188648.P13206429804266777236

/-! ## A188648.P16684772592183183135

`∑[A051292(A028310(n)+n)]`
-/

namespace A188648.P16684772592183183135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188648.P16684772592183183135

/-! ## A188648.P4195576684263382554

`∑[A051292(2*A065033(2*n))]`
-/

namespace A188648.P4195576684263382554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (2 * A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188648.P4195576684263382554

/-! ## A188648.P6189089396268165500

`∑[A051292(2*A123108(2*n))]`
-/

namespace A188648.P6189089396268165500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (2 * A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188648.P6189089396268165500

/-! ## A188648.P1363849327252767732

`record[A077419(A000265(n+2)+n)]`
-/

namespace A188648.P1363849327252767732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (A000265 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188648.P1363849327252767732

/-! ## A188648.P1697039727833795712

`record[A051286(A002264(A001281(n)))]`
-/

namespace A188648.P1697039727833795712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (A002264 (A001281 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188648.P1697039727833795712

/-! ## A188648.P12293111627597921667

`record[A051286(A004442(A006257(n)))]`
-/

namespace A188648.P12293111627597921667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (A004442 (A006257 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188648.P12293111627597921667

/-! ## A188648.P16116061839250879893

`A108479(2*n)-A182899(2*n)`
-/

namespace A188648.P16116061839250879893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108479 (2 * n) - A182899 (2 * n)

end

end A188648.P16116061839250879893

/-! ## A188648.P1779684754487566936

`2*A203611(2*n+1)-A051292(2*n+1)`
-/

namespace A188648.P1779684754487566936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203611 (2 * n + 1) - A051292 (2 * n + 1)

end

end A188648.P1779684754487566936

/-! ## A188648.P18005567277759639854

`A182884(2*n+1)-A182879(2*n)`
-/

namespace A188648.P18005567277759639854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182884 (2 * n + 1) - A182879 (2 * n)

end

end A188648.P18005567277759639854

/-!
# A188649: Least common multiple of reversals of divisors of n in decimal representation.

The programs for A188649, there is no canonical definition to state claims against.
-/

/-! ## A188649.P8716138559386769728

`A068634(A187829(n+1))/A251072(n)`
-/

namespace A188649.P8716138559386769728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068634 (A187829 (n + 1)).toNat : ℚ) / (A251072 n : ℚ)

end

end A188649.P8716138559386769728

/-! ## A188649.P10376065920470905529

`A068634(n+1)%A022825(A060092(n+2))`
-/

namespace A188649.P10376065920470905529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068634 (n + 1)) (A022825 (A060092 (n + 2)).toNat)

end

end A188649.P10376065920470905529

/-! ## A188649.P17115595060212662218

`gcd(A062919(A187829(n+1)), A068634(n+1))`
-/

namespace A188649.P17115595060212662218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062919 (A187829 (n + 1)).toNat) (A068634 (n + 1))

end

end A188649.P17115595060212662218

/-! ## A188649.P12303981910816081044

`lcm(A004086(A187829(n+1)), A048671(n+1))`
-/

namespace A188649.P12303981910816081044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004086 (A187829 (n + 1)).toNat) (A048671 (n + 1))

end

end A188649.P12303981910816081044

/-! ## A188649.P3147755188430198341

`(n+1)*A146141(a(n-1))` with `a(0)=1`
-/

namespace A188649.P3147755188430198341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A146141 (a (n - 1)).toNat

end

end A188649.P3147755188430198341

/-!
# A188650: Fixed points of A188649: numbers divisible by the reverse of all their divisors.

The programs for A188650, there is no canonical definition to state claims against.
-/

/-! ## A188650.P7041106359823401145

`eq[n+1, A188649(n+1)]+1`
-/

namespace A188650.P7041106359823401145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188650.P7041106359823401145

/-! ## A188650.P6106767056261759133

`record[A087999(n+1)²/A188649(n+1)]`
-/

namespace A188650.P6106767056261759133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087999 (n + 1) ^ 2 : ℚ) / (A188649 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188650.P6106767056261759133

/-! ## A188650.P4418684918622740240

`A071786(record[(n+1)/(A188649(n+1)-n)])`
-/

namespace A188650.P4418684918622740240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A188649 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A188650.P4418684918622740240

/-! ## A188650.P14996176790786054739

`A188649(record[(n+1)/(A188649(n+1)-n)])`
-/

namespace A188650.P14996176790786054739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A188649 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188649 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A188650.P14996176790786054739

/-! ## A188650.P4589135289052751577

`record[root(A071786(n+1), A188649(n+1)-n)]`
-/

namespace A188650.P4589135289052751577
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A071786 (n + 1) : ℝ) ^ (1 / (A188649 (n + 1) - (n : ℤ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188650.P4589135289052751577

/-! ## A188650.P5556449165021809675

`eq[n, A188649(A065033(2*n))]`
-/

namespace A188650.P5556449165021809675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188649 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188650.P5556449165021809675

/-! ## A188650.P888874575788215202

`eq[n, A188649(A123108(2*n))]`
-/

namespace A188650.P888874575788215202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188649 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188650.P888874575788215202

/-!
# A188651: Products of two primes (i.e., "semiprimes") that are the sum of three consecutive primes.

The programs for A188651, the canonical program `A188651.P16188137822530435702` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188651 has offset 1).

The definition of A188651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188651.P14723736856930647112

`filter[A034961(n+1), A064911(#)]`
-/

namespace A188651.P14723736856930647112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A188651.P14723736856930647112

namespace A188651

/-- `filter[A034961(n+1), A064911(#)]` -/
def P14723736856930647112.Spec : Prop :=
  ∀ n, P14723736856930647112.a n = A188651 (n + 1)

end A188651

/-! ## A188651.P16188137822530435702

`∩[A001358(n+1), A034961(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A188651

/-- `∩[A001358(n+1), A034961(n+1)]` -/
def P16188137822530435702.Spec : Prop :=
  ∀ n, (P16188137822530435702.a n : ℤ) = A188651 (n + 1)

theorem P16188137822530435702.correct : P16188137822530435702.Spec := by
  intro n
  simp only [A188651, Nat.add_sub_cancel]

end A188651

/-! ## A188651.P5388308404925962835

`∩[A034961(n+1), A176540(n+1)]`
-/

namespace A188651.P5388308404925962835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188651.P5388308404925962835

namespace A188651

/-- `∩[A034961(n+1), A176540(n+1)]` -/
def P5388308404925962835.Spec : Prop :=
  ∀ n, (P5388308404925962835.a n : ℤ) = A188651 (n + 1)

end A188651

/-! ## A188651.P2568721214487746741

`∩[A034961(n+1), A085155(n+1)]`
-/

namespace A188651.P2568721214487746741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188651.P2568721214487746741

namespace A188651

/-- `∩[A034961(n+1), A085155(n+1)]` -/
def P2568721214487746741.Spec : Prop :=
  ∀ n, (P2568721214487746741.a n : ℤ) = A188651 (n + 1)

end A188651

/-! ## A188651.P16209003777326508215

`∩[A034961(n+1), A339424(n+1)]`
-/

namespace A188651.P16209003777326508215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188651.P16209003777326508215

namespace A188651

/-- `∩[A034961(n+1), A339424(n+1)]` -/
def P16209003777326508215.Spec : Prop :=
  ∀ n, (P16209003777326508215.a n : ℤ) = A188651 (n + 1)

end A188651

/-! ## A188651.P17223071179345572317

`∩[A034961(n+1), A077135(n+1)]`
-/

namespace A188651.P17223071179345572317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188651.P17223071179345572317

namespace A188651

/-- `∩[A034961(n+1), A077135(n+1)]` -/
def P17223071179345572317.Spec : Prop :=
  ∀ n, (P17223071179345572317.a n : ℤ) = A188651 (n + 1)

end A188651

/-! ## A188651.P10483070588487969139

`∩[A034961(n+1), A077136(n+1)]`
-/

namespace A188651.P10483070588487969139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188651.P10483070588487969139

namespace A188651

/-- `∩[A034961(n+1), A077136(n+1)]` -/
def P10483070588487969139.Spec : Prop :=
  ∀ n, (P10483070588487969139.a n : ℤ) = A188651 (n + 1)

end A188651

/-! ## A188651.P4098023709591529954

`record[A076290(A034961(n+1))]`
-/

namespace A188651.P4098023709591529954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A034961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188651.P4098023709591529954

namespace A188651

/-- `record[A076290(A034961(n+1))]` -/
def P4098023709591529954.Spec : Prop :=
  ∀ n, P4098023709591529954.a n = A188651 (n + 1)

end A188651

/-! ## A188651.P12345591327742730217

`record[A179312(A034961(A328399(n)))]`
-/

namespace A188651.P12345591327742730217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A034961 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188651.P12345591327742730217

namespace A188651

/-- `record[A179312(A034961(A328399(n)))]` -/
def P12345591327742730217.Spec : Prop :=
  ∀ n, P12345591327742730217.a n = A188651 (n + 1)

end A188651

/-! ## A188651.P188853704951822895

`record[A179312(A034961(A003602(n+1)))]`
-/

namespace A188651.P188853704951822895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A034961 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188651.P188853704951822895

namespace A188651

/-- `record[A179312(A034961(A003602(n+1)))]` -/
def P188853704951822895.Spec : Prop :=
  ∀ n, P188853704951822895.a n = A188651 (n + 1)

end A188651

/-! ## A188651.P18375453553659656804

`A179312(record[A179312(A034961(n+1))])`
-/

namespace A188651.P18375453553659656804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A034961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188651.P18375453553659656804

namespace A188651

/-- `A179312(record[A179312(A034961(n+1))])` -/
def P18375453553659656804.Spec : Prop :=
  ∀ n, P18375453553659656804.a n = A188651 (n + 1)

end A188651

/-! ## A188651.P3428526657928436586

`record[A076290(A001043(n+2)+A000040(n+1))]`
-/

namespace A188651.P3428526657928436586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A001043 (n + 2) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188651.P3428526657928436586

namespace A188651

/-- `record[A076290(A001043(n+2)+A000040(n+1))]` -/
def P3428526657928436586.Spec : Prop :=
  ∀ n, P3428526657928436586.a n = A188651 (n + 1)

end A188651

/-! ## A188651.P1879752354724474507

`record[A179312(A001043(n+2)+A000040(n+1))]`
-/

namespace A188651.P1879752354724474507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A001043 (n + 2) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188651.P1879752354724474507

namespace A188651

/-- `record[A179312(A001043(n+2)+A000040(n+1))]` -/
def P1879752354724474507.Spec : Prop :=
  ∀ n, P1879752354724474507.a n = A188651 (n + 1)

end A188651

/-! ## A188651.P10085291976634367437

`record[A076290(A011974(n+3)+A000040(n+1))]`
-/

namespace A188651.P10085291976634367437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A011974 (n + 3) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188651.P10085291976634367437

namespace A188651

/-- `record[A076290(A011974(n+3)+A000040(n+1))]` -/
def P10085291976634367437.Spec : Prop :=
  ∀ n, P10085291976634367437.a n = A188651 (n + 1)

end A188651

/-! ## A188651.P14653429930962137131

`record[A076290(A048448(n+2)+A000040(n+2))]`
-/

namespace A188651.P14653429930962137131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A048448 (n + 2) + A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188651.P14653429930962137131

namespace A188651

/-- `record[A076290(A048448(n+2)+A000040(n+2))]` -/
def P14653429930962137131.Spec : Prop :=
  ∀ n, P14653429930962137131.a n = A188651 (n + 1)

end A188651

/-! ## A188651.P11803706422726412584

`record[A076290(A096277(n+1)-A000040(n+2))]`
-/

namespace A188651.P11803706422726412584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A096277 (n + 1) - A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188651.P11803706422726412584

namespace A188651

/-- `record[A076290(A096277(n+1)-A000040(n+2))]` -/
def P11803706422726412584.Spec : Prop :=
  ∀ n, P11803706422726412584.a n = A188651 (n + 1)

end A188651

/-! ## A188651.P11002495439249510004

`record[A179312(A096277(n+1)-A000040(n+2))]`
-/

namespace A188651.P11002495439249510004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A096277 (n + 1) - A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188651.P11002495439249510004

namespace A188651

/-- `record[A179312(A096277(n+1)-A000040(n+2))]` -/
def P11002495439249510004.Spec : Prop :=
  ∀ n, P11002495439249510004.a n = A188651 (n + 1)

end A188651

/-!
# A188652: First differences of A000463.

The programs for A188652, the canonical program `A188652.P6970778430024566218` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188652 has offset 1).

The definition of A188652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188652.P15997803735821888654

`(2*(n+1)+3-(2*(n+1)²-2*(n+1)-5)*(-1)^(n+1))/8`
-/

namespace A188652.P15997803735821888654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) + 3 : ℤ) - ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) - 5) * (-1) ^ (n + 1) : ℚ) / 8

end

end A188652.P15997803735821888654

namespace A188652

/-- `(2*(n+1)+3-(2*(n+1)²-2*(n+1)-5)*(-1)^(n+1))/8` -/
def P15997803735821888654.Spec : Prop :=
  ∀ n, P15997803735821888654.a n = (A188652 (n + 1) : ℚ)

end A188652

/-! ## A188652.P6970778430024566218

`A000463(n+2)-A000463(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188652

/-- `A000463(n+2)-A000463(n+1)` -/
def P6970778430024566218.Spec : Prop :=
  ∀ n, P6970778430024566218.a n = A188652 (n + 1)

theorem P6970778430024566218.correct : P6970778430024566218.Spec := by
  intro n
  simp only [A188652, Nat.add_sub_cancel]

end A188652

/-! ## A188652.P16350975601579979908

`C(or(1, n), n)-a(n-1)` with `a(0)=0`
-/

namespace A188652.P16350975601579979908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose (Nat.lor 1 n) n : ℤ) - a (n - 1)

end

end A188652.P16350975601579979908

namespace A188652

/-- `C(or(1, n), n)-a(n-1)` -/
def P16350975601579979908.Spec : Prop :=
  ∀ n, P16350975601579979908.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P12250005208651518407

`gcd(n+1, n%2)-a(n-1)` with `a(0)=0`
-/

namespace A188652.P12250005208651518407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.gcd (n + 1) (n % 2) : ℤ) - a (n - 1)

end

end A188652.P12250005208651518407

namespace A188652

/-- `gcd(n+1, n%2)-a(n-1)` -/
def P12250005208651518407.Spec : Prop :=
  ∀ n, P12250005208651518407.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P6787385189835413418

`Δ[a(n-2)+C(n, and(1, n))]` with `a(0)=1, a(1)=1`
-/

namespace A188652.P6787385189835413418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + Nat.choose n (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A188652.P6787385189835413418

namespace A188652

/-- `Δ[a(n-2)+C(n, and(1, n))]` -/
def P6787385189835413418.Spec : Prop :=
  ∀ n, P6787385189835413418.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P6343517392152540374

`n*char[2*n]+1-a(n-1)` with `a(0)=0`
-/

namespace A188652.P6343517392152540374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n * (if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) - a (n - 1)

end

end A188652.P6343517392152540374

namespace A188652

/-- `n*char[2*n]+1-a(n-1)` -/
def P6343517392152540374.Spec : Prop :=
  ∀ n, P6343517392152540374.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P10290720122875761960

`n*(n+1)%2+1-a(n-1)` with `a(0)=0`
-/

namespace A188652.P10290720122875761960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n * ((n + 1) % 2) : ℕ) : ℤ) + (1 - a (n - 1))

end

end A188652.P10290720122875761960

namespace A188652

/-- `n*(n+1)%2+1-a(n-1)` -/
def P10290720122875761960.Spec : Prop :=
  ∀ n, P10290720122875761960.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P16734259825592856095

`1-(a(n-1)+n*(1-gcd(2, n)))` with `a(0)=0`
-/

namespace A188652.P16734259825592856095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) + (n : ℤ) * (1 - (Nat.gcd 2 n : ℤ)))

end

end A188652.P16734259825592856095

namespace A188652

/-- `1-(a(n-1)+n*(1-gcd(2, n)))` -/
def P16734259825592856095.Spec : Prop :=
  ∀ n, P16734259825592856095.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P12741463369514372205

`n*(n-1)%2-(a(n-1)-1)` with `a(0)=0`
-/

namespace A188652.P12741463369514372205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * Int.tmod ((n : ℤ) - 1) 2 - (a (n - 1) - 1)

end

end A188652.P12741463369514372205

namespace A188652

/-- `n*(n-1)%2-(a(n-1)-1)` -/
def P12741463369514372205.Spec : Prop :=
  ∀ n, P12741463369514372205.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P11956094231424102727

`2*n+1-(a(n-1)+lcm(2, n))` with `a(0)=0`
-/

namespace A188652.P11956094231424102727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n + 1 : ℤ) - (a (n - 1) + (Nat.lcm 2 n : ℤ))

end

end A188652.P11956094231424102727

namespace A188652

/-- `2*n+1-(a(n-1)+lcm(2, n))` -/
def P11956094231424102727.Spec : Prop :=
  ∀ n, P11956094231424102727.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P5601406847715567618

`floor((n+1)/(a(n-1)+a(n-2))-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A188652.P5601406847715567618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n + 1 : ℚ) / (a (n - 1) + a (n - 2) : ℚ) - (a (n - 1) : ℚ)⌋

end

end A188652.P5601406847715567618

namespace A188652

/-- `floor((n+1)/(a(n-1)+a(n-2))-a(n-1))` -/
def P5601406847715567618.Spec : Prop :=
  ∀ n, P5601406847715567618.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P16893930286717837132

`∑[A188653(n+1)]-A188653(n+1)`
-/

namespace A188652.P16893930286717837132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A188653 (n + 1)

end

end A188652.P16893930286717837132

namespace A188652

/-- `∑[A188653(n+1)]-A188653(n+1)` -/
def P16893930286717837132.Spec : Prop :=
  ∀ n, P16893930286717837132.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P4706768478732147338

`A130404(n+1)-A213037(A093178(n))`
-/

namespace A188652.P4706768478732147338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1) - A213037 (A093178 n).toNat

end

end A188652.P4706768478732147338

namespace A188652

/-- `A130404(n+1)-A213037(A093178(n))` -/
def P4706768478732147338.Spec : Prop :=
  ∀ n, P4706768478732147338.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P13250952517533928829

`A002620(A141310(n))-A002620(A093178(n))`
-/

namespace A188652.P13250952517533928829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A141310 n).toNat - A002620 (A093178 n).toNat

end

end A188652.P13250952517533928829

namespace A188652

/-- `A002620(A141310(n))-A002620(A093178(n))` -/
def P13250952517533928829.Spec : Prop :=
  ∀ n, P13250952517533928829.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P1768993207168825884

`Δ[∑[char[2*n]]^gcd(2, n+1)]`
-/

namespace A188652.P1768993207168825884
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A188652.P1768993207168825884

namespace A188652

/-- `Δ[∑[char[2*n]]^gcd(2, n+1)]` -/
def P1768993207168825884.Spec : Prop :=
  ∀ n, P1768993207168825884.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P7984373263953317997

`Δ[A000463(n+1)]`
-/

namespace A188652.P7984373263953317997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188652.P7984373263953317997

namespace A188652

/-- `Δ[A000463(n+1)]` -/
def P7984373263953317997.Spec : Prop :=
  ∀ n, P7984373263953317997.a n = A188652 (n + 1)

theorem P7984373263953317997.correct : P7984373263953317997.Spec := by
  intro n
  simp only [A188652, Nat.add_sub_cancel, A188652.P7984373263953317997.f1, A188652.P7984373263953317997.a, A188652.P6970778430024566218.a, SequenceMachineLib.memo_apply]

end A188652

/-! ## A188652.P16778132234033837623

`Δ[A008619(n)*A152271(n)]`
-/

namespace A188652.P16778132234033837623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188652.P16778132234033837623

namespace A188652

/-- `Δ[A008619(n)*A152271(n)]` -/
def P16778132234033837623.Spec : Prop :=
  ∀ n, P16778132234033837623.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P10082133371006256623

`Δ[A008619(n)^A000034(n)]`
-/

namespace A188652.P10082133371006256623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) ^ (A000034 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188652.P10082133371006256623

namespace A188652

/-- `Δ[A008619(n)^A000034(n)]` -/
def P10082133371006256623.Spec : Prop :=
  ∀ n, P10082133371006256623.a n = (A188652 (n + 1) : ℚ)

end A188652

/-! ## A188652.P3123569392913608249

`Δ[gcd(A212760(n), A212765(n))]`
-/

namespace A188652.P3123569392913608249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212760 n) (A212765 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A188652.P3123569392913608249

namespace A188652

/-- `Δ[gcd(A212760(n), A212765(n))]` -/
def P3123569392913608249.Spec : Prop :=
  ∀ n, P3123569392913608249.a n = A188652 (n + 1)

end A188652

/-! ## A188652.P18138725921208266495

`Δ[(A004526(n)+1)*A152271(n)]`
-/

namespace A188652.P18138725921208266495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) * A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188652.P18138725921208266495

namespace A188652

/-- `Δ[(A004526(n)+1)*A152271(n)]` -/
def P18138725921208266495.Spec : Prop :=
  ∀ n, P18138725921208266495.a n = A188652 (n + 1)

end A188652

/-!
# A188653: Second differences of A000463; first differences of A188652.

The programs for A188653, the canonical program `A188653.P11362687780223873411` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188653 has offset 1).

The definition of A188653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188653.P5138802488351869239

`((2*(n+1)²-5)*(-1)^(n+1)+1)/4`
-/

namespace A188653.P5138802488351869239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) ^ 2 : ℤ) - 5) * (-1) ^ (n + 1) + 1 : ℚ) / 4

end

end A188653.P5138802488351869239

namespace A188653

/-- `((2*(n+1)²-5)*(-1)^(n+1)+1)/4` -/
def P5138802488351869239.Spec : Prop :=
  ∀ n, P5138802488351869239.a n = (A188653 (n + 1) : ℚ)

end A188653

/-! ## A188653.P11362687780223873411

`A188652(n+2)-A188652(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188653

/-- `A188652(n+2)-A188652(n+1)` -/
def P11362687780223873411.Spec : Prop :=
  ∀ n, P11362687780223873411.a n = A188653 (n + 1)

theorem P11362687780223873411.correct : P11362687780223873411.Spec := by
  intro n
  simp only [A188653, Nat.add_sub_cancel]

end A188653

/-! ## A188653.P903123004865497801

`A000463(n+3)-2*A000463(n+2)+A000463(n+1)`
-/

namespace A188653.P903123004865497801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 3) - 2 * A000463 (n + 2) + A000463 (n + 1)

end

end A188653.P903123004865497801

namespace A188653

/-- `A000463(n+3)-2*A000463(n+2)+A000463(n+1)` -/
def P903123004865497801.Spec : Prop :=
  ∀ n, P903123004865497801.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P229651294256494682

`ogf((1+3x-x^2-x^3)/(1+2x-2x^3-x^4))`
-/

namespace A188653.P229651294256494682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1, -1] [1, 2, 0, -2, -1] n

end

end A188653.P229651294256494682

namespace A188653

/-- `ogf((1+3x-x^2-x^3)/(1+2x-2x^3-x^4))` -/
def P229651294256494682.Spec : Prop :=
  ∀ n, P229651294256494682.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P14957326811327341466

`1-Δ[lcm(2, n)-a(n-1)]` with `a(0)=1`
-/

namespace A188653.P14957326811327341466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.lcm 2 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A188653.P14957326811327341466

namespace A188653

/-- `1-Δ[lcm(2, n)-a(n-1)]` -/
def P14957326811327341466.Spec : Prop :=
  ∀ n, P14957326811327341466.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P4091226894085670841

`Δ[C(or(1, n), n)-a(n-1)]` with `a(0)=0`
-/

namespace A188653.P4091226894085670841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.choose (Nat.lor 1 n) n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188653.P4091226894085670841

namespace A188653

/-- `Δ[C(or(1, n), n)-a(n-1)]` -/
def P4091226894085670841.Spec : Prop :=
  ∀ n, P4091226894085670841.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P1051864288238888414

`Δ[n*and(1, n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A188653.P1051864288238888414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)

end

end A188653.P1051864288238888414

namespace A188653

/-- `Δ[n*and(1, n+1)]-a(n-1)` -/
def P1051864288238888414.Spec : Prop :=
  ∀ n, P1051864288238888414.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P11338768203364814696

`Δ[gcd(n+1, n%2)-a(n-1)]` with `a(0)=0`
-/

namespace A188653.P11338768203364814696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.gcd (n + 1) (n % 2) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188653.P11338768203364814696

namespace A188653

/-- `Δ[gcd(n+1, n%2)-a(n-1)]` -/
def P11338768203364814696.Spec : Prop :=
  ∀ n, P11338768203364814696.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P13385760446330540409

`Δ[(n+1)^and(1, a(n-1))-a(n-1)]` with `a(0)=0`
-/

namespace A188653.P13385760446330540409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1 : ℚ) ^ (Int.land 1 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188653.P13385760446330540409

namespace A188653

/-- `Δ[(n+1)^and(1, a(n-1))-a(n-1)]` -/
def P13385760446330540409.Spec : Prop :=
  ∀ n, P13385760446330540409.a n = (A188653 (n + 1) : ℚ)

end A188653

/-! ## A188653.P7716222497520334113

`2*A001057(n)-a(n-1)` with `a(0)=1`
-/

namespace A188653.P7716222497520334113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A001057 n - a (n - 1)

end

end A188653.P7716222497520334113

namespace A188653

/-- `2*A001057(n)-a(n-1)` -/
def P7716222497520334113.Spec : Prop :=
  ∀ n, P7716222497520334113.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P1720129730601890073

`A266437(n)-(a(n-1)+n)` with `a(0)=1`
-/

namespace A188653.P1720129730601890073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266437 n - (a (n - 1) + (n : ℤ))

end

end A188653.P1720129730601890073

namespace A188653

/-- `A266437(n)-(a(n-1)+n)` -/
def P1720129730601890073.Spec : Prop :=
  ∀ n, P1720129730601890073.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P9249594196286724125

`∑[(2-A000124(n))*A280560(n)]`
-/

namespace A188653.P9249594196286724125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000124 n) * A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188653.P9249594196286724125

namespace A188653

/-- `∑[(2-A000124(n))*A280560(n)]` -/
def P9249594196286724125.Spec : Prop :=
  ∀ n, P9249594196286724125.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P11650763777523764934

`Δ[n*char[2*n]]-a(n-1)` with `a(0)=1`
-/

namespace A188653.P11650763777523764934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)

end

end A188653.P11650763777523764934

namespace A188653

/-- `Δ[n*char[2*n]]-a(n-1)` -/
def P11650763777523764934.Spec : Prop :=
  ∀ n, P11650763777523764934.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P1535686301670664366

`Δ[A188652(n+1)]`
-/

namespace A188653.P1535686301670664366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188653.P1535686301670664366

namespace A188653

/-- `Δ[A188652(n+1)]` -/
def P1535686301670664366.Spec : Prop :=
  ∀ n, P1535686301670664366.a n = A188653 (n + 1)

theorem P1535686301670664366.correct : P1535686301670664366.Spec := by
  intro n
  simp only [A188653, Nat.add_sub_cancel, A188653.P1535686301670664366.f1, A188653.P1535686301670664366.a, A188653.P11362687780223873411.a, SequenceMachineLib.memo_apply]

end A188653

/-! ## A188653.P12731171271522657435

`(A007590(n+1)-1)*A033999(n+1)`
-/

namespace A188653.P12731171271522657435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007590 (n + 1) - 1) * A033999 (n + 1)

end

end A188653.P12731171271522657435

namespace A188653

/-- `(A007590(n+1)-1)*A033999(n+1)` -/
def P12731171271522657435.Spec : Prop :=
  ∀ n, P12731171271522657435.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P6660901940565016058

`Δ[Δ[A000463(n+1)]]`
-/

namespace A188653.P6660901940565016058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188653.P6660901940565016058

namespace A188653

/-- `Δ[Δ[A000463(n+1)]]` -/
def P6660901940565016058.Spec : Prop :=
  ∀ n, P6660901940565016058.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P6384184691858318419

`Δ[Δ[A008619(n)*A152271(n)]]`
-/

namespace A188653.P6384184691858318419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188653.P6384184691858318419

namespace A188653

/-- `Δ[Δ[A008619(n)*A152271(n)]]` -/
def P6384184691858318419.Spec : Prop :=
  ∀ n, P6384184691858318419.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P17275584952877812711

`A089594(n+1)-A130472(n+3)`
-/

namespace A188653.P17275584952877812711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089594 (n + 1) - A130472 (n + 3)

end

end A188653.P17275584952877812711

namespace A188653

/-- `A089594(n+1)-A130472(n+3)` -/
def P17275584952877812711.Spec : Prop :=
  ∀ n, P17275584952877812711.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P10539741021248085961

`∑[(1-n)*A097141(n+4)]-1`
-/

namespace A188653.P10539741021248085961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A097141 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A188653.P10539741021248085961

namespace A188653

/-- `∑[(1-n)*A097141(n+4)]-1` -/
def P10539741021248085961.Spec : Prop :=
  ∀ n, P10539741021248085961.a n = A188653 (n + 1)

end A188653

/-! ## A188653.P198283855993903806

`Δ[Δ[A109594(∑[n%2+1])]]`
-/

namespace A188653.P198283855993903806
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188653.P198283855993903806

namespace A188653

/-- `Δ[Δ[A109594(∑[n%2+1])]]` -/
def P198283855993903806.Spec : Prop :=
  ∀ n, P198283855993903806.a n = A188653 (n + 1)

end A188653

/-!
# A188654: Numbers k such that the maximum exponent in its prime factorization does not equal the number of positive exponents (A051903(k) <> A001221(k)).

The programs for A188654, the canonical program `A188654.P6164592973035775826` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188654 has offset 1).

The definition of A188654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188654.P6164592973035775826

`comp[A212166(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188654

/-- `comp[A212166(n+1)-1]+1` -/
def P6164592973035775826.Spec : Prop :=
  ∀ n, (P6164592973035775826.a n : ℤ) = A188654 (n + 1)

theorem P6164592973035775826.correct : P6164592973035775826.Spec := by
  intro n
  simp only [A188654, Nat.add_sub_cancel]

end A188654

/-! ## A188654.P11076137243563534899

`∪[A212164(n+1), A212168(n+1)]`
-/

namespace A188654.P11076137243563534899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188654.P11076137243563534899

namespace A188654

/-- `∪[A212164(n+1), A212168(n+1)]` -/
def P11076137243563534899.Spec : Prop :=
  ∀ n, (P11076137243563534899.a n : ℤ) = A188654 (n + 1)

end A188654

/-! ## A188654.P16905811151739920650

`lt[0, A225230(n+1)²]+1`
-/

namespace A188654.P16905811151739920650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A188654.P16905811151739920650

namespace A188654

/-- `lt[0, A225230(n+1)²]+1` -/
def P16905811151739920650.Spec : Prop :=
  ∀ n, (P16905811151739920650.a n : ℤ) = A188654 (n + 1)

end A188654

/-! ## A188654.P6146360608078744002

`eq[char[A212166(n+1)], A000007(n)]`
-/

namespace A188654.P6146360608078744002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A188654.P6146360608078744002

namespace A188654

/-- `eq[char[A212166(n+1)], A000007(n)]` -/
def P6146360608078744002.Spec : Prop :=
  ∀ n, (P6146360608078744002.a n : ℤ) = A188654 (n + 1)

end A188654

/-! ## A188654.P2505315172058391045

`eq[char[A212166(n+1)], A000038(n)]`
-/

namespace A188654.P2505315172058391045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A188654.P2505315172058391045

namespace A188654

/-- `eq[char[A212166(n+1)], A000038(n)]` -/
def P2505315172058391045.Spec : Prop :=
  ∀ n, (P2505315172058391045.a n : ℤ) = A188654 (n + 1)

end A188654

/-! ## A188654.P3918971687005095219

`eq[char[A212166(n+1)], A166926(n)]`
-/

namespace A188654.P3918971687005095219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A188654.P3918971687005095219

namespace A188654

/-- `eq[char[A212166(n+1)], A166926(n)]` -/
def P3918971687005095219.Spec : Prop :=
  ∀ n, (P3918971687005095219.a n : ℤ) = A188654 (n + 1)

end A188654

/-! ## A188654.P6113250755055595428

`eq[char[A212166(n+1)], A039975(2*n+1)]`
-/

namespace A188654.P6113250755055595428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A188654.P6113250755055595428

namespace A188654

/-- `eq[char[A212166(n+1)], A039975(2*n+1)]` -/
def P6113250755055595428.Spec : Prop :=
  ∀ n, (P6113250755055595428.a n : ℤ) = A188654 (n + 1)

end A188654

/-! ## A188654.P15122397439634127864

`∪[A030626(n+1), A340656(n+1)]`
-/

namespace A188654.P15122397439634127864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188654.P15122397439634127864

namespace A188654

/-- `∪[A030626(n+1), A340656(n+1)]` -/
def P15122397439634127864.Spec : Prop :=
  ∀ n, (P15122397439634127864.a n : ℤ) = A188654 (n + 1)

end A188654

/-! ## A188654.P13590764721596182724

`∪[A046099(n+1), A340656(n+1)]`
-/

namespace A188654.P13590764721596182724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188654.P13590764721596182724

namespace A188654

/-- `∪[A046099(n+1), A340656(n+1)]` -/
def P13590764721596182724.Spec : Prop :=
  ∀ n, (P13590764721596182724.a n : ℤ) = A188654 (n + 1)

end A188654

/-! ## A188654.P2008458961488059791

`∪[A048109(n+1), A340656(n+1)]`
-/

namespace A188654.P2008458961488059791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188654.P2008458961488059791

namespace A188654

/-- `∪[A048109(n+1), A340656(n+1)]` -/
def P2008458961488059791.Spec : Prop :=
  ∀ n, (P2008458961488059791.a n : ℤ) = A188654 (n + 1)

end A188654

/-!
# A188656: Decimal expansion of (1+sqrt(65))/8.

The programs for A188656, there is no canonical definition to state claims against.
-/

/-! ## A188656.P4875958281620339483

`A177707(n-char[1])`
-/

namespace A188656.P4875958281620339483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177707 (n - (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A188656.P4875958281620339483

/-! ## A188656.P15395571872675482481

`A177707(n)^floor(atan(n))`
-/

namespace A188656.P15395571872675482481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177707 (n + 1) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A188656.P15395571872675482481

/-!
# A188658: Decimal expansion of (1+sqrt(101))/10.

The programs for A188658, there is no canonical definition to state claims against.
-/

/-! ## A188658.P16359334847791165209

`A248803(n)+A027869(A027869(a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A188658.P16359334847791165209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A248803 (n + 2) + A027869 (A027869 (a (n - 2)).toNat).toNat

end

end A188658.P16359334847791165209

/-! ## A188658.P17324741557981793448

`A248803(n)-A027869(A086617(a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A188658.P17324741557981793448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A248803 (n + 2) - A027869 (A086617 (a (n - 2)).toNat).toNat

end

end A188658.P17324741557981793448

/-!
# A188659: Decimal expansion of (1+sqrt(26))/5.

The programs for A188659, there is no canonical definition to state claims against.
-/

/-! ## A188659.P16561088713718920589

`A344426(n)+2*char[1]`
-/

namespace A188659.P16561088713718920589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344426 (n + 1) + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A188659.P16561088713718920589

/-!
# A188660: Oblong numbers that are the product of two oblong numbers.

The programs for A188660, there is no canonical definition to state claims against.
-/

/-! ## A188660.P10928332793600888175

`∩[A053990(n+2), A002378(n)]`
-/

namespace A188660.P10928332793600888175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188660.P10928332793600888175

/-! ## A188660.P15677266252573647631

`∩[A072389(n+2), A002378(n)]`
-/

namespace A188660.P15677266252573647631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188660.P15677266252573647631

/-! ## A188660.P7170442702314752943

`∩[A053990(n+1), A060798(n+1)]`
-/

namespace A188660.P7170442702314752943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188660.P7170442702314752943

/-! ## A188660.P6989043804971194755

`∩[A053990(n+1), A124672(n+1)]`
-/

namespace A188660.P6989043804971194755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188660.P6989043804971194755

/-! ## A188660.P8310545234662284731

`∩[A053990(n+1), A130404(n+1)]`
-/

namespace A188660.P8310545234662284731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188660.P8310545234662284731

/-! ## A188660.P18203511253564356518

`∩[A053990(n+1), A140144(n+1)]`
-/

namespace A188660.P18203511253564356518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188660.P18203511253564356518

/-! ## A188660.P3285267757206144366

`∩[A072389(n+1), A124672(n+1)]`
-/

namespace A188660.P3285267757206144366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188660.P3285267757206144366

/-! ## A188660.P13616443992033788180

`∩[A072389(n+1), A130404(n+1)]`
-/

namespace A188660.P13616443992033788180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188660.P13616443992033788180

/-! ## A188660.P17919407686005482188

`∩[A072389(n+1), A140144(n+1)]`
-/

namespace A188660.P17919407686005482188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188660.P17919407686005482188

/-! ## A188660.P14430594757376239175

`∩[A053990(n+1), A339267(n+1)]`
-/

namespace A188660.P14430594757376239175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188660.P14430594757376239175

/-!
# A188661: Primes of the form (2^n+3)^2-8.

The programs for A188661, there is no canonical definition to state claims against.
-/

/-! ## A188661.P15779387330921173810

`A188129(A188936(n+1))`
-/

namespace A188661.P15779387330921173810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188129 (A188936 (n + 1)).toNat

end

end A188661.P15779387330921173810

/-! ## A188661.P16532698243983835916

`A028884(2^A057197(n+1))`
-/

namespace A188661.P16532698243983835916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A057197 (n + 1) : ℤ))).toNat

end

end A188661.P16532698243983835916

/-! ## A188661.P2757248513280190492

`A028884(2^A188936(n+1))`
-/

namespace A188661.P2757248513280190492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A188936 (n + 1) : ℤ))).toNat

end

end A188661.P2757248513280190492

/-! ## A188661.P7863266828276352002

`A028884(2^A333909(n+1))`
-/

namespace A188661.P7863266828276352002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A333909 (n + 1) : ℤ))).toNat

end

end A188661.P7863266828276352002

/-! ## A188661.P10222286595759868051

`∩[A080076(n+1), A028884(n)]`
-/

namespace A188661.P10222286595759868051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188661.P10222286595759868051

/-!
# A188662: Binomial coefficients: a(n) = binomial(3*n,n)^2.

The programs for A188662, the canonical program `A188662.P10029233221612168784` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188662 has offset 0).

The definition of A188662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*n, n)²` (program `A188662.P10029233221612168784`, by `A188662.P10029233221612168784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188662.P10029233221612168784

`C(3*n, n)²`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188662

/-- `C(3*n, n)²` -/
def P10029233221612168784.Spec : Prop :=
  ∀ n, (P10029233221612168784.a n : ℤ) = A188662 n

theorem P10029233221612168784.correct : P10029233221612168784.Spec := by
  intro n
  simp only [A188662]

end A188662

/-! ## A188662.P1715932689932745491

`A005809(n)²`
-/

namespace A188662.P1715932689932745491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n ^ 2

end

end A188662.P1715932689932745491

namespace A188662

/-- `A005809(n)²` -/
def P1715932689932745491.Spec : Prop :=
  ∀ n, P1715932689932745491.a n = A188662 n

end A188662

/-! ## A188662.P3088898904976814957

`C(3*n, n)^2`
-/

namespace A188662.P3088898904976814957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n ^ 2

end

end A188662.P3088898904976814957

namespace A188662

/-- `C(3*n, n)^2` -/
def P3088898904976814957.Spec : Prop :=
  ∀ n, (P3088898904976814957.a n : ℤ) = A188662 n

theorem P3088898904976814957.correct : P3088898904976814957.Spec := by
  intro n
  simp only [A188662, Nat.add_sub_cancel, A188662.P3088898904976814957.a, A188662.P10029233221612168784.a, SequenceMachineLib.memo_apply]

end A188662

/-! ## A188662.P3281842628292568937

`C(3*n, n)*C(3*n, n)`
-/

namespace A188662.P3281842628292568937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n * Nat.choose (3 * n) n

end

end A188662.P3281842628292568937

namespace A188662

/-- `C(3*n, n)*C(3*n, n)` -/
def P3281842628292568937.Spec : Prop :=
  ∀ n, (P3281842628292568937.a n : ℤ) = A188662 n

theorem P3281842628292568937.correct : P3281842628292568937.Spec := by
  intro n
  simp only [A188662, Nat.add_sub_cancel, A188662.P3281842628292568937.a, A188662.P10029233221612168784.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A188662

/-! ## A188662.P16975465635277158491

`A171001(4*n)`
-/

namespace A188662.P16975465635277158491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171001 (4 * n)

end

end A188662.P16975465635277158491

namespace A188662

/-- `A171001(4*n)` -/
def P16975465635277158491.Spec : Prop :=
  ∀ n, P16975465635277158491.a n = A188662 n

end A188662

/-! ## A188662.P2025533520139953865

`A119301(∑[n])²`
-/

namespace A188662.P2025533520139953865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A188662.P2025533520139953865

namespace A188662

/-- `A119301(∑[n])²` -/
def P2025533520139953865.Spec : Prop :=
  ∀ n, P2025533520139953865.a n = A188662 n

end A188662

/-! ## A188662.P11067501287062889496

`A264772(∑[n])²`
-/

namespace A188662.P11067501287062889496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A188662.P11067501287062889496

namespace A188662

/-- `A264772(∑[n])²` -/
def P11067501287062889496.Spec : Prop :=
  ∀ n, P11067501287062889496.a n = A188662 n

end A188662

/-! ## A188662.P555526483834687274

`A269956(∑[n])²`
-/

namespace A188662.P555526483834687274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269956 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A188662.P555526483834687274

namespace A188662

/-- `A269956(∑[n])²` -/
def P555526483834687274.Spec : Prop :=
  ∀ n, P555526483834687274.a n = A188662 n

end A188662

/-! ## A188662.P3263054878112348198

`record[A119301(n)²]`
-/

namespace A188662.P3263054878112348198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188662.P3263054878112348198

namespace A188662

/-- `record[A119301(n)²]` -/
def P3263054878112348198.Spec : Prop :=
  ∀ n, P3263054878112348198.a n = A188662 n

end A188662

/-! ## A188662.P11141226943428022641

`record[A264772(n)²]`
-/

namespace A188662.P11141226943428022641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188662.P11141226943428022641

namespace A188662

/-- `record[A264772(n)²]` -/
def P11141226943428022641.Spec : Prop :=
  ∀ n, P11141226943428022641.a n = A188662 n

end A188662

/-!
# A188663: Pentagonal numbers that are the product of two pentagonal numbers greater than 1.

The programs for A188663, there is no canonical definition to state claims against.
-/

/-! ## A188663.P16646503930964685179

`A374372(A067090(n+1))`
-/

namespace A188663.P16646503930964685179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374372 (A067090 (n + 1)).toNat

end

end A188663.P16646503930964685179

/-!
# A188664: a(n) = 2A(n)/C(n) where A(n) = A180874(n) and C(n) = Catalan(n) = A000108(n).

The programs for A188664, there is no canonical definition to state claims against.
-/

/-! ## A188664.P550670770235540066

`2*A180874(n+1)/A000108(n+1)`
-/

namespace A188664.P550670770235540066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A180874 (n + 1) : ℚ) / (A000108 (n + 1) : ℚ)

end

end A188664.P550670770235540066

/-! ## A188664.P2833213367810050474

`2/(n+1)*A131490(n+1)`
-/

namespace A188664.P2833213367810050474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A131490 (n + 1) : ℚ)

end

end A188664.P2833213367810050474

/-!
# A188665: Primes of the form n^2+number of divisors of n^2.

The programs for A188665, there is no canonical definition to state claims against.
-/

/-! ## A188665.P18107647805393418428

`A188539(n+1)²+A000005(A188539(n+1)²)`
-/

namespace A188665.P18107647805393418428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188539 (n + 1) ^ 2 + A000005 (A188539 (n + 1) ^ 2).toNat

end

end A188665.P18107647805393418428

/-! ## A188665.P6748813728783544431

`A048691(A188539(n+1))+A188539(n+1)²`
-/

namespace A188665.P6748813728783544431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A188539 (n + 1)).toNat + A188539 (n + 1) ^ 2

end

end A188665.P6748813728783544431

/-! ## A188665.P17129673231638401689

`p?[A048691(n+1)+(n+1)²]`
-/

namespace A188665.P17129673231638401689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188665.P17129673231638401689

/-! ## A188665.P13530207683659857268

`p?[A068074(4*(n+1))+(n+1)²]`
-/

namespace A188665.P13530207683659857268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068074 (4 * (n + 1)) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188665.P13530207683659857268

/-! ## A188665.P895119688139735319

`p?[A081345(n)+A048691(n+1)]`
-/

namespace A188665.P895119688139735319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 n + A048691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188665.P895119688139735319

/-! ## A188665.P16709050883986377127

`p?[A005563(n)+2*A018892(n+1)]`
-/

namespace A188665.P16709050883986377127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + 2 * A018892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188665.P16709050883986377127

/-! ## A188665.P13356157583525511005

`p?[A004396(A146564(n+1))+(n+1)²]`
-/

namespace A188665.P13356157583525511005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A146564 (n + 1)).toNat + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188665.P13356157583525511005

/-! ## A188665.P17641152262938823931

`p?[A004273(A063647(n+1)+1)+(n+1)²]`
-/

namespace A188665.P17641152262938823931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A063647 (n + 1) + 1).toNat + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188665.P17641152262938823931

/-! ## A188665.P6598708878535801976

`p?[A005843(A018892(n+1))+A005563(n)]`
-/

namespace A188665.P6598708878535801976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A018892 (n + 1)).toNat + A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188665.P6598708878535801976

/-!
# A188666: Largest m <= n such that lcm(m, m+1, ..., n) = lcm(1, 2, ..., n).

The programs for A188666, the canonical program `A188666.P9499919298409577918` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188666 has offset 1).

The definition of A188666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188666.P9499919298409577918

`A000015(∑[n%2]+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A188666

/-- `A000015(∑[n%2]+1)` -/
def P9499919298409577918.Spec : Prop :=
  ∀ n, P9499919298409577918.a n = A188666 (n + 1)

theorem P9499919298409577918.correct : P9499919298409577918.Spec := by
  intro n
  simp only [A188666, Nat.add_sub_cancel]

end A188666

/-! ## A188666.P10360721234072387116

`A000015(∑[2-gcd(2, n)]+1)`
-/

namespace A188666.P10360721234072387116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A188666.P10360721234072387116

namespace A188666

/-- `A000015(∑[2-gcd(2, n)]+1)` -/
def P10360721234072387116.Spec : Prop :=
  ∀ n, P10360721234072387116.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P15874045034968243411

`A000015(∑[n]/or(1, n)+1)`
-/

namespace A188666.P15874045034968243411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 1 n : ℚ) + 1)).toNat

end

end A188666.P15874045034968243411

namespace A188666

/-- `A000015(∑[n]/or(1, n)+1)` -/
def P15874045034968243411.Spec : Prop :=
  ∀ n, P15874045034968243411.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P9418809782727187344

`A000015(A080513(n))`
-/

namespace A188666.P9418809782727187344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A080513 n).toNat

end

end A188666.P9418809782727187344

namespace A188666

/-- `A000015(A080513(n))` -/
def P9418809782727187344.Spec : Prop :=
  ∀ n, P9418809782727187344.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P15950293231954321792

`A000015(A008619(n+1))`
-/

namespace A188666.P15950293231954321792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A008619 (n + 1)).toNat

end

end A188666.P15950293231954321792

namespace A188666

/-- `A000015(A008619(n+1))` -/
def P15950293231954321792.Spec : Prop :=
  ∀ n, P15950293231954321792.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P6164191855343722892

`A000015(A110654(n)+1)`
-/

namespace A188666.P6164191855343722892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A110654 n + 1).toNat

end

end A188666.P6164191855343722892

namespace A188666

/-- `A000015(A110654(n)+1)` -/
def P6164191855343722892.Spec : Prop :=
  ∀ n, P6164191855343722892.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P5119264136678146511

`A000015(∑[A000034(n)]-n)`
-/

namespace A188666.P5119264136678146511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A188666.P5119264136678146511

namespace A188666

/-- `A000015(∑[A000034(n)]-n)` -/
def P5119264136678146511.Spec : Prop :=
  ∀ n, P5119264136678146511.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P393829985356083421

`A000015(1-A004526(n)+n)`
-/

namespace A188666.P393829985356083421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (1 - A004526 n + (n : ℤ)).toNat

end

end A188666.P393829985356083421

namespace A188666

/-- `A000015(1-A004526(n)+n)` -/
def P393829985356083421.Spec : Prop :=
  ∀ n, P393829985356083421.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P13016327907344266017

`A000015(1-(A004526(n)-n))`
-/

namespace A188666.P13016327907344266017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (1 - (A004526 n - (n : ℤ))).toNat

end

end A188666.P13016327907344266017

namespace A188666

/-- `A000015(1-(A004526(n)-n))` -/
def P13016327907344266017.Spec : Prop :=
  ∀ n, P13016327907344266017.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P3553042106895409488

`A000015(2-(A008619(n)-n))`
-/

namespace A188666.P3553042106895409488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (2 - (A008619 n - (n : ℤ))).toNat

end

end A188666.P3553042106895409488

namespace A188666

/-- `A000015(2-(A008619(n)-n))` -/
def P3553042106895409488.Spec : Prop :=
  ∀ n, P3553042106895409488.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P13561234917351695040

`A000015(∑[log2(A000034(n))]+1)`
-/

namespace A188666.P13561234917351695040
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000034 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A188666.P13561234917351695040

namespace A188666

/-- `A000015(∑[log2(A000034(n))]+1)` -/
def P13561234917351695040.Spec : Prop :=
  ∀ n, P13561234917351695040.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P11807464572330790978

`A000015(A047209(n+1)-2*n)`
-/

namespace A188666.P11807464572330790978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A047209 (n + 1) - (2 * n : ℤ)).toNat

end

end A188666.P11807464572330790978

namespace A188666

/-- `A000015(A047209(n+1)-2*n)` -/
def P11807464572330790978.Spec : Prop :=
  ∀ n, P11807464572330790978.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P14431500939610936968

`A000015(A047209(n+1)-n-n)`
-/

namespace A188666.P14431500939610936968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A047209 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A188666.P14431500939610936968

namespace A188666

/-- `A000015(A047209(n+1)-n-n)` -/
def P14431500939610936968.Spec : Prop :=
  ∀ n, P14431500939610936968.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P4178513692690860735

`A000015(∑[A008619(n)]/A008619(n))`
-/

namespace A188666.P4178513692690860735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A008619 n : ℚ))).toNat

end

end A188666.P4178513692690860735

namespace A188666

/-- `A000015(∑[A008619(n)]/A008619(n))` -/
def P4178513692690860735.Spec : Prop :=
  ∀ n, P4178513692690860735.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P1978809611133931589

`A000015(n+1-A028242(A109613(n)))`
-/

namespace A188666.P1978809611133931589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 ((n + 1 : ℤ) - A028242 (A109613 n).toNat).toNat

end

end A188666.P1978809611133931589

namespace A188666

/-- `A000015(n+1-A028242(A109613(n)))` -/
def P1978809611133931589.Spec : Prop :=
  ∀ n, P1978809611133931589.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P2640474976209427690

`A000015(1-(A028242(n)-A109613(n)))`
-/

namespace A188666.P2640474976209427690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (1 - (A028242 n - A109613 n)).toNat

end

end A188666.P2640474976209427690

namespace A188666

/-- `A000015(1-(A028242(n)-A109613(n)))` -/
def P2640474976209427690.Spec : Prop :=
  ∀ n, P2640474976209427690.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P2610977874069576542

`A000015(A004526(n+1)+1)`
-/

namespace A188666.P2610977874069576542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A004526 (n + 1) + 1).toNat

end

end A188666.P2610977874069576542

namespace A188666

/-- `A000015(A004526(n+1)+1)` -/
def P2610977874069576542.Spec : Prop :=
  ∀ n, P2610977874069576542.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P1464030652107441490

`A000015(A123108(n+1)+1)`
-/

namespace A188666.P1464030652107441490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A123108 (n + 1) + 1).toNat

end

end A188666.P1464030652107441490

namespace A188666

/-- `A000015(A123108(n+1)+1)` -/
def P1464030652107441490.Spec : Prop :=
  ∀ n, P1464030652107441490.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P15009551062966589571

`A000015(A001057(A109613(n+1)))`
-/

namespace A188666.P15009551062966589571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A001057 (A109613 (n + 1)).toNat).toNat

end

end A188666.P15009551062966589571

namespace A188666

/-- `A000015(A001057(A109613(n+1)))` -/
def P15009551062966589571.Spec : Prop :=
  ∀ n, P15009551062966589571.a n = A188666 (n + 1)

end A188666

/-! ## A188666.P5271728806162657901

`A000015(A027656(n+1)+A027656(n))`
-/

namespace A188666.P5271728806162657901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A027656 (n + 1) + A027656 n).toNat

end

end A188666.P5271728806162657901

namespace A188666

/-- `A000015(A027656(n+1)+A027656(n))` -/
def P5271728806162657901.Spec : Prop :=
  ∀ n, P5271728806162657901.a n = A188666 (n + 1)

end A188666

/-!
# A188667: Ordered (2,2)-selections from the multiset {1,1,2,2,3,3,...,n,n}.

The programs for A188667, the canonical program `A188667.P12992397696884958648` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188667 has offset 0).

The definition of A188667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188667.P12992397696884958648

`n*(n+4)*(n-1)²/4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188667

/-- `n*(n+4)*(n-1)²/4` -/
def P12992397696884958648.Spec : Prop :=
  ∀ n, P12992397696884958648.a n = (A188667 n : ℚ)

end A188667

/-! ## A188667.P2265002992436406229

`∑[n]²-C(2*n, 2)`
-/

namespace A188667.P2265002992436406229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (2 * n) 2 : ℤ)

end

end A188667.P2265002992436406229

namespace A188667

/-- `∑[n]²-C(2*n, 2)` -/
def P2265002992436406229.Spec : Prop :=
  ∀ n, P2265002992436406229.a n = A188667 n

end A188667

/-! ## A188667.P1348517479698720584

`(∑[n+1]-3)*C(n, 2)`
-/

namespace A188667.P1348517479698720584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) * (Nat.choose n 2 : ℤ)

end

end A188667.P1348517479698720584

namespace A188667

/-- `(∑[n+1]-3)*C(n, 2)` -/
def P1348517479698720584.Spec : Prop :=
  ∀ n, P1348517479698720584.a n = A188667 n

end A188667

/-! ## A188667.P1892018523652788897

`3*(∑[∑[∑[a(n-1)+2]]]-n²)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A188667.P1892018523652788897
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ))

end

end A188667.P1892018523652788897

namespace A188667

/-- `3*(∑[∑[∑[a(n-1)+2]]]-n²)` -/
def P1892018523652788897.Spec : Prop :=
  ∀ n, P1892018523652788897.a n = A188667 n

end A188667

/-! ## A188667.P16276479629481847354

`∑[n]²-A000384(n)`
-/

namespace A188667.P16276479629481847354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A000384 n

end

end A188667.P16276479629481847354

namespace A188667

/-- `∑[n]²-A000384(n)` -/
def P16276479629481847354.Spec : Prop :=
  ∀ n, P16276479629481847354.a n = A188667 n

end A188667

/-! ## A188667.P16412463482851060507

`A212134(n)-∑[n]²`
-/

namespace A188667.P16412463482851060507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A188667.P16412463482851060507

namespace A188667

/-- `A212134(n)-∑[n]²` -/
def P16412463482851060507.Spec : Prop :=
  ∀ n, P16412463482851060507.a n = A188667 n

end A188667

/-! ## A188667.P13090547559056878505

`C(n, 2)*∑[A326178(n)]`
-/

namespace A188667.P13090547559056878505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188667.P13090547559056878505

namespace A188667

/-- `C(n, 2)*∑[A326178(n)]` -/
def P13090547559056878505.Spec : Prop :=
  ∀ n, P13090547559056878505.a n = A188667 n

end A188667

/-! ## A188667.P11568472898295390662

`3*(A299120(n)-1+n)`
-/

namespace A188667.P11568472898295390662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A299120 n - 1 + (n : ℤ))

end

end A188667.P11568472898295390662

namespace A188667

/-- `3*(A299120(n)-1+n)` -/
def P11568472898295390662.Spec : Prop :=
  ∀ n, P11568472898295390662.a n = A188667 n

end A188667

/-! ## A188667.P3970149947221758776

`(∑[n+1]-3)*A161680(n)`
-/

namespace A188667.P3970149947221758776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) * A161680 n

end

end A188667.P3970149947221758776

namespace A188667

/-- `(∑[n+1]-3)*A161680(n)` -/
def P3970149947221758776.Spec : Prop :=
  ∀ n, P3970149947221758776.a n = A188667 n

end A188667

/-! ## A188667.P1059019525140419309

`A326247(n)+A008911(n)`
-/

namespace A188667.P1059019525140419309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326247 n + A008911 n

end

end A188667.P1059019525140419309

namespace A188667

/-- `A326247(n)+A008911(n)` -/
def P1059019525140419309.Spec : Prop :=
  ∀ n, P1059019525140419309.a n = A188667 n

end A188667

/-! ## A188667.P12946416246061710274

`A001621(n)-A005476(n)`
-/

namespace A188667.P12946416246061710274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n - A005476 n

end

end A188667.P12946416246061710274

namespace A188667

/-- `A001621(n)-A005476(n)` -/
def P12946416246061710274.Spec : Prop :=
  ∀ n, P12946416246061710274.a n = A188667 n

end A188667

/-! ## A188667.P16349801335139341720

`A061316(n)-A033428(n)`
-/

namespace A188667.P16349801335139341720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061316 n - A033428 n

end

end A188667.P16349801335139341720

namespace A188667

/-- `A061316(n)-A033428(n)` -/
def P16349801335139341720.Spec : Prop :=
  ∀ n, P16349801335139341720.a n = A188667 n

end A188667

/-! ## A188667.P13404576153994621284

`A086601(n)-A056107(n)`
-/

namespace A188667.P13404576153994621284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086601 n - A056107 n

end

end A188667.P13404576153994621284

namespace A188667

/-- `A086601(n)-A056107(n)` -/
def P13404576153994621284.Spec : Prop :=
  ∀ n, P13404576153994621284.a n = A188667 n

end A188667

/-! ## A188667.P4840572780519868976

`A123350(n)-A056106(n)`
-/

namespace A188667.P4840572780519868976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123350 n - A056106 n

end

end A188667.P4840572780519868976

namespace A188667

/-- `A123350(n)-A056106(n)` -/
def P4840572780519868976.Spec : Prop :=
  ∀ n, P4840572780519868976.a n = A188667 n

end A188667

/-! ## A188667.P15554953809788810006

`A154323(n)-A130883(n)`
-/

namespace A188667.P15554953809788810006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n - A130883 n

end

end A188667.P15554953809788810006

namespace A188667

/-- `A154323(n)-A130883(n)` -/
def P15554953809788810006.Spec : Prop :=
  ∀ n, P15554953809788810006.a n = A188667 n

end A188667

/-! ## A188667.P10123147010577916589

`A108678(n)-A188480(n)`
-/

namespace A188667.P10123147010577916589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108678 n - A188480 n

end

end A188667.P10123147010577916589

namespace A188667

/-- `A108678(n)-A188480(n)` -/
def P10123147010577916589.Spec : Prop :=
  ∀ n, P10123147010577916589.a n = A188667 n

end A188667

/-! ## A188667.P9983765298741238717

`A334694(n)-A049451(n)`
-/

namespace A188667.P9983765298741238717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334694 n - A049451 n

end

end A188667.P9983765298741238717

namespace A188667

/-- `A334694(n)-A049451(n)` -/
def P9983765298741238717.Spec : Prop :=
  ∀ n, P9983765298741238717.a n = A188667 n

end A188667

/-! ## A188667.P11150476518822655793

`A212135(n)-A327319(n)`
-/

namespace A188667.P11150476518822655793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n - A327319 n

end

end A188667.P11150476518822655793

namespace A188667

/-- `A212135(n)-A327319(n)` -/
def P11150476518822655793.Spec : Prop :=
  ∀ n, P11150476518822655793.a n = A188667 n

end A188667

/-! ## A188667.P12210025996469005365

`A117717(n+1)-A049450(n)`
-/

namespace A188667.P12210025996469005365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117717 (n + 1) - A049450 n

end

end A188667.P12210025996469005365

namespace A188667

/-- `A117717(n+1)-A049450(n)` -/
def P12210025996469005365.Spec : Prop :=
  ∀ n, P12210025996469005365.a n = A188667 n

end A188667

/-! ## A188667.P2598453029379560381

`A125641(n+1)-A056108(n)`
-/

namespace A188667.P2598453029379560381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125641 (n + 1) - A056108 n

end

end A188667.P2598453029379560381

namespace A188667

/-- `A125641(n+1)-A056108(n)` -/
def P2598453029379560381.Spec : Prop :=
  ∀ n, P2598453029379560381.a n = A188667 n

end A188667

/-!
# A188669: a(n) = ceiling(binomial(2*n-1,n-1)/n).

The programs for A188669, the canonical program `A188669.P12436976176494774429` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188669 has offset 1).

The definition of A188669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(C(2*(n+1)-1, n)/(n+1))` (program `A188669.P12436976176494774429`, by `A188669.P12436976176494774429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188669.P12436976176494774429

`ceil(C(2*(n+1)-1, n)/(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188669

/-- `ceil(C(2*(n+1)-1, n)/(n+1))` -/
def P12436976176494774429.Spec : Prop :=
  ∀ n, P12436976176494774429.a n = A188669 (n + 1)

theorem P12436976176494774429.correct : P12436976176494774429.Spec := by
  intro n
  simp only [A188669, Nat.add_sub_cancel]

end A188669

/-! ## A188669.P10304674415100469588

`ceil((2*n+1)/(n+1)*A000108(n))`
-/

namespace A188669.P10304674415100469588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / (n + 1 : ℚ) * (A000108 n : ℚ)⌉

end

end A188669.P10304674415100469588

namespace A188669

/-- `ceil((2*n+1)/(n+1)*A000108(n))` -/
def P10304674415100469588.Spec : Prop :=
  ∀ n, P10304674415100469588.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P14177614916098854773

`ceil(A001700(n)/(n+1))`
-/

namespace A188669.P14177614916098854773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001700 n : ℚ) / (n + 1 : ℚ)⌉

end

end A188669.P14177614916098854773

namespace A188669

/-- `ceil(A001700(n)/(n+1))` -/
def P14177614916098854773.Spec : Prop :=
  ∀ n, P14177614916098854773.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P1749137312041876112

`floor(A010763(n)/(n+1))+1`
-/

namespace A188669.P1749137312041876112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010763 n : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A188669.P1749137312041876112

namespace A188669

/-- `floor(A010763(n)/(n+1))+1` -/
def P1749137312041876112.Spec : Prop :=
  ∀ n, P1749137312041876112.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P15639063571753804465

`ceil(A088218(n+1)/(n+1))`
-/

namespace A188669.P15639063571753804465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088218 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A188669.P15639063571753804465

namespace A188669

/-- `ceil(A088218(n+1)/(n+1))` -/
def P15639063571753804465.Spec : Prop :=
  ∀ n, P15639063571753804465.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P4991388027038403291

`ceil(A001405(2*n+1)/(n+1))`
-/

namespace A188669.P4991388027038403291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001405 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A188669.P4991388027038403291

namespace A188669

/-- `ceil(A001405(2*n+1)/(n+1))` -/
def P4991388027038403291.Spec : Prop :=
  ∀ n, P4991388027038403291.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P4937722730856867884

`ceil(A002661(2*n+1)/(n+1))`
-/

namespace A188669.P4937722730856867884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002661 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A188669.P4937722730856867884

namespace A188669

/-- `ceil(A002661(2*n+1)/(n+1))` -/
def P4937722730856867884.Spec : Prop :=
  ∀ n, P4937722730856867884.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P15269926469384107884

`ceil(A037952(2*n+1)/(n+1))`
-/

namespace A188669.P15269926469384107884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037952 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A188669.P15269926469384107884

namespace A188669

/-- `ceil(A037952(2*n+1)/(n+1))` -/
def P15269926469384107884.Spec : Prop :=
  ∀ n, P15269926469384107884.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P11571129712205400421

`ceil(A057977(2*n+1)/(n+1))`
-/

namespace A188669.P11571129712205400421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057977 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A188669.P11571129712205400421

namespace A188669

/-- `ceil(A057977(2*n+1)/(n+1))` -/
def P11571129712205400421.Spec : Prop :=
  ∀ n, P11571129712205400421.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P13650271427423111275

`ceil(A138364(2*n+1)/(n+1))`
-/

namespace A188669.P13650271427423111275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138364 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A188669.P13650271427423111275

namespace A188669

/-- `ceil(A138364(2*n+1)/(n+1))` -/
def P13650271427423111275.Spec : Prop :=
  ∀ n, P13650271427423111275.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P3347424838587808251

`record[ceil(A057977(n)/A008619(n))]`
-/

namespace A188669.P3347424838587808251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057977 n : ℚ) / (A008619 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188669.P3347424838587808251

namespace A188669

/-- `record[ceil(A057977(n)/A008619(n))]` -/
def P3347424838587808251.Spec : Prop :=
  ∀ n, P3347424838587808251.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P1659434128848707674

`ceil(A030662(n+1)/A103517(n))`
-/

namespace A188669.P1659434128848707674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030662 (n + 1) : ℚ) / (A103517 n : ℚ)⌉

end

end A188669.P1659434128848707674

namespace A188669

/-- `ceil(A030662(n+1)/A103517(n))` -/
def P1659434128848707674.Spec : Prop :=
  ∀ n, P1659434128848707674.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P910346596798191290

`ceil(A028329(n+1)/(4*(n+1)))`
-/

namespace A188669.P910346596798191290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028329 (n + 1) : ℚ) / (4 * (n + 1) : ℚ)⌉

end

end A188669.P910346596798191290

namespace A188669

/-- `ceil(A028329(n+1)/(4*(n+1)))` -/
def P910346596798191290.Spec : Prop :=
  ∀ n, P910346596798191290.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P13272792467636462124

`ceil(A212303(2*n+1)/(n+1))`
-/

namespace A188669.P13272792467636462124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212303 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A188669.P13272792467636462124

namespace A188669

/-- `ceil(A212303(2*n+1)/(n+1))` -/
def P13272792467636462124.Spec : Prop :=
  ∀ n, P13272792467636462124.a n = A188669 (n + 1)

end A188669

/-! ## A188669.P16298217971016288441

`floor((C(2*n+1, n)+n)/(n+1))`
-/

namespace A188669.P16298217971016288441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) n + n : ℚ) / (n + 1 : ℚ)⌋

end

end A188669.P16298217971016288441

namespace A188669

/-- `floor((C(2*n+1, n)+n)/(n+1))` -/
def P16298217971016288441.Spec : Prop :=
  ∀ n, P16298217971016288441.a n = A188669 (n + 1)

end A188669

/-!
# A188670: A quasi-periodic solution to Hofstadter's Q recurrence.

The programs for A188670, the canonical program `A188670.P16055277327920264646` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188670 has offset 0).

The definition of A188670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188670.P16055277327920264646

`2*a(n-3)-a(n-9)` with `a(0)=3, a(1)=6, a(2)=5, a(3)=3, a(4)=6, a(5)=8, a(6)=3, a(7)=6, a(8)=13`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188670

/-- `2*a(n-3)-a(n-9)` -/
def P16055277327920264646.Spec : Prop :=
  ∀ n, P16055277327920264646.a n = A188670 n

theorem P16055277327920264646.correct : P16055277327920264646.Spec := by
  intro n
  simp only [A188670]

end A188670

/-!
# A188671: A000145(n) / 8 - (n^5 + 1).

The programs for A188671, there is no canonical definition to state claims against.
-/

/-! ## A188671.P305498167691881197

`A000145(n+1)/8-((n+1)^5+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A188671.P305498167691881197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000145 (n + 1) : ℚ) / 8 - ((n + 1) ^ 5 + 1 : ℚ)

end

end A188671.P305498167691881197

/-!
# A188672: a(n) is the least r > 1 for which the interval (r*n, r*(n+1)) contains no prime powers (p^k, k >= 1), or a(n) = 0 if no such r exists.

The programs for A188672, there is no canonical definition to state claims against.
-/

/-! ## A188672.P12244950846108057948

`A228518(n+1)%A228489(A024675(n+1))`
-/

namespace A188672.P12244950846108057948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228518 (n + 1)) (A228489 (A024675 (n + 1)).toNat)

end

end A188672.P12244950846108057948

/-! ## A188672.P18151553811752479170

`A228518(n+1)%A000005(A018186(n))`
-/

namespace A188672.P18151553811752479170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228518 (n + 1)) (A000005 (A018186 n).toNat)

end

end A188672.P18151553811752479170

/-! ## A188672.P1283650916932865076

`and(A228446(A228434(n+1)), A228518(n+1))`
-/

namespace A188672.P1283650916932865076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A228446 (A228434 (n + 1)).toNat) (A228518 (n + 1))

end

end A188672.P1283650916932865076

/-! ## A188672.P2722280286212576894

`and(A228518(n+1), A228527(A228527(n+4)))`
-/

namespace A188672.P2722280286212576894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A228518 (n + 1)) (A228527 (A228527 (n + 4)).toNat)

end

end A188672.P2722280286212576894

/-! ## A188672.P12147404250750713975

`and(A228518(n+1), A228529(A228541(3*n+1)))`
-/

namespace A188672.P12147404250750713975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A228518 (n + 1)) (A228529 (A228541 (3 * n + 1)).toNat)

end

end A188672.P12147404250750713975

/-!
# A188673: a(n) = smallest semiprime such that prime(n) = a(n) - p, p prime.

The programs for A188673, there is no canonical definition to state claims against.
-/

/-! ## A188673.P17757549570480499254

`xor(A000122(A175243(n+1)), A175217(n+1))`
-/

namespace A188673.P17757549570480499254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000122 (A175243 (n + 1)).toNat) (A175217 (n + 1))

end

end A188673.P17757549570480499254

/-!
# A188674: Stack polyominoes with square core.

The programs for A188674, there is no canonical definition to state claims against.
-/

/-! ## A188674.P15120777051675561092

`abs(A352833(2*n+1)-A118199(n))`
-/

namespace A188674.P15120777051675561092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352833 (2 * n + 1) - A118199 n|

end

end A188674.P15120777051675561092

/-! ## A188674.P5123836955933871089

`A325165(A054977(n)+A000217(n))`
-/

namespace A188674.P5123836955933871089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325165 (A054977 n + A000217 n).toNat

end

end A188674.P5123836955933871089

/-! ## A188674.P395200907263253418

`A325165(A057427(n)+A000217(n))`
-/

namespace A188674.P395200907263253418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325165 (A057427 n + A000217 n).toNat

end

end A188674.P395200907263253418

/-! ## A188674.P10305451785943717988

`A325165(A178489(n)+A000217(n))`
-/

namespace A188674.P10305451785943717988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325165 (A178489 n + A000217 n).toNat

end

end A188674.P10305451785943717988

/-! ## A188674.P1131073871942783154

`A325165(A000217(n)-A057428(n))`
-/

namespace A188674.P1131073871942783154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325165 (A000217 n - A057428 n).toNat

end

end A188674.P1131073871942783154

/-! ## A188674.P2130846391472263634

`A325165(A000124(n)%A257624(n))`
-/

namespace A188674.P2130846391472263634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325165 (Int.tmod (A000124 n) (A257624 n)).toNat

end

end A188674.P2130846391472263634

/-! ## A188674.P9939824409311752400

`A325165(A000217(n)+A057428(n)²)`
-/

namespace A188674.P9939824409311752400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325165 (A000217 n + A057428 n ^ 2).toNat

end

end A188674.P9939824409311752400

/-! ## A188674.P17293946575780066561

`A325165(eq[A004736(n+1), A081422(n)])`
-/

namespace A188674.P17293946575780066561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325165 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A188674.P17293946575780066561

/-! ## A188674.P15374568010366211125

`A325165(A000124(n))+A325165(A000217(n))`
-/

namespace A188674.P15374568010366211125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325165 (A000124 n).toNat + A325165 (A000217 n).toNat

end

end A188674.P15374568010366211125

/-!
# A188675: Partial sums of the binomial coefficients binomial(3*n,n) (A005809).

The programs for A188675, the canonical program `A188675.P10290898774784924777` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188675 has offset 0).

The definition of A188675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188675.P10290898774784924777

`∑[A005809(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188675

/-- `∑[A005809(n)]` -/
def P10290898774784924777.Spec : Prop :=
  ∀ n, P10290898774784924777.a n = A188675 n

theorem P10290898774784924777.correct : P10290898774784924777.Spec := by
  intro n
  simp only [A188675]

end A188675

/-! ## A188675.P2563738676420722087

`∑[A119301(∑[n])]`
-/

namespace A188675.P2563738676420722087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P2563738676420722087

namespace A188675

/-- `∑[A119301(∑[n])]` -/
def P2563738676420722087.Spec : Prop :=
  ∀ n, P2563738676420722087.a n = A188675 n

end A188675

/-! ## A188675.P15950153467646073379

`∑[A264772(∑[n])]`
-/

namespace A188675.P15950153467646073379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P15950153467646073379

namespace A188675

/-- `∑[A264772(∑[n])]` -/
def P15950153467646073379.Spec : Prop :=
  ∀ n, P15950153467646073379.a n = A188675 n

end A188675

/-! ## A188675.P2243837354116023497

`∑[A065942(2*n)]`
-/

namespace A188675.P2243837354116023497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P2243837354116023497

namespace A188675

/-- `∑[A065942(2*n)]` -/
def P2243837354116023497.Spec : Prop :=
  ∀ n, P2243837354116023497.a n = A188675 n

end A188675

/-! ## A188675.P1556777160330219412

`∑[A081204(2*n)]`
-/

namespace A188675.P1556777160330219412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P1556777160330219412

namespace A188675

/-- `∑[A081204(2*n)]` -/
def P1556777160330219412.Spec : Prop :=
  ∀ n, P1556777160330219412.a n = A188675 n

end A188675

/-! ## A188675.P9329262495625339831

`∑[A051033(3*n)]`
-/

namespace A188675.P9329262495625339831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P9329262495625339831

namespace A188675

/-- `∑[A051033(3*n)]` -/
def P9329262495625339831.Spec : Prop :=
  ∀ n, P9329262495625339831.a n = A188675 n

end A188675

/-! ## A188675.P7574891778755320846

`∑[A303259(Δ[n²])]`
-/

namespace A188675.P7574891778755320846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P7574891778755320846

namespace A188675

/-- `∑[A303259(Δ[n²])]` -/
def P7574891778755320846.Spec : Prop :=
  ∀ n, P7574891778755320846.a n = A188675 n

end A188675

/-! ## A188675.P16630691926081327351

`3*A024719(n)-2`
-/

namespace A188675.P16630691926081327351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024719 n - 2

end

end A188675.P16630691926081327351

namespace A188675

/-- `3*A024719(n)-2` -/
def P16630691926081327351.Spec : Prop :=
  ∀ n, P16630691926081327351.a n = A188675 n

end A188675

/-! ## A188675.P653613513271519002

`∑[Δ[n²]*A001764(n)]`
-/

namespace A188675.P653613513271519002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A001764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P653613513271519002

namespace A188675

/-- `∑[Δ[n²]*A001764(n)]` -/
def P653613513271519002.Spec : Prop :=
  ∀ n, P653613513271519002.a n = A188675 n

end A188675

/-! ## A188675.P268230426103763092

`A065942(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A188675.P268230426103763092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065942 (n + n) + a (n - 1)

end

end A188675.P268230426103763092

namespace A188675

/-- `A065942(n+n)+a(n-1)` -/
def P268230426103763092.Spec : Prop :=
  ∀ n, P268230426103763092.a n = A188675 n

end A188675

/-! ## A188675.P15812630709844654306

`∑[(2*n+1)*A047749(2*n)]`
-/

namespace A188675.P15812630709844654306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A047749 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P15812630709844654306

namespace A188675

/-- `∑[(2*n+1)*A047749(2*n)]` -/
def P15812630709844654306.Spec : Prop :=
  ∀ n, P15812630709844654306.a n = A188675 n

end A188675

/-! ## A188675.P10015201247356904927

`∑[record[A303259(A141310(n))]]`
-/

namespace A188675.P10015201247356904927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 (A141310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P10015201247356904927

namespace A188675

/-- `∑[record[A303259(A141310(n))]]` -/
def P10015201247356904927.Spec : Prop :=
  ∀ n, P10015201247356904927.a n = A188675 n

end A188675

/-! ## A188675.P5623561681625833170

`∑[A165817(n)+A025174(n)]`
-/

namespace A188675.P5623561681625833170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n + A025174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P5623561681625833170

namespace A188675

/-- `∑[A165817(n)+A025174(n)]` -/
def P5623561681625833170.Spec : Prop :=
  ∀ n, P5623561681625833170.a n = A188675 n

end A188675

/-! ## A188675.P8233463446220806675

`∑[A001764(n)*A005408(n)]`
-/

namespace A188675.P8233463446220806675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P8233463446220806675

namespace A188675

/-- `∑[A001764(n)*A005408(n)]` -/
def P8233463446220806675.Spec : Prop :=
  ∀ n, P8233463446220806675.a n = A188675 n

end A188675

/-! ## A188675.P2743914274532556269

`∑[A001764(n)*A028310(2*n+1)]`
-/

namespace A188675.P2743914274532556269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A028310 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P2743914274532556269

namespace A188675

/-- `∑[A001764(n)*A028310(2*n+1)]` -/
def P2743914274532556269.Spec : Prop :=
  ∀ n, P2743914274532556269.a n = A188675 n

end A188675

/-! ## A188675.P3923733580627151510

`∑[record[A344503(n)]]`
-/

namespace A188675.P3923733580627151510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344503 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P3923733580627151510

namespace A188675

/-- `∑[record[A344503(n)]]` -/
def P3923733580627151510.Spec : Prop :=
  ∀ n, P3923733580627151510.a n = A188675 n

end A188675

/-! ## A188675.P1973006932110731045

`∑[A344503(3*n)]`
-/

namespace A188675.P1973006932110731045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344503 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P1973006932110731045

namespace A188675

/-- `∑[A344503(3*n)]` -/
def P1973006932110731045.Spec : Prop :=
  ∀ n, P1973006932110731045.a n = A188675 n

end A188675

/-! ## A188675.P16771174107067480849

`∑[A269956(∑[n])]`
-/

namespace A188675.P16771174107067480849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269956 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P16771174107067480849

namespace A188675

/-- `∑[A269956(∑[n])]` -/
def P16771174107067480849.Spec : Prop :=
  ∀ n, P16771174107067480849.a n = A188675 n

end A188675

/-! ## A188675.P9946510766480597902

`∑[C(3*n, n)]`
-/

namespace A188675.P9946510766480597902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188675.P9946510766480597902

namespace A188675

/-- `∑[C(3*n, n)]` -/
def P9946510766480597902.Spec : Prop :=
  ∀ n, (P9946510766480597902.a n : ℤ) = A188675 n

end A188675

/-!
# A188676: Alternate partial sums of the binomial coefficients binomial(3*n,n).

The programs for A188676, the canonical program `A188676.P16157097669964216342` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188676 has offset 0).

The definition of A188676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188676.P16157097669964216342

`A005809(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188676

/-- `A005809(n)-a(n-1)` -/
def P16157097669964216342.Spec : Prop :=
  ∀ n, P16157097669964216342.a n = A188676 n

theorem P16157097669964216342.correct : P16157097669964216342.Spec := by
  intro n
  simp only [A188676]

end A188676

/-! ## A188676.P8274604525029378081

`A264772(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A188676.P8274604525029378081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A264772 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A188676.P8274604525029378081

namespace A188676

/-- `A264772(∑[n])-a(n-1)` -/
def P8274604525029378081.Spec : Prop :=
  ∀ n, P8274604525029378081.a n = A188676 n

end A188676

/-! ## A188676.P17227045087040309115

`A065942(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A188676.P17227045087040309115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065942 (2 * n) - a (n - 1)

end

end A188676.P17227045087040309115

namespace A188676

/-- `A065942(2*n)-a(n-1)` -/
def P17227045087040309115.Spec : Prop :=
  ∀ n, P17227045087040309115.a n = A188676 n

end A188676

/-! ## A188676.P7133090836009498651

`A081204(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A188676.P7133090836009498651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081204 (2 * n) - a (n - 1)

end

end A188676.P7133090836009498651

namespace A188676

/-- `A081204(2*n)-a(n-1)` -/
def P7133090836009498651.Spec : Prop :=
  ∀ n, P7133090836009498651.a n = A188676 n

end A188676

/-! ## A188676.P7177716626022190744

`A051033(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A188676.P7177716626022190744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051033 (3 * n) - a (n - 1)

end

end A188676.P7177716626022190744

namespace A188676

/-- `A051033(3*n)-a(n-1)` -/
def P7177716626022190744.Spec : Prop :=
  ∀ n, P7177716626022190744.a n = A188676 n

end A188676

/-! ## A188676.P3122524504773882539

`A303259(Δ[n²])-a(n-1)` with `a(0)=1`
-/

namespace A188676.P3122524504773882539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - a (n - 1)

end

end A188676.P3122524504773882539

namespace A188676

/-- `A303259(Δ[n²])-a(n-1)` -/
def P3122524504773882539.Spec : Prop :=
  ∀ n, P3122524504773882539.a n = A188676 n

end A188676

/-! ## A188676.P8792261205050375319

`Δ[n²]*A001764(n)-a(n-1)` with `a(0)=1`
-/

namespace A188676.P8792261205050375319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001764 n - a (n - 1)

end

end A188676.P8792261205050375319

namespace A188676

/-- `Δ[n²]*A001764(n)-a(n-1)` -/
def P8792261205050375319.Spec : Prop :=
  ∀ n, P8792261205050375319.a n = A188676 n

end A188676

/-! ## A188676.P789691311336980624

`abs(∑[A005809(n)*A056594(2*n)])`
-/

namespace A188676.P789691311336980624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A188676.P789691311336980624

namespace A188676

/-- `abs(∑[A005809(n)*A056594(2*n)])` -/
def P789691311336980624.Spec : Prop :=
  ∀ n, P789691311336980624.a n = A188676 n

end A188676

/-! ## A188676.P17455941352029934192

`A269956(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A188676.P17455941352029934192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269956 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A188676.P17455941352029934192

namespace A188676

/-- `A269956(∑[n])-a(n-1)` -/
def P17455941352029934192.Spec : Prop :=
  ∀ n, P17455941352029934192.a n = A188676 n

end A188676

/-! ## A188676.P14763533776086903463

`C(3*n, n)-a(n-1)` with `a(0)=1`
-/

namespace A188676.P14763533776086903463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (3 * n) n : ℤ) - a (n - 1)

end

end A188676.P14763533776086903463

namespace A188676

/-- `C(3*n, n)-a(n-1)` -/
def P14763533776086903463.Spec : Prop :=
  ∀ n, P14763533776086903463.a n = A188676 n

end A188676

/-!
# A188677: Primes p such that the minimum value of |p-2^x|, x>0, is also a prime.

The programs for A188677, there is no canonical definition to state claims against.
-/

/-! ## A188677.P12009750926576477730

`∩[A158758(n+1), A279956(n+1)]`
-/

namespace A188677.P12009750926576477730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188677.P12009750926576477730

/-! ## A188677.P7001035062760560965

`A139637(A296936(n+2))`
-/

namespace A188677.P7001035062760560965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139637 (A296936 (n + 2)).toNat

end

end A188677.P7001035062760560965

/-! ## A188677.P11284605585044339918

`p?[A317587(A230227(n+1))]`
-/

namespace A188677.P11284605585044339918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317587 (A230227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188677.P11284605585044339918

/-! ## A188677.P17318620624859301638

`filter[A330696(n+1), A385395(#)]`
-/

namespace A188677.P17318620624859301638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A188677.P17318620624859301638

/-! ## A188677.P5383186887767542400

`filter[A207039(n+2), A385395(#)]`
-/

namespace A188677.P5383186887767542400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A188677.P5383186887767542400

/-!
# A188678: Alternate partial sums of binomial(3*n,n)/(2*n+1).

The programs for A188678, the canonical program `A188678.P4832632837348918629` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188678 has offset 0).

The definition of A188678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188678.P4832632837348918629

`abs(1-∑[A179848(n)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188678

/-- `abs(1-∑[A179848(n)])` -/
def P4832632837348918629.Spec : Prop :=
  ∀ n, P4832632837348918629.a n = A188678 n

theorem P4832632837348918629.correct : P4832632837348918629.Spec := by
  intro n
  simp only [A188678]

end A188678

/-! ## A188678.P1885487195131820314

`A001764(n)-a(n-1)` with `a(0)=1`
-/

namespace A188678.P1885487195131820314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001764 n - a (n - 1)

end

end A188678.P1885487195131820314

namespace A188678

/-- `A001764(n)-a(n-1)` -/
def P1885487195131820314.Spec : Prop :=
  ∀ n, P1885487195131820314.a n = A188678 n

end A188678

/-! ## A188678.P17432201245148393666

`A047749(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A188678.P17432201245148393666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047749 (2 * n) - a (n - 1)

end

end A188678.P17432201245148393666

namespace A188678

/-- `A047749(2*n)-a(n-1)` -/
def P17432201245148393666.Spec : Prop :=
  ∀ n, P17432201245148393666.a n = A188678 n

end A188678

/-! ## A188678.P6961271422194639797

`∑{d}[n+1, A251662(#)]-a(n-1)` with `a(0)=1`
-/

namespace A188678.P6961271422194639797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), A251662 d - a (n - 1)

end

end A188678.P6961271422194639797

namespace A188678

/-- `∑{d}[n+1, A251662(#)]-a(n-1)` -/
def P6961271422194639797.Spec : Prop :=
  ∀ n, P6961271422194639797.a n = A188678 n

end A188678

/-! ## A188678.P9179149886346078769

`A047761(abs(1-2*n))-a(n-1)` with `a(0)=1`
-/

namespace A188678.P9179149886346078769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047761 |1 - (2 * n : ℤ)|.toNat - a (n - 1)

end

end A188678.P9179149886346078769

namespace A188678

/-- `A047761(abs(1-2*n))-a(n-1)` -/
def P9179149886346078769.Spec : Prop :=
  ∀ n, P9179149886346078769.a n = A188678 n

end A188678

/-! ## A188678.P8262976987214868917

`(n+1)/2*A000139(n)-a(n-1)` with `a(0)=1`
-/

namespace A188678.P8262976987214868917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / 2 * (A000139 n : ℚ) - a (n - 1)

end

end A188678.P8262976987214868917

namespace A188678

/-- `(n+1)/2*A000139(n)-a(n-1)` -/
def P8262976987214868917.Spec : Prop :=
  ∀ n, P8262976987214868917.a n = (A188678 n : ℚ)

end A188678

/-! ## A188678.P2645264605886232195

`abs(∑[A109956(∑[n])])`
-/

namespace A188678.P2645264605886232195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109956 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A188678.P2645264605886232195

namespace A188678

/-- `abs(∑[A109956(∑[n])])` -/
def P2645264605886232195.Spec : Prop :=
  ∀ n, P2645264605886232195.a n = A188678 n

end A188678

/-! ## A188678.P7244901698949732769

`A007226(n)-A006013(n)-a(n-1)` with `a(0)=1`
-/

namespace A188678.P7244901698949732769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007226 n - A006013 n - a (n - 1)

end

end A188678.P7244901698949732769

namespace A188678

/-- `A007226(n)-A006013(n)-a(n-1)` -/
def P7244901698949732769.Spec : Prop :=
  ∀ n, P7244901698949732769.a n = A188678 n

end A188678

/-! ## A188678.P1361297016419603230

`A094021(∑[n]+1)-a(n-1)` with `a(0)=1`
-/

namespace A188678.P1361297016419603230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094021 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - a (n - 1)

end

end A188678.P1361297016419603230

namespace A188678

/-- `A094021(∑[n]+1)-a(n-1)` -/
def P1361297016419603230.Spec : Prop :=
  ∀ n, P1361297016419603230.a n = A188678 n

end A188678

/-! ## A188678.P2865560062464351676

`A108426(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A188678.P2865560062464351676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108426 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A188678.P2865560062464351676

namespace A188678

/-- `A108426(∑[n])-a(n-1)` -/
def P2865560062464351676.Spec : Prop :=
  ∀ n, P2865560062464351676.a n = A188678 n

end A188678

/-!
# A188679: Partial sums of binomial(3n,n)^2.

The programs for A188679, there is no canonical definition to state claims against.
-/

/-! ## A188679.P5842853858345493606

`∑[C(3*n, n)²]`
-/

namespace A188679.P5842853858345493606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188679.P5842853858345493606

/-! ## A188679.P5937840576657956080

`∑[C(3*n, n)^2]`
-/

namespace A188679.P5937840576657956080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188679.P5937840576657956080

/-! ## A188679.P4939073932161509817

`a(n-1)+C(3*n, n)²` with `a(0)=1`
-/

namespace A188679.P4939073932161509817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (3 * n) n ^ 2

end

end A188679.P4939073932161509817

/-! ## A188679.P10898920116327573930

`∑[C(3*n, n)*C(3*n, n)]`
-/

namespace A188679.P10898920116327573930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n * Nat.choose (3 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188679.P10898920116327573930

/-! ## A188679.P1609155315547988688

`∑[A188662(n)]`
-/

namespace A188679.P1609155315547988688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188679.P1609155315547988688

/-! ## A188679.P16044423328544150138

`∑[A005809(n)²]`
-/

namespace A188679.P16044423328544150138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188679.P16044423328544150138

/-! ## A188679.P14358249773738898692

`∑[A171001(4*n)]`
-/

namespace A188679.P14358249773738898692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171001 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188679.P14358249773738898692

/-! ## A188679.P494909627242936381

`∑[A119301(∑[n])²]`
-/

namespace A188679.P494909627242936381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188679.P494909627242936381

/-! ## A188679.P5237298358050136424

`∑[A264772(∑[n])²]`
-/

namespace A188679.P5237298358050136424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188679.P5237298358050136424

/-! ## A188679.P6816123066052669433

`∑[A269956(∑[n])²]`
-/

namespace A188679.P6816123066052669433
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269956 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188679.P6816123066052669433

/-!
# A188680: Alternate partial sums of binomial(3n,n)^2.

The programs for A188680, there is no canonical definition to state claims against.
-/

/-! ## A188680.P3055465661476329164

`C(3*n, n)²-a(n-1)` with `a(0)=1`
-/

namespace A188680.P3055465661476329164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (3 * n) n ^ 2 : ℤ) - a (n - 1)

end

end A188680.P3055465661476329164

/-! ## A188680.P17340534308550437758

`A188662(n)-a(n-1)` with `a(0)=1`
-/

namespace A188680.P17340534308550437758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188662 n - a (n - 1)

end

end A188680.P17340534308550437758

/-! ## A188680.P17726534359318092632

`A005809(n)²-a(n-1)` with `a(0)=1`
-/

namespace A188680.P17726534359318092632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005809 n ^ 2 - a (n - 1)

end

end A188680.P17726534359318092632

/-! ## A188680.P15686368739298714586

`abs(a(n-1)-A065942(2*n)²)` with `a(0)=1`
-/

namespace A188680.P15686368739298714586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A065942 (2 * n) ^ 2|

end

end A188680.P15686368739298714586

/-! ## A188680.P3207561340634834485

`abs(a(n-1)-A081204(2*n)²)` with `a(0)=1`
-/

namespace A188680.P3207561340634834485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A081204 (2 * n) ^ 2|

end

end A188680.P3207561340634834485

/-!
# A188681: a(n) = binomial(3*n,n)^2/(2*n+1).

The programs for A188681, the canonical program `A188681.P12853465770159147176` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188681 has offset 0).

The definition of A188681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188681.P12853465770159147176

`C(3*n, n)²/(2*n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188681

/-- `C(3*n, n)²/(2*n+1)` -/
def P12853465770159147176.Spec : Prop :=
  ∀ n, P12853465770159147176.a n = (A188681 n : ℚ)

end A188681

/-! ## A188681.P6588263121141111450

`(C(3*n, n)/comp[2*n])²*Δ[n²]`
-/

namespace A188681.P6588263121141111450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (3 * n) n : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ)) ^ 2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A188681.P6588263121141111450

namespace A188681

/-- `(C(3*n, n)/comp[2*n])²*Δ[n²]` -/
def P6588263121141111450.Spec : Prop :=
  ∀ n, P6588263121141111450.a n = (A188681 n : ℚ)

end A188681

/-! ## A188681.P2324961129664406851

`C(3*n, n)/comp[2*n]*C(3*n, n)`
-/

namespace A188681.P2324961129664406851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) * (Nat.choose (3 * n) n : ℚ)

end

end A188681.P2324961129664406851

namespace A188681

/-- `C(3*n, n)/comp[2*n]*C(3*n, n)` -/
def P2324961129664406851.Spec : Prop :=
  ∀ n, P2324961129664406851.a n = (A188681 n : ℚ)

end A188681

/-! ## A188681.P12535399437066966896

`A001764(n)²*Δ[n²]`
-/

namespace A188681.P12535399437066966896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n ^ 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A188681.P12535399437066966896

namespace A188681

/-- `A001764(n)²*Δ[n²]` -/
def P12535399437066966896.Spec : Prop :=
  ∀ n, P12535399437066966896.a n = A188681 n

end A188681

/-! ## A188681.P4560421541895219122

`C(3*n, n)*A047749(2*n)`
-/

namespace A188681.P4560421541895219122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * A047749 (2 * n)

end

end A188681.P4560421541895219122

namespace A188681

/-- `C(3*n, n)*A047749(2*n)` -/
def P4560421541895219122.Spec : Prop :=
  ∀ n, P4560421541895219122.a n = A188681 n

end A188681

/-! ## A188681.P15314698231488067255

`C(3*n, n)*A001764(n-char[1])`
-/

namespace A188681.P15314698231488067255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * A001764 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A188681.P15314698231488067255

namespace A188681

/-- `C(3*n, n)*A001764(n-char[1])` -/
def P15314698231488067255.Spec : Prop :=
  ∀ n, P15314698231488067255.a n = A188681 n

end A188681

/-! ## A188681.P16242374641096617093

`C(3*n, n)/(2*n+1)*A005809(n)`
-/

namespace A188681.P16242374641096617093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) * (A005809 n : ℚ)

end

end A188681.P16242374641096617093

namespace A188681

/-- `C(3*n, n)/(2*n+1)*A005809(n)` -/
def P16242374641096617093.Spec : Prop :=
  ∀ n, P16242374641096617093.a n = (A188681 n : ℚ)

end A188681

/-! ## A188681.P9211984127905304569

`A001764(n)*A005809(n)`
-/

namespace A188681.P9211984127905304569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A005809 n

end

end A188681.P9211984127905304569

namespace A188681

/-- `A001764(n)*A005809(n)` -/
def P9211984127905304569.Spec : Prop :=
  ∀ n, P9211984127905304569.a n = A188681 n

end A188681

/-! ## A188681.P5574635354509139358

`A001764(n)*A264772(∑[n])`
-/

namespace A188681.P5574635354509139358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A264772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188681.P5574635354509139358

namespace A188681

/-- `A001764(n)*A264772(∑[n])` -/
def P5574635354509139358.Spec : Prop :=
  ∀ n, P5574635354509139358.a n = A188681 n

end A188681

/-! ## A188681.P7187223718872255731

`A005809(n)*A047749(2*n)`
-/

namespace A188681.P7187223718872255731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A047749 (2 * n)

end

end A188681.P7187223718872255731

namespace A188681

/-- `A005809(n)*A047749(2*n)` -/
def P7187223718872255731.Spec : Prop :=
  ∀ n, P7187223718872255731.a n = A188681 n

end A188681

/-!
# A188682: Partial sums of binomials bin(3n,n)^2/(2n+1).

The programs for A188682, there is no canonical definition to state claims against.
-/

/-! ## A188682.P10142878882304409909

`∑[C(3*n, n)/comp[2*n]*C(3*n, n)]`
-/

namespace A188682.P10142878882304409909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ) * (Nat.choose (3 * n) n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188682.P10142878882304409909

/-! ## A188682.P9874066442363606027

`∑[A188681(n)]`
-/

namespace A188682.P9874066442363606027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188682.P9874066442363606027

/-! ## A188682.P13459691615812211870

`∑[C(3*n, n)*A001764(n)]`
-/

namespace A188682.P13459691615812211870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * A001764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188682.P13459691615812211870

/-! ## A188682.P8221237592557136656

`∑[C(3*n, n)/(2*n+1)*A005809(n)]`
-/

namespace A188682.P8221237592557136656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) * (A005809 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188682.P8221237592557136656

/-! ## A188682.P8313102634926659606

`∑[A001764(n)*A005809(n)]`
-/

namespace A188682.P8313102634926659606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A005809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188682.P8313102634926659606

/-! ## A188682.P5783288374117434691

`∑[A001764(n)²*A005408(n)]`
-/

namespace A188682.P5783288374117434691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n ^ 2 * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188682.P5783288374117434691

/-! ## A188682.P12397312439034860353

`∑[A001764(n)*A264772(∑[n])]`
-/

namespace A188682.P12397312439034860353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A264772 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188682.P12397312439034860353

/-! ## A188682.P1838183726986665156

`∑[A005809(n)*A047749(2*n)]`
-/

namespace A188682.P1838183726986665156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A047749 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188682.P1838183726986665156

/-! ## A188682.P7200811189167614567

`∑[A001764(n)*A065942(2*n)]`
-/

namespace A188682.P7200811189167614567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A065942 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188682.P7200811189167614567

/-!
# A188683: Alternate partial sums of binomial(3n,n)^2/(2n+1).

The programs for A188683, there is no canonical definition to state claims against.
-/

/-! ## A188683.P18348731921506863901

`A188681(n)-a(n-1)` with `a(0)=1`
-/

namespace A188683.P18348731921506863901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188681 n - a (n - 1)

end

end A188683.P18348731921506863901

/-! ## A188683.P4920784349172397171

`A001764(n)*A005809(n)-a(n-1)` with `a(0)=1`
-/

namespace A188683.P4920784349172397171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001764 n * A005809 n - a (n - 1)

end

end A188683.P4920784349172397171

/-! ## A188683.P14911114563255065105

`A001764(n)*A264772(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A188683.P14911114563255065105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001764 n * A264772 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A188683.P14911114563255065105

/-! ## A188683.P18078785345232686256

`A005809(n)*A127898(C(n, 2))-a(n-1)` with `a(0)=1`
-/

namespace A188683.P18078785345232686256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005809 n * A127898 (Nat.choose n 2) - a (n - 1)

end

end A188683.P18078785345232686256

/-! ## A188683.P6627532477879435995

`∑{d}[n+1, A251662(#)]*A005809(n)-a(n-1)` with `a(0)=1`
-/

namespace A188683.P6627532477879435995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (∑ d ∈ Nat.divisors (f1 n), A251662 d) * A005809 n - a (n - 1)

end

end A188683.P6627532477879435995

/-!
# A188684: Partial sums of binomials binomial(3n,n)^2/(2n+1)^2.

The programs for A188684, there is no canonical definition to state claims against.
-/

/-! ## A188684.P3269404603643162305

`∑[(C(3*n, n)/Δ[n²])²]`
-/

namespace A188684.P3269404603643162305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (3 * n) n : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188684.P3269404603643162305

/-! ## A188684.P12591397095031755444

`∑[A001764(n)²]`
-/

namespace A188684.P12591397095031755444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188684.P12591397095031755444

/-! ## A188684.P3092462794336803871

`∑[A073147(∑[n])²]`
-/

namespace A188684.P3092462794336803871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073147 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188684.P3092462794336803871

/-! ## A188684.P17094542301532139420

`∑[A109956(∑[n])²]`
-/

namespace A188684.P17094542301532139420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109956 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188684.P17094542301532139420

/-! ## A188684.P217515937655772627

`∑[A110616(∑[n])²]`
-/

namespace A188684.P217515937655772627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188684.P217515937655772627

/-! ## A188684.P17787547883386044681

`∑[A179848(n)²]+1`
-/

namespace A188684.P17787547883386044681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179848 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A188684.P17787547883386044681

/-! ## A188684.P5304077156552411517

`∑[A047749(2*n)²]`
-/

namespace A188684.P5304077156552411517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188684.P5304077156552411517

/-! ## A188684.P4238222955422562149

`∑[A094040(∑[n+1])²]`
-/

namespace A188684.P4238222955422562149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094040 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188684.P4238222955422562149

/-! ## A188684.P11701771929835625854

`∑[A070914(∑[n+3])²]`
-/

namespace A188684.P11701771929835625854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188684.P11701771929835625854

/-! ## A188684.P15413788065145398939

`∑[A108759(n*(n+2))²]`
-/

namespace A188684.P15413788065145398939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108759 (n * (n + 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188684.P15413788065145398939

/-!
# A188685: Partial alternating sums of binomial(3n,n)^2/(2n+1)^2.

The programs for A188685, there is no canonical definition to state claims against.
-/

/-! ## A188685.P6337199549326464105

`A001764(n)²-a(n-1)` with `a(0)=1`
-/

namespace A188685.P6337199549326464105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001764 n ^ 2 - a (n - 1)

end

end A188685.P6337199549326464105

/-! ## A188685.P14606020441796177444

`A179848(n)²-a(n-1)` with `a(0)=1`
-/

namespace A188685.P14606020441796177444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179848 n ^ 2 - a (n - 1)

end

end A188685.P14606020441796177444

/-! ## A188685.P7434605417693824752

`A110616(∑[n])²-a(n-1)` with `a(0)=1`
-/

namespace A188685.P7434605417693824752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110616 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - a (n - 1)

end

end A188685.P7434605417693824752

/-! ## A188685.P9011234635166049916

`A047749(2*n)²-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A188685.P9011234635166049916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A047749 (2 * n) ^ 2 - a (n - 1)

end

end A188685.P9011234635166049916

/-! ## A188685.P13709738544841389699

`(A006013(n)-A007226(n))²-a(n-1)` with `a(0)=1`
-/

namespace A188685.P13709738544841389699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A006013 n - A007226 n) ^ 2 - a (n - 1)

end

end A188685.P13709738544841389699

/-!
# A188686: Binomial transform of the sequence of binomial(3n,n).

The programs for A188686, there is no canonical definition to state claims against.
-/

/-! ## A188686.P16364789675414602960

`3*A254747(n)-2`
-/

namespace A188686.P16364789675414602960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A254747 n - 2

end

end A188686.P16364789675414602960

/-! ## A188686.P16913916935900183783

`A016777(A254747(n)-1)`
-/

namespace A188686.P16913916935900183783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A254747 n - 1).toNat

end

end A188686.P16913916935900183783

/-!
# A188687: Partial binomial sums of binomial(3n,n)/(2n+1) = A001764(n).

The programs for A188687, there is no canonical definition to state claims against.
-/

/-! ## A188687.P5369619465588714656

`∑[A307678(n)]`
-/

namespace A188687.P5369619465588714656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188687.P5369619465588714656

/-! ## A188687.P17614118246371817642

`A307678(n)+a(A000007(n)-1+n)` with `a(0)=1`
-/

namespace A188687.P17614118246371817642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307678 n + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A188687.P17614118246371817642

/-! ## A188687.P10420851144003806655

`A307678(n)+a(A047838(2*(n+1))%(n+1)-1)` with `a(0)=1`
-/

namespace A188687.P10420851144003806655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307678 n + a (Int.tmod (A047838 (2 * (n + 1))) (n + 1 : ℤ) - 1).toNat

end

end A188687.P10420851144003806655

/-! ## A188687.P4171281347953760307

`A307678(n)+a(A003056(A007590(n)))` with `a(0)=1`
-/

namespace A188687.P4171281347953760307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307678 n + a (A003056 (A007590 n).toNat).toNat

end

end A188687.P4171281347953760307

/-! ## A188687.P15383690114742190359

`A307678(n)+A007318(A112367(n))*a(n-1)` with `a(0)=1`
-/

namespace A188687.P15383690114742190359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307678 n + A007318 (A112367 n).toNat * a (n - 1)

end

end A188687.P15383690114742190359

/-!
# A188688: Number of n X n binary arrays without the pattern 0 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188688, there is no canonical definition to state claims against.
-/

/-! ## A188688.P14277896517761894113

`A188695(∑[4*n]+1)`
-/

namespace A188688.P14277896517761894113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188688.P14277896517761894113

/-! ## A188688.P2502132077920575610

`record[A003982(n)*A188695(n+1)]`
-/

namespace A188688.P2502132077920575610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A188695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188688.P2502132077920575610

/-! ## A188688.P16228336503363288735

`gcd(A000038(n), A188695(A001844(n)))`
-/

namespace A188688.P16228336503363288735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A188695 (A001844 n).toNat)

end

end A188688.P16228336503363288735

/-! ## A188688.P6079314903334330415

`lcm(A141044(n), A188695(A001844(n)))`
-/

namespace A188688.P6079314903334330415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141044 n) (A188695 (A001844 n).toNat)

end

end A188688.P6079314903334330415

/-! ## A188688.P4326339019990962584

`A188695(A001844(n))+A047766(n+1)`
-/

namespace A188688.P4326339019990962584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A001844 n).toNat + A047766 (n + 1)

end

end A188688.P4326339019990962584

/-!
# A188689: Number of nX3 binary arrays without the pattern 0 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188689, there is no canonical definition to state claims against.
-/

/-! ## A188689.P6933059392057513577

`A188695(∑[n+2]+4)`
-/

namespace A188689.P6933059392057513577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188689.P6933059392057513577

/-! ## A188689.P15927532305068953636

`A016266(n)*A188695(A167614(n+1))`
-/

namespace A188689.P15927532305068953636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A188695 (A167614 (n + 1)).toNat

end

end A188689.P15927532305068953636

/-! ## A188689.P6195543857949816691

`A188695(A167614(n+1))%A014352(n)`
-/

namespace A188689.P6195543857949816691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188695 (A167614 (n + 1)).toNat) (A014352 n)

end

end A188689.P6195543857949816691

/-! ## A188689.P10604194484331966542

`A188695(A167614(n+1))+A000007(n+1)`
-/

namespace A188689.P10604194484331966542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A188689.P10604194484331966542

/-! ## A188689.P12950560973204355358

`A188695(A046691(n)+7)+A034441(n+1)`
-/

namespace A188689.P12950560973204355358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A046691 n + 7).toNat + A034441 (n + 1)

end

end A188689.P12950560973204355358

/-!
# A188690: Number of nX4 binary arrays without the pattern 0 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188690, there is no canonical definition to state claims against.
-/

/-! ## A188690.P15313574359716987540

`A188695(A374004(n+1))`
-/

namespace A188690.P15313574359716987540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A374004 (n + 1)).toNat

end

end A188690.P15313574359716987540

/-! ## A188690.P2694319489748126881

`A188695(A141214(n)+7)`
-/

namespace A188690.P2694319489748126881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A141214 n + 7).toNat

end

end A188690.P2694319489748126881

/-! ## A188690.P12336277656594798956

`A188695(A052905(n)+9)`
-/

namespace A188690.P12336277656594798956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A052905 n + 9).toNat

end

end A188690.P12336277656594798956

/-! ## A188690.P8806010999766587073

`A188695(A055999(n)+10)`
-/

namespace A188690.P8806010999766587073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A055999 n + 10).toNat

end

end A188690.P8806010999766587073

/-! ## A188690.P5793645251945376938

`A188695(A167614(n+2)+1)`
-/

namespace A188690.P5793645251945376938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A167614 (n + 2) + 1).toNat

end

end A188690.P5793645251945376938

/-!
# A188691: Number of nX5 binary arrays without the pattern 0 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188691, there is no canonical definition to state claims against.
-/

/-! ## A188691.P12751744194796932357

`A188695(A374005(n+1))`
-/

namespace A188691.P12751744194796932357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A374005 (n + 1)).toNat

end

end A188691.P12751744194796932357

/-! ## A188691.P2376750059129287608

`A188695(A167499(n+3))`
-/

namespace A188691.P2376750059129287608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A167499 (n + 3)).toNat

end

end A188691.P2376750059129287608

/-! ## A188691.P10720600626456207194

`A188695(A167614(n+3)+2)`
-/

namespace A188691.P10720600626456207194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A167614 (n + 3) + 2).toNat

end

end A188691.P10720600626456207194

/-! ## A188691.P11920740065705672291

`A188695(A000096(n+3)+6)`
-/

namespace A188691.P11920740065705672291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A000096 (n + 3) + 6).toNat

end

end A188691.P11920740065705672291

/-! ## A188691.P7918256900819412189

`A188695(A141214(n+1)+8)`
-/

namespace A188691.P7918256900819412189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A141214 (n + 1) + 8).toNat

end

end A188691.P7918256900819412189

/-!
# A188692: Number of nX6 binary arrays without the pattern 0 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188692, there is no canonical definition to state claims against.
-/

/-! ## A188692.P14708587961524254647

`A188695(A374007(n+1))`
-/

namespace A188692.P14708587961524254647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A374007 (n + 1)).toNat

end

end A188692.P14708587961524254647

/-! ## A188692.P15153408794240046835

`A188695(eq[7, A131818(n+1)])`
-/

namespace A188692.P15153408794240046835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188692.P15153408794240046835

/-! ## A188692.P14749746871824115024

`A188695(A055999(n+4)-Δ[n²])`
-/

namespace A188692.P14749746871824115024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A055999 (n + 4) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A188692.P14749746871824115024

/-! ## A188692.P7964096892922988392

`A188695(A052905(n+3))`
-/

namespace A188692.P7964096892922988392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A052905 (n + 3)).toNat

end

end A188692.P7964096892922988392

/-! ## A188692.P14757682395941485315

`A188695(eq[3, A219347(n)])`
-/

namespace A188692.P14757682395941485315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188692.P14757682395941485315

/-!
# A188693: Number of nX7 binary arrays without the pattern 0 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188693, there is no canonical definition to state claims against.
-/

/-! ## A188693.P10999928347635065910

`A188695(A374008(n+1))`
-/

namespace A188693.P10999928347635065910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A374008 (n + 1)).toNat

end

end A188693.P10999928347635065910

/-! ## A188693.P12378523019918637186

`A188695(A027379(n+4)+10)`
-/

namespace A188693.P12378523019918637186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A027379 (n + 4) + 10).toNat

end

end A188693.P12378523019918637186

/-! ## A188693.P4616258650720304227

`A188695(eq[8, A131818(n+1)])`
-/

namespace A188693.P4616258650720304227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188693.P4616258650720304227

/-! ## A188693.P379983518295600984

`A188695(A055999(n+4))`
-/

namespace A188693.P379983518295600984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A055999 (n + 4)).toNat

end

end A188693.P379983518295600984

/-! ## A188693.P7855477393348248924

`A188695(eq[4, A219347(n)])`
-/

namespace A188693.P7855477393348248924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188693.P7855477393348248924

/-!
# A188694: Number of nX8 binary arrays without the pattern 0 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188694, there is no canonical definition to state claims against.
-/

/-! ## A188694.P10091924470259404748

`A188695(A374009(n+1))`
-/

namespace A188694.P10091924470259404748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (A374009 (n + 1)).toNat

end

end A188694.P10091924470259404748

/-! ## A188694.P3289543047136374823

`A188695(eq[13, A066657(n)])`
-/

namespace A188694.P3289543047136374823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188694.P3289543047136374823

/-! ## A188694.P9591614693887337156

`A188695(eq[9, A131818(n+1)])`
-/

namespace A188694.P9591614693887337156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188694.P9591614693887337156

/-! ## A188694.P13514116497488229851

`A188695(eq[5, A219347(n)])`
-/

namespace A188694.P13514116497488229851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188694.P13514116497488229851

/-! ## A188694.P7660853251523394468

`A188695(eq[7, A193592(n)])`
-/

namespace A188694.P7660853251523394468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188694.P7660853251523394468

/-!
# A188695: T(n,k)=Number of nXk binary arrays without the pattern 0 1 0 diagonally, vertically, antidiagonally or horizontally.

The programs for A188695, there is no canonical definition to state claims against.
-/

/-! ## A188695.P6497624904316581690

`A188774(n+1)-A123262(A059328(n))`
-/

namespace A188695.P6497624904316581690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (n + 1) - A123262 (A059328 n).toNat

end

end A188695.P6497624904316581690

/-! ## A188695.P17324509338001045631

`A188508(n+1)-A185203(A131131(n))`
-/

namespace A188695.P17324509338001045631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (n + 1) - A185203 (A131131 n).toNat

end

end A188695.P17324509338001045631

/-! ## A188695.P16426030854606978902

`A188508(n+1)-A185203(A134066(n))`
-/

namespace A188695.P16426030854606978902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (n + 1) - A185203 (A134066 n).toNat

end

end A188695.P16426030854606978902

/-! ## A188695.P914406361016142080

`A206883(n+1)-12*A014707(A022171(n))`
-/

namespace A188695.P914406361016142080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (n + 1) - 12 * A014707 (A022171 n).toNat

end

end A188695.P914406361016142080

/-!
# A188696: Expansion of (1+x^2)/(1-26*x+x^2-26*x^3+2*x^4).

The programs for A188696, the canonical program `A188696.P13229193882023276865` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188696 has offset 0).

The definition of A188696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-26x+x^2-26x^3+2x^4))` (program `A188696.P13229193882023276865`, by `A188696.P13229193882023276865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188696.P13229193882023276865

`ogf((1+x^2)/(1-26x+x^2-26x^3+2x^4))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188696

/-- `ogf((1+x^2)/(1-26x+x^2-26x^3+2x^4))` -/
def P13229193882023276865.Spec : Prop :=
  ∀ n, P13229193882023276865.a n = A188696 n

theorem P13229193882023276865.correct : P13229193882023276865.Spec := by
  intro n
  simp only [A188696]

end A188696

/-!
# A188697: Expansion of (1+2*x^2)/(1-26*x+2*x^2-52*x^3+4*x^4).

The programs for A188697, the canonical program `A188697.P4814772146302806506` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188697 has offset 0).

The definition of A188697 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2)/(1-26x+2x^2-52x^3+4x^4))` (program `A188697.P4814772146302806506`, by `A188697.P4814772146302806506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188697.P4814772146302806506

`ogf((1+2x^2)/(1-26x+2x^2-52x^3+4x^4))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188697

/-- `ogf((1+2x^2)/(1-26x+2x^2-52x^3+4x^4))` -/
def P4814772146302806506.Spec : Prop :=
  ∀ n, P4814772146302806506.a n = A188697 n

theorem P4814772146302806506.correct : P4814772146302806506.Spec := by
  intro n
  simp only [A188697]

end A188697

