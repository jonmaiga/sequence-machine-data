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
import Seq.B000.C022
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A071200: Primes which do not appear in A071196.

The programs for A071200, there is no canonical definition to state claims against.
-/

/-! ## A071200.P3982450685010901972

`p?[comp[A071196(n+1)]]`
-/

namespace A071200.P3982450685010901972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071196 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A071200.P3982450685010901972

/-! ## A071200.P2778726492523649916

`p?[comp[A071199(n+1)]]`
-/

namespace A071200.P2778726492523649916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071199 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A071200.P2778726492523649916

/-! ## A071200.P7281796992311226880

`p?[∑[A099545(A207938(n+1))]]`
-/

namespace A071200.P7281796992311226880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (A207938 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071200.P7281796992311226880

/-! ## A071200.P12907477345443608339

`eq[A032741(n), A316978(A030101(n+4))]`
-/

namespace A071200.P12907477345443608339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316978 (A030101 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071200.P12907477345443608339

/-! ## A071200.P6771961427715836755

`p?[n*A275422(n)]`
-/

namespace A071200.P6771961427715836755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A275422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071200.P6771961427715836755

/-!
# A071201: Array A(n,k) read by antidiagonals giving number of paths up and right from (0,0) to (n,k) where x/y<=n/k.

The programs for A071201, there is no canonical definition to state claims against.
-/

/-! ## A071201.P1228707683420785006

`A347205(A038871(n+2))`
-/

namespace A071201.P1228707683420785006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A038871 (n + 2)).toNat

end

end A071201.P1228707683420785006

/-! ## A071201.P17511527398984050759

`A113137(A176348(n))`
-/

namespace A071201.P17511527398984050759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113137 (A176348 n).toNat

end

end A071201.P17511527398984050759

/-! ## A071201.P7905019156805463162

`A335885(A155497(n)+4)`
-/

namespace A071201.P7905019156805463162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A155497 n + 4).toNat

end

end A071201.P7905019156805463162

/-! ## A071201.P8533061916513117341

`A334461(9*A022166(n))`
-/

namespace A071201.P8533061916513117341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (9 * A022166 n).toNat

end

end A071201.P8533061916513117341

/-! ## A071201.P13774892874074715895

`A117707(∑{d}[A202756(n+1), #])`
-/

namespace A071201.P13774892874074715895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A071201.P13774892874074715895

/-!
# A071202: Array read by antidiagonals giving number of paths up and left from (0,0) to (n,k) where x/y

The programs for A071202, there is no canonical definition to state claims against.
-/

/-! ## A071202.P17804482991990580494

`A205147(A028262(n)^A327858(n))`
-/

namespace A071202.P17804482991990580494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205147 (SequenceMachineLib.roundAway ((A028262 n : ℚ) ^ (A327858 n : ℤ))).toNat

end

end A071202.P17804482991990580494

/-! ## A071202.P14189450917862305154

`A324905(A174411(n))`
-/

namespace A071202.P14189450917862305154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324905 (A174411 n).toNat

end

end A071202.P14189450917862305154

/-! ## A071202.P10975668242360013150

`A267134(A157169(n)+1)`
-/

namespace A071202.P10975668242360013150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267134 (A157169 n + 1).toNat

end

end A071202.P10975668242360013150

/-! ## A071202.P4683357389437329008

`A087458(A350910(n+1))`
-/

namespace A071202.P4683357389437329008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087458 (A350910 (n + 1)).toNat

end

end A071202.P4683357389437329008

/-! ## A071202.P5603754780268749489

`A336149(A034851(n)%A075954(n))`
-/

namespace A071202.P5603754780268749489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336149 (Int.tmod (A034851 n) (A075954 n)).toNat

end

end A071202.P5603754780268749489

/-!
# A071203: Integer part of n divided by its largest digit (decimal notation).

The programs for A071203, the canonical program `A071203.P735397639379525121` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071203 has offset 1).

The definition of A071203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071203.P735397639379525121

`floor((n+1)/A054055(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A071203

/-- `floor((n+1)/A054055(n+1))` -/
def P735397639379525121.Spec : Prop :=
  ∀ n, P735397639379525121.a n = A071203 (n + 1)

theorem P735397639379525121.correct : P735397639379525121.Spec := by
  intro n
  simp only [A071203, Nat.add_sub_cancel]

end A071203

/-! ## A071203.P17612541345637735322

`floor((n+1)/(A054054(n+1)+A037904(n+1)))`
-/

namespace A071203.P17612541345637735322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A054054 (n + 1) + A037904 (n + 1) : ℚ)⌋

end

end A071203.P17612541345637735322

namespace A071203

/-- `floor((n+1)/(A054054(n+1)+A037904(n+1)))` -/
def P17612541345637735322.Spec : Prop :=
  ∀ n, P17612541345637735322.a n = A071203 (n + 1)

theorem P17612541345637735322.correct : P17612541345637735322.Spec := by
  intro n
  simp only [A071203, Nat.add_sub_cancel, A071203.P17612541345637735322.a, A071203.P735397639379525121.a, A037904, A037904.P3734509193850289562.a, A054054, A054054.P1056175227029170886.a, A054055, A054055.P4613541377942540963.a, A348783, A348783.P18337028565941183294.f1, A348783.P18337028565941183294.a, A355222, A355222.P17906569904308679321.a, A056142, A056142.P638140004868031470.a, A182324, A182324.P68523715600839783.a, A000030, A000030.P4990867543733972260.a, A059995, A059995.P135539884652528526.a, A275238, A275238.P2529277380881640300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071203

/-! ## A071203.P2536070527162910237

`floor((n+1)/A037904(10*(n+1)))`
-/

namespace A071203.P2536070527162910237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A037904 (10 * (n + 1)) : ℚ)⌋

end

end A071203.P2536070527162910237

namespace A071203

/-- `floor((n+1)/A037904(10*(n+1)))` -/
def P2536070527162910237.Spec : Prop :=
  ∀ n, P2536070527162910237.a n = A071203 (n + 1)

end A071203

/-!
# A071204: Numbers which are multiples of their largest digit (decimal notation).

The programs for A071204, there is no canonical definition to state claims against.
-/

/-! ## A071204.P2078170184850450225

`A071205(n+1)*A071206(n+1)`
-/

namespace A071204.P2078170184850450225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071205 (n + 1) * A071206 (n + 1)

end

end A071204.P2078170184850450225

/-! ## A071204.P7604946409109909724

`eq[0, (n+1)%A054055(n+1)]+1`
-/

namespace A071204.P7604946409109909724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A054055 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071204.P7604946409109909724

/-! ## A071204.P1108666473386299464

`eq[lcm(n, A054055(n)), A028310(n)]`
-/

namespace A071204.P1108666473386299464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A054055 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071204.P1108666473386299464

/-!
# A071205: Largest digit of A071204(n).

The programs for A071205, there is no canonical definition to state claims against.
-/

/-! ## A071205.P7351666849312042588

`A071204(n+1)/A071206(n+1)`
-/

namespace A071205.P7351666849312042588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071204 (n + 1) : ℚ) / (A071206 (n + 1) : ℚ)

end

end A071205.P7351666849312042588

/-! ## A071205.P17904642847940409488

`A054055(A071204(n+1))`
-/

namespace A071205.P17904642847940409488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A071204 (n + 1)).toNat

end

end A071205.P17904642847940409488

/-! ## A071205.P5488378186653834327

`A054055(eq[0, (n+1)%A054055(n+1)]+1)`
-/

namespace A071205.P5488378186653834327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A054055 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071205.P5488378186653834327

/-! ## A071205.P1892617376554827683

`A054054(A095815(A071204(n+1))-A071204(n+1))`
-/

namespace A071205.P1892617376554827683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A095815 (A071204 (n + 1)).toNat - A071204 (n + 1)).toNat

end

end A071205.P1892617376554827683

/-! ## A071205.P13722068990349872889

`A054054(A071204(n+1)/A071203(A071204(n+1)))`
-/

namespace A071205.P13722068990349872889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.roundAway ((A071204 (n + 1) : ℚ) / (A071203 (A071204 (n + 1)).toNat : ℚ))).toNat

end

end A071205.P13722068990349872889

/-! ## A071205.P1462716517061434013

`A071204(A071204(n+1)/A071203(A071204(n+1)))`
-/

namespace A071205.P1462716517061434013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071204 (SequenceMachineLib.roundAway ((A071204 (n + 1) : ℚ) / (A071203 (A071204 (n + 1)).toNat : ℚ))).toNat

end

end A071205.P1462716517061434013

/-! ## A071205.P18224527967338795427

`A037904(10*A071204(n+1))`
-/

namespace A071205.P18224527967338795427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (10 * A071204 (n + 1)).toNat

end

end A071205.P18224527967338795427

/-! ## A071205.P7303651015010424458

`A065881(A071204(n+1)%A329977(n+1))`
-/

namespace A071205.P7303651015010424458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (Int.tmod (A071204 (n + 1)) (A329977 (n + 1))).toNat

end

end A071205.P7303651015010424458

/-!
# A071206: A071204(n) divided by its largest digit.

The programs for A071206, there is no canonical definition to state claims against.
-/

/-! ## A071206.P4985784644627201148

`A071204(n+1)/A071205(n+1)`
-/

namespace A071206.P4985784644627201148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071204 (n + 1) : ℚ) / (A071205 (n + 1) : ℚ)

end

end A071206.P4985784644627201148

/-! ## A071206.P15590795243039062225

`A071203(A071204(n+1))`
-/

namespace A071206.P15590795243039062225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071203 (A071204 (n + 1)).toNat

end

end A071206.P15590795243039062225

/-! ## A071206.P1322157020448420237

`A071203(eq[0, (n+1)%A054055(n+1)]+1)`
-/

namespace A071206.P1322157020448420237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A054055 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071206.P1322157020448420237

/-! ## A071206.P15334470554723414417

`A071204(n+1)/A037904(10*A071204(n+1))`
-/

namespace A071206.P15334470554723414417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071204 (n + 1) : ℚ) / (A037904 (10 * A071204 (n + 1)).toNat : ℚ)

end

end A071206.P15334470554723414417

/-! ## A071206.P4207360214115447509

`A071204(n+1)/A065881(A071204(n+1)%A329977(n+1))`
-/

namespace A071206.P4207360214115447509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071204 (n + 1) : ℚ) / (A065881 (Int.tmod (A071204 (n + 1)) (A329977 (n + 1))).toNat : ℚ)

end

end A071206.P4207360214115447509

/-!
# A071207: Triangular array T(n,k) read by rows, giving number of rooted trees on the vertex set {1..n+1} where k children of the root have a label smaller than the label of the root.

The programs for A071207, the canonical program `A071207.P11576889641976211371` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071207 has offset 0).

The definition of A071207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071207.P250684279083401964

`A398136(n)/A233543(n)`
-/

namespace A071207.P250684279083401964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398136 n : ℚ) / (A233543 n : ℚ)

end

end A071207.P250684279083401964

namespace A071207

/-- `A398136(n)/A233543(n)` -/
def P250684279083401964.Spec : Prop :=
  ∀ n, P250684279083401964.a n = (A071207 n : ℚ)

end A071207

/-! ## A071207.P8355781500689321073

`A007318(n)*A079901(A061579(n))`
-/

namespace A071207.P8355781500689321073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A079901 (A061579 n).toNat

end

end A071207.P8355781500689321073

namespace A071207

/-- `A007318(n)*A079901(A061579(n))` -/
def P8355781500689321073.Spec : Prop :=
  ∀ n, P8355781500689321073.a n = A071207 n

end A071207

/-! ## A071207.P4004894992667691025

`abs(A079901(A061579(n))*A117440(n))`
-/

namespace A071207.P4004894992667691025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079901 (A061579 n).toNat * A117440 n|

end

end A071207.P4004894992667691025

namespace A071207

/-- `abs(A079901(A061579(n))*A117440(n))` -/
def P4004894992667691025.Spec : Prop :=
  ∀ n, P4004894992667691025.a n = A071207 n

end A071207

/-! ## A071207.P9288741690289744140

`sqrt(A008459(n))*A079901(A061579(n))`
-/

namespace A071207.P9288741690289744140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A079901 (A061579 n).toNat : ℝ)

end

end A071207.P9288741690289744140

namespace A071207

/-- `sqrt(A008459(n))*A079901(A061579(n))` -/
def P9288741690289744140.Spec : Prop :=
  ∀ n, P9288741690289744140.a n = (A071207 n : ℝ)

end A071207

/-! ## A071207.P533667235687763778

`A028326(n)/2*A079901(A061579(n))`
-/

namespace A071207.P533667235687763778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A079901 (A061579 n).toNat : ℚ)

end

end A071207.P533667235687763778

namespace A071207

/-- `A028326(n)/2*A079901(A061579(n))` -/
def P533667235687763778.Spec : Prop :=
  ∀ n, P533667235687763778.a n = (A071207 n : ℚ)

end A071207

/-! ## A071207.P11576889641976211371

`A003056(n)^A025581(n)*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A071207

/-- `A003056(n)^A025581(n)*A007318(n)` -/
def P11576889641976211371.Spec : Prop :=
  ∀ n, P11576889641976211371.a n = (A071207 n : ℚ)

end A071207

/-! ## A071207.P8158623400199705159

`A004525(A028326(n))*A079901(A061579(n))`
-/

namespace A071207.P8158623400199705159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A079901 (A061579 n).toNat

end

end A071207.P8158623400199705159

namespace A071207

/-- `A004525(A028326(n))*A079901(A061579(n))` -/
def P8158623400199705159.Spec : Prop :=
  ∀ n, P8158623400199705159.a n = A071207 n

end A071207

/-! ## A071207.P15193908069625138040

`A007318(n)*A364870(n)`
-/

namespace A071207.P15193908069625138040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A364870 n

end

end A071207.P15193908069625138040

namespace A071207

/-- `A007318(n)*A364870(n)` -/
def P15193908069625138040.Spec : Prop :=
  ∀ n, P15193908069625138040.a n = A071207 n

end A071207

/-! ## A071207.P7845018965555118823

`A003056(n)^A114327(n)*A243594(n)`
-/

namespace A071207.P7845018965555118823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (A114327 n : ℤ) * (A243594 n : ℚ)

end

end A071207.P7845018965555118823

namespace A071207

/-- `A003056(n)^A114327(n)*A243594(n)` -/
def P7845018965555118823.Spec : Prop :=
  ∀ n, P7845018965555118823.a n = (A071207 n : ℚ)

end A071207

/-!
# A071208: Triangular array T(n,k) read by rows, giving number of labeled free trees such that the root is smaller than all its children, with respect to the number n of vertices and to the number k of decreasing edges.

The programs for A071208, there is no canonical definition to state claims against.
-/

/-! ## A071208.P15270892867241114810

`∑[char[∑[n]]]*A067948(n+1)`
-/

namespace A071208.P15270892867241114810
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A067948 (n + 1)

end

end A071208.P15270892867241114810

/-! ## A071208.P12375112171684176539

`A067948(n+1)*A002024(n+1)`
-/

namespace A071208.P12375112171684176539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067948 (n + 1) * A002024 (n + 1)

end

end A071208.P12375112171684176539

/-! ## A071208.P14810530645573867837

`A067948(n+1)*A123578(n+1)`
-/

namespace A071208.P14810530645573867837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067948 (n + 1) * A123578 (n + 1)

end

end A071208.P14810530645573867837

/-!
# A071210: Triangular array T(n,k) read by rows, giving number of labeled free trees such that the root is smaller than all its children, with respect to the number n of vertices and to the degree k of the root.

The programs for A071210, the canonical program `A071210.P8629755798481492192` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071210 has offset 1).

The definition of A071210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071210.P8629755798481492192

`A058127(A038722(n+1))*A135278(A014132(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071210

/-- `A058127(A038722(n+1))*A135278(A014132(n+1))` -/
def P8629755798481492192.Spec : Prop :=
  ∀ n, P8629755798481492192.a n = A071210 (n + 1)

theorem P8629755798481492192.correct : P8629755798481492192.Spec := by
  intro n
  simp only [A071210, Nat.add_sub_cancel]

end A071210

/-! ## A071210.P17448592369063924426

`A206429(n+2)/(A002262(n)+2)`
-/

namespace A071210.P17448592369063924426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206429 (n + 2) : ℚ) / (A002262 n + 2 : ℚ)

end

end A071210.P17448592369063924426

namespace A071210

/-- `A206429(n+2)/(A002262(n)+2)` -/
def P17448592369063924426.Spec : Prop :=
  ∀ n, P17448592369063924426.a n = (A071210 (n + 1) : ℚ)

end A071210

/-! ## A071210.P1079686314910376550

`A206429(n+2)/(A002260(n+1)+1)`
-/

namespace A071210.P1079686314910376550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206429 (n + 2) : ℚ) / (A002260 (n + 1) + 1 : ℚ)

end

end A071210.P1079686314910376550

namespace A071210

/-- `A206429(n+2)/(A002260(n+1)+1)` -/
def P1079686314910376550.Spec : Prop :=
  ∀ n, P1079686314910376550.a n = (A071210 (n + 1) : ℚ)

end A071210

/-! ## A071210.P15499435080562211881

`A206429(n+2)/(A003057(n+2)-A025581(n))`
-/

namespace A071210.P15499435080562211881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206429 (n + 2) : ℚ) / (A003057 (n + 2) - A025581 n : ℚ)

end

end A071210.P15499435080562211881

namespace A071210

/-- `A206429(n+2)/(A003057(n+2)-A025581(n))` -/
def P15499435080562211881.Spec : Prop :=
  ∀ n, P15499435080562211881.a n = (A071210 (n + 1) : ℚ)

end A071210

/-!
# A071211: Triangular array T(n,k) read by rows, giving number of labeled free trees such that the root is smaller than all its children, with respect to the number n of vertices and to the label k of the root.

The programs for A071211, the canonical program `A071211.P11427669464011798194` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071211 has offset 1).

The definition of A071211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071211.P11427669464011798194

`A003057(n+2)^A025581(n)*A058127(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071211

/-- `A003057(n+2)^A025581(n)*A058127(n+1)` -/
def P11427669464011798194.Spec : Prop :=
  ∀ n, P11427669464011798194.a n = (A071211 (n + 1) : ℚ)

end A071211

/-! ## A071211.P12730217478869555160

`A094644(A036290(n))*A143565(n+1)`
-/

namespace A071211.P12730217478869555160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094644 (A036290 n).toNat * A143565 (n + 1)

end

end A071211.P12730217478869555160

namespace A071211

/-- `A094644(A036290(n))*A143565(n+1)` -/
def P12730217478869555160.Spec : Prop :=
  ∀ n, P12730217478869555160.a n = A071211 (n + 1)

end A071211

/-! ## A071211.P9419928676871596540

`A338280(n+2)-A010051(A006125(n))`
-/

namespace A071211.P9419928676871596540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338280 (n + 2) - A010051 (A006125 n).toNat

end

end A071211.P9419928676871596540

namespace A071211

/-- `A338280(n+2)-A010051(A006125(n))` -/
def P9419928676871596540.Spec : Prop :=
  ∀ n, P9419928676871596540.a n = A071211 (n + 1)

end A071211

/-!
# A071212: Number of labeled cyclic trees with n nodes such that the root is smaller than all its children.

The programs for A071212, there is no canonical definition to state claims against.
-/

/-! ## A071212.P6201116470810619855

`A367470(n)+A188511(A107050(n))`
-/

namespace A071212.P6201116470810619855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367470 n + A188511 (A107050 n).toNat

end

end A071212.P6201116470810619855

/-!
# A071213: Number of labeled planar trees with n nodes such that the root is smaller than all its children.

The programs for A071213, there is no canonical definition to state claims against.
-/

/-! ## A071213.P15644603421945533331

`A098118(n+1)+A006963(n+2)-A000407(n)`
-/

namespace A071213.P15644603421945533331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098118 (n + 1) + (A006963 (n + 2) - A000407 n)

end

end A071213.P15644603421945533331

/-!
# A071214: Number of labeled ordered trees with n nodes such that the root is smaller than all its children.

The programs for A071214, there is no canonical definition to state claims against.
-/

/-! ## A071214.P15619835414560866461

`∏[A016825(n)]-A098118(n+1)`
-/

namespace A071214.P15619835414560866461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A098118 (n + 1)

end

end A071214.P15619835414560866461

/-! ## A071214.P11958701624303913290

`A001813(n+1)-A098118(n+1)`
-/

namespace A071214.P11958701624303913290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 (n + 1) - A098118 (n + 1)

end

end A071214.P11958701624303913290

/-! ## A071214.P16447795878264796047

`2*A000407(n)-A098118(n+1)`
-/

namespace A071214.P16447795878264796047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000407 n - A098118 (n + 1)

end

end A071214.P16447795878264796047

/-! ## A071214.P2471901430278533964

`A024168(2*(n+1))/(n+1)!`
-/

namespace A071214.P2471901430278533964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024168 (2 * (n + 1)) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A071214.P2471901430278533964

/-! ## A071214.P1582638619326019878

`A024168(2*(n+1))/A000142(n+1)`
-/

namespace A071214.P1582638619326019878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024168 (2 * (n + 1)) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A071214.P1582638619326019878

/-!
# A071215: Number of distinct prime factors of sum of 2 successive primes.

The programs for A071215, the canonical program `A071215.P17835193548993946931` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071215 has offset 1).

The definition of A071215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071215.P17835193548993946931

`A001221(A001043(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071215

/-- `A001221(A001043(n+1))` -/
def P17835193548993946931.Spec : Prop :=
  ∀ n, P17835193548993946931.a n = A071215 (n + 1)

theorem P17835193548993946931.correct : P17835193548993946931.Spec := by
  intro n
  simp only [A071215, Nat.add_sub_cancel]

end A071215

/-! ## A071215.P6031269525414193788

`∑{p}[A001043(n+1), A001222(#)]`
-/

namespace A071215.P6031269525414193788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A071215.P6031269525414193788

namespace A071215

/-- `∑{p}[A001043(n+1), A001222(#)]` -/
def P6031269525414193788.Spec : Prop :=
  ∀ n, P6031269525414193788.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P3814429617734710421

`∑{p}[A001043(n+1), A351086(#)]`
-/

namespace A071215.P3814429617734710421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A351086 p

end

end A071215.P3814429617734710421

namespace A071215

/-- `∑{p}[A001043(n+1), A351086(#)]` -/
def P3814429617734710421.Spec : Prop :=
  ∀ n, P3814429617734710421.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P9947561366826136789

`∑{p}[A000040(n+1)+A000040(n+2), A001222(#)]`
-/

namespace A071215.P9947561366826136789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A071215.P9947561366826136789

namespace A071215

/-- `∑{p}[A000040(n+1)+A000040(n+2), A001222(#)]` -/
def P9947561366826136789.Spec : Prop :=
  ∀ n, P9947561366826136789.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P6327859538733752452

`A001222(∏{p}[A001043(n+1), #])`
-/

namespace A071215.P6327859538733752452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A071215.P6327859538733752452

namespace A071215

/-- `A001222(∏{p}[A001043(n+1), #])` -/
def P6327859538733752452.Spec : Prop :=
  ∀ n, P6327859538733752452.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P8011749847267963311

`A001221(Δ[A061802(n)])`
-/

namespace A071215.P8011749847267963311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A071215.P8011749847267963311

namespace A071215

/-- `A001221(Δ[A061802(n)])` -/
def P8011749847267963311.Spec : Prop :=
  ∀ n, P8011749847267963311.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P12837171153508323090

`A001221(A011974(n+2))`
-/

namespace A071215.P12837171153508323090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A011974 (n + 2)).toNat

end

end A071215.P12837171153508323090

namespace A071215

/-- `A001221(A011974(n+2))` -/
def P12837171153508323090.Spec : Prop :=
  ∀ n, P12837171153508323090.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P13996861677080276398

`A001221(A164653(n+3))`
-/

namespace A071215.P13996861677080276398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A164653 (n + 3)).toNat

end

end A071215.P13996861677080276398

namespace A071215

/-- `A001221(A164653(n+3))` -/
def P13996861677080276398.Spec : Prop :=
  ∀ n, P13996861677080276398.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P16424168075715691876

`A001221(A061802(n+1)-A061802(n))`
-/

namespace A071215.P16424168075715691876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A061802 (n + 1) - A061802 n).toNat

end

end A071215.P16424168075715691876

namespace A071215

/-- `A001221(A061802(n+1)-A061802(n))` -/
def P16424168075715691876.Spec : Prop :=
  ∀ n, P16424168075715691876.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P8677643513150635648

`A001221(A000040(n+1)+A000040(n+2))`
-/

namespace A071215.P8677643513150635648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A071215.P8677643513150635648

namespace A071215

/-- `A001221(A000040(n+1)+A000040(n+2))` -/
def P8677643513150635648.Spec : Prop :=
  ∀ n, P8677643513150635648.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P5431951117001633742

`A001221(A008864(n+1)+A006093(n+2))`
-/

namespace A071215.P5431951117001633742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008864 (n + 1) + A006093 (n + 2)).toNat

end

end A071215.P5431951117001633742

namespace A071215

/-- `A001221(A008864(n+1)+A006093(n+2))` -/
def P5431951117001633742.Spec : Prop :=
  ∀ n, P5431951117001633742.a n = A071215 (n + 1)

theorem P5431951117001633742.correct : P5431951117001633742.Spec := by
  intro n
  simp only [A071215, Nat.add_sub_cancel, A071215.P5431951117001633742.a, A071215.P17835193548993946931.a, A001043, A001043.P18269783162673735460.a, A001221, A001221.P10258181745752134128.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071215

/-! ## A071215.P7247363143240301727

`∑{p}[A001043(n+1), A002217(#)]`
-/

namespace A071215.P7247363143240301727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002217 p

end

end A071215.P7247363143240301727

namespace A071215

/-- `∑{p}[A001043(n+1), A002217(#)]` -/
def P7247363143240301727.Spec : Prop :=
  ∀ n, P7247363143240301727.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P14232261476296665617

`∑{p}[A001043(n+1), A003415(#)]`
-/

namespace A071215.P14232261476296665617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A071215.P14232261476296665617

namespace A071215

/-- `∑{p}[A001043(n+1), A003415(#)]` -/
def P14232261476296665617.Spec : Prop :=
  ∀ n, P14232261476296665617.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P427355437148842542

`A099812(A162735(n+1))`
-/

namespace A071215.P427355437148842542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (A162735 (n + 1)).toNat

end

end A071215.P427355437148842542

namespace A071215

/-- `A099812(A162735(n+1))` -/
def P427355437148842542.Spec : Prop :=
  ∀ n, P427355437148842542.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P8197280630566669708

`A099812(A162800(n+1))`
-/

namespace A071215.P8197280630566669708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (A162800 (n + 1)).toNat

end

end A071215.P8197280630566669708

namespace A071215

/-- `A099812(A162800(n+1))` -/
def P8197280630566669708.Spec : Prop :=
  ∀ n, P8197280630566669708.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P15161504951230476000

`A001221(A013634(A000040(n+1)))`
-/

namespace A071215.P15161504951230476000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A013634 (A000040 (n + 1)).toNat).toNat

end

end A071215.P15161504951230476000

namespace A071215

/-- `A001221(A013634(A000040(n+1)))` -/
def P15161504951230476000.Spec : Prop :=
  ∀ n, P15161504951230476000.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P15463634372095337153

`A001221(A013634(A008578(n+2)))`
-/

namespace A071215.P15463634372095337153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A013634 (A008578 (n + 2)).toNat).toNat

end

end A071215.P15463634372095337153

namespace A071215

/-- `A001221(A013634(A008578(n+2)))` -/
def P15463634372095337153.Spec : Prop :=
  ∀ n, P15463634372095337153.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P14065006952023958825

`∑{p}[A347136(A000040(n+1)), A001222(#)]`
-/

namespace A071215.P14065006952023958825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A071215.P14065006952023958825

namespace A071215

/-- `∑{p}[A347136(A000040(n+1)), A001222(#)]` -/
def P14065006952023958825.Spec : Prop :=
  ∀ n, P14065006952023958825.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P16884391358534968445

`A001221(A013635(p?[2*n+1]))`
-/

namespace A071215.P16884391358534968445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A013635 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A071215.P16884391358534968445

namespace A071215

/-- `A001221(A013635(p?[2*n+1]))` -/
def P16884391358534968445.Spec : Prop :=
  ∀ n, P16884391358534968445.a n = A071215 (n + 1)

end A071215

/-! ## A071215.P8434720891370900422

`A001221(A013635(A065091(n+1)))`
-/

namespace A071215.P8434720891370900422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A013635 (A065091 (n + 1)).toNat).toNat

end

end A071215.P8434720891370900422

namespace A071215

/-- `A001221(A013635(A065091(n+1)))` -/
def P8434720891370900422.Spec : Prop :=
  ∀ n, P8434720891370900422.a n = A071215 (n + 1)

end A071215

/-!
# A071216: a(n) is the largest prime factor of prime(n) + prime(n+1).

The programs for A071216, the canonical program `A071216.P14150095501163198575` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071216 has offset 1).

The definition of A071216 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071216.P14150095501163198575

