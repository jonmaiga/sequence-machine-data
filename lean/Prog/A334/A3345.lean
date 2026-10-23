import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A334500: For 0 <= R <= 255, let s(R,n) = eventual period of a single cell in a Rule R cellular automaton operating in a cyclic universe of width n; a(n) is the nearest integer to max_R s(R,n)/n (rounded down in case of ties).

The programs for A334500, there is no canonical definition to state claims against.
-/

/-! ## A334500.P14123334057398137775

`A357950(A043316(n+1))/(n+1)`
-/

namespace A334500.P14123334057398137775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357950 (A043316 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A334500.P14123334057398137775

/-! ## A334500.P11747089501869461099

`A357950(A044913(n+1))/(n+1)`
-/

namespace A334500.P11747089501869461099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357950 (A044913 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A334500.P11747089501869461099

/-! ## A334500.P3606082927367125758

`A357950(A049872(n+1))/(n+1)`
-/

namespace A334500.P3606082927367125758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357950 (A049872 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A334500.P3606082927367125758

/-! ## A334500.P11500043802759928548

`A357950(A061147(n+1))/(n+1)`
-/

namespace A334500.P11500043802759928548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357950 (A061147 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A334500.P11500043802759928548

/-! ## A334500.P823154569768306288

`A334499(A188649(n+1))/(n+1)`
-/

namespace A334500.P823154569768306288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334499 (A188649 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A334500.P823154569768306288

/-!
# A334501: Eventual period of a single cell in rule 190 cellular automaton in a cyclic universe of width n.

The programs for A334501, the canonical program `A334501.P6111686827534285050` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334501 has offset 1).

The definition of A334501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334501.P6111686827534285050

`gcd(n+1, Δ[or(n, 3%(n+1))])`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A334501

/-- `gcd(n+1, Δ[or(n, 3%(n+1))])` -/
def P6111686827534285050.Spec : Prop :=
  ∀ n, (P6111686827534285050.a n : ℤ) = A334501 (n + 1)

theorem P6111686827534285050.correct : P6111686827534285050.Spec := by
  intro n
  simp only [A334501, Nat.add_sub_cancel]

end A334501

/-! ## A334501.P1991022708102716896

`gcd(n+1, A084099(A004524(n))²)`
-/

namespace A334501.P1991022708102716896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A084099 (A004524 n).toNat ^ 2)

end

end A334501.P1991022708102716896

namespace A334501

/-- `gcd(n+1, A084099(A004524(n))²)` -/
def P1991022708102716896.Spec : Prop :=
  ∀ n, (P1991022708102716896.a n : ℤ) = A334501 (n + 1)

end A334501

/-! ## A334501.P5170716991251280464

`gcd(A171526(n+1), A347634(n+1))`
-/

namespace A334501.P5170716991251280464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171526 (n + 1)) (A347634 (n + 1))

end

end A334501.P5170716991251280464

namespace A334501

/-- `gcd(A171526(n+1), A347634(n+1))` -/
def P5170716991251280464.Spec : Prop :=
  ∀ n, (P5170716991251280464.a n : ℤ) = A334501 (n + 1)

end A334501

/-! ## A334501.P12313266672958634568

`(n+1)/A152271(A152271(a(n-3)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A334501.P12313266672958634568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (n + 1 : ℚ) / (A152271 (A152271 (SequenceMachineLib.roundAway (a (n - 3))).toNat).toNat : ℚ)

end

end A334501.P12313266672958634568

namespace A334501

/-- `(n+1)/A152271(A152271(a(n-3)))` -/
def P12313266672958634568.Spec : Prop :=
  ∀ n, P12313266672958634568.a n = (A334501 (n + 1) : ℚ)

end A334501

/-! ## A334501.P15515049439396563403

`n%A122169(n+1)+1`
-/

namespace A334501.P15515049439396563403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A122169 (n + 1)) + 1

end

end A334501.P15515049439396563403

namespace A334501

/-- `n%A122169(n+1)+1` -/
def P15515049439396563403.Spec : Prop :=
  ∀ n, P15515049439396563403.a n = A334501 (n + 1)

end A334501

/-! ## A334501.P2334857249184199289

`gcd(A193681(n+1), A222259(n+1))`
-/

namespace A334501.P2334857249184199289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193681 (n + 1)) (A222259 (n + 1))

end

end A334501.P2334857249184199289

namespace A334501

/-- `gcd(A193681(n+1), A222259(n+1))` -/
def P2334857249184199289.Spec : Prop :=
  ∀ n, (P2334857249184199289.a n : ℤ) = A334501 (n + 1)

end A334501

/-! ## A334501.P11125415619754675527

`gcd(A152291(n), A222259(n+1))`
-/

namespace A334501.P11125415619754675527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152291 n) (A222259 (n + 1))

end

end A334501.P11125415619754675527

namespace A334501

/-- `gcd(A152291(n), A222259(n+1))` -/
def P11125415619754675527.Spec : Prop :=
  ∀ n, (P11125415619754675527.a n : ℤ) = A334501 (n + 1)

end A334501

/-!
# A334504: Eventual period of a single cell in rule 26 cellular automaton in a cyclic universe of width n.

The programs for A334504, there is no canonical definition to state claims against.
-/

/-! ## A334504.P1985668605664279742

`A082908(n)*A093178(A032559(n+1))`
-/

namespace A334504.P1985668605664279742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 n * A093178 (A032559 (n + 1)).toNat

end

end A334504.P1985668605664279742

/-!
# A334506: Eventual period of a single cell in rule 161 cellular automaton in a cyclic universe of width n.

The programs for A334506, there is no canonical definition to state claims against.
-/

/-! ## A334506.P15978027820692057324

`A334507(A084642(n)+n)`
-/

namespace A334506.P15978027820692057324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (A084642 n + (n : ℤ)).toNat

end

end A334506.P15978027820692057324

/-! ## A334506.P15310799032935395367

`A334507(A091090(n²)+n)`
-/

namespace A334506.P15310799032935395367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (A091090 (n ^ 2) + (n : ℤ)).toNat

end

end A334506.P15310799032935395367

/-! ## A334506.P10608549551663164974

`A334507(or(n+1, A060576(n)))`
-/

namespace A334506.P10608549551663164974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (Int.lor (n + 1 : ℤ) (A060576 n)).toNat

end

end A334506.P10608549551663164974

/-! ## A334506.P6812246034945880270

`A334507(or(n+1, A141044(n)))`
-/

namespace A334506.P6812246034945880270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (Int.lor (n + 1 : ℤ) (A141044 n)).toNat

end

end A334506.P6812246034945880270

/-! ## A334506.P8756809371481175273

`A334507(or(n+1, A157928(n)))`
-/

namespace A334506.P8756809371481175273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (Int.lor (n + 1 : ℤ) (A157928 n)).toNat

end

end A334506.P8756809371481175273

/-! ## A334506.P12963177347262471476

`A334507(or(n+1, A005171(n+1)))`
-/

namespace A334506.P12963177347262471476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (Int.lor (n + 1 : ℤ) (A005171 (n + 1))).toNat

end

end A334506.P12963177347262471476

/-! ## A334506.P17059887097761190045

`A334507(A000035(n)+1-char[1]+n)`
-/

namespace A334506.P17059887097761190045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (A000035 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A334506.P17059887097761190045

/-! ## A334506.P2253533235850234014

`A334507(or(n+1, char[A045965(n+1)]))`
-/

namespace A334506.P2253533235850234014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (Nat.lor (n + 1) (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A334506.P2253533235850234014

/-! ## A334506.P707239138487660549

`A334507(A233583(n+1)+A000034(n))`
-/

namespace A334506.P707239138487660549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 (A233583 (n + 1) + A000034 n).toNat

end

end A334506.P707239138487660549

/-! ## A334506.P7038100191684255923

`A085587(and(1, n)+n+2)+char[1]`
-/

namespace A334506.P7038100191684255923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085587 (Nat.land 1 n + n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A334506.P7038100191684255923

/-!
# A334507: Eventual period of a single cell in rule 122 cellular automaton in a cyclic universe of width n.

The programs for A334507, there is no canonical definition to state claims against.
-/

/-! ## A334507.P678019002999875101

`A268754(gcd(A001281(n), A008458(n)))`
-/

namespace A334507.P678019002999875101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268754 (Int.gcd (A001281 n) (A008458 n))

end

end A334507.P678019002999875101

/-! ## A334507.P428910211164571737

`ceil(A268754(A141310(n))/A040001(n))`
-/

namespace A334507.P428910211164571737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268754 (A141310 n).toNat : ℚ) / (A040001 n : ℚ)⌉

end

end A334507.P428910211164571737

/-! ## A334507.P12614594595093484789

`A000034(n)*A334504(A124625(n+3))`
-/

namespace A334507.P12614594595093484789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A334504 (A124625 (n + 3)).toNat

end

end A334507.P12614594595093484789

/-! ## A334507.P738545298455530493

`ceil(A268754(A141310(n))/A084642(n+3))`
-/

namespace A334507.P738545298455530493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268754 (A141310 n).toNat : ℚ) / (A084642 (n + 3) : ℚ)⌉

end

end A334507.P738545298455530493

/-! ## A334507.P1934192173838958961

`A040001(n+1)*A334504(A124625(n+3))`
-/

namespace A334507.P1934192173838958961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A334504 (A124625 (n + 3)).toNat

end

end A334507.P1934192173838958961

/-! ## A334507.P1322296119126133187

`gcd(A010673(n), A334504(n+2))`
-/

namespace A334507.P1322296119126133187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010673 n) (A334504 (n + 2))

end

end A334507.P1322296119126133187

/-! ## A334507.P16287633115371388618

`A334506(n^and(1, n+1)+1)`
-/

namespace A334507.P16287633115371388618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334506 (n ^ Nat.land 1 (n + 1) + 1)

end

end A334507.P16287633115371388618

/-! ## A334507.P13688397404097619870

`A334506(or(gcd(n, n%2)+1, C(2, n+2)))`
-/

namespace A334507.P13688397404097619870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334506 (Nat.lor (Nat.gcd n (n % 2) + 1) (Nat.choose 2 (n + 2)))

end

end A334507.P13688397404097619870

/-! ## A334507.P1097827557268328054

`A334506(A141310(n))`
-/

namespace A334507.P1097827557268328054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334506 (A141310 n).toNat

end

end A334507.P1097827557268328054

/-! ## A334507.P3862344278990588782

`A334506(A230089(n+1))`
-/

namespace A334507.P3862344278990588782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334506 (A230089 (n + 1)).toNat

end

end A334507.P3862344278990588782

/-! ## A334507.P15937211377815985609

`A334506(A124625(n+1)+1)`
-/

namespace A334507.P15937211377815985609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334506 (A124625 (n + 1) + 1).toNat

end

end A334507.P15937211377815985609

/-!
# A334508: Eventual period of a single cell in rule 45 cellular automaton in a cyclic universe of width n.

The programs for A334508, there is no canonical definition to state claims against.
-/

/-! ## A334508.P3364362796603557539

`A334515(n+1)+A213618(A081615(n))`
-/

namespace A334508.P3364362796603557539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334515 (n + 1) + A213618 (A081615 n).toNat

end

end A334508.P3364362796603557539

/-! ## A334508.P2329348897573508853

`A334515(n+1)/A014963(A105476(n))`
-/

namespace A334508.P2329348897573508853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334515 (n + 1) : ℚ) / (A014963 (A105476 n).toNat : ℚ)

end

end A334508.P2329348897573508853

/-! ## A334508.P12141129859948389366

`gcd(A000122(A082582(n)), A334515(n+1))`
-/

namespace A334508.P12141129859948389366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A082582 n).toNat) (A334515 (n + 1))

end

end A334508.P12141129859948389366

/-! ## A334508.P4458314006110580768

`C(A334515(n+1), A053252(A051717(n)))`
-/

namespace A334508.P4458314006110580768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334515 (n + 1)).toNat (A053252 (A051717 n).toNat).toNat

end

end A334508.P4458314006110580768

/-! ## A334508.P13243560273360941918

`A334515(n+1)-A000122(A164573(n+1))`
-/

namespace A334508.P13243560273360941918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334515 (n + 1) - A000122 (A164573 (n + 1)).toNat

end

end A334508.P13243560273360941918

/-!
# A334512: Eventual period of a single cell in rule 105 cellular automaton in a cyclic universe of width n.

The programs for A334512, there is no canonical definition to state claims against.
-/

/-! ## A334512.P17666156235342203066

`A085593(n-∑[ceil(n-atan(n))]%(n+1)+3)`
-/

namespace A334512.P17666156235342203066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.arctan (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085593 ((n : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ) + 3).toNat

end

end A334512.P17666156235342203066

/-!
# A334515: Eventual period of a single cell in rule 75 cellular automaton in a cyclic universe of width n.

The programs for A334515, there is no canonical definition to state claims against.
-/

/-! ## A334515.P11060155766227351109

`or(A010673(A323289(n)), A334508(n+1))`
-/

namespace A334515.P11060155766227351109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010673 (A323289 n).toNat) (A334508 (n + 1))

end

end A334515.P11060155766227351109

/-! ## A334515.P9426674448628078104

`A334508(n+1)+A081120(A047713(n+1))`
-/

namespace A334515.P9426674448628078104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334508 (n + 1) + A081120 (A047713 (n + 1)).toNat

end

end A334515.P9426674448628078104

/-! ## A334515.P13641603082047497724

`or(A000122(A032101(n+1)), A334508(n+1))`
-/

namespace A334515.P13641603082047497724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A032101 (n + 1)).toNat) (A334508 (n + 1))

end

end A334515.P13641603082047497724

/-! ## A334515.P7657780228816686889

`or(A010673(A000943(n+4)), A334508(n+1))`
-/

namespace A334515.P7657780228816686889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010673 (A000943 (n + 4)).toNat) (A334508 (n + 1))

end

end A334515.P7657780228816686889

/-! ## A334515.P8505694545738618415

`A334508(n+1)+A209915(A209898(2*n+5))`
-/

namespace A334515.P8505694545738618415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334508 (n + 1) + A209915 (A209898 (2 * n + 5)).toNat

end

end A334515.P8505694545738618415

/-!
# A334516: Number of 3 X n whirlpool permutations (see A334518).

The programs for A334516, there is no canonical definition to state claims against.
-/

/-! ## A334516.P4567682672986978660

`A334518(∑[n+3]+1)`
-/

namespace A334516.P4567682672986978660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334518 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A334516.P4567682672986978660

/-!
# A334517: 

The programs for A334517, there is no canonical definition to state claims against.
-/

/-! ## A334517.P1799271083525491924

`A334519(∑[n+1])`
-/

namespace A334517.P1799271083525491924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334517.P1799271083525491924

/-!
# A334518: Array read by antidiagonals: T(m,n) (m>=1, n>=1) = number of m X n whirlpool permutations.

The programs for A334518, there is no canonical definition to state claims against.
-/

/-! ## A334518.P10452168412015909824

`A188808(n+1)+A100890(A129455(n))`
-/

namespace A334518.P10452168412015909824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188808 (n + 1) + A100890 (A129455 n).toNat

end

end A334518.P10452168412015909824

/-!
# A334519: Triangle read by rows: T(n,k) (1<=k<=n) = number of n X k whirlpool permutations (see A334518).

The programs for A334519, there is no canonical definition to state claims against.
-/

/-! ## A334519.P15706358507776336661

`A334518(A245300(n)+1)`
-/

namespace A334519.P15706358507776336661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334518 (A245300 n + 1).toNat

end

end A334519.P15706358507776336661

/-! ## A334519.P18404697827367931968

`A334518(A076281(n+1)+A043047(n+1))`
-/

namespace A334519.P18404697827367931968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334518 (A076281 (n + 1) + A043047 (n + 1)).toNat

end

end A334519.P18404697827367931968

/-!
# A334520: Primes that are the sum of two cubes.

The programs for A334520, there is no canonical definition to state claims against.
-/

/-! ## A334520.P7316950888952691139

`A002407(n%a(n-1))` with `a(0)=2`
-/

namespace A334520.P7316950888952691139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A002407 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A334520.P7316950888952691139

/-! ## A334520.P2521918436336192945

`∪[A002407(n+1), A007352(n+1)]`
-/

namespace A334520.P2521918436336192945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334520.P2521918436336192945

/-! ## A334520.P3218172675936247985

`A015582(a(A292251(n+1)))+A002407(n)` with `a(0)=2`
-/

namespace A334520.P3218172675936247985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A015582 (a (A292251 (n + 1)).toNat).toNat + A002407 n

end

end A334520.P3218172675936247985

/-! ## A334520.P12085745518203356837

`record[A081256(A014682(n+2))]`
-/

namespace A334520.P12085745518203356837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A014682 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334520.P12085745518203356837

/-! ## A334520.P13173320858767976451

`record[A081256(A103517(n)+n)]`
-/

namespace A334520.P13173320858767976451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A103517 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334520.P13173320858767976451

/-! ## A334520.P6051516199363782723

`record[A081256(record[A330396(n+1)])]`
-/

namespace A334520.P6051516199363782723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334520.P6051516199363782723

/-! ## A334520.P15037755673820947132

`record[A081256(A004280(n+1)+n)]`
-/

namespace A334520.P15037755673820947132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A004280 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334520.P15037755673820947132

/-! ## A334520.P12734913959756656428

`record[A081256(A004275(n)+1+n)]`
-/

namespace A334520.P12734913959756656428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A004275 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334520.P12734913959756656428

/-! ## A334520.P1311979040679400839

`record[A081256(A001651(A103517(n)))]`
-/

namespace A334520.P1311979040679400839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A001651 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334520.P1311979040679400839

/-! ## A334520.P9387774402167277670

`p?[∑[lcm(2, n)]-n]`
-/

namespace A334520.P9387774402167277670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334520.P9387774402167277670

/-! ## A334520.P7480242925522353532

`p?[ceil(2/3*∑[n])]`
-/

namespace A334520.P7480242925522353532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334520.P7480242925522353532

/-! ## A334520.P6941655038923380991

`∑{p}[p?[round((n+1)*n/3)], #]`
-/

namespace A334520.P6941655038923380991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) / 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A334520.P6941655038923380991

/-! ## A334520.P18364119518349640286

`∏{p}[p?[round((n+1)*n/3)], #]`
-/

namespace A334520.P18364119518349640286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) / 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A334520.P18364119518349640286

/-! ## A334520.P17809413682704342499

`∏{d}[p?[A001399(2*(n+1))], #]`
-/

namespace A334520.P17809413682704342499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A334520.P17809413682704342499

/-! ## A334520.P10993841482412997594

`lcm(p?[A007980(n)], A057077(n))`
-/

namespace A334520.P10993841482412997594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A057077 n)

