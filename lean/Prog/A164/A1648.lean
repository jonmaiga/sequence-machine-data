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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A164813: a(n) = smallest number which has in its Spanish name the letter "m" in the n-th position,or -1 if no such number exists.

The programs for A164813, there is no canonical definition to state claims against.
-/

/-! ## A164813.P16949625881124053208

`A164814(n+3)`
-/

namespace A164813.P16949625881124053208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164814 (n + 3)

end

end A164813.P16949625881124053208

/-!
# A164814: a(n) = smallest number which has in its Spanish name the letter "l" in the n-th position, or -1 if no such number exists.

The programs for A164814, there is no canonical definition to state claims against.
-/

/-! ## A164814.P7327978352623081302

`A164813(xor(A042948(n), A164837(n+1)))`
-/

namespace A164814.P7327978352623081302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164813 (Int.xor (A042948 n) (A164837 (n + 1))).toNat

end

end A164814.P7327978352623081302

/-!
# A164816: Prime factors in a divisibility sequence of the Lucas sequence v(P=3,Q=5) of the second kind.

The programs for A164816, there is no canonical definition to state claims against.
-/

/-! ## A164816.P972786113843281858

`A097144(A077552(n))`
-/

namespace A164816.P972786113843281858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097144 (A077552 n).toNat

end

end A164816.P972786113843281858

/-!
# A164817: Positive numbers n with property that average digit of n^2 is an integer.

The programs for A164817, there is no canonical definition to state claims against.
-/

/-! ## A164817.P2720493191342443293

`sqrt(A069711(n+2))`
-/

namespace A164817.P2720493191342443293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069711 (n + 2) : ℝ)

end

end A164817.P2720493191342443293

/-! ## A164817.P633759055829934406

`root(A069711(2*(n+1)-n), 2)`
-/

namespace A164817.P633759055829934406
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069711 (2 * (n + 1) - n) : ℝ) ^ (1 / (2 : ℝ))

end

end A164817.P633759055829934406

/-! ## A164817.P13053757599100312968

`A069711(n+2)^(char[A014681(n)]/2)`
-/

namespace A164817.P13053757599100312968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069711 (n + 2) : ℝ) ^ (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / 2 : ℝ)

end

end A164817.P13053757599100312968

/-! ## A164817.P2894494137754339067

`A262689(A069711(n+2)+1)`
-/

namespace A164817.P2894494137754339067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A069711 (n + 2) + 1).toNat

end

end A164817.P2894494137754339067

/-! ## A164817.P11558856246278019670

`eq[floor(acot(n)), A180160(n²)]`
-/

namespace A164817.P11558856246278019670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164817.P11558856246278019670

/-!
# A164818: Integer average digit of squares.

The programs for A164818, there is no canonical definition to state claims against.
-/

/-! ## A164818.P5731343071679773558

`A004427(A069711(n+2))`
-/

namespace A164818.P5731343071679773558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A069711 (n + 2)).toNat

end

end A164818.P5731343071679773558

/-! ## A164818.P18345113435700770269

`A004427(A164817(n+1)²)`
-/

namespace A164818.P18345113435700770269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A164817 (n + 1) ^ 2).toNat

end

end A164818.P18345113435700770269

/-! ## A164818.P6522961793217524201

`A004427(eq[A000007(n), A180160(n²)]²)`
-/

namespace A164818.P6522961793217524201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2)

end

end A164818.P6522961793217524201

/-! ## A164818.P3639932867253004759

`A004427(eq[A000038(n), A180160(n²)]²)`
-/

namespace A164818.P3639932867253004759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2)

end

end A164818.P3639932867253004759

/-!
# A164819: Numbers n such that n-th digit (after decimal point) of Pi and of Euler-Mascheroni constant gamma are the same.

The programs for A164819, there is no canonical definition to state claims against.
-/

/-! ## A164819.P15093737451932052507

`1+eq[A000796(n+1), A001620(n)]`
-/

namespace A164819.P15093737451932052507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164819.P15093737451932052507

/-! ## A164819.P11469130042189741022

`eq[9-A030644(n), A001620(A289207(n+1))]`
-/

namespace A164819.P11469130042189741022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A289207 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164819.P11469130042189741022

/-!
# A164820: Numbers n such that n-th digit (after decimal point) of e and of Euler-Mascheroni constant gamma are the same.

The programs for A164820, there is no canonical definition to state claims against.
-/

/-! ## A164820.P8629300394572161441

`eq[A153805(n), A153810(n)]+1`
-/

namespace A164820.P8629300394572161441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164820.P8629300394572161441

/-! ## A164820.P7530088661821629794

`1-A001489(eq[A153805(n), A153810(n)])`
-/

namespace A164820.P7530088661821629794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164820.P7530088661821629794

/-! ## A164820.P5014099032442549552

`A008619(2*eq[A153805(n), A153810(n)])`
-/

namespace A164820.P5014099032442549552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164820.P5014099032442549552

/-! ## A164820.P5212181876940299120

`A308217(2*eq[A153805(n), A153810(n)])`
-/

namespace A164820.P5212181876940299120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164820.P5212181876940299120

/-! ## A164820.P11887303402140223340

`A005408(n)-(2*n-eq[A153805(n), A153810(n)])`
-/

namespace A164820.P11887303402140223340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ))

end

end A164820.P11887303402140223340

/-!
# A164821: Number of letters in n-th prime (in German).

The programs for A164821, there is no canonical definition to state claims against.
-/

/-! ## A164821.P14871046161574832602

`A007208(A000040(n+1))`
-/

namespace A164821.P14871046161574832602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 (A000040 (n + 1)).toNat

end

end A164821.P14871046161574832602

/-! ## A164821.P4946858100239407980

`A007208(p?[xor(1, n)])`
-/

namespace A164821.P4946858100239407980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A164821.P4946858100239407980

/-! ## A164821.P13629989993282415168

`A007208(p?[comp[n²]])`
-/

namespace A164821.P13629989993282415168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A164821.P13629989993282415168

/-! ## A164821.P7251594510108955278

`A007208(Δ[A007504(n)])`
-/

namespace A164821.P7251594510108955278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 (f1 (n + 1) - f1 n).toNat

end

end A164821.P7251594510108955278

/-! ## A164821.P14619515214807304035

`A007208(A006005(n+1))`
-/

namespace A164821.P14619515214807304035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 (A006005 (n + 1)).toNat

end

end A164821.P14619515214807304035

/-! ## A164821.P5129013288075134693

`A007208(A161847(n+1))`
-/

namespace A164821.P5129013288075134693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 (A161847 (n + 1)).toNat

end

end A164821.P5129013288075134693

/-! ## A164821.P7003052650063020228

`A007208(A171021(n+1))`
-/

namespace A164821.P7003052650063020228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 (A171021 (n + 1)).toNat

end

end A164821.P7003052650063020228

/-! ## A164821.P14206977185482426937

`A007208(A171022(n+1))`
-/

namespace A164821.P14206977185482426937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 (A171022 (n + 1)).toNat

end

end A164821.P14206977185482426937

/-! ## A164821.P9660330186654845969

`A007208(A171025(n+1))`
-/

namespace A164821.P9660330186654845969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 (A171025 (n + 1)).toNat

end

end A164821.P9660330186654845969

/-! ## A164821.P18110009909128755428

`A007208(A171026(n+1))`
-/

namespace A164821.P18110009909128755428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 (A171026 (n + 1)).toNat

end

end A164821.P18110009909128755428

/-!
# A164822: Triangle read by rows, giving the number of solutions mod j of T_k(x) = 1, for j >= 2 and k = 1:j-1, where T_k is the k'th Chebyshev polynomial of the first kind.

The programs for A164822, there is no canonical definition to state claims against.
-/

/-! ## A164822.P2579875502888088590

`Δ[eq[1, A164823(n+1)]]`
-/

namespace A164822.P2579875502888088590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164823 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164822.P2579875502888088590

/-! ## A164822.P13536841259700009115

`Δ[record[n-A164823(A000027(n+1))]]`
-/

namespace A164822.P13536841259700009115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A164823 (A000027 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164822.P13536841259700009115

/-! ## A164822.P4176977919726807097

`A028310(Δ[record[n-A164823(n+1)]])`
-/

namespace A164822.P4176977919726807097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A164823 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A164822.P4176977919726807097

/-! ## A164822.P7911873778792453714

`A000027(Δ[record[n/A164823(n+1)]])`
-/

namespace A164822.P7911873778792453714
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A164823 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A164822.P7911873778792453714

/-! ## A164822.P9463012935798477278

`A028310(Δ[record[n/A164823(n+1)]])`
-/

namespace A164822.P9463012935798477278
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A164823 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A164822.P9463012935798477278

/-! ## A164822.P11023735213488062025

`Δ[record[A023443(n)-A164823(n+1)]]`
-/

namespace A164822.P11023735213488062025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n - A164823 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164822.P11023735213488062025

/-! ## A164822.P9068279249914609552

`Δ[A023443(record[n/A164823(n+1)])]`
-/

namespace A164822.P9068279249914609552
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A164823 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164822.P9068279249914609552

/-! ## A164822.P7984866435498673351

`Δ[record[n-A164823(n%A011199(n)+1)]]`
-/

namespace A164822.P7984866435498673351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A164823 (Int.tmod (n : ℤ) (A011199 n) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164822.P7984866435498673351

/-!
# A164823: Irregular triangle read by rows, listing the values x for which T_k(x) == 1 (mod j) for j >= 2 and k = 1..j-1, where T_k are the Chebyshev polynomials of the first kind.

The programs for A164823, there is no canonical definition to state claims against.
-/

/-! ## A164823.P14809386772853324323

`A128227(A292477(∏{d}[n+2, #]))`
-/

namespace A164823.P14809386772853324323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (A292477 (∏ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A164823.P14809386772853324323

/-! ## A164823.P1664008270798594829

`gcd(A085207(n), A169718(A020695(n)))`
-/

namespace A164823.P1664008270798594829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085207 n) (A169718 (A020695 n).toNat)

end

end A164823.P1664008270798594829

/-! ## A164823.P12169658894969946484

`gcd(A086389(A137760(n+1)), A086426(n))`
-/

namespace A164823.P12169658894969946484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086389 (A137760 (n + 1)).toNat) (A086426 n)

end

end A164823.P12169658894969946484

/-! ## A164823.P7679052412206088716

`gcd(A238279(A342732(3*n+2)), A355663(n))`
-/

namespace A164823.P7679052412206088716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238279 (A342732 (3 * n + 2)).toNat) (A355663 n)

end

end A164823.P7679052412206088716

/-! ## A164823.P9434304148981445949

`gcd(A007897(A057977(n)), A328902(n))`
-/

namespace A164823.P9434304148981445949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007897 (A057977 n).toNat) (A328902 n)

end

end A164823.P9434304148981445949

/-!
# A164825: Fibonacci numbers in which the difference between the largest digit and the smallest digit is a prime.

The programs for A164825, there is no canonical definition to state claims against.
-/

/-! ## A164825.P14181056058571319542

`A000045(lt[A152449(n+1), A152432(2*(n+2))])`
-/

namespace A164825.P14181056058571319542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152432 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164825.P14181056058571319542

/-! ## A164825.P4227707043077712296

`A000045(lt[A145594(n+1), A145579(2*(n+3))])`
-/

namespace A164825.P4227707043077712296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145579 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164825.P4227707043077712296

/-!
# A164826: Sequences A087800 and A077416 interleaved.

The programs for A164826, the canonical program `A164826.P1287899128571899706` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164826 has offset 1).

The definition of A164826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164826.P1287899128571899706

`12*a(n-2)-a(n-4)` with `a(0)=2, a(1)=1, a(2)=12, a(3)=13`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164826

/-- `12*a(n-2)-a(n-4)` -/
def P1287899128571899706.Spec : Prop :=
  ∀ n, P1287899128571899706.a n = A164826 (n + 1)

theorem P1287899128571899706.correct : P1287899128571899706.Spec := by
  intro n
  simp only [A164826, Nat.add_sub_cancel]

end A164826

/-! ## A164826.P3220675957717204171

`7*A041059(n)-A041058(n)`
-/

namespace A164826.P3220675957717204171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A041059 n - A041058 n

end

end A164826.P3220675957717204171

namespace A164826

/-- `7*A041059(n)-A041058(n)` -/
def P3220675957717204171.Spec : Prop :=
  ∀ n, P3220675957717204171.a n = A164826 (n + 1)

end A164826

/-! ## A164826.P6055274174504963226

`7*A041059(n)+A041058(n)*A158052(A000040(n+1))`
-/

namespace A164826.P6055274174504963226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A041059 n + A041058 n * A158052 (A000040 (n + 1)).toNat

end

end A164826.P6055274174504963226

namespace A164826

/-- `7*A041059(n)+A041058(n)*A158052(A000040(n+1))` -/
def P6055274174504963226.Spec : Prop :=
  ∀ n, P6055274174504963226.a n = A164826 (n + 1)

end A164826

/-! ## A164826.P7601060667083789455

`(7*A041059(n))%(A041058(n)%A254465(n))`
-/

namespace A164826.P7601060667083789455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 * A041059 n) (Int.tmod (A041058 n) (A254465 n))

end

end A164826.P7601060667083789455

namespace A164826

/-- `(7*A041059(n))%(A041058(n)%A254465(n))` -/
def P7601060667083789455.Spec : Prop :=
  ∀ n, P7601060667083789455.a n = A164826 (n + 1)

end A164826

/-!
# A164827: Generalized Lucas numbers: a(n) = a(n-1) + 10*a(n-2); with a(1)=2 a(2)=1.

The programs for A164827, the canonical program `A164827.P14489880734241407705` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164827 has offset 1).

The definition of A164827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+10*a(n-2)` (program `A164827.P14489880734241407705`, by `A164827.P14489880734241407705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164827.P14489880734241407705

`a(n-1)+10*a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164827

/-- `a(n-1)+10*a(n-2)` -/
def P14489880734241407705.Spec : Prop :=
  ∀ n, (P14489880734241407705.a n : ℤ) = A164827 (n + 1)

theorem P14489880734241407705.correct : P14489880734241407705.Spec := by
  intro n
  simp only [A164827, Nat.add_sub_cancel]

end A164827

/-! ## A164827.P10430087943021712014

`ogf((-2+x)/(-1+x+10x^2))`
-/

namespace A164827.P10430087943021712014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -1, -10] n

end

end A164827.P10430087943021712014

namespace A164827

/-- `ogf((-2+x)/(-1+x+10x^2))` -/
def P10430087943021712014.Spec : Prop :=
  ∀ n, P10430087943021712014.a n = A164827 (n + 1)

end A164827

/-! ## A164827.P17558232557064994921

`a(n-1)-10*floor(-a(n-2))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A164827.P17558232557064994921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - 10 * (-a (n - 2))

end

end A164827.P17558232557064994921

namespace A164827

/-- `a(n-1)-10*floor(-a(n-2))` -/
def P17558232557064994921.Spec : Prop :=
  ∀ n, P17558232557064994921.a n = A164827 (n + 1)

end A164827

/-! ## A164827.P3412744059096419708

`a(n-1)-10*ceil(-a(n-2))` with `a(0)=2, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A164827.P3412744059096419708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - 10 * (-a (n - 2))

end

end A164827.P3412744059096419708

namespace A164827

/-- `a(n-1)-10*ceil(-a(n-2))` -/
def P3412744059096419708.Spec : Prop :=
  ∀ n, P3412744059096419708.a n = A164827 (n + 1)

end A164827

/-! ## A164827.P11099110337980876260

`a(n-1)-10*round(-a(n-2))` with `a(0)=2, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A164827.P11099110337980876260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - 10 * (-a (n - 2))

end

end A164827.P11099110337980876260

namespace A164827

/-- `a(n-1)-10*round(-a(n-2))` -/
def P11099110337980876260.Spec : Prop :=
  ∀ n, P11099110337980876260.a n = A164827 (n + 1)

end A164827

/-! ## A164827.P15409765191547115122

