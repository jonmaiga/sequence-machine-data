import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A237900: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237900, there is no canonical definition to state claims against.
-/

/-! ## A237900.P5516432685972865316

`A237904(∑[n+1]+2)`
-/

namespace A237900.P5516432685972865316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237900.P5516432685972865316

/-! ## A237900.P21900123370152640

`lcm(2, A237904(A133263(n+1)))`
-/

namespace A237900.P21900123370152640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237904 (A133263 (n + 1)).toNat)

end

end A237900.P21900123370152640

/-! ## A237900.P3597284331730959205

`record[root(A237904(n+2), A059268(n))]`
-/

namespace A237900.P3597284331730959205
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237904 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237900.P3597284331730959205

/-! ## A237900.P8925855987097809174

`record[root(A237904(n+2), A328807(n))]`
-/

namespace A237900.P8925855987097809174
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237904 (n + 2) : ℝ) ^ (1 / (A328807 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237900.P8925855987097809174

/-! ## A237900.P16868948526955304193

`record[root(A237904(n+2), A334165(n))]`
-/

namespace A237900.P16868948526955304193
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237904 (n + 2) : ℝ) ^ (1 / (A334165 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237900.P16868948526955304193

/-!
# A237901: Number of (n+1) X (3+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237901, there is no canonical definition to state claims against.
-/

/-! ## A237901.P5897983387773426281

`A237904(∑[n+2]+4)`
-/

namespace A237901.P5897983387773426281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237901.P5897983387773426281

/-! ## A237901.P9746847738190894802

`A237904(A167614(n+1))+A031346(n)`
-/

namespace A237901.P9746847738190894802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A167614 (n + 1)).toNat + A031346 n

end

end A237901.P9746847738190894802

/-! ## A237901.P15981719202795806015

`A237904(A167614(n+1))+A056965(n)`
-/

namespace A237901.P15981719202795806015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A167614 (n + 1)).toNat + A056965 n

end

end A237901.P15981719202795806015

/-! ## A237901.P12044310666084448284

`A237904(A167614(n+1))+A185264(n)`
-/

namespace A237901.P12044310666084448284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A167614 (n + 1)).toNat + A185264 n

end

end A237901.P12044310666084448284

/-! ## A237901.P10066526037847074538

`A237904(A167614(n+1))+A225099(n)`
-/

namespace A237901.P10066526037847074538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A167614 (n + 1)).toNat + A225099 n

end

end A237901.P10066526037847074538

/-!
# A237902: Number of (n+1) X (4+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237902, there is no canonical definition to state claims against.
-/

/-! ## A237902.P12050744380561160728

`A237904(A374004(n+1))`
-/

namespace A237902.P12050744380561160728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A374004 (n + 1)).toNat

end

end A237902.P12050744380561160728

/-! ## A237902.P15852003729093684599

`A237904(A141214(n)+7)`
-/

namespace A237902.P15852003729093684599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A141214 n + 7).toNat

end

end A237902.P15852003729093684599

/-! ## A237902.P12738659964713758882

`A237904(A052905(n)+9)`
-/

namespace A237902.P12738659964713758882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A052905 n + 9).toNat

end

end A237902.P12738659964713758882

/-! ## A237902.P9241710303112159498

`A237904(A055999(n)+10)`
-/

namespace A237902.P9241710303112159498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A055999 n + 10).toNat

end

end A237902.P9241710303112159498

/-!
# A237903: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237903, there is no canonical definition to state claims against.
-/

/-! ## A237903.P174894715298194417

`A237904(A374005(n+1))`
-/

namespace A237903.P174894715298194417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A374005 (n + 1)).toNat

end

end A237903.P174894715298194417

/-! ## A237903.P9162149825023589737

`A237904(A155212(n)+13)`
-/

namespace A237903.P9162149825023589737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237904 (A155212 n + 13).toNat

end

end A237903.P9162149825023589737

/-!
# A237905: Number of (n+1)X(1+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237905, there is no canonical definition to state claims against.
-/

/-! ## A237905.P11948599070486590058

`A237911(∑[n]+1)`
-/

namespace A237905.P11948599070486590058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237905.P11948599070486590058

/-! ## A237905.P2442416588008907117

`record[A237911(n+1)/A022166(n)]`
-/

namespace A237905.P2442416588008907117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237911 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237905.P2442416588008907117

/-! ## A237905.P4547502204669884305

`record[gcd(A002262(n), A237911(n+1))]`
-/

namespace A237905.P4547502204669884305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237911 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237905.P4547502204669884305

/-! ## A237905.P16090537461662695001

`record[A237911(n+1)/A259051(n+1)]`
-/

namespace A237905.P16090537461662695001
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237911 (n + 1) : ℚ) / (A259051 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237905.P16090537461662695001

/-! ## A237905.P15634977056599355113

`record[root(A237911(n+1), A202006(n+1))]`
-/

namespace A237905.P15634977056599355113
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237911 (n + 1) : ℝ) ^ (1 / (A202006 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237905.P15634977056599355113

/-!
# A237906: Number of (n+1)X(2+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237906, there is no canonical definition to state claims against.
-/

/-! ## A237906.P6252271451447708423

`A237911(∑[n+1]+2)`
-/

namespace A237906.P6252271451447708423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237906.P6252271451447708423

/-! ## A237906.P2215087398800565208

`record[gcd(A002262(n), A237911(n+2))]`
-/

namespace A237906.P2215087398800565208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237911 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237906.P2215087398800565208

/-! ## A237906.P16699870286906833477

`record[gcd(A187988(n+2), A237911(n+3))]`
-/

namespace A237906.P16699870286906833477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187988 (n + 2)) (A237911 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237906.P16699870286906833477

/-! ## A237906.P6143708991526018597

`record[root(A237911(n+2), A094587(n+2))]`
-/

namespace A237906.P6143708991526018597
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237911 (n + 2) : ℝ) ^ (1 / (A094587 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237906.P6143708991526018597

/-!
# A237907: Number of (n+1)X(3+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237907, there is no canonical definition to state claims against.
-/

/-! ## A237907.P11621367428284866650

`A237911(∑[n+2]+4)`
-/

namespace A237907.P11621367428284866650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237907.P11621367428284866650

/-! ## A237907.P13267944140582027331

`lcm(2, A237911(A167614(n+1)))`
-/

namespace A237907.P13267944140582027331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237911 (A167614 (n + 1)).toNat)

end

end A237907.P13267944140582027331

/-! ## A237907.P7401732670813008966

`A237911(A167614(n+1))+A185284(n)`
-/

namespace A237907.P7401732670813008966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A167614 (n + 1)).toNat + A185284 n

end

end A237907.P7401732670813008966

/-! ## A237907.P14764884706395635263

`A237911(A167614(n+1))+A206499(n+1)`
-/

namespace A237907.P14764884706395635263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A167614 (n + 1)).toNat + A206499 (n + 1)

end

end A237907.P14764884706395635263

/-! ## A237907.P939151954215516834

`A237911(A167614(n+1))%A237893(n+1)`
-/

namespace A237907.P939151954215516834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237911 (A167614 (n + 1)).toNat) (A237893 (n + 1))

end

end A237907.P939151954215516834

/-!
# A237908: Number of (n+1)X(4+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237908, there is no canonical definition to state claims against.
-/

/-! ## A237908.P14382005847689321625

`A237911(A374004(n+1))`
-/

namespace A237908.P14382005847689321625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A374004 (n + 1)).toNat

end

end A237908.P14382005847689321625

/-! ## A237908.P13624179037491072680

`A237911(A141214(n)+7)`
-/

namespace A237908.P13624179037491072680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A141214 n + 7).toNat

end

end A237908.P13624179037491072680

/-! ## A237908.P5636518249158922243

`A237911(A055999(n)+10)`
-/

namespace A237908.P5636518249158922243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A055999 n + 10).toNat

end

end A237908.P5636518249158922243

/-! ## A237908.P4629046100063805374

`A237911(A167614(n+2)+1)`
-/

namespace A237908.P4629046100063805374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A167614 (n + 2) + 1).toNat

end

end A237908.P4629046100063805374

/-! ## A237908.P8474737711335715582

`A237911(A155212(n)+5)`
-/

namespace A237908.P8474737711335715582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A155212 n + 5).toNat

end

end A237908.P8474737711335715582

/-!
# A237909: Number of (n+1)X(5+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237909, there is no canonical definition to state claims against.
-/

/-! ## A237909.P14961269703410413957

`A237911(A374005(n+1))`
-/

namespace A237909.P14961269703410413957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A374005 (n + 1)).toNat

end

end A237909.P14961269703410413957

/-! ## A237909.P1556362913408576010

`A237911(A141214(n+2)-1)`
-/

namespace A237909.P1556362913408576010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A141214 (n + 2) - 1).toNat

end

end A237909.P1556362913408576010

/-!
# A237910: Number of (n+1)X(6+1) 0..3 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237910, there is no canonical definition to state claims against.
-/

/-! ## A237910.P5272730257099414173

`A237911(A374007(n+1))`
-/

namespace A237910.P5272730257099414173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A374007 (n + 1)).toNat

end

end A237910.P5272730257099414173

/-! ## A237910.P16387569298302387428

`A237911(A052905(n+3))`
-/

namespace A237910.P16387569298302387428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (A052905 (n + 3)).toNat

end

end A237910.P16387569298302387428

/-! ## A237910.P17914980565750804836

`A237911(eq[5, A193592(n)])`
-/

namespace A237910.P17914980565750804836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237910.P17914980565750804836

/-!
# A237913: Smallest number m > 1 (not ending in a 0) such that m and the digit reversal of m have n prime factors (counted with multiplicity). Palindromes are included.

The programs for A237913, there is no canonical definition to state claims against.
-/

/-! ## A237913.P15821607983989401780

`A239697(A100793(n))`
-/

namespace A237913.P15821607983989401780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239697 (A100793 n).toNat

end

end A237913.P15821607983989401780

/-! ## A237913.P3329796525144163443

`A239697(A000005(7^n))`
-/

namespace A237913.P3329796525144163443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239697 (A000005 (7 ^ n)).toNat

end

end A237913.P3329796525144163443

/-!
# A237914: Denominator of a(n) where a(0) = a(1) = a(2) = 1, a(n) * (a(n) + a(n+3)) = (a(n) + 2*a(n+2)) * (a(n) + a(n+2)).

The programs for A237914, there is no canonical definition to state claims against.
-/

/-! ## A237914.P11154991362908701757

`∏[∏[A237887(A289207(n))]]`
-/

namespace A237914.P11154991362908701757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237887 (A289207 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A237914.P11154991362908701757

/-! ## A237914.P2544927453616540908

`∏[∏[A237887(A285758(n+4))]]`
-/

namespace A237914.P2544927453616540908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237887 (A285758 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A237914.P2544927453616540908

/-! ## A237914.P5679406475377910264

`A255651(C(comp[∑[n]], 9))`
-/

namespace A237914.P5679406475377910264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255651 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 9)

end

end A237914.P5679406475377910264

/-!
# A237915: Number of (n+1)X(1+1) 0..3 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237915, there is no canonical definition to state claims against.
-/

/-! ## A237915.P13240851132221202335

`A237921(∑[n]+1)`
-/

namespace A237915.P13240851132221202335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237915.P13240851132221202335

/-! ## A237915.P15180769591698305303

`lcm(2, A237921(A000124(n)))`
-/

namespace A237915.P15180769591698305303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237921 (A000124 n).toNat)

end

end A237915.P15180769591698305303

/-! ## A237915.P11532470600095600356

`record[A010054(n)*A237921(n+1)]`
-/

namespace A237915.P11532470600095600356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237915.P11532470600095600356

/-! ## A237915.P14729917787296863184

`record[A237921(n+1)/A022166(n)]`
-/

namespace A237915.P14729917787296863184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237921 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237915.P14729917787296863184

/-! ## A237915.P8324499115315254775

`record[A237921(n+1)/A146988(n)]`
-/