end

end A334520.P10993841482412997594

/-! ## A334520.P3502911420176469389

`or(p?[A007980(n)], A244221(n))`
-/

namespace A334520.P3502911420176469389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A244221 n)

end

end A334520.P3502911420176469389

/-! ## A334520.P1843002357785207755

`p?[A007980(n)]%A007992(n+1)`
-/

namespace A334520.P1843002357785207755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A007992 (n + 1))

end

end A334520.P1843002357785207755

/-! ## A334520.P10487902095875063037

`or(p?[A007980(n)], A244220(n+1))`
-/

namespace A334520.P10487902095875063037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A244220 (n + 1))

end

end A334520.P10487902095875063037

/-! ## A334520.P11926201631424272946

`or(1-A244220(n), p?[A007980(n)])`
-/

namespace A334520.P11926201631424272946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A244220 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A334520.P11926201631424272946

/-! ## A334520.P14234097313879638615

`or(p?[A094909(2*n+3)], A094912(n))`
-/

namespace A334520.P14234097313879638615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094909 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A094912 n)

end

end A334520.P14234097313879638615

/-!
# A334521: Numbers that are not congruent to +- mod 9 and are neither a cube nor twice a cube.

The programs for A334521, there is no canonical definition to state claims against.
-/

/-! ## A334521.P17281420140096697840

`comp[A334522(n+1)-1]+1`
-/

namespace A334521.P17281420140096697840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334522 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A334521.P17281420140096697840

/-! ## A334521.P3158699606979274304

`comp[A023443(A334522(n+1))]+1`
-/

namespace A334521.P3158699606979274304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A334522 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A334521.P3158699606979274304

/-! ## A334521.P4271589199824614280

`lt[char[A334522(n+1)], n/A182461(n)]`
-/

namespace A334521.P4271589199824614280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334522 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A182461 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A334521.P4271589199824614280

/-! ## A334521.P11448705258490981138

`lt[char[A334522(n+1)]*A182461(n+2), n]`
-/

namespace A334521.P11448705258490981138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334522 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A182461 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A334521.P11448705258490981138

/-! ## A334521.P15953697483158980278

`eq[char[A334522(n+1)], A151933(n)]`
-/

namespace A334521.P15953697483158980278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334522 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A334521.P15953697483158980278

/-!
# A334522: Numbers that are either congruent to +-4 mod 9, or else are cubes or twice cubes.

The programs for A334522, there is no canonical definition to state claims against.
-/

/-! ## A334522.P3292763299258791217

`eq[char[A334521(n+1)], A151933(n)]`
-/

namespace A334522.P3292763299258791217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334521 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A334522.P3292763299258791217

/-!
# A334523: Irregular triangle read by rows: row n contains the sequence n, p(n), s(p(n)), p(s(p(n))), p(p(s(p(n)))), s(p(p(s(p(n))))), ..., repeatedly applying (p,s,p) to n, where p = phi (A000010), s = sigma = (A000203), stopping after the first 1 is reached. If 1 is never reached, row n contains n, -1.

The programs for A334523, there is no canonical definition to state claims against.
-/

/-! ## A334523.P8536125006140668765

`gcd(A343382(A048471(n)), A343391(n+1))`
-/

namespace A334523.P8536125006140668765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343382 (A048471 n).toNat) (A343391 (n + 1))

end

end A334523.P8536125006140668765

/-! ## A334523.P17264216173165005814

`A341999(A079490(n+1))+A146290(n+1)`
-/

namespace A334523.P17264216173165005814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A079490 (n + 1)).toNat + A146290 (n + 1)

end

end A334523.P17264216173165005814

/-! ## A334523.P7388220588330905595

`∑{e}[A005117(A091965(3*n+4)), #]`
-/

namespace A334523.P7388220588330905595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A091965 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A334523.P7388220588330905595

/-! ## A334523.P9953511965204120296

`gcd(A000217(A109975(n)), A341829(n+1))`
-/

namespace A334523.P9953511965204120296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A109975 n).toNat) (A341829 (n + 1))

end

end A334523.P9953511965204120296

/-! ## A334523.P4483614235278594235

`A001221(A181565(n+2)-A325197(n+2))`
-/

namespace A334523.P4483614235278594235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181565 (n + 2) - A325197 (n + 2)).toNat

end

end A334523.P4483614235278594235

/-!
# A334524: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2 + 5xy = 0.

The programs for A334524, there is no canonical definition to state claims against.
-/

/-! ## A334524.P1434227274168450232

`∑[A004018(A065679(n²))]`
-/

namespace A334524.P1434227274168450232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A065679 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334524.P1434227274168450232

/-! ## A334524.P7364968712066454830

`∑[A004018(n^A156384(n))]`
-/

namespace A334524.P7364968712066454830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A156384 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334524.P7364968712066454830

/-! ## A334524.P14660523427373835167

`∑[A004018(n^A213607(n))]`
-/

namespace A334524.P14660523427373835167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A213607 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334524.P14660523427373835167

/-! ## A334524.P15354046908706489191

`∑[A004018(A062955(n+1)²)]`
-/

namespace A334524.P15354046908706489191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A062955 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334524.P15354046908706489191

/-! ## A334524.P6230802989932147954

`∑[A004018((n*A000010(n+1))²)]`
-/