`a(n-1)+lcm(5, a(n-2)+a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A164827.P15409765191547115122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + Nat.lcm 5 (a (n - 2) + a (n - 2))

end

end A164827.P15409765191547115122

namespace A164827

/-- `a(n-1)+lcm(5, a(n-2)+a(n-2))` -/
def P15409765191547115122.Spec : Prop :=
  ∀ n, (P15409765191547115122.a n : ℤ) = A164827 (n + 1)

end A164827

/-!
# A164828: Generalized Fibonacci numbers.

The programs for A164828, there is no canonical definition to state claims against.
-/

/-! ## A164828.P6722081611864524347

`A079159(A098408(n+1))`
-/

namespace A164828.P6722081611864524347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079159 (A098408 (n + 1)).toNat

end

end A164828.P6722081611864524347

/-!
# A164830: a(1) = 2; a(n) for n > 1 is the smallest k > a(n-1) such that the arithmetic mean of the divisors of k is one of the previous terms a(1), ..., a(n-1).

The programs for A164830, there is no canonical definition to state claims against.
-/

/-! ## A164830.P4590634651259946010

`eq[gcd(4, A279615(n+1)), A293909(n+5)]`
-/

namespace A164830.P4590634651259946010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A279615 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293909 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164830.P4590634651259946010

/-! ## A164830.P5576179288694144278

`eq[A139355(A277666(n)), A326819(n)]`
-/

namespace A164830.P5576179288694144278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A277666 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326819 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164830.P5576179288694144278

/-! ## A164830.P14624108879172768901

`A000005(A350176(n+1))+record[A343602(n)]`
-/

namespace A164830.P14624108879172768901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350176 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164830.P14624108879172768901

/-! ## A164830.P6675537366739465671

`lt[A005811(A321286(n+4))², A175323(n+1)]`
-/

namespace A164830.P6675537366739465671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A321286 (n + 4)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164830.P6675537366739465671

/-!
# A164832: Least nonnegative integer k such that the decimal representations of k and k+1 have n distinct digits in common.

The programs for A164832, there is no canonical definition to state claims against.
-/

/-! ## A164832.P16950627371559379103

`char[1]+A038378(n+1)-n`
-/

namespace A164832.P16950627371559379103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A038378 (n + 1) - (n : ℤ))

end

end A164832.P16950627371559379103

/-! ## A164832.P8137655622372950836

`A038378(n+1)-A004176(n)`
-/

namespace A164832.P8137655622372950836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038378 (n + 1) - A004176 n

end

end A164832.P8137655622372950836

/-! ## A164832.P7972397277129140922

`A038378(n+1)+A063524(n)-n`
-/

namespace A164832.P7972397277129140922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038378 (n + 1) + (A063524 n - (n : ℤ))

end

end A164832.P7972397277129140922

/-! ## A164832.P9192042568488532150

`A038378(n+1)+-n%A341185(n)`
-/

namespace A164832.P9192042568488532150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038378 (n + 1) + Int.tmod (-(n : ℤ)) (A341185 n)

end

end A164832.P9192042568488532150

/-! ## A164832.P455197464507106017

`A038378(n+1)-n%A307683(3*n+5)`
-/

namespace A164832.P455197464507106017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038378 (n + 1) - Int.tmod (n : ℤ) (A307683 (3 * n + 5))

end

end A164832.P455197464507106017

/-!
# A164834: Numbers such that the two adjacent integers are a perfect cube and a prime.

The programs for A164834, there is no canonical definition to state claims against.
-/

/-! ## A164834.P10236565389013843829

`∩[A005988(n+1), A329582(n+1)]`
-/

namespace A164834.P10236565389013843829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164834.P10236565389013843829

/-! ## A164834.P9771567323307777303

`∩[A005988(n+1), A329595(n+1)]`
-/

namespace A164834.P9771567323307777303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164834.P9771567323307777303

/-! ## A164834.P11888424768187122037

`∩[A163497(n+1), A329595(n+1)]`
-/

namespace A164834.P11888424768187122037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164834.P11888424768187122037

/-!
# A164836: a(n) is the number such that every k-digit substring ( k <= n ) taken from the right end, is divisible by k.

The programs for A164836, there is no canonical definition to state claims against.
-/

/-! ## A164836.P16632269897671552117

`lt[A055642(n), A020639(A103147(n))]`
-/

namespace A164836.P16632269897671552117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103147 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164836.P16632269897671552117

/-! ## A164836.P17136357242260682895

`lt[A329233(A139337(n)), A040926(n)]`
-/

namespace A164836.P17136357242260682895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329233 (A139337 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164836.P17136357242260682895

/-!
# A164837: a(n) is a prime number such that every k-digit substring ( k < n ) taken from the left, is divisible by k.

The programs for A164837, there is no canonical definition to state claims against.
-/

/-! ## A164837.P5871978783630759715

`A000040(lt[A025157(n), A137319(n+1)])`
-/

namespace A164837.P5871978783630759715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164837.P5871978783630759715

/-! ## A164837.P1020809660544543238

`A000040(lt[A000032(n), A280162(n+1)])`
-/

namespace A164837.P1020809660544543238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164837.P1020809660544543238

/-! ## A164837.P13197842435966828511

`A000040(lt[A362612(n), A212621(n+1)])`
-/

namespace A164837.P13197842435966828511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362612 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164837.P13197842435966828511

/-! ## A164837.P5744692185325961312

`A000040(lt[A364272(n), A212621(n+1)])`
-/

namespace A164837.P5744692185325961312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164837.P5744692185325961312

/-! ## A164837.P10662256509082061642

`A000040(lt[A364272(n), A262351(n+1)])`
-/

namespace A164837.P10662256509082061642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164837.P10662256509082061642

/-!
# A164838: Number of letters in n-th prime (in Dutch).

The programs for A164838, there is no canonical definition to state claims against.
-/

/-! ## A164838.P2917476845418494807

`A090589(A000040(n+1)%A292559(n+1))`
-/

namespace A164838.P2917476845418494807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090589 (Int.tmod (A000040 (n + 1)) (A292559 (n + 1))).toNat

end

end A164838.P2917476845418494807

/-! ## A164838.P17232054425663215894

`A090589(A000040(n+1)%A071886(n))`
-/

namespace A164838.P17232054425663215894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090589 (Int.tmod (A000040 (n + 1)) (A071886 n)).toNat

end

end A164838.P17232054425663215894

/-! ## A164838.P12304491641636222699

`gcd(A090589(A000040(n+1)), A095849(3*(n+1)))`
-/

namespace A164838.P12304491641636222699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090589 (A000040 (n + 1)).toNat) (A095849 (3 * (n + 1)))

end

end A164838.P12304491641636222699

/-! ## A164838.P15564203208607299211

`A090589(∩[A000040(n+1), A335433(n+1)])`
-/

namespace A164838.P15564203208607299211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090589 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164838.P15564203208607299211

/-!
# A164840: Right-truncatable squares: every prefix is square.

The programs for A164840, there is no canonical definition to state claims against.
-/

/-! ## A164840.P12648387857021532125

`ceil(cosh(n)^γ)²`
-/

namespace A164840.P12648387857021532125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (n : ℝ) ^ Real.eulerMascheroniConstant⌉ ^ 2

end

end A164840.P12648387857021532125

/-!
# A164841: Numbers whose squares have a digit average greater than 8.

The programs for A164841, there is no canonical definition to state claims against.
-/

/-! ## A164841.P6826307856179473708

`A360803(∑{e}[A080446(n+1), #])`
-/

namespace A164841.P6826307856179473708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360803 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A164841.P6826307856179473708

/-!
# A164844: Generalized Pascal Triangle - satisfying the same recurrence as Pascal's triangle, but with a(n,0)=1 and a(n,n)=10^n (instead of both being 1).

The programs for A164844, there is no canonical definition to state claims against.
-/

/-! ## A164844.P2409475492433486633

`A164899(n+1)+A124762(A265856(n+1))`
-/

namespace A164844.P2409475492433486633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164899 (n + 1) + A124762 (A265856 (n + 1)).toNat

end

end A164844.P2409475492433486633

/-! ## A164844.P6224028044318151617

`A164899(n+1)+A124762(A050932(n))`
-/

namespace A164844.P6224028044318151617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164899 (n + 1) + A124762 (A050932 n).toNat

end

end A164844.P6224028044318151617

/-! ## A164844.P9952078008833898415

`A164899(n+1)+A162641(A082582(n))`
-/

namespace A164844.P9952078008833898415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164899 (n + 1) + A162641 (A082582 n).toNat

end

end A164844.P9952078008833898415

/-! ## A164844.P613865915927729410

`A216579(A045623(n))+A164899(n+1)`
-/

namespace A164844.P613865915927729410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216579 (A045623 n).toNat + A164899 (n + 1)

end

end A164844.P613865915927729410

/-! ## A164844.P12803595335576883066

`A185284(A003592(n+2))+A164899(n+1)`
-/

namespace A164844.P12803595335576883066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A003592 (n + 2)).toNat + A164899 (n + 1)

end

end A164844.P12803595335576883066

/-!
# A164845: a(n) = (6 + 10*n + 5*n^2 + n^3)/2.

The programs for A164845, the canonical program `A164845.P13832473183565845302` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164845 has offset 0).

The definition of A164845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6+10*n+5*n²+n^3)/2` (program `A164845.P10822482246931107008`, by `A164845.P10822482246931107008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164845.P10822482246931107008

`(6+10*n+5*n²+n^3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164845.P10822482246931107008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 + 10 * n + 5 * n ^ 2 + n ^ 3 : ℚ) / 2

end

end A164845.P10822482246931107008

namespace A164845

/-- `(6+10*n+5*n²+n^3)/2` -/
def P10822482246931107008.Spec : Prop :=
  ∀ n, P10822482246931107008.a n = (A164845 n : ℚ)

theorem P10822482246931107008.correct : P10822482246931107008.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A164845, Nat.add_sub_cancel, A164845.P10822482246931107008.a, A164845.P13832473183565845302.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A164845, Nat.add_sub_cancel, A164845.P10822482246931107008.a, A164845.P13832473183565845302.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164845

/-! ## A164845.P4930439184086835812

`a(n-1)+3*n²/2+7*n/2+3` with `a(0)=3`
-/

namespace A164845.P4930439184086835812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (3 * n ^ 2 : ℚ) / 2 + (7 * n : ℚ) / 2 + 3

end

end A164845.P4930439184086835812

namespace A164845

/-- `a(n-1)+3*n²/2+7*n/2+3` -/
def P4930439184086835812.Spec : Prop :=
  ∀ n, P4930439184086835812.a n = (A164845 n : ℚ)

end A164845

/-! ## A164845.P13832473183565845302

`3*a(n-1)-3*a(n-2)+a(n-3)+3` with `a(0)=3, a(1)=11, a(2)=27`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164845

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+3` -/
def P13832473183565845302.Spec : Prop :=
  ∀ n, P13832473183565845302.a n = A164845 n

theorem P13832473183565845302.correct : P13832473183565845302.Spec := by
  intro n
  simp only [A164845]

end A164845

/-! ## A164845.P73827468724740920

`A162607(n+3)+n`
-/

namespace A164845.P73827468724740920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162607 (n + 3) + (n : ℤ)

end

end A164845.P73827468724740920

namespace A164845

/-- `A162607(n+3)+n` -/
def P73827468724740920.Spec : Prop :=
  ∀ n, P73827468724740920.a n = A164845 n

end A164845

/-! ## A164845.P2692525104590489152

`∑[∑[a(n-1)+3]]` with `a(0)=3, a(1)=5`
-/

namespace A164845.P2692525104590489152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164845.P2692525104590489152

namespace A164845

/-- `∑[∑[a(n-1)+3]]` -/
def P2692525104590489152.Spec : Prop :=
  ∀ n, (P2692525104590489152.a n : ℤ) = A164845 n

end A164845

/-! ## A164845.P17357442477556633666

`3*C(n+3, 3)-∑[n]`
-/

namespace A164845.P17357442477556633666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 3) 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A164845.P17357442477556633666

namespace A164845

/-- `3*C(n+3, 3)-∑[n]` -/
def P17357442477556633666.Spec : Prop :=
  ∀ n, P17357442477556633666.a n = A164845 n

end A164845

/-! ## A164845.P10495324223423515693

`∑[∑[ogf((3-x+x^2)/(1-2x+x^2))]]`
-/

namespace A164845.P10495324223423515693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164845.P10495324223423515693

namespace A164845

/-- `∑[∑[ogf((3-x+x^2)/(1-2x+x^2))]]` -/
def P10495324223423515693.Spec : Prop :=
  ∀ n, P10495324223423515693.a n = A164845 n

end A164845

/-! ## A164845.P2857627754319145114

`ogf((3-x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A164845.P2857627754319145114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 1] [1, -4, 6, -4, 1] n

end

end A164845.P2857627754319145114

namespace A164845

/-- `ogf((3-x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P2857627754319145114.Spec : Prop :=
  ∀ n, P2857627754319145114.a n = A164845 n

end A164845

/-! ## A164845.P3077507493924278424

`∑[1-∑[a(n-1)-3]]` with `a(0)=-2`
-/

namespace A164845.P3077507493924278424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164845.P3077507493924278424

namespace A164845

/-- `∑[1-∑[a(n-1)-3]]` -/
def P3077507493924278424.Spec : Prop :=
  ∀ n, P3077507493924278424.a n = A164845 n

end A164845

/-! ## A164845.P8612842840488362304

`(n+1)*or(2, (n+2)²)/2`
-/

namespace A164845.P8612842840488362304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.lor 2 ((n + 2) ^ 2) : ℚ) / 2)

end

end A164845.P8612842840488362304

namespace A164845

/-- `(n+1)*or(2, (n+2)²)/2` -/
def P8612842840488362304.Spec : Prop :=
  ∀ n, P8612842840488362304.a n = (A164845 n : ℚ)

end A164845

/-! ## A164845.P8673167463124204434

`(n+1)*xor(2, (n+2)²)/2`
-/

namespace A164845.P8673167463124204434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.xor 2 ((n + 2) ^ 2) : ℚ) / 2)

end

end A164845.P8673167463124204434

namespace A164845

/-- `(n+1)*xor(2, (n+2)²)/2` -/
def P8673167463124204434.Spec : Prop :=
  ∀ n, P8673167463124204434.a n = (A164845 n : ℚ)

end A164845

/-! ## A164845.P14936528632883836340

`(C(n+2, 2)+1)*(n+2)-1`
-/

namespace A164845.P14936528632883836340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) 2 + 1) * (n + 2) : ℤ) - 1

end

end A164845.P14936528632883836340

namespace A164845

/-- `(C(n+2, 2)+1)*(n+2)-1` -/
def P14936528632883836340.Spec : Prop :=
  ∀ n, P14936528632883836340.a n = A164845 n

end A164845

/-! ## A164845.P6475824881346634535

`(n+2)*C(n+2, 2)+1+n`
-/

namespace A164845.P6475824881346634535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose (n + 2) 2 + 1 + n

end

end A164845.P6475824881346634535

namespace A164845

/-- `(n+2)*C(n+2, 2)+1+n` -/
def P6475824881346634535.Spec : Prop :=
  ∀ n, (P6475824881346634535.a n : ℤ) = A164845 n

end A164845

/-! ## A164845.P5245044229687376932

`floor(C((n+2)²+1, 2)/(n+3))`
-/

namespace A164845.P5245044229687376932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose ((n + 2) ^ 2 + 1) 2 : ℚ) / (n + 3 : ℚ)⌋

end

end A164845.P5245044229687376932

namespace A164845

/-- `floor(C((n+2)²+1, 2)/(n+3))` -/
def P5245044229687376932.Spec : Prop :=
  ∀ n, P5245044229687376932.a n = A164845 n

end A164845

/-! ## A164845.P1452683541536665384

`lcm(n+1, (n+2)²)/2+n+1`
-/

namespace A164845.P1452683541536665384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) ((n + 2) ^ 2) : ℚ) / 2 + (n + 1 : ℚ)

end

end A164845.P1452683541536665384

namespace A164845

/-- `lcm(n+1, (n+2)²)/2+n+1` -/
def P1452683541536665384.Spec : Prop :=
  ∀ n, P1452683541536665384.a n = (A164845 n : ℚ)

end A164845

/-! ## A164845.P7336421227275571793

`C((n+2)², 2)/(n+3)+n+1`
-/

namespace A164845.P7336421227275571793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 2) ^ 2) 2 : ℚ) / (n + 3 : ℚ) + (n + 1 : ℚ)

end

end A164845.P7336421227275571793

namespace A164845

/-- `C((n+2)², 2)/(n+3)+n+1` -/
def P7336421227275571793.Spec : Prop :=
  ∀ n, P7336421227275571793.a n = (A164845 n : ℚ)

end A164845

/-! ## A164845.P11641478795837646490

`(n+1)*(lcm(n+2, n+3)-n)/2`
-/

namespace A164845.P11641478795837646490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((Nat.lcm (n + 2) (n + 3) : ℤ) - (n : ℤ) : ℚ) / 2)

end

end A164845.P11641478795837646490

namespace A164845

/-- `(n+1)*(lcm(n+2, n+3)-n)/2` -/
def P11641478795837646490.Spec : Prop :=
  ∀ n, P11641478795837646490.a n = (A164845 n : ℚ)

end A164845

/-! ## A164845.P9878932879439889169

`∑[∑[lcm(2, 2*n+1)-n]]+n+1`
-/

namespace A164845.P9878932879439889169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n + 1) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A164845.P9878932879439889169

namespace A164845

/-- `∑[∑[lcm(2, 2*n+1)-n]]+n+1` -/
def P9878932879439889169.Spec : Prop :=
  ∀ n, P9878932879439889169.a n = A164845 n

end A164845

/-! ## A164845.P3121261683436502615

`(n+3)*∑[n+1]-∑[gcd(n, 2*n)]`
-/

namespace A164845.P3121261683436502615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A164845.P3121261683436502615

namespace A164845

/-- `(n+3)*∑[n+1]-∑[gcd(n, 2*n)]` -/
def P3121261683436502615.Spec : Prop :=
  ∀ n, P3121261683436502615.a n = A164845 n

end A164845

/-! ## A164845.P13835220340038388589

`(n+2)*∑[(n+1)%(n+2)]+n+1`
-/

namespace A164845.P13835220340038388589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A164845.P13835220340038388589

namespace A164845