namespace A237915.P8324499115315254775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237921 (n + 1) : ℚ) / (A146988 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237915.P8324499115315254775

/-!
# A237916: Number of (n+1)X(2+1) 0..3 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237916, there is no canonical definition to state claims against.
-/

/-! ## A237916.P349179548573896209

`A237921(∑[n+1]+2)`
-/

namespace A237916.P349179548573896209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237916.P349179548573896209

/-! ## A237916.P4454874640612893682

`record[A010054(n)*A237921(n+2)]`
-/

namespace A237916.P4454874640612893682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237921 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237916.P4454874640612893682

/-! ## A237916.P3439908380806244491

`record[A237921(n+2)/A103884(n+2)]`
-/

namespace A237916.P3439908380806244491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237921 (n + 2) : ℚ) / (A103884 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237916.P3439908380806244491

/-! ## A237916.P15615930043198076808

`record[root(A237921(n+2), A013943(2*n+1))]`
-/

namespace A237916.P15615930043198076808
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237921 (n + 2) : ℝ) ^ (1 / (A013943 (2 * n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237916.P15615930043198076808

/-! ## A237916.P1226064938594923029

`record[A097806(n+1)*A237921(n+2)]`
-/

namespace A237916.P1226064938594923029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (n + 1) * A237921 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237916.P1226064938594923029

/-!
# A237917: Number of (n+1)X(3+1) 0..3 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237917, there is no canonical definition to state claims against.
-/

/-! ## A237917.P15379411100732330341

`A237921(∑[n+2]+4)`
-/

namespace A237917.P15379411100732330341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237917.P15379411100732330341

/-! ## A237917.P4553241200523550415

`lcm(2, A237921(A167614(n+1)))`
-/

namespace A237917.P4553241200523550415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237921 (A167614 (n + 1)).toNat)

end

end A237917.P4553241200523550415

/-! ## A237917.P12485869549334845712

`A237921(A167614(n+1))+A084904(n)`
-/

namespace A237917.P12485869549334845712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (A167614 (n + 1)).toNat + A084904 n

end

end A237917.P12485869549334845712

/-! ## A237917.P12136882047876205493

`A237921(A167614(n+1))+A048142(n+1)`
-/

namespace A237917.P12136882047876205493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (A167614 (n + 1)).toNat + A048142 (n + 1)

end

end A237917.P12136882047876205493

/-! ## A237917.P1100833552546818278

`A237921(A167614(n+1))+A135297(n+1)`
-/

namespace A237917.P1100833552546818278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (A167614 (n + 1)).toNat + A135297 (n + 1)

end

end A237917.P1100833552546818278

/-!
# A237918: Number of (n+1)X(4+1) 0..3 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237918, there is no canonical definition to state claims against.
-/

/-! ## A237918.P5135543396607308669

`A237921(∑[n+3]+7)`
-/

namespace A237918.P5135543396607308669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A237918.P5135543396607308669

/-! ## A237918.P12139975042891672584

`A237921(A374004(n+1))*A376663(n+1)`
-/

namespace A237918.P12139975042891672584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (A374004 (n + 1)).toNat * A376663 (n + 1)

end

end A237918.P12139975042891672584

/-!
# A237919: Number of (n+1) X (5+1) 0..3 arrays with the upper median plus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237919, there is no canonical definition to state claims against.
-/

/-! ## A237919.P3039675168775844675

`A237921(A374005(n+1))`
-/

namespace A237919.P3039675168775844675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (A374005 (n + 1)).toNat

end

end A237919.P3039675168775844675

/-! ## A237919.P14424333032710721223

`A237921(A167499(n+3))`
-/

namespace A237919.P14424333032710721223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (A167499 (n + 3)).toNat

end

end A237919.P14424333032710721223

/-! ## A237919.P5493372016910984009

`A237921(A155212(n)+13)`
-/

namespace A237919.P5493372016910984009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (A155212 n + 13).toNat

end

end A237919.P5493372016910984009

/-! ## A237919.P15103727967970897562

`A237921(A056000(n)+15)`
-/

namespace A237919.P15103727967970897562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (A056000 n + 15).toNat

end

end A237919.P15103727967970897562

/-! ## A237919.P10509333992288126588

`A237921(eq[7, A066657(n)])`
-/

namespace A237919.P10509333992288126588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237919.P10509333992288126588

/-!
# A237920: Number of (n+1)X(6+1) 0..3 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237920, there is no canonical definition to state claims against.
-/

/-! ## A237920.P17259994782110934253

`A237921(A374007(n+1))`
-/

namespace A237920.P17259994782110934253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (A374007 (n + 1)).toNat

end

end A237920.P17259994782110934253

/-! ## A237920.P16790397957843523947

`A237921(A052905(n+3))`
-/

namespace A237920.P16790397957843523947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (A052905 (n + 3)).toNat

end

end A237920.P16790397957843523947

/-! ## A237920.P12172848015647349225

`A237921(eq[6, A195079(n+1)])`
-/

namespace A237920.P12172848015647349225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237920.P12172848015647349225

/-!
# A237922: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237922, there is no canonical definition to state claims against.
-/

/-! ## A237922.P18061405076277909436

`A237927(∑[n]+1)`
-/

namespace A237922.P18061405076277909436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237922.P18061405076277909436

/-! ## A237922.P3759822364019628132

`lcm(2, A237927(A000124(n)))`
-/

namespace A237922.P3759822364019628132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237927 (A000124 n).toNat)

end

end A237922.P3759822364019628132

/-! ## A237922.P611107847803092639

`record[root(A237927(n+1), A007318(n))]`
-/

namespace A237922.P611107847803092639
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237927 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237922.P611107847803092639

/-! ## A237922.P15383798854530353945

`record[root(A237927(n+1), A193592(n))]`
-/

namespace A237922.P15383798854530353945
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237927 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237922.P15383798854530353945

/-! ## A237922.P15753701992475182460

`record[gcd(A004247(n), A237927(n+1))]`
-/

namespace A237922.P15753701992475182460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A237927 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237922.P15753701992475182460

/-!
# A237923: Number of (n+1) X (2+1) 0..3 arrays with the maximum plus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237923, there is no canonical definition to state claims against.
-/

/-! ## A237923.P2327369013855115026

`A237927(∑[n+1]+2)`
-/

namespace A237923.P2327369013855115026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237923.P2327369013855115026

/-! ## A237923.P7647968305160951254

`record[A120111(n)*A237927(n+3)]`
-/

namespace A237923.P7647968305160951254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120111 n * A237927 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237923.P7647968305160951254

/-! ## A237923.P6927992235133373649

`record[root(A237927(n+2), A240783(n+1))]`
-/

namespace A237923.P6927992235133373649
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237927 (n + 2) : ℝ) ^ (1 / (A240783 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237923.P6927992235133373649

/-! ## A237923.P16646319841081360086

`record[root(A237927(n+3), A054531(n+1))]`
-/

namespace A237923.P16646319841081360086
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237927 (n + 3) : ℝ) ^ (1 / (A054531 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237923.P16646319841081360086

/-! ## A237923.P5744901210319300330

`record[A237927(eq[0, A050186(n)])]`
-/

namespace A237923.P5744901210319300330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237923.P5744901210319300330

/-!
# A237924: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237924, there is no canonical definition to state claims against.
-/

/-! ## A237924.P14377761627954607637

`A237927(∑[n+2]+4)`
-/

namespace A237924.P14377761627954607637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237924.P14377761627954607637

/-! ## A237924.P10677000609635647785

`A237927(A167614(n+1))+A185284(n)`
-/

namespace A237924.P10677000609635647785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (A167614 (n + 1)).toNat + A185284 n

end

end A237924.P10677000609635647785

/-! ## A237924.P12684935443963112447

`A057427(n+1)*A237927(A167614(n+1))`
-/

namespace A237924.P12684935443963112447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A237927 (A167614 (n + 1)).toNat

end

end A237924.P12684935443963112447

/-! ## A237924.P13269099093617687305

`A237927(A167614(n+1))%A237925(n+1)`
-/

namespace A237924.P13269099093617687305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237927 (A167614 (n + 1)).toNat) (A237925 (n + 1))

end

end A237924.P13269099093617687305

/-! ## A237924.P14281231074472079792

`lcm(A001511(n+1), A237927(A167614(n+1)))`
-/

namespace A237924.P14281231074472079792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001511 (n + 1)) (A237927 (A167614 (n + 1)).toNat)

end

end A237924.P14281231074472079792

/-!
# A237925: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237925, there is no canonical definition to state claims against.
-/

/-! ## A237925.P12093774180007197237

`A237927(C(n+5, 2)-n)`
-/

namespace A237925.P12093774180007197237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (Nat.choose (n + 5) 2 - n)

end

end A237925.P12093774180007197237

/-! ## A237925.P13533382758817044665

`A237927(A374004(n+1))`
-/

namespace A237925.P13533382758817044665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (A374004 (n + 1)).toNat

end

end A237925.P13533382758817044665

/-! ## A237925.P5659116068927404953

`A237927(A052905(n)+9)`
-/

namespace A237925.P5659116068927404953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (A052905 n + 9).toNat

end

end A237925.P5659116068927404953

/-! ## A237925.P12675290858202736344

`A237927(A055999(n)+10)`
-/

namespace A237925.P12675290858202736344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (A055999 n + 10).toNat

end

end A237925.P12675290858202736344

/-! ## A237925.P14084425684209861314

`A237927(A167614(n+2)+1)`
-/

namespace A237925.P14084425684209861314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (A167614 (n + 2) + 1).toNat

end

end A237925.P14084425684209861314

/-!
# A237926: Number of (n+1) X (5+1) 0..3 arrays with the maximum plus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237926, there is no canonical definition to state claims against.
-/

/-! ## A237926.P18340144962548094433

`A237927(A374005(n+1))`
-/

namespace A237926.P18340144962548094433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (A374005 (n + 1)).toNat

end

end A237926.P18340144962548094433

/-! ## A237926.P6304738617784907376

`A237927(A155212(n)+13)`
-/

namespace A237926.P6304738617784907376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (A155212 n + 13).toNat

end

end A237926.P6304738617784907376

/-! ## A237926.P3603456379212237978

`A237927(A056000(n)+15)`
-/

namespace A237926.P3603456379212237978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (A056000 n + 15).toNat

end

end A237926.P3603456379212237978

/-! ## A237926.P18311362436602097622

`A237927(eq[7, A066657(n)])`
-/

namespace A237926.P18311362436602097622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237926.P18311362436602097622

/-! ## A237926.P11965563435340993601

`A237927(eq[6, A131818(n+1)])`
-/

namespace A237926.P11965563435340993601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237926.P11965563435340993601

/-!
# A237929: Numbers n such that (i) the sum of prime divisors of n (with repetition) is one less than the sum of prime divisors (with repetition) of n+1, and (ii) n and n+1 have the same number of prime divisors (with repetition).

The programs for A237929, there is no canonical definition to state claims against.
-/

/-! ## A237929.P1506507254794760329

`∩[A045920(n+1), A228126(n+1)]`
-/

namespace A237929.P1506507254794760329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237929.P1506507254794760329

/-!
# A237930: a(n) = 3^(n+1) + (3^n-1)/2.

The programs for A237930, the canonical program `A237930.P5739970659027604130` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237930 has offset 0).

The definition of A237930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)+(3^n-1)/2` (program `A237930.P14316715175895155213`, by `A237930.P14316715175895155213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A237930.P5739970659027604130

`3*a(n-1)+1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A237930

/-- `3*a(n-1)+1` -/
def P5739970659027604130.Spec : Prop :=
  ∀ n, (P5739970659027604130.a n : ℤ) = A237930 n

theorem P5739970659027604130.correct : P5739970659027604130.Spec := by
  intro n
  simp only [A237930]

end A237930

/-! ## A237930.P14316715175895155213

`3^(n+1)+(3^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A237930.P14316715175895155213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℚ) + ((3 ^ n : ℤ) - 1 : ℚ) / 2

end

end A237930.P14316715175895155213

namespace A237930

/-- `3^(n+1)+(3^n-1)/2` -/
def P14316715175895155213.Spec : Prop :=
  ∀ n, P14316715175895155213.a n = (A237930 n : ℚ)

theorem P14316715175895155213.correct : P14316715175895155213.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A237930, Nat.add_sub_cancel, A237930.P14316715175895155213.a, A237930.P5739970659027604130.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A237930, Nat.add_sub_cancel, A237930.P14316715175895155213.a, A237930.P5739970659027604130.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A237930

/-! ## A237930.P2203400201417061028

`(A000244(n+1)+A171498(n))/2`
-/

namespace A237930.P2203400201417061028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) + A171498 n : ℚ) / 2

end

end A237930.P2203400201417061028

namespace A237930

/-- `(A000244(n+1)+A171498(n))/2` -/
def P2203400201417061028.Spec : Prop :=
  ∀ n, P2203400201417061028.a n = (A237930 n : ℚ)

end A237930

/-! ## A237930.P14669338303519010301

`ogf((3-2x)/(1-4x+3x^2))`
-/

namespace A237930.P14669338303519010301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -4, 3] n

end

end A237930.P14669338303519010301

namespace A237930

/-- `ogf((3-2x)/(1-4x+3x^2))` -/
def P14669338303519010301.Spec : Prop :=
  ∀ n, P14669338303519010301.a n = A237930 n

end A237930

/-! ## A237930.P224450895425049893

`∑[3*a(n-1)]` with `a(0)=3, a(1)=7`
-/

namespace A237930.P224450895425049893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237930.P224450895425049893

namespace A237930

/-- `∑[3*a(n-1)]` -/
def P224450895425049893.Spec : Prop :=
  ∀ n, (P224450895425049893.a n : ℤ) = A237930 n

end A237930

/-! ## A237930.P10928279206031364941

`or(2, 3*a(n-1)-1)` with `a(0)=3`
-/

namespace A237930.P10928279206031364941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 2 (3 * a (n - 1) - 1)

end

end A237930.P10928279206031364941

namespace A237930

/-- `or(2, 3*a(n-1)-1)` -/
def P10928279206031364941.Spec : Prop :=
  ∀ n, P10928279206031364941.a n = A237930 n

end A237930

/-! ## A237930.P8784577712896120315

`xor(2, 3*a(n-1)-1)` with `a(0)=3`
-/

namespace A237930.P8784577712896120315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor 2 (3 * a (n - 1) - 1)

end

end A237930.P8784577712896120315

namespace A237930

/-- `xor(2, 3*a(n-1)-1)` -/
def P8784577712896120315.Spec : Prop :=
  ∀ n, P8784577712896120315.a n = A237930 n

end A237930

/-! ## A237930.P18101846994425118921

`3*(1-(2/3-a(n-1)))` with `a(0)=3`
-/

namespace A237930.P18101846994425118921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  3 * (1 - ((2 : ℚ) / 3 - a (n - 1)))

end

end A237930.P18101846994425118921

namespace A237930

/-- `3*(1-(2/3-a(n-1)))` -/
def P18101846994425118921.Spec : Prop :=
  ∀ n, P18101846994425118921.a n = (A237930 n : ℚ)

end A237930

/-! ## A237930.P7674391477388627791

