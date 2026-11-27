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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A305201: Expansion of e.g.f. Product_{k>=1} 1/(1 - H(k)*x^k), where H(k) is the k-th harmonic number.

The programs for A305201, there is no canonical definition to state claims against.
-/

/-! ## A305201.P4347317082377537637

`A249777(A182969(n))+A182969(n)`
-/

namespace A305201.P4347317082377537637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249777 (A182969 n).toNat + A182969 n

end

end A305201.P4347317082377537637

/-! ## A305201.P2779327739975940971

`A158611(A003415(n)+A062934(n+1)!)+A120732(n)`
-/

namespace A305201.P2779327739975940971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A003415 n + (Nat.factorial (A062934 (n + 1)).toNat : ℤ)).toNat + A120732 n

end

end A305201.P2779327739975940971

/-!
# A305203: Expansion of e.g.f. Product_{k>=1} (1 + H(k)*x^k), where H(k) is the k-th harmonic number.

The programs for A305203, there is no canonical definition to state claims against.
-/

/-! ## A305203.P5920003427709156437

`A132015(A002720(n)*A065033(n))`
-/

namespace A305203.P5920003427709156437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (A002720 n * A065033 n).toNat

end

end A305203.P5920003427709156437

/-!
# A305204: Expansion of Product_{k>=1} 1/(1 - (k*(k + 1)/2)*x^k).

The programs for A305204, there is no canonical definition to state claims against.
-/

/-! ## A305204.P7028418521609995716

`A118460(A005470(n))+A005581(n)`
-/

namespace A305204.P7028418521609995716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118460 (A005470 n).toNat + A005581 n

end

end A305204.P7028418521609995716

/-! ## A305204.P885651066223808923

`A280540(n)-A087117(A365285(n))`
-/

namespace A305204.P885651066223808923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280540 n - A087117 (A365285 n).toNat

end

end A305204.P885651066223808923

/-! ## A305204.P17822079003737649357

`A345882(n+1)-A001221(A129093(n+1))`
-/

namespace A305204.P17822079003737649357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345882 (n + 1) - A001221 (A129093 (n + 1)).toNat

end

end A305204.P17822079003737649357

/-!
# A305206: a(n) = [x^n] exp(Sum_{k>=1} (-1)^(k+1)*x^k/(k*(1 - x^k)^n)).

The programs for A305206, there is no canonical definition to state claims against.
-/

/-! ## A305206.P3347773972517573211

`A156301(A166991(n)+Δ[A007318(n)])`
-/

namespace A305206.P3347773972517573211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A166991 n + (f1 (n + 1) - f1 n)).toNat

end

end A305206.P3347773972517573211

/-! ## A305206.P9843464097871446732

`A363465(n+1)+A002264(A052755(n))`
-/

namespace A305206.P9843464097871446732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363465 (n + 1) + A002264 (A052755 n).toNat

end

end A305206.P9843464097871446732

/-! ## A305206.P14806630189960799

`A050452(A154130(n+2))+A003161(n)`
-/

namespace A305206.P14806630189960799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (A154130 (n + 2)).toNat + A003161 n

end

end A305206.P14806630189960799

/-!
# A305207: a(n) = [x^n] exp(Sum_{k>=1} x^k/(k*(1 - n*x^k))).

The programs for A305207, there is no canonical definition to state claims against.
-/

/-! ## A305207.P14885385115993141498

`A260683(A112369(n))+1`
-/

namespace A305207.P14885385115993141498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 (A112369 n).toNat + 1

end

end A305207.P14885385115993141498

/-! ## A305207.P13405528651277125061

`or(1, A219642(A060090(n)))`
-/

namespace A305207.P13405528651277125061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219642 (A060090 n).toNat)

end

end A305207.P13405528651277125061

/-!
# A305209: a(n) = [x^n] exp(Sum_{k>=1} (-1)^(k+1)*x^k/(k*(1 - n*x^k))).

The programs for A305209, there is no canonical definition to state claims against.
-/

/-! ## A305209.P3911333461179913981

`A262676(2*A145160(n))`
-/

namespace A305209.P3911333461179913981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262676 (2 * A145160 n).toNat

end

end A305209.P3911333461179913981

/-! ## A305209.P1744242026634303638

`A036234(A307903(n)+char[∑[n]])-1`
-/

namespace A305209.P1744242026634303638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A307903 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat - 1

end

end A305209.P1744242026634303638

/-!
# A305211: a(n) is the number of possible values of (x^3 + y^3) mod n, where x and y are any integers.

The programs for A305211, there is no canonical definition to state claims against.
-/

/-! ## A305211.P5901826476272733820

`1-A305212(1+n)+n`
-/

namespace A305211.P5901826476272733820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A305212 (1 + n) + (n : ℤ)

end

end A305211.P5901826476272733820

/-! ## A305211.P2099114993027407269

`1-(A305212(n-log2(1/2))-n)`
-/

namespace A305211.P2099114993027407269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A305212 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A305211.P2099114993027407269

/-! ## A305211.P16715917740598508027

`A024000(A305212(n+1))+n`
-/

namespace A305211.P16715917740598508027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A305212 (n + 1)).toNat + (n : ℤ)

end

end A305211.P16715917740598508027

/-! ## A305211.P16859576676704512190

`abs(A305212(n+1)+A001478(n+1))`
-/

namespace A305211.P16859576676704512190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305212 (n + 1) + A001478 (n + 1)|

end

end A305211.P16859576676704512190

/-! ## A305211.P11668243006088925773

`-(A305212(n+1)+A001489(n+1))`
-/

namespace A305211.P11668243006088925773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A305212 (n + 1) + A001489 (n + 1))

end

end A305211.P11668243006088925773

/-! ## A305211.P47269374362143582

`A001489(A305212(n+1))+A000027(n+1)`
-/

namespace A305211.P47269374362143582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A305212 (n + 1)).toNat + A000027 (n + 1)

end

end A305211.P47269374362143582

/-!
# A305212: a(n) = n - A305211(n).

The programs for A305212, there is no canonical definition to state claims against.
-/

/-! ## A305212.P7606783153585797245

`n+1-A305211(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305212.P7606783153585797245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A305211 (n + 1)

end

end A305212.P7606783153585797245

/-! ## A305212.P12210445989172911495

`A024000(A305211(1+n))+n`
-/

namespace A305212.P12210445989172911495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A305211 (1 + n)).toNat + (n : ℤ)

end

end A305212.P12210445989172911495

/-! ## A305212.P2906988171826918225

`abs(A305211(n+1)+A001478(n+1))`
-/

namespace A305212.P2906988171826918225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305211 (n + 1) + A001478 (n + 1)|

end

end A305212.P2906988171826918225

/-! ## A305212.P17708961250877724469

`-(A305211(n+1)+A001489(n+1))`
-/

namespace A305212.P17708961250877724469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A305211 (n + 1) + A001489 (n + 1))

end

end A305212.P17708961250877724469

/-! ## A305212.P10330518937756270399

`A053188(A305211(n+1)+∑[2*n])`
-/

namespace A305212.P10330518937756270399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A305211 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A305212.P10330518937756270399

/-! ## A305212.P9212310358761055620

`(n*A305211(n+1))%A000027(n+1)`
-/

namespace A305212.P9212310358761055620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A305211 (n + 1)) (A000027 (n + 1))

end

end A305212.P9212310358761055620

/-! ## A305212.P7073778446540711008

`(A004767(n)*A305211(n+1))%(n+1)`
-/

namespace A305212.P7073778446540711008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n * A305211 (n + 1)) (n + 1 : ℤ)

end

end A305212.P7073778446540711008

/-! ## A305212.P12972625589357218340

`((A000007(n)+n)*A305211(n+1))%(n+1)`
-/

namespace A305212.P12972625589357218340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A000007 n + (n : ℤ)) * A305211 (n + 1)) (n + 1 : ℤ)

end

end A305212.P12972625589357218340

/-! ## A305212.P15292493755413384455

`A001489(A305211(n+1))+A000027(n+1)`
-/

namespace A305212.P15292493755413384455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A305211 (n + 1)).toNat + A000027 (n + 1)

end

end A305212.P15292493755413384455

/-!
# A305213: a(n) is the smallest nonnegative integer whose first n binary digits coincide with its first n decimal digits.

The programs for A305213, there is no canonical definition to state claims against.
-/

/-! ## A305213.P15598876363979525962

`A105026(A105024(n)+A001654(n))`
-/

namespace A305213.P15598876363979525962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105026 (A105024 n + A001654 n).toNat

end

end A305213.P15598876363979525962

/-!
# A305214: Numbers k such that A305212(k) is not zero.

The programs for A305214, there is no canonical definition to state claims against.
-/

/-! ## A305214.P10518758373871743464

`lt[lcm(63, n), 10*n]`
-/

namespace A305214.P10518758373871743464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 63 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305214.P10518758373871743464

/-! ## A305214.P4801280525275420518

`lt[3*n/gcd(63, n), n]`
-/

namespace A305214.P4801280525275420518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n : ℚ) / (Nat.gcd 63 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A305214.P4801280525275420518

/-! ## A305214.P15398691325794287809

`∪[7*(n+1), 9*(n+1)]`
-/

namespace A305214.P15398691325794287809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A305214.P15398691325794287809

/-! ## A305214.P1489601984773397827

`comp[C(A305211(n+1), n)]`
-/

namespace A305214.P1489601984773397827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A305211 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A305214.P1489601984773397827

/-! ## A305214.P3610609979922754

`lt[A310400(n/gcd(63, n)), n]`
-/

namespace A305214.P3610609979922754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310400 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 63 n : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305214.P3610609979922754

/-! ## A305214.P7201585344939824702

`lt[A305211(round(acot(n)+n)), n]`
-/

namespace A305214.P7201585344939824702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305211 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305214.P7201585344939824702

/-! ## A305214.P18250287203225840981

`lt[A305211(A028310(n)), n]`
-/

namespace A305214.P18250287203225840981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305211 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305214.P18250287203225840981

/-! ## A305214.P1580516706487111760

`lt[A283444(A106610(n)), n]`
-/

namespace A305214.P1580516706487111760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283444 (A106610 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305214.P1580516706487111760

/-! ## A305214.P596791578598760650

`lt[A305211(A233583(n+1)), n]`
-/

namespace A305214.P596791578598760650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305211 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305214.P596791578598760650

/-! ## A305214.P3224948205839157615

`lt[C(A305211(n+1), n), A001222(2*n+1)]+1`
-/

namespace A305214.P3224948205839157615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A305211 (n + 1)).toNat n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A305214.P3224948205839157615

/-!
# A305215: a(n) is the number of numbers whose largest prime power factor equals A000961(n).

The programs for A305215, the canonical program `A305215.P4341798104762692550` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305215 has offset 1).

The definition of A305215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A051451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305215.P4341798104762692550

`A000005(A051451(n+1)/A000961(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A305215

/-- `A000005(A051451(n+1)/A000961(n+1))` -/
def P4341798104762692550.Spec : Prop :=
  ∀ n, P4341798104762692550.a n = A305215 (n + 1)

theorem P4341798104762692550.correct : P4341798104762692550.Spec := by
  intro n
  simp only [A305215, Nat.add_sub_cancel]

end A305215

/-! ## A305215.P14039673426177141210

`A101207(A000961(n+1))`
-/

namespace A305215.P14039673426177141210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101207 (A000961 (n + 1)).toNat

end

end A305215.P14039673426177141210

namespace A305215

/-- `A101207(A000961(n+1))` -/
def P14039673426177141210.Spec : Prop :=
  ∀ n, P14039673426177141210.a n = A305215 (n + 1)

end A305215

/-! ## A305215.P8115330339065910860

`Δ[record[A336816(n+1)]]`
-/

namespace A305215.P8115330339065910860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336816 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305215.P8115330339065910860

namespace A305215

/-- `Δ[record[A336816(n+1)]]` -/
def P8115330339065910860.Spec : Prop :=
  ∀ n, P8115330339065910860.a n = A305215 (n + 1)

end A305215

/-! ## A305215.P8195529898206062171

`abs(Δ[A056795(abs(1-n)+1)])`
-/

namespace A305215.P8195529898206062171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056795 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A305215.P8195529898206062171

namespace A305215

/-- `abs(Δ[A056795(abs(1-n)+1)])` -/
def P8195529898206062171.Spec : Prop :=
  ∀ n, P8195529898206062171.a n = A305215 (n + 1)

end A305215

/-! ## A305215.P14949204964327357171

`A056795(n+1)/A086454(n+1)`
-/

namespace A305215.P14949204964327357171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056795 (n + 1) : ℚ) / (A086454 (n + 1) : ℚ)

end

end A305215.P14949204964327357171

namespace A305215

/-- `A056795(n+1)/A086454(n+1)` -/
def P14949204964327357171.Spec : Prop :=
  ∀ n, P14949204964327357171.a n = (A305215 (n + 1) : ℚ)

end A305215

/-! ## A305215.P10557041327914451614

`Δ[A336816(lt[atan(n), A014963(n+1)]+1)]`
-/

namespace A305215.P10557041327914451614
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336816 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305215.P10557041327914451614

namespace A305215

/-- `Δ[A336816(lt[atan(n), A014963(n+1)]+1)]` -/
def P10557041327914451614.Spec : Prop :=
  ∀ n, P10557041327914451614.a n = A305215 (n + 1)

end A305215

/-! ## A305215.P12310124545218486650

`A056795(n+1)/A000005(A000961(n+1))`
-/

namespace A305215.P12310124545218486650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056795 (n + 1) : ℚ) / (A000005 (A000961 (n + 1)).toNat : ℚ)

end

end A305215.P12310124545218486650

namespace A305215

/-- `A056795(n+1)/A000005(A000961(n+1))` -/
def P12310124545218486650.Spec : Prop :=
  ∀ n, P12310124545218486650.a n = (A305215 (n + 1) : ℚ)

end A305215

/-! ## A305215.P12990658557024267691

`Δ[A336816(eq[A014963(n+1), A020639(n+1)]+1)]`
-/

namespace A305215.P12990658557024267691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336816 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305215.P12990658557024267691