namespace A334524.P6230802989932147954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (((n : ℤ) * A000010 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334524.P6230802989932147954

/-!
# A334525: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2 + 7xy = 0.

The programs for A334525, there is no canonical definition to state claims against.
-/

/-! ## A334525.P10780615161222580102

`eq[A007814(n+1), A359581(A136527(n+1))]`
-/

namespace A334525.P10780615161222580102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359581 (A136527 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334525.P10780615161222580102

/-! ## A334525.P7387104312424230482

`eq[n%4, A214228(A283297(n+1))]`
-/

namespace A334525.P7387104312424230482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214228 (A283297 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334525.P7387104312424230482

/-! ## A334525.P11209700353582928022

`eq[A003815(n), A214228(A283297(n+1))]`
-/

namespace A334525.P11209700353582928022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214228 (A283297 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334525.P11209700353582928022

/-! ## A334525.P4454483651630787306

`eq[A009531(n), A214228(A283297(n+1))]`
-/

namespace A334525.P4454483651630787306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214228 (A283297 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334525.P4454483651630787306

/-! ## A334525.P17340467358550923311

`lt[A214228(A283297(n+1)), A263845(n)]`
-/

namespace A334525.P17340467358550923311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214228 (A283297 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334525.P17340467358550923311

/-!
# A334526: Number of triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2 + 11xy = 0.

The programs for A334526, there is no canonical definition to state claims against.
-/

/-! ## A334526.P9004592783162812399

`∑[gcd(12, A291880(2*n+3))]`
-/

namespace A334526.P9004592783162812399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A291880 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334526.P9004592783162812399

/-! ## A334526.P17924692931884886029

`eq[sqrt(val(n+1, 2)), A345236(n)!]`
-/

namespace A334526.P17924692931884886029
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.valuation (n + 1) 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A345236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A334526.P17924692931884886029

/-! ## A334526.P16374692812574250535

`∑[A141248(∑[A311828(n)])]`
-/

namespace A334526.P16374692812574250535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141248 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334526.P16374692812574250535

/-! ## A334526.P17978274336657246247

`eq[A345236(n)!, A003815(n)]`
-/

namespace A334526.P17978274336657246247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A345236 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334526.P17978274336657246247

/-! ## A334526.P228039217046630377

`eq[A007814(n+1), A030575(A271409(n))]`
-/

namespace A334526.P228039217046630377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030575 (A271409 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334526.P228039217046630377

/-!
# A334527: Numbers that are both Niven numbers and Smith numbers.

The programs for A334527, there is no canonical definition to state claims against.
-/

/-! ## A334527.P11002186688030054727

`∩[A005349(n+1), A006753(n+1)]`
-/

namespace A334527.P11002186688030054727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334527.P11002186688030054727

/-! ## A334527.P7981702387711085704

`∩[A006753(n+1), A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A334527.P7981702387711085704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334527.P7981702387711085704

/-! ## A334527.P4577341010804489655

`record[A360074(A006753(n+1))]`
-/

namespace A334527.P4577341010804489655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (A006753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334527.P4577341010804489655

/-! ## A334527.P2383560718952730736

`filter[A006753(n+1), A188641(#)]`
-/

namespace A334527.P2383560718952730736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A334527.P2383560718952730736

/-!
# A334528: Palindromic numbers that are also Niven numbers and Smith numbers.

The programs for A334528, there is no canonical definition to state claims against.
-/

/-! ## A334528.P9701016001601018566

`∩[A082232(n+1), A098834(n+1)]`
-/

namespace A334528.P9701016001601018566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334528.P9701016001601018566

/-! ## A334528.P15659399400449165470

`∩[A082232(n+1), A104171(n+1)]`
-/

namespace A334528.P15659399400449165470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334528.P15659399400449165470

/-! ## A334528.P4420639191472714129

`∩[A002113(n+1), A334527(n+1)]`
-/

namespace A334528.P4420639191472714129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334528.P4420639191472714129

/-! ## A334528.P13087493941382350756

`∩[A082232(n+1), A334527(n+1)]`
-/

namespace A334528.P13087493941382350756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334528.P13087493941382350756

/-! ## A334528.P8408710826342015981

`∩[A098834(n+1), A334527(n+1)]`
-/

namespace A334528.P8408710826342015981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334528.P8408710826342015981

/-!
# A334530: Numbers that are both binary palindromes and binary Smith numbers.

The programs for A334530, there is no canonical definition to state claims against.
-/

/-! ## A334530.P5494684024112934879

`∩[A006995(n+1), A337295(n+1)]`
-/

namespace A334530.P5494684024112934879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334530.P5494684024112934879

/-! ## A334530.P1812660769914385376

`∩[A057890(n+1), A337295(n+1)]`
-/

namespace A334530.P1812660769914385376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334530.P1812660769914385376

/-! ## A334530.P4077131808125091188

`∩[A161604(n+1), A337295(n+1)]`
-/

namespace A334530.P4077131808125091188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334530.P4077131808125091188

/-! ## A334530.P14407265550183606844

`∩[A163170(n+1), A337295(n+1)]`
-/

namespace A334530.P14407265550183606844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334530.P14407265550183606844

/-! ## A334530.P12803960047416165973

`∩[A180204(n+1), A337295(n+1)]`
-/

namespace A334530.P12803960047416165973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334530.P12803960047416165973

/-! ## A334530.P18422735912502639549

`∩[A006995(n+1), A278909(n+1)]`
-/

namespace A334530.P18422735912502639549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334530.P18422735912502639549

/-! ## A334530.P9600547939327950204

`∩[A163170(n+1), A278909(n+1)]`
-/

namespace A334530.P9600547939327950204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334530.P9600547939327950204

/-!
# A334531: Numbers that are both binary Niven numbers and binary Smith numbers.

The programs for A334531, there is no canonical definition to state claims against.
-/

/-! ## A334531.P12855678722739033914

`∩[A049445(n+1), A278909(n+1)]`
-/

namespace A334531.P12855678722739033914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334531.P12855678722739033914

/-!
# A334532: Binary palindromic numbers that are also binary Niven and binary Smith numbers.

The programs for A334532, there is no canonical definition to state claims against.
-/

/-! ## A334532.P10523784217281005934

`∩[A334529(n+1), A334530(n+1)]`
-/

namespace A334532.P10523784217281005934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334532.P10523784217281005934

/-!
# A334533: Numbers k such that k*sod(k) and k/sod(k) are both palindromes, where sod(k) denotes the sum of digits of k (A007953).

The programs for A334533, there is no canonical definition to state claims against.
-/

/-! ## A334533.P655991972686595147

`lcm(A231676(A000178(n)), A371790(n+1))`
-/

namespace A334533.P655991972686595147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A231676 (A000178 n).toNat) (A371790 (n + 1))

end

end A334533.P655991972686595147

/-!
# A334538: Perimeters of primitive Heronian triangles with squarefree side lengths.

The programs for A334538, there is no canonical definition to state claims against.
-/

/-! ## A334538.P4601086904528973523

`A330869(A167619(n+1))`
-/

namespace A334538.P4601086904528973523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330869 (A167619 (n + 1)).toNat

end

end A334538.P4601086904528973523

/-! ## A334538.P17420667833076001134

`A330869(A052382(n+1)%A330869(3*n+5))`
-/

namespace A334538.P17420667833076001134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330869 (Int.tmod (A052382 (n + 1)) (A330869 (3 * n + 5))).toNat

end

end A334538.P17420667833076001134

/-! ## A334538.P15233021728839854012

`∩[A162002(n+1), A330869(n+1)]`
-/

namespace A334538.P15233021728839854012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334538.P15233021728839854012

/-! ## A334538.P13509668180414962043

`A330869(A336547(n+1))%A144751(3*n+5)`
-/

namespace A334538.P13509668180414962043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330869 (A336547 (n + 1)).toNat) (A144751 (3 * n + 5))

end

end A334538.P13509668180414962043

/-! ## A334538.P3967997619379889970

`A330869(A106000(n+1))`
-/

namespace A334538.P3967997619379889970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330869 (A106000 (n + 1)).toNat

end

end A334538.P3967997619379889970

/-!
# A334540: Irregular triangle read by rows: T(n,k) is the number of parts in the partition of n into k consecutive parts that differ by 5, n >= 1, k >= 1, and the first element of column k is in the row that is the k-th heptagonal number (A000566).

The programs for A334540, there is no canonical definition to state claims against.
-/

/-! ## A334540.P11906076713171377304

`A334947(A048266(n+2))`
-/

namespace A334540.P11906076713171377304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (A048266 (n + 2)).toNat

end

end A334540.P11906076713171377304

/-! ## A334540.P2228092765538626845

`A334947(A153679(n+1)+1)`
-/

namespace A334540.P2228092765538626845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (A153679 (n + 1) + 1).toNat

end

end A334540.P2228092765538626845

/-! ## A334540.P15161239400289568714

`A334947(A281873(n+1)+1)`
-/

namespace A334540.P15161239400289568714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (A281873 (n + 1) + 1).toNat

end

end A334540.P15161239400289568714

/-! ## A334540.P13441431533315690650

`A334947(C(n+1, A096860(n+2))+1)`
-/

namespace A334540.P13441431533315690650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (Nat.choose (n + 1) (A096860 (n + 2)).toNat + 1)

end

end A334540.P13441431533315690650

/-! ## A334540.P7296062210663185127

`A334947(floor(2/A005848(n+1)+n+1)+1)`
-/

namespace A334540.P7296062210663185127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (⌊2 / (A005848 (n + 1) : ℚ) + (n + 1 : ℚ)⌋ + 1).toNat

end

end A334540.P7296062210663185127

/-!
# A334541: a(n) is the number of partitions of n into consecutive parts that differ by 5.

The programs for A334541, there is no canonical definition to state claims against.
-/

/-! ## A334541.P9730306743270656049

`A168255(A334732(n+1))%p?[A008259(n)]`
-/

namespace A334541.P9730306743270656049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168255 (A334732 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A334541.P9730306743270656049

/-! ## A334541.P5425213832094694483

`A168255(A334732(n+1))^(A248981(n+1)%2)`
-/

namespace A334541.P5425213832094694483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168255 (A334732 (n + 1)).toNat : ℚ) ^ (Int.tmod (A248981 (n + 1)) 2 : ℤ)

end

end A334541.P5425213832094694483

/-! ## A334541.P6654280434621776396

`A168255(A334732(-xor(n, -1)))%A248981(n+1)`
-/

namespace A334541.P6654280434621776396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168255 (A334732 (-Int.xor (n : ℤ) (-1)).toNat).toNat) (A248981 (n + 1))

end

end A334541.P6654280434621776396

/-! ## A334541.P644022967971376681

`A168255(A334732(char[1]+1+n))%A248981(n+1)`
-/

namespace A334541.P644022967971376681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168255 (A334732 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat) (A248981 (n + 1))

end

end A334541.P644022967971376681

/-! ## A334541.P2161233629760579550

`A168255(A334732(n+1))+A000007(A248981(n+1))`
-/

namespace A334541.P2161233629760579550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A334732 (n + 1)).toNat + A000007 (A248981 (n + 1)).toNat

end

end A334541.P2161233629760579550

/-! ## A334541.P11603263692920887452

`A168255(A334732(n+1))*A330746(A330772(n+1))`
-/

namespace A334541.P11603263692920887452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A334732 (n + 1)).toNat * A330746 (A330772 (n + 1)).toNat

end

end A334541.P11603263692920887452

/-! ## A334541.P18213852212172531685

`A038754(A103221(A334732(n+1))%A274154(n))`
-/

namespace A334541.P18213852212172531685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (Int.tmod (A103221 (A334732 (n + 1)).toNat) (A274154 n)).toNat

end

end A334541.P18213852212172531685

/-! ## A334541.P13777662211992284192

`A103221(A334732(n+1))+A005171(A344122(n+2))`
-/

namespace A334541.P13777662211992284192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A334732 (n + 1)).toNat + A005171 (A344122 (n + 2)).toNat

end

end A334541.P13777662211992284192

/-! ## A334541.P18194867534772563280

`A334733(n+1)/(n+1)`
-/

namespace A334541.P18194867534772563280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334733 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A334541.P18194867534772563280

/-!
# A334542: Numbers m such that m^2 = p^2 + k^2, with p > 0, where p = A007954(m) = the product of digits of m.

The programs for A334542, there is no canonical definition to state claims against.
-/

/-! ## A334542.P4555117146345700493

`A342441(A122627(n+1))`
-/

namespace A334542.P4555117146345700493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342441 (A122627 (n + 1)).toNat

end

end A334542.P4555117146345700493

/-! ## A334542.P17078957180056821624

`∑[A119269(∑[A103905(n+1)])]`
-/

namespace A334542.P17078957180056821624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334542.P17078957180056821624

/-! ## A334542.P17080512408424566857

`eq[A065648(A069816(n)), A136400(n)]`
-/

namespace A334542.P17080512408424566857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (A069816 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334542.P17080512408424566857

/-! ## A334542.P1680352646937011159

`A061069(A061805(n+1))`
-/

namespace A334542.P1680352646937011159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061069 (A061805 (n + 1)).toNat

end

end A334542.P1680352646937011159

/-!
# A334543: First occurrences of gaps between primes 6k - 1: gap sizes.

The programs for A334543, there is no canonical definition to state claims against.
-/

/-! ## A334543.P17460999700932502718

`A334545(n+1)-A334544(n+1)`
-/

namespace A334543.P17460999700932502718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334545 (n + 1) - A334544 (n + 1)

end

end A334543.P17460999700932502718

/-! ## A334543.P9662273310418410726

`A354091(p?[A334544(n+1)])-A334544(n+1)`
-/

namespace A334543.P9662273310418410726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354091 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A334544 (n + 1)

end

end A334543.P9662273310418410726

/-! ## A334543.P7544514024695281966

`A354091(A334544(n+1))-A334544(A000027(n+1))`
-/

namespace A334543.P7544514024695281966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354091 (A334544 (n + 1)).toNat - A334544 (A000027 (n + 1)).toNat

end

end A334543.P7544514024695281966

/-! ## A334543.P15544869497703236543

`A354091(A334544(n+1))-A334544(A187829(n+1))`
-/

namespace A334543.P15544869497703236543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354091 (A334544 (n + 1)).toNat - A334544 (A187829 (n + 1)).toNat

end

end A334543.P15544869497703236543

/-! ## A334543.P3156546808693410679

`6*(A338500(lt[A008720(n), 6])+1)`
-/

namespace A334543.P3156546808693410679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A338500 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1)

end

end A334543.P3156546808693410679

/-!
# A334544: Primes of the form 6k - 1 preceding the first-occurrence gaps in A334543.

The programs for A334544, there is no canonical definition to state claims against.
-/

/-! ## A334544.P16961547508638629441

`A334545(n+1)-A334543(n+1)`
-/

namespace A334544.P16961547508638629441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334545 (n + 1) - A334543 (n + 1)

end

end A334544.P16961547508638629441

/-! ## A334544.P8164894173339236057

`A354092(A334545(n+1))`
-/

namespace A334544.P8164894173339236057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (A334545 (n + 1)).toNat

end

end A334544.P8164894173339236057

/-! ## A334544.P13690395726442808708

`A334545(n+1)-6*A105363(A064704(n+1))`
-/

namespace A334544.P13690395726442808708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334545 (n + 1) - 6 * A105363 (A064704 (n + 1)).toNat

end

end A334544.P13690395726442808708

/-! ## A334544.P2210965476811091152

`A334545(n+1)-6*A257677(A062399(n+1))`
-/

namespace A334544.P2210965476811091152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334545 (n + 1) - 6 * A257677 (A062399 (n + 1)).toNat

end

end A334544.P2210965476811091152

/-! ## A334544.P307578253848728970

`A334545(n+1)-6*A105363(A032555(n+1))`
-/

namespace A334544.P307578253848728970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334545 (n + 1) - 6 * A105363 (A032555 (n + 1)).toNat

end

end A334544.P307578253848728970

/-!
# A334545: Primes of the form 6k - 1 at the end of first-occurrence gaps in A334543.

The programs for A334545, there is no canonical definition to state claims against.
-/

/-! ## A334545.P11840736423312132420

`A334543(n+1)+A334544(n+1)`
-/

namespace A334545.P11840736423312132420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334543 (n + 1) + A334544 (n + 1)

end

end A334545.P11840736423312132420

/-! ## A334545.P12192114438452669627

`A354091(A334544(n+1))`
-/

namespace A334545.P12192114438452669627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354091 (A334544 (n + 1)).toNat

end

end A334545.P12192114438452669627

/-! ## A334545.P2898638395398992654

`A334544(n+1)+6*(A338500(lt[A008720(n), 6])+1)`
-/

namespace A334545.P2898638395398992654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334544 (n + 1) + 6 * (A338500 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1)

end

end A334545.P2898638395398992654

/-! ## A334545.P1607890741365269520

`A334544(n+1)+6*A105363(A064704(n+1))`
-/

namespace A334545.P1607890741365269520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334544 (n + 1) + 6 * A105363 (A064704 (n + 1)).toNat

end

end A334545.P1607890741365269520

/-! ## A334545.P3240455047393500762

`A334544(n+1)+6*A257677(A062399(n+1))`
-/

namespace A334545.P3240455047393500762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334544 (n + 1) + 6 * A257677 (A062399 (n + 1)).toNat

end

end A334545.P3240455047393500762

/-!
# A334546: Array read by antidiagonals: T(n,k) is the number of unlabeled connected loopless multigraphs with n nodes of degree k or less.

The programs for A334546, there is no canonical definition to state claims against.
-/

/-! ## A334546.P14853994774592748140

`and(A290353(n), A336962(A029847(n)))`
-/

namespace A334546.P14853994774592748140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290353 n) (A336962 (A029847 n).toNat)

end

end A334546.P14853994774592748140

/-! ## A334546.P10407976293520090550

`A062756(C(A140303(n), A233543(n)))`
-/

namespace A334546.P10407976293520090550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Nat.choose (A140303 n).toNat (A233543 n).toNat)

end

end A334546.P10407976293520090550

/-! ## A334546.P7726046744044335136

`and(A080035(A215561(n)), A264909(n))`
-/

namespace A334546.P7726046744044335136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080035 (A215561 n).toNat) (A264909 n)

end

end A334546.P7726046744044335136

/-! ## A334546.P7569784283456806897

`and(A023444(A294609(n)), A264909(n))`
-/

namespace A334546.P7569784283456806897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023444 (A294609 n).toNat) (A264909 n)