`A006530(A001043(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071216

/-- `A006530(A001043(n+1))` -/
def P14150095501163198575.Spec : Prop :=
  ∀ n, P14150095501163198575.a n = A071216 (n + 1)

theorem P14150095501163198575.correct : P14150095501163198575.Spec := by
  intro n
  simp only [A071216, Nat.add_sub_cancel]

end A071216

/-! ## A071216.P14201584190830964893

`A006530(Δ[A061802(n)])`
-/

namespace A071216.P14201584190830964893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A071216.P14201584190830964893

namespace A071216

/-- `A006530(Δ[A061802(n)])` -/
def P14201584190830964893.Spec : Prop :=
  ∀ n, P14201584190830964893.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P12806428944585516989

`A006530(A011974(n+2))`
-/

namespace A071216.P12806428944585516989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011974 (n + 2)).toNat

end

end A071216.P12806428944585516989

namespace A071216

/-- `A006530(A011974(n+2))` -/
def P12806428944585516989.Spec : Prop :=
  ∀ n, P12806428944585516989.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P5129298951896800535

`A006530(A164653(n+3))`
-/

namespace A071216.P5129298951896800535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A164653 (n + 3)).toNat

end

end A071216.P5129298951896800535

namespace A071216

/-- `A006530(A164653(n+3))` -/
def P5129298951896800535.Spec : Prop :=
  ∀ n, P5129298951896800535.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P15569184951091220621

`A006530(A076273(n+2)+1)`
-/

namespace A071216.P15569184951091220621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076273 (n + 2) + 1).toNat

end

end A071216.P15569184951091220621

namespace A071216

/-- `A006530(A076273(n+2)+1)` -/
def P15569184951091220621.Spec : Prop :=
  ∀ n, P15569184951091220621.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P13081537505328550719

`A006530(A092949(n+1)-1)`
-/

namespace A071216.P13081537505328550719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092949 (n + 1) - 1).toNat

end

end A071216.P13081537505328550719

namespace A071216

/-- `A006530(A092949(n+1)-1)` -/
def P13081537505328550719.Spec : Prop :=
  ∀ n, P13081537505328550719.a n = A071216 (n + 1)

theorem P13081537505328550719.correct : P13081537505328550719.Spec := by
  intro n
  simp only [A071216, Nat.add_sub_cancel, A071216.P13081537505328550719.a, A071216.P14150095501163198575.a, A001043, A001043.P18269783162673735460.a, A006530, A006530.P13372528560459906635.a, A092949, A092949.P1382492647621219255.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071216

/-! ## A071216.P12762513012252068157

`A006530(ceil(2*sqrt(A006094(n+1))))`
-/

namespace A071216.P12762513012252068157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈2 * Real.sqrt (A006094 (n + 1) : ℝ)⌉.toNat

end

end A071216.P12762513012252068157

namespace A071216

/-- `A006530(ceil(2*sqrt(A006094(n+1))))` -/
def P12762513012252068157.Spec : Prop :=
  ∀ n, P12762513012252068157.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P13134446170934231136

`A006530(round(2*sqrt(A006094(n+1))))`
-/

namespace A071216.P13134446170934231136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (2 * Real.sqrt (A006094 (n + 1) : ℝ))).toNat

end

end A071216.P13134446170934231136

namespace A071216

/-- `A006530(round(2*sqrt(A006094(n+1))))` -/
def P13134446170934231136.Spec : Prop :=
  ∀ n, P13134446170934231136.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P18327949880175486568

`A006530(A061802(n+1)-A061802(n))`
-/

namespace A071216.P18327949880175486568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061802 (n + 1) - A061802 n).toNat

end

end A071216.P18327949880175486568

namespace A071216

/-- `A006530(A061802(n+1)-A061802(n))` -/
def P18327949880175486568.Spec : Prop :=
  ∀ n, P18327949880175486568.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P10556157266519673263

`A006530(A007504(n+2)-A007504(n))`
-/

namespace A071216.P10556157266519673263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007504 (n + 2) - A007504 n).toNat

end

end A071216.P10556157266519673263

namespace A071216

/-- `A006530(A007504(n+2)-A007504(n))` -/
def P10556157266519673263.Spec : Prop :=
  ∀ n, P10556157266519673263.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P9538912272395815548

`A006530(A065091(n+1)+A000040(n+1))`
-/

namespace A071216.P9538912272395815548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065091 (n + 1) + A000040 (n + 1)).toNat

end

end A071216.P9538912272395815548

namespace A071216

/-- `A006530(A065091(n+1)+A000040(n+1))` -/
def P9538912272395815548.Spec : Prop :=
  ∀ n, P9538912272395815548.a n = A071216 (n + 1)

theorem P9538912272395815548.correct : P9538912272395815548.Spec := by
  intro n
  simp only [A071216, Nat.add_sub_cancel, A071216.P9538912272395815548.a, A071216.P14150095501163198575.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006530, A006530.P13372528560459906635.a, A065091, A065091.P6971844946592549357.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071216

/-! ## A071216.P3259859364496670701

`A006530(A000040(n+1)+A000040(n+2))`
-/

namespace A071216.P3259859364496670701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A071216.P3259859364496670701

namespace A071216

/-- `A006530(A000040(n+1)+A000040(n+2))` -/
def P3259859364496670701.Spec : Prop :=
  ∀ n, P3259859364496670701.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P7097998015951914618

`A006530(A008864(n+1)+A006093(n+2))`
-/

namespace A071216.P7097998015951914618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1) + A006093 (n + 2)).toNat

end

end A071216.P7097998015951914618

namespace A071216

/-- `A006530(A008864(n+1)+A006093(n+2))` -/
def P7097998015951914618.Spec : Prop :=
  ∀ n, P7097998015951914618.a n = A071216 (n + 1)

theorem P7097998015951914618.correct : P7097998015951914618.Spec := by
  intro n
  simp only [A071216, Nat.add_sub_cancel, A071216.P7097998015951914618.a, A071216.P14150095501163198575.a, A001043, A001043.P18269783162673735460.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071216

/-! ## A071216.P7875728818758703011

`A006530(A006005(n+2)+record[A006530(n+2)])`
-/

namespace A071216.P7875728818758703011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006005 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071216.P7875728818758703011

namespace A071216

/-- `A006530(A006005(n+2)+record[A006530(n+2)])` -/
def P7875728818758703011.Spec : Prop :=
  ∀ n, P7875728818758703011.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P15192353715543566225

`A006530((A096277(n+1)-A031131(n+1))/2)`
-/

namespace A071216.P15192353715543566225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A096277 (n + 1) - A031131 (n + 1) : ℚ) / 2)).toNat

end

end A071216.P15192353715543566225

namespace A071216

/-- `A006530((A096277(n+1)-A031131(n+1))/2)` -/
def P15192353715543566225.Spec : Prop :=
  ∀ n, P15192353715543566225.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P4065847094696189708

`A006530(A116570(2*n+1)+record[A006530(n+2)])`
-/

namespace A071216.P4065847094696189708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A116570 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071216.P4065847094696189708

namespace A071216

/-- `A006530(A116570(2*n+1)+record[A006530(n+2)])` -/
def P4065847094696189708.Spec : Prop :=
  ∀ n, P4065847094696189708.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P8472631319353346726

`A006530(A096277(n+1)-A031131(n+1))`
-/

namespace A071216.P8472631319353346726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A096277 (n + 1) - A031131 (n + 1)).toNat

end

end A071216.P8472631319353346726

namespace A071216

/-- `A006530(A096277(n+1)-A031131(n+1))` -/
def P8472631319353346726.Spec : Prop :=
  ∀ n, P8472631319353346726.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P7042382553491633798

`A006530(A013634(A000040(n+1)))`
-/

namespace A071216.P7042382553491633798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013634 (A000040 (n + 1)).toNat).toNat

end

end A071216.P7042382553491633798

namespace A071216

/-- `A006530(A013634(A000040(n+1)))` -/
def P7042382553491633798.Spec : Prop :=
  ∀ n, P7042382553491633798.a n = A071216 (n + 1)

end A071216

/-! ## A071216.P10699448434004963548

`A006530(A013634(A008578(n+2)))`
-/

namespace A071216.P10699448434004963548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013634 (A008578 (n + 2)).toNat).toNat

end

end A071216.P10699448434004963548

namespace A071216

/-- `A006530(A013634(A008578(n+2)))` -/
def P10699448434004963548.Spec : Prop :=
  ∀ n, P10699448434004963548.a n = A071216 (n + 1)

end A071216

/-!
# A071217: Numbers k such that the largest prime factor of the sum of successive primes p(k) + p(k+1) is greater than k.

The programs for A071217, the canonical program `A071217.P13033670713267228492` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071217 has offset 1).

The definition of A071217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1887 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071217.P13033670713267228492

`lt[n+1, A069483(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A071217

/-- `lt[n+1, A069483(n+1)]+1` -/
def P13033670713267228492.Spec : Prop :=
  ∀ n, (P13033670713267228492.a n : ℤ) = A071217 (n + 1)

theorem P13033670713267228492.correct : P13033670713267228492.Spec := by
  intro n
  simp only [A071217, Nat.add_sub_cancel]

end A071217

/-! ## A071217.P495631747381096420

`lt[n+1, A071216(n+1)]+1`
-/

namespace A071217.P495631747381096420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071217.P495631747381096420

namespace A071217

/-- `lt[n+1, A071216(n+1)]+1` -/
def P495631747381096420.Spec : Prop :=
  ∀ n, (P495631747381096420.a n : ℤ) = A071217 (n + 1)

end A071217

/-! ## A071217.P8022300661563948863

`lt[n+1, A006530(A001043(n+1))]+1`
-/

namespace A071217.P8022300661563948863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001043 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071217.P8022300661563948863

namespace A071217

/-- `lt[n+1, A006530(A001043(n+1))]+1` -/
def P8022300661563948863.Spec : Prop :=
  ∀ n, (P8022300661563948863.a n : ℤ) = A071217 (n + 1)

end A071217

/-! ## A071217.P16955149702192932577

`lt[A233583(n+1), A006530(A011974(n+1))]`
-/

namespace A071217.P16955149702192932577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011974 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071217.P16955149702192932577

namespace A071217

/-- `lt[A233583(n+1), A006530(A011974(n+1))]` -/
def P16955149702192932577.Spec : Prop :=
  ∀ n, (P16955149702192932577.a n : ℤ) = A071217 (n + 1)

end A071217

/-! ## A071217.P13947435373734839301

`lt[A051698(n+1), A111089(A011974(n+1))]`
-/

namespace A071217.P13947435373734839301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A011974 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071217.P13947435373734839301

namespace A071217

/-- `lt[A051698(n+1), A111089(A011974(n+1))]` -/
def P13947435373734839301.Spec : Prop :=
  ∀ n, (P13947435373734839301.a n : ℤ) = A071217 (n + 1)

end A071217

/-!
# A071218: Numbers k such that the largest prime factor of the sum of the two consecutive primes prime(k) + prime(k+1) is at most k.

The programs for A071218, the canonical program `A071218.P6211564274697766265` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071218 has offset 1).

The definition of A071218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071218.P6211564274697766265

`comp[A071217(n+1)-1]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A071218

/-- `comp[A071217(n+1)-1]+1` -/
def P6211564274697766265.Spec : Prop :=
  ∀ n, (P6211564274697766265.a n : ℤ) = A071218 (n + 1)

theorem P6211564274697766265.correct : P6211564274697766265.Spec := by
  intro n
  simp only [A071218, Nat.add_sub_cancel]

end A071218

/-! ## A071218.P13464812193143262824

`comp[∪[A071217(n+1), A071231(n)]]`
-/

namespace A071218.P13464812193143262824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071217 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071231 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A071218.P13464812193143262824

namespace A071218

/-- `comp[∪[A071217(n+1), A071231(n)]]` -/
def P13464812193143262824.Spec : Prop :=
  ∀ n, (P13464812193143262824.a n : ℤ) = A071218 (n + 1)

end A071218

/-! ## A071218.P4209788663975889652

`lt[A069483(n+1), n+2]+1`
-/

namespace A071218.P4209788663975889652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069483 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071218.P4209788663975889652

namespace A071218

/-- `lt[A069483(n+1), n+2]+1` -/
def P4209788663975889652.Spec : Prop :=
  ∀ n, (P4209788663975889652.a n : ℤ) = A071218 (n + 1)

end A071218

/-! ## A071218.P2585678494622731922

`lt[A071216(n+1), n+2]+1`
-/

namespace A071218.P2585678494622731922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071216 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071218.P2585678494622731922

namespace A071218

/-- `lt[A071216(n+1), n+2]+1` -/
def P2585678494622731922.Spec : Prop :=
  ∀ n, (P2585678494622731922.a n : ℤ) = A071218 (n + 1)

end A071218

/-! ## A071218.P13203983768768492173

`lt[A069483(A028310(n)), n+1]`
-/

namespace A071218.P13203983768768492173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069483 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071218.P13203983768768492173

namespace A071218

/-- `lt[A069483(A028310(n)), n+1]` -/
def P13203983768768492173.Spec : Prop :=
  ∀ n, (P13203983768768492173.a n : ℤ) = A071218 (n + 1)

end A071218

/-! ## A071218.P240893464899698795

`lt[A006530(A011974(n+1)), n+1]`
-/

namespace A071218.P240893464899698795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011974 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071218.P240893464899698795

namespace A071218

/-- `lt[A006530(A011974(n+1)), n+1]` -/
def P240893464899698795.Spec : Prop :=
  ∀ n, (P240893464899698795.a n : ℤ) = A071218 (n + 1)

end A071218

/-! ## A071218.P4904997933561475169

`lt[A006530(A001043(n+1)), n+2]+1`
-/

namespace A071218.P4904997933561475169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001043 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071218.P4904997933561475169

namespace A071218

/-- `lt[A006530(A001043(n+1)), n+2]+1` -/
def P4904997933561475169.Spec : Prop :=
  ∀ n, (P4904997933561475169.a n : ℤ) = A071218 (n + 1)

end A071218

/-! ## A071218.P5588717421827907732

`lt[A111089(A011974(n+1)), A151800(n)]`
-/

namespace A071218.P5588717421827907732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A011974 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071218.P5588717421827907732

namespace A071218

/-- `lt[A111089(A011974(n+1)), A151800(n)]` -/
def P5588717421827907732.Spec : Prop :=
  ∀ n, (P5588717421827907732.a n : ℤ) = A071218 (n + 1)

end A071218

/-! ## A071218.P17272588421863113174

`lt[A111089(A011974(n+1)), A007918(n+1)]`
-/

namespace A071218.P17272588421863113174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A011974 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071218.P17272588421863113174

namespace A071218

/-- `lt[A111089(A011974(n+1)), A007918(n+1)]` -/
def P17272588421863113174.Spec : Prop :=
  ∀ n, (P17272588421863113174.a n : ℤ) = A071218 (n + 1)

end A071218

/-!
# A071221: Product of next n composite numbers.

The programs for A071221, there is no canonical definition to state claims against.
-/

/-! ## A071221.P15570078073440448752

`ratio[A036691(∑[n])]`
-/

namespace A071221.P15570078073440448752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036691 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A071221.P15570078073440448752

/-!
# A071222: Smallest k such that gcd(n,k) = gcd(n+1,k+1).

The programs for A071222, there is no canonical definition to state claims against.
-/

/-! ## A071222.P12680773537169598974

`A053669(n+1)-1`
-/

namespace A071222.P12680773537169598974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) - 1

end

end A071222.P12680773537169598974

/-!
# A071223: Triangle T(n,k) (n >= 2, 1 <= k <= n) read by rows: number of linearly inducible orderings of n points in k-dimensional Euclidean space.

The programs for A071223, there is no canonical definition to state claims against.
-/

/-! ## A071223.P17807748085384117407

`2*A087644(n+2)`
-/

namespace A071223.P17807748085384117407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087644 (n + 2)

end

end A071223.P17807748085384117407

/-! ## A071223.P3782444109736110830

`A087644(A020725(1+n))+A087644(n+2)`
-/

namespace A071223.P3782444109736110830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087644 (A020725 (1 + n)).toNat + A087644 (n + 2)

end

end A071223.P3782444109736110830

/-! ## A071223.P7989144929740492657

`A087644(A000027(n+2))+A087644(n+2)`
-/

namespace A071223.P7989144929740492657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087644 (A000027 (n + 2)).toNat + A087644 (n + 2)

end

end A071223.P7989144929740492657

/-! ## A071223.P17002815959431072257

`A087644(A028310(n)+2)+A087644(n+2)`
-/

namespace A071223.P17002815959431072257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087644 (A028310 n + 2).toNat + A087644 (n + 2)

end

end A071223.P17002815959431072257

/-! ## A071223.P12452099546511066577

`A087644(A087156(n+2))+A087644(n+2)`
-/

namespace A071223.P12452099546511066577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087644 (A087156 (n + 2)).toNat + A087644 (n + 2)

end

end A071223.P12452099546511066577

/-! ## A071223.P792992613481930114

`A087644(n+2)/2^A008683(A020483(n))`
-/

namespace A071223.P792992613481930114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087644 (n + 2) : ℚ) / (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A071223.P792992613481930114

/-! ## A071223.P6228762605000568410

`A087644(n+2)+A087644(n+2)/A007318(ceil(2/(n+1)))`
-/

namespace A071223.P6228762605000568410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087644 (n + 2) : ℚ) + (A087644 (n + 2) : ℚ) / (A007318 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A071223.P6228762605000568410

/-!
# A071224: LCM of n and n-th composite number.

The programs for A071224, the canonical program `A071224.P12951188151330650985` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071224 has offset 1).

The definition of A071224 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A064814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071224.P12951188151330650985

`(n+1)*A002808(n+1)/A064814(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071224

/-- `(n+1)*A002808(n+1)/A064814(n+1)` -/
def P12951188151330650985.Spec : Prop :=
  ∀ n, P12951188151330650985.a n = (A071224 (n + 1) : ℚ)

end A071224

/-! ## A071224.P2739659338491962938

`lcm(comp[p?[2*n+1]-3]+3, n+1)`
-/

namespace A071224.P2739659338491962938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3) (n + 1)

end

end A071224.P2739659338491962938

namespace A071224

/-- `lcm(comp[p?[2*n+1]-3]+3, n+1)` -/
def P2739659338491962938.Spec : Prop :=
  ∀ n, (P2739659338491962938.a n : ℤ) = A071224 (n + 1)

end A071224

/-! ## A071224.P18148005188267766954

`lcm(n+1, Δ[A053767(n)])`
-/

namespace A071224.P18148005188267766954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A071224.P18148005188267766954

namespace A071224

/-- `lcm(n+1, Δ[A053767(n)])` -/
def P18148005188267766954.Spec : Prop :=
  ∀ n, (P18148005188267766954.a n : ℤ) = A071224 (n + 1)

end A071224

/-! ## A071224.P18426060853283809021

`(n+1)*A171527(n+1)`
-/

namespace A071224.P18426060853283809021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A171527 (n + 1)

end

end A071224.P18426060853283809021

namespace A071224

/-- `(n+1)*A171527(n+1)` -/
def P18426060853283809021.Spec : Prop :=
  ∀ n, P18426060853283809021.a n = A071224 (n + 1)

end A071224

/-! ## A071224.P13729867994333976005

`lcm(xor(n, -1), A002808(n+1))`
-/

namespace A071224.P13729867994333976005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (A002808 (n + 1))

end

end A071224.P13729867994333976005

namespace A071224

/-- `lcm(xor(n, -1), A002808(n+1))` -/
def P13729867994333976005.Spec : Prop :=
  ∀ n, (P13729867994333976005.a n : ℤ) = A071224 (n + 1)

end A071224

/-! ## A071224.P17983476096181718134

`lcm(2*n+1-n, A018252(n+2))`
-/

namespace A071224.P17983476096181718134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n + 1 : ℤ) - (n : ℤ)) (A018252 (n + 2))

end

end A071224.P17983476096181718134

namespace A071224

/-- `lcm(2*n+1-n, A018252(n+2))` -/
def P17983476096181718134.Spec : Prop :=
  ∀ n, (P17983476096181718134.a n : ℤ) = A071224 (n + 1)

end A071224

/-! ## A071224.P16192433351441013218

`A002808(n+1)*A171528(n+1)`
-/

namespace A071224.P16192433351441013218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A171528 (n + 1)

end

end A071224.P16192433351441013218

namespace A071224

/-- `A002808(n+1)*A171528(n+1)` -/
def P16192433351441013218.Spec : Prop :=
  ∀ n, P16192433351441013218.a n = A071224 (n + 1)

end A071224

/-! ## A071224.P12375264920905344719

`lcm(comp[A158611(n+1)], A028310(n+1))`
-/

namespace A071224.P12375264920905344719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A028310 (n + 1))

end

end A071224.P12375264920905344719

namespace A071224

/-- `lcm(comp[A158611(n+1)], A028310(n+1))` -/
def P12375264920905344719.Spec : Prop :=
  ∀ n, (P12375264920905344719.a n : ℤ) = A071224 (n + 1)

end A071224

/-! ## A071224.P10105609412088413445

`lcm(A000027(n+1), A002808(A000027(n+1)))`
-/

namespace A071224.P10105609412088413445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A002808 (A000027 (n + 1)).toNat)

end

end A071224.P10105609412088413445

namespace A071224

/-- `lcm(A000027(n+1), A002808(A000027(n+1)))` -/
def P10105609412088413445.Spec : Prop :=
  ∀ n, (P10105609412088413445.a n : ℤ) = A071224 (n + 1)

end A071224

/-! ## A071224.P10338893604565935602

`lcm(Δ[A130472(n)], A002808(n+1))`
-/

namespace A071224.P10338893604565935602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A002808 (n + 1))

end

end A071224.P10338893604565935602

namespace A071224

/-- `lcm(Δ[A130472(n)], A002808(n+1))` -/
def P10338893604565935602.Spec : Prop :=
  ∀ n, (P10338893604565935602.a n : ℤ) = A071224 (n + 1)

end A071224

/-! ## A071224.P2395578594626975078

`lcm(A002808(A028242(2*n)), A028242(2*n))`
-/

namespace A071224.P2395578594626975078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002808 (A028242 (2 * n)).toNat) (A028242 (2 * n))

end

end A071224.P2395578594626975078

namespace A071224

/-- `lcm(A002808(A028242(2*n)), A028242(2*n))` -/
def P2395578594626975078.Spec : Prop :=
  ∀ n, (P2395578594626975078.a n : ℤ) = A071224 (n + 1)

end A071224

/-!
# A071225: 

The programs for A071225, there is no canonical definition to state claims against.
-/

/-! ## A071225.P7851012564104555203

`A007467(n+1)^(n+1)`
-/

namespace A071225.P7851012564104555203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007467 (n + 1) ^ (n + 1)

end

end A071225.P7851012564104555203

/-!
# A071226: 

The programs for A071226, there is no canonical definition to state claims against.
-/

/-! ## A071226.P12308374181694517462

`ratio[2*∑[n]!]^(n+1)`
-/

namespace A071226.P12308374181694517462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ (n + 1)

end

end A071226.P12308374181694517462

/-! ## A071226.P2187264155249796746

`ratio[∑[n]!/2]^(n+1)`
-/

namespace A071226.P2187264155249796746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) / f1 n) ^ (n + 1)

end

end A071226.P2187264155249796746

/-! ## A071226.P7205189039978910543

`A057003(n+1)^(n+1)`
-/

namespace A071226.P7205189039978910543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1) ^ (n + 1)

end

end A071226.P7205189039978910543

/-!
# A071227: Number of solutions 1<=x<=m to gcd(m,x) = tau(m) where m = A033950(n).

The programs for A071227, the canonical program `A071227.P17938757858889274973` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071227 has offset 1).

The definition of A071227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071227.P3375627476144506146

`A000010(A036762(1+n))`
-/

namespace A071227.P3375627476144506146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A036762 (1 + n)).toNat

end

end A071227.P3375627476144506146

namespace A071227

/-- `A000010(A036762(1+n))` -/
def P3375627476144506146.Spec : Prop :=
  ∀ n, P3375627476144506146.a n = A071227 (n + 1)

end A071227

/-! ## A071227.P17938757858889274973

`A000010(A033950(n+1)/A039819(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071227

/-- `A000010(A033950(n+1)/A039819(n+1))` -/
def P17938757858889274973.Spec : Prop :=
  ∀ n, P17938757858889274973.a n = A071227 (n + 1)

theorem P17938757858889274973.correct : P17938757858889274973.Spec := by
  intro n
  simp only [A071227, Nat.add_sub_cancel]

end A071227

/-! ## A071227.P15922266045982804564

`∑{d}[A036762(n+1), A007431(#)]`
-/

namespace A071227.P15922266045982804564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A071227.P15922266045982804564

namespace A071227

/-- `∑{d}[A036762(n+1), A007431(#)]` -/
def P15922266045982804564.Spec : Prop :=
  ∀ n, P15922266045982804564.a n = A071227 (n + 1)

end A071227

/-! ## A071227.P4150153611875699663

`A055034(lcm(2, A036762(n+1)))`
-/

namespace A071227.P4150153611875699663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Int.lcm 2 (A036762 (n + 1)))

end

end A071227.P4150153611875699663

namespace A071227

/-- `A055034(lcm(2, A036762(n+1)))` -/
def P4150153611875699663.Spec : Prop :=
  ∀ n, P4150153611875699663.a n = A071227 (n + 1)

end A071227

/-! ## A071227.P6361530424989780953

`A000010(A078709(A033950(n+1)))`
-/

namespace A071227.P6361530424989780953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A078709 (A033950 (n + 1)).toNat).toNat

end

end A071227.P6361530424989780953

namespace A071227

/-- `A000010(A078709(A033950(n+1)))` -/
def P6361530424989780953.Spec : Prop :=
  ∀ n, P6361530424989780953.a n = A071227 (n + 1)

end A071227

/-! ## A071227.P341102384592944927

`A225530(A036762(n+1)%A281019(n+1))`
-/

namespace A071227.P341102384592944927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (Int.tmod (A036762 (n + 1)) (A281019 (n + 1))).toNat

end

end A071227.P341102384592944927

namespace A071227

/-- `A225530(A036762(n+1)%A281019(n+1))` -/
def P341102384592944927.Spec : Prop :=
  ∀ n, P341102384592944927.a n = A071227 (n + 1)

end A071227

/-!
# A071228: a(n) = n*(n-th composite number).

The programs for A071228, the canonical program `A071228.P4535194681487630780` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071228 has offset 1).

The definition of A071228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071228.P4535194681487630780

`(n+1)*A002808(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A071228

/-- `(n+1)*A002808(n+1)` -/
def P4535194681487630780.Spec : Prop :=
  ∀ n, P4535194681487630780.a n = A071228 (n + 1)

theorem P4535194681487630780.correct : P4535194681487630780.Spec := by
  intro n
  simp only [A071228, Nat.add_sub_cancel]

end A071228

/-! ## A071228.P13923526760964689062

`∑[A092930(n+1)]`
-/

namespace A071228.P13923526760964689062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071228.P13923526760964689062

namespace A071228

/-- `∑[A092930(n+1)]` -/
def P13923526760964689062.Spec : Prop :=
  ∀ n, P13923526760964689062.a n = A071228 (n + 1)

end A071228

/-! ## A071228.P8887066399059773371

`(n+1)*Δ[A053767(n)]`
-/

namespace A071228.P8887066399059773371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A071228.P8887066399059773371

namespace A071228

/-- `(n+1)*Δ[A053767(n)]` -/
def P8887066399059773371.Spec : Prop :=
  ∀ n, P8887066399059773371.a n = A071228 (n + 1)

end A071228

/-! ## A071228.P9473936036797469660

`(n+1)*comp[A351078(n)]`
-/

namespace A071228.P9473936036797469660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A071228.P9473936036797469660

namespace A071228

/-- `(n+1)*comp[A351078(n)]` -/
def P9473936036797469660.Spec : Prop :=
  ∀ n, (P9473936036797469660.a n : ℤ) = A071228 (n + 1)

end A071228

/-! ## A071228.P13560389412055472102

`(n+1)*A018252(n+2)`
-/

namespace A071228.P13560389412055472102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A018252 (n + 2)

end

end A071228.P13560389412055472102

namespace A071228

/-- `(n+1)*A018252(n+2)` -/
def P13560389412055472102.Spec : Prop :=
  ∀ n, P13560389412055472102.a n = A071228 (n + 1)

end A071228

/-! ## A071228.P16037213065663117959

`(n+1)*A141468(n+3)`
-/

namespace A071228.P16037213065663117959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A141468 (n + 3)

end

end A071228.P16037213065663117959

namespace A071228

/-- `(n+1)*A141468(n+3)` -/
def P16037213065663117959.Spec : Prop :=
  ∀ n, P16037213065663117959.a n = A071228 (n + 1)

end A071228

/-! ## A071228.P9418875181718198833

`(n+1)*comp[A158611(n+1)]`
-/

namespace A071228.P9418875181718198833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A071228.P9418875181718198833

namespace A071228

/-- `(n+1)*comp[A158611(n+1)]` -/
def P9418875181718198833.Spec : Prop :=
  ∀ n, (P9418875181718198833.a n : ℤ) = A071228 (n + 1)

end A071228

/-! ## A071228.P18360220367746303843

`(n+1)*(A072668(n+1)+1)`
-/

namespace A071228.P18360220367746303843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A072668 (n + 1) + 1)

end

end A071228.P18360220367746303843

namespace A071228

/-- `(n+1)*(A072668(n+1)+1)` -/
def P18360220367746303843.Spec : Prop :=
  ∀ n, P18360220367746303843.a n = A071228 (n + 1)

theorem P18360220367746303843.correct : P18360220367746303843.Spec := by
  intro n
  simp only [A071228, Nat.add_sub_cancel, A071228.P18360220367746303843.a, A071228.P4535194681487630780.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A072668, A072668.P5648318357023435289.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071228

/-! ## A071228.P14104809995153359874

`(n+1)*(A079696(n+1)-1)`
-/

namespace A071228.P14104809995153359874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A079696 (n + 1) - 1)

end

end A071228.P14104809995153359874

namespace A071228

/-- `(n+1)*(A079696(n+1)-1)` -/
def P14104809995153359874.Spec : Prop :=
  ∀ n, P14104809995153359874.a n = A071228 (n + 1)

theorem P14104809995153359874.correct : P14104809995153359874.Spec := by
  intro n
  simp only [A071228, Nat.add_sub_cancel, A071228.P14104809995153359874.a, A071228.P4535194681487630780.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A079696, A079696.P2621453534582977077.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071228

/-! ## A071228.P7383252189502953260

`(n+1)*(A164028(n+1)+3)`
-/

namespace A071228.P7383252189502953260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A164028 (n + 1) + 3)

end

end A071228.P7383252189502953260

namespace A071228

/-- `(n+1)*(A164028(n+1)+3)` -/
def P7383252189502953260.Spec : Prop :=
  ∀ n, P7383252189502953260.a n = A071228 (n + 1)

theorem P7383252189502953260.correct : P7383252189502953260.Spec := by
  intro n
  simp only [A071228, Nat.add_sub_cancel, A071228.P7383252189502953260.a, A071228.P4535194681487630780.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A164028, A164028.P16722215845011041546.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071228

/-! ## A071228.P3483148213953614255

`(n+1)/2*A282671(n+1)`
-/

namespace A071228.P3483148213953614255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A282671 (n + 1) : ℚ)

end

end A071228.P3483148213953614255

namespace A071228

/-- `(n+1)/2*A282671(n+1)` -/
def P3483148213953614255.Spec : Prop :=
  ∀ n, P3483148213953614255.a n = (A071228 (n + 1) : ℚ)

theorem P3483148213953614255.correct : P3483148213953614255.Spec := by
  intro n
  simp only [A071228, Nat.add_sub_cancel, A071228.P3483148213953614255.a, A071228.P4535194681487630780.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A282671, A282671.P11944958329678511137.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071228

/-! ## A071228.P14198915264056030001

`(n+1)*A222307(2*n+3)`
-/

namespace A071228.P14198915264056030001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A222307 (2 * n + 3)

end

end A071228.P14198915264056030001

namespace A071228

/-- `(n+1)*A222307(2*n+3)` -/
def P14198915264056030001.Spec : Prop :=
  ∀ n, P14198915264056030001.a n = A071228 (n + 1)

end A071228

/-! ## A071228.P14720577743278844268

`(n+1)*(comp[A040976(n+1)]+2)`
-/

namespace A071228.P14720577743278844268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A071228.P14720577743278844268

namespace A071228

/-- `(n+1)*(comp[A040976(n+1)]+2)` -/
def P14720577743278844268.Spec : Prop :=
  ∀ n, (P14720577743278844268.a n : ℤ) = A071228 (n + 1)

end A071228

/-! ## A071228.P9131105634175107464

`(lt[1, A001222(n+1)]+1)*(n+1)`
-/

namespace A071228.P9131105634175107464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) * (n + 1)

end

end A071228.P9131105634175107464

namespace A071228

/-- `(lt[1, A001222(n+1)]+1)*(n+1)` -/
def P9131105634175107464.Spec : Prop :=
  ∀ n, (P9131105634175107464.a n : ℤ) = A071228 (n + 1)

end A071228

/-! ## A071228.P3822435928306140258

`(lt[2, A000005(n+1)]+1)*(n+1)`
-/

namespace A071228.P3822435928306140258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) * (n + 1)

end

end A071228.P3822435928306140258

namespace A071228

/-- `(lt[2, A000005(n+1)]+1)*(n+1)` -/
def P3822435928306140258.Spec : Prop :=
  ∀ n, (P3822435928306140258.a n : ℤ) = A071228 (n + 1)

end A071228

/-! ## A071228.P9449146794510508562

`(n+1)*(A073169(n+1)+n+1)`
-/

namespace A071228.P9449146794510508562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A073169 (n + 1) + (n + 1 : ℤ))

end

end A071228.P9449146794510508562

namespace A071228

/-- `(n+1)*(A073169(n+1)+n+1)` -/
def P9449146794510508562.Spec : Prop :=
  ∀ n, P9449146794510508562.a n = A071228 (n + 1)

theorem P9449146794510508562.correct : P9449146794510508562.Spec := by
  intro n
  simp only [A071228, Nat.add_sub_cancel, A071228.P9449146794510508562.a, A071228.P4535194681487630780.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A073169, A073169.P14738260624206914448.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071228

/-! ## A071228.P16913559673573924148

`(n+1)*(A161537(n+1)-(n+1))`
-/

namespace A071228.P16913559673573924148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A161537 (n + 1) - (n + 1 : ℤ))

end

end A071228.P16913559673573924148

namespace A071228

/-- `(n+1)*(A161537(n+1)-(n+1))` -/
def P16913559673573924148.Spec : Prop :=
  ∀ n, P16913559673573924148.a n = A071228 (n + 1)

theorem P16913559673573924148.correct : P16913559673573924148.Spec := by
  intro n
  simp only [A071228, Nat.add_sub_cancel, A071228.P16913559673573924148.a, A071228.P4535194681487630780.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A161537, A161537.P5701896001486132994.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071228

/-! ## A071228.P14065924258288589617

`(n+1)*(lt[A000010(n+1), n]+1)`
-/

namespace A071228.P14065924258288589617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A071228.P14065924258288589617

namespace A071228

/-- `(n+1)*(lt[A000010(n+1), n]+1)` -/
def P14065924258288589617.Spec : Prop :=
  ∀ n, (P14065924258288589617.a n : ℤ) = A071228 (n + 1)

end A071228

/-! ## A071228.P5754633029344968880

`(n+1)*(lt[A006530(n+1), n]+1)`
-/

namespace A071228.P5754633029344968880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A071228.P5754633029344968880

namespace A071228

/-- `(n+1)*(lt[A006530(n+1), n]+1)` -/
def P5754633029344968880.Spec : Prop :=
  ∀ n, (P5754633029344968880.a n : ℤ) = A071228 (n + 1)

end A071228

/-! ## A071228.P17569027093615102597

`(n+1)*(lt[A020639(n+1), n]+1)`
-/

namespace A071228.P17569027093615102597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A071228.P17569027093615102597

namespace A071228

/-- `(n+1)*(lt[A020639(n+1), n]+1)` -/
def P17569027093615102597.Spec : Prop :=
  ∀ n, (P17569027093615102597.a n : ℤ) = A071228 (n + 1)

end A071228

/-!
# A071229: a(n) = n*(14*n^2 - 21*n + 13)/6.

The programs for A071229, the canonical program `A071229.P16763660215598241205` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071229 has offset 0).

The definition of A071229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071229.P16763660215598241205

`n*(14*n²-21*n+13)/6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071229

/-- `n*(14*n²-21*n+13)/6` -/
def P16763660215598241205.Spec : Prop :=
  ∀ n, P16763660215598241205.a n = (A071229 n : ℚ)

end A071229

/-! ## A071229.P6904103110073930866