/-- `(n+2)*∑[(n+1)%(n+2)]+n+1` -/
def P13835220340038388589.Spec : Prop :=
  ∀ n, (P13835220340038388589.a n : ℤ) = A164845 n

end A164845

/-!
# A164846: Triangle read by rows: frequency with which the number of values taken by cos(2*Pi/k) mod j occurs for each j >= 1, taken over k = 1..j-1.

The programs for A164846, there is no canonical definition to state claims against.
-/

/-! ## A164846.P16564661446286919807

`A227903(A000032(n))%A227925(n)`
-/

namespace A164846.P16564661446286919807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227903 (A000032 n).toNat) (A227925 n)

end

end A164846.P16564661446286919807

/-! ## A164846.P2909185514219410457

`and(A002636(n), A016141(A266183(n+1)))`
-/

namespace A164846.P2909185514219410457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002636 n) (A016141 (A266183 (n + 1)).toNat)

end

end A164846.P2909185514219410457

/-! ## A164846.P3572735751251855089

`A002636(n)*A016141(A266183(n+1)+2)`
-/

namespace A164846.P3572735751251855089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n * A016141 (A266183 (n + 1) + 2).toNat

end

end A164846.P3572735751251855089

/-! ## A164846.P5732806208921697966

`A193238(A276922(n)*A285951(2*(n+1)))`
-/

namespace A164846.P5732806208921697966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A276922 n * A285951 (2 * (n + 1))).toNat

end

end A164846.P5732806208921697966

/-! ## A164846.P7159737226715998662

`A320005(A213663(n+1))`
-/

namespace A164846.P7159737226715998662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A213663 (n + 1)).toNat

end

end A164846.P7159737226715998662

/-!
# A164847: (100^n,1) Pascal triangle.

The programs for A164847, there is no canonical definition to state claims against.
-/

/-! ## A164847.P13205261576614911309

`A051022(A164844(A061579(n)))`
-/

namespace A164847.P13205261576614911309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A164844 (A061579 n).toNat).toNat

end

end A164847.P13205261576614911309

/-! ## A164847.P16343382852103230113

`A276596(A007318(n)*A099375(n))`
-/

namespace A164847.P16343382852103230113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276596 (A007318 n * A099375 n).toNat

end

end A164847.P16343382852103230113

/-! ## A164847.P16807505373271655579

`A276596(A009999(n)*A099375(n))`
-/

namespace A164847.P16807505373271655579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276596 (A009999 n * A099375 n).toNat

end

end A164847.P16807505373271655579

/-!
# A164848: a(n) = A026741(n)/A051712(n+1).

The programs for A164848, the canonical program `A164848.P14975602056490577141` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164848 has offset 1).

The definition of A164848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164848.P14975602056490577141

`gcd(12, (n+1)/gcd(2, n+1))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164848

/-- `gcd(12, (n+1)/gcd(2, n+1))` -/
def P14975602056490577141.Spec : Prop :=
  ∀ n, (P14975602056490577141.a n : ℤ) = A164848 (n + 1)

theorem P14975602056490577141.correct : P14975602056490577141.Spec := by
  intro n
  simp only [A164848, Nat.add_sub_cancel]

end A164848

/-! ## A164848.P12356388706988834448

`A026741(n+1)/A051712(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164848.P12356388706988834448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) : ℚ) / (A051712 (n + 2) : ℚ)

end

end A164848.P12356388706988834448

namespace A164848

/-- `A026741(n+1)/A051712(n+2)` -/
def P12356388706988834448.Spec : Prop :=
  ∀ n, P12356388706988834448.a n = (A164848 (n + 1) : ℚ)

end A164848

/-!
# A164849: Diagonal sum of (100^n,1) Pascal triangle.

The programs for A164849, there is no canonical definition to state claims against.
-/

/-! ## A164849.P1797021623537515539

`A107846(9^n+4)+∑[10^n*log2(gcd(2, n))]`
-/

namespace A164849.P1797021623537515539
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℝ) * Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A107846 (9 ^ n + 4) : ℝ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164849.P1797021623537515539

/-!
# A164852: Diagonal sum of generalized Lucas-Pascal triangle;(11*10^n,1).

The programs for A164852, the canonical program `A164852.P5010145751110003074` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164852 has offset 1).

The definition of A164852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164852.P5010145751110003074

`A000032(n)+10*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164852

/-- `A000032(n)+10*a(n-2)` -/
def P5010145751110003074.Spec : Prop :=
  ∀ n, P5010145751110003074.a n = A164852 (n + 1)

theorem P5010145751110003074.correct : P5010145751110003074.Spec := by
  intro n
  simp only [A164852, Nat.add_sub_cancel]

end A164852

/-! ## A164852.P5639932396442006432

`A127218(2*n)+10*a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A164852.P5639932396442006432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A127218 (2 * n) + 10 * a (n - 2)

end

end A164852.P5639932396442006432

namespace A164852

/-- `A127218(2*n)+10*a(n-2)` -/
def P5639932396442006432.Spec : Prop :=
  ∀ n, P5639932396442006432.a n = A164852 (n + 1)

end A164852

/-! ## A164852.P12352522929776379060

`A187947(A164854(n+1))`
-/

namespace A164852.P12352522929776379060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187947 (A164854 (n + 1)).toNat

end

end A164852.P12352522929776379060

namespace A164852

/-- `A187947(A164854(n+1))` -/
def P12352522929776379060.Spec : Prop :=
  ∀ n, P12352522929776379060.a n = A164852 (n + 1)

end A164852

/-!
# A164853: a(n) = lcm(first n semiprimes).

The programs for A164853, the canonical program `A164853.P2568160840855597217` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164853 has offset 1).

The definition of A164853 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164853.P2568160840855597217

`lcm(a(n-1), A001358(n+1))` with `a(0)=4`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A164853

/-- `lcm(a(n-1), A001358(n+1))` -/
def P2568160840855597217.Spec : Prop :=
  ∀ n, (P2568160840855597217.a n : ℤ) = A164853 (n + 1)

theorem P2568160840855597217.correct : P2568160840855597217.Spec := by
  intro n
  simp only [A164853, Nat.add_sub_cancel]

end A164853

/-! ## A164853.P882012068350621045

`a(n-1)*A164914(n)` with `a(0)=4`
-/

namespace A164853.P882012068350621045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * A164914 n

end

end A164853.P882012068350621045

namespace A164853

/-- `a(n-1)*A164914(n)` -/
def P882012068350621045.Spec : Prop :=
  ∀ n, P882012068350621045.a n = A164853 (n + 1)

end A164853

/-! ## A164853.P2654843721544934703

`lcm(abs(a(n-1)), A075818(n+1))` with `a(0)=4`
-/

namespace A164853.P2654843721544934703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A075818 (n + 1))

end

end A164853.P2654843721544934703

namespace A164853

/-- `lcm(abs(a(n-1)), A075818(n+1))` -/
def P2654843721544934703.Spec : Prop :=
  ∀ n, (P2654843721544934703.a n : ℤ) = A164853 (n + 1)

end A164853

/-! ## A164853.P6940320280268357

`lcm(-a(n-1), eq[2, A105700(n)])` with `a(0)=4`
-/

namespace A164853.P6940320280268357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A164853.P6940320280268357

namespace A164853

/-- `lcm(-a(n-1), eq[2, A105700(n)])` -/
def P6940320280268357.Spec : Prop :=
  ∀ n, (P6940320280268357.a n : ℤ) = A164853 (n + 1)

end A164853

/-! ## A164853.P8908614498360802340

`2*∏[A014963(A176570(n+1))]`
-/

namespace A164853.P8908614498360802340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A176570 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A164853.P8908614498360802340

namespace A164853

/-- `2*∏[A014963(A176570(n+1))]` -/
def P8908614498360802340.Spec : Prop :=
  ∀ n, P8908614498360802340.a n = A164853 (n + 1)

end A164853

/-! ## A164853.P3691434584628279819

`lcm(a(n-1), A207790(A004767(n)))` with `a(0)=4`
-/

namespace A164853.P3691434584628279819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A207790 (A004767 n).toNat)

end

end A164853.P3691434584628279819

namespace A164853

/-- `lcm(a(n-1), A207790(A004767(n)))` -/
def P3691434584628279819.Spec : Prop :=
  ∀ n, (P3691434584628279819.a n : ℤ) = A164853 (n + 1)

end A164853

/-!
# A164854: Diagonal sum of generalized Pascal triangle; (10^n,1).

The programs for A164854, the canonical program `A164854.P9674593277718671527` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164854 has offset 0).

The definition of A164854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164854.P9674593277718671527

`a(n-1)+11*a(n-2)-10*a(n-3)-10*a(n-4)` with `a(0)=1, a(1)=1, a(2)=11, a(3)=12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164854

/-- `a(n-1)+11*a(n-2)-10*a(n-3)-10*a(n-4)` -/
def P9674593277718671527.Spec : Prop :=
  ∀ n, P9674593277718671527.a n = A164854 n

theorem P9674593277718671527.correct : P9674593277718671527.Spec := by
  intro n
  simp only [A164854]

end A164854

/-! ## A164854.P2465277593087198920

`(171-9*(-1)^n)*10^floor(n/2)/142+(A000045(n)-10*A000045(n+2))/71`
-/

namespace A164854.P2465277593087198920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (171 - 9 * (-1) ^ n : ℚ) * (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) / 142 + (A000045 n - 10 * A000045 (n + 2) : ℚ) / 71

end

end A164854.P2465277593087198920

namespace A164854

/-- `(171-9*(-1)^n)*10^floor(n/2)/142+(A000045(n)-10*A000045(n+2))/71` -/
def P2465277593087198920.Spec : Prop :=
  ∀ n, P2465277593087198920.a n = (A164854 n : ℚ)

end A164854

/-! ## A164854.P8874512715902574562

`A164852(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A164854.P8874512715902574562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A164852 n - a (n - 2)

end

end A164854.P8874512715902574562

namespace A164854

/-- `A164852(n)-a(n-2)` -/
def P8874512715902574562.Spec : Prop :=
  ∀ n, P8874512715902574562.a n = A164854 n

end A164854

/-! ## A164854.P4079417978798557069

`A000045(n)+10*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A164854.P4079417978798557069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 n + 10 * a (n - 2)

end

end A164854.P4079417978798557069

namespace A164854

/-- `A000045(n)+10*a(n-2)` -/
def P4079417978798557069.Spec : Prop :=
  ∀ n, P4079417978798557069.a n = A164854 n

end A164854

/-! ## A164854.P14966021894270774069

`A324969(n+1)+10*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A164854.P14966021894270774069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A324969 (n + 1) + 10 * a (n - 2)

end

end A164854.P14966021894270774069

namespace A164854

/-- `A324969(n+1)+10*a(n-2)` -/
def P14966021894270774069.Spec : Prop :=
  ∀ n, P14966021894270774069.a n = A164854 n

end A164854

/-! ## A164854.P17126894946350214300

`10*a(n-2)+A001611(n)-1` with `a(0)=1, a(1)=1`
-/

namespace A164854.P17126894946350214300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  10 * a (n - 2) + (A001611 n - 1)

end

end A164854.P17126894946350214300

namespace A164854

/-- `10*a(n-2)+A001611(n)-1` -/
def P17126894946350214300.Spec : Prop :=
  ∀ n, P17126894946350214300.a n = A164854 n

end A164854

/-!
# A164855: Generalized Lucas-Pascal triangle: (101*100^n,1).

The programs for A164855, there is no canonical definition to state claims against.
-/

/-! ## A164855.P5773353399835861251

`A051022(A164851(n*A274741(n)))`
-/

namespace A164855.P5773353399835861251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A164851 ((n : ℤ) * A274741 n).toNat).toNat

end

end A164855.P5773353399835861251

/-! ## A164855.P14991797544032909027

`A051022(A164851(n)^A060500(n))`
-/

namespace A164855.P14991797544032909027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.roundAway ((A164851 n : ℚ) ^ (A060500 n : ℤ))).toNat

end

end A164855.P14991797544032909027

/-!
# A164857: a(n) = A164798(n)/(n-1)!.

The programs for A164857, there is no canonical definition to state claims against.
-/

/-! ## A164857.P7435175273962420448

`A164798(n+1)!/n!`
-/

namespace A164857.P7435175273962420448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A164798 (n + 1)).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A164857.P7435175273962420448

/-! ## A164857.P8219544148913048788

`(A164799(n+1)+n)!/A000142(n)`
-/

namespace A164857.P8219544148913048788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A164799 (n + 1) + (n : ℤ)).toNat : ℚ) / (A000142 n : ℚ)

end

end A164857.P8219544148913048788

/-! ## A164857.P2881327499588523872

`A000142(A164798(n+1))/A000142(n)`
-/

namespace A164857.P2881327499588523872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A164798 (n + 1)).toNat : ℚ) / (A000142 n : ℚ)

end

end A164857.P2881327499588523872

/-! ## A164857.P1838745711059454519

`A000142(A164799(n+1)+n)/A000142(n)`
-/

namespace A164857.P1838745711059454519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A164799 (n + 1) + (n : ℤ)).toNat : ℚ) / (A000142 n : ℚ)

end

end A164857.P1838745711059454519

/-! ## A164857.P15247148463546641182

`(gcd(A079455(n+1), A079583(n))+n)!/A000142(n)`
-/

namespace A164857.P15247148463546641182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.gcd (A079455 (n + 1)) (A079583 n) + n) : ℚ) / (A000142 n : ℚ)

end

end A164857.P15247148463546641182

/-!
# A164858: a(n) = largest prime dividing A164857(n). a(1)=1.

The programs for A164858, there is no canonical definition to state claims against.
-/

/-! ## A164858.P9405493936723242424

`A006530(C(A164798(n+1), n))`
-/

namespace A164858.P9405493936723242424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A164798 (n + 1)).toNat n)

end

end A164858.P9405493936723242424

/-! ## A164858.P1554150169931272933

`A006530(∏{p}[A164857(n+1), #])`
-/

namespace A164858.P1554150169931272933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A164858.P1554150169931272933

/-! ## A164858.P8770092231593249959

`A006530(C(A164799(n+1)+n, n))`
-/

namespace A164858.P8770092231593249959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A164799 (n + 1) + (n : ℤ)).toNat n)

end

end A164858.P8770092231593249959

/-! ## A164858.P7657994845548553830

`A006530(∏{p}[A164798(n+1)!/n!, #])`
-/

namespace A164858.P7657994845548553830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A164798 (n + 1)).toNat : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A164858.P7657994845548553830

/-!
# A164859: a(1)=1. a(n) = the smallest positive integer that, when written in binary, contains both binary a(n-1) and binary n as (possibly overlapping) substrings.

The programs for A164859, there is no canonical definition to state claims against.
-/

/-! ## A164859.P11844442230028179158

`A126989(n+1)+A084214(A126974(n+1))`
-/

namespace A164859.P11844442230028179158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126989 (n + 1) + A084214 (A126974 (n + 1)).toNat

end

end A164859.P11844442230028179158

/-! ## A164859.P10286884759422638151

`A126989(n+1)+A084214(A057367(2*n+3))`
-/

namespace A164859.P10286884759422638151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126989 (n + 1) + A084214 (A057367 (2 * n + 3)).toNat

end

end A164859.P10286884759422638151

/-!
# A164861: Odd positive integers that are not palindromes when written in binary.

The programs for A164861, the canonical program `A164861.P15754202553572864490` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164861 has offset 1).

The definition of A164861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164861.P15754202553572864490