end

end A334546.P7569784283456806897

/-! ## A334546.P4149280144219160969

`and(A080035(A215561(n)), A290353(n))`
-/

namespace A334546.P4149280144219160969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080035 (A215561 n).toNat) (A290353 n)

end

end A334546.P4149280144219160969

/-!
# A334547: Number of unlabeled connected loopless multigraphs with n nodes of degree 5 or less.

The programs for A334547, there is no canonical definition to state claims against.
-/

/-! ## A334547.P17687017755917246149

`A334546(eq[5, A025581(n)])`
-/

namespace A334547.P17687017755917246149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334547.P17687017755917246149

/-! ## A334547.P3182008862355370699

`A334546(eq[11, A099375(n)])`
-/

namespace A334547.P3182008862355370699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334547.P3182008862355370699

/-! ## A334547.P2555324314629101899

`A334546(Δ[Δ[A095667(n)]])`
-/

namespace A334547.P2555324314629101899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (f1 (n + 1) - f1 n).toNat

end

end A334547.P2555324314629101899

/-! ## A334547.P7352383222773505665

`A334546(Δ[A026054(n+3)])`
-/

namespace A334547.P7352383222773505665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (f1 (n + 1) - f1 n).toNat

end

end A334547.P7352383222773505665

/-! ## A334547.P5026086855581801115

`A334546(eq[6, A004736(n+1)])`
-/

namespace A334547.P5026086855581801115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334547.P5026086855581801115

/-!
# A334548: Array read by antidiagonals: T(n,k) is the number of n X n symmetric binary matrices with no row sum greater than k.

The programs for A334548, there is no canonical definition to state claims against.
-/

/-! ## A334548.P9071881743006226124

`A105588(A209575(n+1))`
-/

namespace A334548.P9071881743006226124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105588 (A209575 (n + 1)).toNat

end

end A334548.P9071881743006226124

/-! ## A334548.P8618203103898850626

`A048766(5^A152977(n))`
-/

namespace A334548.P8618203103898850626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A152977 n : ℤ))).toNat

end

end A334548.P8618203103898850626

/-! ## A334548.P7929399149503247382

`A103298(floor(cosh(A152977(n))))`
-/

namespace A334548.P7929399149503247382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 ⌊Real.cosh (A152977 n : ℝ)⌋.toNat

end

end A334548.P7929399149503247382

/-! ## A334548.P14272567717916374580

`A103298(floor(sinh(A152977(n))))`
-/

namespace A334548.P14272567717916374580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 ⌊Real.sinh (A152977 n : ℝ)⌋.toNat

end

end A334548.P14272567717916374580

/-! ## A334548.P16982594448959516574

`A303656(3^A140993(n+1))`
-/

namespace A334548.P16982594448959516574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303656 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A140993 (n + 1) : ℤ))).toNat

end

end A334548.P16982594448959516574

/-!
# A334549: Array read by antidiagonals: T(n,k) is the number of {-1,0,1} n X k matrices with all rows and columns summing to zero.

The programs for A334549, there is no canonical definition to state claims against.
-/

/-! ## A334549.P9087582801813328665

`A031876(A119329(n)%A031642(n+1))`
-/

namespace A334549.P9087582801813328665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (Int.tmod (A119329 n) (A031642 (n + 1))).toNat

end

end A334549.P9087582801813328665

/-!
# A334551: Number of fixed polyominoes with 2n-1 cells and width and height both equal to n.

The programs for A334551, the canonical program `A334551.P6916497020407641439` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334551 has offset 1).

The definition of A334551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334551.P6916497020407641439

`8*C(2*n, n)-3*(n+1)²+4*(n+1)-8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A334551

/-- `8*C(2*n, n)-3*(n+1)²+4*(n+1)-8` -/
def P6916497020407641439.Spec : Prop :=
  ∀ n, P6916497020407641439.a n = A334551 (n + 1)

theorem P6916497020407641439.correct : P6916497020407641439.Spec := by
  intro n
  simp only [A334551, Nat.add_sub_cancel]

end A334551

/-! ## A334551.P14536912045490823537

`A334552(∑[4*n]+1)`
-/

namespace A334551.P14536912045490823537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334552 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A334551.P14536912045490823537

namespace A334551

/-- `A334552(∑[4*n]+1)` -/
def P14536912045490823537.Spec : Prop :=
  ∀ n, P14536912045490823537.a n = A334551 (n + 1)

end A334551

/-! ## A334551.P16458700100584611643

`record[A334552(∑[A266981(n)])]`
-/

namespace A334551.P16458700100584611643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334552 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334551.P16458700100584611643

namespace A334551

/-- `record[A334552(∑[A266981(n)])]` -/
def P16458700100584611643.Spec : Prop :=
  ∀ n, P16458700100584611643.a n = A334551 (n + 1)

end A334551

/-! ## A334551.P1470527402968692270

`and(-1, A334552(A001844(n)))`
-/

namespace A334551.P1470527402968692270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A334552 (A001844 n).toNat)

end

end A334551.P1470527402968692270

namespace A334551

/-- `and(-1, A334552(A001844(n)))` -/
def P1470527402968692270.Spec : Prop :=
  ∀ n, P1470527402968692270.a n = A334551 (n + 1)

end A334551

/-! ## A334551.P12091728131629377296

`record[A003982(n)*A334552(n+1)]`
-/

namespace A334551.P12091728131629377296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A334552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334551.P12091728131629377296

namespace A334551

/-- `record[A003982(n)*A334552(n+1)]` -/
def P12091728131629377296.Spec : Prop :=
  ∀ n, P12091728131629377296.a n = A334551 (n + 1)

end A334551

/-!
# A334552: Array read by antidiagonals: T(m,n) is the number of fixed polyominoes that have a width of m and height of n and m + n - 1 cells.

The programs for A334552, there is no canonical definition to state claims against.
-/

/-! ## A334552.P7463865718279519479

`A127560(eq[A056559(n), A079208(3*n)])`
-/

namespace A334552.P7463865718279519479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079208 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127560 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334552.P7463865718279519479

/-! ## A334552.P2986532559719479588

`A005848(A054120(n))`
-/

namespace A334552.P2986532559719479588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005848 (A054120 n).toNat

end

end A334552.P2986532559719479588

/-! ## A334552.P10815379208900638999

`A068509(A167034(n))`
-/

namespace A334552.P10815379208900638999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A167034 n).toNat

end

end A334552.P10815379208900638999

/-! ## A334552.P9662929258558240065

`A056556(A183065(n))`
-/

namespace A334552.P9662929258558240065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A183065 n).toNat

end

end A334552.P9662929258558240065

/-! ## A334552.P9911041595265541332

`A376665(A124376(n))`
-/

namespace A334552.P9911041595265541332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376665 (A124376 n).toNat

end

end A334552.P9911041595265541332

/-!
# A334555: Number of Eulerian orientations in the triangular grid graph with n vertices on each side.

The programs for A334555, there is no canonical definition to state claims against.
-/

/-! ## A334555.P1670589951581627924

`A137704(n)+A043096(A000595(n))`
-/

namespace A334555.P1670589951581627924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137704 n + A043096 (A000595 n).toNat

end

end A334555.P1670589951581627924

/-!
# A334556: Numbers whose binary expansion generates rotationally symmetric XOR-triangles.

The programs for A334556, there is no canonical definition to state claims against.
-/

/-! ## A334556.P13394608811155205554

`record[A181983(A335061(n+1))]`
-/

namespace A334556.P13394608811155205554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A335061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334556.P13394608811155205554

/-! ## A334556.P8157156146303460274

`eq[n, A334727(A030101(n))]`
-/

namespace A334556.P8157156146303460274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334727 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334556.P8157156146303460274

/-! ## A334556.P3419108147292450646

`eq[n, A334727(A056539(n))]`
-/

namespace A334556.P3419108147292450646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334727 (A056539 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334556.P3419108147292450646

/-! ## A334556.P3410804372537181747

`eq[A325401(2*n), A334727(n)]`
-/

namespace A334556.P3410804372537181747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334556.P3410804372537181747

/-! ## A334556.P17643234918661874811

`eq[A028310(n), A334595(A028310(n))]`
-/

namespace A334556.P17643234918661874811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334595 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334556.P17643234918661874811

/-!
# A334557: Numbers m such that m = p^2 + k^2, with p > 0, where p = A007954(m) = the product of digits of m.

The programs for A334557, there is no canonical definition to state claims against.
-/

/-! ## A334557.P17476972395680535596

`A224511(A340962(n))`
-/

namespace A334557.P17476972395680535596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224511 (A340962 (n + 12)).toNat

end

end A334557.P17476972395680535596

/-!
# A334560: Perimeters of primitive Heronian triangles whose longest side length is squarefree.

The programs for A334560, there is no canonical definition to state claims against.
-/

/-! ## A334560.P14780939285931314544

`∩[A335224(n+1), A375740(n+1)]`
-/

namespace A334560.P14780939285931314544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334560.P14780939285931314544

/-! ## A334560.P17027622730059718177

`record[A335224(n+1)%A155986(2*n+5)]`
-/

namespace A334560.P17027622730059718177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335224 (n + 1)) (A155986 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334560.P17027622730059718177

/-! ## A334560.P12893097586688336937

`A335224(A007967((n+2)²)-char[A008436(n)])`
-/

namespace A334560.P12893097586688336937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008436 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335224 (A007967 ((n + 2) ^ 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A334560.P12893097586688336937

/-! ## A334560.P13431871135920299840

`A096468(lt[1, A156869(3*n+1)])`
-/

namespace A334560.P13431871135920299840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156869 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A334560.P13431871135920299840

/-!
# A334561: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals downwards, where column k is the expansion of e.g.f. exp(-Sum_{j=1..k} x^j).

The programs for A334561, there is no canonical definition to state claims against.
-/

/-! ## A334561.P13163723101749758771

`A113447(A216274(n)^4)`
-/

namespace A334561.P13163723101749758771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (A216274 n ^ 4).toNat

end

end A334561.P13163723101749758771

/-! ## A334561.P3602129474931419535

`A113447(A216274(n)²²)`
-/

namespace A334561.P3602129474931419535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 ((A216274 n ^ 2) ^ 2).toNat

end

end A334561.P3602129474931419535

/-! ## A334561.P829091192349613609

`A352371(A352361(n)^A294775(n))`
-/

namespace A334561.P829091192349613609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352371 (SequenceMachineLib.roundAway ((A352361 n : ℚ) ^ (A294775 n : ℤ))).toNat

end

end A334561.P829091192349613609

/-! ## A334561.P3099546195771959240

`A008705(A155111(3*n+2)%A002260(n+1))`
-/

namespace A334561.P3099546195771959240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 (Int.tmod (A155111 (3 * n + 2)) (A002260 (n + 1))).toNat

end

end A334561.P3099546195771959240

/-! ## A334561.P11673848644075590292

`A352371(A352361(n)^A001055(n+1))`
-/

namespace A334561.P11673848644075590292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352371 (SequenceMachineLib.roundAway ((A352361 n : ℚ) ^ (A001055 (n + 1) : ℤ))).toNat

end

end A334561.P11673848644075590292

/-!
# A334562: E.g.f.: exp(-(x + x^2 + x^3)).

The programs for A334562, there is no canonical definition to state claims against.
-/

/-! ## A334562.P13939655423706060830

`A334561(∑[n+3])`
-/

namespace A334562.P13939655423706060830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334562.P13939655423706060830

/-! ## A334562.P5759929230948494069

`or(1, A334561(A055998(n+1)))`
-/

namespace A334562.P5759929230948494069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A334561 (A055998 (n + 1)).toNat)

end

end A334562.P5759929230948494069

/-! ## A334562.P809565747643218005

`A334561(A027379(n+1))+val(A001316(n), 5)`
-/

namespace A334562.P809565747643218005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334561 (A027379 (n + 1)).toNat + (SequenceMachineLib.valuation (A001316 n).toNat 5 : ℤ)

end

end A334562.P809565747643218005

/-! ## A334562.P14638767316110898574

`A334561(A027379(n+1))+n*A000007(n)`
-/

namespace A334562.P14638767316110898574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334561 (A027379 (n + 1)).toNat + (n : ℤ) * A000007 n

end

end A334562.P14638767316110898574

/-! ## A334562.P3846787531058643817

`A062157(n)²!*A334561(A027379(n+1))`
-/

namespace A334562.P3846787531058643817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A062157 n ^ 2).toNat : ℤ) * A334561 (A027379 (n + 1)).toNat

end

end A334562.P3846787531058643817

/-! ## A334562.P7564439429266936919

`A008683(2*(n+1))²!*A334561(A055998(n+1))`
-/

namespace A334562.P7564439429266936919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (2 * (n + 1)) ^ 2).toNat : ℤ) * A334561 (A055998 (n + 1)).toNat

end

end A334562.P7564439429266936919

/-! ## A334562.P3022455601330333464

`A001221(A246655(n+1))*A334561(A027379(n+1))`
-/

namespace A334562.P3022455601330333464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A246655 (n + 1)).toNat * A334561 (A027379 (n + 1)).toNat

end

end A334562.P3022455601330333464

/-!
# A334563: a(n) is the maximum number of 4-cycles possible in an n-vertex planar graph.

The programs for A334563, the canonical program `A334563.P8882883044150633062` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334563 has offset 0).

The definition of A334563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334563.P8882883044150633062

`a(n-1)+n+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A334563