namespace A305215

/-- `Δ[A336816(eq[A014963(n+1), A020639(n+1)]+1)]` -/
def P12990658557024267691.Spec : Prop :=
  ∀ n, P12990658557024267691.a n = A305215 (n + 1)

end A305215

/-!
# A305217: Number of n X n 0..1 arrays with every element unequal to 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305217, there is no canonical definition to state claims against.
-/

/-! ## A305217.P16164149146473587767

`A305223(∑[4*n]+1)`
-/

namespace A305217.P16164149146473587767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305217.P16164149146473587767

/-! ## A305217.P1980376142092148215

`record[A305223(Δ[A235355(n)])]`
-/

namespace A305217.P1980376142092148215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305217.P1980376142092148215

/-! ## A305217.P16748559208063841202

`record[A305223(A330613(n+1))]`
-/

namespace A305217.P16748559208063841202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305217.P16748559208063841202

/-! ## A305217.P7139440708028455620

`record[A003982(n)*A305223(n+1)]`
-/

namespace A305217.P7139440708028455620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305217.P7139440708028455620

/-!
# A305218: Number of nX3 0..1 arrays with every element unequal to 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305218, there is no canonical definition to state claims against.
-/

/-! ## A305218.P17015298797990043602

`A305223(∑[n+2]+4)`
-/

namespace A305218.P17015298797990043602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305218.P17015298797990043602

/-! ## A305218.P13773901064705579929

`A316801(∑[n+2]+4)`
-/

namespace A305218.P13773901064705579929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305218.P13773901064705579929

/-! ## A305218.P2173125523502936829

`record[A305223(A025796(n)+3)]`
-/