`∑[∑[a(n-1)+14]]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A071229.P6904103110073930866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7] fun n f2 =>
  f2 (n - 1) + 14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071229.P6904103110073930866

namespace A071229

/-- `∑[∑[a(n-1)+14]]` -/
def P6904103110073930866.Spec : Prop :=
  ∀ n, (P6904103110073930866.a n : ℤ) = A071229 n

end A071229

/-! ## A071229.P1644698230158768413

`∑[∑[ogf((x+5x^2+8x^3)/(1-2x+x^2))]]`
-/

namespace A071229.P1644698230158768413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 8] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071229.P1644698230158768413

namespace A071229

/-- `∑[∑[ogf((x+5x^2+8x^3)/(1-2x+x^2))]]` -/
def P1644698230158768413.Spec : Prop :=
  ∀ n, P1644698230158768413.a n = A071229 n

end A071229

/-! ## A071229.P6083310070088268432

`A226449(n)-C(n, 3)`
-/

namespace A071229.P6083310070088268432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226449 n - (Nat.choose n 3 : ℤ)

end

end A071229.P6083310070088268432

namespace A071229

/-- `A226449(n)-C(n, 3)` -/
def P6083310070088268432.Spec : Prop :=
  ∀ n, P6083310070088268432.a n = A071229 n

end A071229

/-! ## A071229.P13048251752923935442

`A050409(n)-A033579(n)`
-/

namespace A071229.P13048251752923935442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n - A033579 n

end

end A071229.P13048251752923935442

namespace A071229

/-- `A050409(n)-A033579(n)` -/
def P13048251752923935442.Spec : Prop :=
  ∀ n, P13048251752923935442.a n = A071229 n

end A071229

/-! ## A071229.P3052430456476203560

`A168559(n+1)+A015240(n)`
-/

namespace A071229.P3052430456476203560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168559 (n + 1) + A015240 n

end

end A071229.P3052430456476203560

namespace A071229

/-- `A168559(n+1)+A015240(n)` -/
def P3052430456476203560.Spec : Prop :=
  ∀ n, P3052430456476203560.a n = A071229 n

end A071229

/-! ## A071229.P7707665104156552301

`A004126(n)+A004126(n)-A001106(n)`
-/

namespace A071229.P7707665104156552301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004126 n + (A004126 n - A001106 n)

end

end A071229.P7707665104156552301

namespace A071229

/-- `A004126(n)+A004126(n)-A001106(n)` -/
def P7707665104156552301.Spec : Prop :=
  ∀ n, P7707665104156552301.a n = A071229 n

end A071229

/-! ## A071229.P2384031917462478159

`A005448(n+1)+A226449(n)-A000292(n+1)`
-/

namespace A071229.P2384031917462478159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1) + (A226449 n - A000292 (n + 1))

end

end A071229.P2384031917462478159

namespace A071229

/-- `A005448(n+1)+A226449(n)-A000292(n+1)` -/
def P2384031917462478159.Spec : Prop :=
  ∀ n, P2384031917462478159.a n = A071229 n

end A071229

/-!
# A071230: a(n) = n*(6*n^2 - 7*n + 3)/2.

The programs for A071230, the canonical program `A071230.P2862819737559376524` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071230 has offset 0).

The definition of A071230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n²-7*n+3)/2` (program `A071230.P2491643268132859349`, by `A071230.P2491643268132859349.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071230.P2491643268132859349

`n*(6*n²-7*n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071230.P2491643268132859349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((6 * n ^ 2 : ℤ) - (7 * n : ℤ) + 3) : ℚ) / 2

end

end A071230.P2491643268132859349

namespace A071230

/-- `n*(6*n²-7*n+3)/2` -/
def P2491643268132859349.Spec : Prop :=
  ∀ n, P2491643268132859349.a n = (A071230 n : ℚ)

theorem P2491643268132859349.correct : P2491643268132859349.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A071230, Nat.add_sub_cancel, A071230.P2491643268132859349.a, A071230.P2862819737559376524.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A071230, Nat.add_sub_cancel, A071230.P2491643268132859349.a, A071230.P2862819737559376524.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A071230

/-! ## A071230.P2862819737559376524

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=54`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071230

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2862819737559376524.Spec : Prop :=
  ∀ n, P2862819737559376524.a n = A071230 n

theorem P2862819737559376524.correct : P2862819737559376524.Spec := by
  intro n
  simp only [A071230]

end A071230

/-! ## A071230.P5628701150745101997

`∑[∑[ogf((x+9x^2+8x^3)/(1-2x+x^2))]]`
-/

namespace A071230.P5628701150745101997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 9, 8] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071230.P5628701150745101997

namespace A071230

/-- `∑[∑[ogf((x+9x^2+8x^3)/(1-2x+x^2))]]` -/
def P5628701150745101997.Spec : Prop :=
  ∀ n, P5628701150745101997.a n = A071230 n

end A071230

/-! ## A071230.P4821381669595973287

`n*(7*C(n, 2)+1)-∑[3*C(n, 2)]`
-/

namespace A071230.P4821381669595973287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (7 * Nat.choose n 2 + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071230.P4821381669595973287

namespace A071230

/-- `n*(7*C(n, 2)+1)-∑[3*C(n, 2)]` -/
def P4821381669595973287.Spec : Prop :=
  ∀ n, P4821381669595973287.a n = A071230 n

end A071230

/-! ## A071230.P2150365650044971077

`A005945(n)+n-n²`
-/

namespace A071230.P2150365650044971077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005945 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A071230.P2150365650044971077

namespace A071230

/-- `A005945(n)+n-n²` -/
def P2150365650044971077.Spec : Prop :=
  ∀ n, P2150365650044971077.a n = A071230 n

end A071230

/-! ## A071230.P9282734570289768875

`n*A077588(n)-∑[n]`
-/

namespace A071230.P9282734570289768875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A077588 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071230.P9282734570289768875

namespace A071230

/-- `n*A077588(n)-∑[n]` -/
def P9282734570289768875.Spec : Prop :=
  ∀ n, P9282734570289768875.a n = A071230 n

end A071230

/-! ## A071230.P12993649856999422171

`n*A242658(n)-∑[n]`
-/

namespace A071230.P12993649856999422171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A242658 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071230.P12993649856999422171

namespace A071230

/-- `n*A242658(n)-∑[n]` -/
def P12993649856999422171.Spec : Prop :=
  ∀ n, P12993649856999422171.a n = A071230 n

end A071230

/-! ## A071230.P5287072955803460959

`A212133(n)+n^3-∑[n]`
-/

namespace A071230.P5287072955803460959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n + ((n ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A071230.P5287072955803460959

namespace A071230

/-- `A212133(n)+n^3-∑[n]` -/
def P5287072955803460959.Spec : Prop :=
  ∀ n, P5287072955803460959.a n = A071230 n

end A071230

/-! ## A071230.P3194479583959719453

`A007531(n)+2*n*n²-∑[n]`
-/

namespace A071230.P3194479583959719453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + ((2 * (n * n ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A071230.P3194479583959719453

namespace A071230

/-- `A007531(n)+2*n*n²-∑[n]` -/
def P3194479583959719453.Spec : Prop :=
  ∀ n, P3194479583959719453.a n = A071230 n

end A071230

/-! ## A071230.P5917737882189704092

`∑[A152995(n)]-(C(3*n, 2)-2*n)`
-/

namespace A071230.P5917737882189704092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((Nat.choose (3 * n) 2 : ℤ) - (2 * n : ℤ))

end

end A071230.P5917737882189704092

namespace A071230

/-- `∑[A152995(n)]-(C(3*n, 2)-2*n)` -/
def P5917737882189704092.Spec : Prop :=
  ∀ n, P5917737882189704092.a n = A071230 n

end A071230

/-! ## A071230.P8825872168806575607

`A147656(n)+A015240(n)`
-/

namespace A071230.P8825872168806575607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + A015240 n

end

end A071230.P8825872168806575607

namespace A071230

/-- `A147656(n)+A015240(n)` -/
def P8825872168806575607.Spec : Prop :=
  ∀ n, P8825872168806575607.a n = A071230 n

end A071230

/-! ## A071230.P2938768128688034158

`A270205(n)+A000566(n)`
-/

namespace A071230.P2938768128688034158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 n + A000566 n

end

end A071230.P2938768128688034158

namespace A071230

/-- `A270205(n)+A000566(n)` -/
def P2938768128688034158.Spec : Prop :=
  ∀ n, P2938768128688034158.a n = A071230 n

end A071230

/-! ## A071230.P2495484150283040646

`A027903(n)-A022272(n)`
-/

namespace A071230.P2495484150283040646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n - A022272 n

end

end A071230.P2495484150283040646

namespace A071230

/-- `A027903(n)-A022272(n)` -/
def P2495484150283040646.Spec : Prop :=
  ∀ n, P2495484150283040646.a n = A071230 n

end A071230

/-! ## A071230.P1796508948657519333

`A081583(n)-A005920(n)`
-/

namespace A071230.P1796508948657519333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081583 n - A005920 n

end

end A071230.P1796508948657519333

namespace A071230

/-- `A081583(n)-A005920(n)` -/
def P1796508948657519333.Spec : Prop :=
  ∀ n, P1796508948657519333.a n = A071230 n

end A071230

/-! ## A071230.P3870032702188814644

`A067389(n)-A022268(n)`
-/

namespace A071230.P3870032702188814644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n - A022268 n

end

end A071230.P3870032702188814644

namespace A071230

/-- `A067389(n)-A022268(n)` -/
def P3870032702188814644.Spec : Prop :=
  ∀ n, P3870032702188814644.a n = A071230 n

end A071230

/-! ## A071230.P592713418170961600

`A196507(n)-A022276(n)`
-/

namespace A071230.P592713418170961600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196507 n - A022276 n

end

end A071230.P592713418170961600

namespace A071230

/-- `A196507(n)-A022276(n)` -/
def P592713418170961600.Spec : Prop :=
  ∀ n, P592713418170961600.a n = A071230 n

end A071230

/-! ## A071230.P3619508325090649609

`A249354(n)-A022270(n)`
-/

namespace A071230.P3619508325090649609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n - A022270 n

end

end A071230.P3619508325090649609

namespace A071230

/-- `A249354(n)-A022270(n)` -/
def P3619508325090649609.Spec : Prop :=
  ∀ n, P3619508325090649609.a n = A071230 n

end A071230

/-! ## A071230.P11429348325492653559

`A119536(n)-A186029(n)`
-/

namespace A071230.P11429348325492653559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119536 n - A186029 n

end

end A071230.P11429348325492653559

namespace A071230

/-- `A119536(n)-A186029(n)` -/
def P11429348325492653559.Spec : Prop :=
  ∀ n, P11429348325492653559.a n = A071230 n

end A071230

/-! ## A071230.P5445070138696431672

`A117642(n)-A218471(n)`
-/

namespace A071230.P5445070138696431672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - A218471 n

end

end A071230.P5445070138696431672

namespace A071230

/-- `A117642(n)-A218471(n)` -/
def P5445070138696431672.Spec : Prop :=
  ∀ n, P5445070138696431672.a n = A071230 n

end A071230

/-! ## A071230.P2330993364250370499

`A294315(n)-A062741(n)`
-/

namespace A071230.P2330993364250370499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294315 n - A062741 n

end

end A071230.P2330993364250370499

namespace A071230

/-- `A294315(n)-A062741(n)` -/
def P2330993364250370499.Spec : Prop :=
  ∀ n, P2330993364250370499.a n = A071230 n

end A071230

/-!
# A071231: a(n) = (n^8 + n^4)/2.

The programs for A071231, the canonical program `A071231.P12099353623809023742` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071231 has offset 0).

The definition of A071231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^8+n^4)/2` (program `A071231.P10697700205814863041`, by `A071231.P10697700205814863041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071231.P6443793787737978744

`(n^4+n^8)/2`
-/

namespace A071231.P6443793787737978744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + n ^ 8 : ℚ) / 2

end

end A071231.P6443793787737978744

namespace A071231

/-- `(n^4+n^8)/2` -/
def P6443793787737978744.Spec : Prop :=
  ∀ n, P6443793787737978744.a n = (A071231 n : ℚ)

end A071231

/-! ## A071231.P10697700205814863041

`(n^8+n^4)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071231.P10697700205814863041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 8 + n ^ 4 : ℚ) / 2

end

end A071231.P10697700205814863041

namespace A071231

/-- `(n^8+n^4)/2` -/
def P10697700205814863041.Spec : Prop :=
  ∀ n, P10697700205814863041.a n = (A071231 n : ℚ)

theorem P10697700205814863041.correct : P10697700205814863041.Spec := by
  intro n
  simp only [A071231, Nat.add_sub_cancel, A071231.P10697700205814863041.a, A071231.P12099353623809023742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071231

/-! ## A071231.P18370845115685140772

`C(n^4+1, 2)`
-/

namespace A071231.P18370845115685140772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 4 + 1) 2

end

end A071231.P18370845115685140772

namespace A071231

/-- `C(n^4+1, 2)` -/
def P18370845115685140772.Spec : Prop :=
  ∀ n, (P18370845115685140772.a n : ℤ) = A071231 n

end A071231

/-! ## A071231.P12099353623809023742

`n^8-C(n^4, 2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071231

/-- `n^8-C(n^4, 2)` -/
def P12099353623809023742.Spec : Prop :=
  ∀ n, P12099353623809023742.a n = A071231 n

theorem P12099353623809023742.correct : P12099353623809023742.Spec := by
  intro n
  simp only [A071231]

end A071231

/-! ## A071231.P5946597013236019050

`lcm(n, C(n²²+1, 2))`
-/

namespace A071231.P5946597013236019050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.choose ((n ^ 2) ^ 2 + 1) 2)

end

end A071231.P5946597013236019050

namespace A071231

/-- `lcm(n, C(n²²+1, 2))` -/
def P5946597013236019050.Spec : Prop :=
  ∀ n, (P5946597013236019050.a n : ℤ) = A071231 n

end A071231

/-! ## A071231.P3814996018280278005

`C(n²², 2)+n²²`
-/

namespace A071231.P3814996018280278005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2) ^ 2) 2 + (n ^ 2) ^ 2

end

end A071231.P3814996018280278005

namespace A071231

/-- `C(n²², 2)+n²²` -/
def P3814996018280278005.Spec : Prop :=
  ∀ n, (P3814996018280278005.a n : ℤ) = A071231 n

end A071231

/-! ## A071231.P14637060003781381030

`n*A168179(n)`
-/

namespace A071231.P14637060003781381030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168179 n

end

end A071231.P14637060003781381030

namespace A071231

/-- `n*A168179(n)` -/
def P14637060003781381030.Spec : Prop :=
  ∀ n, P14637060003781381030.a n = A071231 n

end A071231

/-! ## A071231.P16817492451638086970

`n²*A168122(n)`
-/

namespace A071231.P16817492451638086970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168122 n

end

end A071231.P16817492451638086970

namespace A071231

/-- `n²*A168122(n)` -/
def P16817492451638086970.Spec : Prop :=
  ∀ n, P16817492451638086970.a n = A071231 n

end A071231

/-! ## A071231.P12286466398057819064

`n^3*A021003(n)`
-/

namespace A071231.P12286466398057819064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A021003 n

end

end A071231.P12286466398057819064

namespace A071231

/-- `n^3*A021003(n)` -/
def P12286466398057819064.Spec : Prop :=
  ∀ n, P12286466398057819064.a n = A071231 n

end A071231

/-! ## A071231.P2896053121912451826

`n²²/2*A002523(n)`
-/

namespace A071231.P2896053121912451826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℚ) / 2 * (A002523 n : ℚ)

end

end A071231.P2896053121912451826

namespace A071231

/-- `n²²/2*A002523(n)` -/
def P2896053121912451826.Spec : Prop :=
  ∀ n, P2896053121912451826.a n = (A071231 n : ℚ)

end A071231

/-! ## A071231.P8095638443327510009

`A168122(n)*A253909(n)`
-/

namespace A071231.P8095638443327510009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 n * A253909 n

end

end A071231.P8095638443327510009

namespace A071231

/-- `A168122(n)*A253909(n)` -/
def P8095638443327510009.Spec : Prop :=
  ∀ n, P8095638443327510009.a n = A071231 n

end A071231

/-! ## A071231.P16296574852094797694

`n*(A168029(n)+A135503(n))`
-/

namespace A071231.P16296574852094797694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A168029 n + A135503 n)

end

end A071231.P16296574852094797694

namespace A071231

/-- `n*(A168029(n)+A135503(n))` -/
def P16296574852094797694.Spec : Prop :=
  ∀ n, P16296574852094797694.a n = A071231 n

end A071231

/-! ## A071231.P11842654893987786692

`n*(A168526(n)-A085744(n))`
-/

namespace A071231.P11842654893987786692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A168526 n - A085744 n)

end

end A071231.P11842654893987786692

namespace A071231

/-- `n*(A168526(n)-A085744(n))` -/
def P11842654893987786692.Spec : Prop :=
  ∀ n, P11842654893987786692.a n = A071231 n

end A071231

/-! ## A071231.P2155010901434158961

`n*(A168364(n)-A321672(n))`
-/

namespace A071231.P2155010901434158961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A168364 n - A321672 n)

end

end A071231.P2155010901434158961

namespace A071231

/-- `n*(A168364(n)-A321672(n))` -/
def P2155010901434158961.Spec : Prop :=
  ∀ n, P2155010901434158961.a n = A071231 n

end A071231

/-! ## A071231.P12960307454555248950

`n*A000290(n)*A021003(n)`
-/

namespace A071231.P12960307454555248950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000290 n * A021003 n)

end

end A071231.P12960307454555248950

namespace A071231

/-- `n*A000290(n)*A021003(n)` -/
def P12960307454555248950.Spec : Prop :=
  ∀ n, P12960307454555248950.a n = A071231 n

end A071231

/-! ## A071231.P1898708004711725998

`n*A021003(n)*A253909(n)`
-/

namespace A071231.P1898708004711725998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A021003 n * A253909 n)

end

end A071231.P1898708004711725998

namespace A071231

/-- `n*A021003(n)*A253909(n)` -/
def P1898708004711725998.Spec : Prop :=
  ∀ n, P1898708004711725998.a n = A071231 n

end A071231

/-! ## A071231.P12871576811023350156

`2*A037270(n)²-A001014(n)`
-/

namespace A071231.P12871576811023350156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037270 n ^ 2 - A001014 n

end

end A071231.P12871576811023350156

namespace A071231

/-- `2*A037270(n)²-A001014(n)` -/
def P12871576811023350156.Spec : Prop :=
  ∀ n, P12871576811023350156.a n = A071231 n

end A071231

/-! ## A071231.P9740327032960669833

`A037270(n)+A168124(n)-n²`
-/

namespace A071231.P9740327032960669833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n + (A168124 n - (n ^ 2 : ℤ))

end

end A071231.P9740327032960669833

namespace A071231

/-- `A037270(n)+A168124(n)-n²` -/
def P9740327032960669833.Spec : Prop :=
  ∀ n, P9740327032960669833.a n = A071231 n

end A071231

/-! ## A071231.P3556580225178908030

`(A085744(n)+A002411(n))*n²`
-/

namespace A071231.P3556580225178908030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085744 n + A002411 n) * (n ^ 2 : ℤ)

end

end A071231.P3556580225178908030

namespace A071231

/-- `(A085744(n)+A002411(n))*n²` -/
def P3556580225178908030.Spec : Prop :=
  ∀ n, P3556580225178908030.a n = A071231 n

end A071231

/-! ## A071231.P10063858552145611958

`(A167963(n)+A161680(n))*n²`
-/

namespace A071231.P10063858552145611958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167963 n + A161680 n) * (n ^ 2 : ℤ)

end

end A071231.P10063858552145611958

namespace A071231

/-- `(A167963(n)+A161680(n))*n²` -/
def P10063858552145611958.Spec : Prop :=
  ∀ n, P10063858552145611958.a n = A071231 n

end A071231

/-!
# A071232: a(n) = (n^6 + n^3)/2.

The programs for A071232, the canonical program `A071232.P17086031509511629369` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071232 has offset 0).

The definition of A071232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6+n^3)/2` (program `A071232.P16499632068895716457`, by `A071232.P16499632068895716457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071232.P16499632068895716457

`(n^6+n^3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071232.P16499632068895716457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 + n ^ 3 : ℚ) / 2

end

end A071232.P16499632068895716457

namespace A071232

/-- `(n^6+n^3)/2` -/
def P16499632068895716457.Spec : Prop :=
  ∀ n, P16499632068895716457.a n = (A071232 n : ℚ)

theorem P16499632068895716457.correct : P16499632068895716457.Spec := by
  intro n
  simp only [A071232, Nat.add_sub_cancel, A071232.P16499632068895716457.a, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071232

/-! ## A071232.P11631896635937339807

`A085744(n)+A000578(n)`
-/

namespace A071232.P11631896635937339807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085744 n + A000578 n

end

end A071232.P11631896635937339807

namespace A071232

/-- `A085744(n)+A000578(n)` -/
def P11631896635937339807.Spec : Prop :=
  ∀ n, P11631896635937339807.a n = A071232 n

theorem P11631896635937339807.correct : P11631896635937339807.Spec := by
  intro n
  simp only [A071232, Nat.add_sub_cancel, A071232.P11631896635937339807.a, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, A000578, A000578.P12162961755414704816.a, A085744, A085744.P6091616498061970500.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071232

/-! ## A071232.P12155079959254849438

`A001014(n)-A085744(n)`
-/

namespace A071232.P12155079959254849438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n - A085744 n

end

end A071232.P12155079959254849438

namespace A071232

/-- `A001014(n)-A085744(n)` -/
def P12155079959254849438.Spec : Prop :=
  ∀ n, P12155079959254849438.a n = A071232 n

theorem P12155079959254849438.correct : P12155079959254849438.Spec := by
  intro n
  simp only [A071232, Nat.add_sub_cancel, A071232.P12155079959254849438.a, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, A001014, A001014.P10270364271630987481.a, A085744, A085744.P6091616498061970500.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071232

/-! ## A071232.P17086031509511629369

`A000217(n^3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071232

/-- `A000217(n^3)` -/
def P17086031509511629369.Spec : Prop :=
  ∀ n, P17086031509511629369.a n = A071232 n

theorem P17086031509511629369.correct : P17086031509511629369.Spec := by
  intro n
  simp only [A071232]

end A071232

/-! ## A071232.P7627381448806934522

`C(n^3+1, 2)`
-/

namespace A071232.P7627381448806934522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 3 + 1) 2

end

end A071232.P7627381448806934522

namespace A071232

/-- `C(n^3+1, 2)` -/
def P7627381448806934522.Spec : Prop :=
  ∀ n, (P7627381448806934522.a n : ℤ) = A071232 n

end A071232

/-! ## A071232.P16334563464678749484

`sqrt(A249586(n))`
-/

namespace A071232.P16334563464678749484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A249586 n : ℝ)

end

end A071232.P16334563464678749484

namespace A071232

/-- `sqrt(A249586(n))` -/
def P16334563464678749484.Spec : Prop :=
  ∀ n, P16334563464678749484.a n = (A071232 n : ℝ)

end A071232

/-! ## A071232.P7096937947082686360

`n*A101378(n)`
-/

namespace A071232.P7096937947082686360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101378 n

end

end A071232.P7096937947082686360

namespace A071232

/-- `n*A101378(n)` -/
def P7096937947082686360.Spec : Prop :=
  ∀ n, P7096937947082686360.a n = A071232 n

end A071232

/-! ## A071232.P14234323708469343396

`floor(A060883(n)/2)`
-/

namespace A071232.P14234323708469343396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060883 n : ℚ) / 2⌋

end

end A071232.P14234323708469343396

namespace A071232

/-- `floor(A060883(n)/2)` -/
def P14234323708469343396.Spec : Prop :=
  ∀ n, P14234323708469343396.a n = A071232 n

end A071232

/-! ## A071232.P5719188524398296358

`n²*A027441(n)`
-/

namespace A071232.P5719188524398296358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A027441 n

end

end A071232.P5719188524398296358

namespace A071232

/-- `n²*A027441(n)` -/
def P5719188524398296358.Spec : Prop :=
  ∀ n, P5719188524398296358.a n = A071232 n

end A071232

/-! ## A071232.P5075498793465618602

`A085742(n)+∑[n]`
-/

namespace A071232.P5075498793465618602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085742 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071232.P5075498793465618602

namespace A071232

/-- `A085742(n)+∑[n]` -/
def P5075498793465618602.Spec : Prop :=
  ∀ n, P5075498793465618602.a n = A071232 n

end A071232

/-! ## A071232.P15952644748049170739

`∑[n]*A309372(n)`
-/

namespace A071232.P15952644748049170739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A309372 n

end

end A071232.P15952644748049170739

namespace A071232

/-- `∑[n]*A309372(n)` -/
def P15952644748049170739.Spec : Prop :=
  ∀ n, P15952644748049170739.a n = A071232 n

end A071232

/-! ## A071232.P15219712418008465907

`n²*∑[A212133(n)]`
-/

namespace A071232.P15219712418008465907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071232.P15219712418008465907

namespace A071232

/-- `n²*∑[A212133(n)]` -/
def P15219712418008465907.Spec : Prop :=
  ∀ n, P15219712418008465907.a n = A071232 n

end A071232

/-! ## A071232.P12857563105749652530

`(n+1)/2*A382612(n)`
-/

namespace A071232.P12857563105749652530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A382612 n : ℚ)

end

end A071232.P12857563105749652530

namespace A071232

/-- `(n+1)/2*A382612(n)` -/
def P12857563105749652530.Spec : Prop :=
  ∀ n, P12857563105749652530.a n = (A071232 n : ℚ)

theorem P12857563105749652530.correct : P12857563105749652530.Spec := by
  intro n
  simp only [A071232, Nat.add_sub_cancel, A071232.P12857563105749652530.a, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, A382612, A382612.P15305136820978696030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071232

/-! ## A071232.P10277066933796589276

`A091940(n+1)/2*n²`
-/

namespace A071232.P10277066933796589276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091940 (n + 1) : ℚ) / 2 * (n ^ 2 : ℚ)

end

end A071232.P10277066933796589276

namespace A071232

/-- `A091940(n+1)/2*n²` -/
def P10277066933796589276.Spec : Prop :=
  ∀ n, P10277066933796589276.a n = (A071232 n : ℚ)

theorem P10277066933796589276.correct : P10277066933796589276.Spec := by
  intro n
  simp only [A071232, Nat.add_sub_cancel, A071232.P10277066933796589276.a, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, A091940, A091940.P5886628268545826088.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071232

/-! ## A071232.P3986796891093264803

`A085743(n)+A037270(n)`
-/

namespace A071232.P3986796891093264803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085743 n + A037270 n

end

end A071232.P3986796891093264803

namespace A071232

/-- `A085743(n)+A037270(n)` -/
def P3986796891093264803.Spec : Prop :=
  ∀ n, P3986796891093264803.a n = A071232 n

end A071232

/-! ## A071232.P13461157952368284454

`A167963(n)+A135503(n)`
-/

namespace A071232.P13461157952368284454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n + A135503 n

end

end A071232.P13461157952368284454

namespace A071232

/-- `A167963(n)+A135503(n)` -/
def P13461157952368284454.Spec : Prop :=
  ∀ n, P13461157952368284454.a n = A071232 n

end A071232

/-! ## A071232.P6944616898724496196

`A168351(n)-A321672(n)`
-/

namespace A071232.P6944616898724496196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 n - A321672 n

end

end A071232.P6944616898724496196

namespace A071232

/-- `A168351(n)-A321672(n)` -/
def P6944616898724496196.Spec : Prop :=
  ∀ n, P6944616898724496196.a n = A071232 n

end A071232

/-! ## A071232.P12521730010212860543

`A036486(n)*A129957(n)`
-/

namespace A071232.P12521730010212860543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 n * A129957 n

end

end A071232.P12521730010212860543

namespace A071232

/-- `A036486(n)*A129957(n)` -/
def P12521730010212860543.Spec : Prop :=
  ∀ n, P12521730010212860543.a n = A071232 n

end A071232

/-! ## A071232.P4158888185424978823

`A027441(n)*A253909(n)`
-/

namespace A071232.P4158888185424978823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n * A253909 n

end

end A071232.P4158888185424978823

namespace A071232

/-- `A027441(n)*A253909(n)` -/
def P4158888185424978823.Spec : Prop :=
  ∀ n, P4158888185424978823.a n = A071232 n

end A071232

/-! ## A071232.P5126916512556381550

`A168627(n)%A053717(n)`
-/

namespace A071232.P5126916512556381550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168627 n) (A053717 n)

end

end A071232.P5126916512556381550

namespace A071232

/-- `A168627(n)%A053717(n)` -/
def P5126916512556381550.Spec : Prop :=
  ∀ n, P5126916512556381550.a n = A071232 n

end A071232

/-!
# A071233: a(n) = 2*(n-1)*(n^2 + 1).

The programs for A071233, the canonical program `A071233.P7626363443186640318` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071233 has offset 1).

The definition of A071233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*((n+1)²+1)` (program `A071233.P7626363443186640318`, by `A071233.P7626363443186640318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071233.P7626363443186640318

`2*n*((n+1)²+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071233

/-- `2*n*((n+1)²+1)` -/
def P7626363443186640318.Spec : Prop :=
  ∀ n, (P7626363443186640318.a n : ℤ) = A071233 (n + 1)

theorem P7626363443186640318.correct : P7626363443186640318.Spec := by
  intro n
  simp only [A071233, Nat.add_sub_cancel]

end A071233

/-! ## A071233.P16615809000249674989

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=40, a(3)=102`
-/

namespace A071233.P16615809000249674989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 40, 102] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A071233.P16615809000249674989

namespace A071233

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16615809000249674989.Spec : Prop :=
  ∀ n, P16615809000249674989.a n = A071233 (n + 1)

theorem P16615809000249674989.correct : P16615809000249674989.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A071233, Nat.add_sub_cancel, A071233.P16615809000249674989.a, A071233.P7626363443186640318.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A071233, Nat.add_sub_cancel, A071233.P16615809000249674989.a, A071233.P7626363443186640318.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A071233

/-! ## A071233.P7995831115545314377

`floor(n*∑[a(n-1)+4])` with `a(0)=4, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A071233.P7995831115545314377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071233.P7995831115545314377

namespace A071233

/-- `floor(n*∑[a(n-1)+4])` -/
def P7995831115545314377.Spec : Prop :=
  ∀ n, (P7995831115545314377.a n : ℤ) = A071233 (n + 1)

end A071233

/-! ## A071233.P6217710259111510297

`2*floor((n+1)/Δ[atan(n)])-2`
-/

namespace A071233.P6217710259111510297
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 1 : ℝ) / (f1 (n + 1) - f1 n)⌋ - 2

end

end A071233.P6217710259111510297

namespace A071233

/-- `2*floor((n+1)/Δ[atan(n)])-2` -/
def P6217710259111510297.Spec : Prop :=
  ∀ n, P6217710259111510297.a n = A071233 (n + 1)

end A071233

/-! ## A071233.P1318239362721153889

`lcm(2, (n*(n+2)+2)*2*n)`
-/

namespace A071233.P1318239362721153889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n * (n + 2) + 2) * (2 * n))

end

end A071233.P1318239362721153889

namespace A071233

/-- `lcm(2, (n*(n+2)+2)*2*n)` -/
def P1318239362721153889.Spec : Prop :=
  ∀ n, (P1318239362721153889.a n : ℤ) = A071233 (n + 1)

end A071233

/-! ## A071233.P11901864974049042778

`n*∑[a(n-1)+8]/2` with `a(0)=7, a(1)=13, a(2)=20`
-/

namespace A071233.P11901864974049042778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 13, 20] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A071233.P11901864974049042778

namespace A071233

/-- `n*∑[a(n-1)+8]/2` -/
def P11901864974049042778.Spec : Prop :=
  ∀ n, P11901864974049042778.a n = (A071233 (n + 1) : ℚ)

end A071233

/-! ## A071233.P2468232209564281853

`2*n*∑[or(1, 2*n)]+2*n`
-/

namespace A071233.P2468232209564281853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * n

end

end A071233.P2468232209564281853

namespace A071233

/-- `2*n*∑[or(1, 2*n)]+2*n` -/
def P2468232209564281853.Spec : Prop :=
  ∀ n, (P2468232209564281853.a n : ℤ) = A071233 (n + 1)

end A071233

/-! ## A071233.P11663356154631176376

`2*n*∑[xor(1, 2*n)]+2*n`
-/

namespace A071233.P11663356154631176376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * n

end

end A071233.P11663356154631176376

namespace A071233

/-- `2*n*∑[xor(1, 2*n)]+2*n` -/
def P11663356154631176376.Spec : Prop :=
  ∀ n, (P11663356154631176376.a n : ℤ) = A071233 (n + 1)

end A071233

/-! ## A071233.P17051509323893477028

`(n+1)*∑[a(n-1)+4]-2` with `a(0)=2, a(1)=4`
-/

namespace A071233.P17051509323893477028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 2

end

end A071233.P17051509323893477028

namespace A071233

/-- `(n+1)*∑[a(n-1)+4]-2` -/
def P17051509323893477028.Spec : Prop :=
  ∀ n, P17051509323893477028.a n = A071233 (n + 1)

end A071233

/-! ## A071233.P15097122459807456226

`lcm(n+1, (n+1)²+n²)+n-1`
-/

namespace A071233.P15097122459807456226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) ((n + 1) ^ 2 + n ^ 2) : ℤ) + ((n : ℤ) - 1)

end

end A071233.P15097122459807456226

namespace A071233

/-- `lcm(n+1, (n+1)²+n²)+n-1` -/
def P15097122459807456226.Spec : Prop :=
  ∀ n, P15097122459807456226.a n = A071233 (n + 1)

end A071233

/-! ## A071233.P11540460327031375763

`(C(2*n+1, 2)+n+2)*(n+1)-2`
-/

namespace A071233.P11540460327031375763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n + 1) 2 + (n + 2)) * (n + 1) : ℤ) - 2

end

end A071233.P11540460327031375763

namespace A071233

/-- `(C(2*n+1, 2)+n+2)*(n+1)-2` -/
def P11540460327031375763.Spec : Prop :=
  ∀ n, P11540460327031375763.a n = A071233 (n + 1)

theorem P11540460327031375763.correct : P11540460327031375763.Spec := by
  intro n
  simp only [A071233, Nat.add_sub_cancel, A071233.P11540460327031375763.a, A071233.P7626363443186640318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071233

/-! ## A071233.P5375812060037438900

`2*n+(C(2*n+1, 2)+n)*(n+1)`
-/

namespace A071233.P5375812060037438900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.choose (2 * n + 1) 2 + n) * (n + 1)

end

end A071233.P5375812060037438900

namespace A071233

/-- `2*n+(C(2*n+1, 2)+n)*(n+1)` -/
def P5375812060037438900.Spec : Prop :=
  ∀ n, (P5375812060037438900.a n : ℤ) = A071233 (n + 1)

theorem P5375812060037438900.correct : P5375812060037438900.Spec := by
  intro n
  simp only [A071233, Nat.add_sub_cancel, A071233.P5375812060037438900.a, A071233.P7626363443186640318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071233

/-! ## A071233.P4741233825806295429

`and(2*n+1, 2*n)*∑[2*n+1]+2*n`
-/

namespace A071233.P4741233825806295429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * n

end

end A071233.P4741233825806295429

namespace A071233

/-- `and(2*n+1, 2*n)*∑[2*n+1]+2*n` -/
def P4741233825806295429.Spec : Prop :=
  ∀ n, (P4741233825806295429.a n : ℤ) = A071233 (n + 1)

end A071233

/-! ## A071233.P8920095797586443030

`and(2*n+1, 2*n)+(n+1)*(n+1)*2*n`
-/

namespace A071233.P8920095797586443030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) + (n + 1) * ((n + 1) * (2 * n))

end

end A071233.P8920095797586443030

namespace A071233

/-- `and(2*n+1, 2*n)+(n+1)*(n+1)*2*n` -/
def P8920095797586443030.Spec : Prop :=
  ∀ n, (P8920095797586443030.a n : ℤ) = A071233 (n + 1)

end A071233

/-! ## A071233.P12481419660768287280

`A152619(n)+n^3`
-/

namespace A071233.P12481419660768287280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152619 n + (n ^ 3 : ℤ)

end

end A071233.P12481419660768287280

namespace A071233

/-- `A152619(n)+n^3` -/
def P12481419660768287280.Spec : Prop :=
  ∀ n, P12481419660768287280.a n = A071233 (n + 1)