`lt[1, A077925(A303534(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A164861

/-- `lt[1, A077925(A303534(n))]` -/
def P15754202553572864490.Spec : Prop :=
  ∀ n, (P15754202553572864490.a n : ℤ) = A164861 (n + 1)

theorem P15754202553572864490.correct : P15754202553572864490.Spec := by
  intro n
  simp only [A164861, Nat.add_sub_cancel]

end A164861

/-! ## A164861.P11003162906973538472

`eq[A123726(n), A178226(n)]`
-/

namespace A164861.P11003162906973538472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164861.P11003162906973538472

namespace A164861

/-- `eq[A123726(n), A178226(n)]` -/
def P11003162906973538472.Spec : Prop :=
  ∀ n, (P11003162906973538472.a n : ℤ) = A164861 (n + 1)

end A164861

/-! ## A164861.P386865048095922956

`lt[2, A020639(A303534(n)+1)]`
-/

namespace A164861.P386865048095922956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A303534 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164861.P386865048095922956

namespace A164861

/-- `lt[2, A020639(A303534(n)+1)]` -/
def P386865048095922956.Spec : Prop :=
  ∀ n, (P386865048095922956.a n : ℤ) = A164861 (n + 1)

end A164861

/-! ## A164861.P7531243677412501906

`eq[A057237(n+1), A178226(n)]`
-/

namespace A164861.P7531243677412501906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164861.P7531243677412501906

namespace A164861

/-- `eq[A057237(n+1), A178226(n)]` -/
def P7531243677412501906.Spec : Prop :=
  ∀ n, (P7531243677412501906.a n : ℤ) = A164861 (n + 1)

end A164861

/-! ## A164861.P11776651080520848518

`eq[A135521(n+1), A178226(n)]`
-/

namespace A164861.P11776651080520848518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164861.P11776651080520848518

namespace A164861

/-- `eq[A135521(n+1), A178226(n)]` -/
def P11776651080520848518.Spec : Prop :=
  ∀ n, (P11776651080520848518.a n : ℤ) = A164861 (n + 1)

end A164861

/-! ## A164861.P12670687258819703243

`filter[A020742(n), A178226(#)]`
-/

namespace A164861.P12670687258819703243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A164861.P12670687258819703243

namespace A164861

/-- `filter[A020742(n), A178226(#)]` -/
def P12670687258819703243.Spec : Prop :=
  ∀ n, P12670687258819703243.a n = A164861 (n + 1)

end A164861

/-! ## A164861.P3407694718094773139

`filter[A308602(n+4), A178226(#)]`
-/

namespace A164861.P3407694718094773139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308602 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A164861.P3407694718094773139

namespace A164861

/-- `filter[A308602(n+4), A178226(#)]` -/
def P3407694718094773139.Spec : Prop :=
  ∀ n, P3407694718094773139.a n = A164861 (n + 1)

end A164861

/-! ## A164861.P5226985683520202565

`filter[A005818(n+1), A178226(#)]`
-/

namespace A164861.P5226985683520202565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A164861.P5226985683520202565

namespace A164861

/-- `filter[A005818(n+1), A178226(#)]` -/
def P5226985683520202565.Spec : Prop :=
  ∀ n, P5226985683520202565.a n = A164861 (n + 1)

end A164861

/-! ## A164861.P16049750692160714908

`filter[A020735(n+1), A178226(#)]`
-/

namespace A164861.P16049750692160714908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A164861.P16049750692160714908

namespace A164861

/-- `filter[A020735(n+1), A178226(#)]` -/
def P16049750692160714908.Spec : Prop :=
  ∀ n, P16049750692160714908.a n = A164861 (n + 1)

end A164861

/-! ## A164861.P8356178863866839768

`filter[A062545(n), A178226(#)]`
-/

namespace A164861.P8356178863866839768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A164861.P8356178863866839768

namespace A164861

/-- `filter[A062545(n), A178226(#)]` -/
def P8356178863866839768.Spec : Prop :=
  ∀ n, P8356178863866839768.a n = A164861 (n + 1)

end A164861

/-! ## A164861.P9206370321137801014

`filter[A144396(n+1), A178226(#)]`
-/

namespace A164861.P9206370321137801014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A164861.P9206370321137801014

namespace A164861

/-- `filter[A144396(n+1), A178226(#)]` -/
def P9206370321137801014.Spec : Prop :=
  ∀ n, P9206370321137801014.a n = A164861 (n + 1)

end A164861

/-! ## A164861.P3885754840002510646

`filter[A359506(2*n), A178226(#)]`
-/

namespace A164861.P3885754840002510646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359506 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A164861.P3885754840002510646

namespace A164861

/-- `filter[A359506(2*n), A178226(#)]` -/
def P3885754840002510646.Spec : Prop :=
  ∀ n, P3885754840002510646.a n = A164861 (n + 1)

end A164861

/-! ## A164861.P6737100045826893300

`filter[A267872(n), A178226(#)]`
-/

namespace A164861.P6737100045826893300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A164861.P6737100045826893300

namespace A164861

/-- `filter[A267872(n), A178226(#)]` -/
def P6737100045826893300.Spec : Prop :=
  ∀ n, P6737100045826893300.a n = A164861 (n + 1)

end A164861

/-! ## A164861.P2067386274288997363

`eq[A010123(n), A178226(n)]`
-/

namespace A164861.P2067386274288997363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164861.P2067386274288997363

namespace A164861

/-- `eq[A010123(n), A178226(n)]` -/
def P2067386274288997363.Spec : Prop :=
  ∀ n, (P2067386274288997363.a n : ℤ) = A164861 (n + 1)

end A164861

/-! ## A164861.P15876287812437956023

`eq[A010127(n), A178226(n)]`
-/

namespace A164861.P15876287812437956023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164861.P15876287812437956023

namespace A164861

/-- `eq[A010127(n), A178226(n)]` -/
def P15876287812437956023.Spec : Prop :=
  ∀ n, (P15876287812437956023.a n : ℤ) = A164861 (n + 1)

end A164861

/-! ## A164861.P3393751109940461168

`eq[A010131(n), A178226(n)]`
-/

namespace A164861.P3393751109940461168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164861.P3393751109940461168

namespace A164861

/-- `eq[A010131(n), A178226(n)]` -/
def P3393751109940461168.Spec : Prop :=
  ∀ n, (P3393751109940461168.a n : ℤ) = A164861 (n + 1)

end A164861

/-! ## A164861.P3400085621688538948

`eq[A010132(n), A178226(n)]`
-/

namespace A164861.P3400085621688538948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164861.P3400085621688538948

namespace A164861

/-- `eq[A010132(n), A178226(n)]` -/
def P3400085621688538948.Spec : Prop :=
  ∀ n, (P3400085621688538948.a n : ℤ) = A164861 (n + 1)

end A164861

/-! ## A164861.P5283847914962713780

`eq[A010137(n), A178226(n)]`
-/

namespace A164861.P5283847914962713780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164861.P5283847914962713780

namespace A164861

/-- `eq[A010137(n), A178226(n)]` -/
def P5283847914962713780.Spec : Prop :=
  ∀ n, (P5283847914962713780.a n : ℤ) = A164861 (n + 1)

end A164861

/-! ## A164861.P3933938929963533709

`eq[A010146(n), A178226(n)]`
-/

namespace A164861.P3933938929963533709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164861.P3933938929963533709

namespace A164861

/-- `eq[A010146(n), A178226(n)]` -/
def P3933938929963533709.Spec : Prop :=
  ∀ n, (P3933938929963533709.a n : ℤ) = A164861 (n + 1)

end A164861

/-! ## A164861.P6067032674944502224

`eq[A010156(n), A178226(n)]`
-/

namespace A164861.P6067032674944502224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164861.P6067032674944502224

namespace A164861

/-- `eq[A010156(n), A178226(n)]` -/
def P6067032674944502224.Spec : Prop :=
  ∀ n, (P6067032674944502224.a n : ℤ) = A164861 (n + 1)

end A164861

/-!
# A164862: a(n) is the smallest positive integer that, when written in binary, contains the binary representations of both A164861(n) and the reversal of the order of the digits of A164861(n) as (overlapping) substrings.

The programs for A164862, there is no canonical definition to state claims against.
-/

/-! ## A164862.P18099093363954616885

`A145800(A164861(n+1))`
-/

namespace A164862.P18099093363954616885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (A164861 (n + 1)).toNat

end

end A164862.P18099093363954616885

/-! ## A164862.P10075020662252338101

`A145800(eq[3, A303536(n)])`
-/

namespace A164862.P10075020662252338101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164862.P10075020662252338101

/-! ## A164862.P5602056101666893062

`A145800(lt[1-A178226(n), n%2])`
-/

namespace A164862.P5602056101666893062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178226 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A164862.P5602056101666893062

/-! ## A164862.P7232990604244038884

`A145800(eq[A010123(n), A178226(n)])`
-/

namespace A164862.P7232990604244038884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164862.P7232990604244038884

/-! ## A164862.P2223372856062909448

`A145800(eq[A010127(n), A178226(n)])`
-/

namespace A164862.P2223372856062909448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164862.P2223372856062909448

/-! ## A164862.P7096579529000102515

`A145800(eq[A010131(n), A178226(n)])`
-/

namespace A164862.P7096579529000102515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164862.P7096579529000102515

/-! ## A164862.P5209326201409182518

`A145800(eq[A010132(n), A178226(n)])`
-/

namespace A164862.P5209326201409182518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164862.P5209326201409182518

/-! ## A164862.P3354301543729302060

`A145800(eq[A010146(n), A178226(n)])`
-/

namespace A164862.P3354301543729302060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164862.P3354301543729302060

/-! ## A164862.P10386142733289172299

`A145800(eq[A010167(n), A178226(n)])`
-/

namespace A164862.P10386142733289172299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010167 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164862.P10386142733289172299

/-! ## A164862.P7294982383630709898

`A145800(eq[A010169(n), A178226(n)])`
-/

namespace A164862.P7294982383630709898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164862.P7294982383630709898

/-!
# A164863: Number of ways of placing n labeled balls into 9 indistinguishable boxes; word structures of length n using a 9-ary alphabet.

The programs for A164863, there is no canonical definition to state claims against.
-/

/-! ## A164863.P1727760119872895606

`A137855(A155212(n+4))`
-/

namespace A164863.P1727760119872895606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A155212 (n + 4)).toNat

end

end A164863.P1727760119872895606

/-! ## A164863.P15447419436605016941

`A137855(eq[7, A025581(n)])`
-/

namespace A164863.P15447419436605016941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164863.P15447419436605016941

/-! ## A164863.P17449809684253347081

`A137855(A052905(n+5)-3)`
-/

namespace A164863.P17449809684253347081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A052905 (n + 5) - 3).toNat

end

end A164863.P17449809684253347081

/-! ## A164863.P10643244001518810943

`A137855(A000217(n+8)-8)`
-/

namespace A164863.P10643244001518810943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A000217 (n + 8) - 8).toNat

end

end A164863.P10643244001518810943

/-! ## A164863.P3067437566815531466

`A137855(eq[8, A004736(n+1)])`
-/

namespace A164863.P3067437566815531466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164863.P3067437566815531466

/-!
# A164864: Number of ways of placing n labeled balls into 10 indistinguishable boxes; word structures of length n using a 10-ary alphabet.

The programs for A164864, there is no canonical definition to state claims against.
-/

/-! ## A164864.P1062416583208639035

`A164904(2*n)`
-/

namespace A164864.P1062416583208639035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164904 (2 * n)

end

end A164864.P1062416583208639035

/-! ## A164864.P12676884132209907825

`gcd(A000038(n), A164904(A004277(n)))`
-/

namespace A164864.P12676884132209907825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A164904 (A004277 n).toNat)

end

end A164864.P12676884132209907825

/-! ## A164864.P9386455069103407011

`or(A000007(n), A164904(A004277(n)))`
-/

namespace A164864.P9386455069103407011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A164904 (A004277 n).toNat)

end

end A164864.P9386455069103407011

/-! ## A164864.P11975254577237719606

`A164904(A004277(n))+A000007(n+1)`
-/

namespace A164864.P11975254577237719606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164904 (A004277 n).toNat + A000007 (n + 1)

end

end A164864.P11975254577237719606

/-! ## A164864.P16781014879239806129

`A164904(A004273(n))^(A218354(n+1)%2)^n`
-/

namespace A164864.P16781014879239806129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164904 (A004273 n).toNat : ℚ) ^ (Int.tmod (A218354 (n + 1)) 2 ^ n : ℤ)

end

end A164864.P16781014879239806129

/-! ## A164864.P2774958417791008314

`A164904(A004273(n))%A052268(n+1)`
-/

namespace A164864.P2774958417791008314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164904 (A004273 n).toNat) (A052268 (n + 1))

end

end A164864.P2774958417791008314

/-! ## A164864.P9864011891933632755

`A164904(A004273(n))%A332187(n)`
-/

namespace A164864.P9864011891933632755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164904 (A004273 n).toNat) (A332187 n)

end

end A164864.P9864011891933632755

/-!
# A164865: Sum of the distinct semiprime divisors of the n-th number with two or more distinct semiprime divisors.

The programs for A164865, the canonical program `A164865.P8354172017210548301` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164865 has offset 1).

The definition of A164865 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076290, A102467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164865.P8354172017210548301

`A076290(A102467(n+2))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A164865

/-- `A076290(A102467(n+2))` -/
def P8354172017210548301.Spec : Prop :=
  ∀ n, P8354172017210548301.a n = A164865 (n + 1)

theorem P8354172017210548301.correct : P8354172017210548301.Spec := by
  intro n
  simp only [A164865, Nat.add_sub_cancel]

end A164865

/-! ## A164865.P1802441790293305254

`A076290(lt[2, A066882(n)])`
-/

namespace A164865.P1802441790293305254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A164865.P1802441790293305254

namespace A164865

/-- `A076290(lt[2, A066882(n)])` -/
def P1802441790293305254.Spec : Prop :=
  ∀ n, P1802441790293305254.a n = A164865 (n + 1)

end A164865

/-! ## A164865.P9633339702924195155

`A076290(lt[2, A284463(n)])`
-/

namespace A164865.P9633339702924195155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A164865.P9633339702924195155

namespace A164865

/-- `A076290(lt[2, A284463(n)])` -/
def P9633339702924195155.Spec : Prop :=
  ∀ n, P9633339702924195155.a n = A164865 (n + 1)

end A164865

/-! ## A164865.P8948912234398603394

`A076290(lt[n+1, A092976(n)])`
-/

namespace A164865.P8948912234398603394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A164865.P8948912234398603394

namespace A164865

/-- `A076290(lt[n+1, A092976(n)])` -/
def P8948912234398603394.Spec : Prop :=
  ∀ n, P8948912234398603394.a n = A164865 (n + 1)

end A164865

/-! ## A164865.P2032946095896114415

`A076290(lt[1, A092976(n)-n])`
-/

namespace A164865.P2032946095896114415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A164865.P2032946095896114415

namespace A164865

/-- `A076290(lt[1, A092976(n)-n])` -/
def P2032946095896114415.Spec : Prop :=
  ∀ n, P2032946095896114415.a n = A164865 (n + 1)

end A164865

/-! ## A164865.P10624702126319016974

`A076290(lt[n+2, A225244(n)])`
-/

namespace A164865.P10624702126319016974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A164865.P10624702126319016974

namespace A164865

/-- `A076290(lt[n+2, A225244(n)])` -/
def P10624702126319016974.Spec : Prop :=
  ∀ n, P10624702126319016974.a n = A164865 (n + 1)

end A164865

/-! ## A164865.P11341491329919094166

`A076290(lt[2, A225244(n)-n])`
-/

namespace A164865.P11341491329919094166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A164865.P11341491329919094166

namespace A164865

/-- `A076290(lt[2, A225244(n)-n])` -/
def P11341491329919094166.Spec : Prop :=
  ∀ n, P11341491329919094166.a n = A164865 (n + 1)

end A164865

/-!
# A164866: (101^n,1)-Pascal triangle.

The programs for A164866, there is no canonical definition to state claims against.
-/

/-! ## A164866.P5434047158744272740

`A007089(A063432(n+1)^A091269(n))`
-/

namespace A164866.P5434047158744272740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway ((A063432 (n + 1) : ℚ) ^ (A091269 n : ℤ))).toNat

end

end A164866.P5434047158744272740

/-!
# A164869: n*A027642(n).

The programs for A164869, the canonical program `A164869.P11362495776085289296` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164869 has offset 0).

The definition of A164869 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164869.P11362495776085289296

`n*A027642(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A164869

/-- `n*A027642(n)` -/
def P11362495776085289296.Spec : Prop :=
  ∀ n, P11362495776085289296.a n = A164869 n

theorem P11362495776085289296.correct : P11362495776085289296.Spec := by
  intro n
  simp only [A164869]

end A164869

/-! ## A164869.P15047096730740958205

`A164558(n)-A164555(n)`
-/

namespace A164869.P15047096730740958205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164558 n - A164555 n

end

end A164869.P15047096730740958205

namespace A164869

/-- `A164558(n)-A164555(n)` -/
def P15047096730740958205.Spec : Prop :=
  ∀ n, P15047096730740958205.a n = A164869 n

end A164869

/-! ## A164869.P8533385053967858948

`n*sqrt(A172282(n))`
-/

namespace A164869.P8533385053967858948
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A172282 n : ℝ)

end

end A164869.P8533385053967858948

namespace A164869

/-- `n*sqrt(A172282(n))` -/
def P8533385053967858948.Spec : Prop :=
  ∀ n, P8533385053967858948.a n = (A164869 n : ℝ)

end A164869

/-! ## A164869.P12898609096112145584

`lcm(n, A075180(abs(1-n)))`
-/

namespace A164869.P12898609096112145584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A075180 |1 - (n : ℤ)|.toNat)

end

end A164869.P12898609096112145584

namespace A164869

/-- `lcm(n, A075180(abs(1-n)))` -/
def P12898609096112145584.Spec : Prop :=
  ∀ n, (P12898609096112145584.a n : ℤ) = A164869 n

end A164869

/-! ## A164869.P14709893942019730083

`char[1]+n*A176289(n)`
-/

namespace A164869.P14709893942019730083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) * A176289 n

end

end A164869.P14709893942019730083

namespace A164869

/-- `char[1]+n*A176289(n)` -/
def P14709893942019730083.Spec : Prop :=
  ∀ n, P14709893942019730083.a n = A164869 n

end A164869

/-! ## A164869.P7164418900624624088

`A176289(n)*A254667(n)`
-/

namespace A164869.P7164418900624624088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n * A254667 n

end

end A164869.P7164418900624624088

namespace A164869

/-- `A176289(n)*A254667(n)` -/
def P7164418900624624088.Spec : Prop :=
  ∀ n, P7164418900624624088.a n = A164869 n

end A164869

/-! ## A164869.P8120268869658776158

`n*(A176289(n)+A063524(n))`
-/

namespace A164869.P8120268869658776158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A176289 n + A063524 n)

end

end A164869.P8120268869658776158