/-- `a(n-1)+n+1` -/
def P8882883044150633062.Spec : Prop :=
  ∀ n, (P8882883044150633062.a n : ℤ) = A334563 n

theorem P8882883044150633062.correct : P8882883044150633062.Spec := by
  intro n
  simp only [A334563]

end A334563

/-! ## A334563.P5661277501983957199

`∑[a(gcd(2, n))+n+1]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=3`
-/

namespace A334563.P5661277501983957199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 3] fun n f1 =>
  f1 (Nat.gcd 2 n) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334563.P5661277501983957199

namespace A334563

/-- `∑[a(gcd(2, n))+n+1]` -/
def P5661277501983957199.Spec : Prop :=
  ∀ n, (P5661277501983957199.a n : ℤ) = A334563 n

end A334563

/-! ## A334563.P1657392159290332206

`floor(∑[(n+1)/A000165(C(4, n))])`
-/

namespace A334563.P1657392159290332206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000165 (Nat.choose 4 n) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A334563.P1657392159290332206

namespace A334563

/-- `floor(∑[(n+1)/A000165(C(4, n))])` -/
def P1657392159290332206.Spec : Prop :=
  ∀ n, P1657392159290332206.a n = A334563 n

end A334563

/-! ## A334563.P5334089679181870508

`∑[A063946(A063946(n+1)%A000041(n))]`
-/

namespace A334563.P5334089679181870508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (Int.tmod (A063946 (n + 1)) (A000041 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334563.P5334089679181870508

namespace A334563

/-- `∑[A063946(A063946(n+1)%A000041(n))]` -/
def P5334089679181870508.Spec : Prop :=
  ∀ n, P5334089679181870508.a n = A334563 n

end A334563

/-! ## A334563.P17904934073445020869

`∑[A006068(A003188(n+1)%A000041(n))]`
-/

namespace A334563.P17904934073445020869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (Int.tmod (A003188 (n + 1)) (A000041 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334563.P17904934073445020869

namespace A334563

/-- `∑[A006068(A003188(n+1)%A000041(n))]` -/
def P17904934073445020869.Spec : Prop :=
  ∀ n, P17904934073445020869.a n = A334563 n

end A334563

/-! ## A334563.P6543772945250210084

`∑[A057300(A057300(n+1)%A000032(n))]`
-/

namespace A334563.P6543772945250210084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (Int.tmod (A057300 (n + 1)) (A000032 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334563.P6543772945250210084

namespace A334563

/-- `∑[A057300(A057300(n+1)%A000032(n))]` -/
def P6543772945250210084.Spec : Prop :=
  ∀ n, P6543772945250210084.a n = A334563 n

end A334563

/-! ## A334563.P7044450692264054253

`∑[A163327(A163327(n+1)%A210736(n))]`
-/

namespace A334563.P7044450692264054253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (Int.tmod (A163327 (n + 1)) (A210736 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334563.P7044450692264054253

namespace A334563

/-- `∑[A163327(A163327(n+1)%A210736(n))]` -/
def P7044450692264054253.Spec : Prop :=
  ∀ n, P7044450692264054253.a n = A334563 n

end A334563

/-! ## A334563.P4028441197049828218

`A249122(∑[A004277(A028253(n+1))])`
-/

namespace A334563.P4028441197049828218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A028253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334563.P4028441197049828218

namespace A334563

/-- `A249122(∑[A004277(A028253(n+1))])` -/
def P4028441197049828218.Spec : Prop :=
  ∀ n, P4028441197049828218.a n = A334563 n

end A334563

/-!
# A334564: E.g.f.: exp(-(x + x^2 + x^3 + x^4)).

The programs for A334564, there is no canonical definition to state claims against.
-/

/-! ## A334564.P8270743425075067772

`A334561(∑[n+3]+n+3)`
-/

namespace A334564.P8270743425075067772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334561 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A334564.P8270743425075067772

/-! ## A334564.P11511388318663175025

`or(1, A334561(A046691(n+2)))`
-/

namespace A334564.P11511388318663175025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A334561 (A046691 (n + 2)).toNat)

end

end A334564.P11511388318663175025

/-! ## A334564.P4387732443196846500

`A334561(A046691(n+2))^(A000040(n+1)%2)`
-/

namespace A334564.P4387732443196846500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334561 (A046691 (n + 2)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A334564.P4387732443196846500

/-! ## A334564.P15890317722303133683

`A334561(A046691(n+2))^(record[A006530(n+2)]%2)`
-/

namespace A334564.P15890317722303133683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334561 (A046691 (n + 2)).toNat : ℚ) ^ (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 : ℤ)

end

end A334564.P15890317722303133683

/-! ## A334564.P1220567249910360324

`A334561(A046691(n+2))^((A044587(n+1)+2)%2)`
-/

namespace A334564.P1220567249910360324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334561 (A046691 (n + 2)).toNat : ℚ) ^ (Int.tmod (A044587 (n + 1) + 2) 2 : ℤ)

end

end A334564.P1220567249910360324

/-! ## A334564.P16706143535184392352

`A334561(A046691(n+2))%A056279(3*n+5)`
-/

namespace A334564.P16706143535184392352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334561 (A046691 (n + 2)).toNat) (A056279 (3 * n + 5))

end

end A334564.P16706143535184392352

/-!
# A334565: E.g.f.: exp(-(x + x^2 + x^3 + x^4 + x^5)).

The programs for A334565, there is no canonical definition to state claims against.
-/

/-! ## A334565.P6963031367657579538

`A334561(∑[n+5]+5)`
-/

namespace A334565.P6963031367657579538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334561 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A334565.P6963031367657579538

/-! ## A334565.P16598640180631450602

`or(1, A334561(A052905(n+2)))`
-/

namespace A334565.P16598640180631450602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A334561 (A052905 (n + 2)).toNat)

end

end A334565.P16598640180631450602

/-! ## A334565.P7309566026141442816

`A020985(n)²*A334561(A052905(n+2))`
-/

namespace A334565.P7309566026141442816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A334561 (A052905 (n + 2)).toNat

end

end A334565.P7309566026141442816

/-! ## A334565.P1240453308827772288

`A001222(A003629(n+1))²*A334561(A052905(n+2))`
-/

namespace A334565.P1240453308827772288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003629 (n + 1)).toNat ^ 2 * A334561 (A052905 (n + 2)).toNat

end

end A334565.P1240453308827772288

/-! ## A334565.P10893815922107061396

`A001222(A020649(n+3))²*A334561(A052905(n+2))`
-/

namespace A334565.P10893815922107061396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020649 (n + 3)).toNat ^ 2 * A334561 (A052905 (n + 2)).toNat

end

end A334565.P10893815922107061396

/-!
# A334566: Number of solutions of the Diophantine equation z^2 - y^2 - x^2 = n > 0 when the positive integers, x, y and z, are consecutive terms of an arithmetic progression.

The programs for A334566, there is no canonical definition to state claims against.
-/

/-! ## A334566.P16974335219900738379

`A244629(n+1)%A050603(n)`
-/

namespace A334566.P16974335219900738379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244629 (n + 1)) (A050603 n)

end

end A334566.P16974335219900738379

/-! ## A334566.P10624550576712509845

`A323169(A136462(n))%Δ[val(n+1, 2)]`
-/

namespace A334566.P10624550576712509845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323169 (A136462 n).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A334566.P10624550576712509845

/-! ## A334566.P4427144953554975596

`A323451(A321738(n+1))%Δ[val(n+1, 2)]`
-/

namespace A334566.P4427144953554975596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323451 (A321738 (n + 1)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A334566.P4427144953554975596

/-! ## A334566.P5713779310337993553

`A294748(A112582(n+1))%val(or(1, n)+1, 2)`
-/

namespace A334566.P5713779310337993553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294748 (A112582 (n + 1)).toNat) (SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2 : ℤ)

end

end A334566.P5713779310337993553

/-! ## A334566.P5541332747002635480

`A065033(floor((2/acot(2*n))²)-n²)%A094267(n)`
-/

namespace A334566.P5541332747002635480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋ - (n ^ 2 : ℤ)).toNat) (A094267 n)

end

end A334566.P5541332747002635480

/-!
# A334567: Least value m > 0 such that Diophantine equation z^2 - y^2 - x^2 = m, when the positive integers, x, y and z are consecutive terms of an arithmetic progression, has exactly n solutions.

The programs for A334567, there is no canonical definition to state claims against.
-/

/-! ## A334567.P11287125686567298166

`A048691(A002624(n²))`
-/

namespace A334567.P11287125686567298166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A002624 (n ^ 2)).toNat

end

end A334567.P11287125686567298166

/-! ## A334567.P228480416068175013

`A094548(A116522(n)+1)`
-/

namespace A334567.P228480416068175013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094548 (A116522 n + 1).toNat

end

end A334567.P228480416068175013

/-!
# A334568: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals downwards, where column k is the expansion of e.g.f. exp(-Sum_{j=1..k} x^j/j).

The programs for A334568, there is no canonical definition to state claims against.
-/

/-! ## A334568.P14794258208505559690

`A263848(∏{d}[A263905(n+1), #])`
-/

namespace A334568.P14794258208505559690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A334568.P14794258208505559690

/-! ## A334568.P16480237960343871661

`A295343(comp[∑[n-1]]%A295325(n+5))`
-/

namespace A334568.P16480237960343871661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295343 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A295325 (n + 5))).toNat

end

end A334568.P16480237960343871661

/-! ## A334568.P4930978160906886594

`A081130(n)+A062157(A018156(n))`
-/

namespace A334568.P4930978160906886594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081130 n + A062157 (A018156 n).toNat

end

end A334568.P4930978160906886594

/-! ## A334568.P17577897800473955524

`A053382(A182406(n+1))%4`
-/

namespace A334568.P17577897800473955524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053382 (A182406 (n + 1)).toNat) 4

end

end A334568.P17577897800473955524

/-! ## A334568.P11514522107789921368

`Δ[A268238(A051865(3*n)-n)]`
-/

namespace A334568.P11514522107789921368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268238 (A051865 (3 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334568.P11514522107789921368

/-!
# A334569: E.g.f.: exp(-(x + x^2/2 + x^3/3)).

The programs for A334569, there is no canonical definition to state claims against.
-/

/-! ## A334569.P7220968776410496446

`A334568(∑[n+3])`
-/

namespace A334569.P7220968776410496446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334569.P7220968776410496446

/-! ## A334569.P6554310146767823995

`or(char[1], A334568(A055998(n+1)))`
-/

namespace A334569.P6554310146767823995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A334568 (A055998 (n + 1)).toNat)

end

end A334569.P6554310146767823995

/-! ## A334569.P13828868348765351654

`char[A336285(n)]*A334568(A055998(n+1))`
-/

namespace A334569.P13828868348765351654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A334568 (A055998 (n + 1)).toNat

end

end A334569.P13828868348765351654

/-! ## A334569.P14685413128424249353

`A000005(gcd(n, n+1))*A334568(A055998(n+1))`
-/

namespace A334569.P14685413128424249353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A334568 (A055998 (n + 1)).toNat

end

end A334569.P14685413128424249353

/-! ## A334569.P13238993802077554188

`A334568(A055998(n+1))+A000005(comp[n²])%2`
-/

namespace A334569.P13238993802077554188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (A055998 (n + 1)).toNat + Int.tmod (A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A334569.P13238993802077554188

/-! ## A334569.P15113404643300449861

`A334568(A055998(n+1))/(A145679(n+1)^n)!`
-/

namespace A334569.P15113404643300449861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334568 (A055998 (n + 1)).toNat : ℚ) / (Nat.factorial (A145679 (n + 1) ^ n).toNat : ℚ)

end

end A334569.P15113404643300449861

/-! ## A334569.P15974960205009555268

`A334568(A055998(n+1))/A061347(A017653(n))`
-/

namespace A334569.P15974960205009555268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334568 (A055998 (n + 1)).toNat : ℚ) / (A061347 (A017653 n).toNat : ℚ)