theorem P12481419660768287280.correct : P12481419660768287280.Spec := by
  intro n
  simp only [A071233, Nat.add_sub_cancel, A071233.P12481419660768287280.a, A071233.P7626363443186640318.a, A152619, A152619.P2662992481695215872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071233

/-! ## A071233.P5318716694108180327

`∑[A033580(n)+2]-2`
-/

namespace A071233.P5318716694108180327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A071233.P5318716694108180327

namespace A071233

/-- `∑[A033580(n)+2]-2` -/
def P5318716694108180327.Spec : Prop :=
  ∀ n, P5318716694108180327.a n = A071233 (n + 1)

end A071233

/-! ## A071233.P3334930859801701582

`A163815(n)+n-n²`
-/

namespace A071233.P3334930859801701582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A071233.P3334930859801701582

namespace A071233

/-- `A163815(n)+n-n²` -/
def P3334930859801701582.Spec : Prop :=
  ∀ n, P3334930859801701582.a n = A071233 (n + 1)

theorem P3334930859801701582.correct : P3334930859801701582.Spec := by
  intro n
  simp only [A071233, Nat.add_sub_cancel, A071233.P3334930859801701582.a, A071233.P7626363443186640318.a, A163815, A163815.P6753554903624383614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071233

/-! ## A071233.P15832494853815753065

`2*n+A035006(n+1)`
-/

namespace A071233.P15832494853815753065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A035006 (n + 1)

end

end A071233.P15832494853815753065

namespace A071233

/-- `2*n+A035006(n+1)` -/
def P15832494853815753065.Spec : Prop :=
  ∀ n, P15832494853815753065.a n = A071233 (n + 1)

theorem P15832494853815753065.correct : P15832494853815753065.Spec := by
  intro n
  simp only [A071233, Nat.add_sub_cancel, A071233.P15832494853815753065.a, A071233.P7626363443186640318.a, A035006, A035006.P8233523708171598530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071233

/-! ## A071233.P6818236447708022576

`A047672(n+1)+n²-1`
-/

namespace A071233.P6818236447708022576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047672 (n + 1) + ((n ^ 2 : ℤ) - 1)

end

end A071233.P6818236447708022576

namespace A071233

/-- `A047672(n+1)+n²-1` -/
def P6818236447708022576.Spec : Prop :=
  ∀ n, P6818236447708022576.a n = A071233 (n + 1)

theorem P6818236447708022576.correct : P6818236447708022576.Spec := by
  intro n
  simp only [A071233, Nat.add_sub_cancel, A071233.P6818236447708022576.a, A071233.P7626363443186640318.a, A047672, A047672.P12291547493279462184.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071233

/-! ## A071233.P14652833783962463543

`A048395(n)+A014106(n)`
-/

namespace A071233.P14652833783962463543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n + A014106 n

end

end A071233.P14652833783962463543

namespace A071233

/-- `A048395(n)+A014106(n)` -/
def P14652833783962463543.Spec : Prop :=
  ∀ n, P14652833783962463543.a n = A071233 (n + 1)

theorem P14652833783962463543.correct : P14652833783962463543.Spec := by
  intro n
  simp only [A071233, Nat.add_sub_cancel, A071233.P14652833783962463543.a, A071233.P7626363443186640318.a, A014106, A014106.P1375640882817375549.a, A048395, A048395.P3571630861933578872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071233

/-!
# A071234: Smallest prime beginning and ending in 2n+1 or 0 if no such prime exists.

The programs for A071234, there is no canonical definition to state claims against.
-/

/-! ## A071234.P4558505821820842673

`A109864(a(n-1)+2)` with `a(0)=11, a(1)=3`
-/

namespace A071234.P4558505821820842673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 3] fun n a =>
  A109864 (a (n - 1) + 2).toNat

end

end A071234.P4558505821820842673

/-!
# A071235: a(n) = (n^12 + n^6)/2.

The programs for A071235, the canonical program `A071235.P15862479268261400035` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071235 has offset 0).

The definition of A071235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^12+n^6)/2` (program `A071235.P2283605775228597729`, by `A071235.P2283605775228597729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071235.P2283605775228597729

`(n^12+n^6)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071235.P2283605775228597729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 12 + n ^ 6 : ℚ) / 2

end

end A071235.P2283605775228597729

namespace A071235

/-- `(n^12+n^6)/2` -/
def P2283605775228597729.Spec : Prop :=
  ∀ n, P2283605775228597729.a n = (A071235 n : ℚ)

theorem P2283605775228597729.correct : P2283605775228597729.Spec := by
  intro n
  simp only [A071235, Nat.add_sub_cancel, A071235.P2283605775228597729.a, A071235.P15862479268261400035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071235

/-! ## A071235.P15862479268261400035

`C(n^6+1, 2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071235

/-- `C(n^6+1, 2)` -/
def P15862479268261400035.Spec : Prop :=
  ∀ n, (P15862479268261400035.a n : ℤ) = A071235 n

theorem P15862479268261400035.correct : P15862479268261400035.Spec := by
  intro n
  simp only [A071235]

end A071235

/-! ## A071235.P7700924628758637823

`n*A168412(n)`
-/

namespace A071235.P7700924628758637823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168412 n

end

end A071235.P7700924628758637823

namespace A071235

/-- `n*A168412(n)` -/
def P7700924628758637823.Spec : Prop :=
  ∀ n, P7700924628758637823.a n = A071235 n

end A071235

/-! ## A071235.P7178112937209408562

`n²*A168220(n)`
-/

namespace A071235.P7178112937209408562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168220 n

end

end A071235.P7178112937209408562

namespace A071235

/-- `n²*A168220(n)` -/
def P7178112937209408562.Spec : Prop :=
  ∀ n, P7178112937209408562.a n = A071235 n

end A071235

/-! ## A071235.P7390351273816864450

`n^3*A168187(n)`
-/

namespace A071235.P7390351273816864450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168187 n

end

end A071235.P7390351273816864450

namespace A071235

/-- `n^3*A168187(n)` -/
def P7390351273816864450.Spec : Prop :=
  ∀ n, P7390351273816864450.a n = A071235 n

end A071235

/-! ## A071235.P10536569951410955321

`n²²*A168124(n)`
-/

namespace A071235.P10536569951410955321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168124 n

end

end A071235.P10536569951410955321

namespace A071235

/-- `n²²*A168124(n)` -/
def P10536569951410955321.Spec : Prop :=
  ∀ n, P10536569951410955321.a n = A071235 n

end A071235

/-! ## A071235.P4159128580554611091

`A000584(n)*A168029(n)`
-/

namespace A071235.P4159128580554611091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168029 n

end

end A071235.P4159128580554611091

namespace A071235

/-- `A000584(n)*A168029(n)` -/
def P4159128580554611091.Spec : Prop :=
  ∀ n, P4159128580554611091.a n = A071235 n

end A071235

/-! ## A071235.P10391839790245472594

`A060886(n)*A168527(n)`
-/

namespace A071235.P10391839790245472594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060886 n * A168527 n

end

end A071235.P10391839790245472594

namespace A071235

/-- `A060886(n)*A168527(n)` -/
def P10391839790245472594.Spec : Prop :=
  ∀ n, P10391839790245472594.a n = A071235 n

end A071235

/-! ## A071235.P5828200557392844629

`A071232(n)²+A085744(n)²`
-/

namespace A071235.P5828200557392844629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n ^ 2 + A085744 n ^ 2

end

end A071235.P5828200557392844629

namespace A071235

/-- `A071232(n)²+A085744(n)²` -/
def P5828200557392844629.Spec : Prop :=
  ∀ n, P5828200557392844629.a n = A071235 n

end A071235

/-! ## A071235.P2518031118177023461

`A001014(n)+A071232(n)*A136006(n)`
-/

namespace A071235.P2518031118177023461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n + A071232 n * A136006 n

end

end A071235.P2518031118177023461

namespace A071235

/-- `A001014(n)+A071232(n)*A136006(n)` -/
def P2518031118177023461.Spec : Prop :=
  ∀ n, P2518031118177023461.a n = A071235 n

end A071235

/-! ## A071235.P5287454481764491847

`A085744(n²)+A001014(n)`
-/

namespace A071235.P5287454481764491847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085744 (n ^ 2) + A001014 n

end

end A071235.P5287454481764491847

namespace A071235

/-- `A085744(n²)+A001014(n)` -/
def P5287454481764491847.Spec : Prop :=
  ∀ n, P5287454481764491847.a n = A071235 n

end A071235

/-! ## A071235.P15456136422009017638

`A085744(n²)+A000578(n²)`
-/

namespace A071235.P15456136422009017638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085744 (n ^ 2) + A000578 (n ^ 2)

end

end A071235.P15456136422009017638

namespace A071235

/-- `A085744(n²)+A000578(n²)` -/
def P15456136422009017638.Spec : Prop :=
  ∀ n, P15456136422009017638.a n = A071235 n

end A071235

/-! ## A071235.P15699714629364913696

`A071232(n²)`
-/

namespace A071235.P15699714629364913696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 (n ^ 2)

end

end A071235.P15699714629364913696

namespace A071235

/-- `A071232(n²)` -/
def P15699714629364913696.Spec : Prop :=
  ∀ n, P15699714629364913696.a n = A071235 n

end A071235

/-! ## A071235.P1526640100073173505

`n²*A101378(n²)`
-/

namespace A071235.P1526640100073173505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A101378 (n ^ 2)

end

end A071235.P1526640100073173505

namespace A071235

/-- `n²*A101378(n²)` -/
def P1526640100073173505.Spec : Prop :=
  ∀ n, P1526640100073173505.a n = A071235 n

end A071235

/-!
# A071236: a(n) = (n^10 + n^5)/2.

The programs for A071236, the canonical program `A071236.P15431836850010159814` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071236 has offset 0).

The definition of A071236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^10+n^5)/2` (program `A071236.P18395561727419921763`, by `A071236.P18395561727419921763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071236.P15431836850010159814

`C(n^5+1, 2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071236

/-- `C(n^5+1, 2)` -/
def P15431836850010159814.Spec : Prop :=
  ∀ n, (P15431836850010159814.a n : ℤ) = A071236 n

theorem P15431836850010159814.correct : P15431836850010159814.Spec := by
  intro n
  simp only [A071236]

end A071236

/-! ## A071236.P18395561727419921763

`(n^10+n^5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071236.P18395561727419921763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 10 + n ^ 5 : ℚ) / 2

end

end A071236.P18395561727419921763

namespace A071236

/-- `(n^10+n^5)/2` -/
def P18395561727419921763.Spec : Prop :=
  ∀ n, P18395561727419921763.a n = (A071236 n : ℚ)

theorem P18395561727419921763.correct : P18395561727419921763.Spec := by
  intro n
  simp only [A071236, Nat.add_sub_cancel, A071236.P18395561727419921763.a, A071236.P15431836850010159814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071236

/-! ## A071236.P15577234504961960498

`n*A168196(n)`
-/

namespace A071236.P15577234504961960498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168196 n

end

end A071236.P15577234504961960498

namespace A071236

/-- `n*A168196(n)` -/
def P15577234504961960498.Spec : Prop :=
  ∀ n, P15577234504961960498.a n = A071236 n

end A071236

/-! ## A071236.P3254581205445614736

`n²*A168180(n)`
-/

namespace A071236.P3254581205445614736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168180 n

end

end A071236.P3254581205445614736

namespace A071236

/-- `n²*A168180(n)` -/
def P3254581205445614736.Spec : Prop :=
  ∀ n, P3254581205445614736.a n = A071236 n

end A071236

/-! ## A071236.P11561395008179878731

`n^3*A168123(n)`
-/

namespace A071236.P11561395008179878731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168123 n

end

end A071236.P11561395008179878731

namespace A071236

/-- `n^3*A168123(n)` -/
def P11561395008179878731.Spec : Prop :=
  ∀ n, P11561395008179878731.a n = A071236 n

end A071236

/-! ## A071236.P14659444368240701619

`n²²*A167963(n)`
-/

namespace A071236.P14659444368240701619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A167963 n

end

end A071236.P14659444368240701619

namespace A071236

/-- `n²²*A167963(n)` -/
def P14659444368240701619.Spec : Prop :=
  ∀ n, P14659444368240701619.a n = A071236 n

end A071236

/-! ## A071236.P987154828421239066

`A321672(n)+A168188(n)`
-/

namespace A071236.P987154828421239066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + A168188 n

end

end A071236.P987154828421239066

namespace A071236

/-- `A321672(n)+A168188(n)` -/
def P987154828421239066.Spec : Prop :=
  ∀ n, P987154828421239066.a n = A071236 n

end A071236

/-! ## A071236.P5888332047936873543

`A060884(n)*A168351(n)`
-/

namespace A071236.P5888332047936873543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n * A168351 n

end

end A071236.P5888332047936873543

namespace A071236

/-- `A060884(n)*A168351(n)` -/
def P5888332047936873543.Spec : Prop :=
  ∀ n, P5888332047936873543.a n = A071236 n

end A071236

/-! ## A071236.P17944518002090602022

`A168180(n)*A253909(n)`
-/

namespace A071236.P17944518002090602022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168180 n * A253909 n

end

end A071236.P17944518002090602022

namespace A071236

/-- `A168180(n)*A253909(n)` -/
def P17944518002090602022.Spec : Prop :=
  ∀ n, P17944518002090602022.a n = A071236 n

end A071236

/-! ## A071236.P13996536451183155590

`lcm(A167963(n), A168351(n))`
-/

namespace A071236.P13996536451183155590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167963 n) (A168351 n)

end

end A071236.P13996536451183155590

namespace A071236

/-- `lcm(A167963(n), A168351(n))` -/
def P13996536451183155590.Spec : Prop :=
  ∀ n, (P13996536451183155590.a n : ℤ) = A071236 n

end A071236

/-! ## A071236.P1907606989520230566

`A000584(n)+C(A000584(n), 2)`
-/

namespace A071236.P1907606989520230566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n + (Nat.choose (A000584 n).toNat 2 : ℤ)

end

end A071236.P1907606989520230566

namespace A071236

/-- `A000584(n)+C(A000584(n), 2)` -/
def P1907606989520230566.Spec : Prop :=
  ∀ n, P1907606989520230566.a n = A071236 n

end A071236

/-! ## A071236.P17679138148818417450

`A021003(n)+A168118(n)-n`
-/

namespace A071236.P17679138148818417450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 n + (A168118 n - (n : ℤ))

end

end A071236.P17679138148818417450

namespace A071236

/-- `A021003(n)+A168118(n)-n` -/
def P17679138148818417450.Spec : Prop :=
  ∀ n, P17679138148818417450.a n = A071236 n

end A071236

/-! ## A071236.P18022172562576683778

`n*A000290(n)*A168123(n)`
-/

namespace A071236.P18022172562576683778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000290 n * A168123 n)

end

end A071236.P18022172562576683778

namespace A071236

/-- `n*A000290(n)*A168123(n)` -/
def P18022172562576683778.Spec : Prop :=
  ∀ n, P18022172562576683778.a n = A071236 n

end A071236

/-! ## A071236.P4250171432311507955

`n*A000578(n)*A167963(n)`
-/

namespace A071236.P4250171432311507955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000578 n * A167963 n)

end

end A071236.P4250171432311507955

namespace A071236

/-- `n*A000578(n)*A167963(n)` -/
def P4250171432311507955.Spec : Prop :=
  ∀ n, P4250171432311507955.a n = A071236 n

end A071236

/-! ## A071236.P15226084481693618929

`n*A168123(n)*A253909(n)`
-/

namespace A071236.P15226084481693618929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A168123 n * A253909 n)

end

end A071236.P15226084481693618929

namespace A071236

/-- `n*A168123(n)*A253909(n)` -/
def P15226084481693618929.Spec : Prop :=
  ∀ n, P15226084481693618929.a n = A071236 n

end A071236

/-! ## A071236.P1724395351128729919

`n*A168627(n)/A253909(n)`
-/

namespace A071236.P1724395351128729919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A168627 n : ℚ) / (A253909 n : ℚ))

end

end A071236.P1724395351128729919

namespace A071236

/-- `n*A168627(n)/A253909(n)` -/
def P1724395351128729919.Spec : Prop :=
  ∀ n, P1724395351128729919.a n = (A071236 n : ℚ)

end A071236

/-! ## A071236.P1906682504978064961

`(A168067(n)+A135503(n))*n²`
-/

namespace A071236.P1906682504978064961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168067 n + A135503 n) * (n ^ 2 : ℤ)

end

end A071236.P1906682504978064961

namespace A071236

/-- `(A168067(n)+A135503(n))*n²` -/
def P1906682504978064961.Spec : Prop :=
  ∀ n, P1906682504978064961.a n = A071236 n

end A071236

/-! ## A071236.P16079600908939516538

`A168188(n)+n²*A135503(n)`
-/

namespace A071236.P16079600908939516538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168188 n + (n ^ 2 : ℤ) * A135503 n

end

end A071236.P16079600908939516538

namespace A071236

/-- `A168188(n)+n²*A135503(n)` -/
def P16079600908939516538.Spec : Prop :=
  ∀ n, P16079600908939516538.a n = A071236 n

end A071236

/-! ## A071236.P7216901199471720122

`(A168527(n)-A085744(n))*n²`
-/

namespace A071236.P7216901199471720122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168527 n - A085744 n) * (n ^ 2 : ℤ)

end

end A071236.P7216901199471720122

namespace A071236

/-- `(A168527(n)-A085744(n))*n²` -/
def P7216901199471720122.Spec : Prop :=
  ∀ n, P7216901199471720122.a n = A071236 n

end A071236

/-! ## A071236.P13657620299254073836

`(A168371(n)-A321672(n))*n²`
-/

namespace A071236.P13657620299254073836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168371 n - A321672 n) * (n ^ 2 : ℤ)

end

end A071236.P13657620299254073836

namespace A071236

/-- `(A168371(n)-A321672(n))*n²` -/
def P13657620299254073836.Spec : Prop :=
  ∀ n, P13657620299254073836.a n = A071236 n

end A071236

/-!
# A071237: a(n) = n*(n+1)*(n^2+1)/2.

The programs for A071237, the canonical program `A071237.P17628112169901081038` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071237 has offset 0).

The definition of A071237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²+1)/2` (program `A071237.P4668517561956264222`, by `A071237.P4668517561956264222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071237.P9317528317989222180

`(n²+1)*C(n+1, 2)`
-/

namespace A071237.P9317528317989222180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) * Nat.choose (n + 1) 2

end

end A071237.P9317528317989222180

namespace A071237

/-- `(n²+1)*C(n+1, 2)` -/
def P9317528317989222180.Spec : Prop :=
  ∀ n, (P9317528317989222180.a n : ℤ) = A071237 n

end A071237

/-! ## A071237.P4668517561956264222

`n*(n+1)*(n²+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071237.P4668517561956264222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n ^ 2 + 1) : ℚ) / 2

end

end A071237.P4668517561956264222

namespace A071237

/-- `n*(n+1)*(n²+1)/2` -/
def P4668517561956264222.Spec : Prop :=
  ∀ n, P4668517561956264222.a n = (A071237 n : ℚ)

theorem P4668517561956264222.correct : P4668517561956264222.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A071237, Nat.add_sub_cancel, A071237.P4668517561956264222.a, A071237.P17628112169901081038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A071237, Nat.add_sub_cancel, A071237.P4668517561956264222.a, A071237.P17628112169901081038.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A071237

/-! ## A071237.P17628112169901081038

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=15, a(3)=60, a(4)=170`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071237

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17628112169901081038.Spec : Prop :=
  ∀ n, P17628112169901081038.a n = A071237 n

theorem P17628112169901081038.correct : P17628112169901081038.Spec := by
  intro n
  simp only [A071237]

end A071237

/-! ## A071237.P10946171470431524628

`A000217(n)*A002522(n)`
-/

namespace A071237.P10946171470431524628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A002522 n

end

end A071237.P10946171470431524628

namespace A071237

/-- `A000217(n)*A002522(n)` -/
def P10946171470431524628.Spec : Prop :=
  ∀ n, P10946171470431524628.a n = A071237 n

end A071237

/-! ## A071237.P3066571890882555458

`lcm(n+1, lcm(n²+1, ∑[n]))`
-/

namespace A071237.P3066571890882555458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.lcm (n ^ 2 + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A071237.P3066571890882555458

namespace A071237

/-- `lcm(n+1, lcm(n²+1, ∑[n]))` -/
def P3066571890882555458.Spec : Prop :=
  ∀ n, (P3066571890882555458.a n : ℤ) = A071237 n

end A071237

/-! ## A071237.P2793853892381473608

`abs((n+1)*Δ[C(C(n, 2)+1, 2)])`
-/

namespace A071237.P2793853892381473608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A071237.P2793853892381473608

namespace A071237

/-- `abs((n+1)*Δ[C(C(n, 2)+1, 2)])` -/
def P2793853892381473608.Spec : Prop :=
  ∀ n, P2793853892381473608.a n = A071237 n

end A071237

/-! ## A071237.P122353392567619002

`floor(∑[a(n-1)+2]*∑[n])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A071237.P122353392567619002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A071237.P122353392567619002

namespace A071237

/-- `floor(∑[a(n-1)+2]*∑[n])` -/
def P122353392567619002.Spec : Prop :=
  ∀ n, (P122353392567619002.a n : ℤ) = A071237 n

end A071237

/-! ## A071237.P10940455416580999898

`C(∑[2*n], 2)-n*∑[n-1]`
-/

namespace A071237.P10940455416580999898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A071237.P10940455416580999898

namespace A071237

/-- `C(∑[2*n], 2)-n*∑[n-1]` -/
def P10940455416580999898.Spec : Prop :=
  ∀ n, P10940455416580999898.a n = A071237 n

end A071237

/-! ## A071237.P5981152919147322435

`∑[2*n]+C(n, 2)*∑[2*n+1]`
-/

namespace A071237.P5981152919147322435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A071237.P5981152919147322435

namespace A071237

/-- `∑[2*n]+C(n, 2)*∑[2*n+1]` -/
def P5981152919147322435.Spec : Prop :=
  ∀ n, (P5981152919147322435.a n : ℤ) = A071237 n

end A071237

/-! ## A071237.P7222464184312945366

`floor(A053699(n)/2)`
-/

namespace A071237.P7222464184312945366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053699 n : ℚ) / 2⌋

end

end A071237.P7222464184312945366

namespace A071237

/-- `floor(A053699(n)/2)` -/
def P7222464184312945366.Spec : Prop :=
  ∀ n, P7222464184312945366.a n = A071237 n

end A071237

/-! ## A071237.P14225394580883115171

`(n+1)*A006003(n)`
-/

namespace A071237.P14225394580883115171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006003 n

end

end A071237.P14225394580883115171

namespace A071237

/-- `(n+1)*A006003(n)` -/
def P14225394580883115171.Spec : Prop :=
  ∀ n, P14225394580883115171.a n = A071237 n

end A071237

/-! ## A071237.P14320692843580451332

`n/2*A053698(n)`
-/

namespace A071237.P14320692843580451332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A053698 n : ℚ)

end

end A071237.P14320692843580451332

namespace A071237

/-- `n/2*A053698(n)` -/
def P14320692843580451332.Spec : Prop :=
  ∀ n, P14320692843580451332.a n = (A071237 n : ℚ)

theorem P14320692843580451332.correct : P14320692843580451332.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A071237, Nat.add_sub_cancel, A071237.P14320692843580451332.a, A071237.P17628112169901081038.a, A053698, A053698.P17380684271159484773.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A071237, Nat.add_sub_cancel, A071237.P14320692843580451332.a, A071237.P17628112169901081038.a, A053698, A053698.P17380684271159484773.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A071237

/-! ## A071237.P17738078552044422214

`A100855(n)+n^3`
-/

namespace A071237.P17738078552044422214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n + (n ^ 3 : ℤ)

end

end A071237.P17738078552044422214

namespace A071237

/-- `A100855(n)+n^3` -/
def P17738078552044422214.Spec : Prop :=
  ∀ n, P17738078552044422214.a n = A071237 n

end A071237

/-! ## A071237.P17055946622168229235

`n²²-A171129(n)`
-/

namespace A071237.P17055946622168229235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A171129 n

end

end A071237.P17055946622168229235

namespace A071237

/-- `n²²-A171129(n)` -/
def P17055946622168229235.Spec : Prop :=
  ∀ n, P17055946622168229235.a n = A071237 n

end A071237

/-! ## A071237.P17076073693011564657

`A006528(n)+∑[n]²`
-/

namespace A071237.P17076073693011564657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A071237.P17076073693011564657

namespace A071237

/-- `A006528(n)+∑[n]²` -/
def P17076073693011564657.Spec : Prop :=
  ∀ n, P17076073693011564657.a n = A071237 n

end A071237

/-! ## A071237.P2580108265578136995

`∑[A059722(n)+∑[n]]`
-/

namespace A071237.P2580108265578136995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071237.P2580108265578136995

namespace A071237

/-- `∑[A059722(n)+∑[n]]` -/
def P2580108265578136995.Spec : Prop :=
  ∀ n, P2580108265578136995.a n = A071237 n

end A071237

/-! ## A071237.P3723994154731018864

`(n+1)*sqrt(A135509(n))`
-/

namespace A071237.P3723994154731018864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A135509 n : ℝ)

end

end A071237.P3723994154731018864

namespace A071237

/-- `(n+1)*sqrt(A135509(n))` -/
def P3723994154731018864.Spec : Prop :=
  ∀ n, P3723994154731018864.a n = (A071237 n : ℝ)

end A071237

/-! ## A071237.P14307428545377449939

`A100177(n+1)-(n+1)`
-/

namespace A071237.P14307428545377449939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100177 (n + 1) - (n + 1 : ℤ)

end

end A071237.P14307428545377449939

namespace A071237

/-- `A100177(n+1)-(n+1)` -/
def P14307428545377449939.Spec : Prop :=
  ∀ n, P14307428545377449939.a n = A071237 n

end A071237

/-! ## A071237.P17246514393932043169

`A006011(n)+A001621(n)`
-/

namespace A071237.P17246514393932043169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + A001621 n

end

end A071237.P17246514393932043169

namespace A071237

/-- `A006011(n)+A001621(n)` -/
def P17246514393932043169.Spec : Prop :=
  ∀ n, P17246514393932043169.a n = A071237 n

end A071237

/-! ## A071237.P15533564175849052659

`A027441(n)+A002411(n)`
-/

namespace A071237.P15533564175849052659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n + A002411 n

end

end A071237.P15533564175849052659

namespace A071237

/-- `A027441(n)+A002411(n)` -/
def P15533564175849052659.Spec : Prop :=
  ∀ n, P15533564175849052659.a n = A071237 n

end A071237

/-!
# A071238: a(n) = n*(n+1)*(2*n^2+1)/6.

The programs for A071238, the canonical program `A071238.P11801495092130521963` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071238 has offset 0).

The definition of A071238 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(2*n²+1)/6` (program `A071238.P18307124813054350926`, by `A071238.P18307124813054350926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071238.P18307124813054350926

`n*(n+1)*(2*n²+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071238.P18307124813054350926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (2 * n ^ 2 + 1) : ℚ) / 6

end

end A071238.P18307124813054350926

namespace A071238

/-- `n*(n+1)*(2*n²+1)/6` -/
def P18307124813054350926.Spec : Prop :=
  ∀ n, P18307124813054350926.a n = (A071238 n : ℚ)

theorem P18307124813054350926.correct : P18307124813054350926.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A071238, Nat.add_sub_cancel, A071238.P18307124813054350926.a, A071238.P11801495092130521963.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A071238, Nat.add_sub_cancel, A071238.P18307124813054350926.a, A071238.P11801495092130521963.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A071238

/-! ## A071238.P11801495092130521963

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=38, a(4)=110`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071238

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11801495092130521963.Spec : Prop :=
  ∀ n, P11801495092130521963.a n = A071238 n

theorem P11801495092130521963.correct : P11801495092130521963.Spec := by
  intro n
  simp only [A071238]

end A071238

/-! ## A071238.P2240559742577247307

`∑[C(2*n, 3)+n²]`
-/

namespace A071238.P2240559742577247307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071238.P2240559742577247307

namespace A071238

/-- `∑[C(2*n, 3)+n²]` -/
def P2240559742577247307.Spec : Prop :=
  ∀ n, (P2240559742577247307.a n : ℤ) = A071238 n

end A071238

/-! ## A071238.P18238966929454059069

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A071238.P18238966929454059069
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071238.P18238966929454059069

namespace A071238

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P18238966929454059069.Spec : Prop :=
  ∀ n, (P18238966929454059069.a n : ℤ) = A071238 n

end A071238

/-! ## A071238.P3524289292046653671

`∑[∑[∑[ogf((x+4x^2+3x^3)/(1-2x+x^2))]]]`
-/

namespace A071238.P3524289292046653671
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 3] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071238.P3524289292046653671

namespace A071238

/-- `∑[∑[∑[ogf((x+4x^2+3x^3)/(1-2x+x^2))]]]` -/
def P3524289292046653671.Spec : Prop :=
  ∀ n, P3524289292046653671.a n = A071238 n

end A071238

/-! ## A071238.P5156805666077018239

`∑[n]+2*(n+1)*C(n+1, 3)`
-/

namespace A071238.P5156805666077018239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * ((n + 1) * Nat.choose (n + 1) 3)

end

end A071238.P5156805666077018239

namespace A071238

/-- `∑[n]+2*(n+1)*C(n+1, 3)` -/
def P5156805666077018239.Spec : Prop :=
  ∀ n, (P5156805666077018239.a n : ℤ) = A071238 n

end A071238

/-! ## A071238.P3682901079942496637

`A330700(n)+n²`
-/

namespace A071238.P3682901079942496637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330700 n + (n ^ 2 : ℤ)

end

end A071238.P3682901079942496637

namespace A071238

/-- `A330700(n)+n²` -/
def P3682901079942496637.Spec : Prop :=
  ∀ n, P3682901079942496637.a n = A071238 n

end A071238

/-! ## A071238.P5375656945607845607

`∑[floor(A168547(n)/2)]`
-/

namespace A071238.P5375656945607845607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168547 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071238.P5375656945607845607

namespace A071238

/-- `∑[floor(A168547(n)/2)]` -/
def P5375656945607845607.Spec : Prop :=
  ∀ n, P5375656945607845607.a n = A071238 n

end A071238

/-! ## A071238.P12383880043612292185

`A112742(n)+∑[n²]`
-/

namespace A071238.P12383880043612292185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071238.P12383880043612292185

namespace A071238

/-- `A112742(n)+∑[n²]` -/
def P12383880043612292185.Spec : Prop :=
  ∀ n, P12383880043612292185.a n = A071238 n

end A071238

/-! ## A071238.P15896680948247234540

`∑[A035597(n)-n²]`
-/

namespace A071238.P15896680948247234540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071238.P15896680948247234540

namespace A071238

/-- `∑[A035597(n)-n²]` -/
def P15896680948247234540.Spec : Prop :=
  ∀ n, P15896680948247234540.a n = A071238 n

end A071238

/-! ## A071238.P9004923465652577375

`A288961(n+1)+∑[n]`
-/

namespace A071238.P9004923465652577375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288961 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071238.P9004923465652577375

namespace A071238

/-- `A288961(n+1)+∑[n]` -/
def P9004923465652577375.Spec : Prop :=
  ∀ n, P9004923465652577375.a n = A071238 n

end A071238

/-! ## A071238.P2076664979908126756

`2*A071239(n)-∑[n]`
-/

namespace A071238.P2076664979908126756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071239 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071238.P2076664979908126756

namespace A071238

/-- `2*A071239(n)-∑[n]` -/
def P2076664979908126756.Spec : Prop :=
  ∀ n, P2076664979908126756.a n = A071238 n

end A071238

/-! ## A071238.P890927478984059089

`A006011(n)+∑[∑[n²]]`
-/

namespace A071238.P890927478984059089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071238.P890927478984059089

namespace A071238

/-- `A006011(n)+∑[∑[n²]]` -/
def P890927478984059089.Spec : Prop :=
  ∀ n, P890927478984059089.a n = A071238 n

end A071238

/-! ## A071238.P2897351711801856031

`∑[A007290(n)]+∑[n]²`
-/

namespace A071238.P2897351711801856031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A071238.P2897351711801856031

namespace A071238

/-- `∑[A007290(n)]+∑[n]²` -/
def P2897351711801856031.Spec : Prop :=
  ∀ n, P2897351711801856031.a n = A071238 n

end A071238

/-! ## A071238.P6625349093326396848

`(n+1)/2*A005900(n)`
-/

namespace A071238.P6625349093326396848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A005900 n : ℚ)

end

end A071238.P6625349093326396848

namespace A071238

/-- `(n+1)/2*A005900(n)` -/
def P6625349093326396848.Spec : Prop :=
  ∀ n, P6625349093326396848.a n = (A071238 n : ℚ)

end A071238

/-! ## A071238.P6848493090200554585

`A081492(n+1)-(n+1)²`
-/

namespace A071238.P6848493090200554585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081492 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A071238.P6848493090200554585

namespace A071238

/-- `A081492(n+1)-(n+1)²` -/
def P6848493090200554585.Spec : Prop :=
  ∀ n, P6848493090200554585.a n = A071238 n

end A071238

/-! ## A071238.P6311608883204079657

`A000330(n)+∑[C(2*n, 3)]`
-/

namespace A071238.P6311608883204079657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071238.P6311608883204079657

namespace A071238

/-- `A000330(n)+∑[C(2*n, 3)]` -/
def P6311608883204079657.Spec : Prop :=
  ∀ n, P6311608883204079657.a n = A071238 n

end A071238

/-! ## A071238.P10414361922547220598

`a(n-1)+A135036(n)+n` with `a(0)=0`
-/

namespace A071238.P10414361922547220598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A135036 n + (n : ℤ))

end

end A071238.P10414361922547220598

namespace A071238

/-- `a(n-1)+A135036(n)+n` -/
def P10414361922547220598.Spec : Prop :=
  ∀ n, P10414361922547220598.a n = A071238 n

end A071238

/-! ## A071238.P607365945586006643

`A000292(n)+(n-1)*∑[n²]`
-/

namespace A071238.P607365945586006643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071238.P607365945586006643

namespace A071238

/-- `A000292(n)+(n-1)*∑[n²]` -/
def P607365945586006643.Spec : Prop :=
  ∀ n, P607365945586006643.a n = A071238 n

end A071238

/-! ## A071238.P10699998620004898662

`A050534(n)+A002418(n)`
-/

namespace A071238.P10699998620004898662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + A002418 n

end

end A071238.P10699998620004898662

namespace A071238

/-- `A050534(n)+A002418(n)` -/
def P10699998620004898662.Spec : Prop :=
  ∀ n, P10699998620004898662.a n = A071238 n

end A071238

/-!
# A071239: a(n) = n*(n+1)*(n^2 + 2)/6.

The programs for A071239, the canonical program `A071239.P14589606011497562075` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071239 has offset 0).

The definition of A071239 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²+2)/6` (program `A071239.P689842614044551797`, by `A071239.P689842614044551797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071239.P689842614044551797

`n*(n+1)*(n²+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071239.P689842614044551797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n ^ 2 + 2) : ℚ) / 6

end

end A071239.P689842614044551797

namespace A071239

/-- `n*(n+1)*(n²+2)/6` -/
def P689842614044551797.Spec : Prop :=
  ∀ n, P689842614044551797.a n = (A071239 n : ℚ)

theorem P689842614044551797.correct : P689842614044551797.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A071239, Nat.add_sub_cancel, A071239.P689842614044551797.a, A071239.P14589606011497562075.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A071239, Nat.add_sub_cancel, A071239.P689842614044551797.a, A071239.P14589606011497562075.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A071239

/-! ## A071239.P14589606011497562075

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=22, a(4)=60`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071239

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14589606011497562075.Spec : Prop :=
  ∀ n, P14589606011497562075.a n = A071239 n

theorem P14589606011497562075.correct : P14589606011497562075.Spec := by
  intro n
  simp only [A071239]

end A071239

/-! ## A071239.P10242761789199575564

`∑[∑[n]]+C(n², 2)/3`
-/

namespace A071239.P10242761789199575564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 3

end

end A071239.P10242761789199575564

namespace A071239

/-- `∑[∑[n]]+C(n², 2)/3` -/
def P10242761789199575564.Spec : Prop :=
  ∀ n, P10242761789199575564.a n = (A071239 n : ℚ)

end A071239

/-! ## A071239.P9690884871729645802

`∑[∑[n]]+n*∑[C(n, 2)]`
-/

namespace A071239.P9690884871729645802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A071239.P9690884871729645802

namespace A071239

/-- `∑[∑[n]]+n*∑[C(n, 2)]` -/
def P9690884871729645802.Spec : Prop :=
  ∀ n, (P9690884871729645802.a n : ℤ) = A071239 n

end A071239

/-! ## A071239.P2652021054897982970

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A071239.P2652021054897982970
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071239.P2652021054897982970

namespace A071239

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P2652021054897982970.Spec : Prop :=
  ∀ n, (P2652021054897982970.a n : ℤ) = A071239 n

end A071239

/-! ## A071239.P6520070514717108436

`∑[∑[C(2*n, 2)]-(n²-n)]`
-/

namespace A071239.P6520070514717108436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071239.P6520070514717108436

namespace A071239

/-- `∑[∑[C(2*n, 2)]-(n²-n)]` -/
def P6520070514717108436.Spec : Prop :=
  ∀ n, P6520070514717108436.a n = A071239 n

end A071239

/-! ## A071239.P5127838452562366686

`∑[∑[∑[ogf((x+x^2+2x^3)/(1-2x+x^2))]]]`
-/

namespace A071239.P5127838452562366686
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071239.P5127838452562366686

namespace A071239

/-- `∑[∑[∑[ogf((x+x^2+2x^3)/(1-2x+x^2))]]]` -/
def P5127838452562366686.Spec : Prop :=
  ∀ n, P5127838452562366686.a n = A071239 n

end A071239

/-! ## A071239.P17656811521727011914

`∑[∑[C(abs(1-n)+n, 2)+1]-1]`
-/

namespace A071239.P17656811521727011914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|1 - (n : ℤ)| + (n : ℤ)).toNat 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071239.P17656811521727011914

namespace A071239

/-- `∑[∑[C(abs(1-n)+n, 2)+1]-1]` -/
def P17656811521727011914.Spec : Prop :=
  ∀ n, P17656811521727011914.a n = A071239 n

end A071239

/-! ## A071239.P14050287975800539914

`Δ[C(C(n+1, 2), 2)]/3+n*C(n+1, 3)`
-/

namespace A071239.P14050287975800539914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 1) 2) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3 + (n * Nat.choose (n + 1) 3 : ℚ)

end

end A071239.P14050287975800539914

namespace A071239

/-- `Δ[C(C(n+1, 2), 2)]/3+n*C(n+1, 3)` -/
def P14050287975800539914.Spec : Prop :=
  ∀ n, P14050287975800539914.a n = (A071239 n : ℚ)

end A071239

/-! ## A071239.P7569945964110496701

`∑[(n-1)*2*n-(n-2-a(n-1))]` with `a(0)=0`
-/

namespace A071239.P7569945964110496701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n : ℤ) - 1) * (2 * n : ℤ) - ((n : ℤ) - 2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071239.P7569945964110496701

namespace A071239

/-- `∑[(n-1)*2*n-(n-2-a(n-1))]` -/
def P7569945964110496701.Spec : Prop :=
  ∀ n, P7569945964110496701.a n = A071239 n

end A071239

/-! ## A071239.P9755523323967151338

`n/3*A064808(n)`
-/

namespace A071239.P9755523323967151338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A064808 n : ℚ)

end

end A071239.P9755523323967151338

namespace A071239

/-- `n/3*A064808(n)` -/
def P9755523323967151338.Spec : Prop :=
  ∀ n, P9755523323967151338.a n = (A071239 n : ℚ)

end A071239

/-! ## A071239.P18226719157598366291

`A008911(n)+∑[∑[n]]`
-/

namespace A071239.P18226719157598366291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071239.P18226719157598366291

namespace A071239

/-- `A008911(n)+∑[∑[n]]` -/
def P18226719157598366291.Spec : Prop :=
  ∀ n, P18226719157598366291.a n = A071239 n

end A071239

/-! ## A071239.P11713377016729143035

`∑[A139488(n)-(n+1)]`
-/

namespace A071239.P11713377016729143035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139488 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071239.P11713377016729143035

namespace A071239

/-- `∑[A139488(n)-(n+1)]` -/
def P11713377016729143035.Spec : Prop :=
  ∀ n, P11713377016729143035.a n = A071239 n

end A071239

/-! ## A071239.P13968522570979364321

`A384852(n+1)-∑[n]`
-/

namespace A071239.P13968522570979364321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384852 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071239.P13968522570979364321

namespace A071239

/-- `A384852(n+1)-∑[n]` -/
def P13968522570979364321.Spec : Prop :=
  ∀ n, P13968522570979364321.a n = A071239 n

end A071239

/-! ## A071239.P15027223016849948

`∑[A007290(n)+∑[n²]]`
-/

namespace A071239.P15027223016849948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071239.P15027223016849948

namespace A071239

/-- `∑[A007290(n)+∑[n²]]` -/
def P15027223016849948.Spec : Prop :=
  ∀ n, P15027223016849948.a n = A071239 n

end A071239

/-! ## A071239.P17222236427433159310

`A001621(n)-∑[∑[n²]]`
-/

namespace A071239.P17222236427433159310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071239.P17222236427433159310

namespace A071239

/-- `A001621(n)-∑[∑[n²]]` -/
def P17222236427433159310.Spec : Prop :=
  ∀ n, P17222236427433159310.a n = A071239 n

end A071239

/-! ## A071239.P18386563464678754841

`∑[A034262(n)-∑[n²]]`
-/

namespace A071239.P18386563464678754841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071239.P18386563464678754841

namespace A071239

/-- `∑[A034262(n)-∑[n²]]` -/
def P18386563464678754841.Spec : Prop :=
  ∀ n, P18386563464678754841.a n = A071239 n

end A071239

/-! ## A071239.P1306986076177851520

`∑[n]²-∑[A051925(n)]`
-/

namespace A071239.P1306986076177851520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A071239.P1306986076177851520

namespace A071239

/-- `∑[n]²-∑[A051925(n)]` -/
def P1306986076177851520.Spec : Prop :=
  ∀ n, P1306986076177851520.a n = A071239 n

end A071239

/-! ## A071239.P554490034100113261

`(n+1)/2*A006527(n)`
-/

namespace A071239.P554490034100113261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A006527 n : ℚ)

end

end A071239.P554490034100113261

namespace A071239

/-- `(n+1)/2*A006527(n)` -/
def P554490034100113261.Spec : Prop :=
  ∀ n, P554490034100113261.a n = (A071239 n : ℚ)

end A071239

/-! ## A071239.P8741638023526096715

`∑[∑[A116735(n+1)-1]]`
-/

namespace A071239.P8741638023526096715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116735 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071239.P8741638023526096715

namespace A071239

/-- `∑[∑[A116735(n+1)-1]]` -/
def P8741638023526096715.Spec : Prop :=
  ∀ n, P8741638023526096715.a n = A071239 n

end A071239

/-!
# A071240: Arithmetic mean of k and R(k) where k is a number using only odd digits and R(k) is its digit reversal (A004086).

The programs for A071240, there is no canonical definition to state claims against.
-/

/-! ## A071240.P15026399696756687342

`(A014261(n+1)+A004086(A014261(n+1)))/2`
-/

namespace A071240.P15026399696756687342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014261 (n + 1) + A004086 (A014261 (n + 1)).toNat : ℚ) / 2

end

end A071240.P15026399696756687342

/-! ## A071240.P10218224596503071966

`A056964(A014261(n+1))/2`
-/

namespace A071240.P10218224596503071966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056964 (A014261 (n + 1)).toNat : ℚ) / 2

end

end A071240.P10218224596503071966

/-! ## A071240.P11897863308177850092

`A079827(A014261(n+1))`
-/

namespace A071240.P11897863308177850092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079827 (A014261 (n + 1)).toNat

end

end A071240.P11897863308177850092

/-! ## A071240.P17268661776270286137

`A056964(record[A225985(n+1)])/2`
-/

namespace A071240.P17268661776270286137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225985 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056964 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A071240.P17268661776270286137

/-! ## A071240.P18274422329360546023

`A004525(A056964(record[A225985(n+1)]))`
-/

namespace A071240.P18274422329360546023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A056964 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A071240.P18274422329360546023

/-! ## A071240.P5700114459017197408

`2^A008683(A002148(n))*A056964(A014261(n+1))`
-/

namespace A071240.P5700114459017197408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ) * (A056964 (A014261 (n + 1)).toNat : ℚ)

end

end A071240.P5700114459017197408

/-!
# A071241: Arithmetic mean of k and R(k) where k is the n-th nonnegative number using only even digits and R(k) is its digit reversal (A004086).

The programs for A071241, there is no canonical definition to state claims against.
-/

/-! ## A071241.P7862259750192499236

`(A014263(n+1)+A004086(A014263(n+1)))/2`
-/

namespace A071241.P7862259750192499236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (n + 1) + A004086 (A014263 (n + 1)).toNat : ℚ) / 2

end

end A071241.P7862259750192499236

/-! ## A071241.P5706756299802963807

`A007091(n)+A007091(A030104(n))`
-/

namespace A071241.P5706756299802963807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n + A007091 (A030104 n).toNat

end

end A071241.P5706756299802963807

/-! ## A071241.P10783696535865401675

`A007091(n-A055951(n))+A007091(n)`
-/

namespace A071241.P10783696535865401675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 ((n : ℤ) - A055951 n).toNat + A007091 n

end

end A071241.P10783696535865401675

/-! ## A071241.P6387623410764610117

`A007091(n)+A004086(A014263(n+1)/2)`
-/

namespace A071241.P6387623410764610117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n + A004086 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A071241.P6387623410764610117

/-! ## A071241.P11004295346034194552

`A014682(A014263(n+1))+A004086(A007091(n))`
-/

namespace A071241.P11004295346034194552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014263 (n + 1)).toNat + A004086 (A007091 n).toNat

end

end A071241.P11004295346034194552

/-! ## A071241.P410728287773189319

`A007094(A037467(n))+A004086(A007091(n))`
-/

namespace A071241.P410728287773189319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037467 n).toNat + A004086 (A007091 n).toNat

end

end A071241.P410728287773189319

/-! ## A071241.P16673487828979828621

`A007094(A037467(n))+A004086(A014263(n+1)/2)`
-/

namespace A071241.P16673487828979828621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037467 n).toNat + A004086 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A071241.P16673487828979828621

/-! ## A071241.P1082980328618704592

`A056964(A007091(n))`
-/

namespace A071241.P1082980328618704592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A007091 n).toNat

end

end A071241.P1082980328618704592

/-! ## A071241.P11623901947768192003

`A056964(A014263(n+1)/2)`
-/

namespace A071241.P11623901947768192003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A071241.P11623901947768192003

/-! ## A071241.P5932577077178088590

`A056964(eq[0, A102675(n)])`
-/

namespace A071241.P5932577077178088590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071241.P5932577077178088590

/-! ## A071241.P1806949614849970922

`A056964(eq[n, A004520(n)-n])`
-/

namespace A071241.P1806949614849970922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071241.P1806949614849970922

/-! ## A071241.P7191586143973598693

`A056964(record[A106747(n)])`
-/

namespace A071241.P7191586143973598693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071241.P7191586143973598693

/-!
# A071242: Arithmetic mean of n and R(n) where n is a number such that the least significant digit and the most significant digits are of same parity and R(n) is its digit reversal (A004086).

The programs for A071242, there is no canonical definition to state claims against.
-/

/-! ## A071242.P8979089037364309306

`A275772(abs(1-n)+1)%∑[A193092(n)]`
-/

namespace A071242.P8979089037364309306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275772 (|1 - (n : ℤ)| + 1).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071242.P8979089037364309306

/-! ## A071242.P2098111741150154264

`A275772(round(sqrt(n²+1)))%(A332611(n+1)+1)`
-/

namespace A071242.P2098111741150154264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275772 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A332611 (n + 1) + 1)

end

end A071242.P2098111741150154264

/-! ## A071242.P10278379092996408447

`A275772(A028310(n))%∑[A193092(n)]²`
-/

namespace A071242.P10278379092996408447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275772 (A028310 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A071242.P10278379092996408447

/-! ## A071242.P17558582242612360539

`A275772(n)+a(A000038(A332611(n+1)))` with `a(0)=0`
-/

namespace A071242.P17558582242612360539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A275772 n + a (A000038 (A332611 (n + 1)).toNat).toNat

end

end A071242.P17558582242612360539

/-! ## A071242.P5320459982009182659

`A275772(n)-a(A142150(A136260(n+1)))` with `a(0)=0`
-/

namespace A071242.P5320459982009182659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A275772 n - a (A142150 (A136260 (n + 1)).toNat).toNat

end

end A071242.P5320459982009182659

/-! ## A071242.P10115134315263722086

`A275772(C(2, n+2)+n)-A142150(A136260(n+1))`
-/

namespace A071242.P10115134315263722086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275772 (Nat.choose 2 (n + 2) + n) - A142150 (A136260 (n + 1)).toNat

end

end A071242.P10115134315263722086

/-! ## A071242.P8035335003350747597

`A275772(A028310(n))-A142150(A136260(n+1))`
-/

namespace A071242.P8035335003350747597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275772 (A028310 n).toNat - A142150 (A136260 (n + 1)).toNat

end

end A071242.P8035335003350747597

/-! ## A071242.P7501897431179278019

`A275772(A028310(n))-A036987(A332611(n+1))`
-/

namespace A071242.P7501897431179278019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275772 (A028310 n).toNat - A036987 (A332611 (n + 1)).toNat

end

end A071242.P7501897431179278019

/-! ## A071242.P2626019663595687165

`A275772(A065033(2*n))-A000007(A004918(n+1))`
-/

namespace A071242.P2626019663595687165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275772 (A065033 (2 * n)).toNat - A000007 (A004918 (n + 1)).toNat

end

end A071242.P2626019663595687165

/-! ## A071242.P7318413022539924724

`A275772(A123108(2*n))-A036987(A332611(n+1))`
-/

namespace A071242.P7318413022539924724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275772 (A123108 (2 * n)).toNat - A036987 (A332611 (n + 1)).toNat

end

end A071242.P7318413022539924724

/-!
# A071243: Record terms in A005179.

The programs for A071243, there is no canonical definition to state claims against.
-/

/-! ## A071243.P6354541072708529048

`record[A005179(n+1)]`
-/

namespace A071243.P6354541072708529048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071243.P6354541072708529048

/-! ## A071243.P14560100165698080673

`record[A037019(n+1)]`
-/

namespace A071243.P14560100165698080673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071243.P14560100165698080673

/-! ## A071243.P16595404752738495119

`record[A099315(n+1)]`
-/

namespace A071243.P16595404752738495119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071243.P16595404752738495119

/-! ## A071243.P14358237714058383903

`record[A382492(n+1)]`
-/

namespace A071243.P14358237714058383903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071243.P14358237714058383903

/-! ## A071243.P16625797666747668518

`record[sqrt(A130279(n+1))]`
-/

namespace A071243.P16625797666747668518
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130279 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071243.P16625797666747668518

/-!
# A071244: a(n) = n*(n-1)*(n^2 + 2)/6.

The programs for A071244, the canonical program `A071244.P10704621508636100242` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071244 has offset 0).

The definition of A071244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n²+2)/6` (program `A071244.P1579936116794289896`, by `A071244.P1579936116794289896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071244.P1579936116794289896

`n*(n-1)*(n²+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071244.P1579936116794289896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * (n ^ 2 + 2 : ℤ) : ℚ) / 6

end

end A071244.P1579936116794289896

namespace A071244

/-- `n*(n-1)*(n²+2)/6` -/
def P1579936116794289896.Spec : Prop :=
  ∀ n, P1579936116794289896.a n = (A071244 n : ℚ)

theorem P1579936116794289896.correct : P1579936116794289896.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A071244, Nat.add_sub_cancel, A071244.P1579936116794289896.a, A071244.P10704621508636100242.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A071244, Nat.add_sub_cancel, A071244.P1579936116794289896.a, A071244.P10704621508636100242.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A071244

/-! ## A071244.P10704621508636100242

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=11, a(4)=36`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071244

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10704621508636100242.Spec : Prop :=
  ∀ n, P10704621508636100242.a n = A071244 n

theorem P10704621508636100242.correct : P10704621508636100242.Spec := by
  intro n
  simp only [A071244]

end A071244

/-! ## A071244.P15904085182788681070

`∑[n²-n]+n*C(n, 3)`
-/

namespace A071244.P15904085182788681070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n * Nat.choose n 3 : ℤ)

end

end A071244.P15904085182788681070

namespace A071244

/-- `∑[n²-n]+n*C(n, 3)` -/
def P15904085182788681070.Spec : Prop :=
  ∀ n, P15904085182788681070.a n = A071244 n

end A071244

/-! ## A071244.P18209450314530442227

`(n+2)*C(n, 3)+n²-n`
-/

namespace A071244.P18209450314530442227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.choose n 3 : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A071244.P18209450314530442227

namespace A071244

/-- `(n+2)*C(n, 3)+n²-n` -/
def P18209450314530442227.Spec : Prop :=
  ∀ n, P18209450314530442227.a n = A071244 n

end A071244

/-! ## A071244.P4594765098665407933

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5`
-/

namespace A071244.P4594765098665407933
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 5] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071244.P4594765098665407933

namespace A071244

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P4594765098665407933.Spec : Prop :=
  ∀ n, (P4594765098665407933.a n : ℤ) = A071244 n

end A071244

/-! ## A071244.P18188414894053559800

`n*A004006(n)-∑[∑[n]]`
-/

namespace A071244.P18188414894053559800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004006 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071244.P18188414894053559800

namespace A071244

/-- `n*A004006(n)-∑[∑[n]]` -/
def P18188414894053559800.Spec : Prop :=
  ∀ n, P18188414894053559800.a n = A071244 n

end A071244

/-! ## A071244.P1638607575510211342

`A384852(n)+A007290(n)`
-/

namespace A071244.P1638607575510211342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384852 n + A007290 n

end

end A071244.P1638607575510211342

namespace A071244

/-- `A384852(n)+A007290(n)` -/
def P1638607575510211342.Spec : Prop :=
  ∀ n, P1638607575510211342.a n = A071244 n

end A071244

/-! ## A071244.P2200982892759591671

`A004320(n)-A027444(n)`
-/

namespace A071244.P2200982892759591671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n - A027444 n

end

end A071244.P2200982892759591671

namespace A071244

/-- `A004320(n)-A027444(n)` -/
def P2200982892759591671.Spec : Prop :=
  ∀ n, P2200982892759591671.a n = A071244 n

end A071244

/-! ## A071244.P6229581871933914397

`A071239(n)-A006527(n)`
-/

namespace A071244.P6229581871933914397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n - A006527 n

end

end A071244.P6229581871933914397

namespace A071244

/-- `A071239(n)-A006527(n)` -/
def P6229581871933914397.Spec : Prop :=
  ∀ n, P6229581871933914397.a n = A071244 n

end A071244

/-! ## A071244.P4174604411712481160

`A071246(n)-A008911(n)`
-/

namespace A071244.P4174604411712481160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071246 n - A008911 n

end

end A071244.P4174604411712481160

namespace A071244

/-- `A071246(n)-A008911(n)` -/
def P4174604411712481160.Spec : Prop :=
  ∀ n, P4174604411712481160.a n = A071244 n

end A071244

/-! ## A071244.P7151420794247897958

`A071252(n)-A071245(n)`
-/

namespace A071244.P7151420794247897958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n - A071245 n

end

end A071244.P7151420794247897958

namespace A071244

/-- `A071252(n)-A071245(n)` -/
def P7151420794247897958.Spec : Prop :=
  ∀ n, P7151420794247897958.a n = A071244 n

end A071244

/-! ## A071244.P16440211549936182042

`A257055(n)-A004006(n)`
-/

namespace A071244.P16440211549936182042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n - A004006 n

end

end A071244.P16440211549936182042

namespace A071244

/-- `A257055(n)-A004006(n)` -/
def P16440211549936182042.Spec : Prop :=
  ∀ n, P16440211549936182042.a n = A071244 n

end A071244

/-! ## A071244.P8910268642985763012

`A332697(n)-A147656(n)`
-/

namespace A071244.P8910268642985763012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332697 n - A147656 n

end

end A071244.P8910268642985763012

namespace A071244

/-- `A332697(n)-A147656(n)` -/
def P8910268642985763012.Spec : Prop :=
  ∀ n, P8910268642985763012.a n = A071244 n

end A071244

/-! ## A071244.P18084227540148215340

`A325517(n)-A212578(n)`
-/

namespace A071244.P18084227540148215340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325517 n - A212578 n

end

end A071244.P18084227540148215340

namespace A071244

/-- `A325517(n)-A212578(n)` -/
def P18084227540148215340.Spec : Prop :=
  ∀ n, P18084227540148215340.a n = A071244 n

end A071244

/-! ## A071244.P4077493654027396811

`A006325(n)+∑[A161680(n)]`
-/

namespace A071244.P4077493654027396811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071244.P4077493654027396811

namespace A071244

/-- `A006325(n)+∑[A161680(n)]` -/
def P4077493654027396811.Spec : Prop :=
  ∀ n, P4077493654027396811.a n = A071244 n

end A071244

/-! ## A071244.P6228066283895175296

`A328152(n+1)+A034827(n)`
-/

namespace A071244.P6228066283895175296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328152 (n + 1) + A034827 n

end

end A071244.P6228066283895175296

namespace A071244

/-- `A328152(n+1)+A034827(n)` -/
def P6228066283895175296.Spec : Prop :=
  ∀ n, P6228066283895175296.a n = A071244 n

end A071244

/-! ## A071244.P2767503890308568860

`A008498(n)-A005712(n+2)`
-/

namespace A071244.P2767503890308568860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008498 n - A005712 (n + 2)

end

end A071244.P2767503890308568860

namespace A071244

/-- `A008498(n)-A005712(n+2)` -/
def P2767503890308568860.Spec : Prop :=
  ∀ n, P2767503890308568860.a n = A071244 n

end A071244

/-! ## A071244.P14299663868576091967

`A103290(n)+A007290(n)/2`
-/

namespace A071244.P14299663868576091967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103290 n : ℚ) + (A007290 n : ℚ) / 2

end

end A071244.P14299663868576091967

namespace A071244

/-- `A103290(n)+A007290(n)/2` -/
def P14299663868576091967.Spec : Prop :=
  ∀ n, P14299663868576091967.a n = (A071244 n : ℚ)

end A071244

/-! ## A071244.P8273946557729737292

`A004006(n)+A006325(n)-n`
-/

namespace A071244.P8273946557729737292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (A006325 n - (n : ℤ))

end

end A071244.P8273946557729737292

namespace A071244

/-- `A004006(n)+A006325(n)-n` -/
def P8273946557729737292.Spec : Prop :=
  ∀ n, P8273946557729737292.a n = A071244 n

end A071244

/-! ## A071244.P5170751476364541934

`A006325(n+1)-A006003(n)`
-/

namespace A071244.P5170751476364541934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) - A006003 n