namespace A305218.P2173125523502936829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (A025796 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305218.P2173125523502936829

/-! ## A305218.P7073698227700086084

`record[A316801(A025796(n)+3)]`
-/

namespace A305218.P7073698227700086084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A025796 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305218.P7073698227700086084

/-!
# A305219: Number of nX4 0..1 arrays with every element unequal to 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305219, there is no canonical definition to state claims against.
-/

/-! ## A305219.P5536266286471717283

`A305223(∑[n+3]+7)`
-/

namespace A305219.P5536266286471717283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305219.P5536266286471717283

/-! ## A305219.P2771098280370262535

`A316801(∑[n+3]+7)`
-/

namespace A305219.P2771098280370262535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305219.P2771098280370262535

/-!
# A305220: Number of nX5 0..1 arrays with every element unequal to 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305220, there is no canonical definition to state claims against.
-/

/-! ## A305220.P132234999890870835

`A305223(A167499(n+3))`
-/

namespace A305220.P132234999890870835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (A167499 (n + 3)).toNat

end

end A305220.P132234999890870835

/-! ## A305220.P9044274181887260253

`A305223(A374005(n+1))`
-/

namespace A305220.P9044274181887260253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (A374005 (n + 1)).toNat

end

end A305220.P9044274181887260253

/-!
# A305221: Number of nX6 0..1 arrays with every element unequal to 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305221, there is no canonical definition to state claims against.
-/

/-! ## A305221.P5885065589523139675

`A305223(∑[n+5]+16)`
-/

namespace A305221.P5885065589523139675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A305221.P5885065589523139675

/-! ## A305221.P13518711891991223170

`record[A305223(n+1)*A321537(A066657(n+2))]`
-/

namespace A305221.P13518711891991223170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (n + 1) * A321537 (A066657 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305221.P13518711891991223170

/-!
# A305222: Number of nX7 0..1 arrays with every element unequal to 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305222, there is no canonical definition to state claims against.
-/

/-! ## A305222.P13743766560455665990

`A305223(A056119(n)+28)`
-/

namespace A305222.P13743766560455665990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (A056119 n + 28).toNat

end

end A305222.P13743766560455665990

/-! ## A305222.P9381640062712035781

`A305223(A374008(n+1))`
-/

namespace A305222.P9381640062712035781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (A374008 (n + 1)).toNat

end

end A305222.P9381640062712035781

/-!
# A305224: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305224, there is no canonical definition to state claims against.
-/

/-! ## A305224.P13942676534126192878

`A305230(∑[4*n]+1)`
-/

namespace A305224.P13942676534126192878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305224.P13942676534126192878

/-! ## A305224.P11225236049405115664

`record[A003982(n)*A305230(n+1)]`
-/

namespace A305224.P11225236049405115664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305224.P11225236049405115664

/-!
# A305225: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305225, there is no canonical definition to state claims against.
-/

/-! ## A305225.P4920941884924012148

`A305230(∑[n+2]+4)`
-/

namespace A305225.P4920941884924012148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305225.P4920941884924012148

/-!
# A305226: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305226, there is no canonical definition to state claims against.
-/

/-! ## A305226.P2597712391233733980

`A305230(A141214(n)+7)`
-/

namespace A305226.P2597712391233733980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (A141214 n + 7).toNat

end

end A305226.P2597712391233733980

/-! ## A305226.P17999831290510981847

`A305230(A141214(n+1))`
-/

namespace A305226.P17999831290510981847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (A141214 (n + 1)).toNat

end

end A305226.P17999831290510981847

/-!
# A305227: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305227, there is no canonical definition to state claims against.
-/

/-! ## A305227.P10503617910611107135

`A305230(A167499(n+3))`
-/

namespace A305227.P10503617910611107135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (A167499 (n + 3)).toNat

end

end A305227.P10503617910611107135

/-! ## A305227.P9825930141578398431

`A305230(Δ[A264443(n)])`
-/

namespace A305227.P9825930141578398431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (f1 (n + 1) - f1 n).toNat

end

end A305227.P9825930141578398431

/-!
# A305228: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305228, there is no canonical definition to state claims against.
-/

/-! ## A305228.P5804176925863450579

`A305230(A000217(n+5)+6)`
-/

namespace A305228.P5804176925863450579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (A000217 (n + 5) + 6).toNat

end

end A305228.P5804176925863450579

/-! ## A305228.P12580811261506877281

`A305230(A374007(n+1))`
-/

namespace A305228.P12580811261506877281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (A374007 (n + 1)).toNat

end

end A305228.P12580811261506877281

/-!
# A305229: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305229, there is no canonical definition to state claims against.
-/

/-! ## A305229.P10085680841628095976

`A305230(A000217(n+6)+7)`
-/

namespace A305229.P10085680841628095976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (A000217 (n + 6) + 7).toNat

end

end A305229.P10085680841628095976

/-! ## A305229.P9265692728405933650

`A305230(A374008(n+1))`
-/

namespace A305229.P9265692728405933650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (A374008 (n + 1)).toNat

end

end A305229.P9265692728405933650

/-!
# A305230: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305230, there is no canonical definition to state claims against.
-/

/-! ## A305230.P6192246989225384342

`A303727(n+1)+A186745(A306100(n))`
-/

namespace A305230.P6192246989225384342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (n + 1) + A186745 (A306100 n).toNat

end

end A305230.P6192246989225384342

/-! ## A305230.P18057607218020362447

`A303727(n+1)+A025466(A001296(n))`
-/

namespace A305230.P18057607218020362447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (n + 1) + A025466 (A001296 n).toNat

end

end A305230.P18057607218020362447

/-! ## A305230.P8307376108502798834

`A303727(n+1)+A011737(A022171(n))`
-/

namespace A305230.P8307376108502798834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (n + 1) + A011737 (A022171 n).toNat

end

end A305230.P8307376108502798834

/-! ## A305230.P3861107579385006640

`A303727(n+1)+A025465(A023105(n))`
-/

namespace A305230.P3861107579385006640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (n + 1) + A025465 (A023105 n).toNat

end

end A305230.P3861107579385006640

/-! ## A305230.P17633610495003339062

`A303727(n+1)+A014707(A036426(n))`
-/

namespace A305230.P17633610495003339062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (n + 1) + A014707 (A036426 n).toNat

end

end A305230.P17633610495003339062

/-!
# A305231: Numbers that are the product of some integer and its digit reversal.

The programs for A305231, there is no canonical definition to state claims against.
-/

/-! ## A305231.P1099072502251198636

`∪[A325148(n+1), A359981(n+1)]`
-/

namespace A305231.P1099072502251198636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305231.P1099072502251198636

/-! ## A305231.P3222870345081058693

`lt[0, char[A061205(n)]]`
-/

namespace A305231.P3222870345081058693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305231.P3222870345081058693

/-! ## A305231.P1267185119535523574

`lt[0, char[n*A004086(n)]]`
-/

namespace A305231.P1267185119535523574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004086 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305231.P1267185119535523574

/-! ## A305231.P7733782614118192582

`lt[0, char[n*(A056964(n)-n)]]`
-/

namespace A305231.P7733782614118192582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A056964 n - (n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305231.P7733782614118192582

/-! ## A305231.P12385616411549111525

`lt[0, char[n*(n-A056965(n))]]`
-/

namespace A305231.P12385616411549111525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A056965 n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305231.P12385616411549111525

/-! ## A305231.P1008743762613789209

`lt[0, char[n*xor(n, A256756(n))]]`
-/

namespace A305231.P1008743762613789209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor (n : ℤ) (A256756 n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305231.P1008743762613789209

/-!
# A305232: Number of ordered ways to write 2*n+1 as p + binomial(2k,k) + 2*binomial(2m,m), where p is an odd prime, and k and m are nonnegative integers.

The programs for A305232, there is no canonical definition to state claims against.
-/

/-! ## A305232.P10619728565148857124

`A000120(floor(A332638(3*n)/A066447(n+4)))`
-/

namespace A305232.P10619728565148857124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊(A332638 (3 * n) : ℚ) / (A066447 (n + 4) : ℚ)⌋.toNat

end

end A305232.P10619728565148857124

/-!
# A305233: Smallest k such that binomial(k, floor(k/2)) >= n.

The programs for A305233, the canonical program `A305233.P7132812030500803874` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305233 has offset 1).

The definition of A305233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305233.P13039794556303896777

`∑[char[C(n, floor(n/2))]]+1`
-/

namespace A305233.P13039794556303896777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 2⌋.toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A305233.P13039794556303896777

namespace A305233

/-- `∑[char[C(n, floor(n/2))]]+1` -/
def P13039794556303896777.Spec : Prop :=
  ∀ n, (P13039794556303896777.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P5462859587550006219

`char[C(n, floor(n/2))]+a(n-1)` with `a(0)=1`
-/

namespace A305233.P5462859587550006219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 2⌋.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A305233.P5462859587550006219

namespace A305233

/-- `char[C(n, floor(n/2))]+a(n-1)` -/
def P5462859587550006219.Spec : Prop :=
  ∀ n, (P5462859587550006219.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P1529419082809968365

`∑[char[abs(A193382(n))]]`
-/

namespace A305233.P1529419082809968365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193382 n|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305233.P1529419082809968365

namespace A305233

/-- `∑[char[abs(A193382(n))]]` -/
def P1529419082809968365.Spec : Prop :=
  ∀ n, (P1529419082809968365.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P8626134587726293485

`∑[char[Δ[A111505(n)]]]`
-/

namespace A305233.P8626134587726293485
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305233.P8626134587726293485

namespace A305233

/-- `∑[char[Δ[A111505(n)]]]` -/
def P8626134587726293485.Spec : Prop :=
  ∀ n, (P8626134587726293485.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P11907802469176778793

`∑[char[A001405(n)]]+1`
-/

namespace A305233.P11907802469176778793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A305233.P11907802469176778793

namespace A305233

/-- `∑[char[A001405(n)]]+1` -/
def P11907802469176778793.Spec : Prop :=
  ∀ n, (P11907802469176778793.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P11688315780583913555

`∑[char[A210736(n)]]+1`
-/

namespace A305233.P11688315780583913555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A305233.P11688315780583913555

namespace A305233

/-- `∑[char[A210736(n)]]+1` -/
def P11688315780583913555.Spec : Prop :=
  ∀ n, (P11688315780583913555.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P2117760624091003099

`fp[record[A108044(n+1)]]`
-/

namespace A305233.P2117760624091003099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A305233.P2117760624091003099

namespace A305233

/-- `fp[record[A108044(n+1)]]` -/
def P2117760624091003099.Spec : Prop :=
  ∀ n, (P2117760624091003099.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P2017443591312706432

`fp[record[A111505(n+1)]]`
-/

namespace A305233.P2017443591312706432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111505 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A305233.P2017443591312706432

namespace A305233

/-- `fp[record[A111505(n+1)]]` -/
def P2017443591312706432.Spec : Prop :=
  ∀ n, (P2017443591312706432.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P11917634630151265381

`∑[char[C(n, A065033(n))]]`
-/

namespace A305233.P11917634630151265381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A065033 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305233.P11917634630151265381

namespace A305233

/-- `∑[char[C(n, A065033(n))]]` -/
def P11917634630151265381.Spec : Prop :=
  ∀ n, (P11917634630151265381.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P17077447032416774462

`∑[char[C(n, A123108(n))]]`
-/

namespace A305233.P17077447032416774462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A123108 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305233.P17077447032416774462

namespace A305233

/-- `∑[char[C(n, A123108(n))]]` -/
def P17077447032416774462.Spec : Prop :=
  ∀ n, (P17077447032416774462.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P7079028656407340248

`∑[char[abs(A193383(n+2))]]`
-/

namespace A305233.P7079028656407340248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193383 (n + 2)|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305233.P7079028656407340248

namespace A305233

/-- `∑[char[abs(A193383(n+2))]]` -/
def P7079028656407340248.Spec : Prop :=
  ∀ n, (P7079028656407340248.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P5659600950924136803

`ceil(log2(A036990(n+1)+2))`
-/

namespace A305233.P5659600950924136803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A036990 (n + 1) + 2 : ℝ)⌉

end

end A305233.P5659600950924136803

namespace A305233

/-- `ceil(log2(A036990(n+1)+2))` -/
def P5659600950924136803.Spec : Prop :=
  ∀ n, P5659600950924136803.a n = A305233 (n + 1)

end A305233

/-! ## A305233.P9074561337664706176

`char[abs(A126930(n))]+a(n-1)` with `a(0)=1`
-/

namespace A305233.P9074561337664706176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A305233.P9074561337664706176

namespace A305233

/-- `char[abs(A126930(n))]+a(n-1)` -/
def P9074561337664706176.Spec : Prop :=
  ∀ n, (P9074561337664706176.a n : ℤ) = A305233 (n + 1)

end A305233

/-! ## A305233.P7132812030500803874

`a(n-1)+C(n, A001405(a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A305233

/-- `a(n-1)+C(n, A001405(a(n-1)))` -/
def P7132812030500803874.Spec : Prop :=
  ∀ n, (P7132812030500803874.a n : ℤ) = A305233 (n + 1)

theorem P7132812030500803874.correct : P7132812030500803874.Spec := by
  intro n
  simp only [A305233, Nat.add_sub_cancel]

end A305233

/-! ## A305233.P17629716725527595659

`ceil(log2(A036990(n+2)))`
-/

namespace A305233.P17629716725527595659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A036990 (n + 2) : ℝ)⌉

end

end A305233.P17629716725527595659

namespace A305233

/-- `ceil(log2(A036990(n+2)))` -/
def P17629716725527595659.Spec : Prop :=
  ∀ n, P17629716725527595659.a n = A305233 (n + 1)

end A305233

/-! ## A305233.P12128111511111884751

`A070939(A036990(n+1))`
-/

namespace A305233.P12128111511111884751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A036990 (n + 1)).toNat

end

end A305233.P12128111511111884751

namespace A305233

/-- `A070939(A036990(n+1))` -/
def P12128111511111884751.Spec : Prop :=
  ∀ n, P12128111511111884751.a n = A305233 (n + 1)

end A305233

/-! ## A305233.P4370472556266388470

`A007456(A036990(n+2))`
-/

namespace A305233.P4370472556266388470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A036990 (n + 2)).toNat

end

end A305233.P4370472556266388470

namespace A305233

/-- `A007456(A036990(n+2))` -/
def P4370472556266388470.Spec : Prop :=
  ∀ n, P4370472556266388470.a n = A305233 (n + 1)

end A305233

/-! ## A305233.P8871872544472566507

`fp[record[A357136(n+1)]]`
-/

namespace A305233.P8871872544472566507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357136 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A305233.P8871872544472566507

namespace A305233

/-- `fp[record[A357136(n+1)]]` -/
def P8871872544472566507.Spec : Prop :=
  ∀ n, (P8871872544472566507.a n : ℤ) = A305233 (n + 1)

end A305233

/-!
# A305234: Number of successors of n having the same value of A001221 as n.

The programs for A305234, there is no canonical definition to state claims against.
-/

/-! ## A305234.P8095576584092539819

`(3*n)%A222295(A280198(n))`
-/

namespace A305234.P8095576584092539819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * n : ℤ) (A222295 (A280198 n).toNat)

end

end A305234.P8095576584092539819

/-!
# A305236: Numbers n such that the multiplicative group of integers modulo n is isomorphic to C_m X C_m, m > 1.

The programs for A305236, there is no canonical definition to state claims against.
-/

/-! ## A305236.P16763535875525264422

`A007050(n+6)*A180598(A357403(n))`
-/

namespace A305236.P16763535875525264422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007050 (n + 6) * A180598 (A357403 n).toNat

end

end A305236.P16763535875525264422

/-!
# A305237: Numbers m such that m, m+1 and m+2 all have primitive roots.

The programs for A305237, there is no canonical definition to state claims against.
-/

/-! ## A305237.P5303971746217098080

`∩[A289995(n+1), A319450(n+1)]`
-/

namespace A305237.P5303971746217098080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305237.P5303971746217098080

/-! ## A305237.P9857908104573714114

`∩[A033948(n+1), A319450(n+1)-1]`
-/

namespace A305237.P9857908104573714114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305237.P9857908104573714114

/-! ## A305237.P7459084359032759778

`∩[A033948(n+1), A160377(A319450(n+1))]`
-/

namespace A305237.P7459084359032759778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (A319450 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305237.P7459084359032759778

/-! ## A305237.P6129224960248782428

`A160377(∩[A319450(n+1)+1, A319450(n+1)])`
-/

namespace A305237.P6129224960248782428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A305237.P6129224960248782428

/-! ## A305237.P6561587469276490978

`∑[∏[A023416(A271273(n))]]`
-/

namespace A305237.P6561587469276490978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A271273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305237.P6561587469276490978

/-!
# A305238: Negative numbers in base -10.

The programs for A305238, the canonical program `A305238.P15682660179629317628` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305238 has offset 1).

The definition of A305238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305238.P15682660179629317628

`A039723(10*(n+1))/10`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A305238

/-- `A039723(10*(n+1))/10` -/
def P15682660179629317628.Spec : Prop :=
  ∀ n, P15682660179629317628.a n = (A305238 (n + 1) : ℚ)

end A305238

/-! ## A305238.P6226524958158190643

`A059995(A039723(Δ[5*(1+n)²]))`
-/

namespace A305238.P6226524958158190643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (1 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A039723 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A305238.P6226524958158190643

namespace A305238

/-- `A059995(A039723(Δ[5*(1+n)²]))` -/
def P6226524958158190643.Spec : Prop :=
  ∀ n, P6226524958158190643.a n = A305238 (n + 1)

end A305238

/-! ## A305238.P7381168336711089995

`A118757(A118759(A118757(n)+10))`
-/

namespace A305238.P7381168336711089995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118757 (A118759 (A118757 n + 10).toNat).toNat

end

end A305238.P7381168336711089995

namespace A305238

/-- `A118757(A118759(A118757(n)+10))` -/
def P7381168336711089995.Spec : Prop :=
  ∀ n, P7381168336711089995.a n = A305238 (n + 1)

end A305238

/-! ## A305238.P2609062166248004960

`A174025(A118759(A174025(n)+10))`
-/

namespace A305238.P2609062166248004960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174025 (A118759 (A174025 n + 10).toNat).toNat

end

end A305238.P2609062166248004960

namespace A305238

/-- `A174025(A118759(A174025(n)+10))` -/
def P2609062166248004960.Spec : Prop :=
  ∀ n, P2609062166248004960.a n = A305238 (n + 1)

end A305238

/-! ## A305238.P4182847572369756151

`A143473(A096582(2*(n+1))+n)`
-/

namespace A305238.P4182847572369756151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143473 (A096582 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A305238.P4182847572369756151

namespace A305238

/-- `A143473(A096582(2*(n+1))+n)` -/
def P4182847572369756151.Spec : Prop :=
  ∀ n, P4182847572369756151.a n = A305238 (n + 1)

end A305238

/-!
# A305239: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305239, there is no canonical definition to state claims against.
-/

/-! ## A305239.P8228629584579401837

`A305245(∑[4*n]+1)`
-/

namespace A305239.P8228629584579401837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305239.P8228629584579401837

/-! ## A305239.P16980684142944041163

`record[A003982(n)*A305245(n+1)]`
-/

namespace A305239.P16980684142944041163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305239.P16980684142944041163

/-! ## A305239.P1911159658613899020

`record[gcd(A008482(n), A305245(n+1))]`
-/

namespace A305239.P1911159658613899020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A305245 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305239.P1911159658613899020

/-!
# A305240: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305240, there is no canonical definition to state claims against.
-/

/-! ## A305240.P7226743793662874894

`A305245(∑[n+2]+4)`
-/

namespace A305240.P7226743793662874894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305240.P7226743793662874894

/-!
# A305241: Number of n X 4 0..1 arrays with every element unequal to 0, 1, 2, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305241, there is no canonical definition to state claims against.
-/

/-! ## A305241.P12692717718759923695

`A305245(A145018(n+4))`
-/

namespace A305241.P12692717718759923695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (A145018 (n + 4)).toNat

end

end A305241.P12692717718759923695

/-! ## A305241.P15232296366721876629

`A305245(A141214(n+1))`
-/

namespace A305241.P15232296366721876629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (A141214 (n + 1)).toNat

end

end A305241.P15232296366721876629

/-!
# A305242: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305242, there is no canonical definition to state claims against.
-/

/-! ## A305242.P6114282168794921651

`A305245(A167499(n+3))`
-/

namespace A305242.P6114282168794921651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (A167499 (n + 3)).toNat

end

end A305242.P6114282168794921651

/-! ## A305242.P16013000009418109774

`record[A305245(A167499(A084964(n)))]`
-/

namespace A305242.P16013000009418109774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (A167499 (A084964 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305242.P16013000009418109774

/-! ## A305242.P5172079756818325558

`A305245(A374005(n+1))`
-/

namespace A305242.P5172079756818325558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (A374005 (n + 1)).toNat

end

end A305242.P5172079756818325558

/-!
# A305243: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305243, there is no canonical definition to state claims against.
-/

/-! ## A305243.P10930990215140281750

`A305245(A000096(n+4)+7)`
-/

namespace A305243.P10930990215140281750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (A000096 (n + 4) + 7).toNat

end

end A305243.P10930990215140281750

/-! ## A305243.P6475055006804048935

`A305245(A374007(n+1))`
-/

namespace A305243.P6475055006804048935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (A374007 (n + 1)).toNat

end

end A305243.P6475055006804048935

/-!
# A305244: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305244, there is no canonical definition to state claims against.
-/

/-! ## A305244.P12681784495699664355

`A305245(A000124(n+6)+6)`
-/

namespace A305244.P12681784495699664355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (A000124 (n + 6) + 6).toNat

end

end A305244.P12681784495699664355

/-! ## A305244.P18245055401640239873

`A305245(A374008(n+1))`
-/

namespace A305244.P18245055401640239873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (A374008 (n + 1)).toNat

end

end A305244.P18245055401640239873

/-!
# A305245: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305245, there is no canonical definition to state claims against.
-/

/-! ## A305245.P17077288460608539419

`A303800(n+1)+A186034(A022167(n))`
-/

namespace A305245.P17077288460608539419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (n + 1) + A186034 (A022167 n).toNat

end

end A305245.P17077288460608539419

/-! ## A305245.P10323277377575844601

`A303800(n+1)+A173920(A173917(n))`
-/

namespace A305245.P10323277377575844601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (n + 1) + A173920 (A173917 n).toNat

end

end A305245.P10323277377575844601

/-! ## A305245.P1527109571557524576

`A304479(n+1)-A305258(A001263(n+1))`
-/

namespace A305245.P1527109571557524576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (n + 1) - A305258 (A001263 (n + 1)).toNat

end

end A305245.P1527109571557524576

/-! ## A305245.P1655633337980104922

`A134361(A303800(n+1))`
-/

namespace A305245.P1655633337980104922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A303800 (n + 1)).toNat

end

end A305245.P1655633337980104922

/-! ## A305245.P12259937609689396603

`A303800(n+1)+A086017(A264954(n+1))`
-/

namespace A305245.P12259937609689396603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (n + 1) + A086017 (A264954 (n + 1)).toNat

end

end A305245.P12259937609689396603

/-!
# A305246: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305246, there is no canonical definition to state claims against.
-/

/-! ## A305246.P13074336598773367310

`A305252(∑[4*n]+1)`
-/

namespace A305246.P13074336598773367310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305246.P13074336598773367310

/-! ## A305246.P551083101370103015

`record[A305252(Δ[A235355(n)])]`
-/

namespace A305246.P551083101370103015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305246.P551083101370103015

/-! ## A305246.P8827763114658859454

`record[A305252(A330613(n+1))]`
-/

namespace A305246.P8827763114658859454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305246.P8827763114658859454

/-! ## A305246.P12797955217111358273

`record[A003982(n)*A305252(n+1)]`
-/

namespace A305246.P12797955217111358273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305246.P12797955217111358273

/-!
# A305247: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305247, there is no canonical definition to state claims against.
-/

/-! ## A305247.P1172877151697186659

`A305252(∑[n+2]+4)`
-/

namespace A305247.P1172877151697186659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305247.P1172877151697186659

/-!
# A305248: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305248, there is no canonical definition to state claims against.
-/

/-! ## A305248.P4650584101545091283

`A305252(A374004(n+1))`
-/

namespace A305248.P4650584101545091283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (A374004 (n + 1)).toNat

end

end A305248.P4650584101545091283

/-! ## A305248.P1767111675007726136

`A305252(A141214(n+1))`
-/

namespace A305248.P1767111675007726136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (A141214 (n + 1)).toNat

end

end A305248.P1767111675007726136

/-!
# A305249: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305249, there is no canonical definition to state claims against.
-/

/-! ## A305249.P9860743006653782151

`A305252(∑[n+4]+11)`
-/

namespace A305249.P9860743006653782151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A305249.P9860743006653782151

/-!
# A305250: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305250, there is no canonical definition to state claims against.
-/

/-! ## A305250.P12386292739631725582

`A305252(A374007(n+1))`
-/

namespace A305250.P12386292739631725582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (A374007 (n + 1)).toNat

end

end A305250.P12386292739631725582

/-!
# A305251: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305251, there is no canonical definition to state claims against.
-/

/-! ## A305251.P15560035620406061789

`A305252(A374008(n+1))`
-/

namespace A305251.P15560035620406061789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (A374008 (n + 1)).toNat

end

end A305251.P15560035620406061789

/-!
# A305252: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305252, there is no canonical definition to state claims against.
-/

/-! ## A305252.P10200211683254967670

`A316552(n+1)-A309785(A299321(n+1))`
-/

namespace A305252.P10200211683254967670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (n + 1) - A309785 (A299321 (n + 1)).toNat

end

end A305252.P10200211683254967670

/-! ## A305252.P12239599997884486360

`xor(A200214(A197561(n+1)), A316552(n+1))`
-/

namespace A305252.P12239599997884486360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A200214 (A197561 (n + 1)).toNat) (A316552 (n + 1))

end

end A305252.P12239599997884486360

/-! ## A305252.P17895091751507420053

`A316552(n+1)-A075206(n+1)%A117358(n+1)`
-/

namespace A305252.P17895091751507420053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (n + 1) - Int.tmod (A075206 (n + 1)) (A117358 (n + 1))

end

end A305252.P17895091751507420053

/-! ## A305252.P13465901472698076455

`A316552(n+1)-A285007(A035607(n))`
-/

namespace A305252.P13465901472698076455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (n + 1) - A285007 (A035607 n).toNat

end

end A305252.P13465901472698076455

/-! ## A305252.P17205145595076049165

`A316552(n+1)-A285007(A270061(n))`
-/

namespace A305252.P17205145595076049165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316552 (n + 1) - A285007 (A270061 n).toNat

end

end A305252.P17205145595076049165

/-!
# A305253: Number of connected factorizations of n into factors greater than 1 whose distinct factors are pairwise indivisible.

The programs for A305253, there is no canonical definition to state claims against.
-/

/-! ## A305253.P29418264740182474

`A363741(n+1)+A011661(∑{e}[n+1, #]!/∏{e}[n+1, #!])`
-/

namespace A305253.P29418264740182474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363741 (n + 1) + A011661 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat

end

end A305253.P29418264740182474

/-! ## A305253.P161563969252892571

`A334216(n+1)-A050320(A346010(n+1))`
-/

namespace A305253.P161563969252892571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334216 (n + 1) - A050320 (A346010 (n + 1)).toNat

end

end A305253.P161563969252892571

/-! ## A305253.P3560482901519006791

`A116608(A316978(n+1))%A175334(n+1)`
-/

namespace A305253.P3560482901519006791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116608 (A316978 (n + 1)).toNat) (A175334 (n + 1))

end

end A305253.P3560482901519006791

/-! ## A305253.P16301789909585275929

`∑{e}[A005999(A007426(n+1)), #]`
-/

namespace A305253.P16301789909585275929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005999 (A007426 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A305253.P16301789909585275929

/-! ## A305253.P10933785085828535464

`∑{e}[A001511(A074206((n+1)²)), #]`
-/

namespace A305253.P10933785085828535464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A074206 ((n + 1) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A305253.P10933785085828535464

/-! ## A305253.P16508592044581291064

`∑{p}[A005999(A007426(n+1)), A001221(#)]`
-/

namespace A305253.P16508592044581291064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005999 (A007426 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A305253.P16508592044581291064

/-! ## A305253.P8977172203144363058

`A288636(A137502(n+1)^A304327(n+1))`
-/

namespace A305253.P8977172203144363058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288636 (SequenceMachineLib.roundAway ((A137502 (n + 1) : ℚ) ^ (A304327 (n + 1) : ℤ))).toNat

end

end A305253.P8977172203144363058

/-!
# A305254: Number of factorizations f of n into factors greater than 1 such that the graph of f is a forest.

The programs for A305254, there is no canonical definition to state claims against.
-/

/-! ## A305254.P14458996998297677781

`A380183(A028422(1+n))+1`
-/

namespace A305254.P14458996998297677781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A028422 (1 + n)).toNat + 1

end

end A305254.P14458996998297677781

/-! ## A305254.P987878445012163392

`A380184(A028422(n+1))+1`
-/

namespace A305254.P987878445012163392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380184 (A028422 (n + 1)).toNat + 1

end

end A305254.P987878445012163392

/-! ## A305254.P4072458172380393328

`A105223(3*A296121(n+1))`
-/

namespace A305254.P4072458172380393328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (3 * A296121 (n + 1)).toNat

end

end A305254.P4072458172380393328

/-! ## A305254.P13746837649587189657

`A095861(7*A296121(n+1))`
-/

namespace A305254.P13746837649587189657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (7 * A296121 (n + 1)).toNat

end

end A305254.P13746837649587189657

/-! ## A305254.P17259258945507419744

`ceil(A310100(A001055(n+1))/4)`
-/

namespace A305254.P17259258945507419744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A310100 (A001055 (n + 1)).toNat : ℚ) / 4⌉

end

end A305254.P17259258945507419744

/-! ## A305254.P7716015656967842996

`A335520(n+1)+A326334(n+1)`
-/

namespace A305254.P7716015656967842996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (n + 1) + A326334 (n + 1)

end

end A305254.P7716015656967842996

/-! ## A305254.P7061084948964059660

`Δ[A096276(n)]-A281116((n+1)/∏{p}[n+1, #])`
-/

namespace A305254.P7061084948964059660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A281116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A305254.P7061084948964059660

/-! ## A305254.P11547548437237181535

`A001055(n+1)-A281116((n+1)/∏{p}[n+1, #])`
-/

namespace A305254.P11547548437237181535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A281116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A305254.P11547548437237181535

/-! ## A305254.P13066385471874290524

`A001055(n+1)-A327695((n+1)/∏{p}[n+1, #])`
-/

namespace A305254.P13066385471874290524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A327695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A305254.P13066385471874290524

/-!
# A305256: Expansion of exp(Sum_{k>=1} (-1)^(k+1)*x^k/(k*sqrt(1 - 4*x^k))).

The programs for A305256, there is no canonical definition to state claims against.
-/

/-! ## A305256.P10205049681119523640

`A076885(A113436(n))`
-/

namespace A305256.P10205049681119523640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A113436 n).toNat

end

end A305256.P10205049681119523640

/-! ## A305256.P15503917201334269899

`A110656(A125145(n))`
-/

namespace A305256.P15503917201334269899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A125145 n).toNat

end

end A305256.P15503917201334269899

/-! ## A305256.P3181934843259174854

`A248183(A149336(n))`
-/

namespace A305256.P3181934843259174854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A149336 n).toNat

end

end A305256.P3181934843259174854

/-!
# A305257: If pd(x) is the product of the digits of the number x and sd(x) the sum of the digits of the number x then the sequence lists all the positive numbers n for which pd(n) = sd(n) and sd(pd(n)) = pd(sd(n)).

The programs for A305257, there is no canonical definition to state claims against.
-/

/-! ## A305257.P5421316103792084814

`∩[A034710(n+1), A083114(n+1)]`
-/

namespace A305257.P5421316103792084814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305257.P5421316103792084814

/-! ## A305257.P4401411661874570886

`∩[A055931(n+1), A064702(n+1)]`
-/

namespace A305257.P4401411661874570886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305257.P4401411661874570886

/-! ## A305257.P14918493500240761440

`∩[A055933(n+1), A064702(n+1)]`
-/

namespace A305257.P14918493500240761440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305257.P14918493500240761440

/-! ## A305257.P13284060528250612425

`∩[A064158(n+1), A064702(n+1)]`
-/

namespace A305257.P13284060528250612425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305257.P13284060528250612425

/-! ## A305257.P5611055865311877287

`∩[A061013(n+1), A083114(n+1)]`
-/

namespace A305257.P5611055865311877287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305257.P5611055865311877287

/-!
# A305258: List of y-coordinates of a point moving in a smooth counterclockwise spiral rotated by Pi/4.

The programs for A305258, there is no canonical definition to state claims against.
-/

/-! ## A305258.P4515992643038740385

`-(A329116(2*n)/2)`
-/

namespace A305258.P4515992643038740385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A329116 (2 * n) : ℚ) / 2)

end

end A305258.P4515992643038740385

/-! ## A305258.P7694147781161019120

`char[∑[4*n]]-A305259(n+1)`
-/

namespace A305258.P7694147781161019120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A305259 (n + 1)

end

end A305258.P7694147781161019120

/-! ## A305258.P11946131253612003575

`(-1)^∑[char[∑[n]]]*A053616(n)`
-/

namespace A305258.P11946131253612003575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * A053616 n

end

end A305258.P11946131253612003575

/-! ## A305258.P255566306466403314

`A010052(2*n)-(T(n-1,k)+T(n-1,k-1)+T(n-2,k-1))` with `a(0)=0`
-/

namespace A305258.P255566306466403314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010052 (2 * n) - (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n)

end

end A305258.P255566306466403314

/-! ## A305258.P16598700897620330019

`A119557(A008574(n))/2`
-/

namespace A305258.P16598700897620330019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119557 (A008574 n).toNat : ℚ) / 2

end

end A305258.P16598700897620330019

/-! ## A305258.P232554953380961261

`A119557(A008586(n))/2`
-/

namespace A305258.P232554953380961261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119557 (A008586 n).toNat : ℚ) / 2

end

end A305258.P232554953380961261

/-! ## A305258.P865716777072552488

`A340172(lt[1, A329972(2*n)])`
-/

namespace A305258.P865716777072552488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329972 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A305258.P865716777072552488

/-! ## A305258.P12130413359302943625

`A119557(A047599(2*n+1))/2`
-/

namespace A305258.P12130413359302943625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119557 (A047599 (2 * n + 1)).toNat : ℚ) / 2

end

end A305258.P12130413359302943625

/-! ## A305258.P11620243426055463764

`A268038(A316884(2*n+1))/2`
-/

namespace A305258.P11620243426055463764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268038 (A316884 (2 * n + 1)).toNat : ℚ) / 2

end

end A305258.P11620243426055463764

/-! ## A305258.P13928108069897311521

`A010751(n)-A174344(2*n+1)`
-/

namespace A305258.P13928108069897311521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n - A174344 (2 * n + 1)

end

end A305258.P13928108069897311521

/-!
# A305259: x-coordinates of a point moving counterclockwise on concentric squares of grid points rotated by Pi/4 with side length m*sqrt(2), m=1,2,..., with jump to next square on the positive x-axis.

The programs for A305259, there is no canonical definition to state claims against.
-/

/-! ## A305259.P9167115583849337767

`A010751(∑[char[∑[4*n]]]+n)`
-/

namespace A305259.P9167115583849337767
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A305259.P9167115583849337767

/-! ## A305259.P8539180270446078103

`char[∑[4*n]]+A329116(2*n)/2`
-/

namespace A305259.P8539180270446078103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A329116 (2 * n) : ℚ) / 2

end

end A305259.P8539180270446078103

/-! ## A305259.P8117313465630778323

`A329116(A090915(2*(1+n)))/2`
-/

namespace A305259.P8117313465630778323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329116 (A090915 (2 * (1 + n))).toNat : ℚ) / 2

end

end A305259.P8117313465630778323

/-! ## A305259.P13074122834664282908

`A340172(lt[0, A329972(2*n+1)])`
-/

namespace A305259.P13074122834664282908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329972 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A305259.P13074122834664282908

/-! ## A305259.P9596365497822770738

`∑[A003982(n)]-A088226(2*(n+1))`
-/

namespace A305259.P9596365497822770738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A088226 (2 * (n + 1))

end

end A305259.P9596365497822770738

/-! ## A305259.P12483469078145043802

`A255175(2*n)-A255175(2*n+1)/2`
-/

namespace A305259.P12483469078145043802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255175 (2 * n) : ℚ) - (A255175 (2 * n + 1) : ℚ) / 2

end

end A305259.P12483469078145043802

/-! ## A305259.P612414502293920714

`(A329116(2*n+1)-A339265(2*n+1))/2`
-/

namespace A305259.P612414502293920714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329116 (2 * n + 1) - A339265 (2 * n + 1) : ℚ) / 2

end

end A305259.P612414502293920714

/-! ## A305259.P5504670973231794888

`A003982(n)-A305258(n)`
-/

namespace A305259.P5504670973231794888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n - A305258 n

end

end A305259.P5504670973231794888

/-! ## A305259.P3730386882268711192

`A305258(A183572(n+1))`
-/

namespace A305259.P3730386882268711192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A183572 (n + 1)).toNat

end

end A305259.P3730386882268711192

/-!
# A305260: A linear mapping a(n) = x + y*n of pairs of nonnegative integers (x,y), where the pairs are enumerated first by radial coordinate r and in case of ties, by polar angle 0 <= phi <= Pi/2 in a polar coordinate system.

The programs for A305260, there is no canonical definition to state claims against.
-/

/-! ## A305260.P15384702853035786152

`A283306(n+1)+A283305(n+1)*n`
-/

namespace A305260.P15384702853035786152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283306 (n + 1) + A283305 (n + 1) * (n : ℤ)

end

end A305260.P15384702853035786152

/-!
# A305261: a(n) = 120*2^n - 108.

The programs for A305261, the canonical program `A305261.P132122530774460769` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305261 has offset 0).