end

end A334569.P15974960205009555268

/-! ## A334569.P3954946128131545522

`A249581(A111284(n+1))%2*A334568(A055998(n+1))`
-/

namespace A334569.P3954946128131545522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249581 (A111284 (n + 1)).toNat) 2 * A334568 (A055998 (n + 1)).toNat

end

end A334569.P3954946128131545522

/-! ## A334569.P5551836585591850868

`A334568(A055998(n+1))/A061336(A061304(n+1))`
-/

namespace A334569.P5551836585591850868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334568 (A055998 (n + 1)).toNat : ℚ) / (A061336 (A061304 (n + 1)).toNat : ℚ)

end

end A334569.P5551836585591850868

/-!
# A334570: E.g.f.: exp(-(x + x^2/2 + x^3/3 + x^4/4)).

The programs for A334570, there is no canonical definition to state claims against.
-/

/-! ## A334570.P3680498663608304935

`A334568(∑[n+3]+n+3)`
-/

namespace A334570.P3680498663608304935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A334570.P3680498663608304935

/-! ## A334570.P7047503330977664425

`and(-A008302(n+1), A334568(A046691(n+2)))`
-/

namespace A334570.P7047503330977664425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A008302 (n + 1)) (A334568 (A046691 (n + 2)).toNat)

end

end A334570.P7047503330977664425

/-! ## A334570.P14627009317265037394

`and(-A299483(n+1), A334568(A046691(n+2)))`
-/

namespace A334570.P14627009317265037394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A299483 (n + 1)) (A334568 (A046691 (n + 2)).toNat)

end

end A334570.P14627009317265037394

/-! ## A334570.P3198921094280869532

`A334568(A046691(n+2))+A126869(2*n+1)`
-/

namespace A334570.P3198921094280869532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (A046691 (n + 2)).toNat + A126869 (2 * n + 1)

end

end A334570.P3198921094280869532

/-! ## A334570.P2446251206391980165

`A334568(A046691(n+2))^(A000040(n+1)²%2)`
-/

namespace A334570.P2446251206391980165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334568 (A046691 (n + 2)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1) ^ 2) 2 : ℤ)

end

end A334570.P2446251206391980165

/-! ## A334570.P8528574570114164243

`A334568(A046691(n+2))^A204040(A101881(2*n+1))`
-/

namespace A334570.P8528574570114164243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334568 (A046691 (n + 2)).toNat : ℚ) ^ (A204040 (A101881 (2 * n + 1)).toNat : ℤ)

end

end A334570.P8528574570114164243

/-! ## A334570.P10838464829900407610

`A334568(A046691(n+2))%A056279(3*n+5)`
-/

namespace A334570.P10838464829900407610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334568 (A046691 (n + 2)).toNat) (A056279 (3 * n + 5))

end

end A334570.P10838464829900407610

/-! ## A334570.P16686424483862560188

`and(-A299499(n), A334568(A046691(n+2)))`
-/

namespace A334570.P16686424483862560188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A299499 n) (A334568 (A046691 (n + 2)).toNat)

end

end A334570.P16686424483862560188

/-! ## A334570.P270424925868388864

`A334568(A046691(n+2))+A008683(A119877(n))`
-/

namespace A334570.P270424925868388864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (A046691 (n + 2)).toNat + A008683 (A119877 n).toNat

end

end A334570.P270424925868388864

/-!
# A334571: E.g.f.: exp(-(x + x^2/2 + x^3/3 + x^4/4 + x^5/5)).

The programs for A334571, there is no canonical definition to state claims against.
-/

/-! ## A334571.P2887282082078053162

`A334568(A052905(n+2))`
-/

namespace A334571.P2887282082078053162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (A052905 (n + 2)).toNat

end

end A334571.P2887282082078053162

/-! ## A334571.P4464987220026126228

`A334568(eq[4, A025581(n)])`
-/

namespace A334571.P4464987220026126228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334571.P4464987220026126228

/-! ## A334571.P3333230885810844556

`A334568(eq[16, A130321(n)])`
-/

namespace A334571.P3333230885810844556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334571.P3333230885810844556

/-! ## A334571.P9115867253294829119

`A334568(Δ[A111396(n)]-2)`
-/

namespace A334571.P9115867253294829119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (f1 (n + 1) - f1 n - 2).toNat

end

end A334571.P9115867253294829119

/-! ## A334571.P3502022391644433067

`A334568(Δ[A055831(n+4)])`
-/

namespace A334571.P3502022391644433067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (f1 (n + 1) - f1 n).toNat

end

end A334571.P3502022391644433067

/-! ## A334571.P10959816010390938941

`A334568(A046691(n+3)-1)`
-/

namespace A334571.P10959816010390938941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (A046691 (n + 3) - 1).toNat

end

end A334571.P10959816010390938941

/-! ## A334571.P11529145048473895503

`A334568(A000096(n+4)-4)`
-/

namespace A334571.P11529145048473895503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (A000096 (n + 4) - 4).toNat

end

end A334571.P11529145048473895503

/-! ## A334571.P12901968117303844586

`A334568(A000217(n+5)-5)`
-/

namespace A334571.P12901968117303844586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (A000217 (n + 5) - 5).toNat

end

end A334571.P12901968117303844586

/-!
# A334572: Let x(n, k) be the exponent of prime(k) in the factorization of n, then a(n) = Max_{k} abs(x(n,k)- x(n-1,k)).

The programs for A334572, the canonical program `A334572.P16209056633569415903` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334572 has offset 2).

The definition of A334572 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334572.P16209056633569415903

`A051903(A002378(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334572

/-- `A051903(A002378(n+1))` -/
def P16209056633569415903.Spec : Prop :=
  ∀ n, P16209056633569415903.a n = A334572 (n + 2)

theorem P16209056633569415903.correct : P16209056633569415903.Spec := by
  intro n
  simp only [A334572, Nat.add_sub_cancel]

end A334572

/-! ## A334572.P2113473615142698179

`val(A278256(n+1), 2)`
-/

namespace A334572.P2113473615142698179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278256 (n + 1)).toNat 2

end

end A334572.P2113473615142698179

namespace A334572

/-- `val(A278256(n+1), 2)` -/
def P2113473615142698179.Spec : Prop :=
  ∀ n, (P2113473615142698179.a n : ℤ) = A334572 (n + 2)

end A334572

/-! ## A334572.P492268474371402895

`val(A278259(2*n+3), 2)`
-/

namespace A334572.P492268474371402895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278259 (2 * n + 3)).toNat 2

end

end A334572.P492268474371402895

namespace A334572

/-- `val(A278259(2*n+3), 2)` -/
def P492268474371402895.Spec : Prop :=
  ∀ n, (P492268474371402895.a n : ℤ) = A334572 (n + 2)

end A334572

/-! ## A334572.P9371805944606204756

`A051903(A278256(n+1))`
-/

namespace A334572.P9371805944606204756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278256 (n + 1)).toNat

end

end A334572.P9371805944606204756

namespace A334572

/-- `A051903(A278256(n+1))` -/
def P9371805944606204756.Spec : Prop :=
  ∀ n, P9371805944606204756.a n = A334572 (n + 2)

end A334572

/-! ## A334572.P13932211306722213926

`A051903((n+2)*A057521(n+1))`
-/

namespace A334572.P13932211306722213926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ((n + 2 : ℤ) * A057521 (n + 1)).toNat

end

end A334572.P13932211306722213926

namespace A334572

/-- `A051903((n+2)*A057521(n+1))` -/
def P13932211306722213926.Spec : Prop :=
  ∀ n, P13932211306722213926.a n = A334572 (n + 2)

end A334572

/-! ## A334572.P6386483624549200456

`A051903(∑[2*(n+1)])`
-/

namespace A334572.P6386483624549200456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334572.P6386483624549200456

namespace A334572

/-- `A051903(∑[2*(n+1)])` -/
def P6386483624549200456.Spec : Prop :=
  ∀ n, P6386483624549200456.a n = A334572 (n + 2)

end A334572

/-! ## A334572.P15240367868074816944

`dr(A051903((n+1)*(n+2)))`
-/

namespace A334572.P15240367868074816944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051903 ((n + 1) * (n + 2)))

end

end A334572.P15240367868074816944

namespace A334572

/-- `dr(A051903((n+1)*(n+2)))` -/
def P15240367868074816944.Spec : Prop :=
  ∀ n, (P15240367868074816944.a n : ℤ) = A334572 (n + 2)

end A334572

/-! ## A334572.P4038756026023321958

`A002473(A051903((n+2)*(n+1)))`
-/

namespace A334572.P4038756026023321958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (A051903 ((n + 2) * (n + 1))).toNat

end

end A334572.P4038756026023321958

namespace A334572

/-- `A002473(A051903((n+2)*(n+1)))` -/
def P4038756026023321958.Spec : Prop :=
  ∀ n, P4038756026023321958.a n = A334572 (n + 2)

end A334572

/-! ## A334572.P7580641346907856400

`A377930(A286255(n+1))`
-/

namespace A334572.P7580641346907856400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377930 (A286255 (n + 1)).toNat

end

end A334572.P7580641346907856400

namespace A334572

/-- `A377930(A286255(n+1))` -/
def P7580641346907856400.Spec : Prop :=
  ∀ n, P7580641346907856400.a n = A334572 (n + 2)

end A334572

/-! ## A334572.P3940593701366192319

`A375040(∑[n+1])`
-/

namespace A334572.P3940593701366192319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334572.P3940593701366192319

namespace A334572

/-- `A375040(∑[n+1])` -/
def P3940593701366192319.Spec : Prop :=
  ∀ n, P3940593701366192319.a n = A334572 (n + 2)

end A334572

/-!
# A334573: Partial sums of A334572.

The programs for A334573, the canonical program `A334573.P12074546961031129650` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334573 has offset 2).

The definition of A334573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334573.P12074546961031129650

`∑[A334572(n+2)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A334573

/-- `∑[A334572(n+2)]` -/
def P12074546961031129650.Spec : Prop :=
  ∀ n, P12074546961031129650.a n = A334573 (n + 2)

theorem P12074546961031129650.correct : P12074546961031129650.Spec := by
  intro n
  simp only [A334573, Nat.add_sub_cancel]

end A334573

/-! ## A334573.P3255018542751677803

`∑[val(A278256(n+1), 2)]`
-/

namespace A334573.P3255018542751677803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278256 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P3255018542751677803

namespace A334573

/-- `∑[val(A278256(n+1), 2)]` -/
def P3255018542751677803.Spec : Prop :=
  ∀ n, (P3255018542751677803.a n : ℤ) = A334573 (n + 2)

end A334573

/-! ## A334573.P1110424510447002928

`∑[A051903(A278256(n+1))]`
-/

namespace A334573.P1110424510447002928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P1110424510447002928

namespace A334573

/-- `∑[A051903(A278256(n+1))]` -/
def P1110424510447002928.Spec : Prop :=
  ∀ n, P1110424510447002928.a n = A334573 (n + 2)

end A334573

/-! ## A334573.P7285538746483689538

`∑[A051903(∑[2*(n+1)])]`
-/

namespace A334573.P7285538746483689538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P7285538746483689538

namespace A334573

/-- `∑[A051903(∑[2*(n+1)])]` -/
def P7285538746483689538.Spec : Prop :=
  ∀ n, P7285538746483689538.a n = A334573 (n + 2)

end A334573

/-! ## A334573.P2119466259855070762

`∑[A051903(∑[n+2+n])%9]`
-/

namespace A334573.P2119466259855070762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (∑ j ∈ Finset.range (n + 1), f2 j)) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P2119466259855070762

namespace A334573

/-- `∑[A051903(∑[n+2+n])%9]` -/
def P2119466259855070762.Spec : Prop :=
  ∀ n, P2119466259855070762.a n = A334573 (n + 2)

end A334573

/-! ## A334573.P16447099118073694542

`∑[dr(A051903(A002378(n+1)))]`
-/