namespace A164869

/-- `n*(A176289(n)+A063524(n))` -/
def P8120268869658776158.Spec : Prop :=
  ∀ n, P8120268869658776158.a n = A164869 n

end A164869

/-! ## A164869.P1139435459455759478

`(n-A159075(n))*A176289(n)`
-/

namespace A164869.P1139435459455759478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A159075 n) * A176289 n

end

end A164869.P1139435459455759478

namespace A164869

/-- `(n-A159075(n))*A176289(n)` -/
def P1139435459455759478.Spec : Prop :=
  ∀ n, P1139435459455759478.a n = A164869 n

end A164869

/-! ## A164869.P808705378583439350

`n*A141056(n*A266591(n))`
-/

namespace A164869.P808705378583439350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141056 ((n : ℤ) * A266591 n).toNat

end

end A164869.P808705378583439350

namespace A164869

/-- `n*A141056(n*A266591(n))` -/
def P808705378583439350.Spec : Prop :=
  ∀ n, P808705378583439350.a n = A164869 n

end A164869

/-! ## A164869.P11683889151118294120

`n*A164020(n*A266591(n))`
-/

namespace A164869.P11683889151118294120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A164020 ((n : ℤ) * A266591 n).toNat

end

end A164869.P11683889151118294120

namespace A164869

/-- `n*A164020(n*A266591(n))` -/
def P11683889151118294120.Spec : Prop :=
  ∀ n, P11683889151118294120.a n = A164869 n

end A164869

/-! ## A164869.P14510976893160440876

`n*A176289(n)*A373565(n)`
-/

namespace A164869.P14510976893160440876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A176289 n * A373565 n)

end

end A164869.P14510976893160440876

namespace A164869

/-- `n*A176289(n)*A373565(n)` -/
def P14510976893160440876.Spec : Prop :=
  ∀ n, P14510976893160440876.a n = A164869 n

end A164869

/-! ## A164869.P9244642636767251261

`n*A144845(n)/A286515(n)`
-/

namespace A164869.P9244642636767251261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A144845 n : ℚ) / (A286515 n : ℚ))

end

end A164869.P9244642636767251261

namespace A164869

/-- `n*A144845(n)/A286515(n)` -/
def P9244642636767251261.Spec : Prop :=
  ∀ n, P9244642636767251261.a n = (A164869 n : ℚ)

end A164869

/-! ## A164869.P14959272798554717791

`n*gcd(A002445(n), A172282(n))`
-/

namespace A164869.P14959272798554717791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A002445 n) (A172282 n)

end

end A164869.P14959272798554717791

namespace A164869

/-- `n*gcd(A002445(n), A172282(n))` -/
def P14959272798554717791.Spec : Prop :=
  ∀ n, (P14959272798554717791.a n : ℤ) = A164869 n

end A164869

/-! ## A164869.P4963180930451939448

`n*gcd(A164020(n), A266220(n))`
-/

namespace A164869.P4963180930451939448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A164020 n) (A266220 n)

end

end A164869.P4963180930451939448

namespace A164869

/-- `n*gcd(A164020(n), A266220(n))` -/
def P4963180930451939448.Spec : Prop :=
  ∀ n, (P4963180930451939448.a n : ℤ) = A164869 n

end A164869

/-! ## A164869.P6727836652020438153

`n*lcm(A166333(n), A176289(n))`
-/

namespace A164869.P6727836652020438153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (A166333 n) (A176289 n)

end

end A164869.P6727836652020438153

namespace A164869

/-- `n*lcm(A166333(n), A176289(n))` -/
def P6727836652020438153.Spec : Prop :=
  ∀ n, (P6727836652020438153.a n : ℤ) = A164869 n

end A164869

/-! ## A164869.P6135170008114440285

`n*xor(A010674(n), A176591(n))`
-/

namespace A164869.P6135170008114440285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor (A010674 n) (A176591 n)

end

end A164869.P6135170008114440285

namespace A164869

/-- `n*xor(A010674(n), A176591(n))` -/
def P6135170008114440285.Spec : Prop :=
  ∀ n, P6135170008114440285.a n = A164869 n

end A164869

/-! ## A164869.P4092037801162724381

`n*A089026(n+1)*A166120(n+1)`
-/

namespace A164869.P4092037801162724381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A089026 (n + 1) * A166120 (n + 1))

end

end A164869.P4092037801162724381

namespace A164869

/-- `n*A089026(n+1)*A166120(n+1)` -/
def P4092037801162724381.Spec : Prop :=
  ∀ n, P4092037801162724381.a n = A164869 n

end A164869

/-! ## A164869.P11231542583653323213

`n*A166120(n+1)*A166333(A166260(n+1))`
-/

namespace A164869.P11231542583653323213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A166120 (n + 1) * A166333 (A166260 (n + 1)).toNat)

end

end A164869.P11231542583653323213

namespace A164869

/-- `n*A166120(n+1)*A166333(A166260(n+1))` -/
def P11231542583653323213.Spec : Prop :=
  ∀ n, P11231542583653323213.a n = A164869 n

end A164869

/-! ## A164869.P2152315813603621311

`A022998(n)*A306821(n)`
-/

namespace A164869.P2152315813603621311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n * A306821 n

end

end A164869.P2152315813603621311

namespace A164869

/-- `A022998(n)*A306821(n)` -/
def P2152315813603621311.Spec : Prop :=
  ∀ n, P2152315813603621311.a n = A164869 n

end A164869

/-! ## A164869.P2506887209551590801

`n*A166120(n+1)*ratio[A034386(n)]`
-/

namespace A164869.P2506887209551590801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A166120 (n + 1) : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A164869.P2506887209551590801

namespace A164869

/-- `n*A166120(n+1)*ratio[A034386(n)]` -/
def P2506887209551590801.Spec : Prop :=
  ∀ n, P2506887209551590801.a n = (A164869 n : ℚ)

end A164869

/-!
# A164870: The number of permutations of length n that can be sorted by 2 pop stacks in parallel.

The programs for A164870, the canonical program `A164870.P7900039736764026697` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164870 has offset 1).

The definition of A164870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164870.P7900039736764026697

`6*a(n-1)-10*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164870

/-- `6*a(n-1)-10*a(n-2)+6*a(n-3)` -/
def P7900039736764026697.Spec : Prop :=
  ∀ n, P7900039736764026697.a n = A164870 (n + 1)

theorem P7900039736764026697.correct : P7900039736764026697.Spec := by
  intro n
  simp only [A164870, Nat.add_sub_cancel]

end A164870

/-! ## A164870.P16867643490753897718

`ogf((1-4x+4x^2)/(1-6x+10x^2-6x^3))`
-/

namespace A164870.P16867643490753897718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -6, 10, -6] n

end

end A164870.P16867643490753897718

namespace A164870

/-- `ogf((1-4x+4x^2)/(1-6x+10x^2-6x^3))` -/
def P16867643490753897718.Spec : Prop :=
  ∀ n, P16867643490753897718.a n = A164870 (n + 1)

end A164870

/-! ## A164870.P14444592474215926305

`A006134(n)-record[A089312(n)]`
-/

namespace A164870.P14444592474215926305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164870.P14444592474215926305

namespace A164870

/-- `A006134(n)-record[A089312(n)]` -/
def P14444592474215926305.Spec : Prop :=
  ∀ n, P14444592474215926305.a n = A164870 (n + 1)

end A164870

/-!
# A164873: The number of permutations of length n that can be sorted by 5 pop stacks in parallel.

The programs for A164873, there is no canonical definition to state claims against.
-/

/-! ## A164873.P18281406902833356461

`round(A338062(n!)/2)`
-/

namespace A164873.P18281406902833356461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A338062 (Nat.factorial n) : ℚ) / 2)

end

end A164873.P18281406902833356461

/-! ## A164873.P588541815051073425

`A226862(n!)+n!`
-/

namespace A164873.P588541815051073425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226862 (Nat.factorial n) + (Nat.factorial n : ℤ)

end

end A164873.P588541815051073425

/-! ## A164873.P14176862535255787861

`A226864(n!)+n!`
-/

namespace A164873.P14176862535255787861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226864 (Nat.factorial n) + (Nat.factorial n : ℤ)

end

end A164873.P14176862535255787861

/-! ## A164873.P17022321309476444559

`n!-A037801(n!)`
-/

namespace A164873.P17022321309476444559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A037801 (Nat.factorial n)

end

end A164873.P17022321309476444559

/-!
# A164874: Triangle read by rows: T(1,1)=2; T(n,k)=2*T(n-1,k)+1, 1<=k

The programs for A164874, the canonical program `A164874.P12027345168690341492` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164874 has offset 1).

The definition of A164874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164874.P12027345168690341492

`A030130(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A164874

/-- `A030130(n+2)` -/
def P12027345168690341492.Spec : Prop :=
  ∀ n, P12027345168690341492.a n = A164874 (n + 1)

theorem P12027345168690341492.correct : P12027345168690341492.Spec := by
  intro n
  simp only [A164874, Nat.add_sub_cancel]

end A164874

/-! ## A164874.P13130681912766738776

`A089633(comp[∑[n]])`
-/

namespace A164874.P13130681912766738776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A164874.P13130681912766738776

namespace A164874

/-- `A089633(comp[∑[n]])` -/
def P13130681912766738776.Spec : Prop :=
  ∀ n, P13130681912766738776.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P16326491155918142901

`A175332(n+1)-1`
-/

namespace A164874.P16326491155918142901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1) - 1

end

end A164874.P16326491155918142901

namespace A164874

/-- `A175332(n+1)-1` -/
def P16326491155918142901.Spec : Prop :=
  ∀ n, P16326491155918142901.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P2981233922840670586

`floor(A190620(n+1)/2)`
-/

namespace A164874.P2981233922840670586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190620 (n + 1) : ℚ) / 2⌋

end

end A164874.P2981233922840670586

namespace A164874

/-- `floor(A190620(n+1)/2)` -/
def P2981233922840670586.Spec : Prop :=
  ∀ n, P2981233922840670586.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P6785918391107977025

`A118586(n+1)/2-1`
-/

namespace A164874.P6785918391107977025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118586 (n + 1) : ℚ) / 2 - 1

end

end A164874.P6785918391107977025

namespace A164874

/-- `A118586(n+1)/2-1` -/
def P6785918391107977025.Spec : Prop :=
  ∀ n, P6785918391107977025.a n = (A164874 (n + 1) : ℚ)

end A164874

/-! ## A164874.P4532455202825744082

`A140513(n)+A089633(n)`
-/

namespace A164874.P4532455202825744082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + A089633 n

end

end A164874.P4532455202825744082

namespace A164874

/-- `A140513(n)+A089633(n)` -/
def P4532455202825744082.Spec : Prop :=
  ∀ n, P4532455202825744082.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P11723511145198681895

`∑[A130321(n)+A010054(n)]`
-/

namespace A164874.P11723511145198681895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164874.P11723511145198681895

namespace A164874

/-- `∑[A130321(n)+A010054(n)]` -/
def P11723511145198681895.Spec : Prop :=
  ∀ n, P11723511145198681895.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P15405616360280398031

`A130321(n)+A081118(n+1)`
-/

namespace A164874.P15405616360280398031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A081118 (n + 1)

end

end A164874.P15405616360280398031

namespace A164874

/-- `A130321(n)+A081118(n+1)` -/
def P15405616360280398031.Spec : Prop :=
  ∀ n, P15405616360280398031.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P16903402042746002164

`A089633(n)+2*A137688(n)`
-/

namespace A164874.P16903402042746002164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n + 2 * A137688 n

end

end A164874.P16903402042746002164

namespace A164874

/-- `A089633(n)+2*A137688(n)` -/
def P16903402042746002164.Spec : Prop :=
  ∀ n, P16903402042746002164.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P11992435180406144253

`xor(A130330(n), A175332(n+1))`
-/

namespace A164874.P11992435180406144253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130330 n) (A175332 (n + 1))

end

end A164874.P11992435180406144253

namespace A164874

/-- `xor(A130330(n), A175332(n+1))` -/
def P11992435180406144253.Spec : Prop :=
  ∀ n, P11992435180406144253.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P2165169223116936755

`A002024(n+1)+∑[A130321(n)]`
-/

namespace A164874.P2165169223116936755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164874.P2165169223116936755

namespace A164874

/-- `A002024(n+1)+∑[A130321(n)]` -/
def P2165169223116936755.Spec : Prop :=
  ∀ n, P2165169223116936755.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P16692788175176874644

`∑[A035214(n)+A130321(n)-1]`
-/

namespace A164874.P16692788175176874644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + (A130321 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164874.P16692788175176874644

namespace A164874

/-- `∑[A035214(n)+A130321(n)-1]` -/
def P16692788175176874644.Spec : Prop :=
  ∀ n, P16692788175176874644.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P16132665713462112470

`A043569(n+1)+A130321(n)-1`
-/

namespace A164874.P16132665713462112470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) + (A130321 n - 1)

end

end A164874.P16132665713462112470

namespace A164874

/-- `A043569(n+1)+A130321(n)-1` -/
def P16132665713462112470.Spec : Prop :=
  ∀ n, P16132665713462112470.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P14113962678534672657

`A043569(n+2)-A035214(n+1)`
-/

namespace A164874.P14113962678534672657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 2) - A035214 (n + 1)

end

end A164874.P14113962678534672657

namespace A164874

/-- `A043569(n+2)-A035214(n+1)` -/
def P14113962678534672657.Spec : Prop :=
  ∀ n, P14113962678534672657.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P16043604511507031402

`A081118(n+2)-A010054(n+1)`
-/

namespace A164874.P16043604511507031402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 2) - A010054 (n + 1)

end

end A164874.P16043604511507031402

namespace A164874

/-- `A081118(n+2)-A010054(n+1)` -/
def P16043604511507031402.Spec : Prop :=
  ∀ n, P16043604511507031402.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P7136673276243841078

`A224195(n+1)+A130321(n)-2`
-/

namespace A164874.P7136673276243841078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1) + (A130321 n - 2)

end

end A164874.P7136673276243841078

namespace A164874

/-- `A224195(n+1)+A130321(n)-2` -/
def P7136673276243841078.Spec : Prop :=
  ∀ n, P7136673276243841078.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P11666479975828741465

`A190620(n+1)%A175332(n+1)`
-/

namespace A164874.P11666479975828741465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190620 (n + 1)) (A175332 (n + 1))

end

end A164874.P11666479975828741465

namespace A164874

/-- `A190620(n+1)%A175332(n+1)` -/
def P11666479975828741465.Spec : Prop :=
  ∀ n, P11666479975828741465.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P7760921117686485371

`A130330(A127739(n+1))-A130321(n)`
-/

namespace A164874.P7760921117686485371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (A127739 (n + 1)).toNat - A130321 n

end

end A164874.P7760921117686485371

namespace A164874

/-- `A130330(A127739(n+1))-A130321(n)` -/
def P7760921117686485371.Spec : Prop :=
  ∀ n, P7760921117686485371.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P16305618717514855783

`A081118(n+1)+A000079(A004736(n+1)-1)`
-/

namespace A164874.P16305618717514855783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) + A000079 (A004736 (n + 1) - 1).toNat

end

end A164874.P16305618717514855783

namespace A164874

/-- `A081118(n+1)+A000079(A004736(n+1)-1)` -/
def P16305618717514855783.Spec : Prop :=
  ∀ n, P16305618717514855783.a n = A164874 (n + 1)

end A164874

/-! ## A164874.P1521464543321717181

`(A081118(n+1+A004736(n+1)+A002260(n+1))-1)/2`
-/

namespace A164874.P1521464543321717181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081118 ((n + 1 : ℤ) + (A004736 (n + 1) + A002260 (n + 1))).toNat - 1 : ℚ) / 2

end

end A164874.P1521464543321717181

namespace A164874

/-- `(A081118(n+1+A004736(n+1)+A002260(n+1))-1)/2` -/
def P1521464543321717181.Spec : Prop :=
  ∀ n, P1521464543321717181.a n = (A164874 (n + 1) : ℚ)

end A164874

/-!
# A164875: Record holders for n^2 - phi(n)*sigma(n).

The programs for A164875, there is no canonical definition to state claims against.
-/

/-! ## A164875.P7497223822556889827

`lt[A270232(n), A034448(A000118(n))]`
-/

namespace A164875.P7497223822556889827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270232 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A000118 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164875.P7497223822556889827

/-! ## A164875.P15615686339706339877

`∑[A099774(A125691(n))]`
-/

namespace A164875.P15615686339706339877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A125691 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164875.P15615686339706339877

/-! ## A164875.P13300164152104883996

`∑[A348001(A293732(n))]`
-/