The definition of A305261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `120*2^n-108` (program `A305261.P132122530774460769`, by `A305261.P132122530774460769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305261.P10628598133563497396

`ogf((12+96x)/(1-3x+2x^2))`
-/

namespace A305261.P10628598133563497396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 96] [1, -3, 2] n

end

end A305261.P10628598133563497396

namespace A305261

/-- `ogf((12+96x)/(1-3x+2x^2))` -/
def P10628598133563497396.Spec : Prop :=
  ∀ n, P10628598133563497396.a n = A305261 n

end A305261

/-! ## A305261.P132122530774460769

`120*2^n-108`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305261

/-- `120*2^n-108` -/
def P132122530774460769.Spec : Prop :=
  ∀ n, P132122530774460769.a n = A305261 n

theorem P132122530774460769.correct : P132122530774460769.Spec := by
  intro n
  simp only [A305261]

end A305261

/-! ## A305261.P8712629801723346866

`3*a(n-1)-2*a(n-2)` with `a(0)=12, a(1)=132`
-/

namespace A305261.P8712629801723346866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 132] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305261.P8712629801723346866

namespace A305261

/-- `3*a(n-1)-2*a(n-2)` -/
def P8712629801723346866.Spec : Prop :=
  ∀ n, P8712629801723346866.a n = A305261 n

theorem P8712629801723346866.correct : P8712629801723346866.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A305261, Nat.add_sub_cancel, A305261.P8712629801723346866.a, A305261.P132122530774460769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A305261, Nat.add_sub_cancel, A305261.P8712629801723346866.a, A305261.P132122530774460769.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305261

/-! ## A305261.P3232176300420212430

`2*(a(n-1)+54)` with `a(0)=12`
-/

namespace A305261.P3232176300420212430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  2 * (a (n - 1) + 54)

end

end A305261.P3232176300420212430

namespace A305261

/-- `2*(a(n-1)+54)` -/
def P3232176300420212430.Spec : Prop :=
  ∀ n, (P3232176300420212430.a n : ℤ) = A305261 n

theorem P3232176300420212430.correct : P3232176300420212430.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A305261, Nat.add_sub_cancel, A305261.P3232176300420212430.a, A305261.P132122530774460769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A305261, Nat.add_sub_cancel, A305261.P3232176300420212430.a, A305261.P132122530774460769.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305261

/-! ## A305261.P17290500115932732275

`∑[2*lcm(5, a(n-1))]` with `a(0)=12`
-/

namespace A305261.P17290500115932732275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  2 * Nat.lcm 5 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305261.P17290500115932732275

namespace A305261

/-- `∑[2*lcm(5, a(n-1))]` -/
def P17290500115932732275.Spec : Prop :=
  ∀ n, (P17290500115932732275.a n : ℤ) = A305261 n

end A305261

/-! ## A305261.P14919284728334253646

`∑[abs(∏[-a(n-1)])]` with `a(0)=12, a(1)=10, a(2)=2`
-/

namespace A305261.P14919284728334253646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [12, 10, 2] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305261.P14919284728334253646

namespace A305261

/-- `∑[abs(∏[-a(n-1)])]` -/
def P14919284728334253646.Spec : Prop :=
  ∀ n, P14919284728334253646.a n = A305261 n

end A305261

/-! ## A305261.P5167880237466192889

`12*A139634(n+1)`
-/

namespace A305261.P5167880237466192889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A139634 (n + 1)

end

end A305261.P5167880237466192889

namespace A305261

/-- `12*A139634(n+1)` -/
def P5167880237466192889.Spec : Prop :=
  ∀ n, P5167880237466192889.a n = A305261 n

theorem P5167880237466192889.correct : P5167880237466192889.Spec := by
  intro n
  simp only [A305261, Nat.add_sub_cancel, A305261.P5167880237466192889.a, A305261.P132122530774460769.a, A139634, A139634.P2304444689878185334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305261

/-! ## A305261.P644435583612199270

`4*(A139700(n+1)+2)`
-/

namespace A305261.P644435583612199270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A139700 (n + 1) + 2)

end

end A305261.P644435583612199270

namespace A305261

/-- `4*(A139700(n+1)+2)` -/
def P644435583612199270.Spec : Prop :=
  ∀ n, P644435583612199270.a n = A305261 n

theorem P644435583612199270.correct : P644435583612199270.Spec := by
  intro n
  simp only [A305261, Nat.add_sub_cancel, A305261.P644435583612199270.a, A305261.P132122530774460769.a, A139700, A139700.P14305388242412979496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305261

/-!
# A305262: a(n) = 140*2^n - 127.

The programs for A305262, the canonical program `A305262.P13686687202827206537` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305262 has offset 0).

The definition of A305262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `140*2^n-127` (program `A305262.P13686687202827206537`, by `A305262.P13686687202827206537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305262.P13686687202827206537

`140*2^n-127`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305262

/-- `140*2^n-127` -/
def P13686687202827206537.Spec : Prop :=
  ∀ n, P13686687202827206537.a n = A305262 n

theorem P13686687202827206537.correct : P13686687202827206537.Spec := by
  intro n
  simp only [A305262]

end A305262

/-! ## A305262.P2686763397149561668

`ogf((13+114x)/(1-3x+2x^2))`
-/

namespace A305262.P2686763397149561668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, 114] [1, -3, 2] n