`floor(4*a(n-1)-(a(n-1)-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A237930.P7674391477388627791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 1)

end

end A237930.P7674391477388627791

namespace A237930

/-- `floor(4*a(n-1)-(a(n-1)-1))` -/
def P7674391477388627791.Spec : Prop :=
  ∀ n, P7674391477388627791.a n = A237930 n

end A237930

/-! ## A237930.P18354499430828730447

`floor(a(n-1)+a(n-1)+a(n-1)+1)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A237930.P18354499430828730447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 1))

end

end A237930.P18354499430828730447

namespace A237930

/-- `floor(a(n-1)+a(n-1)+a(n-1)+1)` -/
def P18354499430828730447.Spec : Prop :=
  ∀ n, (P18354499430828730447.a n : ℤ) = A237930 n

theorem P18354499430828730447.correct : P18354499430828730447.Spec := by
  intro n
  simp only [A237930, Nat.add_sub_cancel, A237930.P18354499430828730447.a, A237930.P5739970659027604130.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A237930

/-! ## A237930.P1795580428953008733

`Δ[A108765(n)]`
-/

namespace A237930.P1795580428953008733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237930.P1795580428953008733

namespace A237930

/-- `Δ[A108765(n)]` -/
def P1795580428953008733.Spec : Prop :=
  ∀ n, P1795580428953008733.a n = A237930 n

end A237930

/-! ## A237930.P9874102270845601750

`∑[A141495(n+1)]`
-/

namespace A237930.P9874102270845601750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237930.P9874102270845601750

namespace A237930

/-- `∑[A141495(n+1)]` -/
def P9874102270845601750.Spec : Prop :=
  ∀ n, P9874102270845601750.a n = A237930 n

end A237930

/-! ## A237930.P14382402279703779347

`A329774(3*n+2)`
-/

namespace A237930.P14382402279703779347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329774 (3 * n + 2)

end

end A237930.P14382402279703779347

namespace A237930

/-- `A329774(3*n+2)` -/
def P14382402279703779347.Spec : Prop :=
  ∀ n, P14382402279703779347.a n = A237930 n

end A237930

/-! ## A237930.P3379664309885461730

`A027107(n+1)/2`
-/

namespace A237930.P3379664309885461730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027107 (n + 1) : ℚ) / 2

end

end A237930.P3379664309885461730

namespace A237930

/-- `A027107(n+1)/2` -/
def P3379664309885461730.Spec : Prop :=
  ∀ n, P3379664309885461730.a n = (A237930 n : ℚ)

end A237930

/-! ## A237930.P13470696306740862906

`(A355492(n)+1)/2`
-/

namespace A237930.P13470696306740862906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355492 n + 1 : ℚ) / 2

end

end A237930.P13470696306740862906

namespace A237930

/-- `(A355492(n)+1)/2` -/
def P13470696306740862906.Spec : Prop :=
  ∀ n, P13470696306740862906.a n = (A237930 n : ℚ)

end A237930

/-! ## A237930.P12160676456366701864

`(A005032(n)-1)/2`
-/

namespace A237930.P12160676456366701864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005032 n - 1 : ℚ) / 2

end

end A237930.P12160676456366701864

namespace A237930

/-- `(A005032(n)-1)/2` -/
def P12160676456366701864.Spec : Prop :=
  ∀ n, P12160676456366701864.a n = (A237930 n : ℚ)

end A237930

/-! ## A237930.P16128261786674455242

`(A082541(n+1)-1)/2`
-/

namespace A237930.P16128261786674455242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082541 (n + 1) - 1 : ℚ) / 2

end

end A237930.P16128261786674455242

namespace A237930

/-- `(A082541(n+1)-1)/2` -/
def P16128261786674455242.Spec : Prop :=
  ∀ n, P16128261786674455242.a n = (A237930 n : ℚ)

end A237930

/-! ## A237930.P11041646572661669168

`(A116952(n+1)+1)/3`
-/

namespace A237930.P11041646572661669168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116952 (n + 1) + 1 : ℚ) / 3

end

end A237930.P11041646572661669168

namespace A237930

/-- `(A116952(n+1)+1)/3` -/
def P11041646572661669168.Spec : Prop :=
  ∀ n, P11041646572661669168.a n = (A237930 n : ℚ)

end A237930

/-! ## A237930.P8057876364400382721

`(A199109(n+1)-2)/3`
-/

namespace A237930.P8057876364400382721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199109 (n + 1) - 2 : ℚ) / 3

end

end A237930.P8057876364400382721

namespace A237930

/-- `(A199109(n+1)-2)/3` -/
def P8057876364400382721.Spec : Prop :=
  ∀ n, P8057876364400382721.a n = (A237930 n : ℚ)

end A237930

/-! ## A237930.P9001850258232105445

`A358027(2*n+3)/2`
-/

namespace A237930.P9001850258232105445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358027 (2 * n + 3) : ℚ) / 2

end

end A237930.P9001850258232105445

namespace A237930

/-- `A358027(2*n+3)/2` -/
def P9001850258232105445.Spec : Prop :=
  ∀ n, P9001850258232105445.a n = (A237930 n : ℚ)

end A237930

/-!
# A237931: Number of (n+1)X(1+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237931, there is no canonical definition to state claims against.
-/

/-! ## A237931.P10935597781249604796

`A237936(∑[n]+1)`
-/

namespace A237931.P10935597781249604796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237931.P10935597781249604796

/-! ## A237931.P2847873969813398604

`A237936(A000124(n))+char[19]`
-/

namespace A237931.P2847873969813398604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237931.P2847873969813398604

/-! ## A237931.P1293583390290732439

`record[A010054(n)*A237936(n+1)]`
-/

namespace A237931.P1293583390290732439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237931.P1293583390290732439

/-! ## A237931.P7651754885548173932

`record[A237936(n+1)/A009963(n)]`
-/

namespace A237931.P7651754885548173932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237936 (n + 1) : ℚ) / (A009963 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237931.P7651754885548173932

/-! ## A237931.P6120857767620262181

`record[A237936(n+1)/A022170(n)]`
-/

namespace A237931.P6120857767620262181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237936 (n + 1) : ℚ) / (A022170 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237931.P6120857767620262181

/-!
# A237932: Number of (n+1)X(2+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237932, there is no canonical definition to state claims against.
-/

/-! ## A237932.P134518163955029677

`A237936(∑[n+1]+2)`
-/

namespace A237932.P134518163955029677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237932.P134518163955029677

/-! ## A237932.P522497250439442549

`record[A010054(n)*A237936(n+2)]`
-/

namespace A237932.P522497250439442549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237936 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237932.P522497250439442549

/-! ## A237932.P14585934675627348002

`record[root(A237936(n+2), A002260(n+1))]`
-/

namespace A237932.P14585934675627348002
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237936 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237932.P14585934675627348002

/-! ## A237932.P8653751811187241110

`record[A237936(Δ[A003453(n+5)])]`
-/

namespace A237932.P8653751811187241110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237932.P8653751811187241110

/-! ## A237932.P5424832938242192174

`record[A237936(A000096(val(n+1, 2)+1))]`
-/

namespace A237932.P5424832938242192174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237932.P5424832938242192174

/-!
# A237933: Number of (n+1)X(3+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237933, there is no canonical definition to state claims against.
-/

/-! ## A237933.P1224552250530410987

`A237936(∑[n+2]+4)`
-/

namespace A237933.P1224552250530410987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237933.P1224552250530410987

/-! ## A237933.P15337195432236588871

`record[A237936(A167499(n)-4*n)]`
-/

namespace A237933.P15337195432236588871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A167499 n - (4 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237933.P15337195432236588871

/-! ## A237933.P2389977002227777582

`A237936(A167614(n+1))+∑{digits}[n, C(#, 9)]`
-/

namespace A237933.P2389977002227777582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A167614 (n + 1)).toNat + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)

end

end A237933.P2389977002227777582

/-! ## A237933.P7147855133993997653

`A237936(A167614(n+1))+A011744(n)`
-/

namespace A237933.P7147855133993997653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A167614 (n + 1)).toNat + A011744 n

end

end A237933.P7147855133993997653

/-! ## A237933.P16395733876696143077

`A237936(A167614(n+1))+A120042(n)`
-/

namespace A237933.P16395733876696143077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A167614 (n + 1)).toNat + A120042 n

end

end A237933.P16395733876696143077

/-!
# A237934: Number of (n+1)X(4+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237934, there is no canonical definition to state claims against.
-/

/-! ## A237934.P6862312477351851729

`A237936(A374004(n+1))`
-/

namespace A237934.P6862312477351851729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A374004 (n + 1)).toNat

end

end A237934.P6862312477351851729

/-! ## A237934.P13353632921494361084

`A237936(A141214(n)+7)`
-/

namespace A237934.P13353632921494361084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A141214 n + 7).toNat

end

end A237934.P13353632921494361084

/-! ## A237934.P3607785416176399458

`A237936(A052905(n)+9)`
-/

namespace A237934.P3607785416176399458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A052905 n + 9).toNat

end

end A237934.P3607785416176399458

/-! ## A237934.P1422982857614745079

`A237936(A055999(n)+10)`
-/

namespace A237934.P1422982857614745079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A055999 n + 10).toNat

end

end A237934.P1422982857614745079

/-!
# A237935: Number of (n+1)X(5+1) 0..3 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237935, there is no canonical definition to state claims against.
-/

/-! ## A237935.P12661192125757455483

`A237936(A374005(n+1))`
-/

namespace A237935.P12661192125757455483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A374005 (n + 1)).toNat

end

end A237935.P12661192125757455483

/-! ## A237935.P4086606738224477849

`A237936(A155212(n)+13)`
-/

namespace A237935.P4086606738224477849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237936 (A155212 n + 13).toNat

end

end A237935.P4086606738224477849

/-!
# A237937: Number of (n+1)X(n+1) 0..2 arrays with the maximum minus the minimum of every 2X2 subblock equal.

The programs for A237937, there is no canonical definition to state claims against.
-/

/-! ## A237937.P1493302846916357888

`A237945((n+1)²+n²)`
-/

namespace A237937.P1493302846916357888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 ((n + 1) ^ 2 + n ^ 2)

end

end A237937.P1493302846916357888

/-!
# A237938: Number of (n+1) X (1+1) 0..2 arrays with the maximum minus the minimum of every 2 X 2 subblock equal.

The programs for A237938, there is no canonical definition to state claims against.
-/

/-! ## A237938.P9026474239960893789

`A237945(∑[n]+1)`
-/

namespace A237938.P9026474239960893789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237938.P9026474239960893789

/-! ## A237938.P3718505944610532874

`or(1, A237945(A000124(n)))`
-/

namespace A237938.P3718505944610532874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237945 (A000124 n).toNat)

end

end A237938.P3718505944610532874

/-! ## A237938.P3916461833949658221

`record[A237945(A286244(n+1))]`
-/

namespace A237938.P3916461833949658221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A286244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237938.P3916461833949658221

/-! ## A237938.P2989557947318556694

`record[root(A237945(n+1), A038730(n+1))]`
-/

namespace A237938.P2989557947318556694
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237945 (n + 1) : ℝ) ^ (1 / (A038730 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237938.P2989557947318556694

/-! ## A237938.P525406095103507448

`record[gcd(A237945(n+1), A301951(n+1))]`
-/

namespace A237938.P525406095103507448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A237945 (n + 1)) (A301951 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237938.P525406095103507448

/-!
# A237939: Number of (n+1)X(2+1) 0..2 arrays with the maximum minus the minimum of every 2X2 subblock equal.

The programs for A237939, there is no canonical definition to state claims against.
-/

/-! ## A237939.P14187869351773249720

`A237945(∑[n+1]+2)`
-/

namespace A237939.P14187869351773249720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237939.P14187869351773249720

/-! ## A237939.P9772709754496453941

`A049077(2*n+1)*A237945(A132337(n+2))`
-/

namespace A237939.P9772709754496453941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * n + 1) * A237945 (A132337 (n + 2)).toNat

end

end A237939.P9772709754496453941

/-!
# A237940: Number of (n+1)X(3+1) 0..2 arrays with the maximum minus the minimum of every 2X2 subblock equal.

The programs for A237940, there is no canonical definition to state claims against.
-/

/-! ## A237940.P14617785672450087107

`A237945(∑[n+2]+4)`
-/

namespace A237940.P14617785672450087107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237940.P14617785672450087107

/-! ## A237940.P5664765185296981798

`or(1, A237945(A167614(n+1)))`
-/

namespace A237940.P5664765185296981798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237945 (A167614 (n + 1)).toNat)

end

end A237940.P5664765185296981798

/-! ## A237940.P13008257849059516536

`A237945(A167614(n+1))+A025469(n)`
-/

namespace A237940.P13008257849059516536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A167614 (n + 1)).toNat + A025469 n

end

end A237940.P13008257849059516536

/-! ## A237940.P4484941407129970455

`lcm(A033999(n), A237945(A167614(n+1)))`
-/

namespace A237940.P4484941407129970455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A237945 (A167614 (n + 1)).toNat)

end

end A237940.P4484941407129970455

/-! ## A237940.P9772084958963054142

`A237945(A167614(n+1))+char[A237945(n+1)]`
-/

namespace A237940.P9772084958963054142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A237940.P9772084958963054142

/-!
# A237941: Number of (n+1)X(4+1) 0..2 arrays with the maximum minus the minimum of every 2X2 subblock equal.

The programs for A237941, there is no canonical definition to state claims against.
-/

/-! ## A237941.P8576636888308321080

`A237945(A374004(n+1))`
-/

namespace A237941.P8576636888308321080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A374004 (n + 1)).toNat

end

end A237941.P8576636888308321080

/-! ## A237941.P10505702547783871200

`A237945(A052905(n)+9)`
-/

namespace A237941.P10505702547783871200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A052905 n + 9).toNat

end

end A237941.P10505702547783871200