namespace A164875.P13300164152104883996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348001 (A293732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164875.P13300164152104883996

/-! ## A164875.P14263356774071098574

`∑[A147809(A098615(n))+1]`
-/

namespace A164875.P14263356774071098574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (A098615 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164875.P14263356774071098574

/-!
# A164876: Record differences for n^2 - phi(n)*sigma(n).

The programs for A164876, the canonical program `A164876.P16113870689143514141` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164876 has offset 1).

The definition of A164876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164876.P8142705153012104377

`A069249(A164875(n+1))`
-/

namespace A164876.P8142705153012104377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (A164875 (n + 1)).toNat

end

end A164876.P8142705153012104377

namespace A164876

/-- `A069249(A164875(n+1))` -/
def P8142705153012104377.Spec : Prop :=
  ∀ n, P8142705153012104377.a n = A164876 (n + 1)

end A164876

/-! ## A164876.P16113870689143514141

`record[(n+1)²-A000203(n+1)*A000010(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A164876

/-- `record[(n+1)²-A000203(n+1)*A000010(n+1)]` -/
def P16113870689143514141.Spec : Prop :=
  ∀ n, P16113870689143514141.a n = A164876 (n + 1)

theorem P16113870689143514141.correct : P16113870689143514141.Spec := by
  intro n
  simp only [A164876, Nat.add_sub_cancel]

end A164876

/-! ## A164876.P1048853900744243783

`record[A069249(n+1)]`
-/

namespace A164876.P1048853900744243783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164876.P1048853900744243783

namespace A164876

/-- `record[A069249(n+1)]` -/
def P1048853900744243783.Spec : Prop :=
  ∀ n, P1048853900744243783.a n = A164876 (n + 1)

end A164876

/-! ## A164876.P18098490229595527843

`record[(n+1)²-A062354(n+1)]`
-/

namespace A164876.P18098490229595527843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A062354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164876.P18098490229595527843

namespace A164876

/-- `record[(n+1)²-A062354(n+1)]` -/
def P18098490229595527843.Spec : Prop :=
  ∀ n, P18098490229595527843.a n = A164876 (n + 1)

end A164876

/-! ## A164876.P14114537893988797949

`record[A053650(n+1)-A007517(n+1)]`
-/

namespace A164876.P14114537893988797949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053650 (n + 1) - A007517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164876.P14114537893988797949

namespace A164876

/-- `record[A053650(n+1)-A007517(n+1)]` -/
def P14114537893988797949.Spec : Prop :=
  ∀ n, P14114537893988797949.a n = A164876 (n + 1)

end A164876

/-!
# A164877: First bisection of A164869.

The programs for A164877, the canonical program `A164877.P9055220264307131730` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164877 has offset 0).

The definition of A164877 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164869, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164877.P14833097442175329800

`A002445(n)*A005843(n)`
-/

namespace A164877.P14833097442175329800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n * A005843 n

end

end A164877.P14833097442175329800

namespace A164877

/-- `A002445(n)*A005843(n)` -/
def P14833097442175329800.Spec : Prop :=
  ∀ n, P14833097442175329800.a n = A164877 n

end A164877

/-! ## A164877.P9055220264307131730

`A164869(2*n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A164877

/-- `A164869(2*n)` -/
def P9055220264307131730.Spec : Prop :=
  ∀ n, P9055220264307131730.a n = A164877 n

theorem P9055220264307131730.correct : P9055220264307131730.Spec := by
  intro n
  simp only [A164877]

end A164877

/-! ## A164877.P7571101774358356432

`2*A228838(n)`
-/

namespace A164877.P7571101774358356432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228838 n

end

end A164877.P7571101774358356432

namespace A164877

/-- `2*A228838(n)` -/
def P7571101774358356432.Spec : Prop :=
  ∀ n, P7571101774358356432.a n = A164877 n

end A164877

/-! ## A164877.P16898972954377598088

`2*n*A140814(n)`
-/

namespace A164877.P16898972954377598088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A140814 n)

end

end A164877.P16898972954377598088

namespace A164877

/-- `2*n*A140814(n)` -/
def P16898972954377598088.Spec : Prop :=
  ∀ n, P16898972954377598088.a n = A164877 n

end A164877

/-! ## A164877.P4907663519972488890

`12*n*A177735(n)`
-/

namespace A164877.P4907663519972488890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ((n : ℤ) * A177735 n)

end

end A164877.P4907663519972488890

namespace A164877

/-- `12*n*A177735(n)` -/
def P4907663519972488890.Spec : Prop :=
  ∀ n, P4907663519972488890.a n = A164877 n

end A164877

/-! ## A164877.P4317287998229065836

`lcm(n, A006863(n))/2`
-/

namespace A164877.P4317287998229065836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A006863 n) : ℚ) / 2

end

end A164877.P4317287998229065836

namespace A164877

/-- `lcm(n, A006863(n))/2` -/
def P4317287998229065836.Spec : Prop :=
  ∀ n, P4317287998229065836.a n = (A164877 n : ℚ)

end A164877

/-! ## A164877.P17431144810626082828

`2*n*A027642(2*n)`
-/

namespace A164877.P17431144810626082828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A027642 (2 * n))

end

end A164877.P17431144810626082828

namespace A164877

/-- `2*n*A027642(2*n)` -/
def P17431144810626082828.Spec : Prop :=
  ∀ n, P17431144810626082828.a n = A164877 n

end A164877

/-! ## A164877.P9512943886931629666

`2*n*A106458(2*n)`
-/

namespace A164877.P9512943886931629666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A106458 (2 * n))

end

end A164877.P9512943886931629666

namespace A164877

/-- `2*n*A106458(2*n)` -/
def P9512943886931629666.Spec : Prop :=
  ∀ n, P9512943886931629666.a n = A164877 n

end A164877

/-! ## A164877.P11438870489070281121

`2*n*A141056(2*n)`
-/

namespace A164877.P11438870489070281121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A141056 (2 * n))

end

end A164877.P11438870489070281121

namespace A164877

/-- `2*n*A141056(2*n)` -/
def P11438870489070281121.Spec : Prop :=
  ∀ n, P11438870489070281121.a n = A164877 n

end A164877

/-! ## A164877.P14835029939579282443

`2*n*A176289(2*n)`
-/

namespace A164877.P14835029939579282443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A176289 (2 * n))

end

end A164877.P14835029939579282443

namespace A164877

/-- `2*n*A176289(2*n)` -/
def P14835029939579282443.Spec : Prop :=
  ∀ n, P14835029939579282443.a n = A164877 n

end A164877

/-! ## A164877.P3203582297754836946

`2*n*A176591(2*n)`
-/

namespace A164877.P3203582297754836946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A176591 (2 * n))

end

end A164877.P3203582297754836946

namespace A164877

/-- `2*n*A176591(2*n)` -/
def P3203582297754836946.Spec : Prop :=
  ∀ n, P3203582297754836946.a n = A164877 n

end A164877

/-! ## A164877.P13818400673333413384

`2*n*A051717(2*n+1)`
-/

namespace A164877.P13818400673333413384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A051717 (2 * n + 1))

end

end A164877.P13818400673333413384

namespace A164877

/-- `2*n*A051717(2*n+1)` -/
def P13818400673333413384.Spec : Prop :=
  ∀ n, P13818400673333413384.a n = A164877 n

end A164877

/-! ## A164877.P12161394847709264117

`2*2*n*A141459(2*n)`
-/

namespace A164877.P12161394847709264117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n : ℤ) * A141459 (2 * n))

end

end A164877.P12161394847709264117

namespace A164877

/-- `2*2*n*A141459(2*n)` -/
def P12161394847709264117.Spec : Prop :=
  ∀ n, P12161394847709264117.a n = A164877 n

end A164877

/-! ## A164877.P8188030046026692960

`A005843(n)*A140814(n)`
-/

namespace A164877.P8188030046026692960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A140814 n

end

end A164877.P8188030046026692960

namespace A164877

/-- `A005843(n)*A140814(n)` -/
def P8188030046026692960.Spec : Prop :=
  ∀ n, P8188030046026692960.a n = A164877 n

end A164877

/-! ## A164877.P12473546622439572069

`A008594(n)*A177735(n)`
-/

namespace A164877.P12473546622439572069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n * A177735 n

end

end A164877.P12473546622439572069

namespace A164877

/-- `A008594(n)*A177735(n)` -/
def P12473546622439572069.Spec : Prop :=
  ∀ n, P12473546622439572069.a n = A164877 n

end A164877

/-! ## A164877.P11428450092781306426

`A008588(n)*A277087(n)`
-/

namespace A164877.P11428450092781306426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n * A277087 n

end

end A164877.P11428450092781306426

namespace A164877

/-- `A008588(n)*A277087(n)` -/
def P11428450092781306426.Spec : Prop :=
  ∀ n, P11428450092781306426.a n = A164877 n

end A164877

/-! ## A164877.P15645146434919982620

`lcm(A008574(n), A228838(n))`
-/

namespace A164877.P15645146434919982620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008574 n) (A228838 n)

end

end A164877.P15645146434919982620

namespace A164877

/-- `lcm(A008574(n), A228838(n))` -/
def P15645146434919982620.Spec : Prop :=
  ∀ n, (P15645146434919982620.a n : ℤ) = A164877 n

end A164877

/-! ## A164877.P5899341210103210469

`2*n*A002445(A026741(2*n))`
-/

namespace A164877.P5899341210103210469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A002445 (A026741 (2 * n)).toNat

end

end A164877.P5899341210103210469

namespace A164877

/-- `2*n*A002445(A026741(2*n))` -/
def P5899341210103210469.Spec : Prop :=
  ∀ n, P5899341210103210469.a n = A164877 n

end A164877

/-! ## A164877.P6403287248380536785

`A002445(n)*2*n/A075180(2*n)`
-/

namespace A164877.P6403287248380536785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) * ((2 * n : ℚ) / (A075180 (2 * n) : ℚ))

end

end A164877.P6403287248380536785

namespace A164877

/-- `A002445(n)*2*n/A075180(2*n)` -/
def P6403287248380536785.Spec : Prop :=
  ∀ n, P6403287248380536785.a n = (A164877 n : ℚ)

end A164877

/-! ## A164877.P10751803842219968279

`2*n*A164020(2*n)`
-/

namespace A164877.P10751803842219968279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A164020 (2 * n))

end

end A164877.P10751803842219968279

namespace A164877

/-- `2*n*A164020(2*n)` -/
def P10751803842219968279.Spec : Prop :=
  ∀ n, P10751803842219968279.a n = A164877 n

end A164877

/-!
# A164878: Maximum number of copies of prime divisors of n, with repetition, required to express n as a sum; a(1) = 0 by convention.

The programs for A164878, there is no canonical definition to state claims against.
-/

/-! ## A164878.P4515227397090059237

`A000720(A033676(2*(n+1)))%A101145(n)`
-/

namespace A164878.P4515227397090059237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A033676 (2 * (n + 1))).toNat) (A101145 n)

end

end A164878.P4515227397090059237

/-! ## A164878.P13192367971782827013

`A000720(A033676(2*(n+1))%A141213(n))`
-/

namespace A164878.P13192367971782827013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A033676 (2 * (n + 1))) (A141213 n)).toNat

end

end A164878.P13192367971782827013

/-! ## A164878.P10100609220027008305

`A065033(A033676(2*(n+1)))%∑[A172031(n)]`
-/

namespace A164878.P10100609220027008305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A033676 (2 * (n + 1))).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164878.P10100609220027008305

/-! ## A164878.P4206463383190103687

`A000720(A033676(2*n+2))%A088314(3*n+1)`
-/

namespace A164878.P4206463383190103687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A033676 (2 * n + 2)).toNat) (A088314 (3 * n + 1))

end

end A164878.P4206463383190103687

/-! ## A164878.P10257798868522513736

`A000720(A033676(2*n+2)%A034085(n+2))`
-/

namespace A164878.P10257798868522513736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A033676 (2 * n + 2)) (A034085 (n + 2))).toNat

end

end A164878.P10257798868522513736

/-!
# A164879: Maximum number of copies of distinct prime divisors of n required to express n as a sum; a(1) = 0 by convention.

The programs for A164879, there is no canonical definition to state claims against.
-/

/-! ## A164879.P5853478494008024897

`A001222(A285336(n+1)^A285707(n+1))`
-/

namespace A164879.P5853478494008024897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A285336 (n + 1) : ℚ) ^ (A285707 (n + 1) : ℤ))).toNat

end

end A164879.P5853478494008024897

/-! ## A164879.P5299566558956236739

`A067029(A285336(n+1)^A285707(n+1))`
-/

namespace A164879.P5299566558956236739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.roundAway ((A285336 (n + 1) : ℚ) ^ (A285707 (n + 1) : ℤ))).toNat

end

end A164879.P5299566558956236739

/-! ## A164879.P14958227881770946616

`A139393(A285336(n+1)^A285707(n+1))`
-/

namespace A164879.P14958227881770946616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139393 (SequenceMachineLib.roundAway ((A285336 (n + 1) : ℚ) ^ (A285707 (n + 1) : ℤ))).toNat

end

end A164879.P14958227881770946616

/-! ## A164879.P3639026163089803475

`A285707(n+1)%∑[A340882(3*n+4)]`
-/

namespace A164879.P3639026163089803475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340882 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285707 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164879.P3639026163089803475

/-! ## A164879.P2462410700451206500

`A067029(floor(abs(4*n-ϕ))*A107754(n+1))`
-/

namespace A164879.P2462410700451206500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (⌊|(4 * n : ℝ) - Real.goldenRatio|⌋ * A107754 (n + 1)).toNat

end

end A164879.P2462410700451206500

/-!
# A164880: Maximum number of copies of proper divisors of n required to express n as a sum; a(1) = 0 by convention.

The programs for A164880, there is no canonical definition to state claims against.
-/

/-! ## A164880.P9626598034219707194

`A267068(n)-A025468(A006532(A158571(n+1)))`
-/

namespace A164880.P9626598034219707194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267068 n - A025468 (A006532 (A158571 (n + 1)).toNat).toNat

end

end A164880.P9626598034219707194

/-! ## A164880.P5251704981986151255

`A276632(lcm(6, (n+1)^3)/6)-(1-∑{p}[n+1, gcd(n, #)])²`
-/

namespace A164880.P5251704981986151255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276632 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat - (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)) ^ 2

end

end A164880.P5251704981986151255

/-! ## A164880.P4564697827949201943

`ceil((n+1)/∏{p}[n+1, (n+1)/#])*A351014(A087207(n+1))`
-/

namespace A164880.P4564697827949201943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ * A351014 (A087207 (n + 1)).toNat

end

end A164880.P4564697827949201943

/-! ## A164880.P3581249875871736156

`A020639(n+1)-A285969(A243980(3*(n+1)))`
-/

namespace A164880.P3581249875871736156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - A285969 (A243980 (3 * (n + 1))).toNat

end

end A164880.P3581249875871736156

/-! ## A164880.P11065335055646543293

`A095171(n+1)-A308016(A271990(2*(n+2)))`
-/

namespace A164880.P11065335055646543293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095171 (n + 1) - A308016 (A271990 (2 * (n + 2))).toNat

end

end A164880.P11065335055646543293

/-!
# A164881: Inverse of A164844.

The programs for A164881, there is no canonical definition to state claims against.
-/

/-! ## A164881.P16887395227913946257

`A003557(A276349(n+1))-char[4]`
-/

namespace A164881.P16887395227913946257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A276349 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164881.P16887395227913946257

/-! ## A164881.P6356977442342357622

`A038303(n)-A056705(A176156(n))`
-/

namespace A164881.P6356977442342357622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 n - A056705 (A176156 n).toNat

end

end A164881.P6356977442342357622

/-! ## A164881.P16337560576148617672

`A038303(n)-A269162(A000255(n))`
-/

namespace A164881.P16337560576148617672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 n - A269162 (A000255 n).toNat

end

end A164881.P16337560576148617672

/-!
# A164882: Numbers n such that sum of the cubes of the digits of n^3 is a perfect cube.

The programs for A164882, there is no canonical definition to state claims against.
-/

/-! ## A164882.P11466813541077922562

`A164883(n+1)^(1/3)`
-/

namespace A164882.P11466813541077922562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A164883 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A164882.P11466813541077922562

/-!
# A164883: Cubes with the property that the sum of the cubes of the digits is also a cube.

The programs for A164883, there is no canonical definition to state claims against.
-/

/-! ## A164883.P2027445558552364469

`A164882(n+1)^3`
-/

namespace A164883.P2027445558552364469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164882 (n + 1) ^ 3

end

end A164883.P2027445558552364469

/-! ## A164883.P14480445920662962503

`A000578(A164882(n+1))`
-/

namespace A164883.P14480445920662962503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A164882 (n + 1)).toNat

end

end A164883.P14480445920662962503

/-! ## A164883.P12870695136518045271

`A007318(∑[n])-A024001(A164882(n+1))`
-/

namespace A164883.P12870695136518045271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A024001 (A164882 (n + 1)).toNat

end

end A164883.P12870695136518045271

/-! ## A164883.P11188438042997925281

`A034828(2*A164882(n+1))`
-/

namespace A164883.P11188438042997925281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A164882 (n + 1)).toNat

end

end A164883.P11188438042997925281

/-!
# A164884: a(n) = image of n under the base-2 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A164884, the canonical program `A164884.P8281495825813713226` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164884 has offset 0).

The definition of A164884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164884.P11016181978682735178

`A055945(A073138(n))`
-/

namespace A164884.P11016181978682735178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A073138 n).toNat

end

end A164884.P11016181978682735178

namespace A164884

/-- `A055945(A073138(n))` -/
def P11016181978682735178.Spec : Prop :=
  ∀ n, P11016181978682735178.a n = A164884 n

end A164884

/-! ## A164884.P8281495825813713226