end

end A305262.P2686763397149561668

namespace A305262

/-- `ogf((13+114x)/(1-3x+2x^2))` -/
def P2686763397149561668.Spec : Prop :=
  ∀ n, P2686763397149561668.a n = A305262 n

end A305262

/-! ## A305262.P1750948471401323158

`3*a(n-1)-2*a(n-2)` with `a(0)=13, a(1)=153`
-/

namespace A305262.P1750948471401323158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 153] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305262.P1750948471401323158

namespace A305262

/-- `3*a(n-1)-2*a(n-2)` -/
def P1750948471401323158.Spec : Prop :=
  ∀ n, P1750948471401323158.a n = A305262 n

theorem P1750948471401323158.correct : P1750948471401323158.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A305262, Nat.add_sub_cancel, A305262.P1750948471401323158.a, A305262.P13686687202827206537.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A305262, Nat.add_sub_cancel, A305262.P1750948471401323158.a, A305262.P13686687202827206537.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305262

/-! ## A305262.P5821932895761884577

`∑[2*a(n-1)]` with `a(0)=13, a(1)=140`
-/

namespace A305262.P5821932895761884577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 140] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305262.P5821932895761884577

namespace A305262

/-- `∑[2*a(n-1)]` -/
def P5821932895761884577.Spec : Prop :=
  ∀ n, (P5821932895761884577.a n : ℤ) = A305262 n

end A305262

/-! ## A305262.P5269311249609871856

`abs(15-A305270(n))`
-/

namespace A305262.P5269311249609871856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |15 - A305270 n|

end

end A305262.P5269311249609871856

namespace A305262

/-- `abs(15-A305270(n))` -/
def P5269311249609871856.Spec : Prop :=
  ∀ n, P5269311249609871856.a n = A305262 n

end A305262

/-!
# A305263: a(n) = 680*2^n - 622.

The programs for A305263, the canonical program `A305263.P2387813520893707681` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305263 has offset 0).

The definition of A305263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `680*2^n-622` (program `A305263.P2387813520893707681`, by `A305263.P2387813520893707681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305263.P2387813520893707681

`680*2^n-622`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305263

/-- `680*2^n-622` -/
def P2387813520893707681.Spec : Prop :=
  ∀ n, P2387813520893707681.a n = A305263 n

theorem P2387813520893707681.correct : P2387813520893707681.Spec := by
  intro n
  simp only [A305263]

end A305263

/-! ## A305263.P4244112431384008233

`ogf((58+564x)/(1-3x+2x^2))`
-/

namespace A305263.P4244112431384008233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [58, 564] [1, -3, 2] n

end

end A305263.P4244112431384008233

namespace A305263

/-- `ogf((58+564x)/(1-3x+2x^2))` -/
def P4244112431384008233.Spec : Prop :=
  ∀ n, P4244112431384008233.a n = A305263 n

end A305263

/-! ## A305263.P1987400673316502619

`3*a(n-1)-2*a(n-2)` with `a(0)=58, a(1)=738`
-/

namespace A305263.P1987400673316502619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [58, 738] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305263.P1987400673316502619

namespace A305263

/-- `3*a(n-1)-2*a(n-2)` -/
def P1987400673316502619.Spec : Prop :=
  ∀ n, P1987400673316502619.a n = A305263 n

theorem P1987400673316502619.correct : P1987400673316502619.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A305263, Nat.add_sub_cancel, A305263.P1987400673316502619.a, A305263.P2387813520893707681.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A305263, Nat.add_sub_cancel, A305263.P1987400673316502619.a, A305263.P2387813520893707681.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305263

/-!
# A305264: a(n) = 836*2^n - 771.

The programs for A305264, the canonical program `A305264.P15962899439420010670` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305264 has offset 0).

The definition of A305264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `836*2^n-771` (program `A305264.P15962899439420010670`, by `A305264.P15962899439420010670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305264.P15962899439420010670

`836*2^n-771`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305264

/-- `836*2^n-771` -/
def P15962899439420010670.Spec : Prop :=
  ∀ n, P15962899439420010670.a n = A305264 n

theorem P15962899439420010670.correct : P15962899439420010670.Spec := by
  intro n
  simp only [A305264]

end A305264

/-! ## A305264.P17397104779204568396

`ogf((65+706x)/(1-3x+2x^2))`
-/

namespace A305264.P17397104779204568396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [65, 706] [1, -3, 2] n

end

end A305264.P17397104779204568396

namespace A305264

/-- `ogf((65+706x)/(1-3x+2x^2))` -/
def P17397104779204568396.Spec : Prop :=
  ∀ n, P17397104779204568396.a n = A305264 n

end A305264

/-! ## A305264.P4661152275731689699

`3*a(n-1)-2*a(n-2)` with `a(0)=65, a(1)=901`
-/

namespace A305264.P4661152275731689699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [65, 901] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305264.P4661152275731689699

namespace A305264

/-- `3*a(n-1)-2*a(n-2)` -/
def P4661152275731689699.Spec : Prop :=
  ∀ n, P4661152275731689699.a n = A305264 n

theorem P4661152275731689699.correct : P4661152275731689699.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A305264, Nat.add_sub_cancel, A305264.P4661152275731689699.a, A305264.P15962899439420010670.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A305264, Nat.add_sub_cancel, A305264.P4661152275731689699.a, A305264.P15962899439420010670.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305264

/-!
# A305265: a(n) = 12*2^n + 62.

The programs for A305265, the canonical program `A305265.P4333515305140442594` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305265 has offset 0).

The definition of A305265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*2^n+62` (program `A305265.P4333515305140442594`, by `A305265.P4333515305140442594.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305265.P4333515305140442594

`12*2^n+62`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305265

/-- `12*2^n+62` -/
def P4333515305140442594.Spec : Prop :=
  ∀ n, (P4333515305140442594.a n : ℤ) = A305265 n

theorem P4333515305140442594.correct : P4333515305140442594.Spec := by
  intro n
  simp only [A305265]

end A305265

/-! ## A305265.P17362071535224786720

`ogf((74-136x)/(1-3x+2x^2))`
-/

namespace A305265.P17362071535224786720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [74, -136] [1, -3, 2] n

end

end A305265.P17362071535224786720

namespace A305265

/-- `ogf((74-136x)/(1-3x+2x^2))` -/
def P17362071535224786720.Spec : Prop :=
  ∀ n, P17362071535224786720.a n = A305265 n

end A305265

/-! ## A305265.P16477529277131893227

`3*a(n-1)-2*a(n-2)` with `a(0)=74, a(1)=86`
-/

namespace A305265.P16477529277131893227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [74, 86] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305265.P16477529277131893227

namespace A305265

/-- `3*a(n-1)-2*a(n-2)` -/
def P16477529277131893227.Spec : Prop :=
  ∀ n, P16477529277131893227.a n = A305265 n

theorem P16477529277131893227.correct : P16477529277131893227.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A305265, Nat.add_sub_cancel, A305265.P16477529277131893227.a, A305265.P4333515305140442594.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A305265, Nat.add_sub_cancel, A305265.P16477529277131893227.a, A305265.P4333515305140442594.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305265

/-! ## A305265.P11879059510533935850

`2*(a(n-1)-31)` with `a(0)=74`
-/

namespace A305265.P11879059510533935850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [74] fun n a =>
  2 * (a (n - 1) - 31)

end

end A305265.P11879059510533935850

namespace A305265

/-- `2*(a(n-1)-31)` -/
def P11879059510533935850.Spec : Prop :=
  ∀ n, P11879059510533935850.a n = A305265 n

theorem P11879059510533935850.correct : P11879059510533935850.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A305265, Nat.add_sub_cancel, A305265.P11879059510533935850.a, A305265.P4333515305140442594.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A305265, Nat.add_sub_cancel, A305265.P11879059510533935850.a, A305265.P4333515305140442594.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305265

/-! ## A305265.P782174169375976937

`xor(2, 12*A168614(n))`
-/

namespace A305265.P782174169375976937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (12 * A168614 n)

end

end A305265.P782174169375976937

namespace A305265

/-- `xor(2, 12*A168614(n))` -/
def P782174169375976937.Spec : Prop :=
  ∀ n, P782174169375976937.a n = A305265 n

end A305265

/-! ## A305265.P5548186394271605319

`2*(31+A003945(n+2))`
-/

namespace A305265.P5548186394271605319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (31 + A003945 (n + 2))

end

end A305265.P5548186394271605319

namespace A305265

/-- `2*(31+A003945(n+2))` -/
def P5548186394271605319.Spec : Prop :=
  ∀ n, P5548186394271605319.a n = A305265 n

end A305265

/-! ## A305265.P6308278806586827066

`2*(A153893(n+1)+32)`
-/

namespace A305265.P6308278806586827066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153893 (n + 1) + 32)

end

end A305265.P6308278806586827066

namespace A305265

/-- `2*(A153893(n+1)+32)` -/
def P6308278806586827066.Spec : Prop :=
  ∀ n, P6308278806586827066.a n = A305265 n

theorem P6308278806586827066.correct : P6308278806586827066.Spec := by
  intro n
  simp only [A305265, Nat.add_sub_cancel, A305265.P6308278806586827066.a, A305265.P4333515305140442594.a, A153893, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305265

/-! ## A305265.P11738264870294150147

`2*(6*(A000051(n)+4)+1)`
-/

namespace A305265.P11738264870294150147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (6 * (A000051 n + 4) + 1)

end

end A305265.P11738264870294150147

namespace A305265

/-- `2*(6*(A000051(n)+4)+1)` -/
def P11738264870294150147.Spec : Prop :=
  ∀ n, P11738264870294150147.a n = A305265 n

theorem P11738264870294150147.correct : P11738264870294150147.Spec := by
  intro n
  simp only [A305265, Nat.add_sub_cancel, A305265.P11738264870294150147.a, A305265.P4333515305140442594.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305265

/-! ## A305265.P9249754787278419772

`A305267(n)%(A305266(n)+1)`
-/

namespace A305265.P9249754787278419772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305267 n) (A305266 n + 1)

end

end A305265.P9249754787278419772

namespace A305265

/-- `A305267(n)%(A305266(n)+1)` -/
def P9249754787278419772.Spec : Prop :=
  ∀ n, P9249754787278419772.a n = A305265 n

end A305265

/-!
# A305266: a(n) = 14*2^n + 73.

The programs for A305266, the canonical program `A305266.P7462686527059945508` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305266 has offset 0).

The definition of A305266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*2^n+73` (program `A305266.P7462686527059945508`, by `A305266.P7462686527059945508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305266.P7462686527059945508

`14*2^n+73`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305266

/-- `14*2^n+73` -/
def P7462686527059945508.Spec : Prop :=
  ∀ n, (P7462686527059945508.a n : ℤ) = A305266 n

theorem P7462686527059945508.correct : P7462686527059945508.Spec := by
  intro n
  simp only [A305266]

end A305266

/-! ## A305266.P7792812672623895866

`ogf((87-160x)/(1-3x+2x^2))`
-/