/-! ## A237941.P7970213218355330576

`A237945(A055999(n)+10)`
-/

namespace A237941.P7970213218355330576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A055999 n + 10).toNat

end

end A237941.P7970213218355330576

/-! ## A237941.P3491331703411682477

`A237945(A167614(n+2)+1)`
-/

namespace A237941.P3491331703411682477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A167614 (n + 2) + 1).toNat

end

end A237941.P3491331703411682477

/-! ## A237941.P13103943759555692968

`A237945(A166136(n+2)-2)`
-/

namespace A237941.P13103943759555692968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A166136 (n + 2) - 2).toNat

end

end A237941.P13103943759555692968

/-!
# A237942: Number of (n+1)X(5+1) 0..2 arrays with the maximum minus the minimum of every 2X2 subblock equal.

The programs for A237942, there is no canonical definition to state claims against.
-/

/-! ## A237942.P5711186733357217132

`A237945(A374005(n+1))`
-/

namespace A237942.P5711186733357217132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A374005 (n + 1)).toNat

end

end A237942.P5711186733357217132

/-! ## A237942.P5735875053103911646

`A237945(A000124(n+5)-(n+1))`
-/

namespace A237942.P5735875053103911646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A237942.P5735875053103911646

/-!
# A237943: Number of (n+1)X(6+1) 0..2 arrays with the maximum minus the minimum of every 2X2 subblock equal.

The programs for A237943, there is no canonical definition to state claims against.
-/

/-! ## A237943.P5084702194276038965

`A237945(A374007(n+1))`
-/

namespace A237943.P5084702194276038965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (A374007 (n + 1)).toNat

end

end A237943.P5084702194276038965

/-! ## A237943.P15685295007054134728

`A237945(eq[3, A219347(n)])`
-/

namespace A237943.P15685295007054134728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237943.P15685295007054134728

/-! ## A237943.P18358823502293860214

`A237945(eq[5, A193592(n)])`
-/

namespace A237943.P18358823502293860214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237943.P18358823502293860214

/-!
# A237946: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237946, there is no canonical definition to state claims against.
-/

/-! ## A237946.P17479184036050736162

`A237951(∑[n]+1)`
-/

namespace A237946.P17479184036050736162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237946.P17479184036050736162

/-! ## A237946.P917230970740715017

`lcm((-1)^n, A237951(A000124(n)))`
-/

namespace A237946.P917230970740715017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A237951 (A000124 n).toNat)

end

end A237946.P917230970740715017

/-! ## A237946.P7243046496535674691

`record[A010054(n)*A237951(n+1)]`
-/

namespace A237946.P7243046496535674691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237946.P7243046496535674691

/-! ## A237946.P9406759141220247986

`record[A103451(n)*A237951(n+1)]`
-/

namespace A237946.P9406759141220247986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A237951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237946.P9406759141220247986

/-! ## A237946.P18169617907000219477

`record[A237951(n+1)/A008958(n)]`
-/

namespace A237946.P18169617907000219477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237951 (n + 1) : ℚ) / (A008958 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237946.P18169617907000219477

/-!
# A237947: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237947, there is no canonical definition to state claims against.
-/

/-! ## A237947.P1723771069735362603

`A237951(∑[n+1]+2)`
-/

namespace A237947.P1723771069735362603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237947.P1723771069735362603

/-! ## A237947.P16799555058317519102

`record[A010054(n)*A237951(n+2)]`
-/

namespace A237947.P16799555058317519102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237947.P16799555058317519102

/-! ## A237947.P8682772137951641420

`record[root(A237951(n+3), A110440(n))]`
-/

namespace A237947.P8682772137951641420
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237951 (n + 3) : ℝ) ^ (1 / (A110440 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237947.P8682772137951641420

/-! ## A237947.P17809669839753574561

`record[root(A237951(n+2), A226441(n+1))]`
-/

namespace A237947.P17809669839753574561
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237951 (n + 2) : ℝ) ^ (1 / (A226441 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237947.P17809669839753574561

/-! ## A237947.P13255851987297177732

`A237951(A252752(2*n+4))+A000007(n+2)`
-/

namespace A237947.P13255851987297177732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (A252752 (2 * n + 4)).toNat + A000007 (n + 2)

end

end A237947.P13255851987297177732

/-!
# A237948: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237948, there is no canonical definition to state claims against.
-/

/-! ## A237948.P7670019543797676565

`A237951(∑[n+2]+4)`
-/

namespace A237948.P7670019543797676565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237948.P7670019543797676565

/-! ## A237948.P5592789705709439081

`record[gcd(A122285(n), A237951(n+4))]`
-/

namespace A237948.P5592789705709439081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122285 n) (A237951 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237948.P5592789705709439081

/-! ## A237948.P13402065262745709963

`or(C(2, n+2), A237951(A167614(n+1)))`
-/

namespace A237948.P13402065262745709963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A237951 (A167614 (n + 1)).toNat)

end

end A237948.P13402065262745709963

/-! ## A237948.P1579931647254655875

`A237951(A167614(n+1))+A014083(n)`
-/

namespace A237948.P1579931647254655875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (A167614 (n + 1)).toNat + A014083 n

end

end A237948.P1579931647254655875

/-! ## A237948.P9459439698573307132

`A237951(A167614(n+1))+A025444(n)`
-/

namespace A237948.P9459439698573307132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (A167614 (n + 1)).toNat + A025444 n

end

end A237948.P9459439698573307132

/-!
# A237949: Number of (n+1) X (4+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237949, there is no canonical definition to state claims against.
-/

/-! ## A237949.P53905169260383303

`A237951(A374004(n+1))`
-/

namespace A237949.P53905169260383303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (A374004 (n + 1)).toNat

end

end A237949.P53905169260383303

/-! ## A237949.P16514178330723060077

`A237951(A141214(n)+7)`
-/

namespace A237949.P16514178330723060077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (A141214 n + 7).toNat

end

end A237949.P16514178330723060077

/-! ## A237949.P7005096245782910698

`A237951(A052905(n)+9)`
-/

namespace A237949.P7005096245782910698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (A052905 n + 9).toNat

end

end A237949.P7005096245782910698

/-! ## A237949.P5861876333175961849

`A237951(A055999(n)+10)`
-/

namespace A237949.P5861876333175961849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (A055999 n + 10).toNat

end

end A237949.P5861876333175961849

/-!
# A237950: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237950, there is no canonical definition to state claims against.
-/

/-! ## A237950.P14723043767745253012

`A237951(A374005(n+1))`
-/

namespace A237950.P14723043767745253012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (A374005 (n + 1)).toNat

end

end A237950.P14723043767745253012

/-! ## A237950.P1589788113236816980

`A237951(A167499(n+3))`
-/

namespace A237950.P1589788113236816980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (A167499 (n + 3)).toNat

end

end A237950.P1589788113236816980

/-! ## A237950.P368974081917055694

`A237951(A155212(n)+13)`
-/

namespace A237950.P368974081917055694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237951 (A155212 n + 13).toNat

end

end A237950.P368974081917055694

/-!
# A237952: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237952, there is no canonical definition to state claims against.
-/

/-! ## A237952.P12234690165651845128

`A237956(∑[n]+1)`
-/

namespace A237952.P12234690165651845128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237952.P12234690165651845128

/-! ## A237952.P12120063085816709039

`lcm(2, A237956(A000124(n)))`
-/

namespace A237952.P12120063085816709039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237956 (A000124 n).toNat)

end

end A237952.P12120063085816709039

/-! ## A237952.P2476819814616442354

`record[A237956(A056536(n+1))]`
-/

namespace A237952.P2476819814616442354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237952.P2476819814616442354

/-! ## A237952.P3370434745155449671

`record[A237956(A114091(n+1))]`
-/

namespace A237952.P3370434745155449671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237952.P3370434745155449671

/-! ## A237952.P17728832092011377226

`record[A237956(A276954(n+1))]`
-/

namespace A237952.P17728832092011377226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237952.P17728832092011377226

/-!
# A237953: Number of (n+1) X (2+1) 0..3 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237953, there is no canonical definition to state claims against.
-/

/-! ## A237953.P6541483115677293605

`A237956(∑[n+1]+2)`
-/

namespace A237953.P6541483115677293605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237953.P6541483115677293605

/-! ## A237953.P761647186013061909

`record[A237956(A056536(n+1)+1)]`
-/

namespace A237953.P761647186013061909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237953.P761647186013061909

/-! ## A237953.P3653273142829127542

`record[A237956(A114091(n+1)+1)]`
-/

namespace A237953.P3653273142829127542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237953.P3653273142829127542

/-! ## A237953.P7762426724157049477

`record[A010054(n)*A237956(n+2)]`
-/

namespace A237953.P7762426724157049477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237956 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237953.P7762426724157049477

/-! ## A237953.P13573203954120740802

`A033999(n)²*A237956(A152948(n+3))`
-/

namespace A237953.P13573203954120740802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A237956 (A152948 (n + 3)).toNat

end

end A237953.P13573203954120740802

/-!
# A237954: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237954, there is no canonical definition to state claims against.
-/

/-! ## A237954.P10074004128911925178

`A237956(∑[n+2]+4)`
-/

namespace A237954.P10074004128911925178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237954.P10074004128911925178

/-! ## A237954.P11292090408540391762

`lcm(2, A237956(A167614(n+1)))`
-/

namespace A237954.P11292090408540391762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237956 (A167614 (n + 1)).toNat)

end

end A237954.P11292090408540391762

/-! ## A237954.P7351153917582334603

`A237956(A167614(n+1))+A011734(n)`
-/

namespace A237954.P7351153917582334603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (A167614 (n + 1)).toNat + A011734 n

end

end A237954.P7351153917582334603

/-! ## A237954.P15656621135799240549

`A237956(A167614(n+1))+A011739(n)`
-/

namespace A237954.P15656621135799240549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (A167614 (n + 1)).toNat + A011739 n

end

end A237954.P15656621135799240549

/-! ## A237954.P10031051072814681608

`A237956(A167614(n+1))+A011743(n)`
-/

namespace A237954.P10031051072814681608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (A167614 (n + 1)).toNat + A011743 n

end

end A237954.P10031051072814681608

/-!
# A237955: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237955, there is no canonical definition to state claims against.
-/

/-! ## A237955.P262198070353866183

`A237956(∑[n+3]+7)`
-/

namespace A237955.P262198070353866183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237956 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A237955.P262198070353866183

/-!
# A237957: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237957, there is no canonical definition to state claims against.
-/

/-! ## A237957.P1454634740560001928

`A237965(∑[4*n]+1)`
-/

namespace A237957.P1454634740560001928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237957.P1454634740560001928

/-! ## A237957.P582823387101747958

`record[A237965(A330613(n+1))]`
-/

namespace A237957.P582823387101747958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237957.P582823387101747958

/-! ## A237957.P3820382779317534591

`A237965(A001844(n))+C(n, 64)`
-/

namespace A237957.P3820382779317534591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A001844 n).toNat + (Nat.choose n 64 : ℤ)

end

end A237957.P3820382779317534591

/-! ## A237957.P8872600972693599775

`record[A237965(A001844(val(n+1, 2)))]`
-/

namespace A237957.P8872600972693599775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237957.P8872600972693599775

/-!
# A237958: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237958, there is no canonical definition to state claims against.
-/

/-! ## A237958.P4738571603496579089

`A237965(∑[n]+1)`
-/

namespace A237958.P4738571603496579089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237958.P4738571603496579089

/-! ## A237958.P12533252213669743124

`record[A237965(n+1)/A056940(n)]`
-/

namespace A237958.P12533252213669743124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237965 (n + 1) : ℚ) / (A056940 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237958.P12533252213669743124

/-! ## A237958.P10872493695716243502

`record[gcd(A109754(n), A237965(n+1))]`
-/

namespace A237958.P10872493695716243502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109754 n) (A237965 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237958.P10872493695716243502

/-! ## A237958.P12333880983472770210

`record[A237965(n+1)/A211836(n+1)]`
-/

namespace A237958.P12333880983472770210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237965 (n + 1) : ℚ) / (A211836 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237958.P12333880983472770210

/-! ## A237958.P2967270843626323590

`record[root(A237965(n+1), A105728(n+1))]`
-/

namespace A237958.P2967270843626323590
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237965 (n + 1) : ℝ) ^ (1 / (A105728 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237958.P2967270843626323590

/-!
# A237959: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237959, there is no canonical definition to state claims against.
-/

/-! ## A237959.P11165667480902040784

`A237965(∑[n+1]+2)`
-/

namespace A237959.P11165667480902040784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237959.P11165667480902040784

/-! ## A237959.P2073926682907589503

`record[gcd(A109754(n), A237965(n+2))]`
-/

namespace A237959.P2073926682907589503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109754 n) (A237965 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237959.P2073926682907589503

/-! ## A237959.P10261032348767918594

`record[A237965(A133263(val(n+1, 2)+1))]`
-/

namespace A237959.P10261032348767918594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237959.P10261032348767918594

/-! ## A237959.P17540885045661210071

`record[root(A237965(n+2), A209073(n+1))]`
-/

namespace A237959.P17540885045661210071
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237965 (n + 2) : ℝ) ^ (1 / (A209073 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237959.P17540885045661210071

/-! ## A237959.P6093222442133817146

`A001511(2*n+5)*A237965(A252460(2*(n+2)))`
-/

namespace A237959.P6093222442133817146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 5) * A237965 (A252460 (2 * (n + 2))).toNat

end

end A237959.P6093222442133817146

/-!
# A237960: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237960, there is no canonical definition to state claims against.
-/

/-! ## A237960.P2511043225394582549

`A237965(∑[n+2]+4)`
-/

namespace A237960.P2511043225394582549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237960.P2511043225394582549

/-! ## A237960.P7237883698643519361

`A119335(n)*A237965(A167614(n+1))`
-/

namespace A237960.P7237883698643519361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A237965 (A167614 (n + 1)).toNat

end

end A237960.P7237883698643519361

/-! ## A237960.P2742596909902287989

`lcm(A033999(n), A237965(A167614(n+1)))`
-/

namespace A237960.P2742596909902287989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A237965 (A167614 (n + 1)).toNat)

end

end A237960.P2742596909902287989

/-! ## A237960.P17821740491198237099

`or(A000038(n), A237965(A167614(n+1)))`
-/

namespace A237960.P17821740491198237099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A237965 (A167614 (n + 1)).toNat)