end

end A071244.P5170751476364541934

namespace A071244

/-- `A006325(n+1)-A006003(n)` -/
def P5170751476364541934.Spec : Prop :=
  ∀ n, P5170751476364541934.a n = A071244 n

end A071244

/-!
# A071245: a(n) = n*(n-1)*(2*n^2 + 1)/6.

The programs for A071245, the canonical program `A071245.P1110425705431140904` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071245 has offset 0).

The definition of A071245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(2*n²+1)/6` (program `A071245.P3711746961340645664`, by `A071245.P3711746961340645664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071245.P3711746961340645664

`n*(n-1)*(2*n²+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071245.P3711746961340645664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * (2 * n ^ 2 + 1 : ℤ) : ℚ) / 6

end

end A071245.P3711746961340645664

namespace A071245

/-- `n*(n-1)*(2*n²+1)/6` -/
def P3711746961340645664.Spec : Prop :=
  ∀ n, P3711746961340645664.a n = (A071245 n : ℚ)

theorem P3711746961340645664.correct : P3711746961340645664.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A071245, Nat.add_sub_cancel, A071245.P3711746961340645664.a, A071245.P1110425705431140904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A071245, Nat.add_sub_cancel, A071245.P3711746961340645664.a, A071245.P1110425705431140904.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A071245

/-! ## A071245.P1110425705431140904

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=19, a(4)=66`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071245

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1110425705431140904.Spec : Prop :=
  ∀ n, P1110425705431140904.a n = A071245 n

theorem P1110425705431140904.correct : P1110425705431140904.Spec := by
  intro n
  simp only [A071245]

end A071245

/-! ## A071245.P590646241321278929

`∑[C(2*n+1, 3)]-n^3`
-/

namespace A071245.P590646241321278929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 3 : ℤ)

end

end A071245.P590646241321278929

namespace A071245

/-- `∑[C(2*n+1, 3)]-n^3` -/
def P590646241321278929.Spec : Prop :=
  ∀ n, P590646241321278929.a n = A071245 n

end A071245

/-! ## A071245.P8286506492311963304

`C(n, 2)²-2*C(n, 4)+∑[4*C(n, 3)]+n²-n`
-/

namespace A071245.P8286506492311963304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - (2 * Nat.choose n 4 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ)))

end

end A071245.P8286506492311963304

namespace A071245

/-- `C(n, 2)²-2*C(n, 4)+∑[4*C(n, 3)]+n²-n` -/
def P8286506492311963304.Spec : Prop :=
  ∀ n, P8286506492311963304.a n = A071245 n

end A071245

/-! ## A071245.P6678896162413877082

`Δ[A277228(abs(1-n))]`
-/

namespace A071245.P6678896162413877082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277228 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071245.P6678896162413877082

namespace A071245

/-- `Δ[A277228(abs(1-n))]` -/
def P6678896162413877082.Spec : Prop :=
  ∀ n, P6678896162413877082.a n = A071245 n

end A071245

/-! ## A071245.P9556197893358800034

`∑[A000447(n)]-n*n²`
-/

namespace A071245.P9556197893358800034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n * n ^ 2 : ℤ)

end

end A071245.P9556197893358800034

namespace A071245

/-- `∑[A000447(n)]-n*n²` -/
def P9556197893358800034.Spec : Prop :=
  ∀ n, P9556197893358800034.a n = A071245 n

end A071245

/-! ## A071245.P7944224518017166794

`A008911(n)+A006325(n)`
-/

namespace A071245.P7944224518017166794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n + A006325 n

end

end A071245.P7944224518017166794

namespace A071245

/-- `A008911(n)+A006325(n)` -/
def P7944224518017166794.Spec : Prop :=
  ∀ n, P7944224518017166794.a n = A071245 n

end A071245

/-! ## A071245.P3879508001312372856

`A326278(n)+A103290(n)`
-/

namespace A071245.P3879508001312372856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326278 n + A103290 n

end

end A071245.P3879508001312372856

namespace A071245

/-- `A326278(n)+A103290(n)` -/
def P3879508001312372856.Spec : Prop :=
  ∀ n, P3879508001312372856.a n = A071245 n

end A071245

/-! ## A071245.P3703988041156311075

`A071238(n)-A005900(n)`
-/

namespace A071245.P3703988041156311075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n - A005900 n

end

end A071245.P3703988041156311075

namespace A071245

/-- `A071238(n)-A005900(n)` -/
def P3703988041156311075.Spec : Prop :=
  ∀ n, P3703988041156311075.a n = A071245 n

end A071245

/-! ## A071245.P579659108205907917

`A071252(n)-A071244(n)`
-/

namespace A071245.P579659108205907917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n - A071244 n

end

end A071245.P579659108205907917

namespace A071245

/-- `A071252(n)-A071244(n)` -/
def P579659108205907917.Spec : Prop :=
  ∀ n, P579659108205907917.a n = A071245 n

end A071245

/-! ## A071245.P10494991580958295920

`A071270(n)-A071238(n)`
-/

namespace A071245.P10494991580958295920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 n - A071238 n

end

end A071245.P10494991580958295920

namespace A071245

/-- `A071270(n)-A071238(n)` -/
def P10494991580958295920.Spec : Prop :=
  ∀ n, P10494991580958295920.a n = A071245 n

end A071245

/-! ## A071245.P2297543268744803627

`A008354(n)-A212560(n)`
-/

namespace A071245.P2297543268744803627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008354 n - A212560 n

end

end A071245.P2297543268744803627

namespace A071245

/-- `A008354(n)-A212560(n)` -/
def P2297543268744803627.Spec : Prop :=
  ∀ n, P2297543268744803627.a n = A071245 n

end A071245

/-! ## A071245.P6899687987672862093

`A212523(n)-A008911(n)`
-/

namespace A071245.P6899687987672862093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 n - A008911 n

end

end A071245.P6899687987672862093

namespace A071245

/-- `A212523(n)-A008911(n)` -/
def P6899687987672862093.Spec : Prop :=
  ∀ n, P6899687987672862093.a n = A071245 n

end A071245

/-! ## A071245.P16546697952307156329

`A100019(n)-A180324(n)`
-/

namespace A071245.P16546697952307156329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n - A180324 n

end

end A071245.P16546697952307156329

namespace A071245

/-- `A100019(n)-A180324(n)` -/
def P16546697952307156329.Spec : Prop :=
  ∀ n, P16546697952307156329.a n = A071245 n

end A071245

/-! ## A071245.P6682518799739606617

`A072819(n)-A330700(n)`
-/

namespace A071245.P6682518799739606617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 n - A330700 n

end

end A071245.P6682518799739606617

namespace A071245

/-- `A072819(n)-A330700(n)` -/
def P6682518799739606617.Spec : Prop :=
  ∀ n, P6682518799739606617.a n = A071245 n

end A071245

/-! ## A071245.P7892236865554070288

`A346636(n)-A103220(n)`
-/

namespace A071245.P7892236865554070288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346636 n - A103220 n

end

end A071245.P7892236865554070288

namespace A071245

/-- `A346636(n)-A103220(n)` -/
def P7892236865554070288.Spec : Prop :=
  ∀ n, P7892236865554070288.a n = A071245 n

end A071245

/-! ## A071245.P11720991154951511586

`A014820(n)-A063489(n+1)`
-/

namespace A071245.P11720991154951511586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n - A063489 (n + 1)

end

end A071245.P11720991154951511586

namespace A071245

/-- `A014820(n)-A063489(n+1)` -/
def P11720991154951511586.Spec : Prop :=
  ∀ n, P11720991154951511586.a n = A071245 n

end A071245

/-! ## A071245.P499808429795762235

`A081492(n+1)-A005894(n)`
-/

namespace A071245.P499808429795762235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081492 (n + 1) - A005894 n

end

end A071245.P499808429795762235

namespace A071245

/-- `A081492(n+1)-A005894(n)` -/
def P499808429795762235.Spec : Prop :=
  ∀ n, P499808429795762235.a n = A071245 n

end A071245

/-! ## A071245.P18359513741408407098

`A047927(n+2)-A302709(n)`
-/

namespace A071245.P18359513741408407098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047927 (n + 2) - A302709 n

end

end A071245.P18359513741408407098

namespace A071245

/-- `A047927(n+2)-A302709(n)` -/
def P18359513741408407098.Spec : Prop :=
  ∀ n, P18359513741408407098.a n = A071245 n

end A071245

/-! ## A071245.P17758705873289338856

`A165394(n+2)-A100179(n+1)`
-/

namespace A071245.P17758705873289338856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165394 (n + 2) - A100179 (n + 1)

end

end A071245.P17758705873289338856

namespace A071245

/-- `A165394(n+2)-A100179(n+1)` -/
def P17758705873289338856.Spec : Prop :=
  ∀ n, P17758705873289338856.a n = A071245 n

end A071245

/-!
# A071246: a(n) = n*(n - 1)*(2*n^2 + n + 2)/6.

The programs for A071246, the canonical program `A071246.P14923744814157274754` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071246 has offset 0).

The definition of A071246 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(2*n²+n+2)/6` (program `A071246.P7238670186018982241`, by `A071246.P7238670186018982241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071246.P7238670186018982241

`n*(n-1)*(2*n²+n+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071246.P7238670186018982241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * (2 * n ^ 2 + n + 2 : ℤ) : ℚ) / 6

end

end A071246.P7238670186018982241

namespace A071246

/-- `n*(n-1)*(2*n²+n+2)/6` -/
def P7238670186018982241.Spec : Prop :=
  ∀ n, P7238670186018982241.a n = (A071246 n : ℚ)

theorem P7238670186018982241.correct : P7238670186018982241.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A071246, Nat.add_sub_cancel, A071246.P7238670186018982241.a, A071246.P14923744814157274754.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A071246, Nat.add_sub_cancel, A071246.P7238670186018982241.a, A071246.P14923744814157274754.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A071246

/-! ## A071246.P14923744814157274754

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=23, a(4)=76`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071246

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14923744814157274754.Spec : Prop :=
  ∀ n, P14923744814157274754.a n = A071246 n

theorem P14923744814157274754.correct : P14923744814157274754.Spec := by
  intro n
  simp only [A071246]

end A071246

/-! ## A071246.P2503604842704433133

`∑[C(2*n, 3)]-C(n, 3)`
-/

namespace A071246.P2503604842704433133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 3 : ℤ)

end

end A071246.P2503604842704433133

namespace A071246

/-- `∑[C(2*n, 3)]-C(n, 3)` -/
def P2503604842704433133.Spec : Prop :=
  ∀ n, P2503604842704433133.a n = A071246 n

end A071246

/-! ## A071246.P1335345297935370575

`abs(C(n, 3)-A112742(n))`
-/

namespace A071246.P1335345297935370575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 3 : ℤ) - A112742 n|

end

end A071246.P1335345297935370575

namespace A071246

/-- `abs(C(n, 3)-A112742(n))` -/
def P1335345297935370575.Spec : Prop :=
  ∀ n, P1335345297935370575.a n = A071246 n

end A071246

/-! ## A071246.P4977513596069198582

`A071244(n)+A008911(n)`
-/

namespace A071246.P4977513596069198582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071244 n + A008911 n

end

end A071246.P4977513596069198582

namespace A071246

/-- `A071244(n)+A008911(n)` -/
def P4977513596069198582.Spec : Prop :=
  ∀ n, P4977513596069198582.a n = A071246 n

end A071246

/-! ## A071246.P3869929588075334042

`A212501(n)+A090809(n)`
-/

namespace A071246.P3869929588075334042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212501 n + A090809 n

end

end A071246.P3869929588075334042

namespace A071246

/-- `A212501(n)+A090809(n)` -/
def P3869929588075334042.Spec : Prop :=
  ∀ n, P3869929588075334042.a n = A071246 n

end A071246

/-! ## A071246.P1724910725969529380

`A071238(n)-A006003(n)`
-/

namespace A071246.P1724910725969529380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n - A006003 n

end

end A071246.P1724910725969529380

namespace A071246

/-- `A071238(n)-A006003(n)` -/
def P1724910725969529380.Spec : Prop :=
  ∀ n, P1724910725969529380.a n = A071246 n

end A071246

/-! ## A071246.P4454636357690748985

`A071252(n)-A006325(n)`
-/

namespace A071246.P4454636357690748985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n - A006325 n

end

end A071246.P4454636357690748985

namespace A071246

/-- `A071252(n)-A006325(n)` -/
def P4454636357690748985.Spec : Prop :=
  ∀ n, P4454636357690748985.a n = A071246 n

end A071246

/-! ## A071246.P2592651333761665284

`A100855(n)-A006484(n)`
-/

namespace A071246.P2592651333761665284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n - A006484 n

end

end A071246.P2592651333761665284

namespace A071246

/-- `A100855(n)-A006484(n)` -/
def P2592651333761665284.Spec : Prop :=
  ∀ n, P2592651333761665284.a n = A071246 n

end A071246

/-! ## A071246.P1419811903267564365

`A037270(n)-A071239(n)`
-/

namespace A071246.P1419811903267564365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A071239 n

end

end A071246.P1419811903267564365

namespace A071246

/-- `A037270(n)-A071239(n)` -/
def P1419811903267564365.Spec : Prop :=
  ∀ n, P1419811903267564365.a n = A071246 n

end A071246

/-! ## A071246.P3874240997349295872

`A139594(n)-A006007(n)`
-/

namespace A071246.P3874240997349295872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 n - A006007 n

end

end A071246.P3874240997349295872

namespace A071246

/-- `A139594(n)-A006007(n)` -/
def P3874240997349295872.Spec : Prop :=
  ∀ n, P3874240997349295872.a n = A071246 n

end A071246

/-! ## A071246.P7896358593130309019

`A325656(n)-A212578(n)`
-/

namespace A071246.P7896358593130309019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325656 n - A212578 n

end

end A071246.P7896358593130309019

namespace A071246

/-- `A325656(n)-A212578(n)` -/
def P7896358593130309019.Spec : Prop :=
  ∀ n, P7896358593130309019.a n = A071246 n

end A071246

/-! ## A071246.P13633809819533392898

`A071238(n)-sqrt(A135509(n))`
-/

namespace A071246.P13633809819533392898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A071238 n : ℝ) - Real.sqrt (A135509 n : ℝ)

end

end A071246.P13633809819533392898

namespace A071246

/-- `A071238(n)-sqrt(A135509(n))` -/
def P13633809819533392898.Spec : Prop :=
  ∀ n, P13633809819533392898.a n = (A071246 n : ℝ)

end A071246

/-! ## A071246.P12820074077702358686

`∑[A161712(n)-A133263(n)]`
-/

namespace A071246.P12820074077702358686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 n - A133263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071246.P12820074077702358686

namespace A071246

/-- `∑[A161712(n)-A133263(n)]` -/
def P12820074077702358686.Spec : Prop :=
  ∀ n, P12820074077702358686.a n = A071246 n

end A071246

/-! ## A071246.P6885002713280773725

`A165394(n+2)-A005920(n)`
-/

namespace A071246.P6885002713280773725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165394 (n + 2) - A005920 n

end

end A071246.P6885002713280773725

namespace A071246

/-- `A165394(n+2)-A005920(n)` -/
def P6885002713280773725.Spec : Prop :=
  ∀ n, P6885002713280773725.a n = A071246 n

end A071246

/-! ## A071246.P7022620641642493849

`A066804(n+1)-A063489(n+1)`
-/

namespace A071246.P7022620641642493849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066804 (n + 1) - A063489 (n + 1)

end

end A071246.P7022620641642493849

namespace A071246

/-- `A066804(n+1)-A063489(n+1)` -/
def P7022620641642493849.Spec : Prop :=
  ∀ n, P7022620641642493849.a n = A071246 n

end A071246

/-! ## A071246.P2044041465600182494

`A001846(n)%(A014820(n)+A000292(n))`
-/

namespace A071246.P2044041465600182494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001846 n) (A014820 n + A000292 n)

end

end A071246.P2044041465600182494

namespace A071246

/-- `A001846(n)%(A014820(n)+A000292(n))` -/
def P2044041465600182494.Spec : Prop :=
  ∀ n, P2044041465600182494.a n = A071246 n

end A071246

/-! ## A071246.P272449759355852998

`A006325(n+1)+A006325(n)-A000292(n)`
-/

namespace A071246.P272449759355852998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) + (A006325 n - A000292 n)

end

end A071246.P272449759355852998

namespace A071246

/-- `A006325(n+1)+A006325(n)-A000292(n)` -/
def P272449759355852998.Spec : Prop :=
  ∀ n, P272449759355852998.a n = A071246 n

end A071246

/-!
# A071247: Numbers n such that A078142(n) = A078142(n+1), where A078142(n) is the sum of the differences of the distinct prime factors p of n and the next square larger than p.

The programs for A071247, the canonical program `A071247.P7398568559144745585` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071247 has offset 1).

The definition of A071247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071247.P7398568559144745585

`eq[A078142(n+1), A078142(n+2)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071247

/-- `eq[A078142(n+1), A078142(n+2)]+1` -/
def P7398568559144745585.Spec : Prop :=
  ∀ n, (P7398568559144745585.a n : ℤ) = A071247 (n + 1)

theorem P7398568559144745585.correct : P7398568559144745585.Spec := by
  intro n
  simp only [A071247, Nat.add_sub_cancel]

end A071247

/-! ## A071247.P9252502599181230205

`A020725(eq[A078142(n+1), A078142(n+2)])`
-/

namespace A071247.P9252502599181230205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071247.P9252502599181230205

namespace A071247

/-- `A020725(eq[A078142(n+1), A078142(n+2)])` -/
def P9252502599181230205.Spec : Prop :=
  ∀ n, P9252502599181230205.a n = A071247 (n + 1)

end A071247

/-! ## A071247.P10355895676347927866

`A242963(eq[A078142(n+5), A078142(n+6)])`
-/

namespace A071247.P10355895676347927866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242963 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071247.P10355895676347927866

namespace A071247

/-- `A242963(eq[A078142(n+5), A078142(n+6)])` -/
def P10355895676347927866.Spec : Prop :=
  ∀ n, P10355895676347927866.a n = A071247 (n + 1)

end A071247

/-!
# A071248: a(n) = Product_{k=1..n} lcm(n,k).

The programs for A071248, the canonical program `A071248.P8710611459542892382` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071248 has offset 1).

The definition of A071248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071248.P8710611459542892382

`(n+1)!*(n+1)^(n+1)/A067911(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A071248

/-- `(n+1)!*(n+1)^(n+1)/A067911(n+1)` -/
def P8710611459542892382.Spec : Prop :=
  ∀ n, P8710611459542892382.a n = (A071248 (n + 1) : ℚ)

end A071248

/-! ## A071248.P12639742275507097668

`A000142(n+1)*A000312(n+1)/A067911(n+1)`
-/

namespace A071248.P12639742275507097668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) * A000312 (n + 1) : ℚ) / (A067911 (n + 1) : ℚ)

end

end A071248.P12639742275507097668

namespace A071248