namespace A305266.P7792812672623895866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [87, -160] [1, -3, 2] n

end

end A305266.P7792812672623895866

namespace A305266

/-- `ogf((87-160x)/(1-3x+2x^2))` -/
def P7792812672623895866.Spec : Prop :=
  ∀ n, P7792812672623895866.a n = A305266 n

end A305266

/-! ## A305266.P10760266803485144897

`∑[2*a(n-1)]` with `a(0)=87, a(1)=14`
-/

namespace A305266.P10760266803485144897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [87, 14] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305266.P10760266803485144897

namespace A305266

/-- `∑[2*a(n-1)]` -/
def P10760266803485144897.Spec : Prop :=
  ∀ n, (P10760266803485144897.a n : ℤ) = A305266 n

end A305266

/-! ## A305266.P1040039590605604678

`∑[a(n-1)/(1-1/2)]` with `a(0)=87, a(1)=14`
-/

namespace A305266.P1040039590605604678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [87, 14] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305266.P1040039590605604678

namespace A305266

/-- `∑[a(n-1)/(1-1/2)]` -/
def P1040039590605604678.Spec : Prop :=
  ∀ n, P1040039590605604678.a n = (A305266 n : ℚ)

end A305266

/-! ## A305266.P18288970733982242752

`A305268(n)%(A305267(n)+9)`
-/

namespace A305266.P18288970733982242752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305268 n) (A305267 n + 9)

end

end A305266.P18288970733982242752

namespace A305266

/-- `A305268(n)%(A305267(n)+9)` -/
def P18288970733982242752.Spec : Prop :=
  ∀ n, P18288970733982242752.a n = A305266 n

end A305266

/-! ## A305266.P10094437311257332668

`(A305063(n)+35)%A305062(n)`
-/

namespace A305266.P10094437311257332668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305063 n + 35) (A305062 n)

end

end A305266.P10094437311257332668

namespace A305266

/-- `(A305063(n)+35)%A305062(n)` -/
def P10094437311257332668.Spec : Prop :=
  ∀ n, P10094437311257332668.a n = A305266 n

end A305266

/-!
# A305267: a(n) = 68*2^n + 358.

The programs for A305267, the canonical program `A305267.P6029245902551000314` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305267 has offset 0).

The definition of A305267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `68*2^n+358` (program `A305267.P6029245902551000314`, by `A305267.P6029245902551000314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305267.P6029245902551000314

`68*2^n+358`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305267

/-- `68*2^n+358` -/
def P6029245902551000314.Spec : Prop :=
  ∀ n, (P6029245902551000314.a n : ℤ) = A305267 n

theorem P6029245902551000314.correct : P6029245902551000314.Spec := by
  intro n
  simp only [A305267]

end A305267

/-! ## A305267.P589894344584879653

`ogf((426-784x)/(1-3x+2x^2))`
-/

namespace A305267.P589894344584879653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [426, -784] [1, -3, 2] n

end

end A305267.P589894344584879653

namespace A305267

/-- `ogf((426-784x)/(1-3x+2x^2))` -/
def P589894344584879653.Spec : Prop :=
  ∀ n, P589894344584879653.a n = A305267 n

end A305267

/-! ## A305267.P9794513521671310678

`A215137(A020707(n)+21)`
-/

namespace A305267.P9794513521671310678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (A020707 n + 21).toNat

end

end A305267.P9794513521671310678

namespace A305267

/-- `A215137(A020707(n)+21)` -/
def P9794513521671310678.Spec : Prop :=
  ∀ n, P9794513521671310678.a n = A305267 n

end A305267

/-! ## A305267.P1172273116074043033

`A310436(∑[2*a(n-1)])` with `a(0)=87, a(1)=14`
-/

namespace A305267.P1172273116074043033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [87, 14] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310436 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305267.P1172273116074043033

namespace A305267

/-- `A310436(∑[2*a(n-1)])` -/
def P1172273116074043033.Spec : Prop :=
  ∀ n, P1172273116074043033.a n = A305267 n

end A305267

/-!
# A305268: a(n) = 82*2^n + 440.

The programs for A305268, the canonical program `A305268.P11080502633366163475` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305268 has offset 0).

The definition of A305268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `82*2^n+440` (program `A305268.P11080502633366163475`, by `A305268.P11080502633366163475.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305268.P11080502633366163475

`82*2^n+440`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305268

/-- `82*2^n+440` -/
def P11080502633366163475.Spec : Prop :=
  ∀ n, (P11080502633366163475.a n : ℤ) = A305268 n

theorem P11080502633366163475.correct : P11080502633366163475.Spec := by
  intro n
  simp only [A305268]

end A305268

/-! ## A305268.P17445763218070132305

`ogf((522-962x)/(1-3x+2x^2))`
-/

namespace A305268.P17445763218070132305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [522, -962] [1, -3, 2] n

end

end A305268.P17445763218070132305

namespace A305268

/-- `ogf((522-962x)/(1-3x+2x^2))` -/
def P17445763218070132305.Spec : Prop :=
  ∀ n, P17445763218070132305.a n = A305268 n

end A305268

/-! ## A305268.P7062961286358389427

`3*a(n-1)-2*a(n-2)` with `a(0)=522, a(1)=604`
-/

namespace A305268.P7062961286358389427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [522, 604] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305268.P7062961286358389427

namespace A305268

/-- `3*a(n-1)-2*a(n-2)` -/
def P7062961286358389427.Spec : Prop :=
  ∀ n, P7062961286358389427.a n = A305268 n

theorem P7062961286358389427.correct : P7062961286358389427.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A305268, Nat.add_sub_cancel, A305268.P7062961286358389427.a, A305268.P11080502633366163475.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A305268, Nat.add_sub_cancel, A305268.P7062961286358389427.a, A305268.P11080502633366163475.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305268

/-!
# A305269: a(n) = 120*2^n - 95.

The programs for A305269, the canonical program `A305269.P14753702375823157407` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305269 has offset 0).

The definition of A305269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `120*2^n-95` (program `A305269.P14753702375823157407`, by `A305269.P14753702375823157407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305269.P14753702375823157407

`120*2^n-95`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305269

/-- `120*2^n-95` -/
def P14753702375823157407.Spec : Prop :=
  ∀ n, P14753702375823157407.a n = A305269 n

theorem P14753702375823157407.correct : P14753702375823157407.Spec := by
  intro n
  simp only [A305269]

end A305269

/-! ## A305269.P15374727837304770052

`ogf((25+70x)/(1-3x+2x^2))`
-/

namespace A305269.P15374727837304770052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [25, 70] [1, -3, 2] n

end

end A305269.P15374727837304770052

namespace A305269

/-- `ogf((25+70x)/(1-3x+2x^2))` -/
def P15374727837304770052.Spec : Prop :=
  ∀ n, P15374727837304770052.a n = A305269 n

end A305269

/-! ## A305269.P4504817204751588431

`3*a(n-1)-2*a(n-2)` with `a(0)=25, a(1)=145`
-/

namespace A305269.P4504817204751588431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25, 145] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305269.P4504817204751588431

namespace A305269

/-- `3*a(n-1)-2*a(n-2)` -/
def P4504817204751588431.Spec : Prop :=
  ∀ n, P4504817204751588431.a n = A305269 n

theorem P4504817204751588431.correct : P4504817204751588431.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A305269, Nat.add_sub_cancel, A305269.P4504817204751588431.a, A305269.P14753702375823157407.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A305269, Nat.add_sub_cancel, A305269.P4504817204751588431.a, A305269.P14753702375823157407.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305269

/-! ## A305269.P11709334254125154792

`∑[2*a(n-1)]` with `a(0)=25, a(1)=120`
-/

namespace A305269.P11709334254125154792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [25, 120] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305269.P11709334254125154792

namespace A305269

/-- `∑[2*a(n-1)]` -/
def P11709334254125154792.Spec : Prop :=
  ∀ n, (P11709334254125154792.a n : ℤ) = A305269 n

end A305269

/-! ## A305269.P17870671355502726384

`5*(A305163(n)-1)`
-/

namespace A305269.P17870671355502726384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A305163 n - 1)

end

end A305269.P17870671355502726384

namespace A305269

/-- `5*(A305163(n)-1)` -/
def P17870671355502726384.Spec : Prop :=
  ∀ n, P17870671355502726384.a n = A305269 n

theorem P17870671355502726384.correct : P17870671355502726384.Spec := by
  intro n
  simp only [A305269, Nat.add_sub_cancel, A305269.P17870671355502726384.a, A305269.P14753702375823157407.a, A305163, A305163.P3204097201116217544.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305269

/-! ## A305269.P12058940704530372753

`5*(A182461(n)-11)`
-/

namespace A305269.P12058940704530372753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A182461 n - 11)

end

end A305269.P12058940704530372753

namespace A305269

/-- `5*(A182461(n)-11)` -/
def P12058940704530372753.Spec : Prop :=
  ∀ n, P12058940704530372753.a n = A305269 n

end A305269

/-! ## A305269.P13988275675660025280

`5*(A275163(n)-A126646(n)-1)`
-/

namespace A305269.P13988275675660025280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A275163 n - A126646 n - 1)

end

end A305269.P13988275675660025280

namespace A305269

/-- `5*(A275163(n)-A126646(n)-1)` -/
def P13988275675660025280.Spec : Prop :=
  ∀ n, P13988275675660025280.a n = A305269 n

theorem P13988275675660025280.correct : P13988275675660025280.Spec := by
  intro n
  simp only [A305269, Nat.add_sub_cancel, A305269.P13988275675660025280.a, A305269.P14753702375823157407.a, A126646, A126646.P3746310572697910447.a, A275163, A275163.P9369900025326698498.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A305269

/-! ## A305269.P8900362903736016619

`5*(A305156(n)-1)%A305155(n)`
-/

namespace A305269.P8900362903736016619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.tmod (A305156 n - 1) (A305155 n)

end

end A305269.P8900362903736016619

namespace A305269

/-- `5*(A305156(n)-1)%A305155(n)` -/
def P8900362903736016619.Spec : Prop :=
  ∀ n, P8900362903736016619.a n = A305269 n

end A305269

/-!
# A305270: a(n) = 140*2^n - 112.

The programs for A305270, the canonical program `A305270.P11858604698464883215` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305270 has offset 0).

The definition of A305270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `140*2^n-112` (program `A305270.P11858604698464883215`, by `A305270.P11858604698464883215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305270.P357319884301832806

`ogf((28+84x)/(1-3x+2x^2))`
-/

namespace A305270.P357319884301832806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [28, 84] [1, -3, 2] n

end

end A305270.P357319884301832806

namespace A305270

/-- `ogf((28+84x)/(1-3x+2x^2))` -/
def P357319884301832806.Spec : Prop :=
  ∀ n, P357319884301832806.a n = A305270 n

end A305270

/-! ## A305270.P11858604698464883215

`140*2^n-112`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305270

/-- `140*2^n-112` -/
def P11858604698464883215.Spec : Prop :=
  ∀ n, P11858604698464883215.a n = A305270 n

theorem P11858604698464883215.correct : P11858604698464883215.Spec := by
  intro n
  simp only [A305270]

end A305270

/-! ## A305270.P3036864773539324706

`3*a(n-1)-2*a(n-2)` with `a(0)=28, a(1)=168`
-/

namespace A305270.P3036864773539324706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [28, 168] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305270.P3036864773539324706

namespace A305270

/-- `3*a(n-1)-2*a(n-2)` -/
def P3036864773539324706.Spec : Prop :=
  ∀ n, P3036864773539324706.a n = A305270 n

theorem P3036864773539324706.correct : P3036864773539324706.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A305270, Nat.add_sub_cancel, A305270.P3036864773539324706.a, A305270.P11858604698464883215.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A305270, Nat.add_sub_cancel, A305270.P3036864773539324706.a, A305270.P11858604698464883215.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305270

/-! ## A305270.P6663689774615774137

`2*(a(n-1)+56)` with `a(0)=28`
-/

namespace A305270.P6663689774615774137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28] fun n a =>
  2 * (a (n - 1) + 56)

end

end A305270.P6663689774615774137

namespace A305270

/-- `2*(a(n-1)+56)` -/
def P6663689774615774137.Spec : Prop :=
  ∀ n, (P6663689774615774137.a n : ℤ) = A305270 n

theorem P6663689774615774137.correct : P6663689774615774137.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A305270, Nat.add_sub_cancel, A305270.P6663689774615774137.a, A305270.P11858604698464883215.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A305270, Nat.add_sub_cancel, A305270.P6663689774615774137.a, A305270.P11858604698464883215.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305270

/-! ## A305270.P4890908781944129944

`28*∑[2*a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A305270.P4890908781944129944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305270.P4890908781944129944

namespace A305270

/-- `28*∑[2*a(n-1)]` -/
def P4890908781944129944.Spec : Prop :=
  ∀ n, (P4890908781944129944.a n : ℤ) = A305270 n

end A305270

/-! ## A305270.P6428937476817713334

`28*A048487(n)`
-/

namespace A305270.P6428937476817713334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A048487 n

end

end A305270.P6428937476817713334

namespace A305270

/-- `28*A048487(n)` -/
def P6428937476817713334.Spec : Prop :=
  ∀ n, P6428937476817713334.a n = A305270 n

theorem P6428937476817713334.correct : P6428937476817713334.Spec := by
  intro n
  simp only [A305270, Nat.add_sub_cancel, A305270.P6428937476817713334.a, A305270.P11858604698464883215.a, A048487, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305270

/-! ## A305270.P13504923110049109845

`2*7*A154252(n+1)`
-/

namespace A305270.P13504923110049109845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (7 * A154252 (n + 1))

end

end A305270.P13504923110049109845

namespace A305270

/-- `2*7*A154252(n+1)` -/
def P13504923110049109845.Spec : Prop :=
  ∀ n, P13504923110049109845.a n = A305270 n

end A305270

/-! ## A305270.P14536736703345751933

`3*(A305262(n)/3+5)`
-/

namespace A305270.P14536736703345751933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A305262 n : ℚ) / 3 + 5)

end

end A305270.P14536736703345751933

namespace A305270

/-- `3*(A305262(n)/3+5)` -/
def P14536736703345751933.Spec : Prop :=
  ∀ n, P14536736703345751933.a n = (A305270 n : ℚ)

theorem P14536736703345751933.correct : P14536736703345751933.Spec := by
  intro n
  simp only [A305270, Nat.add_sub_cancel, A305270.P14536736703345751933.a, A305270.P11858604698464883215.a, A305262, A305262.P13686687202827206537.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305270

/-! ## A305270.P9530737237622608912

`A040756(n)*A131051(n+1)`
-/

namespace A305270.P9530737237622608912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040756 n * A131051 (n + 1)

end

end A305270.P9530737237622608912

namespace A305270

/-- `A040756(n)*A131051(n+1)` -/
def P9530737237622608912.Spec : Prop :=
  ∀ n, P9530737237622608912.a n = A305270 n

end A305270

/-!
# A305271: a(n) = 680*2^n - 548.

The programs for A305271, the canonical program `A305271.P2857535205369854476` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305271 has offset 0).

The definition of A305271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `680*2^n-548` (program `A305271.P2857535205369854476`, by `A305271.P2857535205369854476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305271.P2857535205369854476