end

end A237960.P17821740491198237099

/-! ## A237960.P18196690692593786425

`A237965(A167614(n+1))+A008683(8*n+4)`
-/

namespace A237960.P18196690692593786425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A167614 (n + 1)).toNat + A008683 (8 * n + 4)

end

end A237960.P18196690692593786425

/-!
# A237961: Number of (n+1) X (4+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237961, there is no canonical definition to state claims against.
-/

/-! ## A237961.P17580976057107235805

`A237965(A374004(n+1))`
-/

namespace A237961.P17580976057107235805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A374004 (n + 1)).toNat

end

end A237961.P17580976057107235805

/-! ## A237961.P4692412773690382499

`A237965(A141214(n)+7)`
-/

namespace A237961.P4692412773690382499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A141214 n + 7).toNat

end

end A237961.P4692412773690382499

/-! ## A237961.P16851794063033433048

`A237965(A052905(n)+9)`
-/

namespace A237961.P16851794063033433048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A052905 n + 9).toNat

end

end A237961.P16851794063033433048

/-! ## A237961.P8905191902583301691

`A237965(A055999(n)+10)`
-/

namespace A237961.P8905191902583301691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A055999 n + 10).toNat

end

end A237961.P8905191902583301691

/-! ## A237961.P4059739246485863400

`A237965(A167614(n+2)+1)`
-/

namespace A237961.P4059739246485863400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A167614 (n + 2) + 1).toNat

end

end A237961.P4059739246485863400

/-!
# A237962: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237962, there is no canonical definition to state claims against.
-/

/-! ## A237962.P16790693349642298283

`A237965(A374005(n+1))`
-/

namespace A237962.P16790693349642298283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A374005 (n + 1)).toNat

end

end A237962.P16790693349642298283

/-! ## A237962.P12412890138631416684

`A237965(A056000(n)+15)`
-/

namespace A237962.P12412890138631416684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A056000 n + 15).toNat

end

end A237962.P12412890138631416684

/-! ## A237962.P6193946875929594946

`A237965(A167614(n+3)+2)`
-/

namespace A237962.P6193946875929594946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A167614 (n + 3) + 2).toNat

end

end A237962.P6193946875929594946

/-! ## A237962.P2938246908126917154

`A237965(eq[6, A131818(n+1)])`
-/

namespace A237962.P2938246908126917154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237962.P2938246908126917154

/-! ## A237962.P10225364904679535855

`A237965(eq[16, A059268(n)]+1)`
-/

namespace A237962.P10225364904679535855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A237962.P10225364904679535855

/-!
# A237963: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237963, there is no canonical definition to state claims against.
-/

/-! ## A237963.P15569054744642731768

`A237965(∑[n+5]+16)`
-/

namespace A237963.P15569054744642731768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A237963.P15569054744642731768

/-! ## A237963.P5072561823981085304

`lcm(2, A237965(A046691(n+4)-1))`
-/

namespace A237963.P5072561823981085304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237965 (A046691 (n + 4) - 1).toNat)

end

end A237963.P5072561823981085304

/-!
# A237964: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237964, there is no canonical definition to state claims against.
-/

/-! ## A237964.P16348399415308097847

`A237965(A374008(n+1))`
-/

namespace A237964.P16348399415308097847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A374008 (n + 1)).toNat

end

end A237964.P16348399415308097847

/-! ## A237964.P10678947291422301434

`A237965(A056119(n)+28)`
-/

namespace A237964.P10678947291422301434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A056119 n + 28).toNat

end

end A237964.P10678947291422301434

/-! ## A237964.P16515822782050824672

`A237965(eq[11, A066657(n)])`
-/

namespace A237964.P16515822782050824672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237964.P16515822782050824672

/-! ## A237964.P11996179298024849761

`A237965(A000217(n+6)+7)`
-/

namespace A237964.P11996179298024849761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (A000217 (n + 6) + 7).toNat

end

end A237964.P11996179298024849761

/-! ## A237964.P16062566940771629081

`A237965(eq[8, A131818(n+1)])`
-/

namespace A237964.P16062566940771629081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237964.P16062566940771629081

/-!
# A237965: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237965, there is no canonical definition to state claims against.
-/

/-! ## A237965.P5026647354506593828

`or(A000005(A125332(n)), A237868(n+1))`
-/

namespace A237965.P5026647354506593828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A125332 n).toNat) (A237868 (n + 1))

end

end A237965.P5026647354506593828

/-! ## A237965.P12865569782042485746

`or(A094937(A128441(n+1)), A237868(n+1))`
-/

namespace A237965.P12865569782042485746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094937 (A128441 (n + 1)).toNat) (A237868 (n + 1))

end

end A237965.P12865569782042485746

/-!
# A237966: Number of (n+1)X(n+1) 0..3 arrays with the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237966, there is no canonical definition to state claims against.
-/

/-! ## A237966.P5225217711764397860

`A237974(∑[4*n]+1)`
-/

namespace A237966.P5225217711764397860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237966.P5225217711764397860

/-! ## A237966.P14063008655077231807

`lcm(2, A237974(A001844(n)))`
-/

namespace A237966.P14063008655077231807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237974 (A001844 n).toNat)

end

end A237966.P14063008655077231807

/-! ## A237966.P2741119892888200839

`record[gcd(A037012(n), A237974(n+1))]`
-/

namespace A237966.P2741119892888200839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A237974 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237966.P2741119892888200839

/-! ## A237966.P6228977115310403534

`A237974(A001844(n))+A102683(n)`
-/

namespace A237966.P6228977115310403534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A001844 n).toNat + A102683 n

end

end A237966.P6228977115310403534

/-! ## A237966.P962787500128573579

`A007318(∑[n])*A237974(A001844(n))`
-/

namespace A237966.P962787500128573579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A237974 (A001844 n).toNat

end

end A237966.P962787500128573579

/-!
# A237967: Number of (n+1)X(1+1) 0..3 arrays with the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237967, there is no canonical definition to state claims against.
-/

/-! ## A237967.P10137301581097474717

`A237974(∑[n]+1)`
-/

namespace A237967.P10137301581097474717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237967.P10137301581097474717

/-! ## A237967.P2582736033892244523

`record[root(A237974(n+1), A059268(n))]`
-/

namespace A237967.P2582736033892244523
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237974 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237967.P2582736033892244523

/-! ## A237967.P8886876452294212694

`record[root(A237974(n+1), A074909(n))]`
-/

namespace A237967.P8886876452294212694
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237974 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237967.P8886876452294212694

/-! ## A237967.P13624101036065447956

`record[gcd(A002262(n), A237974(n+1))]`
-/

namespace A237967.P13624101036065447956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237974 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237967.P13624101036065447956

/-! ## A237967.P13777558177593214466

`gcd(n, n+1)*A237974(A000124(n))`
-/

namespace A237967.P13777558177593214466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A237974 (A000124 n).toNat

end

end A237967.P13777558177593214466

/-!
# A237968: Number of (n+1)X(2+1) 0..3 arrays with the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237968, there is no canonical definition to state claims against.
-/

/-! ## A237968.P6808861554310375368

`A237974(∑[n+1]+2)`
-/

namespace A237968.P6808861554310375368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237968.P6808861554310375368

/-! ## A237968.P4741459224340668350

`record[root(A237974(n+2), A059268(n))]`
-/

namespace A237968.P4741459224340668350
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237974 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237968.P4741459224340668350

/-! ## A237968.P18091285196498696082

`record[root(A237974(n+2), A074909(n))]`
-/

namespace A237968.P18091285196498696082
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237974 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237968.P18091285196498696082

/-! ## A237968.P5294235382963782729

`record[gcd(A002262(n), A237974(n+2))]`
-/

namespace A237968.P5294235382963782729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237974 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237968.P5294235382963782729

/-! ## A237968.P2311721083440839768

`record[A237974(Δ[A003453(n+5)])]`
-/

namespace A237968.P2311721083440839768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237968.P2311721083440839768

/-!
# A237969: Number of (n+1)X(3+1) 0..3 arrays with the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237969, there is no canonical definition to state claims against.
-/

/-! ## A237969.P8587854281006832022

`A237974(∑[n+2]+4)`
-/

namespace A237969.P8587854281006832022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237969.P8587854281006832022

/-! ## A237969.P17048171859898413999

`A237974(A167614(n+1))+A185238(n)`
-/

namespace A237969.P17048171859898413999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A167614 (n + 1)).toNat + A185238 n

end

end A237969.P17048171859898413999

/-! ## A237969.P5582901683241575867

`A237974(A167614(n+1))+A185284(n)`
-/

namespace A237969.P5582901683241575867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A167614 (n + 1)).toNat + A185284 n

end

end A237969.P5582901683241575867

/-! ## A237969.P9731507032968018042

`lcm(A043562(n), A237974(A167614(n+1)))`
-/

namespace A237969.P9731507032968018042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043562 n) (A237974 (A167614 (n + 1)).toNat)

end

end A237969.P9731507032968018042

/-! ## A237969.P18442557044908269783

`A237974(A167614(n+1))+A008683(8*n+4)`
-/

namespace A237969.P18442557044908269783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A167614 (n + 1)).toNat + A008683 (8 * n + 4)

end

end A237969.P18442557044908269783

/-!
# A237970: Number of (n+1) X (4+1) 0..3 arrays with the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237970, there is no canonical definition to state claims against.
-/

/-! ## A237970.P13472392386711537971

`A237974(A374004(n+1))`
-/

namespace A237970.P13472392386711537971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A374004 (n + 1)).toNat

end

end A237970.P13472392386711537971

/-! ## A237970.P14176948316800440806

`A237974(A052905(n)+9)`
-/

namespace A237970.P14176948316800440806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A052905 n + 9).toNat

end

end A237970.P14176948316800440806

/-! ## A237970.P3739390176778291496

`A237974(A055999(n)+10)`
-/

namespace A237970.P3739390176778291496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A055999 n + 10).toNat

end

end A237970.P3739390176778291496

/-! ## A237970.P2709272534551286748

`A237974(A167614(n+2)+1)`
-/

namespace A237970.P2709272534551286748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A167614 (n + 2) + 1).toNat

end

end A237970.P2709272534551286748

/-! ## A237970.P13340080257481398169

`A237974(eq[5, A131818(n+1)])`
-/

namespace A237970.P13340080257481398169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237970.P13340080257481398169

/-!
# A237971: Number of (n+1)X(5+1) 0..3 arrays with the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237971, there is no canonical definition to state claims against.
-/

/-! ## A237971.P17625397930874602508

`A237974(A374005(n+1))`
-/

namespace A237971.P17625397930874602508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A374005 (n + 1)).toNat

end

end A237971.P17625397930874602508

/-! ## A237971.P3607388474080979704

`A237974(A155212(n)+13)`
-/

namespace A237971.P3607388474080979704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A155212 n + 13).toNat

end

end A237971.P3607388474080979704

/-! ## A237971.P17292586593233657919

`A237974(eq[6, A131818(n+1)])`
-/

namespace A237971.P17292586593233657919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237971.P17292586593233657919

/-! ## A237971.P11114135024741956645

`A237974(eq[4, A193592(n)])`
-/

namespace A237971.P11114135024741956645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237971.P11114135024741956645

/-! ## A237971.P10379411127293238271

`A237974(Δ[A023545(n+1)])`
-/

namespace A237971.P10379411127293238271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (f1 (n + 1) - f1 n).toNat

end

end A237971.P10379411127293238271

/-!
# A237972: Number of (n+1)X(6+1) 0..3 arrays with the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237972, there is no canonical definition to state claims against.
-/

/-! ## A237972.P18068789830896061145

`A237974(A374007(n+1))`
-/

namespace A237972.P18068789830896061145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A374007 (n + 1)).toNat

end

end A237972.P18068789830896061145

/-! ## A237972.P14676932314625111878

`A237974(A000124(n+5)+5)`
-/

namespace A237972.P14676932314625111878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A000124 (n + 5) + 5).toNat

end

end A237972.P14676932314625111878

/-! ## A237972.P1577081583120126372

`A237974(eq[7, A131818(n+1)])`
-/

namespace A237972.P1577081583120126372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237972.P1577081583120126372

/-! ## A237972.P8242614061019047410

`A237974(eq[3, A219347(n)])`
-/

namespace A237972.P8242614061019047410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237972.P8242614061019047410

/-! ## A237972.P9505843813795260703

`A237974(eq[5, A193592(n)])`
-/

namespace A237972.P9505843813795260703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237972.P9505843813795260703

/-!
# A237973: Number of (n+1) X (7+1) 0..3 arrays with the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237973, there is no canonical definition to state claims against.
-/

/-! ## A237973.P16124598631729052589

`A237974(A374008(n+1))`
-/

namespace A237973.P16124598631729052589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (A374008 (n + 1)).toNat

end

end A237973.P16124598631729052589

/-! ## A237973.P11673088192277348100

`A237974(eq[8, A131818(n+1)])`
-/