namespace A334573.P16447099118073694542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051903 (A002378 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P16447099118073694542

namespace A334573

/-- `∑[dr(A051903(A002378(n+1)))]` -/
def P16447099118073694542.Spec : Prop :=
  ∀ n, (P16447099118073694542.a n : ℤ) = A334573 (n + 2)

end A334573

/-! ## A334573.P11833875029630781958

`∑[A004185(A051903(∑[n+2+n]))]`
-/

namespace A334573.P11833875029630781958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A051903 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P11833875029630781958

namespace A334573

/-- `∑[A004185(A051903(∑[n+2+n]))]` -/
def P11833875029630781958.Spec : Prop :=
  ∀ n, P11833875029630781958.a n = A334573 (n + 2)

end A334573

/-! ## A334573.P2928591730424070732

`A028310(∑[A051903(∑[n+2+n])])`
-/

namespace A334573.P2928591730424070732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334573.P2928591730424070732

namespace A334573

/-- `A028310(∑[A051903(∑[n+2+n])])` -/
def P2928591730424070732.Spec : Prop :=
  ∀ n, P2928591730424070732.a n = A334573 (n + 2)

end A334573

/-! ## A334573.P7736251207445095542

`∑[A051885(A051903(lcm(n+2, n+1)))]`
-/

namespace A334573.P7736251207445095542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A051903 (Nat.lcm (n + 2) (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P7736251207445095542

namespace A334573

/-- `∑[A051885(A051903(lcm(n+2, n+1)))]` -/
def P7736251207445095542.Spec : Prop :=
  ∀ n, P7736251207445095542.a n = A334573 (n + 2)

end A334573

/-! ## A334573.P6941956158429884863

`∑[A137735(A051903(∑[n+2+n])²)]`
-/

namespace A334573.P6941956158429884863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A051903 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P6941956158429884863

namespace A334573

/-- `∑[A137735(A051903(∑[n+2+n])²)]` -/
def P6941956158429884863.Spec : Prop :=
  ∀ n, P6941956158429884863.a n = A334573 (n + 2)

end A334573

/-! ## A334573.P976323370208764931

`∑[A375040(∑[n+1])]`
-/

namespace A334573.P976323370208764931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375040 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P976323370208764931

namespace A334573

/-- `∑[A375040(∑[n+1])]` -/
def P976323370208764931.Spec : Prop :=
  ∀ n, P976323370208764931.a n = A334573 (n + 2)

end A334573

/-!
# A334575: a(n) = binomial(C(n+1),C(n)) where C(n) = A000108(n) the n-th Catalan number.

The programs for A334575, there is no canonical definition to state claims against.
-/

/-! ## A334575.P14701438779290209579

`C(A000108(n+1), Δ[(4-6/(n+1))*a(n-1)])` with `a(0)=1`
-/

namespace A334575.P14701438779290209579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000108 (n + 1)).toNat (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A334575.P14701438779290209579

/-!
# A334576: a(n) is the X-coordinate of the n-th point of the space filling curve P defined in Comments section; sequence A334577 gives Y-coordinates.

The programs for A334576, the canonical program `A334576.P12532079723840725322` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334576 has offset 0).

The definition of A334576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334576.P12532079723840725322

`A020986(n)+A020987(n)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A334576

/-- `A020986(n)+A020987(n)-1` -/
def P12532079723840725322.Spec : Prop :=
  ∀ n, P12532079723840725322.a n = A334576 n

theorem P12532079723840725322.correct : P12532079723840725322.Spec := by
  intro n
  simp only [A334576]

end A334576

/-! ## A334576.P5019792758416896293

`A020986(n-A020987(n))-1`
-/

namespace A334576.P5019792758416896293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 ((n : ℤ) - A020987 n).toNat - 1

end

end A334576.P5019792758416896293

namespace A334576

/-- `A020986(n-A020987(n))-1` -/
def P5019792758416896293.Spec : Prop :=
  ∀ n, P5019792758416896293.a n = A334576 n

end A334576

/-! ## A334576.P11749612394975339185

`∑[A020985(n)]+A020987(n)-1`
-/

namespace A334576.P11749612394975339185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A020987 n - 1)

end

end A334576.P11749612394975339185

namespace A334576

/-- `∑[A020985(n)]+A020987(n)-1` -/
def P11749612394975339185.Spec : Prop :=
  ∀ n, P11749612394975339185.a n = A334576 n

end A334576

/-! ## A334576.P11493964976556032658

`A020986(n)-A020986(A014081(n))%2`
-/

namespace A334576.P11493964976556032658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 n - Int.tmod (A020986 (A014081 n).toNat) 2

end

end A334576.P11493964976556032658

namespace A334576

/-- `A020986(n)-A020986(A014081(n))%2` -/
def P11493964976556032658.Spec : Prop :=
  ∀ n, P11493964976556032658.a n = A334576 n

end A334576

/-! ## A334576.P17416616909639170797

`(A020986(4*n)-1)/2`
-/

namespace A334576.P17416616909639170797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020986 (4 * n) - 1 : ℚ) / 2

end

end A334576.P17416616909639170797

namespace A334576

/-- `(A020986(4*n)-1)/2` -/
def P17416616909639170797.Spec : Prop :=
  ∀ n, P17416616909639170797.a n = (A334576 n : ℚ)

end A334576

/-! ## A334576.P2632075560648016947

`A307707(A020986(4*n)*A020986(n))`
-/

namespace A334576.P2632075560648016947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A020986 (4 * n) * A020986 n).toNat

end

end A334576.P2632075560648016947

namespace A334576

/-- `A307707(A020986(4*n)*A020986(n))` -/
def P2632075560648016947.Spec : Prop :=
  ∀ n, P2632075560648016947.a n = A334576 n

end A334576

/-! ## A334576.P8413034296189980437

`A059905(A059253(6*A000695(n)))`
-/

namespace A334576.P8413034296189980437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A059253 (6 * A000695 n).toNat).toNat

end

end A334576.P8413034296189980437

namespace A334576

/-- `A059905(A059253(6*A000695(n)))` -/
def P8413034296189980437.Spec : Prop :=
  ∀ n, P8413034296189980437.a n = A334576 n

end A334576

/-!
# A334577: a(n) is the Y-coordinate of the n-th point of the space filling curve P defined in Comments section; sequence A334576 gives X-coordinates.

The programs for A334577, the canonical program `A334577.P1556614945130862147` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334577 has offset 0).

The definition of A334577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334577.P1556614945130862147

`floor(A020990(4*n+2)/2)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A334577

/-- `floor(A020990(4*n+2)/2)` -/
def P1556614945130862147.Spec : Prop :=
  ∀ n, P1556614945130862147.a n = A334577 n

theorem P1556614945130862147.correct : P1556614945130862147.Spec := by
  intro n
  simp only [A334577]

end A334577

/-! ## A334577.P3049589612179623019

`(A020990(Δ[A056220(n)])-1)/2`
-/

namespace A334577.P3049589612179623019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020990 (f1 (n + 1) - f1 n).toNat - 1 : ℚ) / 2

end

end A334577.P3049589612179623019

namespace A334577

/-- `(A020990(Δ[A056220(n)])-1)/2` -/
def P3049589612179623019.Spec : Prop :=
  ∀ n, P3049589612179623019.a n = (A334577 n : ℚ)

end A334577

/-! ## A334577.P11806562747259473062

`∑[A020985(2*n+1)]-A020987(4*n+3)`
-/

namespace A334577.P11806562747259473062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A020987 (4 * n + 3)

end

end A334577.P11806562747259473062

namespace A334577

/-- `∑[A020985(2*n+1)]-A020987(4*n+3)` -/
def P11806562747259473062.Spec : Prop :=
  ∀ n, P11806562747259473062.a n = A334577 n

end A334577

/-! ## A334577.P9634271161912063699

`A004526(A020990(Δ[A056220(n)]))`
-/

namespace A334577.P9634271161912063699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020990 (f1 (n + 1) - f1 n).toNat).toNat

end

end A334577.P9634271161912063699

namespace A334577

/-- `A004526(A020990(Δ[A056220(n)]))` -/
def P9634271161912063699.Spec : Prop :=
  ∀ n, P9634271161912063699.a n = A334577 n

end A334577

/-! ## A334577.P13596265006379447599

`A020986(2*n+1)-A008619(A020986(4*n+2))`
-/

namespace A334577.P13596265006379447599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (2 * n + 1) - A008619 (A020986 (4 * n + 2)).toNat

end

end A334577.P13596265006379447599

namespace A334577

/-- `A020986(2*n+1)-A008619(A020986(4*n+2))` -/
def P13596265006379447599.Spec : Prop :=
  ∀ n, P13596265006379447599.a n = A334577 n

end A334577

/-! ## A334577.P6750220306504853395

`A334576(2*n+1)-A020986(n)`
-/

namespace A334577.P6750220306504853395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334576 (2 * n + 1) - A020986 n

end

end A334577.P6750220306504853395

namespace A334577

/-- `A334576(2*n+1)-A020986(n)` -/
def P6750220306504853395.Spec : Prop :=
  ∀ n, P6750220306504853395.a n = A334577 n

end A334577

/-! ## A334577.P16915387116681890404

`A334576(2*n+1)-∑[A033999(A334576(2*n))]`
-/

namespace A334577.P16915387116681890404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A334576 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334576 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334577.P16915387116681890404

namespace A334577

/-- `A334576(2*n+1)-∑[A033999(A334576(2*n))]` -/
def P16915387116681890404.Spec : Prop :=
  ∀ n, P16915387116681890404.a n = A334577 n

end A334577

/-! ## A334577.P7192276737391355885

`(A068915(A017137(n))-1)/2`
-/

namespace A334577.P7192276737391355885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068915 (A017137 n).toNat - 1 : ℚ) / 2

end

end A334577.P7192276737391355885

namespace A334577

/-- `(A068915(A017137(n))-1)/2` -/
def P7192276737391355885.Spec : Prop :=
  ∀ n, P7192276737391355885.a n = (A334577 n : ℚ)

end A334577

/-! ## A334577.P6578322210998125444

`A004524(A068915(A017137(n)))`
-/

namespace A334577.P6578322210998125444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A068915 (A017137 n).toNat).toNat

end

end A334577.P6578322210998125444

namespace A334577

/-- `A004524(A068915(A017137(n)))` -/
def P6578322210998125444.Spec : Prop :=
  ∀ n, P6578322210998125444.a n = A334577 n

end A334577

/-! ## A334577.P15178553329878785601

`A059905(A059252(6*A000695(n)+1))`
-/

namespace A334577.P15178553329878785601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A059252 (6 * A000695 n + 1).toNat).toNat

end

end A334577.P15178553329878785601

namespace A334577

/-- `A059905(A059252(6*A000695(n)+1))` -/
def P15178553329878785601.Spec : Prop :=
  ∀ n, P15178553329878785601.a n = A334577 n

end A334577

/-!
# A334578: Double subfactorials: a(n) = (-1)^floor(n/2) * n!! * Sum_{i=0..floor(n/2)} (-1)^i/(n-2*i)!!.

The programs for A334578, the canonical program `A334578.P1239647656258044001` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334578 has offset 0).

The definition of A334578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334578.P1239647656258044001

`n*a(n-2)+(-1)^floor(n/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A334578

/-- `n*a(n-2)+(-1)^floor(n/2)` -/
def P1239647656258044001.Spec : Prop :=
  ∀ n, P1239647656258044001.a n = (A334578 n : ℚ)

end A334578

/-! ## A334578.P11449640693906791104

`ratio[(-a(n-2))^n]+n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A334578.P11449640693906791104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (-f1 (n - 2)) ^ n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ) * a (n - 2)

end

end A334578.P11449640693906791104

namespace A334578

/-- `ratio[(-a(n-2))^n]+n*a(n-2)` -/
def P11449640693906791104.Spec : Prop :=
  ∀ n, P11449640693906791104.a n = (A334578 n : ℚ)

end A334578

/-! ## A334578.P4996154741769551809

`A057077(n)+n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A334578.P4996154741769551809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A057077 n + (n : ℤ) * a (n - 2)

end

end A334578.P4996154741769551809

namespace A334578

/-- `A057077(n)+n*a(n-2)` -/
def P4996154741769551809.Spec : Prop :=
  ∀ n, P4996154741769551809.a n = A334578 n

end A334578

/-! ## A334578.P12188792094483241945

`A033999(floor(n/2))+n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A334578.P12188792094483241945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A033999 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) * a (n - 2)

end

end A334578.P12188792094483241945

namespace A334578

/-- `A033999(floor(n/2))+n*a(n-2)` -/
def P12188792094483241945.Spec : Prop :=
  ∀ n, P12188792094483241945.a n = A334578 n

end A334578

/-! ## A334578.P8231368859400138282

`A324965(A258466(n)-A004526(n))`
-/

namespace A334578.P8231368859400138282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A258466 n - A004526 n).toNat

end

end A334578.P8231368859400138282

namespace A334578

/-- `A324965(A258466(n)-A004526(n))` -/
def P8231368859400138282.Spec : Prop :=
  ∀ n, P8231368859400138282.a n = A334578 n

end A334578

/-!
# A334579: a(n) = Sum_{d|n} gcd(tau(d), sigma(d)).

The programs for A334579, the canonical program `A334579.P14328322525773657863` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334579 has offset 1).

The definition of A334579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334579.P14328322525773657863

`∑{d}[n+1, A009205(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334579

/-- `∑{d}[n+1, A009205(#)]` -/
def P14328322525773657863.Spec : Prop :=
  ∀ n, P14328322525773657863.a n = A334579 (n + 1)

theorem P14328322525773657863.correct : P14328322525773657863.Spec := by
  intro n
  simp only [A334579, Nat.add_sub_cancel]

end A334579

/-! ## A334579.P8529780619359802762

`∑{d}[n+1, gcd(A000005(#), A000203(#))]`
-/

namespace A334579.P8529780619359802762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (A000005 d) (A000203 d)

end

end A334579.P8529780619359802762

namespace A334579

/-- `∑{d}[n+1, gcd(A000005(#), A000203(#))]` -/
def P8529780619359802762.Spec : Prop :=
  ∀ n, (P8529780619359802762.a n : ℤ) = A334579 (n + 1)

end A334579

/-! ## A334579.P18252141651294004019

`∑{d}[A077168(n), A243070(A009205(#))]`
-/

namespace A334579.P18252141651294004019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A243070 (A009205 d).toNat

end

end A334579.P18252141651294004019

namespace A334579

/-- `∑{d}[A077168(n), A243070(A009205(#))]` -/
def P18252141651294004019.Spec : Prop :=
  ∀ n, P18252141651294004019.a n = A334579 (n + 1)

end A334579

/-! ## A334579.P3285884124112552949

`∑{d}[n+1, #%2]+A001222(A099485(n))`
-/

namespace A334579.P3285884124112552949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) + A001222 (A099485 n).toNat

end

end A334579.P3285884124112552949

namespace A334579

/-- `∑{d}[n+1, #%2]+A001222(A099485(n))` -/
def P3285884124112552949.Spec : Prop :=
  ∀ n, P3285884124112552949.a n = A334579 (n + 1)

end A334579

/-! ## A334579.P16660739452918968378

`A001227(n+1)+A001222(A099485(n))`
-/

namespace A334579.P16660739452918968378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + A001222 (A099485 n).toNat

end

end A334579.P16660739452918968378

namespace A334579

/-- `A001227(n+1)+A001222(A099485(n))` -/
def P16660739452918968378.Spec : Prop :=
  ∀ n, P16660739452918968378.a n = A334579 (n + 1)

end A334579

/-!
# A334580: 

The programs for A334580, there is no canonical definition to state claims against.
-/

/-! ## A334580.P4005616945181244196

`lcm(∏[A028920(n)], A103931(n+1))`
-/

namespace A334580.P4005616945181244196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ j ∈ Finset.range (n + 1), f1 j) (A103931 (n + 1))