`680*2^n-548`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305271

/-- `680*2^n-548` -/
def P2857535205369854476.Spec : Prop :=
  ∀ n, P2857535205369854476.a n = A305271 n

theorem P2857535205369854476.correct : P2857535205369854476.Spec := by
  intro n
  simp only [A305271]

end A305271

/-! ## A305271.P7440718983713594263

`ogf((132+416x)/(1-3x+2x^2))`
-/

namespace A305271.P7440718983713594263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [132, 416] [1, -3, 2] n

end

end A305271.P7440718983713594263

namespace A305271

/-- `ogf((132+416x)/(1-3x+2x^2))` -/
def P7440718983713594263.Spec : Prop :=
  ∀ n, P7440718983713594263.a n = A305271 n

end A305271

/-! ## A305271.P12218084652102776715

`3*a(n-1)-2*a(n-2)` with `a(0)=132, a(1)=812`
-/

namespace A305271.P12218084652102776715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [132, 812] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305271.P12218084652102776715

namespace A305271

/-- `3*a(n-1)-2*a(n-2)` -/
def P12218084652102776715.Spec : Prop :=
  ∀ n, P12218084652102776715.a n = A305271 n

theorem P12218084652102776715.correct : P12218084652102776715.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A305271, Nat.add_sub_cancel, A305271.P12218084652102776715.a, A305271.P2857535205369854476.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A305271, Nat.add_sub_cancel, A305271.P12218084652102776715.a, A305271.P2857535205369854476.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305271

/-!
# A305272: a(n) = 836*2^n - 676.

The programs for A305272, the canonical program `A305272.P9763699947387724980` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305272 has offset 0).

The definition of A305272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `836*2^n-676` (program `A305272.P9763699947387724980`, by `A305272.P9763699947387724980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305272.P9763699947387724980

`836*2^n-676`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305272

/-- `836*2^n-676` -/
def P9763699947387724980.Spec : Prop :=
  ∀ n, P9763699947387724980.a n = A305272 n

theorem P9763699947387724980.correct : P9763699947387724980.Spec := by
  intro n
  simp only [A305272]

end A305272

/-! ## A305272.P17184232087464313853

`ogf((160+516x)/(1-3x+2x^2))`
-/

namespace A305272.P17184232087464313853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [160, 516] [1, -3, 2] n

end

end A305272.P17184232087464313853

namespace A305272

/-- `ogf((160+516x)/(1-3x+2x^2))` -/
def P17184232087464313853.Spec : Prop :=
  ∀ n, P17184232087464313853.a n = A305272 n

end A305272

/-! ## A305272.P7454184392499969128

`3*a(n-1)-2*a(n-2)` with `a(0)=160, a(1)=996`
-/

namespace A305272.P7454184392499969128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [160, 996] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305272.P7454184392499969128

namespace A305272

/-- `3*a(n-1)-2*a(n-2)` -/
def P7454184392499969128.Spec : Prop :=
  ∀ n, P7454184392499969128.a n = A305272 n

theorem P7454184392499969128.correct : P7454184392499969128.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A305272, Nat.add_sub_cancel, A305272.P7454184392499969128.a, A305272.P9763699947387724980.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A305272, Nat.add_sub_cancel, A305272.P7454184392499969128.a, A305272.P9763699947387724980.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A305272

/-!
# A305275: Coefficients in asymptotic expansion of sequence A302557.

The programs for A305275, there is no canonical definition to state claims against.
-/

/-! ## A305275.P11124675319735228797

`A320409(or(a(n-1)+2, and(n, -n)))` with `a(0)=1, a(1)=0`
-/

namespace A305275.P11124675319735228797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A320409 (Int.lor (a (n - 1) + 2) (Int.land (n : ℤ) (-(n : ℤ)))).toNat

end

end A305275.P11124675319735228797

/-! ## A305275.P6677407320534012608

`A008612(Δ[A134055(n)])`
-/

namespace A305275.P6677407320534012608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (f1 (n + 1) - f1 n).toNat

end

end A305275.P6677407320534012608

/-!
# A305276: Expansion of e.g.f. 1/(1 + LambertW(-x/(1 - x))).

The programs for A305276, there is no canonical definition to state claims against.
-/

/-! ## A305276.P17158603982200002635

`A122124(a(n-1))*n` with `a(0)=1, a(1)=1`
-/

namespace A305276.P17158603982200002635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A122124 (a (n - 1)).toNat * (n : ℤ)

end

end A305276.P17158603982200002635

/-!
# A305277: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305277, there is no canonical definition to state claims against.
-/

/-! ## A305277.P275328819307255519

`A305281(∑[4*n]+1)`
-/

namespace A305277.P275328819307255519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305277.P275328819307255519

/-! ## A305277.P16811190452552492749

`record[A305281(∑[A266981(n)])]`
-/

namespace A305277.P16811190452552492749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305277.P16811190452552492749

/-! ## A305277.P13679338253478723154

`record[A305281(A272267(n+1))]`
-/

namespace A305277.P13679338253478723154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305277.P13679338253478723154

/-! ## A305277.P426463955266933144

`record[A305281(A330613(n+1))]`
-/

namespace A305277.P426463955266933144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305277.P426463955266933144

/-!
# A305278: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305278, there is no canonical definition to state claims against.
-/

/-! ## A305278.P2467427350205450268

`A305281(C(n+6, 2)-n)`
-/

namespace A305278.P2467427350205450268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (Nat.choose (n + 6) 2 - n)

end

end A305278.P2467427350205450268

/-!
# A305279: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305279, there is no canonical definition to state claims against.
-/

/-! ## A305279.P8116508355744398970

`A305281(A166136(n+4))`
-/

namespace A305279.P8116508355744398970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (A166136 (n + 4)).toNat

end

end A305279.P8116508355744398970

/-! ## A305279.P7948300159848080121

`A305281(A374007(n+1))`
-/

namespace A305279.P7948300159848080121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (A374007 (n + 1)).toNat

end

end A305279.P7948300159848080121

/-!
# A305280: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305280, there is no canonical definition to state claims against.
-/

/-! ## A305280.P3209168134794504969

`A305281(A167487(n+5))`
-/

namespace A305280.P3209168134794504969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (A167487 (n + 5)).toNat

end

end A305280.P3209168134794504969

/-! ## A305280.P8847813412249740776

`A305281(A374008(n+1))`
-/

namespace A305280.P8847813412249740776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (A374008 (n + 1)).toNat

end

end A305280.P8847813412249740776

/-!
# A305282: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305282, there is no canonical definition to state claims against.
-/

/-! ## A305282.P15538832603442728669

`A305288(∑[4*n]+1)`
-/

namespace A305282.P15538832603442728669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305282.P15538832603442728669

/-! ## A305282.P14344989345894924191

`record[A305288(Δ[A235355(n)])]`
-/

namespace A305282.P14344989345894924191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305282.P14344989345894924191

/-! ## A305282.P16300962695108000134

`record[A003982(n)*A305288(n+1)]`
-/

namespace A305282.P16300962695108000134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305282.P16300962695108000134

/-! ## A305282.P14879854133335275677

`record[A005369(n)*A305288(2*n+1)]`
-/

namespace A305282.P14879854133335275677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A305288 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305282.P14879854133335275677

/-!
# A305283: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305283, there is no canonical definition to state claims against.
-/

/-! ## A305283.P11185211748719687439

`A305288(∑[n+2]+4)`
-/

namespace A305283.P11185211748719687439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305283.P11185211748719687439

/-!
# A305284: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305284, there is no canonical definition to state claims against.
-/

/-! ## A305284.P3328808889769835901

`A305288(A374004(n+1))`
-/

namespace A305284.P3328808889769835901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (A374004 (n + 1)).toNat

end

end A305284.P3328808889769835901

/-! ## A305284.P247902250747721462

`A305288(A141214(n+1))`
-/

namespace A305284.P247902250747721462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (A141214 (n + 1)).toNat

end

end A305284.P247902250747721462

/-!
# A305285: Number of n X 5 0..1 arrays with every element unequal to 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305285, there is no canonical definition to state claims against.
-/

/-! ## A305285.P7441462555632079039

`A305288(A374005(n+1))`
-/

namespace A305285.P7441462555632079039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (A374005 (n + 1)).toNat

end

end A305285.P7441462555632079039

/-!
# A305286: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305286, there is no canonical definition to state claims against.
-/

/-! ## A305286.P17263180478767256314

`A305288(A374007(n+1))`
-/

namespace A305286.P17263180478767256314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (A374007 (n + 1)).toNat

end

end A305286.P17263180478767256314

/-!
# A305287: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305287, there is no canonical definition to state claims against.
-/

/-! ## A305287.P15249575886247277628

`A305288(A374008(n+1))`
-/

namespace A305287.P15249575886247277628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (A374008 (n + 1)).toNat

end

end A305287.P15249575886247277628

/-!
# A305288: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305288, there is no canonical definition to state claims against.
-/

/-! ## A305288.P14777145350026948086

`A303896(n+1)+A014707(A022171(n))`
-/

namespace A305288.P14777145350026948086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (n + 1) + A014707 (A022171 n).toNat

end

end A305288.P14777145350026948086

/-! ## A305288.P13341657562636310723

`A303896(n+1)+A037824(A022173(n))`
-/

namespace A305288.P13341657562636310723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (n + 1) + A037824 (A022173 n).toNat

end

end A305288.P13341657562636310723

/-! ## A305288.P6575730499975752850

`A303896(n+1)+A038144(A303864(n))`
-/

namespace A305288.P6575730499975752850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (n + 1) + A038144 (A303864 n).toNat

end

end A305288.P6575730499975752850

/-! ## A305288.P12798280543261518220

`A327146(A331569(n))+A303896(n+1)`
-/

namespace A305288.P12798280543261518220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327146 (A331569 n).toNat + A303896 (n + 1)

end

end A305288.P12798280543261518220

/-! ## A305288.P15555786271421684760

`or(A014707(A303896(2*n+5)), A303896(n+1))`
-/

namespace A305288.P15555786271421684760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014707 (A303896 (2 * n + 5)).toNat) (A303896 (n + 1))

end

end A305288.P15555786271421684760

/-!
# A305289: Powers of 2*Pi, rounded to the nearest integer.

The programs for A305289, the canonical program `A305289.P18362137731492137850` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305289 has offset 0).

The definition of A305289 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305289.P18362137731492137850

`A001675(2*n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A305289

/-- `A001675(2*n)` -/
def P18362137731492137850.Spec : Prop :=
  ∀ n, P18362137731492137850.a n = A305289 n

theorem P18362137731492137850.correct : P18362137731492137850.Spec := by
  intro n
  simp only [A305289]

end A305289

/-! ## A305289.P8835353102467677250

`round((2*π)^n)`
-/

namespace A305289.P8835353102467677250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * Real.pi) ^ n)

end

end A305289.P8835353102467677250

namespace A305289

/-- `round((2*π)^n)` -/
def P8835353102467677250.Spec : Prop :=
  ∀ n, P8835353102467677250.a n = A305289 n

end A305289

/-! ## A305289.P11986248700550549004

`record[A001675(n%or(1, n))]`
-/

namespace A305289.P11986248700550549004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001675 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305289.P11986248700550549004

namespace A305289

/-- `record[A001675(n%or(1, n))]` -/
def P11986248700550549004.Spec : Prop :=
  ∀ n, P11986248700550549004.a n = A305289 n

end A305289

/-! ## A305289.P2134831025405160583

`record[A001675(n)^log2(gcd(2, n))]`
-/

namespace A305289.P2134831025405160583
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001675 n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305289.P2134831025405160583

namespace A305289

/-- `record[A001675(n)^log2(gcd(2, n))]` -/
def P2134831025405160583.Spec : Prop :=
  ∀ n, P2134831025405160583.a n = (A305289 n : ℝ)

end A305289

/-! ## A305289.P8051991722793792249

`record[A001675(A237420(n))]`
-/

namespace A305289.P8051991722793792249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001675 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305289.P8051991722793792249

namespace A305289

/-- `record[A001675(A237420(n))]` -/
def P8051991722793792249.Spec : Prop :=
  ∀ n, P8051991722793792249.a n = A305289 n

end A305289

/-!
# A305290: Numbers k such that 4*k + 1 is a perfect cube, sorted by absolute values.

The programs for A305290, the canonical program `A305290.P5201334968606031978` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305290 has offset 1).

The definition of A305290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305290.P5201334968606031978