namespace A237973.P11673088192277348100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237973.P11673088192277348100

/-! ## A237973.P11150129542626379853

`A237974(eq[4, A219347(n)])`
-/

namespace A237973.P11150129542626379853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237973.P11150129542626379853

/-! ## A237973.P11163082467602067318

`A237974(eq[6, A193592(n)])`
-/

namespace A237973.P11163082467602067318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237973.P11163082467602067318

/-! ## A237973.P3260900539981942468

`A237974(eq[7, A200370(n+1)])`
-/

namespace A237973.P3260900539981942468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237973.P3260900539981942468

/-!
# A237976: Number of strict partitions of n such that (least part) < number of parts.

The programs for A237976, there is no canonical definition to state claims against.
-/

/-! ## A237976.P430938537175616731

`A000009(n)-A025157(n)`
-/

namespace A237976.P430938537175616731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A025157 n

end

end A237976.P430938537175616731

/-! ## A237976.P6434823056050611066

`abs(A081360(n))-A025157(n)`
-/

namespace A237976.P6434823056050611066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A025157 n

end

end A237976.P6434823056050611066

/-! ## A237976.P3870540296907404550

`∑[A087897(n)]-A025157(n)`
-/

namespace A237976.P3870540296907404550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025157 n

end

end A237976.P3870540296907404550

/-! ## A237976.P4557622828634848060

`A035457(2*n)-A025157(n)`
-/

namespace A237976.P4557622828634848060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A025157 n

end

end A237976.P4557622828634848060

/-! ## A237976.P3732414588399483368

`A237977(n)-A096401(A000038(n)+n)`
-/

namespace A237976.P3732414588399483368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237977 n - A096401 (A000038 n + (n : ℤ)).toNat

end

end A237976.P3732414588399483368

/-! ## A237976.P10545301175828786615

`A054242(∑[n])-A025157(n)`
-/

namespace A237976.P10545301175828786615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f1 j) - A025157 n

end

end A237976.P10545301175828786615

/-!
# A237977: Number of strict partitions of n such that (least part) <= number of parts.

The programs for A237977, there is no canonical definition to state claims against.
-/

/-! ## A237977.P14577144840116554249

`A237976(n)+A096401(A000038(n)+n)`
-/

namespace A237977.P14577144840116554249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237976 n + A096401 (A000038 n + (n : ℤ)).toNat

end

end A237977.P14577144840116554249

/-! ## A237977.P11201623836990408112

`A000009(n)-A237979(A000038(n)+n)`
-/

namespace A237977.P11201623836990408112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A237979 (A000038 n + (n : ℤ)).toNat

end

end A237977.P11201623836990408112

/-! ## A237977.P13615372727299008240

`A048766(A198954(n)+A167030(n))`
-/

namespace A237977.P13615372727299008240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A198954 n + A167030 n).toNat

end

end A237977.P13615372727299008240

/-! ## A237977.P8672508979436184200

`A048766(xor(A001045(n), A061579(n)))`
-/

namespace A237977.P8672508979436184200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.xor (A001045 n) (A061579 n)).toNat

end

end A237977.P8672508979436184200

/-! ## A237977.P14048234099100987506

`A048766(A189740(n+1)-A080851(n))`
-/

namespace A237977.P14048234099100987506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A189740 (n + 1) - A080851 n).toNat

end

end A237977.P14048234099100987506

/-!
# A237979: Number of strict partitions of n such that (least part) > number of parts.

The programs for A237979, there is no canonical definition to state claims against.
-/

/-! ## A237979.P1617791845991386042

`Δ[A036469(n)]-A237977(n+1)`
-/

namespace A237979.P1617791845991386042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237977 (n + 1)

end

end A237979.P1617791845991386042

/-! ## A237979.P1389819931103301882

`A025157(n+1)-A096401(n+1)`
-/

namespace A237979.P1389819931103301882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025157 (n + 1) - A096401 (n + 1)

end

end A237979.P1389819931103301882

/-! ## A237979.P16024744951678751607

`A000009(n+1)-A237977(n+1)`
-/

namespace A237979.P16024744951678751607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A237977 (n + 1)

end

end A237979.P16024744951678751607

/-! ## A237979.P6975555594084084934

`Δ[A036469(n)-A237977(n)]-A237977(n)`
-/

namespace A237979.P6975555594084084934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - A237977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237977 n

end

end A237979.P6975555594084084934

/-! ## A237979.P2970826312869979690

`A025147(n+1)+A025147(n)-A237977(n+1)`
-/

namespace A237979.P2970826312869979690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A237977 (n + 1))

end

end A237979.P2970826312869979690

/-! ## A237979.P6172415431267916003

`A000009(n+1)-(A237976(n+1)+A096401(n+1))`
-/

namespace A237979.P6172415431267916003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - (A237976 (n + 1) + A096401 (n + 1))

end

end A237979.P6172415431267916003

/-! ## A237979.P6973778973472200188

`A025157(n+1)+A237976(n+1)-A237977(n+1)`
-/

namespace A237979.P6973778973472200188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025157 (n + 1) + (A237976 (n + 1) - A237977 (n + 1))

end

end A237979.P6973778973472200188

/-! ## A237979.P5529290464928807216

`A316996(n+1)+A317239(n+1)-A237977(n+1)`
-/

namespace A237979.P5529290464928807216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316996 (n + 1) + (A317239 (n + 1) - A237977 (n + 1))

end

end A237979.P5529290464928807216

/-! ## A237979.P11027712272097183833

`A304991(n+1)/A000041(n+1)-A237977(n+1)`
-/

namespace A237979.P11027712272097183833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304991 (n + 1) : ℚ) / (A000041 (n + 1) : ℚ) - (A237977 (n + 1) : ℚ)

end

end A237979.P11027712272097183833

/-! ## A237979.P15917842088601649365

`A284593(A253145(n))-A237977(n+1)`
-/

namespace A237979.P15917842088601649365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (A253145 n).toNat - A237977 (n + 1)

end

end A237979.P15917842088601649365

/-! ## A237979.P7156532176170366774

`A026835(A000124(n))-A237977(n+1)`
-/

namespace A237979.P7156532176170366774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026835 (A000124 n).toNat - A237977 (n + 1)

end

end A237979.P7156532176170366774

/-!
# A237980: Array: row n gives the number of distinct square partitions of n; see Comments.

The programs for A237980, there is no canonical definition to state claims against.
-/

/-! ## A237980.P5093717823220000158

`A185325(n+6)-A305930(A185325(A185325(n+5)))`
-/

namespace A237980.P5093717823220000158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 (n + 6) - A305930 (A185325 (A185325 (n + 5)).toNat).toNat

end

end A237980.P5093717823220000158

/-! ## A237980.P18179474714453506635

`floor(root((3-sqrt(5))*A171309(n+1), 7))`
-/

namespace A237980.P18179474714453506635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 - Real.sqrt (5 : ℝ)) * (A171309 (n + 1) : ℝ)) ^ (1 / (7 : ℝ))⌋

end

end A237980.P18179474714453506635

/-! ## A237980.P13936042999311380477

`A003056(floor(sqrt(A290436(n))))`
-/

namespace A237980.P13936042999311380477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.sqrt (A290436 n)).toNat

end

end A237980.P13936042999311380477

/-! ## A237980.P7038277710954294998

`A003056(round(sqrt(A290437(n))))`
-/

namespace A237980.P7038277710954294998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway (Real.sqrt (A290437 n : ℝ))).toNat

end

end A237980.P7038277710954294998

/-! ## A237980.P15297316412454163218

`A226764(A295068(n))`
-/

namespace A237980.P15297316412454163218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (A295068 n).toNat

end

end A237980.P15297316412454163218

/-!
# A237982: Triangular array read by rows: row n gives the NE partitions of n (see Comments).

The programs for A237982, there is no canonical definition to state claims against.
-/

/-! ## A237982.P11585631826622310824

`A080577(lt[A128156(n+1), A129836(n+1)])`
-/

namespace A237982.P11585631826622310824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A237982.P11585631826622310824

/-! ## A237982.P12979162459285370935

`A330371(∑[A000463(A183015(n+1))])`
-/

namespace A237982.P12979162459285370935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A183015 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330371 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237982.P12979162459285370935

/-! ## A237982.P1965608012756732634

`A036037(lt[A341142(3*n+4), A181882(n+4)])`
-/

namespace A237982.P1965608012756732634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341142 (3 * n + 4 + 15)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181882 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A237982.P1965608012756732634

/-! ## A237982.P1168968446774994782

`A036037(lt[A359908(n+1), A072621(2*(n+1))])`
-/

namespace A237982.P1168968446774994782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072621 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A237982.P1168968446774994782

/-! ## A237982.P9777760395616549839

`A330370(∑[A304042(A137339(n+1))])`
-/

namespace A237982.P9777760395616549839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A137339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237982.P9777760395616549839

/-!
# A237983: Triangular array read by rows: row n gives the SE partitions of n; see Comments.

The programs for A237983, there is no canonical definition to state claims against.
-/

/-! ## A237983.P7456026888943939187

`A322482(xor(4*n, A322483(2*n+1)))`
-/

namespace A237983.P7456026888943939187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322482 (Int.xor (4 * n : ℤ) (A322483 (2 * n + 1))).toNat

end

end A237983.P7456026888943939187

/-! ## A237983.P2603110673057738829

`A028293(A271275(n+4)+1)`
-/

namespace A237983.P2603110673057738829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028293 (A271275 (n + 4) + 1).toNat

end

end A237983.P2603110673057738829

/-! ## A237983.P10031217856800711792

`gcd(A001223(n+1), A095171(A250120(n)))`
-/

namespace A237983.P10031217856800711792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001223 (n + 1)) (A095171 (A250120 n).toNat)

end

end A237983.P10031217856800711792

/-! ## A237983.P14685037043901089876

`A014963(gcd(A000104(n), A062415(n+1))²²)`
-/

namespace A237983.P14685037043901089876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((Int.gcd (A000104 n) (A062415 (n + 1)) ^ 2) ^ 2)

end

end A237983.P14685037043901089876

/-!
# A237984: Number of partitions of n whose mean is a part.

The programs for A237984, there is no canonical definition to state claims against.
-/

/-! ## A237984.P12809471175676463239

`A000041(n+1)-A327472(n+1)`
-/

namespace A237984.P12809471175676463239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A327472 (n + 1)

end

end A237984.P12809471175676463239

/-! ## A237984.P15575385479615448888

`Δ[A000070(n)]-A327472(n+1)`
-/

namespace A237984.P15575385479615448888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A327472 (n + 1)

end

end A237984.P15575385479615448888

/-! ## A237984.P16677163510944857930

`record[A035363(n)]-A327472(n+1)`
-/

namespace A237984.P16677163510944857930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A327472 (n + 1)

end

end A237984.P16677163510944857930

/-! ## A237984.P9036406615703661709

`record[A035444(n)]-A327472(n+1)`
-/

namespace A237984.P9036406615703661709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A327472 (n + 1)

end

end A237984.P9036406615703661709

/-! ## A237984.P15688040256185648110

`A284592(Δ[A000292(n)])-A327472(n+1)`
-/

namespace A237984.P15688040256185648110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (f1 (n + 1) - f1 n).toNat - A327472 (n + 1)

end

end A237984.P15688040256185648110

/-!
# A237986: Area of smallest square containing n L's with short side lengths 1, 2, ..., n.

The programs for A237986, there is no canonical definition to state claims against.
-/

/-! ## A237986.P1044955347491974053

`A062108((n+1)²-A002325(n+1))²`
-/

namespace A237986.P1044955347491974053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (((n + 1) ^ 2 : ℤ) - A002325 (n + 1)).toNat ^ 2

end

end A237986.P1044955347491974053

/-! ## A237986.P17871704015734810950

`A048760(A000578(A267016(n+1))-A000267(n))`
-/

namespace A237986.P17871704015734810950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000578 (A267016 (n + 1)).toNat - A000267 n).toNat

end

end A237986.P17871704015734810950

/-! ## A237986.P12381923022034742495

`A168039(A393346(n))`
-/

namespace A237986.P12381923022034742495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168039 (A393346 n).toNat

end

end A237986.P12381923022034742495

/-! ## A237986.P11461252922020475165

`ceil(log2(A102687(n+1)))²`
-/

namespace A237986.P11461252922020475165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A102687 (n + 1) : ℝ)⌉ ^ 2

end

end A237986.P11461252922020475165

/-! ## A237986.P16838531373850997761

`ceil(log(A290875(n+1)²))²`
-/

namespace A237986.P16838531373850997761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A290875 (n + 1) ^ 2 : ℝ)⌉ ^ 2

end

end A237986.P16838531373850997761

/-!
# A237987: a(n) = Hermite(n,1/5)*5^n/2^round(n/2)*(-1)^floor(n/2).

The programs for A237987, there is no canonical definition to state claims against.
-/

/-! ## A237987.P3762918467595865768

`floor((∏{p}[A158960(n), #]-1)/2)+1`
-/

namespace A237987.P3762918467595865768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 1 : ℚ) / 2⌋ + 1

end

end A237987.P3762918467595865768

/-! ## A237987.P4317392444036239646

`A000265(abs(A158960(n)))`
-/

namespace A237987.P4317392444036239646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 |A158960 n|.toNat

end

end A237987.P4317392444036239646

/-!
# A237988: a(n) = 3*a(n-3) + 3*a(n-6) + a(n-9) for n>8, a(0)=0, a(1)=a(2)=1, a(3)=a(4)=2, a(5)=3, a(6)=7, a(7)=9, a(8)=11.

The programs for A237988, the canonical program `A237988.P14902175178545943520` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237988 has offset 0).