/-- `A000142(n+1)*A000312(n+1)/A067911(n+1)` -/
def P12639742275507097668.Spec : Prop :=
  ∀ n, P12639742275507097668.a n = (A071248 (n + 1) : ℚ)

end A071248

/-! ## A071248.P12959065221146224853

`(n+1)!*A056916(n+1)`
-/

namespace A071248.P12959065221146224853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A056916 (n + 1)

end

end A071248.P12959065221146224853

namespace A071248

/-- `(n+1)!*A056916(n+1)` -/
def P12959065221146224853.Spec : Prop :=
  ∀ n, P12959065221146224853.a n = A071248 (n + 1)

end A071248

/-! ## A071248.P16224173278136921806

`A000142(n+1)*A056916(n+1)`
-/

namespace A071248.P16224173278136921806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A056916 (n + 1)

end

end A071248.P16224173278136921806

namespace A071248

/-- `A000142(n+1)*A056916(n+1)` -/
def P16224173278136921806.Spec : Prop :=
  ∀ n, P16224173278136921806.a n = A071248 (n + 1)

end A071248

/-! ## A071248.P14958516608634146630

`A067911(n+1)*A127553(n+1)`
-/

namespace A071248.P14958516608634146630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067911 (n + 1) * A127553 (n + 1)

end

end A071248.P14958516608634146630

namespace A071248

/-- `A067911(n+1)*A127553(n+1)` -/
def P14958516608634146630.Spec : Prop :=
  ∀ n, P14958516608634146630.a n = A071248 (n + 1)

end A071248

/-!
# A071249: Numbers k such that gcd(k, R(k)) > 1, where R(k) (A004086) is the digit reversal of k.

The programs for A071249, there is no canonical definition to state claims against.
-/

/-! ## A071249.P10839036255452876818

`lt[1, gcd(n, A004086(n))]`
-/

namespace A071249.P10839036255452876818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004086 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071249.P10839036255452876818

/-! ## A071249.P1901642058833052585

`lt[1, A055483(n+1)]+1`
-/

namespace A071249.P1901642058833052585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071249.P1901642058833052585

/-! ## A071249.P9730564156208243673

`A020725(lt[1, A055483(n+1)])`
-/

namespace A071249.P9730564156208243673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071249.P9730564156208243673

/-! ## A071249.P16545295890256254552

`lt[A337927(n+1), n+1]+1`
-/

namespace A071249.P16545295890256254552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337927 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071249.P16545295890256254552

/-! ## A071249.P12394983202925573808

`lt[1, A055483(A028310(n))]`
-/

namespace A071249.P12394983202925573808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071249.P12394983202925573808

/-! ## A071249.P2239223494146920223

`lt[A068634(A028310(n)), A061205(n)]`
-/

namespace A071249.P2239223494146920223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068634 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071249.P2239223494146920223

/-! ## A071249.P3002034899066031172

`A118759(A084433(n+1))`
-/

namespace A071249.P3002034899066031172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A084433 (n + 1)).toNat

end

end A071249.P3002034899066031172

/-! ## A071249.P733930664470081573

`A118759(A084434(n+1))`
-/

namespace A071249.P733930664470081573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A084434 (n + 1)).toNat

end

end A071249.P733930664470081573

/-! ## A071249.P5496149683903863287

`A000188(A084433(n+1)²)`
-/

namespace A071249.P5496149683903863287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A084433 (n + 1) ^ 2).toNat

end

end A071249.P5496149683903863287

/-! ## A071249.P4677247681679006444

`A000194(A084433(n+1)²)`
-/

namespace A071249.P4677247681679006444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A084433 (n + 1) ^ 2).toNat

end

end A071249.P4677247681679006444

/-!
# A071250: Palindromes with successive increasing difference: a(k)-a(k-1) > a(k+1)- a(k).

The programs for A071250, there is no canonical definition to state claims against.
-/

/-! ## A071250.P12887327502366664574

`eq[A033665(n), A067591(A137564(n))]`
-/

namespace A071250.P12887327502366664574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067591 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071250.P12887327502366664574

/-! ## A071250.P12891289494587269444

`eq[A213217(n), A246416(A106615(n))]`
-/

namespace A071250.P12891289494587269444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (A106615 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071250.P12891289494587269444

/-! ## A071250.P4145398168776037934

`eq[A110514(A310252(n)), A347689(n)]`
-/

namespace A071250.P4145398168776037934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A310252 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071250.P4145398168776037934

/-! ## A071250.P1537436080339942744

`A265540(or(A056897(n), A133488(n+1)))`
-/

namespace A071250.P1537436080339942744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265540 (Int.lor (A056897 n) (A133488 (n + 1))).toNat

end

end A071250.P1537436080339942744

/-! ## A071250.P12482845629042206936

`eq[A050782(n), A187730(A232570(n+1))]`
-/

namespace A071250.P12482845629042206936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187730 (A232570 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071250.P12482845629042206936

/-!
# A071251: Squarefree palindromes.

The programs for A071251, there is no canonical definition to state claims against.
-/

/-! ## A071251.P12488888594617814479

`A075803(n)+a(n-1)` with `a(0)=1`
-/

namespace A071251.P12488888594617814479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075803 n + a (n - 1)

end

end A071251.P12488888594617814479

/-! ## A071251.P8891398033577626344

`∪[A035134(n+1), A169829(n+1)]`
-/

namespace A071251.P8891398033577626344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071251.P8891398033577626344

/-! ## A071251.P17280692372033430395

`∪[A075799(n+1), A075800(n+1)]`
-/

namespace A071251.P17280692372033430395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071251.P17280692372033430395

/-! ## A071251.P2661027641730288127

`∪[A035134(n+1), A069217(n+1)]`
-/

namespace A071251.P2661027641730288127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071251.P2661027641730288127

/-! ## A071251.P13020902658533170407

`record[∏{p}[A002113(n+1), #]]`
-/

namespace A071251.P13020902658533170407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071251.P13020902658533170407

/-! ## A071251.P14492989663400566346

`record[A007913(A002113(n+2))]`
-/

namespace A071251.P14492989663400566346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A002113 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071251.P14492989663400566346

/-! ## A071251.P10142086937533804544

`filter[A002113(n+2), A008966(#)]`
-/

namespace A071251.P10142086937533804544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A071251.P10142086937533804544

/-! ## A071251.P4090916585495233408

`filter[A306273(n+2), A008966(#)]`
-/

namespace A071251.P4090916585495233408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A071251.P4090916585495233408

/-! ## A071251.P3470914671173143324

`filter[A110751(n+1), A008966(#)]`
-/

namespace A071251.P3470914671173143324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A071251.P3470914671173143324

/-! ## A071251.P13686291604805575306

`∩[A002113(n+1), A005117(n+1)]`
-/

namespace A071251.P13686291604805575306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071251.P13686291604805575306

/-! ## A071251.P18260555629163873728

`∩[A005117(n+1), A110751(n+1)]`
-/

namespace A071251.P18260555629163873728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071251.P18260555629163873728

/-! ## A071251.P17669357148839294305

`∩[A005117(n+1), A306273(n+1)]`
-/

namespace A071251.P17669357148839294305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071251.P17669357148839294305

/-! ## A071251.P1052940800063082308

`filter[A110751(n+1), A323154(#)]`
-/

namespace A071251.P1052940800063082308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A071251.P1052940800063082308

/-! ## A071251.P2148467557050372497

`filter[A002113(n+2), A323154(#)]`
-/

namespace A071251.P2148467557050372497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A071251.P2148467557050372497

/-! ## A071251.P12721092675019025171

`filter[A306273(n+2), A323154(#)]`
-/

namespace A071251.P12721092675019025171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A071251.P12721092675019025171

/-! ## A071251.P12506625823243470529

`record[A055483(A005117(n+1))]`
-/

namespace A071251.P12506625823243470529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071251.P12506625823243470529

/-! ## A071251.P7071078957711686608

`record[A007913(eq[n+1, A004086(n+1)]+1)]`
-/

namespace A071251.P7071078957711686608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071251.P7071078957711686608

/-! ## A071251.P8684749802140397942

`record[∏{p}[eq[0, A261424(n)], #]]`
-/

namespace A071251.P8684749802140397942
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071251.P8684749802140397942

/-! ## A071251.P4607931047234301425

`∩[A002113(n+1), A077337(n+1)]`
-/

namespace A071251.P4607931047234301425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071251.P4607931047234301425

/-! ## A071251.P17748237541251313154

`∩[A077337(n+1), A110751(n+1)]`
-/

namespace A071251.P17748237541251313154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071251.P17748237541251313154

/-!
# A071252: a(n) = n*(n - 1)*(n^2 + 1)/2.

The programs for A071252, the canonical program `A071252.P13937739183146272210` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071252 has offset 0).

The definition of A071252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n²+1)/2` (program `A071252.P14682723695690147976`, by `A071252.P14682723695690147976.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071252.P13937739183146272210

`C(n, 2)*(1+n²)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071252

/-- `C(n, 2)*(1+n²)` -/
def P13937739183146272210.Spec : Prop :=
  ∀ n, (P13937739183146272210.a n : ℤ) = A071252 n

theorem P13937739183146272210.correct : P13937739183146272210.Spec := by
  intro n
  simp only [A071252]

end A071252

/-! ## A071252.P2471971150880846309

`floor(n^5/(n+1))/2`
-/

namespace A071252.P2471971150880846309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n ^ 5 : ℚ) / (n + 1 : ℚ)⌋ : ℚ) / 2

end

end A071252.P2471971150880846309

namespace A071252

/-- `floor(n^5/(n+1))/2` -/
def P2471971150880846309.Spec : Prop :=
  ∀ n, P2471971150880846309.a n = (A071252 n : ℚ)

end A071252

/-! ## A071252.P14682723695690147976

`n*(n-1)*(n²+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071252.P14682723695690147976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * (n ^ 2 + 1 : ℤ) : ℚ) / 2

end

end A071252.P14682723695690147976

namespace A071252

/-- `n*(n-1)*(n²+1)/2` -/
def P14682723695690147976.Spec : Prop :=
  ∀ n, P14682723695690147976.a n = (A071252 n : ℚ)

theorem P14682723695690147976.correct : P14682723695690147976.Spec := by
  intro n
  simp only [A071252, Nat.add_sub_cancel, A071252.P14682723695690147976.a, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071252

/-! ## A071252.P225116030232599695

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=30, a(4)=102`
-/

namespace A071252.P225116030232599695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 5, 30, 102] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A071252.P225116030232599695

namespace A071252

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P225116030232599695.Spec : Prop :=
  ∀ n, P225116030232599695.a n = A071252 n

end A071252

/-! ## A071252.P2497961752564283206

`lcm(n-1, (n^3+n)/2)`
-/

namespace A071252.P2497961752564283206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (SequenceMachineLib.roundAway ((n ^ 3 + n : ℚ) / 2))

end

end A071252.P2497961752564283206

namespace A071252

/-- `lcm(n-1, (n^3+n)/2)` -/
def P2497961752564283206.Spec : Prop :=
  ∀ n, (P2497961752564283206.a n : ℤ) = A071252 n

end A071252

/-! ## A071252.P13689082855252878071

`n²*C(n, 2)-(n-∑[n])`
-/

namespace A071252.P13689082855252878071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * Nat.choose n 2 : ℤ) - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A071252.P13689082855252878071

namespace A071252

/-- `n²*C(n, 2)-(n-∑[n])` -/
def P13689082855252878071.Spec : Prop :=
  ∀ n, P13689082855252878071.a n = A071252 n

end A071252

/-! ## A071252.P16251491540314527618

`abs(((n+1)*C(n, 2)+n)*(1-n))`
-/

namespace A071252.P16251491540314527618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) * Nat.choose n 2 + n : ℤ) * (1 - (n : ℤ))|

end

end A071252.P16251491540314527618

namespace A071252

/-- `abs(((n+1)*C(n, 2)+n)*(1-n))` -/
def P16251491540314527618.Spec : Prop :=
  ∀ n, P16251491540314527618.a n = A071252 n

end A071252

/-! ## A071252.P8032089522731915848

`A100855(n)-n`
-/

namespace A071252.P8032089522731915848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n - (n : ℤ)

end

end A071252.P8032089522731915848

namespace A071252

/-- `A100855(n)-n` -/
def P8032089522731915848.Spec : Prop :=
  ∀ n, P8032089522731915848.a n = A071252 n

end A071252

/-! ## A071252.P8212047180620241594

`floor(A060884(n)/2)`
-/

namespace A071252.P8212047180620241594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060884 n : ℚ) / 2⌋

end

end A071252.P8212047180620241594

namespace A071252

/-- `floor(A060884(n)/2)` -/
def P8212047180620241594.Spec : Prop :=
  ∀ n, P8212047180620241594.a n = A071252 n

end A071252

/-! ## A071252.P7965513237184501306

`A171129(n)+n²`
-/

namespace A071252.P7965513237184501306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + (n ^ 2 : ℤ)

end

end A071252.P7965513237184501306

namespace A071252

/-- `A171129(n)+n²` -/
def P7965513237184501306.Spec : Prop :=
  ∀ n, P7965513237184501306.a n = A071252 n

end A071252

/-! ## A071252.P17985428355924992398

`(n-1)*A006003(n)`
-/

namespace A071252.P17985428355924992398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A006003 n

end

end A071252.P17985428355924992398

namespace A071252

/-- `(n-1)*A006003(n)` -/
def P17985428355924992398.Spec : Prop :=
  ∀ n, P17985428355924992398.a n = A071252 n

end A071252

/-! ## A071252.P6550206327747942467

`n/2*A062158(n)`
-/

namespace A071252.P6550206327747942467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A062158 n : ℚ)

end

end A071252.P6550206327747942467

namespace A071252

/-- `n/2*A062158(n)` -/
def P6550206327747942467.Spec : Prop :=
  ∀ n, P6550206327747942467.a n = (A071252 n : ℚ)

theorem P6550206327747942467.correct : P6550206327747942467.Spec := by
  intro n
  simp only [A071252, Nat.add_sub_cancel, A071252.P6550206327747942467.a, A071252.P13937739183146272210.a, A062158, A062158.P5395940326210202878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071252

/-! ## A071252.P7717151842768253179

`n²+A152016(n)/2`
-/

namespace A071252.P7717151842768253179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A152016 n : ℚ) / 2

end

end A071252.P7717151842768253179

namespace A071252

/-- `n²+A152016(n)/2` -/
def P7717151842768253179.Spec : Prop :=
  ∀ n, P7717151842768253179.a n = (A071252 n : ℚ)

theorem P7717151842768253179.correct : P7717151842768253179.Spec := by
  intro n
  simp only [A071252, Nat.add_sub_cancel, A071252.P7717151842768253179.a, A071252.P13937739183146272210.a, A152016, A152016.P12945735254171868270.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071252

/-! ## A071252.P10054464610128428010

`A045991(n)+A019582(n)`
-/

namespace A071252.P10054464610128428010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n + A019582 n

end

end A071252.P10054464610128428010

namespace A071252

/-- `A045991(n)+A019582(n)` -/
def P10054464610128428010.Spec : Prop :=
  ∀ n, P10054464610128428010.a n = A071252 n

end A071252

/-! ## A071252.P16773995571104457291

`A071246(n)+A006325(n)`
-/

namespace A071252.P16773995571104457291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071246 n + A006325 n

end

end A071252.P16773995571104457291

namespace A071252

/-- `A071246(n)+A006325(n)` -/
def P16773995571104457291.Spec : Prop :=
  ∀ n, P16773995571104457291.a n = A071252 n

end A071252

/-! ## A071252.P12845039691581917168

`A071245(n)+A071244(n)`
-/

namespace A071252.P12845039691581917168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071245 n + A071244 n

end

end A071252.P12845039691581917168

namespace A071252

/-- `A071245(n)+A071244(n)` -/
def P12845039691581917168.Spec : Prop :=
  ∀ n, P12845039691581917168.a n = A071252 n

end A071252

/-! ## A071252.P1051887557778538049

`A391092(n)+A051925(n)`
-/

namespace A071252.P1051887557778538049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391092 n + A051925 n

end

end A071252.P1051887557778538049

namespace A071252

/-- `A391092(n)+A051925(n)` -/
def P1051887557778538049.Spec : Prop :=
  ∀ n, P1051887557778538049.a n = A071252 n

end A071252

/-! ## A071252.P8056741340109065646

`A037270(n)-A006003(n)`
-/

namespace A071252.P8056741340109065646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A006003 n

end

end A071252.P8056741340109065646

namespace A071252

/-- `A037270(n)-A006003(n)` -/
def P8056741340109065646.Spec : Prop :=
  ∀ n, P8056741340109065646.a n = A071252 n

end A071252

/-! ## A071252.P1824804868332179925

`A071237(n)-A034262(n)`
-/

namespace A071252.P1824804868332179925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n - A034262 n

end

end A071252.P1824804868332179925

namespace A071252

/-- `A071237(n)-A034262(n)` -/
def P1824804868332179925.Spec : Prop :=
  ∀ n, P1824804868332179925.a n = A071252 n

end A071252

/-! ## A071252.P10352928529760212135

`A071253(n)-A071237(n)`
-/

namespace A071252.P10352928529760212135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 n - A071237 n

end

end A071252.P10352928529760212135

namespace A071252

/-- `A071253(n)-A071237(n)` -/
def P10352928529760212135.Spec : Prop :=
  ∀ n, P10352928529760212135.a n = A071252 n

end A071252

/-!
# A071253: a(n) = n^2*(n^2+1).

The programs for A071253, the canonical program `A071253.P8759095852449772691` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071253 has offset 0).

The definition of A071253 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n²+1)` (program `A071253.P8759095852449772691`, by `A071253.P8759095852449772691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071253.P8759095852449772691

`n²*(n²+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071253

/-- `n²*(n²+1)` -/
def P8759095852449772691.Spec : Prop :=
  ∀ n, (P8759095852449772691.a n : ℤ) = A071253 n

theorem P8759095852449772691.correct : P8759095852449772691.Spec := by
  intro n
  simp only [A071253]

end A071253

/-! ## A071253.P2719016084283066546

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=20, a(3)=90, a(4)=272`
-/

namespace A071253.P2719016084283066546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 20, 90, 272] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A071253.P2719016084283066546

namespace A071253

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2719016084283066546.Spec : Prop :=
  ∀ n, P2719016084283066546.a n = A071253 n

theorem P2719016084283066546.correct : P2719016084283066546.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A071253, Nat.add_sub_cancel, A071253.P2719016084283066546.a, A071253.P8759095852449772691.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A071253, Nat.add_sub_cancel, A071253.P2719016084283066546.a, A071253.P8759095852449772691.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A071253

/-! ## A071253.P9117457377474283406

`A002378(A000290(n))`
-/

namespace A071253.P9117457377474283406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A000290 n).toNat

end

end A071253.P9117457377474283406

namespace A071253

/-- `A002378(A000290(n))` -/
def P9117457377474283406.Spec : Prop :=
  ∀ n, P9117457377474283406.a n = A071253 n

end A071253

/-! ## A071253.P1280363651652682666

`(n/cos(atan(n)))²`
-/

namespace A071253.P1280363651652682666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.cos (Real.arctan (n : ℝ))) ^ 2

end

end A071253.P1280363651652682666

namespace A071253

/-- `(n/cos(atan(n)))²` -/
def P1280363651652682666.Spec : Prop :=
  ∀ n, P1280363651652682666.a n = (A071253 n : ℝ)

end A071253

/-! ## A071253.P6821738116915970485

`(n/sin(acot(n)))²`
-/

namespace A071253.P6821738116915970485
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ))) ^ 2

end

end A071253.P6821738116915970485

namespace A071253

/-- `(n/sin(acot(n)))²` -/
def P6821738116915970485.Spec : Prop :=
  ∀ n, P6821738116915970485.a n = (A071253 n : ℝ)

end A071253

/-! ## A071253.P1138972278753389463

`lcm(n²+1, n²)`
-/

namespace A071253.P1138972278753389463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n ^ 2 + 1) (n ^ 2)

end

end A071253.P1138972278753389463

namespace A071253

/-- `lcm(n²+1, n²)` -/
def P1138972278753389463.Spec : Prop :=
  ∀ n, (P1138972278753389463.a n : ℤ) = A071253 n

end A071253

/-! ## A071253.P18308044517159187344

`floor(n/acot(n)^3)`
-/

namespace A071253.P18308044517159187344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌋

end

end A071253.P18308044517159187344

namespace A071253

/-- `floor(n/acot(n)^3)` -/
def P18308044517159187344.Spec : Prop :=
  ∀ n, P18308044517159187344.a n = A071253 n

end A071253

/-! ## A071253.P16043073707460966147

`round(n/acot(n)^3)`
-/

namespace A071253.P16043073707460966147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3)

end

end A071253.P16043073707460966147

namespace A071253

/-- `round(n/acot(n)^3)` -/
def P16043073707460966147.Spec : Prop :=
  ∀ n, P16043073707460966147.a n = A071253 n

end A071253

/-! ## A071253.P14929119070808179705

`floor((or(2, (2*n)²)/4)²)`
-/

namespace A071253.P14929119070808179705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lor 2 ((2 * n) ^ 2) : ℚ) / 4) ^ 2⌋

end

end A071253.P14929119070808179705

namespace A071253

/-- `floor((or(2, (2*n)²)/4)²)` -/
def P14929119070808179705.Spec : Prop :=
  ∀ n, P14929119070808179705.a n = A071253 n

end A071253

/-! ## A071253.P4756519569676317823

`floor((xor(2, (2*n)²)/4)²)`
-/

namespace A071253.P4756519569676317823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.xor 2 ((2 * n) ^ 2) : ℚ) / 4) ^ 2⌋

end

end A071253.P4756519569676317823

namespace A071253

/-- `floor((xor(2, (2*n)²)/4)²)` -/
def P4756519569676317823.Spec : Prop :=
  ∀ n, P4756519569676317823.a n = A071253 n

end A071253

/-! ## A071253.P5460681973391591035

`round((or(2, (2*n)²)/4)²)`
-/

namespace A071253.P5460681973391591035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 2 ((2 * n) ^ 2) : ℚ) / 4) ^ 2)

end

end A071253.P5460681973391591035

namespace A071253

/-- `round((or(2, (2*n)²)/4)²)` -/
def P5460681973391591035.Spec : Prop :=
  ∀ n, P5460681973391591035.a n = A071253 n

end A071253

/-! ## A071253.P426170182108055703

`round((xor(2, (2*n)²)/4)²)`
-/

namespace A071253.P426170182108055703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.xor 2 ((2 * n) ^ 2) : ℚ) / 4) ^ 2)

end

end A071253.P426170182108055703

namespace A071253

/-- `round((xor(2, (2*n)²)/4)²)` -/
def P426170182108055703.Spec : Prop :=
  ∀ n, P426170182108055703.a n = A071253 n

end A071253

/-! ## A071253.P11962317061549820238

`xor(1, n²+n²²+1)`
-/

namespace A071253.P11962317061549820238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2 + ((n ^ 2) ^ 2 + 1))

end

end A071253.P11962317061549820238

namespace A071253

/-- `xor(1, n²+n²²+1)` -/
def P11962317061549820238.Spec : Prop :=
  ∀ n, (P11962317061549820238.a n : ℤ) = A071253 n

end A071253

/-! ## A071253.P9465105782894925646

`∑{d}[-a(n-1), (n^#)²]` with `a(0)=2`
-/

namespace A071253.P9465105782894925646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n ^ d) ^ 2

end

end A071253.P9465105782894925646

namespace A071253

/-- `∑{d}[-a(n-1), (n^#)²]` -/
def P9465105782894925646.Spec : Prop :=
  ∀ n, (P9465105782894925646.a n : ℤ) = A071253 n

end A071253

/-! ## A071253.P4677038691069861650

`floor((∑[a(n-1)+4]/2)²)` with `a(0)=1, a(1)=2`
-/

namespace A071253.P4677038691069861650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2⌋

end

end A071253.P4677038691069861650

namespace A071253

/-- `floor((∑[a(n-1)+4]/2)²)` -/
def P4677038691069861650.Spec : Prop :=
  ∀ n, P4677038691069861650.a n = A071253 n

end A071253

/-! ## A071253.P9064070292579738661

`A059826(n)-1`
-/

namespace A071253.P9064070292579738661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059826 n - 1

end

end A071253.P9064070292579738661

namespace A071253

/-- `A059826(n)-1` -/
def P9064070292579738661.Spec : Prop :=
  ∀ n, P9064070292579738661.a n = A071253 n

theorem P9064070292579738661.correct : P9064070292579738661.Spec := by
  intro n
  simp only [A071253, Nat.add_sub_cancel, A071253.P9064070292579738661.a, A071253.P8759095852449772691.a, A059826, A059826.P10107357562865888263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071253

/-! ## A071253.P2055916966382727428

`A173116(n)/4`
-/

namespace A071253.P2055916966382727428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173116 n : ℚ) / 4

end

end A071253.P2055916966382727428

namespace A071253

/-- `A173116(n)/4` -/
def P2055916966382727428.Spec : Prop :=
  ∀ n, P2055916966382727428.a n = (A071253 n : ℚ)

theorem P2055916966382727428.correct : P2055916966382727428.Spec := by
  intro n
  simp only [A071253, Nat.add_sub_cancel, A071253.P2055916966382727428.a, A071253.P8759095852449772691.a, A173116, A173116.P11865276995933948720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071253

/-! ## A071253.P7777216214322392733

`A054603(n)-2*n`
-/

namespace A071253.P7777216214322392733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054603 n - (2 * n : ℤ)

end

end A071253.P7777216214322392733

namespace A071253

/-- `A054603(n)-2*n` -/
def P7777216214322392733.Spec : Prop :=
  ∀ n, P7777216214322392733.a n = A071253 n

theorem P7777216214322392733.correct : P7777216214322392733.Spec := by
  intro n
  simp only [A071253, Nat.add_sub_cancel, A071253.P7777216214322392733.a, A071253.P8759095852449772691.a, A054603, A054603.P10637400569586555311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071253

/-! ## A071253.P14944371881365021437

`A000583(n)+A000290(n)`
-/

namespace A071253.P14944371881365021437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A000290 n

end

end A071253.P14944371881365021437

namespace A071253

/-- `A000583(n)+A000290(n)` -/
def P14944371881365021437.Spec : Prop :=
  ∀ n, P14944371881365021437.a n = A071253 n

theorem P14944371881365021437.correct : P14944371881365021437.Spec := by
  intro n
  simp only [A071253, Nat.add_sub_cancel, A071253.P14944371881365021437.a, A071253.P8759095852449772691.a, A000290, A000290.P12206242496348924484.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071253

/-! ## A071253.P1731022890715543024

`A057722(n)+A000466(n)`
-/

namespace A071253.P1731022890715543024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057722 n + A000466 n

end

end A071253.P1731022890715543024

namespace A071253

/-- `A057722(n)+A000466(n)` -/
def P1731022890715543024.Spec : Prop :=
  ∀ n, P1731022890715543024.a n = A071253 n

theorem P1731022890715543024.correct : P1731022890715543024.Spec := by
  intro n
  simp only [A071253, Nat.add_sub_cancel, A071253.P1731022890715543024.a, A071253.P8759095852449772691.a, A000466, A000466.P5626493666969552810.a, A057722, A057722.P17503710663781687125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071253

/-!
# A071255: a(1) = 2, a(n+1) = a(n)-th squarefree number > 1.

The programs for A071255, the canonical program `A071255.P17108161913792232219` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071255 has offset 1).

The definition of A071255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071255.P17108161913792232219

`A005117(a(n-1)+1)` with `a(0)=2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A071255

/-- `A005117(a(n-1)+1)` -/
def P17108161913792232219.Spec : Prop :=
  ∀ n, P17108161913792232219.a n = A071255 (n + 1)

theorem P17108161913792232219.correct : P17108161913792232219.Spec := by
  intro n
  simp only [A071255, Nat.add_sub_cancel]

end A071255

/-! ## A071255.P7997393317457076070

`A005117(1-floor(-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A071255.P7997393317457076070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005117 (1 - (-a (n - 1))).toNat

end

end A071255.P7997393317457076070

namespace A071255

/-- `A005117(1-floor(-a(n-1)))` -/
def P7997393317457076070.Spec : Prop :=
  ∀ n, P7997393317457076070.a n = A071255 (n + 1)

theorem P7997393317457076070.correct : P7997393317457076070.Spec := by
  intro n
  simp only [A071255, Nat.add_sub_cancel, A071255.P7997393317457076070.a, A071255.P17108161913792232219.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A071255

/-! ## A071255.P14822560554581891262

`A005117(1-ceil(-a(n-1)))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A071255.P14822560554581891262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005117 (1 - (-a (n - 1))).toNat

end

end A071255.P14822560554581891262

namespace A071255

/-- `A005117(1-ceil(-a(n-1)))` -/
def P14822560554581891262.Spec : Prop :=
  ∀ n, P14822560554581891262.a n = A071255 (n + 1)

theorem P14822560554581891262.correct : P14822560554581891262.Spec := by
  intro n
  simp only [A071255, Nat.add_sub_cancel, A071255.P14822560554581891262.a, A071255.P17108161913792232219.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A071255

/-! ## A071255.P13712152385017209065

`A005117(1-round(-a(n-1)))` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A071255.P13712152385017209065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005117 (1 - (-a (n - 1))).toNat

end

end A071255.P13712152385017209065

namespace A071255

/-- `A005117(1-round(-a(n-1)))` -/
def P13712152385017209065.Spec : Prop :=
  ∀ n, P13712152385017209065.a n = A071255 (n + 1)

theorem P13712152385017209065.correct : P13712152385017209065.Spec := by
  intro n
  simp only [A071255, Nat.add_sub_cancel, A071255.P13712152385017209065.a, A071255.P17108161913792232219.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A071255

/-! ## A071255.P4610197335351759713

`A005117(abs(a(A023443(n)))+1)` with `a(0)=2`
-/

namespace A071255.P4610197335351759713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005117 (|a (A023443 n).toNat| + 1).toNat

end

end A071255.P4610197335351759713

namespace A071255

/-- `A005117(abs(a(A023443(n)))+1)` -/
def P4610197335351759713.Spec : Prop :=
  ∀ n, P4610197335351759713.a n = A071255 (n + 1)

end A071255

/-!
# A071256: Smallest multiple of n sandwiched between twin primes.

The programs for A071256, there is no canonical definition to state claims against.
-/

/-! ## A071256.P16787723867941203347

`(n+1)*A071558(n+1)`
-/

namespace A071256.P16787723867941203347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071558 (n + 1)

end

end A071256.P16787723867941203347

/-! ## A071256.P11919489530938550856

`A071558(A080513(2*n))*A080513(2*n)`
-/

namespace A071256.P11919489530938550856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A080513 (2 * n)).toNat * A080513 (2 * n)

end

end A071256.P11919489530938550856

/-! ## A071256.P16348213365312148001

`∑{digits}[A000042(n+1), A071558(#+n)]`
-/

namespace A071256.P16348213365312148001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A071558 (x + n)).sum

end

end A071256.P16348213365312148001

/-! ## A071256.P11707315877301057332

`A071558(A077168(n))*A077168(n)`
-/

namespace A071256.P11707315877301057332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A077168 n).toNat * A077168 n

end

end A071256.P11707315877301057332

/-! ## A071256.P18367165151277983936

`lcm(A046820(A290662(n)), A071558(n+1))`
-/

namespace A071256.P18367165151277983936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046820 (A290662 n).toNat) (A071558 (n + 1))

end

end A071256.P18367165151277983936

/-!
# A071258: a(1) = 4; a(n) = smallest composite number of form k*a(n-1) + 1 with k > 1.

The programs for A071258, there is no canonical definition to state claims against.
-/

/-! ## A071258.P6657459030982673355

`xor(A052996(n), A063655(A003945(2*(n+1))))`
-/

namespace A071258.P6657459030982673355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052996 n) (A063655 (A003945 (2 * (n + 1))).toNat)

end

end A071258.P6657459030982673355

/-!
# A071259: Integer part of the arithmetic mean of the n-th prime p(n) and the n-th composite number C(n).

The programs for A071259, the canonical program `A071259.P17396136488218185286` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071259 has offset 1).

The definition of A071259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071259.P17396136488218185286

`floor((A000040(n+1)+A002808(n+1))/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A071259

/-- `floor((A000040(n+1)+A002808(n+1))/2)` -/
def P17396136488218185286.Spec : Prop :=
  ∀ n, P17396136488218185286.a n = A071259 (n + 1)

theorem P17396136488218185286.correct : P17396136488218185286.Spec := by
  intro n
  simp only [A071259, Nat.add_sub_cancel]

end A071259

/-! ## A071259.P2870737694754860777

`floor(A064799(n+1)/2)`
-/

namespace A071259.P2870737694754860777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064799 (n + 1) : ℚ) / 2⌋

end

end A071259.P2870737694754860777

namespace A071259

/-- `floor(A064799(n+1)/2)` -/
def P2870737694754860777.Spec : Prop :=
  ∀ n, P2870737694754860777.a n = A071259 (n + 1)

theorem P2870737694754860777.correct : P2870737694754860777.Spec := by
  intro n
  simp only [A071259, Nat.add_sub_cancel, A071259.P2870737694754860777.a, A071259.P17396136488218185286.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A064799, A064799.P13450618005534133469.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071259

/-! ## A071259.P5029854399786572086

`floor((A018252(n+2)+A000040(n+1))/2)`
-/

namespace A071259.P5029854399786572086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018252 (n + 2) + A000040 (n + 1) : ℚ) / 2⌋

end

end A071259.P5029854399786572086

namespace A071259

/-- `floor((A018252(n+2)+A000040(n+1))/2)` -/
def P5029854399786572086.Spec : Prop :=
  ∀ n, P5029854399786572086.a n = A071259 (n + 1)

end A071259

/-! ## A071259.P1862396341804269612

`floor((lt[0, A082023(n)]+A000040(n+1))/2)`
-/

namespace A071259.P1862396341804269612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + A000040 (n + 1) : ℚ) / 2⌋

end

end A071259.P1862396341804269612

namespace A071259

/-- `floor((lt[0, A082023(n)]+A000040(n+1))/2)` -/
def P1862396341804269612.Spec : Prop :=
  ∀ n, P1862396341804269612.a n = A071259 (n + 1)

theorem P1862396341804269612.correct : P1862396341804269612.Spec := by
  intro n
  simp only [A071259, Nat.add_sub_cancel, A071259.P1862396341804269612.f1, A071259.P1862396341804269612.f2, A071259.P1862396341804269612.a, A071259.P17396136488218185286.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071259

/-! ## A071259.P2631573635536210676

`A110654(A002808(n+1))+A110654(A006093(n+1))`
-/

namespace A071259.P2631573635536210676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002808 (n + 1)).toNat + A110654 (A006093 (n + 1)).toNat

end

end A071259.P2631573635536210676

namespace A071259

/-- `A110654(A002808(n+1))+A110654(A006093(n+1))` -/
def P2631573635536210676.Spec : Prop :=
  ∀ n, P2631573635536210676.a n = A071259 (n + 1)

end A071259

/-! ## A071259.P10128356521045867756

`A110654(A002808(n+1))+A110654(A156037(n+1))`
-/

namespace A071259.P10128356521045867756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002808 (n + 1)).toNat + A110654 (A156037 (n + 1)).toNat

end

end A071259.P10128356521045867756

namespace A071259

/-- `A110654(A002808(n+1))+A110654(A156037(n+1))` -/
def P10128356521045867756.Spec : Prop :=
  ∀ n, P10128356521045867756.a n = A071259 (n + 1)

end A071259

/-! ## A071259.P8671975777332588850

`A004526(A064799(n+1))`
-/

namespace A071259.P8671975777332588850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A064799 (n + 1)).toNat

end

end A071259.P8671975777332588850

namespace A071259

/-- `A004526(A064799(n+1))` -/
def P8671975777332588850.Spec : Prop :=
  ∀ n, P8671975777332588850.a n = A071259 (n + 1)

end A071259

/-! ## A071259.P5018123708421128101

`A004526(A171639(n+2))`
-/

namespace A071259.P5018123708421128101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A171639 (n + 2)).toNat

end

end A071259.P5018123708421128101

namespace A071259

/-- `A004526(A171639(n+2))` -/
def P5018123708421128101.Spec : Prop :=
  ∀ n, P5018123708421128101.a n = A071259 (n + 1)

end A071259

/-! ## A071259.P14058818604111557402

`A008619(A064799(n+1)-2)`
-/

namespace A071259.P14058818604111557402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A064799 (n + 1) - 2).toNat

end

end A071259.P14058818604111557402

namespace A071259

/-- `A008619(A064799(n+1)-2)` -/
def P14058818604111557402.Spec : Prop :=
  ∀ n, P14058818604111557402.a n = A071259 (n + 1)

end A071259

/-! ## A071259.P4405442739840672873

`A008619(A072668(n+1)+A006093(n+1))`
-/

namespace A071259.P4405442739840672873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A072668 (n + 1) + A006093 (n + 1)).toNat

end

end A071259.P4405442739840672873

namespace A071259

/-- `A008619(A072668(n+1)+A006093(n+1))` -/
def P4405442739840672873.Spec : Prop :=
  ∀ n, P4405442739840672873.a n = A071259 (n + 1)

end A071259

/-! ## A071259.P17947127884676791658

`A110654(A006093(n+1)+A002808(n+1))`
-/

namespace A071259.P17947127884676791658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A006093 (n + 1) + A002808 (n + 1)).toNat

end

end A071259.P17947127884676791658

namespace A071259

/-- `A110654(A006093(n+1)+A002808(n+1))` -/
def P17947127884676791658.Spec : Prop :=
  ∀ n, P17947127884676791658.a n = A071259 (n + 1)

end A071259

/-! ## A071259.P16976935753947021094

`A110654(A156037(n+1)+A002808(n+1))`
-/

namespace A071259.P16976935753947021094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A156037 (n + 1) + A002808 (n + 1)).toNat

end

end A071259.P16976935753947021094

namespace A071259

/-- `A110654(A156037(n+1)+A002808(n+1))` -/
def P16976935753947021094.Spec : Prop :=
  ∀ n, P16976935753947021094.a n = A071259 (n + 1)

end A071259

/-!
# A071260: Integer part of the geometric mean of the n-th prime prime(n) and the n-th composite number C(n).

The programs for A071260, the canonical program `A071260.P4436838018633827743` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071260 has offset 0).

The definition of A071260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071260.P4436838018633827743

`floor(sqrt(A067563(n+1)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071260

/-- `floor(sqrt(A067563(n+1)))` -/
def P4436838018633827743.Spec : Prop :=
  ∀ n, P4436838018633827743.a n = A071260 n

theorem P4436838018633827743.correct : P4436838018633827743.Spec := by
  intro n
  simp only [A071260]

end A071260

/-! ## A071260.P4465339738150625350

`floor(sqrt(A000040(n+1)*A002808(n+1)))`
-/

namespace A071260.P4465339738150625350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1) * A002808 (n + 1))

end

end A071260.P4465339738150625350

namespace A071260

/-- `floor(sqrt(A000040(n+1)*A002808(n+1)))` -/
def P4465339738150625350.Spec : Prop :=
  ∀ n, P4465339738150625350.a n = A071260 n

end A071260

/-! ## A071260.P12354062369894465649

`floor(sqrt(A000040(n+1)*A018252(n+2)))`
-/

namespace A071260.P12354062369894465649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1) * A018252 (n + 2))

end

end A071260.P12354062369894465649

namespace A071260

/-- `floor(sqrt(A000040(n+1)*A018252(n+2)))` -/
def P12354062369894465649.Spec : Prop :=
  ∀ n, P12354062369894465649.a n = A071260 n

end A071260

/-! ## A071260.P17926240469328746354

`floor(sqrt(A002808(n+1)*A008578(n+2)))`
-/

namespace A071260.P17926240469328746354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002808 (n + 1) * A008578 (n + 2))

end

end A071260.P17926240469328746354

namespace A071260

/-- `floor(sqrt(A002808(n+1)*A008578(n+2)))` -/
def P17926240469328746354.Spec : Prop :=
  ∀ n, P17926240469328746354.a n = A071260 n

end A071260

/-! ## A071260.P5057904430177480252

`floor(sqrt(A067747(2*n+1)*A067747(2*(n+1))))`
-/

namespace A071260.P5057904430177480252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A067747 (2 * n + 1) * A067747 (2 * (n + 1)))

end

end A071260.P5057904430177480252

namespace A071260

/-- `floor(sqrt(A067747(2*n+1)*A067747(2*(n+1))))` -/
def P5057904430177480252.Spec : Prop :=
  ∀ n, P5057904430177480252.a n = A071260 n

end A071260

/-! ## A071260.P12012000643958598548

`A023443(ceil(sqrt(A067563(n+1))))`
-/

namespace A071260.P12012000643958598548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈Real.sqrt (A067563 (n + 1) : ℝ)⌉.toNat

end

end A071260.P12012000643958598548

namespace A071260

/-- `A023443(ceil(sqrt(A067563(n+1))))` -/
def P12012000643958598548.Spec : Prop :=
  ∀ n, P12012000643958598548.a n = A071260 n

end A071260

/-!
# A071261: Smallest k such that |p(k)-c(k)| is an n-digit number where p(k) is the k-th prime and c(k) is the k-th composite number.

The programs for A071261, there is no canonical definition to state claims against.
-/

/-! ## A071261.P13115004180402257683

`or(A104173(A078945(n)), A267700(n+1))`
-/

namespace A071261.P13115004180402257683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104173 (A078945 n).toNat) (A267700 (n + 1))

end

end A071261.P13115004180402257683

/-!
# A071263: Smallest nontrivial composite number beginning with n.

The programs for A071263, the canonical program `A071263.P13313201786565210703` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071263 has offset 1).

The definition of A071263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071263.P13313201786565210703

`A017281(n+1)+A010051(A017281(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A071263

/-- `A017281(n+1)+A010051(A017281(n+1))` -/
def P13313201786565210703.Spec : Prop :=
  ∀ n, P13313201786565210703.a n = A071263 (n + 1)

theorem P13313201786565210703.correct : P13313201786565210703.Spec := by
  intro n
  simp only [A071263, Nat.add_sub_cancel]

end A071263

/-! ## A071263.P9307057943315861475

`A014683(10*(n+1)+1)`
-/

namespace A071263.P9307057943315861475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (10 * (n + 1) + 1)

end

end A071263.P9307057943315861475

namespace A071263

/-- `A014683(10*(n+1)+1)` -/
def P9307057943315861475.Spec : Prop :=
  ∀ n, P9307057943315861475.a n = A071263 (n + 1)

end A071263

/-! ## A071263.P12166756407413478541

`A082928(A017281(n+1))`
-/

namespace A071263.P12166756407413478541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (A017281 (n + 1)).toNat

end

end A071263.P12166756407413478541

namespace A071263

/-- `A082928(A017281(n+1))` -/
def P12166756407413478541.Spec : Prop :=
  ∀ n, P12166756407413478541.a n = A071263 (n + 1)

end A071263

/-! ## A071263.P17052800064904218412

`A082928(A017377(n)+2)`
-/

namespace A071263.P17052800064904218412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (A017377 n + 2).toNat

end

end A071263.P17052800064904218412

namespace A071263

/-- `A082928(A017377(n)+2)` -/
def P17052800064904218412.Spec : Prop :=
  ∀ n, P17052800064904218412.a n = A071263 (n + 1)

end A071263

/-! ## A071263.P2534043449040562998

`A113646(A017377(n)+2)`
-/

namespace A071263.P2534043449040562998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (A017377 n + 2).toNat

end

end A071263.P2534043449040562998

namespace A071263

/-- `A113646(A017377(n)+2)` -/
def P2534043449040562998.Spec : Prop :=
  ∀ n, P2534043449040562998.a n = A071263 (n + 1)

end A071263

/-! ## A071263.P4194363670223238170

`A113646(A019428(2*n+3)-2)`
-/

namespace A071263.P4194363670223238170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (A019428 (2 * n + 3) - 2).toNat

end

end A071263.P4194363670223238170

namespace A071263

/-- `A113646(A019428(2*n+3)-2)` -/
def P4194363670223238170.Spec : Prop :=
  ∀ n, P4194363670223238170.a n = A071263 (n + 1)

end A071263

/-! ## A071263.P13247615360117878769

`A082928(n+2+A008486(3*(n+1)))`
-/

namespace A071263.P13247615360117878769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 ((n + 2 : ℤ) + A008486 (3 * (n + 1))).toNat

end

end A071263.P13247615360117878769

namespace A071263

/-- `A082928(n+2+A008486(3*(n+1)))` -/
def P13247615360117878769.Spec : Prop :=
  ∀ n, P13247615360117878769.a n = A071263 (n + 1)

end A071263

/-! ## A071263.P11139052997079567928

`A139636(A008592(n+1))`
-/

namespace A071263.P11139052997079567928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139636 (A008592 (n + 1)).toNat

end

end A071263.P11139052997079567928

namespace A071263

/-- `A139636(A008592(n+1))` -/
def P11139052997079567928.Spec : Prop :=
  ∀ n, P11139052997079567928.a n = A071263 (n + 1)

end A071263

/-!
# A071264: Expansion of (1+x*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071264, the canonical program `A071264.P6853704357610007777` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071264 has offset 0).

The definition of A071264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071264.P6853704357610007777

`Δ[A032952(n)]-A002057(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071264

/-- `Δ[A032952(n)]-A002057(n)` -/
def P6853704357610007777.Spec : Prop :=
  ∀ n, P6853704357610007777.a n = A071264 n

theorem P6853704357610007777.correct : P6853704357610007777.Spec := by
  intro n
  simp only [A071264]

end A071264

/-! ## A071264.P14074033873028033355

`Δ[A032952(n)-∑[A099376(n)]]`
-/

namespace A071264.P14074033873028033355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071264.P14074033873028033355

namespace A071264

/-- `Δ[A032952(n)-∑[A099376(n)]]` -/
def P14074033873028033355.Spec : Prop :=
  ∀ n, P14074033873028033355.a n = A071264 n

end A071264

/-! ## A071264.P10271774411605195636

`∑[A026030(n+1)-A000245(n)]`
-/

namespace A071264.P10271774411605195636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026030 (n + 1) - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071264.P10271774411605195636

namespace A071264

/-- `∑[A026030(n+1)-A000245(n)]` -/
def P10271774411605195636.Spec : Prop :=
  ∀ n, P10271774411605195636.a n = A071264 n

end A071264

/-! ## A071264.P15270229331651947622

`A000588(n+2)+∑[A026012(n)]`
-/

namespace A071264.P15270229331651947622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071264.P15270229331651947622

namespace A071264

/-- `A000588(n+2)+∑[A026012(n)]` -/
def P15270229331651947622.Spec : Prop :=
  ∀ n, P15270229331651947622.a n = A071264 n

end A071264

/-! ## A071264.P4467075836629220944

`Δ[A032952(n)]-A099376(n+1)`
-/

namespace A071264.P4467075836629220944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 (n + 1)

end

end A071264.P4467075836629220944

namespace A071264

/-- `Δ[A032952(n)]-A099376(n+1)` -/
def P4467075836629220944.Spec : Prop :=
  ∀ n, P4467075836629220944.a n = A071264 n

end A071264

/-! ## A071264.P1656776515954460158

`A000588(n+2)+A000245(n+1)`
-/

namespace A071264.P1656776515954460158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 2) + A000245 (n + 1)

end

end A071264.P1656776515954460158

namespace A071264

/-- `A000588(n+2)+A000245(n+1)` -/
def P1656776515954460158.Spec : Prop :=
  ∀ n, P1656776515954460158.a n = A071264 n

end A071264

/-! ## A071264.P7965921035018829862

`A071724(n+1)+A000588(n+2)`
-/

namespace A071264.P7965921035018829862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + A000588 (n + 2)

end

end A071264.P7965921035018829862

namespace A071264

/-- `A071724(n+1)+A000588(n+2)` -/
def P7965921035018829862.Spec : Prop :=
  ∀ n, P7965921035018829862.a n = A071264 n

end A071264

/-! ## A071264.P13996745360215423191

`A071741(n+1)-A071722(n+1)`
-/

namespace A071264.P13996745360215423191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 (n + 1) - A071722 (n + 1)

end

end A071264.P13996745360215423191

namespace A071264

/-- `A071741(n+1)-A071722(n+1)` -/
def P13996745360215423191.Spec : Prop :=
  ∀ n, P13996745360215423191.a n = A071264 n

end A071264

/-! ## A071264.P15132551330079700782

`A000245(n+1)+A026013(n+2)-A002057(n+1)`
-/

namespace A071264.P15132551330079700782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A026013 (n + 2) - A002057 (n + 1))