`ogf((-7x+10x^2-7x^3)/(1+3x+2x^2-2x^3-3x^4-x^5))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305290

/-- `ogf((-7x+10x^2-7x^3)/(1+3x+2x^2-2x^3-3x^4-x^5))` -/
def P5201334968606031978.Spec : Prop :=
  ∀ n, P5201334968606031978.a n = A305290 (n + 1)

theorem P5201334968606031978.correct : P5201334968606031978.Spec := by
  intro n
  simp only [A305290, Nat.add_sub_cancel]

end A305290

/-! ## A305290.P3842154832707527247

`floor(abs(Δ[n²²]-n)/2)*(-1)^n`
-/

namespace A305290.P3842154832707527247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|(f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)| : ℚ) / 2⌋ * (-1) ^ n

end

end A305290.P3842154832707527247

namespace A305290

/-- `floor(abs(Δ[n²²]-n)/2)*(-1)^n` -/
def P3842154832707527247.Spec : Prop :=
  ∀ n, P3842154832707527247.a n = A305290 (n + 1)

end A305290

/-! ## A305290.P5672650002837475549

`∑[(A105374(n)-n)*(-1)^n]`
-/

namespace A305290.P5672650002837475549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105374 n - (n : ℤ)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305290.P5672650002837475549

namespace A305290

/-- `∑[(A105374(n)-n)*(-1)^n]` -/
def P5672650002837475549.Spec : Prop :=
  ∀ n, P5672650002837475549.a n = A305290 (n + 1)

end A305290

/-! ## A305290.P12387221413173896063

`(A009001(2*n+1)^3-1)/4`
-/

namespace A305290.P12387221413173896063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009001 (2 * n + 1) ^ 3 - 1 : ℚ) / 4

end

end A305290.P12387221413173896063

namespace A305290

/-- `(A009001(2*n+1)^3-1)/4` -/
def P12387221413173896063.Spec : Prop :=
  ∀ n, P12387221413173896063.a n = (A305290 (n + 1) : ℚ)

end A305290

/-! ## A305290.P14812801570008099062

`∑[A038608(n)*A222465(n)]`
-/

namespace A305290.P14812801570008099062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n * A222465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305290.P14812801570008099062

namespace A305290

/-- `∑[A038608(n)*A222465(n)]` -/
def P14812801570008099062.Spec : Prop :=
  ∀ n, P14812801570008099062.a n = A305290 (n + 1)

end A305290

/-!
# A305291: Numbers k such that 4*k + 3 is a perfect cube, sorted by absolute values.

The programs for A305291, the canonical program `A305291.P7194557583916556083` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305291 has offset 1).

The definition of A305291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305291.P7194557583916556083

`ogf((-1+3x-16x^2+3x^3-x^4)/(1+3x+2x^2-2x^3-3x^4-x^5))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305291

/-- `ogf((-1+3x-16x^2+3x^3-x^4)/(1+3x+2x^2-2x^3-3x^4-x^5))` -/
def P7194557583916556083.Spec : Prop :=
  ∀ n, P7194557583916556083.a n = A305291 (n + 1)

theorem P7194557583916556083.correct : P7194557583916556083.Spec := by
  intro n
  simp only [A305291, Nat.add_sub_cancel]

end A305291

/-! ## A305291.P2240086693714013740

`-(A305290(n+1)+1)`
-/

namespace A305291.P2240086693714013740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A305290 (n + 1) + 1)

end

end A305291.P2240086693714013740

namespace A305291

/-- `-(A305290(n+1)+1)` -/
def P2240086693714013740.Spec : Prop :=
  ∀ n, P2240086693714013740.a n = A305291 (n + 1)

end A305291

/-! ## A305291.P1460920830844142364

`Δ[A305290(n+1)]-(A305290(n+2)+1)`
-/

namespace A305291.P1460920830844142364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A305290 (n + 2) + 1)

end

end A305291.P1460920830844142364

namespace A305291

/-- `Δ[A305290(n+1)]-(A305290(n+2)+1)` -/
def P1460920830844142364.Spec : Prop :=
  ∀ n, P1460920830844142364.a n = A305291 (n + 1)

end A305291

/-! ## A305291.P4915667317688448750

`floor((-1)^(n+1)*A000578(2*n+1)/4)`
-/

namespace A305291.P4915667317688448750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((-1) ^ (n + 1) * A000578 (2 * n + 1) : ℚ) / 4⌋

end

end A305291.P4915667317688448750

namespace A305291

/-- `floor((-1)^(n+1)*A000578(2*n+1)/4)` -/
def P4915667317688448750.Spec : Prop :=
  ∀ n, P4915667317688448750.a n = A305291 (n + 1)

end A305291

/-!
# A305292: Numbers k such that k-1 is a square and k+1 is a triangular number.

The programs for A305292, the canonical program `A305292.P14258548119659289548` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305292 has offset 1).

The definition of A305292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305292.P448606155837989390

`ogf((2+3x-8x^2+3x^3+2x^4)/(1-x-34x^2+34x^3+x^4-x^5))`
-/

namespace A305292.P448606155837989390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -8, 3, 2] [1, -1, -34, 34, 1, -1] n

end

end A305292.P448606155837989390

namespace A305292

/-- `ogf((2+3x-8x^2+3x^3+2x^4)/(1-x-34x^2+34x^3+x^4-x^5))` -/
def P448606155837989390.Spec : Prop :=
  ∀ n, P448606155837989390.a n = A305292 (n + 1)

end A305292

/-! ## A305292.P14258548119659289548

`34*a(n-2)-a(n-4)+2` with `a(0)=2, a(1)=5, a(2)=65, a(3)=170`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A305292

/-- `34*a(n-2)-a(n-4)+2` -/
def P14258548119659289548.Spec : Prop :=
  ∀ n, P14258548119659289548.a n = A305292 (n + 1)

theorem P14258548119659289548.correct : P14258548119659289548.Spec := by
  intro n
  simp only [A305292, Nat.add_sub_cancel]

end A305292

/-! ## A305292.P17574499914203655536

`A077241(n)²+1`
-/

namespace A305292.P17574499914203655536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077241 n ^ 2 + 1

end

end A305292.P17574499914203655536

namespace A305292

/-- `A077241(n)²+1` -/
def P17574499914203655536.Spec : Prop :=
  ∀ n, P17574499914203655536.a n = A305292 (n + 1)

end A305292

/-! ## A305292.P351867523020345783

`A214838(n+1)-1`
-/

namespace A305292.P351867523020345783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214838 (n + 1) - 1

end

end A305292.P351867523020345783

namespace A305292

/-- `A214838(n+1)-1` -/
def P351867523020345783.Spec : Prop :=
  ∀ n, P351867523020345783.a n = A305292 (n + 1)

end A305292

/-! ## A305292.P6533337561096318505

`(A144797(n+1)/2)²+1`
-/

namespace A305292.P6533337561096318505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A144797 (n + 1) : ℚ) / 2) ^ 2 + 1

end

end A305292.P6533337561096318505

namespace A305292

/-- `(A144797(n+1)/2)²+1` -/
def P6533337561096318505.Spec : Prop :=
  ∀ n, P6533337561096318505.a n = (A305292 (n + 1) : ℚ)

end A305292

/-! ## A305292.P17375372402319124471

`(A143609(n+1)-A006452(n))²+1`
-/

namespace A305292.P17375372402319124471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143609 (n + 1) - A006452 n) ^ 2 + 1

end

end A305292.P17375372402319124471

namespace A305292

/-- `(A143609(n+1)-A006452(n))²+1` -/
def P17375372402319124471.Spec : Prop :=
  ∀ n, P17375372402319124471.a n = A305292 (n + 1)

end A305292

/-! ## A305292.P5570531801306329473

`(A154138(n+1)-A216134(n))²+1`
-/

namespace A305292.P5570531801306329473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154138 (n + 1) - A216134 n) ^ 2 + 1

end

end A305292.P5570531801306329473

namespace A305292

/-- `(A154138(n+1)-A216134(n))²+1` -/
def P5570531801306329473.Spec : Prop :=
  ∀ n, P5570531801306329473.a n = A305292 (n + 1)

end A305292

/-! ## A305292.P15302246615019812724

`(A133326(n+1)-A276601(n+1))²+1`
-/

namespace A305292.P15302246615019812724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133326 (n + 1) - A276601 (n + 1)) ^ 2 + 1

end

end A305292.P15302246615019812724

namespace A305292

/-- `(A133326(n+1)-A276601(n+1))²+1` -/
def P15302246615019812724.Spec : Prop :=
  ∀ n, P15302246615019812724.a n = A305292 (n + 1)

end A305292

/-!
# A305293: Prime shift towards larger primes, conjugated by the EKG-permutation: a(n) = A064664(A003961(A064413(n))).

The programs for A305293, there is no canonical definition to state claims against.
-/

/-! ## A305293.P16064228481719523017

`A064664(A003961(A064413(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305293.P16064228481719523017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A003961 (A064413 (n + 1)).toNat).toNat

end

end A305293.P16064228481719523017

/-! ## A305293.P5262238660607954209

`∑{d}[A064413(1+n), A304526(A003961(#))]`
-/

namespace A305293.P5262238660607954209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 (A003961 d).toNat

end

end A305293.P5262238660607954209

/-! ## A305293.P8433086459624185971

`∑{d}[A064413(1+n), A304526(A045965(#))]`
-/

namespace A305293.P8433086459624185971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 (A045965 d).toNat

end

end A305293.P8433086459624185971

/-!
# A305294: Prime shift towards smaller primes, conjugated by the EKG-permutation: a(n) = A064664(A064989(A064413(n))).

The programs for A305294, there is no canonical definition to state claims against.
-/

/-! ## A305294.P15542032927727693141

`A064664(A064989(A064413(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305294.P15542032927727693141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A064989 (A064413 (n + 1)).toNat).toNat

end

end A305294.P15542032927727693141

/-! ## A305294.P7973372870198102114

`∑{d}[A064989(A064413(1+n)), A304526(#)]`
-/

namespace A305294.P7973372870198102114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064413 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A305294.P7973372870198102114

/-!
# A305295: Binary encoding of 1-digits in ternary representation of A245612(n).

The programs for A305295, the canonical program `A305295.P5022715488973413442` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305295 has offset 0).

The definition of A305295 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305295.P5022715488973413442

`A289813(A245612(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A305295

/-- `A289813(A245612(n))` -/
def P5022715488973413442.Spec : Prop :=
  ∀ n, P5022715488973413442.a n = A305295 n

theorem P5022715488973413442.correct : P5022715488973413442.Spec := by
  intro n
  simp only [A305295]

end A305295

/-! ## A305295.P10343827638762711324

`A304759(A163511(n))`
-/

namespace A305295.P10343827638762711324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304759 (A163511 n).toNat

end

end A305295.P10343827638762711324

namespace A305295

/-- `A304759(A163511(n))` -/
def P10343827638762711324.Spec : Prop :=
  ∀ n, P10343827638762711324.a n = A305295 n

end A305295

/-! ## A305295.P15525963985577305525

`A289831(A245612(n))-A291763(n)`
-/

namespace A305295.P15525963985577305525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A245612 n).toNat - A291763 n

end

end A305295.P15525963985577305525

namespace A305295

/-- `A289831(A245612(n))-A291763(n)` -/
def P15525963985577305525.Spec : Prop :=
  ∀ n, P15525963985577305525.a n = A305295 n

end A305295

/-! ## A305295.P17923794449184926291

`A289831((A163511(2*n+1)+A057427(n))/2)-A291763(n)`
-/

namespace A305295.P17923794449184926291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (SequenceMachineLib.roundAway ((A163511 (2 * n + 1) + A057427 n : ℚ) / 2)).toNat - A291763 n

end

end A305295.P17923794449184926291

namespace A305295

/-- `A289831((A163511(2*n+1)+A057427(n))/2)-A291763(n)` -/
def P17923794449184926291.Spec : Prop :=
  ∀ n, P17923794449184926291.a n = A305295 n

end A305295

/-!
# A305297: Restricted growth sequence transform of A292260, formed from 0-digits in ternary representation of A245612(n).

The programs for A305297, there is no canonical definition to state claims against.
-/

/-! ## A305297.P7604272274196574146

`A279648(2^A292260(n))`
-/

namespace A305297.P7604272274196574146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279648 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A292260 n : ℤ))).toNat

end

end A305297.P7604272274196574146

/-! ## A305297.P2621812152724058226

`A008687(3^A292260(n))`
-/

namespace A305297.P2621812152724058226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A292260 n : ℤ))).toNat

end

end A305297.P2621812152724058226

/-! ## A305297.P652686605706189068

`A003963(round(exp(A292260(n))))`
-/

namespace A305297.P652686605706189068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway (Real.exp (A292260 n : ℝ))).toNat

end

end A305297.P652686605706189068

/-! ## A305297.P7640813372992090609

`A002326(A292260(n)^A057521(n+1))`
-/

namespace A305297.P7640813372992090609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A292260 n : ℚ) ^ (A057521 (n + 1) : ℤ))).toNat

end

end A305297.P7640813372992090609

/-! ## A305297.P15557393013276988540

`A085033(A342507(3*(n+1))^A292260(n))`
-/

namespace A305297.P15557393013276988540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (SequenceMachineLib.roundAway ((A342507 (3 * (n + 1)) : ℚ) ^ (A292260 n : ℤ))).toNat

end

end A305297.P15557393013276988540

/-!
# A305298: Restricted growth sequence transform of A291763, formed from 2-digits in ternary representation of A291763(n).

The programs for A305298, there is no canonical definition to state claims against.
-/

/-! ## A305298.P15701139344376698346

`A279387(A107479(n)+2)`
-/

namespace A305298.P15701139344376698346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (A107479 n + 2).toNat

end

end A305298.P15701139344376698346

/-! ## A305298.P14762680739974624895

`Δ[record[A334461(A014574(n+2))]]`
-/

namespace A305298.P14762680739974624895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (A014574 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305298.P14762680739974624895

/-! ## A305298.P14814780404284826373

`gcd(floor(n/(n%2+1)), A343661(A151920(n)))`
-/

namespace A305298.P14814780404284826373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ (A343661 (A151920 n).toNat)

end

end A305298.P14814780404284826373

/-! ## A305298.P14868809103850611733

`A001222(A062383(n)+A031439(n))`
-/

namespace A305298.P14868809103850611733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062383 n + A031439 n).toNat

end

end A305298.P14868809103850611733

/-! ## A305298.P6731245702255340784

`A296150(A288331(n)*A374683(n))`
-/

namespace A305298.P6731245702255340784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A288331 n * A374683 n).toNat

end

end A305298.P6731245702255340784