The definition of A237988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-3)+3*a(n-6)+a(n-9)` (program `A237988.P14902175178545943520`, by `A237988.P14902175178545943520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A237988.P14902175178545943520

`3*a(n-3)+3*a(n-6)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3, a(6)=7, a(7)=9, a(8)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A237988

/-- `3*a(n-3)+3*a(n-6)+a(n-9)` -/
def P14902175178545943520.Spec : Prop :=
  ∀ n, (P14902175178545943520.a n : ℤ) = A237988 n

theorem P14902175178545943520.correct : P14902175178545943520.Spec := by
  intro n
  simp only [A237988]

end A237988

/-!
# A237989: Numbers m such that the numbers of primes, even positive integers and odd positive integers less than or equal to m are all odd.

The programs for A237989, the canonical program `A237989.P12319660110514710715` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237989 has offset 1).

The definition of A237989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237989.P3999167992024878897

`eq[2, and(3, n)^A215029(n+1)]`
-/

namespace A237989.P3999167992024878897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 n : ℚ) ^ (A215029 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A237989.P3999167992024878897

namespace A237989

/-- `eq[2, and(3, n)^A215029(n+1)]` -/
def P3999167992024878897.Spec : Prop :=
  ∀ n, (P3999167992024878897.a n : ℤ) = A237989 (n + 1)

end A237989

/-! ## A237989.P12319660110514710715

`∩[A377994(n+1), A016825(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A237989

/-- `∩[A377994(n+1), A016825(n)]` -/
def P12319660110514710715.Spec : Prop :=
  ∀ n, (P12319660110514710715.a n : ℤ) = A237989 (n + 1)

theorem P12319660110514710715.correct : P12319660110514710715.Spec := by
  intro n
  simp only [A237989, Nat.add_sub_cancel]

end A237989

/-! ## A237989.P14690899065109505501

`∩[A377994(n+1), A130824(n)]`
-/

namespace A237989.P14690899065109505501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237989.P14690899065109505501

namespace A237989

/-- `∩[A377994(n+1), A130824(n)]` -/
def P14690899065109505501.Spec : Prop :=
  ∀ n, (P14690899065109505501.a n : ℤ) = A237989 (n + 1)

end A237989

/-! ## A237989.P6860183458203733545

`eq[A007931(and(3, a(n-1))+1), A215029(n+1)]` with `a(0)=3`
-/

namespace A237989.P6860183458203733545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A007931 (Int.land 3 (f1 (n - 1)) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237989.P6860183458203733545

namespace A237989

/-- `eq[A007931(and(3, a(n-1))+1), A215029(n+1)]` -/
def P6860183458203733545.Spec : Prop :=
  ∀ n, (P6860183458203733545.a n : ℤ) = A237989 (n + 1)

end A237989

/-! ## A237989.P6944135357517637784

`∩[A057812(n+1), A016825(n)]`
-/

namespace A237989.P6944135357517637784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237989.P6944135357517637784

namespace A237989

/-- `∩[A057812(n+1), A016825(n)]` -/
def P6944135357517637784.Spec : Prop :=
  ∀ n, (P6944135357517637784.a n : ℤ) = A237989 (n + 1)

end A237989

/-! ## A237989.P2334833243147822898

`∩[A057812(n+1), A130824(n)]`
-/

namespace A237989.P2334833243147822898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237989.P2334833243147822898

namespace A237989

/-- `∩[A057812(n+1), A130824(n)]` -/
def P2334833243147822898.Spec : Prop :=
  ∀ n, (P2334833243147822898.a n : ℤ) = A237989 (n + 1)

end A237989

/-! ## A237989.P851550691256236808

`filter[A057812(2*n+1), A166486(#)]`
-/

namespace A237989.P851550691256236808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A237989.P851550691256236808

namespace A237989

/-- `filter[A057812(2*n+1), A166486(#)]` -/
def P851550691256236808.Spec : Prop :=
  ∀ n, P851550691256236808.a n = A237989 (n + 1)

end A237989

/-! ## A237989.P16620433827617688899

`filter[A057812(2*n+1), A359374(#)]`
-/

namespace A237989.P16620433827617688899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A237989.P16620433827617688899

namespace A237989

/-- `filter[A057812(2*n+1), A359374(#)]` -/
def P16620433827617688899.Spec : Prop :=
  ∀ n, P16620433827617688899.a n = A237989 (n + 1)

end A237989

/-! ## A237989.P6207502325416159790

`filter[A057812(2*n+1), A359820(#)]`
-/

namespace A237989.P6207502325416159790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A237989.P6207502325416159790

namespace A237989

/-- `filter[A057812(2*n+1), A359820(#)]` -/
def P6207502325416159790.Spec : Prop :=
  ∀ n, P6207502325416159790.a n = A237989 (n + 1)

end A237989

/-! ## A237989.P6874579692321196419

`filter[A057812(2*n+1), A391844(#)]`
-/

namespace A237989.P6874579692321196419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A237989.P6874579692321196419

namespace A237989

/-- `filter[A057812(2*n+1), A391844(#)]` -/
def P6874579692321196419.Spec : Prop :=
  ∀ n, P6874579692321196419.a n = A237989 (n + 1)

end A237989

/-! ## A237989.P18415389433310566194

`∩[A057812(n+1), A111284(n+1)]`
-/

namespace A237989.P18415389433310566194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237989.P18415389433310566194

namespace A237989

/-- `∩[A057812(n+1), A111284(n+1)]` -/
def P18415389433310566194.Spec : Prop :=
  ∀ n, (P18415389433310566194.a n : ℤ) = A237989 (n + 1)

end A237989

/-! ## A237989.P9218509327117435505

`∩[A057812(n+1), A139544(n+1)]`
-/

namespace A237989.P9218509327117435505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237989.P9218509327117435505

namespace A237989

/-- `∩[A057812(n+1), A139544(n+1)]` -/
def P9218509327117435505.Spec : Prop :=
  ∀ n, (P9218509327117435505.a n : ℤ) = A237989 (n + 1)

end A237989

/-! ## A237989.P12147545071671351341

`A057812(eq[2, and(3, A057812(n+1))]+1)`
-/

namespace A237989.P12147545071671351341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A057812 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A237989.P12147545071671351341

namespace A237989

/-- `A057812(eq[2, and(3, A057812(n+1))]+1)` -/
def P12147545071671351341.Spec : Prop :=
  ∀ n, P12147545071671351341.a n = A237989 (n + 1)

end A237989

/-! ## A237989.P9576091419386752765

`filter[A106092(2*n+1), A359820(#)]`
-/

namespace A237989.P9576091419386752765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A237989.P9576091419386752765

namespace A237989

/-- `filter[A106092(2*n+1), A359820(#)]` -/
def P9576091419386752765.Spec : Prop :=
  ∀ n, P9576091419386752765.a n = A237989 (n + 1)

end A237989

/-! ## A237989.P12070930135030298890

`filter[A106092(2*n+1), A391844(#)]`
-/

namespace A237989.P12070930135030298890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A237989.P12070930135030298890

namespace A237989

/-- `filter[A106092(2*n+1), A391844(#)]` -/
def P12070930135030298890.Spec : Prop :=
  ∀ n, P12070930135030298890.a n = A237989 (n + 1)

end A237989

/-! ## A237989.P15007348330962196061

`∩[A014091(2*n+1)-2, A065090(2*(n+1))]`
-/

namespace A237989.P15007348330962196061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237989.P15007348330962196061

namespace A237989

/-- `∩[A014091(2*n+1)-2, A065090(2*(n+1))]` -/
def P15007348330962196061.Spec : Prop :=
  ∀ n, (P15007348330962196061.a n : ℤ) = A237989 (n + 1)

end A237989

/-! ## A237989.P6990717172153701594

`eq[2, and(2, and(n, A278603(n)))]`
-/

namespace A237989.P6990717172153701594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (Int.land (n : ℤ) (A278603 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237989.P6990717172153701594

namespace A237989

/-- `eq[2, and(2, and(n, A278603(n)))]` -/
def P6990717172153701594.Spec : Prop :=
  ∀ n, (P6990717172153701594.a n : ℤ) = A237989 (n + 1)

end A237989

/-! ## A237989.P6549882823195909020

`filter[A016825(n), A071986(#)]`
-/

namespace A237989.P6549882823195909020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A237989.P6549882823195909020

namespace A237989

/-- `filter[A016825(n), A071986(#)]` -/
def P6549882823195909020.Spec : Prop :=
  ∀ n, P6549882823195909020.a n = A237989 (n + 1)

end A237989

/-! ## A237989.P16378497332682796515

`filter[A016825(n), A131378(#)]`
-/

namespace A237989.P16378497332682796515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A237989.P16378497332682796515

namespace A237989

/-- `filter[A016825(n), A131378(#)]` -/
def P16378497332682796515.Spec : Prop :=
  ∀ n, P16378497332682796515.a n = A237989 (n + 1)

end A237989

/-! ## A237989.P10470230671619648156

`filter[A130824(n), A131378(#)]`
-/

namespace A237989.P10470230671619648156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A237989.P10470230671619648156

namespace A237989

/-- `filter[A130824(n), A131378(#)]` -/
def P10470230671619648156.Spec : Prop :=
  ∀ n, P10470230671619648156.a n = A237989 (n + 1)

end A237989

/-!
# A237990: Numbers m such that the numbers of primes, even positive integers and odd positive integers less than or equal to m are all even.

The programs for A237990, the canonical program `A237990.P9896644272104752625` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237990 has offset 1).

The definition of A237990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2781 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237990.P9896644272104752625

`filter[A099861(n+1), A121262(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A237990

/-- `filter[A099861(n+1), A121262(#)]` -/
def P9896644272104752625.Spec : Prop :=
  ∀ n, P9896644272104752625.a n = A237990 (n + 1)

theorem P9896644272104752625.correct : P9896644272104752625.Spec := by
  intro n
  simp only [A237990, Nat.add_sub_cancel]

end A237990

/-! ## A237990.P16570981047736467349

`∩[A099861(n+1), A008574(n)]`
-/

namespace A237990.P16570981047736467349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237990.P16570981047736467349

namespace A237990

/-- `∩[A099861(n+1), A008574(n)]` -/
def P16570981047736467349.Spec : Prop :=
  ∀ n, (P16570981047736467349.a n : ℤ) = A237990 (n + 1)

end A237990

/-! ## A237990.P3456135686944170181

`∩[A099861(n+1), A008586(n)]`
-/

namespace A237990.P3456135686944170181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237990.P3456135686944170181

namespace A237990

/-- `∩[A099861(n+1), A008586(n)]` -/
def P3456135686944170181.Spec : Prop :=
  ∀ n, (P3456135686944170181.a n : ℤ) = A237990 (n + 1)

end A237990

/-! ## A237990.P16473915633547274599

`filter[A057811(n+1), A121262(#)]`
-/

namespace A237990.P16473915633547274599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A237990.P16473915633547274599

namespace A237990

/-- `filter[A057811(n+1), A121262(#)]` -/
def P16473915633547274599.Spec : Prop :=
  ∀ n, P16473915633547274599.a n = A237990 (n + 1)

end A237990

/-! ## A237990.P10443098884996787142

`∩[A057811(n+1), A008586(n)]`
-/

namespace A237990.P10443098884996787142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237990.P10443098884996787142

namespace A237990

/-- `∩[A057811(n+1), A008586(n)]` -/
def P10443098884996787142.Spec : Prop :=
  ∀ n, (P10443098884996787142.a n : ℤ) = A237990 (n + 1)

end A237990

/-! ## A237990.P8164655064038723959

`filter[A057811(2*n+1), A073089(#)]`
-/

namespace A237990.P8164655064038723959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A237990.P8164655064038723959

namespace A237990

/-- `filter[A057811(2*n+1), A073089(#)]` -/
def P8164655064038723959.Spec : Prop :=
  ∀ n, P8164655064038723959.a n = A237990 (n + 1)

end A237990

/-! ## A237990.P11349938810552269138

`filter[A057811(2*n+1), A319710(#)]`
-/

namespace A237990.P11349938810552269138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A237990.P11349938810552269138

namespace A237990

/-- `filter[A057811(2*n+1), A319710(#)]` -/
def P11349938810552269138.Spec : Prop :=
  ∀ n, P11349938810552269138.a n = A237990 (n + 1)

end A237990

/-! ## A237990.P10331175388127777773

`∩[A018252(2*(n+1)), 4*n]`
-/

namespace A237990.P10331175388127777773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A237990.P10331175388127777773

namespace A237990

/-- `∩[A018252(2*(n+1)), 4*n]` -/
def P10331175388127777773.Spec : Prop :=
  ∀ n, (P10331175388127777773.a n : ℤ) = A237990 (n + 1)

end A237990

/-! ## A237990.P6327143592917534129

`∩[A141468(2*n+1), 4*(n+1)]`
-/

namespace A237990.P6327143592917534129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A237990.P6327143592917534129

namespace A237990

/-- `∩[A141468(2*n+1), 4*(n+1)]` -/
def P6327143592917534129.Spec : Prop :=
  ∀ n, (P6327143592917534129.a n : ℤ) = A237990 (n + 1)

end A237990

/-! ## A237990.P146200794007003651

`∩[2*2*(n+1), A002808(2*n+1)]`
-/

namespace A237990.P146200794007003651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237990.P146200794007003651

namespace A237990

/-- `∩[2*2*(n+1), A002808(2*n+1)]` -/
def P146200794007003651.Spec : Prop :=
  ∀ n, (P146200794007003651.a n : ℤ) = A237990 (n + 1)

end A237990

/-! ## A237990.P5998985567572172855

`filter[A377897(n+1), A121262(#)]`
-/

namespace A237990.P5998985567572172855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A237990.P5998985567572172855

namespace A237990

/-- `filter[A377897(n+1), A121262(#)]` -/
def P5998985567572172855.Spec : Prop :=
  ∀ n, P5998985567572172855.a n = A237990 (n + 1)

end A237990

/-! ## A237990.P17352576926900147955

`∩[A377897(n+1), A008574(n)]`
-/

namespace A237990.P17352576926900147955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237990.P17352576926900147955

namespace A237990

/-- `∩[A377897(n+1), A008574(n)]` -/
def P17352576926900147955.Spec : Prop :=
  ∀ n, (P17352576926900147955.a n : ℤ) = A237990 (n + 1)

end A237990

/-! ## A237990.P4721904369330292684

`∩[A377897(n+1), A008586(n)]`
-/

namespace A237990.P4721904369330292684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237990.P4721904369330292684

namespace A237990

/-- `∩[A377897(n+1), A008586(n)]` -/
def P4721904369330292684.Spec : Prop :=
  ∀ n, (P4721904369330292684.a n : ℤ) = A237990 (n + 1)

end A237990

/-! ## A237990.P7021789539525276866

`record[A088440(A002808(2*n+1))]`
-/

namespace A237990.P7021789539525276866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A002808 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237990.P7021789539525276866

namespace A237990

/-- `record[A088440(A002808(2*n+1))]` -/
def P7021789539525276866.Spec : Prop :=
  ∀ n, P7021789539525276866.a n = A237990 (n + 1)

end A237990

/-! ## A237990.P798121370805517102

`filter[A002808(2*n+1), A121262(#)]`
-/

namespace A237990.P798121370805517102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A237990.P798121370805517102

namespace A237990

/-- `filter[A002808(2*n+1), A121262(#)]` -/
def P798121370805517102.Spec : Prop :=
  ∀ n, P798121370805517102.a n = A237990 (n + 1)

end A237990

/-! ## A237990.P3319354792779411327

`filter[A018252(2*(n+1)), A121262(#)]`
-/

namespace A237990.P3319354792779411327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A237990.P3319354792779411327

namespace A237990

/-- `filter[A018252(2*(n+1)), A121262(#)]` -/
def P3319354792779411327.Spec : Prop :=
  ∀ n, P3319354792779411327.a n = A237990 (n + 1)

end A237990

/-! ## A237990.P491713056078923570

`filter[A106092(2*n+1), A121262(#)]`
-/

namespace A237990.P491713056078923570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A237990.P491713056078923570

namespace A237990

/-- `filter[A106092(2*n+1), A121262(#)]` -/
def P491713056078923570.Spec : Prop :=
  ∀ n, P491713056078923570.a n = A237990 (n + 1)

end A237990

/-! ## A237990.P7369861247516509221

`filter[A106092(2*n+1), A319710(#)]`
-/

namespace A237990.P7369861247516509221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A237990.P7369861247516509221

namespace A237990

/-- `filter[A106092(2*n+1), A319710(#)]` -/
def P7369861247516509221.Spec : Prop :=
  ∀ n, P7369861247516509221.a n = A237990 (n + 1)

end A237990

/-! ## A237990.P12207384578647353580

`filter[A106092(2*n+1), A353494(#)]`
-/

namespace A237990.P12207384578647353580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A237990.P12207384578647353580

namespace A237990

/-- `filter[A106092(2*n+1), A353494(#)]` -/
def P12207384578647353580.Spec : Prop :=
  ∀ n, P12207384578647353580.a n = A237990 (n + 1)

end A237990

/-! ## A237990.P4109227672233575723

`filter[A106092(2*n+1), A358680(#)]`
-/

namespace A237990.P4109227672233575723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A237990.P4109227672233575723

namespace A237990

/-- `filter[A106092(2*n+1), A358680(#)]` -/
def P4109227672233575723.Spec : Prop :=
  ∀ n, P4109227672233575723.a n = A237990 (n + 1)

end A237990

/-!
# A237991: a(n) = 991*n^2 + 1.

The programs for A237991, the canonical program `A237991.P15338899787945541230` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237991 has offset 0).

The definition of A237991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `991*n²+1` (program `A237991.P15338899787945541230`, by `A237991.P15338899787945541230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A237991.P15338899787945541230

`991*n²+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A237991

/-- `991*n²+1` -/
def P15338899787945541230.Spec : Prop :=
  ∀ n, (P15338899787945541230.a n : ℤ) = A237991 n

theorem P15338899787945541230.correct : P15338899787945541230.Spec := by
  intro n
  simp only [A237991]

end A237991

/-!
# A237992: Numbers which can be decomposed as p*q + q*r + r*p (where p < q < r are distinct primes) in more ways than any smaller number.

The programs for A237992, there is no canonical definition to state claims against.
-/

/-! ## A237992.P6172312673068046368

`A356457(record[A238404(n+1)])`
-/

namespace A237992.P6172312673068046368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356457 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A237992.P6172312673068046368

/-!
# A237993: a(n) = |Stirling1(3*n,n)|.

The programs for A237993, there is no canonical definition to state claims against.
-/

/-! ## A237993.P10420042296254476080

`A008276(A006137(n))`
-/

namespace A237993.P10420042296254476080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A006137 n).toNat

end

end A237993.P10420042296254476080

/-! ## A237993.P3780021837155122278

`A048994(A062725(n))`
-/

namespace A237993.P3780021837155122278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A062725 n).toNat

end

end A237993.P3780021837155122278

/-! ## A237993.P2471818906473435198

`A054654(A062728(n))`
-/

namespace A237993.P2471818906473435198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A062728 n).toNat

end

end A237993.P2471818906473435198

/-! ## A237993.P1930207132708255064

`A008276(A022267(n)+1)`
-/

namespace A237993.P1930207132708255064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A022267 n + 1).toNat

end

end A237993.P1930207132708255064

/-! ## A237993.P13407705411706557036

`record[A048994(∑[A130481(n)])]`
-/

namespace A237993.P13407705411706557036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237993.P13407705411706557036

/-!
# A237995: Primes p such that p^4 - p^3 - 1 is also prime.

The programs for A237995, there is no canonical definition to state claims against.
-/

/-! ## A237995.P6311811926731929623

`p?[∑[A238745(A274510(n+2))]]`
-/

namespace A237995.P6311811926731929623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A274510 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237995.P6311811926731929623

/-! ## A237995.P384307281084931272

`A098058(record[A088606(n+2)])`
-/

namespace A237995.P384307281084931272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088606 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A237995.P384307281084931272

/-! ## A237995.P9636708875442541470

`record[A020639(A214455(n+5))]`
-/

namespace A237995.P9636708875442541470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A214455 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237995.P9636708875442541470

/-!
# A237996: Triangular array read by rows. T(n,k) is the number of even permutations of {1,2,...,n} that have exactly k cycles, n >= 0, 0 <= k <= n.

The programs for A237996, there is no canonical definition to state claims against.
-/

/-! ## A237996.P3289356129933539862

`A048994(n)*A071022(n)`
-/

namespace A237996.P3289356129933539862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A071022 n

end

end A237996.P3289356129933539862

/-! ## A237996.P2733061228954052099

`A071022(n)*A132393(n)`
-/

namespace A237996.P2733061228954052099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071022 n * A132393 n

end

end A237996.P2733061228954052099

/-! ## A237996.P10936940584975782795

`lcm(A132393(n), A369736(n))`
-/

namespace A237996.P10936940584975782795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132393 n) (A369736 n)

end

end A237996.P10936940584975782795

/-! ## A237996.P15137470517002166274

`A048994(n)*A128174(n+1)`
-/

namespace A237996.P15137470517002166274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A128174 (n + 1)

end

end A237996.P15137470517002166274

/-! ## A237996.P4146178765158942483

`A048994(n)*A158948(n+1)`
-/

namespace A237996.P4146178765158942483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A158948 (n + 1)

end

end A237996.P4146178765158942483

/-! ## A237996.P14171576462566120645

`A128174(n+1)*A132393(n)`
-/

namespace A237996.P14171576462566120645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A132393 n

end

end A237996.P14171576462566120645

/-! ## A237996.P16771965639257029629

`A132393(n)*A158948(n+1)`
-/

namespace A237996.P16771965639257029629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A158948 (n + 1)

end

end A237996.P16771965639257029629

/-! ## A237996.P1666013937459734835

`(A132393(n)+A048994(n))/2`
-/

namespace A237996.P1666013937459734835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 n + A048994 n : ℚ) / 2