`A319650(n)+A048967(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A164884

/-- `A319650(n)+A048967(n)` -/
def P8281495825813713226.Spec : Prop :=
  ∀ n, P8281495825813713226.a n = A164884 n

theorem P8281495825813713226.correct : P8281495825813713226.Spec := by
  intro n
  simp only [A164884]

end A164884

/-! ## A164884.P1339369785728505400

`A073138(n)-A038573(n)`
-/

namespace A164884.P1339369785728505400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n - A038573 n

end

end A164884.P1339369785728505400

namespace A164884

/-- `A073138(n)-A038573(n)` -/
def P1339369785728505400.Spec : Prop :=
  ∀ n, P1339369785728505400.a n = A164884 n

end A164884

/-! ## A164884.P2366844600570097482

`A073138(n)+1-A001316(n)`
-/

namespace A164884.P2366844600570097482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n + (1 - A001316 n)

end

end A164884.P2366844600570097482

namespace A164884

/-- `A073138(n)+1-A001316(n)` -/
def P2366844600570097482.Spec : Prop :=
  ∀ n, P2366844600570097482.a n = A164884 n

end A164884

/-! ## A164884.P14977485337197863844

`(A080100(n)-1)*A038573(n)`
-/

namespace A164884.P14977485337197863844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080100 n - 1) * A038573 n

end

end A164884.P14977485337197863844

namespace A164884

/-- `(A080100(n)-1)*A038573(n)` -/
def P14977485337197863844.Spec : Prop :=
  ∀ n, P14977485337197863844.a n = A164884 n

end A164884

/-! ## A164884.P12631528735669340688

`A319785(n)-2*A038573(n)`
-/

namespace A164884.P12631528735669340688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319785 n - 2 * A038573 n

end

end A164884.P12631528735669340688

namespace A164884

/-- `A319785(n)-2*A038573(n)` -/
def P12631528735669340688.Spec : Prop :=
  ∀ n, P12631528735669340688.a n = A164884 n

end A164884

/-! ## A164884.P11546862334411541031

`2*A073138(n)-A319785(n)`
-/

namespace A164884.P11546862334411541031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073138 n - A319785 n

end

end A164884.P11546862334411541031

namespace A164884

/-- `2*A073138(n)-A319785(n)` -/
def P11546862334411541031.Spec : Prop :=
  ∀ n, P11546862334411541031.a n = A164884 n

end A164884

/-! ## A164884.P5887213327412538388

`A048967(n)+A073138(n)-n`
-/

namespace A164884.P5887213327412538388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n + (A073138 n - (n : ℤ))

end

end A164884.P5887213327412538388

namespace A164884

/-- `A048967(n)+A073138(n)-n` -/
def P5887213327412538388.Spec : Prop :=
  ∀ n, P5887213327412538388.a n = A164884 n

end A164884

/-! ## A164884.P10052918627996080171

`A319650(n)+n-A038573(n)`
-/

namespace A164884.P10052918627996080171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319650 n + ((n : ℤ) - A038573 n)

end

end A164884.P10052918627996080171

namespace A164884

/-- `A319650(n)+n-A038573(n)` -/
def P10052918627996080171.Spec : Prop :=
  ∀ n, P10052918627996080171.a n = A164884 n

end A164884

/-! ## A164884.P9793674334847414322

`A048967(A035327(n))+A048967(n)`
-/

namespace A164884.P9793674334847414322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A035327 n).toNat + A048967 n

end

end A164884.P9793674334847414322

namespace A164884

/-- `A048967(A035327(n))+A048967(n)` -/
def P9793674334847414322.Spec : Prop :=
  ∀ n, P9793674334847414322.a n = A164884 n

end A164884

/-! ## A164884.P15366053118846231413

`A319785(n)-A055944(A038573(n))`
-/

namespace A164884.P15366053118846231413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319785 n - A055944 (A038573 n).toNat

end

end A164884.P15366053118846231413

namespace A164884

/-- `A319785(n)-A055944(A038573(n))` -/
def P15366053118846231413.Spec : Prop :=
  ∀ n, P15366053118846231413.a n = A164884 n

end A164884

/-! ## A164884.P18129424122842340954

`A000225(A023416(n))*A038573(n)`
-/

namespace A164884.P18129424122842340954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A023416 n).toNat * A038573 n

end

end A164884.P18129424122842340954

namespace A164884

/-- `A000225(A023416(n))*A038573(n)` -/
def P18129424122842340954.Spec : Prop :=
  ∀ n, P18129424122842340954.a n = A164884 n

end A164884

/-! ## A164884.P913535502898092676

`A038573(A035327(n))*A038573(n)`
-/

namespace A164884.P913535502898092676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A035327 n).toNat * A038573 n

end

end A164884.P913535502898092676

namespace A164884

/-- `A038573(A035327(n))*A038573(n)` -/
def P913535502898092676.Spec : Prop :=
  ∀ n, P913535502898092676.a n = A164884 n

end A164884

/-! ## A164884.P7473002647651087131

`(A080100(n)-1)*A000225(A000120(n))`
-/

namespace A164884.P7473002647651087131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080100 n - 1) * A000225 (A000120 n).toNat

end

end A164884.P7473002647651087131

namespace A164884

/-- `(A080100(n)-1)*A000225(A000120(n))` -/
def P7473002647651087131.Spec : Prop :=
  ∀ n, P7473002647651087131.a n = A164884 n

end A164884

/-! ## A164884.P1723513254449595151

`A073138(n)-A073138(n-A048967(n))`
-/

namespace A164884.P1723513254449595151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n - A073138 ((n : ℤ) - A048967 n).toNat

end

end A164884.P1723513254449595151

namespace A164884

/-- `A073138(n)-A073138(n-A048967(n))` -/
def P1723513254449595151.Spec : Prop :=
  ∀ n, P1723513254449595151.a n = A164884 n

end A164884

/-! ## A164884.P6204875375413134702

`(n-A048967(n))*A000225(A023416(n))`
-/

namespace A164884.P6204875375413134702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A048967 n) * A000225 (A023416 n).toNat

end

end A164884.P6204875375413134702

namespace A164884

/-- `(n-A048967(n))*A000225(A023416(n))` -/
def P6204875375413134702.Spec : Prop :=
  ∀ n, P6204875375413134702.a n = A164884 n

end A164884

/-! ## A164884.P15595502744718657934

`A038573(n-A006257(n))*A038573(n)`
-/

namespace A164884.P15595502744718657934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 ((n : ℤ) - A006257 n).toNat * A038573 n

end

end A164884.P15595502744718657934

namespace A164884

/-- `A038573(n-A006257(n))*A038573(n)` -/
def P15595502744718657934.Spec : Prop :=
  ∀ n, P15595502744718657934.a n = A164884 n

end A164884

/-! ## A164884.P18293336221210291402

`A073138(n)-A073138(n)/A080100(n)`
-/

namespace A164884.P18293336221210291402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073138 n : ℚ) - (A073138 n : ℚ) / (A080100 n : ℚ)

end

end A164884.P18293336221210291402

namespace A164884

/-- `A073138(n)-A073138(n)/A080100(n)` -/
def P18293336221210291402.Spec : Prop :=
  ∀ n, P18293336221210291402.a n = (A164884 n : ℚ)

end A164884

/-! ## A164884.P1338324504867049226

`A000225(A000120(n))*A000225(A023416(n))`
-/

namespace A164884.P1338324504867049226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000120 n).toNat * A000225 (A023416 n).toNat

end

end A164884.P1338324504867049226

namespace A164884

/-- `A000225(A000120(n))*A000225(A023416(n))` -/
def P1338324504867049226.Spec : Prop :=
  ∀ n, P1338324504867049226.a n = A164884 n

end A164884

/-! ## A164884.P7875563217786675447

`A038573(n)*A038573(A073137(n)-A038573(n))`
-/

namespace A164884.P7875563217786675447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n * A038573 (A073137 n - A038573 n).toNat

end

end A164884.P7875563217786675447

namespace A164884

/-- `A038573(n)*A038573(A073137(n)-A038573(n))` -/
def P7875563217786675447.Spec : Prop :=
  ∀ n, P7875563217786675447.a n = A164884 n

end A164884

/-!
# A164885: Length of preperiodic part of trajectory of n under iteration of the base-2 Kaprekar map in A164884.

The programs for A164885, there is no canonical definition to state claims against.
-/

/-! ## A164885.P3875769971081440739

`A164886(n)-1`
-/

namespace A164885.P3875769971081440739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 n - 1

end

end A164885.P3875769971081440739

/-! ## A164885.P17038395343145721052

`A001513(n)%A164886(n)`
-/

namespace A164885.P17038395343145721052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A164886 n)

end

end A164885.P17038395343145721052

/-! ## A164885.P1284906589891510131

`A001538(n)%A164886(n)`
-/

namespace A164885.P1284906589891510131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A164886 n)

end

end A164885.P1284906589891510131

/-! ## A164885.P18417549316221030922

`A002148(n)%A164886(n)`
-/

namespace A164885.P18417549316221030922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A164886 n)

end

end A164885.P18417549316221030922

/-! ## A164885.P1107896653355220535

`A004538(n)%A164886(n)`
-/

namespace A164885.P1107896653355220535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A164886 n)

end

end A164885.P1107896653355220535

/-! ## A164885.P13315214326550342683

`A004933(n)%A164886(n)`
-/

namespace A164885.P13315214326550342683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004933 n) (A164886 n)

end

end A164885.P13315214326550342683

/-! ## A164885.P6436958275704195746

`A016969(n)%A164886(n)`
-/

namespace A164885.P6436958275704195746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A164886 n)

end

end A164885.P6436958275704195746

/-! ## A164885.P12097470555222916339

`A016971(n)%A164886(n)`
-/

namespace A164885.P12097470555222916339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A164886 n)

end

end A164885.P12097470555222916339

/-! ## A164885.P9949301718410045491

`A016973(n)%A164886(n)`
-/

namespace A164885.P9949301718410045491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A164886 n)

end

end A164885.P9949301718410045491

/-! ## A164885.P3422868860426174031

`A016975(n)%A164886(n)`
-/

namespace A164885.P3422868860426174031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A164886 n)

end

end A164885.P3422868860426174031

/-! ## A164885.P16796732625718848856

`A017581(n)%A164886(n)`
-/

namespace A164885.P16796732625718848856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A164886 n)

end

end A164885.P16796732625718848856

/-! ## A164885.P5638545415551147089

`A017583(n)%A164886(n)`
-/

namespace A164885.P5638545415551147089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017583 n) (A164886 n)

end

end A164885.P5638545415551147089

/-! ## A164885.P8644908298672458677

`A017585(n)%A164886(n)`
-/

namespace A164885.P8644908298672458677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017585 n) (A164886 n)

end

end A164885.P8644908298672458677

/-! ## A164885.P237843660084788693

`A017653(n)%A164886(n)`
-/

namespace A164885.P237843660084788693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A164886 n)

end

end A164885.P237843660084788693

/-! ## A164885.P16485226782939942854

`A017655(n)%A164886(n)`
-/

namespace A164885.P16485226782939942854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A164886 n)

end

end A164885.P16485226782939942854

/-! ## A164885.P13188499974433295107

`A017657(n)%A164886(n)`
-/

namespace A164885.P13188499974433295107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A164886 n)

end

end A164885.P13188499974433295107

/-! ## A164885.P10615322685271887497

`A031929(n)%A164886(n)`
-/

namespace A164885.P10615322685271887497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031929 n) (A164886 n)

end

end A164885.P10615322685271887497

/-! ## A164885.P6914509330319247125

`A031935(n)%A164886(n)`
-/

namespace A164885.P6914509330319247125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031935 n) (A164886 n)

end

end A164885.P6914509330319247125

/-! ## A164885.P17967664034541184478

`A038867(n)%A164886(n)`
-/

namespace A164885.P17967664034541184478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038867 n) (A164886 n)

end

end A164885.P17967664034541184478

/-! ## A164885.P3443138510583697734

`A288477(n)%A164886(n)`
-/

namespace A164885.P3443138510583697734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288477 n) (A164886 n)

end

end A164885.P3443138510583697734

/-!
# A164886: (Length of preperiodic part) + (length of cycle) of trajectory of n under iteration of the base-2 Kaprekar map in A164884.

The programs for A164886, there is no canonical definition to state claims against.
-/

/-! ## A164886.P9926083495933144470

`A164885(n)+1`
-/

namespace A164886.P9926083495933144470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164885 n + 1

end

end A164886.P9926083495933144470

/-! ## A164886.P2270181447879161581

`A006530(a(A164885(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A164886.P2270181447879161581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A006530 (a (A164885 n).toNat).toNat

end

end A164886.P2270181447879161581

/-! ## A164886.P13219422606370769010

`A007953(a(A164885(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A164886.P13219422606370769010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A007953 (a (A164885 n).toNat).toNat

end

end A164886.P13219422606370769010

/-! ## A164886.P8469751483415128017

`A010785(a(A164885(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A164886.P8469751483415128017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A010785 (a (A164885 n).toNat).toNat

end

end A164886.P8469751483415128017

/-! ## A164886.P15567516877871081455

`A027748(a(A164885(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A164886.P15567516877871081455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A027748 (a (A164885 n).toNat).toNat

end

end A164886.P15567516877871081455

/-! ## A164886.P7751150613384068775

`A250245(a(A164885(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A164886.P7751150613384068775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A250245 (a (A164885 n).toNat).toNat

end

end A164886.P7751150613384068775

/-! ## A164886.P5791867698348019578

`A270788(a(A164885(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A164886.P5791867698348019578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A270788 (a (A164885 n).toNat).toNat

end

end A164886.P5791867698348019578

/-! ## A164886.P11680344527048998989

`A008621(a(A164885(n))^2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A164886.P11680344527048998989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A008621 (a (A164885 n).toNat ^ 2).toNat

end

end A164886.P11680344527048998989

/-! ## A164886.P12433726879230145704

`a(A164885(n))%A000040(n)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A164886.P12433726879230145704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Int.tmod (a (A164885 n).toNat) (A000040 n)

end

end A164886.P12433726879230145704

/-! ## A164886.P6978636553559103915

`abs(or(-1, A000041(n))-A164885(n))`
-/

namespace A164886.P6978636553559103915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-1) (A000041 n) - A164885 n|

end

end A164886.P6978636553559103915

/-! ## A164886.P17644047034278080244

`A006047(or(1, a(n-1))*A164885(n))` with `a(0)=1`
-/

namespace A164886.P17644047034278080244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006047 (Int.lor 1 (a (n - 1)) * A164885 n).toNat

end

end A164886.P17644047034278080244

/-! ## A164886.P8077108126271356460

`A000005(p?[A264596(n)]^A164885(n))`
-/

namespace A164886.P8077108126271356460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A164885 n : ℤ))).toNat

end

end A164886.P8077108126271356460

/-!
# A164887: a(n) = smallest number that leads to a new fixed point under the base-2 Kaprekar map of A164884.

The programs for A164887, the canonical program `A164887.P8444353184396680170` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164887 has offset 1).

The definition of A164887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164887.P8444353184396680170

`record[A080343(n)*A209492(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A164887

/-- `record[A080343(n)*A209492(n)]` -/
def P8444353184396680170.Spec : Prop :=
  ∀ n, P8444353184396680170.a n = A164887 (n + 1)

theorem P8444353184396680170.correct : P8444353184396680170.Spec := by
  intro n
  simp only [A164887, Nat.add_sub_cancel]

end A164887

/-! ## A164887.P7593124922648686784

`record[A023969(2*n)*A209492(n)]`
-/

namespace A164887.P7593124922648686784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (2 * n) * A209492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164887.P7593124922648686784

namespace A164887

/-- `record[A023969(2*n)*A209492(n)]` -/
def P7593124922648686784.Spec : Prop :=
  ∀ n, P7593124922648686784.a n = A164887 (n + 1)

end A164887

/-! ## A164887.P17079211613406034976

`record[record[A038558(n+1)]*A080343(n)]`
-/

namespace A164887.P17079211613406034976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A080343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164887.P17079211613406034976

namespace A164887

/-- `record[record[A038558(n+1)]*A080343(n)]` -/
def P17079211613406034976.Spec : Prop :=
  ∀ n, P17079211613406034976.a n = A164887 (n + 1)

end A164887

/-! ## A164887.P5983468520717555591

`eq[A114567(n), A151570(n)]`
-/

namespace A164887.P5983468520717555591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164887.P5983468520717555591

namespace A164887

/-- `eq[A114567(n), A151570(n)]` -/
def P5983468520717555591.Spec : Prop :=
  ∀ n, (P5983468520717555591.a n : ℤ) = A164887 (n + 1)

end A164887

/-! ## A164887.P9562602005235120567

`record[A073137(A213064(A062545(n)))]`
-/

namespace A164887.P9562602005235120567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (A213064 (A062545 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164887.P9562602005235120567

namespace A164887

/-- `record[A073137(A213064(A062545(n)))]` -/
def P9562602005235120567.Spec : Prop :=
  ∀ n, P9562602005235120567.a n = A164887 (n + 1)

end A164887

/-!
# A164889: Smallest positive integer for each n such that the sequences a(n), a(n)+n, a(n)+2n, and a(n)+3n have no repeated terms.

The programs for A164889, there is no canonical definition to state claims against.
-/

/-! ## A164889.P537067939186022759

`lt[A259036(A216244(n+2)), A171555(n+1)]`
-/

namespace A164889.P537067939186022759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (A216244 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164889.P537067939186022759

/-!
# A164890: Primes composed of digit {1,9} and with digit sum 9*k+1.

The programs for A164890, there is no canonical definition to state claims against.
-/

/-! ## A164890.P8949514755015568338

`∩[A199329(n+1), A325934(n+1)]`
-/

namespace A164890.P8949514755015568338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164890.P8949514755015568338

/-! ## A164890.P13357713620823371788

`∩[A325934(n+1), A385781(n+1)]`
-/

namespace A164890.P13357713620823371788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164890.P13357713620823371788

/-! ## A164890.P5296097556982839391

`∩[A007089(3*n+1)-A007089(n), A260271(n+1)]`
-/

namespace A164890.P5296097556982839391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (3 * n + 1) - A007089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164890.P5296097556982839391

/-!
# A164891: Base 10 representation of the string formed by prepending primes in base 2.

The programs for A164891, there is no canonical definition to state claims against.
-/

/-! ## A164891.P12723972453887527556

`A162687(A335069(n+2))`
-/

namespace A164891.P12723972453887527556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162687 (A335069 (n + 2)).toNat

end

end A164891.P12723972453887527556

/-!
# A164893: Base 10 representation of the string formed by appending primes in base 2.

The programs for A164893, there is no canonical definition to state claims against.
-/

/-! ## A164893.P7880245328313639607

`A230625(∏[p?[xor(1, n)+1]])`
-/

namespace A164893.P7880245328313639607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230625 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A164893.P7880245328313639607

/-!
# A164894: Base-10 representation of the binary string formed by appending 10, 100, 1000, 10000, ..., etc., to 1.

The programs for A164894, there is no canonical definition to state claims against.
-/

/-! ## A164894.P6146002087793747262

`(2*a(n-1)+1)*2^n` with `a(0)=1`
-/

namespace A164894.P6146002087793747262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * a (n - 1) + 1) * 2 ^ n

end

end A164894.P6146002087793747262

/-! ## A164894.P2202209040260197797

`xor(2^n, lcm(4^n, a(n-1)))` with `a(0)=1`
-/

namespace A164894.P2202209040260197797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 ^ n) (Nat.lcm (4 ^ n) (a (n - 1)))

end

end A164894.P2202209040260197797

/-! ## A164894.P329119467427315257

`or(1, 2*a(n-1))*2^n` with `a(0)=1, a(1)=6`
-/

namespace A164894.P329119467427315257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Nat.lor 1 (2 * a (n - 1)) * 2 ^ n

end

end A164894.P329119467427315257

/-! ## A164894.P13010013901544846508

`2^n*A073587(n)`
-/

namespace A164894.P13010013901544846508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A073587 n

end

end A164894.P13010013901544846508

/-! ## A164894.P2333125160994518707

`(floor(2*a(n-1))+1)*Δ[A000225(n)]` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A164894.P2333125160994518707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * a (n - 1) + 1) * (f1 (n + 1) - f1 n)

end

end A164894.P2333125160994518707

/-!
# A164895: Decimal representation of the strings formed by concatenating the digits of Pi in base 2.

The programs for A164895, there is no canonical definition to state claims against.
-/

/-! ## A164895.P2272754074110849056

`A184812(A000120(3*n)^comp[or(2, n)])`
-/

namespace A164895.P2272754074110849056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (A000120 (3 * n) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n).toNat

end

end A164895.P2272754074110849056

/-!
# A164896: Number of subsets (up to cyclic shifts) of the n-th roots of 1 with zero sum.

The programs for A164896, there is no canonical definition to state claims against.
-/

/-! ## A164896.P13118775719538285154

`A110981(n+1)+A066656(n+1)`
-/

namespace A164896.P13118775719538285154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110981 (n + 1) + A066656 (n + 1)

end

end A164896.P13118775719538285154

/-! ## A164896.P1824115089966291611

`A110981(n+1)+A000031(n+1)-A001037(n+1)`
-/

namespace A164896.P1824115089966291611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110981 (n + 1) + A000031 (n + 1) - A001037 (n + 1)

end

end A164896.P1824115089966291611

/-! ## A164896.P1136372471371104402

`A000031(n+1)-A107847(n+1)`
-/

namespace A164896.P1136372471371104402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - A107847 (n + 1)

end

end A164896.P1136372471371104402

/-! ## A164896.P7640384709522779410

`A008965(n+1)+1-A107847(n+1)`
-/

namespace A164896.P7640384709522779410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) + (1 - A107847 (n + 1))

end

end A164896.P7640384709522779410

/-! ## A164896.P4327296701848050911

`A000031(n+1)-(A123223(A000217(n+1))-A110981(n+1))`
-/

namespace A164896.P4327296701848050911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - (A123223 (A000217 (n + 1)).toNat - A110981 (n + 1))

end

end A164896.P4327296701848050911

/-!
# A164897: a(n) = 4*n*(n+1) + 3.

The programs for A164897, the canonical program `A164897.P2809855780232688833` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164897 has offset 0).

The definition of A164897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(n+1)+3` (program `A164897.P2809855780232688833`, by `A164897.P2809855780232688833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164897.P2809855780232688833

`4*n*(n+1)+3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164897

/-- `4*n*(n+1)+3` -/
def P2809855780232688833.Spec : Prop :=
  ∀ n, (P2809855780232688833.a n : ℤ) = A164897 n

theorem P2809855780232688833.correct : P2809855780232688833.Spec := by
  intro n
  simp only [A164897]

end A164897

/-! ## A164897.P2144357228314479750

`A059100(2*n+1)`
-/

namespace A164897.P2144357228314479750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (2 * n + 1)

end

end A164897.P2144357228314479750

namespace A164897

/-- `A059100(2*n+1)` -/
def P2144357228314479750.Spec : Prop :=
  ∀ n, P2144357228314479750.a n = A164897 n

end A164897

/-! ## A164897.P65836673754952063

`or(3, ∑[8*n])`
-/

namespace A164897.P65836673754952063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164897.P65836673754952063

namespace A164897

/-- `or(3, ∑[8*n])` -/
def P65836673754952063.Spec : Prop :=
  ∀ n, (P65836673754952063.a n : ℤ) = A164897 n

end A164897

/-! ## A164897.P10941133311885848361

`xor(3, ∑[8*n])`
-/

namespace A164897.P10941133311885848361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164897.P10941133311885848361

namespace A164897

/-- `xor(3, ∑[8*n])` -/
def P10941133311885848361.Spec : Prop :=
  ∀ n, (P10941133311885848361.a n : ℤ) = A164897 n

end A164897

/-! ## A164897.P3825522261125214602

`record[xor(1, n)²+2]`
-/

namespace A164897.P3825522261125214602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164897.P3825522261125214602

namespace A164897

/-- `record[xor(1, n)²+2]` -/
def P3825522261125214602.Spec : Prop :=
  ∀ n, (P3825522261125214602.a n : ℤ) = A164897 n

end A164897

/-! ## A164897.P16364037805629735160

`record[or(2, xor(1, n)²)]`
-/

namespace A164897.P16364037805629735160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (Nat.xor 1 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164897.P16364037805629735160

namespace A164897

/-- `record[or(2, xor(1, n)²)]` -/
def P16364037805629735160.Spec : Prop :=
  ∀ n, (P16364037805629735160.a n : ℤ) = A164897 n

end A164897

/-! ## A164897.P3225011620157527698

`record[xor(2, xor(1, n)²)]`
-/

namespace A164897.P3225011620157527698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.xor 1 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164897.P3225011620157527698

namespace A164897

/-- `record[xor(2, xor(1, n)²)]` -/
def P3225011620157527698.Spec : Prop :=
  ∀ n, (P3225011620157527698.a n : ℤ) = A164897 n

end A164897

/-! ## A164897.P4130935527562017212

`-xor(2, -Δ[n²]²)`
-/

namespace A164897.P4130935527562017212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-(((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2))

end

end A164897.P4130935527562017212

namespace A164897

/-- `-xor(2, -Δ[n²]²)` -/
def P4130935527562017212.Spec : Prop :=
  ∀ n, P4130935527562017212.a n = A164897 n

end A164897

/-! ## A164897.P6651545989795079084

`∑[a(n-1)+8]` with `a(0)=3, a(1)=8`
-/

namespace A164897.P6651545989795079084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164897.P6651545989795079084

namespace A164897

/-- `∑[a(n-1)+8]` -/
def P6651545989795079084.Spec : Prop :=
  ∀ n, (P6651545989795079084.a n : ℤ) = A164897 n

end A164897

/-! ## A164897.P14516131410750219159

`∑[ogf((3+2x+3x^2)/(1-2x+x^2))]`
-/

namespace A164897.P14516131410750219159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164897.P14516131410750219159

namespace A164897

/-- `∑[ogf((3+2x+3x^2)/(1-2x+x^2))]` -/
def P14516131410750219159.Spec : Prop :=
  ∀ n, P14516131410750219159.a n = A164897 n

end A164897

/-! ## A164897.P15773893830440878819

`ogf((3+2x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A164897.P15773893830440878819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 3] [1, -3, 3, -1] n

end

end A164897.P15773893830440878819

namespace A164897

/-- `ogf((3+2x+3x^2)/(1-3x+3x^2-x^3))` -/
def P15773893830440878819.Spec : Prop :=
  ∀ n, P15773893830440878819.a n = A164897 n

end A164897

/-! ## A164897.P8101424168677102973

`∑[8*n%a(n-1)]` with `a(0)=3`
-/

namespace A164897.P8101424168677102973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  8 * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164897.P8101424168677102973

namespace A164897

/-- `∑[8*n%a(n-1)]` -/
def P8101424168677102973.Spec : Prop :=
  ∀ n, (P8101424168677102973.a n : ℤ) = A164897 n

end A164897

/-! ## A164897.P1670438424956098302

`ceil((1/acot(n)+n+1)²)`
-/

namespace A164897.P1670438424956098302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / SequenceMachineLib.acot (n : ℝ) + (n + 1 : ℝ)) ^ 2⌉

end

end A164897.P1670438424956098302

namespace A164897

/-- `ceil((1/acot(n)+n+1)²)` -/
def P1670438424956098302.Spec : Prop :=
  ∀ n, P1670438424956098302.a n = A164897 n

end A164897

/-! ## A164897.P12447327353833396759

`floor(9*n-(n-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A164897.P12447327353833396759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (9 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A164897.P12447327353833396759

namespace A164897

/-- `floor(9*n-(n-a(n-1)))` -/
def P12447327353833396759.Spec : Prop :=
  ∀ n, P12447327353833396759.a n = A164897 n

theorem P12447327353833396759.correct : P12447327353833396759.Spec := by
  intro n
  induction n with
  | zero => simp [A164897, A164897.P12447327353833396759.a, A164897.P2809855780232688833.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A164897, Nat.add_sub_cancel, A164897.P12447327353833396759.a, A164897.P2809855780232688833.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A164897

/-! ## A164897.P4742388043501945093

`Δ[A035597(n)+n+1]`
-/

namespace A164897.P4742388043501945093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164897.P4742388043501945093

namespace A164897

/-- `Δ[A035597(n)+n+1]` -/
def P4742388043501945093.Spec : Prop :=
  ∀ n, P4742388043501945093.a n = A164897 n

end A164897

/-! ## A164897.P2529762983319808794

`A017114(n)%A332243(n)`
-/

namespace A164897.P2529762983319808794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017114 n) (A332243 n)

end

end A164897.P2529762983319808794

namespace A164897

/-- `A017114(n)%A332243(n)` -/
def P2529762983319808794.Spec : Prop :=
  ∀ n, P2529762983319808794.a n = A164897 n

end A164897

/-! ## A164897.P16143992755121903090

`A094200(n)%A112087(n+1)`
-/

namespace A164897.P16143992755121903090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094200 n) (A112087 (n + 1))

end

end A164897.P16143992755121903090

namespace A164897

/-- `A094200(n)%A112087(n+1)` -/
def P16143992755121903090.Spec : Prop :=
  ∀ n, P16143992755121903090.a n = A164897 n

end A164897

/-! ## A164897.P5881411898661789232

`A177065(n)%A193448(n+1)`
-/

namespace A164897.P5881411898661789232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177065 n) (A193448 (n + 1))

end

end A164897.P5881411898661789232

namespace A164897

/-- `A177065(n)%A193448(n+1)` -/
def P5881411898661789232.Spec : Prop :=
  ∀ n, P5881411898661789232.a n = A164897 n

end A164897

/-! ## A164897.P4194189174469459431

`A086640(n+1)%A134538(n+1)`
-/

namespace A164897.P4194189174469459431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086640 (n + 1)) (A134538 (n + 1))

end

end A164897.P4194189174469459431

namespace A164897

/-- `A086640(n+1)%A134538(n+1)` -/
def P4194189174469459431.Spec : Prop :=
  ∀ n, P4194189174469459431.a n = A164897 n

end A164897

/-!
# A164898: First differences of numbers having only odd digits in their decimal representation.

The programs for A164898, there is no canonical definition to state claims against.
-/

/-! ## A164898.P2459828322268032714

`Δ[A014261(n+1)]`
-/

namespace A164898.P2459828322268032714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164898.P2459828322268032714

/-! ## A164898.P15886161560307373403

`A014261(n+2)-A014261(n+1)`
-/

namespace A164898.P15886161560307373403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 2) - A014261 (n + 1)

end

end A164898.P15886161560307373403

/-! ## A164898.P6904435057856149453

`Δ[A275776(2*n+1)]`
-/

namespace A164898.P6904435057856149453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164898.P6904435057856149453

/-! ## A164898.P1142629555784596386

`Δ[record[A014261(A152271(n))]]`
-/

namespace A164898.P1142629555784596386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164898.P1142629555784596386

/-! ## A164898.P12049899287589031811

`abs(Δ[A014261(A029579(2*n))])`
-/

namespace A164898.P12049899287589031811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164898.P12049899287589031811

/-! ## A164898.P15157454386673936726

`Δ[record[A351744(n)]]`
-/

namespace A164898.P15157454386673936726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164898.P15157454386673936726

/-! ## A164898.P15101237989256310432

`Δ[eq[0, A045843(n)]]`
-/

namespace A164898.P15101237989256310432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164898.P15101237989256310432

/-! ## A164898.P5797155723369105513

`Δ[record[A225985(n+1)]]`
-/

namespace A164898.P5797155723369105513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225985 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164898.P5797155723369105513

/-! ## A164898.P17979114793059140821

`Δ[record[A327539(n+1)]]`
-/

namespace A164898.P17979114793059140821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164898.P17979114793059140821

/-! ## A164898.P5397380690804572534

`Δ[eq[or(1, n), A059707(n)]]`
-/

namespace A164898.P5397380690804572534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164898.P5397380690804572534

/-! ## A164898.P5696422807092710939

`Δ[A007957(A226091(n+1))]`
-/

namespace A164898.P5696422807092710939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007957 (A226091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164898.P5696422807092710939

/-! ## A164898.P17387622931529020536

`Δ[record[A306436(n)+A103181(n)]]`
-/

namespace A164898.P17387622931529020536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 n + A103181 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164898.P17387622931529020536

/-! ## A164898.P7854193003803022704

`Δ[eq[2, A020639(A007954(n)+1)]]`
-/

namespace A164898.P7854193003803022704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007954 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164898.P7854193003803022704

/-! ## A164898.P13291383732930870488

`Δ[lt[A049820(n+1), A327539(n)]]`
-/

namespace A164898.P13291383732930870488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164898.P13291383732930870488

/-! ## A164898.P8421321784167927006

`Δ[lt[A093074(n+1)*A196563(n), 1]]`
-/

namespace A164898.P8421321784167927006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1) * A196563 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164898.P8421321784167927006

/-!
# A164899: Binomial matrix (1,10^n) read by antidiagonals.

The programs for A164899, there is no canonical definition to state claims against.
-/

/-! ## A164899.P7600741638551236292

`A164844(n)-A124762(A265856(n+1))`
-/

namespace A164899.P7600741638551236292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164844 n - A124762 (A265856 (n + 1)).toNat

end

end A164899.P7600741638551236292

/-! ## A164899.P15960087448876331362

`A164844(n)-A124762(A050932(n))`
-/

namespace A164899.P15960087448876331362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164844 n - A124762 (A050932 n).toNat

end

end A164899.P15960087448876331362

/-! ## A164899.P15646987402402850890

`A164844(n)-A162641(A082582(n))`
-/

namespace A164899.P15646987402402850890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164844 n - A162641 (A082582 n).toNat

end

end A164899.P15646987402402850890

/-! ## A164899.P5107734335181685262

`A164844(n)-A216579(A045623(n))`
-/

namespace A164899.P5107734335181685262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164844 n - A216579 (A045623 n).toNat

end

end A164899.P5107734335181685262

/-! ## A164899.P16314356964662631722

`A164844(n)-A055641(A048655(n))`
-/

namespace A164899.P16314356964662631722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164844 n - A055641 (A048655 n).toNat

end

end A164899.P16314356964662631722