end

end A071264.P15132551330079700782

namespace A071264

/-- `A000245(n+1)+A026013(n+2)-A002057(n+1)` -/
def P15132551330079700782.Spec : Prop :=
  ∀ n, P15132551330079700782.a n = A071264 n

end A071264

/-! ## A071264.P6214144534165034033

`A000108(n+1)+A026017(n+2)-A026016(n+1)`
-/

namespace A071264.P6214144534165034033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A026017 (n + 2) - A026016 (n + 1))

end

end A071264.P6214144534165034033

namespace A071264

/-- `A000108(n+1)+A026017(n+2)-A026016(n+1)` -/
def P6214144534165034033.Spec : Prop :=
  ∀ n, P6214144534165034033.a n = A071264 n

end A071264

/-! ## A071264.P11479298858441497938

`A071724(n+1)+A026013(n+2)-A002057(n+1)`
-/

namespace A071264.P11479298858441497938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + (A026013 (n + 2) - A002057 (n + 1))

end

end A071264.P11479298858441497938

namespace A071264

/-- `A071724(n+1)+A026013(n+2)-A002057(n+1)` -/
def P11479298858441497938.Spec : Prop :=
  ∀ n, P11479298858441497938.a n = A071264 n

end A071264

/-! ## A071264.P2050455452519846715

`A000245(n+1)+A003517(n+2)-A000344(n+2)`
-/

namespace A071264.P2050455452519846715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A003517 (n + 2) - A000344 (n + 2))

end

end A071264.P2050455452519846715

namespace A071264

/-- `A000245(n+1)+A003517(n+2)-A000344(n+2)` -/
def P2050455452519846715.Spec : Prop :=
  ∀ n, P2050455452519846715.a n = A071264 n

end A071264

/-! ## A071264.P1341008916235597191

`A000588(n+1)+A026026(n+3)-A026029(n+1)`
-/

namespace A071264.P1341008916235597191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + (A026026 (n + 3) - A026029 (n + 1))

end

end A071264.P1341008916235597191

namespace A071264

/-- `A000588(n+1)+A026026(n+3)-A026029(n+1)` -/
def P1341008916235597191.Spec : Prop :=
  ∀ n, P1341008916235597191.a n = A071264 n

end A071264

/-!
# A071266: Smallest numbers which can be written in exactly n different ways as k + R(k) where R(k) is k reversed (A004086).

The programs for A071266, there is no canonical definition to state claims against.
-/

/-! ## A071266.P16558642941036859105

`A072041(lt[A001281(n), 6])`
-/

namespace A071266.P16558642941036859105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A071266.P16558642941036859105

/-! ## A071266.P15244480307626571831

`A072041(eq[n^(n%2), A261585(n)])`
-/

namespace A071266.P15244480307626571831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071266.P15244480307626571831

/-! ## A071266.P6199585175449366050

`A072041(lt[A354144(n+1), A244361(n+2)])`
-/

namespace A071266.P6199585175449366050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A071266.P6199585175449366050

/-!
# A071267: Numbers which can be expressed as the sum of all distinct digit permutations of some number k.

The programs for A071267, there is no canonical definition to state claims against.
-/

/-! ## A071267.P4463241333138820472

`∩[A044959(n+1), A295020(n+1)]`
-/

namespace A071267.P4463241333138820472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071267.P4463241333138820472

/-! ## A071267.P9482764875522602036

`∩[A276115(n+1), A295020(n+1)]`
-/

namespace A071267.P9482764875522602036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071267.P9482764875522602036

/-! ## A071267.P5201868395077670628

`∩[A044821(n+1), A295020(n+1)]`
-/

namespace A071267.P5201868395077670628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071267.P5201868395077670628

/-!
# A071268: Sum of all digit permutations of the concatenation of first n numbers.

The programs for A071268, there is no canonical definition to state claims against.
-/

/-! ## A071268.P17538481179691111369

`n!*record[(n+1)*A127805(n)]`
-/

namespace A071268.P17538481179691111369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071268.P17538481179691111369

/-! ## A071268.P4435057634712101592

`∑[A000005(4^n)-n]*∑[10^n]*n!`
-/

namespace A071268.P4435057634712101592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 ^ n) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * (Nat.factorial n : ℤ)

end

end A071268.P4435057634712101592

/-! ## A071268.P8017775112045180704

`record[A127805(n)]*A025747(n)*n!`
-/

namespace A071268.P8017775112045180704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A025747 n * (Nat.factorial n : ℤ)

end

end A071268.P8017775112045180704

/-! ## A071268.P2491206871846805205

`∑[A199343(n)]*record[A127805(n)]*n!`
-/

namespace A071268.P2491206871846805205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * (Nat.factorial n : ℤ)

end

end A071268.P2491206871846805205

/-! ## A071268.P4872394494718117705

`∑[A001222(2*2^n)]*record[A127805(n)]*n!`
-/

namespace A071268.P4872394494718117705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * 2 ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * (Nat.factorial n : ℤ)

end

end A071268.P4872394494718117705

/-!
# A071269: Terms of A007908 which are divisible by their index.

The programs for A071269, there is no canonical definition to state claims against.
-/

/-! ## A071269.P18202543594979712716

`A007908(A029455(n+1))`
-/

namespace A071269.P18202543594979712716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (A029455 (n + 1)).toNat

end

end A071269.P18202543594979712716

/-! ## A071269.P13594041218358677650

`A077306(eq[1, A075001(n+1)]+1)`
-/

namespace A071269.P13594041218358677650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071269.P13594041218358677650

/-! ## A071269.P15343621707101956400

`A077306(record[(n+1)/A075001(n+1)])`
-/

namespace A071269.P15343621707101956400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A075001 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077306 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A071269.P15343621707101956400

/-! ## A071269.P3039165869768306457

`record[(2-A075001(n+1))*A077306(n+1)]`
-/

namespace A071269.P3039165869768306457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A075001 (n + 1)) * A077306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071269.P3039165869768306457

/-! ## A071269.P16761973857789435276

`A077306(A029455(n+1)*A119335(n))`
-/

namespace A071269.P16761973857789435276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077306 (A029455 (n + 1) * A119335 n).toNat

end

end A071269.P16761973857789435276

/-!
# A071270: a(n) = n^2*(2*n^2 + 1)/3.

The programs for A071270, the canonical program `A071270.P1643919986040106459` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071270 has offset 0).

The definition of A071270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(2*n²+1)/3` (program `A071270.P9596608135893763088`, by `A071270.P9596608135893763088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071270.P6209436388885189820

`C(2*n²+1, 2)/3`
-/

namespace A071270.P6209436388885189820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n ^ 2 + 1) 2 : ℚ) / 3

end

end A071270.P6209436388885189820

namespace A071270

/-- `C(2*n²+1, 2)/3` -/
def P6209436388885189820.Spec : Prop :=
  ∀ n, P6209436388885189820.a n = (A071270 n : ℚ)

end A071270

/-! ## A071270.P9596608135893763088

`n²*(2*n²+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071270.P9596608135893763088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (2 * n ^ 2 + 1) : ℚ) / 3

end

end A071270.P9596608135893763088

namespace A071270

/-- `n²*(2*n²+1)/3` -/
def P9596608135893763088.Spec : Prop :=
  ∀ n, P9596608135893763088.a n = (A071270 n : ℚ)

theorem P9596608135893763088.correct : P9596608135893763088.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A071270, Nat.add_sub_cancel, A071270.P9596608135893763088.a, A071270.P1643919986040106459.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A071270, Nat.add_sub_cancel, A071270.P9596608135893763088.a, A071270.P1643919986040106459.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A071270

/-! ## A071270.P1643919986040106459

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=57, a(4)=176`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071270

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1643919986040106459.Spec : Prop :=
  ∀ n, P1643919986040106459.a n = A071270 n

theorem P1643919986040106459.correct : P1643919986040106459.Spec := by
  intro n
  simp only [A071270]

end A071270

/-! ## A071270.P16936130896873247159

`n^4-∑[C(2*n, 3)]`
-/

namespace A071270.P16936130896873247159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071270.P16936130896873247159

namespace A071270

/-- `n^4-∑[C(2*n, 3)]` -/
def P16936130896873247159.Spec : Prop :=
  ∀ n, P16936130896873247159.a n = A071270 n

end A071270

/-! ## A071270.P16136939314041766656

`n²+4*n*C(n+1, 3)`
-/

namespace A071270.P16136939314041766656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4 * (n * Nat.choose (n + 1) 3)

end

end A071270.P16136939314041766656

namespace A071270

/-- `n²+4*n*C(n+1, 3)` -/
def P16136939314041766656.Spec : Prop :=
  ∀ n, (P16136939314041766656.a n : ℤ) = A071270 n

end A071270

/-! ## A071270.P631091043906614885

`n*∑[∑[a(n-1)+4]]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A071270.P631091043906614885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071270.P631091043906614885

namespace A071270

/-- `n*∑[∑[a(n-1)+4]]` -/
def P631091043906614885.Spec : Prop :=
  ∀ n, (P631091043906614885.a n : ℤ) = A071270 n

end A071270

/-! ## A071270.P7077695716092557149

`n*A005900(n)`
-/

namespace A071270.P7077695716092557149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005900 n

end

end A071270.P7077695716092557149

namespace A071270

/-- `n*A005900(n)` -/
def P7077695716092557149.Spec : Prop :=
  ∀ n, P7077695716092557149.a n = A071270 n

end A071270

/-! ## A071270.P10029191695700092930

`A072819(n)+n²`
-/

namespace A071270.P10029191695700092930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 n + (n ^ 2 : ℤ)

end

end A071270.P10029191695700092930

namespace A071270

/-- `A072819(n)+n²` -/
def P10029191695700092930.Spec : Prop :=
  ∀ n, P10029191695700092930.a n = A071270 n

end A071270

/-! ## A071270.P3183704710931129506

`A035598(n)-n²`
-/

namespace A071270.P3183704710931129506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 n - (n ^ 2 : ℤ)

end

end A071270.P3183704710931129506

namespace A071270

/-- `A035598(n)-n²` -/
def P3183704710931129506.Spec : Prop :=
  ∀ n, P3183704710931129506.a n = A071270 n

end A071270

/-! ## A071270.P1919771939842564413

`n*(A179903(n)-2)`
-/

namespace A071270.P1919771939842564413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A179903 n - 2)

end

end A071270.P1919771939842564413

namespace A071270

/-- `n*(A179903(n)-2)` -/
def P1919771939842564413.Spec : Prop :=
  ∀ n, P1919771939842564413.a n = A071270 n

end A071270

/-! ## A071270.P16007210393527442606

`n/2*A035597(n)`
-/

namespace A071270.P16007210393527442606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A035597 n : ℚ)

end

end A071270.P16007210393527442606

namespace A071270

/-- `n/2*A035597(n)` -/
def P16007210393527442606.Spec : Prop :=
  ∀ n, P16007210393527442606.a n = (A071270 n : ℚ)

end A071270

/-! ## A071270.P17022752293345332054

`n/3*A061317(n)`
-/

namespace A071270.P17022752293345332054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A061317 n : ℚ)

end

end A071270.P17022752293345332054

namespace A071270

/-- `n/3*A061317(n)` -/
def P17022752293345332054.Spec : Prop :=
  ∀ n, P17022752293345332054.a n = (A071270 n : ℚ)

theorem P17022752293345332054.correct : P17022752293345332054.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A071270, Nat.add_sub_cancel, A071270.P17022752293345332054.a, A071270.P1643919986040106459.a, A061317, A061317.P8488168899613189018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A071270, Nat.add_sub_cancel, A071270.P17022752293345332054.a, A071270.P1643919986040106459.a, A061317, A061317.P8488168899613189018.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A071270

/-! ## A071270.P12153228863715322230

`n²²-A112742(n)`
-/

namespace A071270.P12153228863715322230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A112742 n

end

end A071270.P12153228863715322230

namespace A071270

/-- `n²²-A112742(n)` -/
def P12153228863715322230.Spec : Prop :=
  ∀ n, P12153228863715322230.a n = A071270 n

end A071270

/-! ## A071270.P433899956313688686

`n²²-2*A008911(n)`
-/

namespace A071270.P433899956313688686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - 2 * A008911 n

end

end A071270.P433899956313688686

namespace A071270

/-- `n²²-2*A008911(n)` -/
def P433899956313688686.Spec : Prop :=
  ∀ n, P433899956313688686.a n = A071270 n

end A071270

/-! ## A071270.P4211788447366833858

`A037270(n)+A008911(n)`
-/

namespace A071270.P4211788447366833858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n + A008911 n

end

end A071270.P4211788447366833858

namespace A071270

/-- `A037270(n)+A008911(n)` -/
def P4211788447366833858.Spec : Prop :=
  ∀ n, P4211788447366833858.a n = A071270 n

end A071270

/-! ## A071270.P3736720592785742220

`A071245(n)+A071238(n)`
-/

namespace A071270.P3736720592785742220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071245 n + A071238 n

end

end A071270.P3736720592785742220

namespace A071270

/-- `A071245(n)+A071238(n)` -/
def P3736720592785742220.Spec : Prop :=
  ∀ n, P3736720592785742220.a n = A071270 n

end A071270

/-! ## A071270.P5542343672389966340

`A139594(n)+A006011(n)`
-/

namespace A071270.P5542343672389966340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 n + A006011 n

end

end A071270.P5542343672389966340

namespace A071270

/-- `A139594(n)+A006011(n)` -/
def P5542343672389966340.Spec : Prop :=
  ∀ n, P5542343672389966340.a n = A071270 n

end A071270

/-! ## A071270.P2492280225647072287

`A212560(n)+A006325(n)`
-/

namespace A071270.P2492280225647072287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 n + A006325 n

end

end A071270.P2492280225647072287

namespace A071270

/-- `A212560(n)+A006325(n)` -/
def P2492280225647072287.Spec : Prop :=
  ∀ n, P2492280225647072287.a n = A071270 n

end A071270

/-! ## A071270.P4788372151369967919

`A008354(n)-A008911(n)`
-/

namespace A071270.P4788372151369967919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008354 n - A008911 n

end

end A071270.P4788372151369967919

namespace A071270

/-- `A008354(n)-A008911(n)` -/
def P4788372151369967919.Spec : Prop :=
  ∀ n, P4788372151369967919.a n = A071270 n

end A071270

/-! ## A071270.P4797043356811113375

`A187756(n)-A072819(n)`
-/

namespace A071270.P4797043356811113375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n - A072819 n

end

end A071270.P4797043356811113375

namespace A071270

/-- `A187756(n)-A072819(n)` -/
def P4797043356811113375.Spec : Prop :=
  ∀ n, P4797043356811113375.a n = A071270 n

end A071270

/-!
# A071272: Palindromes in A066492.

The programs for A071272, there is no canonical definition to state claims against.
-/

/-! ## A071272.P4559500068314017803

`A056525(A039691(n+2))`
-/

namespace A071272.P4559500068314017803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A039691 (n + 2)).toNat

end

end A071272.P4559500068314017803

/-! ## A071272.P17828719185102675743

`∩[A002113(n+1), A066492(n+1)]`
-/

namespace A071272.P17828719185102675743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071272.P17828719185102675743

/-! ## A071272.P6740051768284749740

`∩[A056525(n+1), A066492(n+1)]`
-/

namespace A071272.P6740051768284749740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071272.P6740051768284749740

/-! ## A071272.P3751829201216545154

`∩[A061917(n+1), A066492(n+1)]`
-/

namespace A071272.P3751829201216545154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071272.P3751829201216545154

/-! ## A071272.P8864026680969096265

`∩[A066492(n+1), A169824(n+1)]`
-/

namespace A071272.P8864026680969096265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071272.P8864026680969096265

/-! ## A071272.P13298402673119301640

`∩[A066492(n+1), A278328(n+1)]`
-/

namespace A071272.P13298402673119301640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071272.P13298402673119301640

/-! ## A071272.P16939723235592817679

`∩[A061379(n+1), A066492(n+1)]`
-/

namespace A071272.P16939723235592817679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071272.P16939723235592817679

/-! ## A071272.P4194417435136810955

`∩[A066492(n+1), A110751(n+1)]`
-/

namespace A071272.P4194417435136810955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071272.P4194417435136810955

/-! ## A071272.P18332313793782222329

`∩[A039691(n+1), A066492(n+1)]`
-/

namespace A071272.P18332313793782222329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071272.P18332313793782222329

/-! ## A071272.P5557577016783428317

`filter[A066492(n+1), A136522(#)]`
-/

namespace A071272.P5557577016783428317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A071272.P5557577016783428317

/-!
# A071273: Concatenation of R(n) (A004086) and n, omitting leading 0's.

The programs for A071273, there is no canonical definition to state claims against.
-/

/-! ## A071273.P11964083239557183225

`11*A071274(n+1)`
-/

namespace A071273.P11964083239557183225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A071274 (n + 1)

end

end A071273.P11964083239557183225

/-! ## A071273.P14334739670064539262

`11*(A110725(n+1)-A066492(n+1))`
-/

namespace A071273.P14334739670064539262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (A110725 (n + 1) - A066492 (n + 1))

end

end A071273.P14334739670064539262

/-! ## A071273.P16153777228001894023

`A008593(A071274(n+1))`
-/

namespace A071273.P16153777228001894023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A071274 (n + 1)).toNat

end

end A071273.P16153777228001894023

/-! ## A071273.P17296173716494600532

`A008593(A110725(n+1)-A066492(n+1))`
-/

namespace A071273.P17296173716494600532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A110725 (n + 1) - A066492 (n + 1)).toNat

end

end A071273.P17296173716494600532

/-! ## A071273.P2077865792525592582

`A008593(A110725(n+1))-A056524(n+1)`
-/

namespace A071273.P2077865792525592582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A110725 (n + 1)).toNat - A056524 (n + 1)

end

end A071273.P2077865792525592582

/-! ## A071273.P6274511350023662447

`A052008(A020338(n+1))-A056524(n+1)`
-/

namespace A071273.P6274511350023662447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 (A020338 (n + 1)).toNat - A056524 (n + 1)

end

end A071273.P6274511350023662447

/-!
# A071274: A071273 divided by 11.

The programs for A071274, there is no canonical definition to state claims against.
-/

/-! ## A071274.P17854554467724252124

`A071273(n+1)/11`
-/

namespace A071274.P17854554467724252124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071273 (n + 1) : ℚ) / 11

end

end A071274.P17854554467724252124

/-! ## A071274.P14969150467310570041

`A110725(n+1)-A066492(n+1)`
-/

namespace A071274.P14969150467310570041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110725 (n + 1) - A066492 (n + 1)

end

end A071274.P14969150467310570041

/-! ## A071274.P13297368885414965086

`A106612(A071273(n+1))`
-/

namespace A071274.P13297368885414965086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A071273 (n + 1)).toNat

end

end A071274.P13297368885414965086

/-! ## A071274.P9865238691346628745

`(A052008(A020338(n+1))-A056524(n+1))/11`
-/

namespace A071274.P9865238691346628745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052008 (A020338 (n + 1)).toNat - A056524 (n + 1) : ℚ) / 11

end

end A071274.P9865238691346628745

/-! ## A071274.P14165516679866937044

`A088472(a(n-1))+1` with `a(0)=1`
-/

namespace A071274.P14165516679866937044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088472 (a (n - 1)).toNat + 1

end

end A071274.P14165516679866937044

/-!
# A071275: Palindromes in A071274.

The programs for A071275, there is no canonical definition to state claims against.
-/

/-! ## A071275.P11328319963829795794

`filter[A071274(n+1), A136522(#)]`
-/

namespace A071275.P11328319963829795794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A071275.P11328319963829795794

/-! ## A071275.P5818115699275350011

`∩[A083136(n+1), A171120(n+1)]`
-/

namespace A071275.P5818115699275350011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071275.P5818115699275350011

/-! ## A071275.P6546550259904708691

`∩[A056525(n+1), A392051(n+1)]`
-/

namespace A071275.P6546550259904708691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071275.P6546550259904708691

/-! ## A071275.P8676737627898523705

`∩[A066492(n+1), A392051(n+1)]`
-/

namespace A071275.P8676737627898523705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071275.P8676737627898523705

/-! ## A071275.P10312788927500341547

`∩[A071272(n+1), A392051(n+1)]`
-/

namespace A071275.P10312788927500341547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071275.P10312788927500341547

/-!
# A071276: a(1) = 1; a(n) = smallest palindrome which is a nontrivial product of n distinct palindromes.

The programs for A071276, there is no canonical definition to state claims against.
-/

/-! ## A071276.P13335774784462141165

`∩[A212308(n+1), A276354(n+1)]`
-/

namespace A071276.P13335774784462141165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071276.P13335774784462141165

/-!
# A071277: a(1) = 1; a(n) = smallest palindrome which is a nontrivial product of n palindromes (repetitions allowed).

The programs for A071277, there is no canonical definition to state claims against.
-/

/-! ## A071277.P11967359659492631971

`A088114(n+1)-floor(acot(n))`
-/

namespace A071277.P11967359659492631971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088114 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A071277.P11967359659492631971

/-! ## A071277.P2401312513292197498

`A088114(n+1)-A000007(n)`
-/

namespace A071277.P2401312513292197498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088114 (n + 1) - A000007 n

end

end A071277.P2401312513292197498

/-! ## A071277.P937191144970503230

`A088114(n+1)-A088157(n)`
-/

namespace A071277.P937191144970503230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088114 (n + 1) - A088157 n

end

end A071277.P937191144970503230

/-! ## A071277.P15363976976574868681

`A088114(n+1)-A084938(∑[n])`
-/

namespace A071277.P15363976976574868681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088114 (n + 1) - A084938 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071277.P15363976976574868681

/-! ## A071277.P8976151277813810862

`A088114(n+1)-char[A008606(n)]`
-/

namespace A071277.P8976151277813810862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088114 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A071277.P8976151277813810862

/-!
# A071278: Sorted list of numbers b(i)*b(j), 2 < i < j, where b = A002113 = 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 22, 33 ... is a list of the decimal palindromes.

The programs for A071278, there is no canonical definition to state claims against.
-/

/-! ## A071278.P9006361258512191062

`A228363(∑[A079684(n)^n+2])`
-/

namespace A071278.P9006361258512191062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079684 n ^ n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228363 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071278.P9006361258512191062

/-! ## A071278.P13298811026445711103

`A196252(2*(n+2))%A361622(n+1)`
-/

namespace A071278.P13298811026445711103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196252 (2 * (n + 2))) (A361622 (n + 1))

end

end A071278.P13298811026445711103

/-! ## A071278.P12504840656447269006

`A049077(∑[ceil(2^(n-2))])*A196252(2*(n+2))`
-/

namespace A071278.P12504840656447269006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A196252 (2 * (n + 2))

end

end A071278.P12504840656447269006

/-! ## A071278.P15783964799000357109

`A196252(2*n+4)+A000007(A208976(n))`
-/

namespace A071278.P15783964799000357109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196252 (2 * n + 4) + A000007 (A208976 n).toNat

end

end A071278.P15783964799000357109

/-! ## A071278.P9332103284028688988

`A196252(2*(n+2))%A007088(A000051(n))`
-/

namespace A071278.P9332103284028688988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196252 (2 * (n + 2))) (A007088 (A000051 n).toNat)

end

end A071278.P9332103284028688988

/-!
# A071279: Kissing number of regular n-gon.

The programs for A071279, the canonical program `A071279.P9291018528764146608` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071279 has offset 3).

The definition of A071279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071279.P9291018528764146608