end

end A237996.P1666013937459734835

/-! ## A237996.P4227639771554727945

`ceil(1/A008275(n+1))*A048994(n)`
-/

namespace A237996.P4227639771554727945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A008275 (n + 1) : ℚ)⌉ * A048994 n

end

end A237996.P4227639771554727945

/-!
# A237997: Number of ordered ways to achieve a score of n in American football taking into account different scoring methods.

The programs for A237997, the canonical program `A237997.P4291147403199969427` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237997 has offset 0).

The definition of A237997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237997.P4291147403199969427

`a(n-2)+a(n-3)+a(n-6)+a(n-7)+a(n-8)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=3, a(7)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A237997

/-- `a(n-2)+a(n-3)+a(n-6)+a(n-7)+a(n-8)` -/
def P4291147403199969427.Spec : Prop :=
  ∀ n, (P4291147403199969427.a n : ℤ) = A237997 n

theorem P4291147403199969427.correct : P4291147403199969427.Spec := by
  intro n
  simp only [A237997]

end A237997

/-! ## A237997.P11404767720735369651

`Δ[round(∑[A000930(n)/3])]`
-/

namespace A237997.P11404767720735369651
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237997.P11404767720735369651

namespace A237997

/-- `Δ[round(∑[A000930(n)/3])]` -/
def P11404767720735369651.Spec : Prop :=
  ∀ n, P11404767720735369651.a n = A237997 n

end A237997

/-! ## A237997.P17119760770722737961

`Δ[round(A077868(n)/3)]`
-/

namespace A237997.P17119760770722737961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077868 n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237997.P17119760770722737961

namespace A237997

/-- `Δ[round(A077868(n)/3)]` -/
def P17119760770722737961.Spec : Prop :=
  ∀ n, P17119760770722737961.a n = A237997 n

end A237997

/-! ## A237997.P17531882850816030267

`Δ[floor(A000930(n+3)/3)]`
-/

namespace A237997.P17531882850816030267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000930 (n + 3) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237997.P17531882850816030267

namespace A237997

/-- `Δ[floor(A000930(n+3)/3)]` -/
def P17531882850816030267.Spec : Prop :=
  ∀ n, P17531882850816030267.a n = A237997 n

end A237997

/-! ## A237997.P3050520437313573539

`Δ[floor(Δ[A020745(n)]/3)]`
-/

namespace A237997.P3050520437313573539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) - f2 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237997.P3050520437313573539

namespace A237997

/-- `Δ[floor(Δ[A020745(n)]/3)]` -/
def P3050520437313573539.Spec : Prop :=
  ∀ n, P3050520437313573539.a n = A237997 n

end A237997

/-! ## A237997.P13332360268852026700

`Δ[floor(Δ[A048588(n+1)]/3)]`
-/

namespace A237997.P13332360268852026700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) - f2 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237997.P13332360268852026700

namespace A237997

/-- `Δ[floor(Δ[A048588(n+1)]/3)]` -/
def P13332360268852026700.Spec : Prop :=
  ∀ n, P13332360268852026700.a n = A237997 n

end A237997

/-!
# A237998: Number of partitions of 2^n into parts that are at most n.

The programs for A237998, there is no canonical definition to state claims against.
-/

/-! ## A237998.P15594347380415424903

`A238010(∑[n+3])`
-/

namespace A237998.P15594347380415424903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237998.P15594347380415424903

/-! ## A237998.P9951124592753171254

`record[A238010(A060577(n)-n)]`
-/

namespace A237998.P9951124592753171254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A060577 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237998.P9951124592753171254

/-! ## A237998.P11212882356098255591

`record[A238010(record[n-A238010(n)])]`
-/

namespace A237998.P11212882356098255591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A238010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237998.P11212882356098255591

/-! ## A237998.P14880097361238249771

`record[A238010(A055998(A002262(n)))]`
-/

namespace A237998.P14880097361238249771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A055998 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237998.P14880097361238249771

/-! ## A237998.P17195845159142491376

`record[A238010(A055998(A057979(n)))]`
-/

namespace A237998.P17195845159142491376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A055998 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237998.P17195845159142491376

/-!
# A237999: Number of partitions of 2^n into parts that are at most n with at least one part of each size.

The programs for A237999, there is no canonical definition to state claims against.
-/

/-! ## A237999.P11761129005480003106

`A238012(∑[n+3])`
-/

namespace A237999.P11761129005480003106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237999.P11761129005480003106

/-! ## A237999.P15814151860898854649

`A238012(A141214(n))+A184946(n)`
-/

namespace A237999.P15814151860898854649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (A141214 n).toNat + A184946 n

end

end A237999.P15814151860898854649

/-! ## A237999.P4539867581452738019

`lcm(A238012(A141214(n)), A246016(n))`
-/

namespace A237999.P4539867581452738019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A238012 (A141214 n).toNat) (A246016 n)

end

end A237999.P4539867581452738019

/-! ## A237999.P7829710078615444968

`A238012(A141214(n))/A007318(∑[n])`
-/

namespace A237999.P7829710078615444968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238012 (A141214 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A237999.P7829710078615444968

/-! ## A237999.P2470821948266091336

`gcd(A034549(n+1), A238012(A141214(n)))`
-/

namespace A237999.P2470821948266091336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034549 (n + 1)) (A238012 (A141214 n).toNat)

end

end A237999.P2470821948266091336