end

end A334580.P4005616945181244196

/-! ## A334580.P9006863074912782616

`A051418(n+1)/A351374(A110566(n+1))`
-/

namespace A334580.P9006863074912782616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051418 (n + 1) : ℚ) / (A351374 (A110566 (n + 1)).toNat : ℚ)

end

end A334580.P9006863074912782616

/-! ## A334580.P8593727036350016805

`A002805(n+1)*A003418(A242474(n+1))`
-/

namespace A334580.P8593727036350016805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A003418 (A242474 (n + 1)).toNat

end

end A334580.P8593727036350016805

/-! ## A334580.P9440062476037301620

`A003418(A242474(n+1))²/A110566(n+1)`
-/

namespace A334580.P9440062476037301620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A242474 (n + 1)).toNat ^ 2 : ℚ) / (A110566 (n + 1) : ℚ)

end

end A334580.P9440062476037301620

/-! ## A334580.P8917012930179341771

`A002805(n+1)*A028310(A058312(n+1))`
-/

namespace A334580.P8917012930179341771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A028310 (A058312 (n + 1)).toNat

end

end A334580.P8917012930179341771

/-!
# A334581: Number of ways to choose 3 points that form an equilateral triangle from the A000292(n) points in a regular tetrahedral grid of side length n.

The programs for A334581, there is no canonical definition to state claims against.
-/

/-! ## A334581.P15471476153453532336

`∑{e}[∑{digits}[n, 10^#], A277935(#)]`
-/

namespace A334581.P15471476153453532336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A277935 (Nat.factorization (f1 n) p)

end

end A334581.P15471476153453532336

/-! ## A334581.P9848291960783577418

`4*A342382(A002415(n))`
-/

namespace A334581.P9848291960783577418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A342382 (A002415 n).toNat

end

end A334581.P9848291960783577418

/-!
# A334582: 

The programs for A334582, there is no canonical definition to state claims against.
-/

/-! ## A334582.P11814486352062218596

`A051732(2^(n+1))^3`
-/

namespace A334582.P11814486352062218596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051732 (2 ^ (n + 1)) ^ 3

end

end A334582.P11814486352062218596

/-! ## A334582.P12227792192845331050

`∏[A175069(A014963(n+1)²²)]`
-/

namespace A334582.P12227792192845331050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 ((A014963 (n + 1) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334582.P12227792192845331050

/-! ## A334582.P17615764384985845346

`A096179(∑[n+1])^3`
-/

namespace A334582.P17615764384985845346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096179 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A334582.P17615764384985845346

/-! ## A334582.P4429286296956185863

`A179661(∑[n+1])^3`
-/

namespace A334582.P4429286296956185863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179661 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A334582.P4429286296956185863

/-! ## A334582.P5783066416776935056

`A000578(A003418(n+1))`
-/

namespace A334582.P5783066416776935056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A003418 (n + 1)).toNat

end

end A334582.P5783066416776935056

/-!
# A334584: Perimeters of primitive Heronian triangles whose smallest side length is prime.

The programs for A334584, there is no canonical definition to state claims against.
-/

/-! ## A334584.P11190187269939797134

`A334338(lt[A156920(n), A264818(2*n+5)])`
-/

namespace A334584.P11190187269939797134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264818 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334338 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334584.P11190187269939797134

/-!
# A334585: Denominator of Sum_{k=1..n} (-1)^(k+1)/k^4.

The programs for A334585, there is no canonical definition to state claims against.
-/

/-! ## A334585.P6445723282567793384

`A002805(n+1)*A007407(n+1)*A003418(A242474(n+1))`
-/

namespace A334585.P6445723282567793384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A007407 (n + 1) * A003418 (A242474 (n + 1)).toNat

end

end A334585.P6445723282567793384

/-! ## A334585.P2589639050046517681

`A002805(n+1)*A028310(A058312(n+1))*A007407(n+1)`
-/

namespace A334585.P2589639050046517681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A028310 (A058312 (n + 1)).toNat * A007407 (n + 1)

end

end A334585.P2589639050046517681

/-! ## A334585.P3825282209053053741

`A163929(A349484(n+1))`
-/

namespace A334585.P3825282209053053741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163929 (A349484 (n + 1)).toNat

end

end A334585.P3825282209053053741

/-! ## A334585.P7792366890565833513

`A163929(A319724(n)+2)`
-/

namespace A334585.P7792366890565833513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163929 (A319724 n + 2).toNat

end

end A334585.P7792366890565833513

/-! ## A334585.P17524404000700371758

`A163929(A029731(n+3))`
-/

namespace A334585.P17524404000700371758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163929 (A029731 (n + 3)).toNat

end

end A334585.P17524404000700371758

/-!
# A334586: Perimeters of primitive Heronian triangles whose middle side length is prime.

The programs for A334586, there is no canonical definition to state claims against.
-/

/-! ## A334586.P1866988501968131068

`filter[A335243(n+1), A174889(#)]`
-/

namespace A334586.P1866988501968131068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A334586.P1866988501968131068

/-! ## A334586.P17371431554146554486

`∩[A335243(n+1), A338331(n+1)]`
-/

namespace A334586.P17371431554146554486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334586.P17371431554146554486

/-!
# A334589: Perimeters of nonprimitive Heronian triangles.

The programs for A334589, there is no canonical definition to state claims against.
-/

/-! ## A334589.P716159210210375663

`lt[A070138(n+1), A051516(n+1)]+1`
-/

namespace A334589.P716159210210375663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A334589.P716159210210375663

/-! ## A334589.P6538076918748704896

`A020725(lt[A070138(n+1), A051516(n+1)])`
-/

namespace A334589.P6538076918748704896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334589.P6538076918748704896

/-! ## A334589.P12299719820680733882

`lt[A070138(n+1), A051517(A057979(n)+1)]+1`
-/

namespace A334589.P12299719820680733882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (A057979 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A334589.P12299719820680733882

/-! ## A334589.P3204779506185868119

`lt[A020662(n+1), A258851(A284289(n))]`
-/

namespace A334589.P3204779506185868119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A284289 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334589.P3204779506185868119

/-! ## A334589.P9749767924081817421

`lt[A052382(n+1), A258851(A284289(n))]`
-/

namespace A334589.P9749767924081817421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A284289 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334589.P9749767924081817421

/-!
# A334590: Number of nonprimitive Heronian triangles with perimeter A334589(n).

The programs for A334590, there is no canonical definition to state claims against.
-/

/-! ## A334590.P1089310427418420008

`A051516(A334589(n+1))-A070138(A334589(n+1))`
-/

namespace A334590.P1089310427418420008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A334589 (n + 1)).toNat - A070138 (A334589 (n + 1)).toNat

end

end A334590.P1089310427418420008

/-! ## A334590.P15063650428298589412

`A323023(A314887(n)+comp[xor(n, 2*n+1)])`
-/

namespace A334590.P15063650428298589412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A314887 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A334590.P15063650428298589412

/-! ## A334590.P4946497556005943895

`A001222(A323586(n)+A145393(n+1))`
-/

namespace A334590.P4946497556005943895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A323586 n + A145393 (n + 1)).toNat

end

end A334590.P4946497556005943895

/-! ## A334590.P16692730831627625689

`A267037(A267045(n))+A182972(n+1)`
-/

namespace A334590.P16692730831627625689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267037 (A267045 n).toNat + A182972 (n + 1)

end

end A334590.P16692730831627625689

/-! ## A334590.P1818179982997677203

`A001222(A080552(n+1)-A080551(n+1))`
-/

namespace A334590.P1818179982997677203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080552 (n + 1) - A080551 (n + 1)).toNat

end

end A334590.P1818179982997677203

/-!
# A334591: Side length of largest triangle of zeros in the XOR-triangle with first row generated from the binary expansion of n.

The programs for A334591, there is no canonical definition to state claims against.
-/

/-! ## A334591.P1131806842401178818

`A319420(A266190(n))`
-/

namespace A334591.P1131806842401178818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (A266190 n).toNat

end

end A334591.P1131806842401178818

/-! ## A334591.P16221999658283570590

`A319420(n*A036036(n+5))`
-/

namespace A334591.P16221999658283570590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 ((n : ℤ) * A036036 (n + 5)).toNat

end

end A334591.P16221999658283570590

/-! ## A334591.P18004998521303788365

`A284559(n)+A279485(A000079(n))`
-/

namespace A334591.P18004998521303788365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n + A279485 (A000079 n).toNat

end

end A334591.P18004998521303788365

/-! ## A334591.P15332042593984004297

`lcm(A001221(A014447(n)), ∏{e}[n+1, #])`
-/

namespace A334591.P15332042593984004297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A014447 n).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A334591.P15332042593984004297

/-! ## A334591.P10248366652997638423

`A001221(xor(A018808(n), A288811(n)))`
-/

namespace A334591.P10248366652997638423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A018808 n) (A288811 n)).toNat

end

end A334591.P10248366652997638423

/-!
# A334592: Number of zeros in XOR-triangle with first row generated from the binary expansion of n.

The programs for A334592, there is no canonical definition to state claims against.
-/

/-! ## A334592.P12346413079544197912

`A000217(A070939(n+1))-A334593(n+1)`
-/

namespace A334592.P12346413079544197912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A070939 (n + 1)).toNat - A334593 (n + 1)

end

end A334592.P12346413079544197912

/-! ## A334592.P10734442440364144077

`A025747(A000523(n+1))-A334593(n+1)`
-/

namespace A334592.P10734442440364144077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (A000523 (n + 1)).toNat - A334593 (n + 1)

end

end A334592.P10734442440364144077

/-! ## A334592.P6487335955610655784

`A025747(A000523(n+1))-A227876(A007088(n+1))`
-/

namespace A334592.P6487335955610655784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (A000523 (n + 1)).toNat - A227876 (A007088 (n + 1)).toNat

end

end A334592.P6487335955610655784

/-! ## A334592.P9205478212897140880

`A025747(A000523(n+1))-A227876(A115848(n+1))`
-/

namespace A334592.P9205478212897140880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (A000523 (n + 1)).toNat - A227876 (A115848 (n + 1)).toNat

end

end A334592.P9205478212897140880

/-! ## A334592.P7173204656495177331

`A316831(A351643(n+1))+A124763(3*n+2)`
-/

namespace A334592.P7173204656495177331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 (A351643 (n + 1)).toNat + A124763 (3 * n + 2)

end

end A334592.P7173204656495177331

/-!
# A334593: Number of ones in XOR-triangle with first row generated from the binary expansion of n.

The programs for A334593, there is no canonical definition to state claims against.
-/

/-! ## A334593.P17339607247216290271

`A000217(A070939(n+1))-A334592(n+1)`
-/

namespace A334593.P17339607247216290271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A070939 (n + 1)).toNat - A334592 (n + 1)

end

end A334593.P17339607247216290271

/-! ## A334593.P14423000858351179545

`∑[A104117(n+1)]-A334592(n+1)`
-/

namespace A334593.P14423000858351179545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A334592 (n + 1)

end

end A334593.P14423000858351179545

/-! ## A334593.P5902305050611566362

`A025747(floor(log2(n+1)))-A334592(n+1)`
-/

namespace A334593.P5902305050611566362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (Nat.log 2 (n + 1)) - A334592 (n + 1)

end

end A334593.P5902305050611566362

/-! ## A334593.P2184956638224530625

`A227876(Δ[A067894(n)])`
-/

namespace A334593.P2184956638224530625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227876 (f1 (n + 1) - f1 n).toNat

end

end A334593.P2184956638224530625

/-! ## A334593.P15567219902223791719

`A227876(A007088(n+1))`
-/

namespace A334593.P15567219902223791719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227876 (A007088 (n + 1)).toNat

end

end A334593.P15567219902223791719

/-!
# A334594: Irregular table read by rows: T(n,k) is the binary interpretation of the k-th row of the XOR-triangle with first row generated from the binary expansion of n. 1 <= k <= A070939(n).

The programs for A334594, there is no canonical definition to state claims against.
-/

/-! ## A334594.P6350396584012595817

`and(A072782(2*(n+1)), A346206(A213709(n)))`
-/

namespace A334594.P6350396584012595817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072782 (2 * (n + 1))) (A346206 (A213709 n).toNat)

end

end A334594.P6350396584012595817

/-!
# A334597: Dimensions of the finite-dimensional Lie algebras of type E_n (n=3,...,8).

The programs for A334597, there is no canonical definition to state claims against.
-/

/-! ## A334597.P9905042705336814039

`A327313(A130752(n))+A034308(n)`
-/

namespace A334597.P9905042705336814039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327313 (A130752 n).toNat + A034308 n

end

end A334597.P9905042705336814039