`a(n-1)` with `a(0)=12, a(1)=8, a(2)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071279

/-- `a(n-1)` -/
def P9291018528764146608.Spec : Prop :=
  ∀ n, (P9291018528764146608.a n : ℤ) = A071279 (n + 3)

theorem P9291018528764146608.correct : P9291018528764146608.Spec := by
  intro n
  simp only [A071279, Nat.add_sub_cancel]

end A071279

/-!
# A071280: Numbers which are nontrivial multiples of 3 palindromes (need not be distinct).

The programs for A071280, there is no canonical definition to state claims against.
-/

/-! ## A071280.P5911325036704368470

`A160258(A043320(n+1))`
-/

namespace A071280.P5911325036704368470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160258 (A043320 (n + 1)).toNat

end

end A071280.P5911325036704368470

/-! ## A071280.P14458826195673670981

`A160258(A044917(n+1))`
-/

namespace A071280.P14458826195673670981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160258 (A044917 (n + 1)).toNat

end

end A071280.P14458826195673670981

/-! ## A071280.P17365825908097881548

`A160258(A055645(n+1))`
-/

namespace A071280.P17365825908097881548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160258 (A055645 (n + 1)).toNat

end

end A071280.P17365825908097881548

/-! ## A071280.P19404520655158774

`A160258(A161953(n+1))`
-/

namespace A071280.P19404520655158774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160258 (A161953 (n + 1)).toNat

end

end A071280.P19404520655158774

/-! ## A071280.P11980717859773984182

`A160258(A187829(n+1))`
-/

namespace A071280.P11980717859773984182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160258 (A187829 (n + 1)).toNat

end

end A071280.P11980717859773984182

/-!
# A071281: Numerators of Peirce sequence of order 3.

The programs for A071281, the canonical program `A071281.P6424107787387498205` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071281 has offset 0).

The definition of A071281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071281.P6424107787387498205

`A009947(A266981(n)-1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071281

/-- `A009947(A266981(n)-1)` -/
def P6424107787387498205.Spec : Prop :=
  ∀ n, P6424107787387498205.a n = A071281 n

theorem P6424107787387498205.correct : P6424107787387498205.Spec := by
  intro n
  simp only [A071281]

end A071281

/-! ## A071281.P1949444763695333937

`A009947(floor(A294178(n)/2))`
-/

namespace A071281.P1949444763695333937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 ⌊(A294178 n : ℚ) / 2⌋.toNat

end

end A071281.P1949444763695333937

namespace A071281

/-- `A009947(floor(A294178(n)/2))` -/
def P1949444763695333937.Spec : Prop :=
  ∀ n, P1949444763695333937.a n = A071281 n

end A071281

/-! ## A071281.P883187699898193207

`A009947(n²%A165747(n))`
-/

namespace A071281.P883187699898193207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (Int.tmod (n ^ 2 : ℤ) (A165747 n)).toNat

end

end A071281.P883187699898193207

namespace A071281

/-- `A009947(n²%A165747(n))` -/
def P883187699898193207.Spec : Prop :=
  ∀ n, P883187699898193207.a n = A071281 n

end A071281

/-! ## A071281.P13463226997495197698

`A009947(n-Δ[A152271(n)])`
-/

namespace A071281.P13463226997495197698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A071281.P13463226997495197698

namespace A071281

/-- `A009947(n-Δ[A152271(n)])` -/
def P13463226997495197698.Spec : Prop :=
  ∀ n, P13463226997495197698.a n = A071281 n

end A071281

/-! ## A071281.P521262144038147431

`A009947((A294178(n)-1)/2)`
-/

namespace A071281.P521262144038147431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (SequenceMachineLib.roundAway ((A294178 n - 1 : ℚ) / 2)).toNat

end

end A071281.P521262144038147431

namespace A071281

/-- `A009947((A294178(n)-1)/2)` -/
def P521262144038147431.Spec : Prop :=
  ∀ n, P521262144038147431.a n = A071281 n

end A071281

/-! ## A071281.P12124128510061829852

`A009947(A014682(n)-A000035(n))`
-/

namespace A071281.P12124128510061829852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A014682 n - A000035 n).toNat

end

end A071281.P12124128510061829852

namespace A071281

/-- `A009947(A014682(n)-A000035(n))` -/
def P12124128510061829852.Spec : Prop :=
  ∀ n, P12124128510061829852.a n = A071281 n

end A071281

/-! ## A071281.P10634570847275494053

`A009947(A001281(n)/A000034(n))`
-/

namespace A071281.P10634570847275494053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (SequenceMachineLib.roundAway ((A001281 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A071281.P10634570847275494053

namespace A071281

/-- `A009947(A001281(n)/A000034(n))` -/
def P10634570847275494053.Spec : Prop :=
  ∀ n, P10634570847275494053.a n = A071281 n

end A071281

/-! ## A071281.P10135076259371992184

`A009947(A014682(n))%A008619(n)`
-/

namespace A071281.P10135076259371992184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009947 (A014682 n).toNat) (A008619 n)

end

end A071281.P10135076259371992184

namespace A071281

/-- `A009947(A014682(n))%A008619(n)` -/
def P10135076259371992184.Spec : Prop :=
  ∀ n, P10135076259371992184.a n = A071281 n

end A071281

/-! ## A071281.P525663682624999065

`A009947(A014682(A014682(A042948(n))))`
-/

namespace A071281.P525663682624999065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A014682 (A014682 (A042948 n).toNat).toNat).toNat

end

end A071281.P525663682624999065

namespace A071281

/-- `A009947(A014682(A014682(A042948(n))))` -/
def P525663682624999065.Spec : Prop :=
  ∀ n, P525663682624999065.a n = A071281 n

end A071281

/-! ## A071281.P9730643529012363413

`A071283(A047222(n+1))`
-/

namespace A071281.P9730643529012363413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071283 (A047222 (n + 1)).toNat

end

end A071281.P9730643529012363413

namespace A071281

/-- `A071283(A047222(n+1))` -/
def P9730643529012363413.Spec : Prop :=
  ∀ n, P9730643529012363413.a n = A071281 n

end A071281

/-! ## A071281.P18381739088293896596

`A009947(A004524(A294178(n)))`
-/

namespace A071281.P18381739088293896596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A004524 (A294178 n).toNat).toNat

end

end A071281.P18381739088293896596

namespace A071281

/-- `A009947(A004524(A294178(n)))` -/
def P18381739088293896596.Spec : Prop :=
  ∀ n, P18381739088293896596.a n = A071281 n

end A071281

/-! ## A071281.P8487710115214443502

`A009947(A006370(n))%∑[char[2*n]]`
-/

namespace A071281.P8487710115214443502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009947 (A006370 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071281.P8487710115214443502

namespace A071281

/-- `A009947(A006370(n))%∑[char[2*n]]` -/
def P8487710115214443502.Spec : Prop :=
  ∀ n, P8487710115214443502.a n = A071281 n

end A071281

/-!
# A071282: Denominators of Peirce sequence of order 3.

The programs for A071282, the canonical program `A071282.P10682102351578688952` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071282 has offset 0).

The definition of A071282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071282.P10682102351578688952

`a(n-6)` with `a(0)=2, a(1)=3, a(2)=1, a(3)=3, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071282

/-- `a(n-6)` -/
def P10682102351578688952.Spec : Prop :=
  ∀ n, (P10682102351578688952.a n : ℤ) = A071282 n

theorem P10682102351578688952.correct : P10682102351578688952.Spec := by
  intro n
  simp only [A071282]

end A071282

/-!
# A071283: Numerators of Peirce sequence of order 4.

The programs for A071283, the canonical program `A071283.P11488286306628561676` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071283 has offset 0).

The definition of A071283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071283.P3702389387510442015

`A071285(floor(3*n/2))`
-/

namespace A071283.P3702389387510442015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071285 ⌊3 * ((n : ℚ) / 2)⌋.toNat

end

end A071283.P3702389387510442015

namespace A071283

/-- `A071285(floor(3*n/2))` -/
def P3702389387510442015.Spec : Prop :=
  ∀ n, P3702389387510442015.a n = A071283 n

end A071283

/-! ## A071283.P11488286306628561676

`A002266(A004526(n)*A071284(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071283

/-- `A002266(A004526(n)*A071284(n))` -/
def P11488286306628561676.Spec : Prop :=
  ∀ n, P11488286306628561676.a n = A071283 n

theorem P11488286306628561676.correct : P11488286306628561676.Spec := by
  intro n
  simp only [A071283]

end A071283

/-! ## A071283.P5276498092077245884

`A002266(A071284(n)*A123108(n))`
-/

namespace A071283.P5276498092077245884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A071284 n * A123108 n).toNat

end

end A071283.P5276498092077245884

namespace A071283

/-- `A002266(A071284(n)*A123108(n))` -/
def P5276498092077245884.Spec : Prop :=
  ∀ n, P5276498092077245884.a n = A071283 n

end A071283

/-! ## A071283.P12160792421594928744

`A002266((A008619(n)-1)*A071284(n))`
-/

namespace A071283.P12160792421594928744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 ((A008619 n - 1) * A071284 n).toNat

end

end A071283.P12160792421594928744

namespace A071283

/-- `A002266((A008619(n)-1)*A071284(n))` -/
def P12160792421594928744.Spec : Prop :=
  ∀ n, P12160792421594928744.a n = A071283 n

theorem P12160792421594928744.correct : P12160792421594928744.Spec := by
  intro n
  simp only [A071283, Nat.add_sub_cancel, A071283.P12160792421594928744.a, A071283.P11488286306628561676.a, A002266, A002266.P12055520221930490546.a, A004526, A004526.P10084182425416171735.a, A008619, A008619.P16053834178911111118.a, A071284, A071284.P10432223136163865395.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071283

/-! ## A071283.P7522785906539716327

`A059995(n*A071284(n))`
-/

namespace A071283.P7522785906539716327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 ((n : ℤ) * A071284 n).toNat

end

end A071283.P7522785906539716327

namespace A071283

/-- `A059995(n*A071284(n))` -/
def P7522785906539716327.Spec : Prop :=
  ∀ n, P7522785906539716327.a n = A071283 n

end A071283

/-! ## A071283.P3599370394279198122

`floor(A123108(n*A071284(n))/5)`
-/

namespace A071283.P3599370394279198122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123108 ((n : ℤ) * A071284 n).toNat : ℚ) / 5⌋

end

end A071283.P3599370394279198122

namespace A071283

/-- `floor(A123108(n*A071284(n))/5)` -/
def P3599370394279198122.Spec : Prop :=
  ∀ n, P3599370394279198122.a n = A071283 n

end A071283

/-! ## A071283.P1288218428592388759

`round(A123108(abs(1-n)*A071284(n))/5)`
-/

namespace A071283.P1288218428592388759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A123108 (|1 - (n : ℤ)| * A071284 n).toNat : ℚ) / 5)

end

end A071283.P1288218428592388759

namespace A071283

/-- `round(A123108(abs(1-n)*A071284(n))/5)` -/
def P1288218428592388759.Spec : Prop :=
  ∀ n, P1288218428592388759.a n = A071283 n

end A071283

/-! ## A071283.P2582852460285904241

`ceil(A123108((n+1)*A071284(n))/5)-1`
-/

namespace A071283.P2582852460285904241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123108 ((n + 1 : ℤ) * A071284 n).toNat : ℚ) / 5⌉ - 1

end

end A071283.P2582852460285904241

namespace A071283

/-- `ceil(A123108((n+1)*A071284(n))/5)-1` -/
def P2582852460285904241.Spec : Prop :=
  ∀ n, P2582852460285904241.a n = A071283 n

end A071283

/-!
# A071284: Denominators of Peirce sequence of order 4.

The programs for A071284, the canonical program `A071284.P10432223136163865395` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071284 has offset 0).

The definition of A071284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071284.P10432223136163865395

`a(n-10)` with `a(0)=2, a(1)=4, a(2)=3, a(3)=1, a(4)=4, a(5)=3, a(6)=4, a(7)=2, a(8)=3, a(9)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071284

/-- `a(n-10)` -/
def P10432223136163865395.Spec : Prop :=
  ∀ n, (P10432223136163865395.a n : ℤ) = A071284 n

theorem P10432223136163865395.correct : P10432223136163865395.Spec := by
  intro n
  simp only [A071284]

end A071284

/-!
# A071285: Numerators of Peirce sequence of order 5.

The programs for A071285, there is no canonical definition to state claims against.
-/

/-! ## A071285.P8238541621165693449

`A071287(A047367(n+1))`
-/

namespace A071285.P8238541621165693449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071287 (A047367 (n + 1)).toNat

end

end A071285.P8238541621165693449

/-! ## A071285.P16789193146772475404

`A071287(A288156(n)+n)`
-/

namespace A071285.P16789193146772475404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071287 (A288156 n + (n : ℤ)).toNat

end

end A071285.P16789193146772475404

/-! ## A071285.P12280174655275001669

`A002266(A002264(n)*A071286(n))`
-/

namespace A071285.P12280174655275001669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A002264 n * A071286 n).toNat

end

end A071285.P12280174655275001669

/-! ## A071285.P10994531268188275775

`A059995(A004396(n)*A071286(n))`
-/

namespace A071285.P10994531268188275775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004396 n * A071286 n).toNat

end

end A071285.P10994531268188275775

/-! ## A071285.P9033066504637849550

`A059995(A004523(n)*A071286(n))`
-/

namespace A071285.P9033066504637849550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004523 n * A071286 n).toNat

end

end A071285.P9033066504637849550

/-! ## A071285.P16629194722548499036

`floor(A004396(n*A071286(n))/10)`
-/

namespace A071285.P16629194722548499036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004396 ((n : ℤ) * A071286 n).toNat : ℚ) / 10⌋

end

end A071285.P16629194722548499036

/-! ## A071285.P7393574007103545007

`ceil(A004396((n+1)*A071286(n))/10)-1`
-/

namespace A071285.P7393574007103545007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004396 ((n + 1 : ℤ) * A071286 n).toNat : ℚ) / 10⌉ - 1

end

end A071285.P7393574007103545007

/-!
# A071286: Denominators of Peirce sequence of order 5.

The programs for A071286, there is no canonical definition to state claims against.
-/

/-! ## A071286.P11188024801979774220

`A071288(A047367(n+1))`
-/

namespace A071286.P11188024801979774220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071288 (A047367 (n + 1)).toNat

end

end A071286.P11188024801979774220

/-!
# A071287: Numerators of Peirce sequence of order 6.

The programs for A071287, there is no canonical definition to state claims against.
-/

/-! ## A071287.P17448156777348850266

`A127322(xor(A002865(n), A004524(n)))`
-/

namespace A071287.P17448156777348850266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 (Int.xor (A002865 n) (A004524 n)).toNat

end

end A071287.P17448156777348850266

/-! ## A071287.P8935800558898335323

`A031346(A003242(n)-A363237(n+1))`
-/

namespace A071287.P8935800558898335323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A003242 n - A363237 (n + 1)).toNat

end

end A071287.P8935800558898335323

/-!
# A071289: a(n) = n*(n^2 + 1) if n is even, otherwise (n - 1/2)*(n^2 + 1).

The programs for A071289, the canonical program `A071289.P2005185894156731226` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071289 has offset 0).

The definition of A071289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071289.P2005185894156731226

`(n²+1)*(4*n-1+(-1)^n)/4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071289

/-- `(n²+1)*(4*n-1+(-1)^n)/4` -/
def P2005185894156731226.Spec : Prop :=
  ∀ n, P2005185894156731226.a n = (A071289 n : ℚ)

end A071289

/-! ## A071289.P7437610243034446236

`(n²+1)*(n-n%2/2)`
-/

namespace A071289.P7437610243034446236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℚ) * ((n : ℚ) - ((n % 2 : ℕ) : ℚ) / 2)

end

end A071289.P7437610243034446236

namespace A071289

/-- `(n²+1)*(n-n%2/2)` -/
def P7437610243034446236.Spec : Prop :=
  ∀ n, P7437610243034446236.a n = (A071289 n : ℚ)

end A071289

/-! ## A071289.P13287326568378001956

`(n²+1)*(n-and(1, n)/2)`
-/

namespace A071289.P13287326568378001956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℚ) * ((n : ℚ) - (Nat.land 1 n : ℚ) / 2)

end

end A071289.P13287326568378001956

namespace A071289

/-- `(n²+1)*(n-and(1, n)/2)` -/
def P13287326568378001956.Spec : Prop :=
  ∀ n, P13287326568378001956.a n = (A071289 n : ℚ)

end A071289

/-! ## A071289.P11529313462249248245

`(n²+1)*lt[n, xor(2, n)]/2`
-/

namespace A071289.P11529313462249248245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℚ) * ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2)

end

end A071289.P11529313462249248245

namespace A071289

/-- `(n²+1)*lt[n, xor(2, n)]/2` -/
def P11529313462249248245.Spec : Prop :=
  ∀ n, P11529313462249248245.a n = (A071289 n : ℚ)

end A071289

/-! ## A071289.P6584423821236675382

`(n-and(1, n)/2)*∑[abs(1-2*n)]`
-/

namespace A071289.P6584423821236675382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) - (Nat.land 1 n : ℚ) / 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A071289.P6584423821236675382

namespace A071289

/-- `(n-and(1, n)/2)*∑[abs(1-2*n)]` -/
def P6584423821236675382.Spec : Prop :=
  ∀ n, P6584423821236675382.a n = (A071289 n : ℚ)

end A071289

/-! ## A071289.P14180527294717798309

`A228564(n)+A062158(n)`
-/

namespace A071289.P14180527294717798309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 n + A062158 n

end

end A071289.P14180527294717798309

namespace A071289

/-- `A228564(n)+A062158(n)` -/
def P14180527294717798309.Spec : Prop :=
  ∀ n, P14180527294717798309.a n = A071289 n

end A071289

/-! ## A071289.P1623306627004889854

`A227906(n)*A228564(n)`
-/

namespace A071289.P1623306627004889854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227906 n * A228564 n

end

end A071289.P1623306627004889854

namespace A071289

/-- `A227906(n)*A228564(n)` -/
def P1623306627004889854.Spec : Prop :=
  ∀ n, P1623306627004889854.a n = A071289 n

end A071289

/-! ## A071289.P18163916733442105911

`A062158(n)+gcd(A062158(n), A168412(n))`
-/

namespace A071289.P18163916733442105911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062158 n + (Int.gcd (A062158 n) (A168412 n) : ℤ)

end

end A071289.P18163916733442105911

namespace A071289

/-- `A062158(n)+gcd(A062158(n), A168412(n))` -/
def P18163916733442105911.Spec : Prop :=
  ∀ n, P18163916733442105911.a n = A071289 n

end A071289

/-! ## A071289.P7074732475117230720

`A002522(n)*A099392(n+1)-A058919(n)`
-/

namespace A071289.P7074732475117230720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A099392 (n + 1) - A058919 n

end

end A071289.P7074732475117230720

namespace A071289

/-- `A002522(n)*A099392(n+1)-A058919(n)` -/
def P7074732475117230720.Spec : Prop :=
  ∀ n, P7074732475117230720.a n = A071289 n

end A071289

/-! ## A071289.P15608355642281669379

`A062158(n)+A000265(A002522(n))`
-/

namespace A071289.P15608355642281669379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062158 n + A000265 (A002522 n).toNat

end

end A071289.P15608355642281669379

namespace A071289

/-- `A062158(n)+A000265(A002522(n))` -/
def P15608355642281669379.Spec : Prop :=
  ∀ n, P15608355642281669379.a n = A071289 n

end A071289

/-!
# A071290: The sequence f(1), f(2), ... as defined in A067836.

The programs for A071290, there is no canonical definition to state claims against.
-/

/-! ## A071290.P15103130284742007597

`a(n-1)*A067836(n)` with `a(0)=1`
-/

namespace A071290.P15103130284742007597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A067836 n

end

end A071290.P15103130284742007597

/-! ## A071290.P15047866053781629294

`∏[A067836(n+1)]/A067836(n+1)`
-/

namespace A071290.P15047866053781629294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067836 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A067836 (n + 1) : ℚ)

end

end A071290.P15047866053781629294

/-! ## A071290.P9679934361489708623

`∏[A181819(2^A057164(n))]`
-/

namespace A071290.P9679934361489708623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A057164 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071290.P9679934361489708623

/-! ## A071290.P10155990277560549993

`∏[A241909(2^A057164(n))]`
-/

namespace A071290.P10155990277560549993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A057164 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071290.P10155990277560549993

/-! ## A071290.P10942412491430823850

`∏[A332817(record[A348366(n)])]`
-/

namespace A071290.P10942412491430823850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348366 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332817 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071290.P10942412491430823850

/-!
# A071291: Second term of the continued fraction expansion of (3/2)^n; or 0 if no term is present.

The programs for A071291, there is no canonical definition to state claims against.
-/

/-! ## A071291.P12781214193251151077

`A006368(or(A008615(n), A143404(n)))`
-/

namespace A071291.P12781214193251151077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (A008615 n) (A143404 n)).toNat

end

end A071291.P12781214193251151077

/-!
# A071292: Call f(n) the sum of the first n primes then a(n) is the number of squares between f(n) and f(n+1).

The programs for A071292, there is no canonical definition to state claims against.
-/

/-! ## A071292.P11963054719343381427

`A308186(A211226(3*n+2)^A099547(3*(n+1)))`
-/

namespace A071292.P11963054719343381427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308186 (SequenceMachineLib.roundAway ((A211226 (3 * n + 2) : ℚ) ^ (A099547 (3 * (n + 1)) : ℤ))).toNat

end

end A071292.P11963054719343381427

/-! ## A071292.P9823126538146190899

`A103956(A345163(n+1))`
-/

namespace A071292.P9823126538146190899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103956 (A345163 (n + 1)).toNat

end

end A071292.P9823126538146190899

/-! ## A071292.P14474618561964784425

`A293838(A110602(n+2))`
-/

namespace A071292.P14474618561964784425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293838 (A110602 (n + 2)).toNat

end

end A071292.P14474618561964784425

/-! ## A071292.P6874816745369016347

`gcd(A054353(A055249(3*n+2)), A274354(n+1))`
-/

namespace A071292.P6874816745369016347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054353 (A055249 (3 * n + 2)).toNat) (A274354 (n + 1))

end

end A071292.P6874816745369016347

/-! ## A071292.P187643799175087109

`gcd(A138298(n), A274354(n+1))`
-/

namespace A071292.P187643799175087109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138298 n) (A274354 (n + 1))

end

end A071292.P187643799175087109

/-!
# A071293: a(0)=1, a(n) is the smallest integer > a(n-1) such that the continued fraction for 1/a(0)+1/a(1)+1/a(2)+...+1/a(n) contains exactly 2^n elements.

The programs for A071293, there is no canonical definition to state claims against.
-/

/-! ## A071293.P10426666051104304709

`∑[A344605(a(n-1))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A071293.P10426666051104304709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  A344605 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071293.P10426666051104304709

/-!
# A071294: Number of witnesses for strong pseudoprimality of 2n+1; i.e., number of bases b, 1 <= b <= 2n, in which 2n+1 is a strong pseudoprime.

The programs for A071294, there is no canonical definition to state claims against.
-/

/-! ## A071294.P9461049557393777283

`or(∑{e}[A185255(n), #], A260300(n+1))`
-/

namespace A071294.P9461049557393777283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A260300 (n + 1))

end

end A071294.P9461049557393777283

/-! ## A071294.P5399026068301179259

`A260300(n+1)+A025443(A185255(n))`
-/

namespace A071294.P5399026068301179259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260300 (n + 1) + A025443 (A185255 n).toNat

end

end A071294.P5399026068301179259

/-! ## A071294.P4431432483970206635

`A260300(or(n+1, A185255(n)))`
-/

namespace A071294.P4431432483970206635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260300 (Int.lor (n + 1 : ℤ) (A185255 n)).toNat

end

end A071294.P4431432483970206635

/-! ## A071294.P12443360063104318829

`A260300(n+1)%A080313(n)²`
-/

namespace A071294.P12443360063104318829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260300 (n + 1)) (A080313 n ^ 2)

end

end A071294.P12443360063104318829

/-! ## A071294.P4717341526965986341

`A258409(2*n+3)%record[A096673(n+1)]`
-/

namespace A071294.P4717341526965986341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258409 (2 * n + 3)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A071294.P4717341526965986341

/-!
# A071295: Product of numbers of 0's and 1's in binary representation of n.

The programs for A071295, the canonical program `A071295.P3465812326302079174` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071295 has offset 0).

The definition of A071295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071295.P17636498874501982539

`A037861(n)+a(and(n, n-1))+1` with `a(0)=0`
-/

namespace A071295.P17636498874501982539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A037861 n + (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1)

end

end A071295.P17636498874501982539

namespace A071295

/-- `A037861(n)+a(and(n, n-1))+1` -/
def P17636498874501982539.Spec : Prop :=
  ∀ n, P17636498874501982539.a n = A071295 n

end A071295

/-! ## A071295.P12430534852059289695

`∑[1-val(abs(1-n)+1, 2)]*A080791(n)`
-/

namespace A071295.P12430534852059289695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A080791 n

end

end A071295.P12430534852059289695

namespace A071295

/-- `∑[1-val(abs(1-n)+1, 2)]*A080791(n)` -/
def P12430534852059289695.Spec : Prop :=
  ∀ n, P12430534852059289695.a n = A071295 n

end A071295

/-! ## A071295.P12589738441506022260

`A331855(A073138(n))-1`
-/

namespace A071295.P12589738441506022260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331855 (A073138 n).toNat - 1

end

end A071295.P12589738441506022260

namespace A071295

/-- `A331855(A073138(n))-1` -/
def P12589738441506022260.Spec : Prop :=
  ∀ n, P12589738441506022260.a n = A071295 n

end A071295

/-! ## A071295.P3465812326302079174

`A000120(n)*A023416(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A071295

/-- `A000120(n)*A023416(n)` -/
def P3465812326302079174.Spec : Prop :=
  ∀ n, P3465812326302079174.a n = A071295 n

theorem P3465812326302079174.correct : P3465812326302079174.Spec := by
  intro n
  simp only [A071295]

end A071295

/-! ## A071295.P5650688367697971844

`A000120(n)*A080791(n)`
-/

namespace A071295.P5650688367697971844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A080791 n

end

end A071295.P5650688367697971844

namespace A071295

/-- `A000120(n)*A080791(n)` -/
def P5650688367697971844.Spec : Prop :=
  ∀ n, P5650688367697971844.a n = A071295 n

end A071295

/-! ## A071295.P5769179350682842464

`log2(A001316(n))*A023416(n)`
-/

namespace A071295.P5769179350682842464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) * (A023416 n : ℝ)

end

end A071295.P5769179350682842464

namespace A071295

/-- `log2(A001316(n))*A023416(n)` -/
def P5769179350682842464.Spec : Prop :=
  ∀ n, P5769179350682842464.a n = (A071295 n : ℝ)

end A071295

/-! ## A071295.P7510440048181830157

`log2(A080100(n))*A000120(n)`
-/

namespace A071295.P7510440048181830157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A080100 n : ℝ) * (A000120 n : ℝ)

end

end A071295.P7510440048181830157

namespace A071295

/-- `log2(A080100(n))*A000120(n)` -/
def P7510440048181830157.Spec : Prop :=
  ∀ n, P7510440048181830157.a n = (A071295 n : ℝ)

end A071295

/-! ## A071295.P10028866144656736630

`log2(A001316(n))*A080791(n)`
-/

namespace A071295.P10028866144656736630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) * (A080791 n : ℝ)

end

end A071295.P10028866144656736630

namespace A071295

/-- `log2(A001316(n))*A080791(n)` -/
def P10028866144656736630.Spec : Prop :=
  ∀ n, P10028866144656736630.a n = (A071295 n : ℝ)

end A071295

/-! ## A071295.P6427933508218707767

`∑[A089263(n)]*A000120(n)`
-/

namespace A071295.P6427933508218707767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000120 n

end

end A071295.P6427933508218707767

namespace A071295

/-- `∑[A089263(n)]*A000120(n)` -/
def P6427933508218707767.Spec : Prop :=
  ∀ n, P6427933508218707767.a n = A071295 n

end A071295

/-! ## A071295.P2710532826696202537

`∑[A088705(n)]*A023416(n)`
-/

namespace A071295.P2710532826696202537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A023416 n

end

end A071295.P2710532826696202537

namespace A071295

/-- `∑[A088705(n)]*A023416(n)` -/
def P2710532826696202537.Spec : Prop :=
  ∀ n, P2710532826696202537.a n = A071295 n

end A071295

/-! ## A071295.P2756287611303167039

`(n-A011371(n))*A023416(n)`
-/

namespace A071295.P2756287611303167039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A011371 n) * A023416 n

end

end A071295.P2756287611303167039

namespace A071295

/-- `(n-A011371(n))*A023416(n)` -/
def P2756287611303167039.Spec : Prop :=
  ∀ n, P2756287611303167039.a n = A071295 n

end A071295

/-! ## A071295.P2329619696203760123

`(n-A011371(n))*A080791(n)`
-/

namespace A071295.P2329619696203760123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A011371 n) * A080791 n

end

end A071295.P2329619696203760123

namespace A071295

/-- `(n-A011371(n))*A080791(n)` -/
def P2329619696203760123.Spec : Prop :=
  ∀ n, P2329619696203760123.a n = A071295 n

end A071295

/-! ## A071295.P16377596001690040395

`(A092391(n)-n)*A023416(n)`
-/

namespace A071295.P16377596001690040395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092391 n - (n : ℤ)) * A023416 n

end

end A071295.P16377596001690040395

namespace A071295

/-- `(A092391(n)-n)*A023416(n)` -/
def P16377596001690040395.Spec : Prop :=
  ∀ n, P16377596001690040395.a n = A071295 n

theorem P16377596001690040395.correct : P16377596001690040395.Spec := by
  intro n
  simp only [A071295, Nat.add_sub_cancel, A071295.P16377596001690040395.a, A071295.P3465812326302079174.a, A000120, A000120.P2816527436160941581.a, A023416, A023416.P8124303482289229133.a, A092391, A092391.P1831081500129819331.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071295

/-! ## A071295.P14639992545652886717

`∑[A088705(n)]*∑[A089263(n)]`
-/

namespace A071295.P14639992545652886717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A071295.P14639992545652886717

namespace A071295

/-- `∑[A088705(n)]*∑[A089263(n)]` -/
def P14639992545652886717.Spec : Prop :=
  ∀ n, P14639992545652886717.a n = A071295 n

end A071295

/-! ## A071295.P8680193654628958416

`A023416(n)/2*log2(A102376(n))`
-/

namespace A071295.P8680193654628958416
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A023416 n : ℚ) / 2 : ℝ) * Real.logb 2 (A102376 n : ℝ)

end

end A071295.P8680193654628958416

namespace A071295

/-- `A023416(n)/2*log2(A102376(n))` -/
def P8680193654628958416.Spec : Prop :=
  ∀ n, P8680193654628958416.a n = (A071295 n : ℝ)

end A071295

/-! ## A071295.P10469135345524384635

`(A063787(n+1)-1)*A023416(n)`
-/

namespace A071295.P10469135345524384635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063787 (n + 1) - 1) * A023416 n

end

end A071295.P10469135345524384635

namespace A071295

/-- `(A063787(n+1)-1)*A023416(n)` -/
def P10469135345524384635.Spec : Prop :=
  ∀ n, P10469135345524384635.a n = A071295 n

theorem P10469135345524384635.correct : P10469135345524384635.Spec := by
  intro n
  simp only [A071295, Nat.add_sub_cancel, A071295.P10469135345524384635.a, A071295.P3465812326302079174.a, A000120, A000120.P2816527436160941581.a, A023416, A023416.P8124303482289229133.a, A063787, A063787.P13236937262237871159.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071295

/-! ## A071295.P15980086573130978263

`(A063787(n+1)-1)*A080791(n)`
-/

namespace A071295.P15980086573130978263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063787 (n + 1) - 1) * A080791 n

end

end A071295.P15980086573130978263

namespace A071295

/-- `(A063787(n+1)-1)*A080791(n)` -/
def P15980086573130978263.Spec : Prop :=
  ∀ n, P15980086573130978263.a n = A071295 n

end A071295

/-! ## A071295.P4204528155400652582

`A055941(A035327(n))+A055941(n)`
-/

namespace A071295.P4204528155400652582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A035327 n).toNat + A055941 n

end

end A071295.P4204528155400652582

namespace A071295

/-- `A055941(A035327(n))+A055941(n)` -/
def P4204528155400652582.Spec : Prop :=
  ∀ n, P4204528155400652582.a n = A071295 n

end A071295

/-! ## A071295.P15225447084567622968

`A000120(n)*A000120(A035327(n))`
-/

namespace A071295.P15225447084567622968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A000120 (A035327 n).toNat

end

end A071295.P15225447084567622968

namespace A071295

/-- `A000120(n)*A000120(A035327(n))` -/
def P15225447084567622968.Spec : Prop :=
  ∀ n, P15225447084567622968.a n = A071295 n

end A071295

/-! ## A071295.P10389889763755459901

`A001222(A071044(n))*A023416(n)`
-/

namespace A071295.P10389889763755459901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat * A023416 n

end

end A071295.P10389889763755459901

namespace A071295

/-- `A001222(A071044(n))*A023416(n)` -/
def P10389889763755459901.Spec : Prop :=
  ∀ n, P10389889763755459901.a n = A071295 n

end A071295

/-!
# A071296: a(n) is the least m such that a period of the continued fraction expansion of sqrt(m) is 1,1,1,...,1,1,1,Z and there are n ones in the period (Z is 2*floor(sqrt(m))). If no such m exists, a(n) = 0.

The programs for A071296, there is no canonical definition to state claims against.
-/

/-! ## A071296.P2014232692852993270

`lcm(A057078(n), A309666(n+2))`
-/

namespace A071296.P2014232692852993270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057078 n) (A309666 (n + 2))

end

end A071296.P2014232692852993270

/-! ## A071296.P5290578450514825264

`floor(A309666(n+2)^A131713(n))`
-/

namespace A071296.P5290578450514825264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309666 (n + 2) : ℚ) ^ (A131713 n : ℤ)⌋

end

end A071296.P5290578450514825264

/-! ## A071296.P12496571730550807585

`A011655(n+2)*A309666(n+2)`
-/

namespace A071296.P12496571730550807585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 2) * A309666 (n + 2)

end

end A071296.P12496571730550807585

/-! ## A071296.P16607723106083504029

`A010892(n+1)²*A309666(n+2)`
-/

namespace A071296.P16607723106083504029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) ^ 2 * A309666 (n + 2)

end

end A071296.P16607723106083504029

/-! ## A071296.P15614646833599948926

`A049347(n+1)²*A309666(n+2)`
-/

namespace A071296.P15614646833599948926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) ^ 2 * A309666 (n + 2)

end

end A071296.P15614646833599948926

/-!
# A071298: Numerators of a(n+1) = Sum_{k=0..n} a'(k^2/n), where a(0) = a(1) = 1; and a'(x) = a(x) if x is an integer and is linearly interpolated otherwise.

The programs for A071298, there is no canonical definition to state claims against.
-/

/-! ## A071298.P6218525473947258862

`xor(n^(n%2), A008475(A193162(n+1)))`
-/

namespace A071298.P6218525473947258862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n ^ (n % 2) : ℤ) (A008475 (A193162 (n + 1)).toNat)

end

end A071298.P6218525473947258862

/-!
# A071299: Denominators of a(n+1) = Sum_{k=0..n} a'(k^2/n), where a(0) = a(1) = 1; and a'(x) = a(x) if x is an integer and is linearly interpolated otherwise.

The programs for A071299, there is no canonical definition to state claims against.
-/

/-! ## A071299.P12853384535056755093

`A008480(9*A253832(n))`
-/

namespace A071299.P12853384535056755093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (9 * A253832 n).toNat

end

end A071299.P12853384535056755093

/-! ## A071299.P14576991170038313386

`A326417(∏[∏[A059922(n)]])`
-/

namespace A071299.P14576991170038313386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326417 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071299.P14576991170038313386

/-! ## A071299.P881839567357776209

`A326417(∏[∏[A077028(n)]])`
-/

namespace A071299.P881839567357776209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326417 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071299.P881839567357776209

/-! ## A071299.P280066207235976010

`A326417(∏[∏[A144151(n)]])`
-/

namespace A071299.P280066207235976010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144151 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326417 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071299.P280066207235976010

