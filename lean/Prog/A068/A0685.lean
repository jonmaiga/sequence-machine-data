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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A068500: Sequence of Fibonacci numbers whose sum of decimal digits sets a new record.

The programs for A068500, there is no canonical definition to state claims against.
-/

/-! ## A068500.P981103969332895845

`A067182(record[A004090(n+1)])`
-/

namespace A068500.P981103969332895845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067182 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068500.P981103969332895845

/-! ## A068500.P12271375481522575331

`A000045(lt[A252976(n+5), A014681(n)])`
-/

namespace A068500.P12271375481522575331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252976 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068500.P12271375481522575331

/-! ## A068500.P3355648320129035995

`A000045(lt[A000196(3*(n+1)), A336029(n)])`
-/

namespace A068500.P3355648320129035995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068500.P3355648320129035995

/-! ## A068500.P9215113098239217340

`A000045(lt[A109157(2*(n+1)), A109180(n+1)])`
-/

namespace A068500.P9215113098239217340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109157 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068500.P9215113098239217340

/-! ## A068500.P14945426050291739041

`A000045(lt[A282838(n+5), A027868(3*(n+1))])`
-/

namespace A068500.P14945426050291739041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068500.P14945426050291739041

/-!
# A068501: Values m such that the consecutive pair parameters(m,m+1) generate Pythagorean triples whose odd terms are both prime.

The programs for A068501, there is no canonical definition to state claims against.
-/

/-! ## A068501.P17443120699348548282

`A178659(n+1)-1`
-/

namespace A068501.P17443120699348548282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1) - 1

end

end A068501.P17443120699348548282

/-! ## A068501.P15843010128333064634

`floor(A048161(n+1)/2)`
-/

namespace A068501.P15843010128333064634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048161 (n + 1) : ℚ) / 2⌋

end

end A068501.P15843010128333064634

/-! ## A068501.P13009034420112651843

`floor(sqrt(A259979(n+1))/2)`
-/

namespace A068501.P13009034420112651843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A259979 (n + 1) : ℝ) / 2⌋

end

end A068501.P13009034420112651843

/-! ## A068501.P3477040430881771820

`round(sqrt(A067755(n+1)/2))`
-/

namespace A068501.P3477040430881771820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A067755 (n + 1) : ℚ) / 2 : ℝ))

end

end A068501.P3477040430881771820

/-! ## A068501.P1760190025352363463

`(sqrt(A263951(n+1))-1)/2`
-/

namespace A068501.P1760190025352363463
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A263951 (n + 1) : ℝ) - 1) / 2

end

end A068501.P1760190025352363463

/-! ## A068501.P11809225716255702953

`(A048161(A000027(n+1))-1)/2`
-/

namespace A068501.P11809225716255702953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048161 (A000027 (n + 1)).toNat - 1 : ℚ) / 2

end

end A068501.P11809225716255702953

/-! ## A068501.P3548335588076683500

`A067755(n+1)%A048161(n+1)`
-/

namespace A068501.P3548335588076683500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067755 (n + 1)) (A048161 (n + 1))

end

end A068501.P3548335588076683500

/-! ## A068501.P1360416600595196607

`A048161(n+1)%A178659(n+1)`
-/

namespace A068501.P1360416600595196607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048161 (n + 1)) (A178659 (n + 1))

end

end A068501.P1360416600595196607

/-! ## A068501.P14702595528141990658

`A334802(n+1)%A178659(n+1)`
-/

namespace A068501.P14702595528141990658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334802 (n + 1)) (A178659 (n + 1))

end

end A068501.P14702595528141990658

/-! ## A068501.P3027032945136104332

`A067755(n+1)/(2*A178659(n+1))`
-/

namespace A068501.P3027032945136104332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067755 (n + 1) : ℚ) / (2 * A178659 (n + 1) : ℚ)

end

end A068501.P3027032945136104332

/-! ## A068501.P16763859098122304337

`(p?[A281575(n+1)]-1)/2`
-/

namespace A068501.P16763859098122304337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A068501.P16763859098122304337

/-! ## A068501.P1667109051786462618

`(p?[A172438(n+1)]-1)/2`
-/

namespace A068501.P1667109051786462618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A068501.P1667109051786462618

/-! ## A068501.P14192868109002359011

`(p?[A002731(n+1)]-1)/2`
-/

namespace A068501.P14192868109002359011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A068501.P14192868109002359011

/-! ## A068501.P17751999667052731144

`floor(p?[2*A027861(n+1)+1]/2)`
-/

namespace A068501.P17751999667052731144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027861 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A068501.P17751999667052731144

/-! ## A068501.P12743133910257000492

`∩[A005097(n+1), A027861(n+1)]`
-/

namespace A068501.P12743133910257000492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068501.P12743133910257000492

/-! ## A068501.P15801522144215035859

`∩[A027861(n+1), A102781(n+1)]`
-/

namespace A068501.P15801522144215035859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068501.P15801522144215035859

/-! ## A068501.P12442088239626406529

`A014682(A048161(n+1)-1)`
-/

namespace A068501.P12442088239626406529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A048161 (n + 1) - 1).toNat

end

end A068501.P12442088239626406529

/-! ## A068501.P13041634606417532782

`filter[A027861(n+1), A101264(#)]`
-/

namespace A068501.P13041634606417532782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A068501.P13041634606417532782

/-! ## A068501.P16569407795378343762

`A000010(sqrt(A263951(n+1)))/2`
-/

namespace A068501.P16569407795378343762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.roundAway (Real.sqrt (A263951 (n + 1) : ℝ))).toNat : ℚ) / 2

end

end A068501.P16569407795378343762

/-! ## A068501.P470233219440392408

`(A085712(n+1)-2)/4`
-/

namespace A068501.P470233219440392408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085712 (n + 1) - 2 : ℚ) / 4

end

end A068501.P470233219440392408

/-!
# A068503: Highest power of 3 dividing prime(n)-1.

The programs for A068503, the canonical program `A068503.P5489899540009911754` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068503 has offset 1).

The definition of A068503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068503.P5489899540009911754

`3^A099584(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068503

/-- `3^A099584(n+1)` -/
def P5489899540009911754.Spec : Prop :=
  ∀ n, P5489899540009911754.a n = (A068503 (n + 1) : ℚ)

end A068503

/-! ## A068503.P3379050388197528168

`3^val(A000040(n+1)-1, 3)`
-/

namespace A068503.P3379050388197528168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A000040 (n + 1) - 1).toNat 3

end

end A068503.P3379050388197528168

namespace A068503

/-- `3^val(A000040(n+1)-1, 3)` -/
def P3379050388197528168.Spec : Prop :=
  ∀ n, (P3379050388197528168.a n : ℤ) = A068503 (n + 1)

end A068503

/-! ## A068503.P5225768558122981427

`A038500(A006093(n+1))`
-/

namespace A068503.P5225768558122981427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A006093 (n + 1)).toNat

end

end A068503.P5225768558122981427

namespace A068503

/-- `A038500(A006093(n+1))` -/
def P5225768558122981427.Spec : Prop :=
  ∀ n, P5225768558122981427.a n = A068503 (n + 1)

end A068503

/-! ## A068503.P16839060943672971701

`gcd(A037167(n+1), A098355(n))`
-/

namespace A068503.P16839060943672971701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037167 (n + 1)) (A098355 n)

end

end A068503.P16839060943672971701

namespace A068503

/-- `gcd(A037167(n+1), A098355(n))` -/
def P16839060943672971701.Spec : Prop :=
  ∀ n, (P16839060943672971701.a n : ℤ) = A068503 (n + 1)

end A068503

/-! ## A068503.P1108055318829089874

`A006093(n+1)/A099585(n+1)`
-/

namespace A068503.P1108055318829089874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A099585 (n + 1) : ℚ)

end

end A068503.P1108055318829089874

namespace A068503

/-- `A006093(n+1)/A099585(n+1)` -/
def P1108055318829089874.Spec : Prop :=
  ∀ n, P1108055318829089874.a n = (A068503 (n + 1) : ℚ)

end A068503

/-! ## A068503.P13674048803507449808

`gcd(A072404(n+1), A102781(n+1))`
-/

namespace A068503.P13674048803507449808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072404 (n + 1)) (A102781 (n + 1))

end

end A068503.P13674048803507449808

namespace A068503

/-- `gcd(A072404(n+1), A102781(n+1))` -/
def P13674048803507449808.Spec : Prop :=
  ∀ n, (P13674048803507449808.a n : ℤ) = A068503 (n + 1)

end A068503

/-! ## A068503.P9930795242980126636

`gcd(A072404(n+1)², A156037(n+1))`
-/

namespace A068503.P9930795242980126636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072404 (n + 1) ^ 2) (A156037 (n + 1))

end

end A068503.P9930795242980126636

namespace A068503

/-- `gcd(A072404(n+1)², A156037(n+1))` -/
def P9930795242980126636.Spec : Prop :=
  ∀ n, (P9930795242980126636.a n : ℤ) = A068503 (n + 1)

end A068503

/-! ## A068503.P11195111529217206897

`3^val(record[A000010(n+1)], 3)`
-/

namespace A068503.P11195111529217206897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A068503.P11195111529217206897

namespace A068503

/-- `3^val(record[A000010(n+1)], 3)` -/
def P11195111529217206897.Spec : Prop :=
  ∀ n, (P11195111529217206897.a n : ℤ) = A068503 (n + 1)

end A068503

/-! ## A068503.P8316674715929500558

`3^val(eq[1, A001222(n+1)], 3)`
-/

namespace A068503.P8316674715929500558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A068503.P8316674715929500558

namespace A068503

/-- `3^val(eq[1, A001222(n+1)], 3)` -/
def P8316674715929500558.Spec : Prop :=
  ∀ n, (P8316674715929500558.a n : ℤ) = A068503 (n + 1)

end A068503

/-! ## A068503.P8788542649405940725

`3^val(eq[1, A054024(n+1)], 3)`
-/

namespace A068503.P8788542649405940725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A068503.P8788542649405940725

namespace A068503

/-- `3^val(eq[1, A054024(n+1)], 3)` -/
def P8788542649405940725.Spec : Prop :=
  ∀ n, (P8788542649405940725.a n : ℤ) = A068503 (n + 1)

end A068503

/-! ## A068503.P2743062412703659935

`3^val(eq[2, A000005(n+1)], 3)`
-/

namespace A068503.P2743062412703659935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A068503.P2743062412703659935

namespace A068503

/-- `3^val(eq[2, A000005(n+1)], 3)` -/
def P2743062412703659935.Spec : Prop :=
  ∀ n, (P2743062412703659935.a n : ℤ) = A068503 (n + 1)

end A068503

/-! ## A068503.P1100592621063323213

`3^val(lt[A000005(n+2), 3]+1, 3)`
-/

namespace A068503.P1100592621063323213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 3

end

end A068503.P1100592621063323213

namespace A068503

/-- `3^val(lt[A000005(n+2), 3]+1, 3)` -/
def P1100592621063323213.Spec : Prop :=
  ∀ n, (P1100592621063323213.a n : ℤ) = A068503 (n + 1)

end A068503

/-! ## A068503.P18017318226428154707

`A038500(A057023(n+1))`
-/

namespace A068503.P18017318226428154707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A057023 (n + 1)).toNat

end

end A068503.P18017318226428154707

namespace A068503

/-- `A038500(A057023(n+1))` -/
def P18017318226428154707.Spec : Prop :=
  ∀ n, P18017318226428154707.a n = A068503 (n + 1)

end A068503

/-! ## A068503.P8877127946733915524

`A038500(A130290(n+1))`
-/

namespace A068503.P8877127946733915524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A130290 (n + 1)).toNat

end

end A068503.P8877127946733915524

namespace A068503

/-- `A038500(A130290(n+1))` -/
def P8877127946733915524.Spec : Prop :=
  ∀ n, P8877127946733915524.a n = A068503 (n + 1)

end A068503

/-! ## A068503.P17243280004838797790

`A038500(A236965(n+1))`
-/

namespace A068503.P17243280004838797790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A236965 (n + 1)).toNat

end

end A068503.P17243280004838797790

namespace A068503

/-- `A038500(A236965(n+1))` -/
def P17243280004838797790.Spec : Prop :=
  ∀ n, P17243280004838797790.a n = A068503 (n + 1)

end A068503

/-! ## A068503.P13105993194288325225

`3^val(record[A014963(n+2)-1], 3)`
-/

namespace A068503.P13105993194288325225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A068503.P13105993194288325225

namespace A068503

/-- `3^val(record[A014963(n+2)-1], 3)` -/
def P13105993194288325225.Spec : Prop :=
  ∀ n, (P13105993194288325225.a n : ℤ) = A068503 (n + 1)

end A068503

/-! ## A068503.P11261635765424732894

`A038500(A156037(n+1))`
-/

namespace A068503.P11261635765424732894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A156037 (n + 1)).toNat

end

end A068503.P11261635765424732894

namespace A068503

/-- `A038500(A156037(n+1))` -/
def P11261635765424732894.Spec : Prop :=
  ∀ n, P11261635765424732894.a n = A068503 (n + 1)

end A068503

/-! ## A068503.P946047274325134232

`A038500(record[A000010(n+1)])`
-/

namespace A068503.P946047274325134232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068503.P946047274325134232

namespace A068503

/-- `A038500(record[A000010(n+1)])` -/
def P946047274325134232.Spec : Prop :=
  ∀ n, P946047274325134232.a n = A068503 (n + 1)

end A068503

/-! ## A068503.P5264617951466468169

`A038500(A000040(n+1)-1)`
-/

namespace A068503.P5264617951466468169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A000040 (n + 1) - 1).toNat

end

end A068503.P5264617951466468169

namespace A068503

/-- `A038500(A000040(n+1)-1)` -/
def P5264617951466468169.Spec : Prop :=
  ∀ n, P5264617951466468169.a n = A068503 (n + 1)

end A068503

/-! ## A068503.P17962952289339787914

`A038500(A037168(n+1))`
-/

namespace A068503.P17962952289339787914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A037168 (n + 1)).toNat

end

end A068503.P17962952289339787914

namespace A068503

/-- `A038500(A037168(n+1))` -/
def P17962952289339787914.Spec : Prop :=
  ∀ n, P17962952289339787914.a n = A068503 (n + 1)

end A068503

/-!
# A068504: Highest power of 2 dividing prime(n)+1.

The programs for A068504, the canonical program `A068504.P594807329965681907` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068504 has offset 1).

The definition of A068504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068504.P594807329965681907

`2^A023512(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068504

/-- `2^A023512(n+1)` -/
def P594807329965681907.Spec : Prop :=
  ∀ n, P594807329965681907.a n = (A068504 (n + 1) : ℚ)

end A068504

/-! ## A068504.P13511861065098161541

`2^val(A000040(n+1)+1, 2)`
-/

namespace A068504.P13511861065098161541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A000040 (n + 1) + 1).toNat 2

end

end A068504.P13511861065098161541

namespace A068504

/-- `2^val(A000040(n+1)+1, 2)` -/
def P13511861065098161541.Spec : Prop :=
  ∀ n, (P13511861065098161541.a n : ℤ) = A068504 (n + 1)

end A068504

/-! ## A068504.P8734437992034950824

`A006519(A008864(n+1))`
-/

namespace A068504.P8734437992034950824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A008864 (n + 1)).toNat

end

end A068504.P8734437992034950824

namespace A068504

/-- `A006519(A008864(n+1))` -/
def P8734437992034950824.Spec : Prop :=
  ∀ n, P8734437992034950824.a n = A068504 (n + 1)

end A068504

/-! ## A068504.P923085911875061131

`2^(A227471(n+1)-1)`
-/

namespace A068504.P923085911875061131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A227471 (n + 1) - 1 : ℤ)

end

end A068504.P923085911875061131

namespace A068504

/-- `2^(A227471(n+1)-1)` -/
def P923085911875061131.Spec : Prop :=
  ∀ n, P923085911875061131.a n = (A068504 (n + 1) : ℚ)

end A068504

/-! ## A068504.P556370154019494773

`2^val(Δ[A007504(n)]+1, 2)`
-/

namespace A068504.P556370154019494773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (f1 (n + 1) - f1 n + 1).toNat 2

end

end A068504.P556370154019494773

namespace A068504

/-- `2^val(Δ[A007504(n)]+1, 2)` -/
def P556370154019494773.Spec : Prop :=
  ∀ n, (P556370154019494773.a n : ℤ) = A068504 (n + 1)

end A068504

/-! ## A068504.P15832184040214576642

`2^val(A030078(n+1)+1, 2)`
-/

namespace A068504.P15832184040214576642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A030078 (n + 1) + 1).toNat 2

end

end A068504.P15832184040214576642

namespace A068504

/-- `2^val(A030078(n+1)+1, 2)` -/
def P15832184040214576642.Spec : Prop :=
  ∀ n, (P15832184040214576642.a n : ℤ) = A068504 (n + 1)

end A068504

/-! ## A068504.P14839394982955065345

`A000079(A023512(n+1))`
-/

namespace A068504.P14839394982955065345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A023512 (n + 1)).toNat

end

end A068504.P14839394982955065345

namespace A068504

/-- `A000079(A023512(n+1))` -/
def P14839394982955065345.Spec : Prop :=
  ∀ n, P14839394982955065345.a n = A068504 (n + 1)

end A068504

/-! ## A068504.P13214085668583108349

`A011782(A227471(n+1))`
-/

namespace A068504.P13214085668583108349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A227471 (n + 1)).toNat

end

end A068504.P13214085668583108349

namespace A068504

/-- `A011782(A227471(n+1))` -/
def P13214085668583108349.Spec : Prop :=
  ∀ n, P13214085668583108349.a n = A068504 (n + 1)

end A068504

/-! ## A068504.P15793168538784239717

`A000010(2^A227471(n+1))`
-/

namespace A068504.P15793168538784239717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A227471 (n + 1) : ℤ))).toNat

end

end A068504.P15793168538784239717

namespace A068504

/-- `A000010(2^A227471(n+1))` -/
def P15793168538784239717.Spec : Prop :=
  ∀ n, P15793168538784239717.a n = A068504 (n + 1)

end A068504

/-! ## A068504.P1970439517323862779

`gcd(A140513(n), A247159(n+1))`
-/

namespace A068504.P1970439517323862779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140513 n) (A247159 (n + 1))

end

end A068504.P1970439517323862779

namespace A068504

/-- `gcd(A140513(n), A247159(n+1))` -/
def P1970439517323862779.Spec : Prop :=
  ∀ n, (P1970439517323862779.a n : ℤ) = A068504 (n + 1)

end A068504

/-! ## A068504.P7024901270100840524

`A000079(val(A000040(n+1)+1, 2))`
-/

namespace A068504.P7024901270100840524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000040 (n + 1) + 1).toNat 2)

end

end A068504.P7024901270100840524

namespace A068504

/-- `A000079(val(A000040(n+1)+1, 2))` -/
def P7024901270100840524.Spec : Prop :=
  ∀ n, P7024901270100840524.a n = A068504 (n + 1)

end A068504

/-! ## A068504.P8258995875824835313

`A000079(val(A006093(n+1)+2, 2))`
-/

namespace A068504.P8258995875824835313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A006093 (n + 1) + 2).toNat 2)

end

end A068504.P8258995875824835313

namespace A068504

/-- `A000079(val(A006093(n+1)+2, 2))` -/
def P8258995875824835313.Spec : Prop :=
  ∀ n, P8258995875824835313.a n = A068504 (n + 1)

end A068504

/-! ## A068504.P6934759638828101119

`A008864(n+1)/A057024(n+1)`
-/

namespace A068504.P6934759638828101119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) : ℚ) / (A057024 (n + 1) : ℚ)

end

end A068504.P6934759638828101119

namespace A068504

/-- `A008864(n+1)/A057024(n+1)` -/
def P6934759638828101119.Spec : Prop :=
  ∀ n, P6934759638828101119.a n = (A068504 (n + 1) : ℚ)

end A068504

/-! ## A068504.P2978213966837729037

`A028815(n+1)/A057024(n+1)`
-/

namespace A068504.P2978213966837729037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028815 (n + 1) : ℚ) / (A057024 (n + 1) : ℚ)

end

end A068504.P2978213966837729037

namespace A068504

/-- `A028815(n+1)/A057024(n+1)` -/
def P2978213966837729037.Spec : Prop :=
  ∀ n, P2978213966837729037.a n = (A068504 (n + 1) : ℚ)

end A068504

/-! ## A068504.P7196264532675395905

`gcd(A098354(n+1), A131993(n+1))`
-/

namespace A068504.P7196264532675395905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098354 (n + 1)) (A131993 (n + 1))

end

end A068504.P7196264532675395905

namespace A068504

/-- `gcd(A098354(n+1), A131993(n+1))` -/
def P7196264532675395905.Spec : Prop :=
  ∀ n, (P7196264532675395905.a n : ℤ) = A068504 (n + 1)

end A068504

/-! ## A068504.P6501715559839567702

`gcd(2-A036689(n+1), A029930(n)²)`
-/

namespace A068504.P6501715559839567702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A036689 (n + 1)) (A029930 n ^ 2)

end

end A068504.P6501715559839567702

namespace A068504

/-- `gcd(2-A036689(n+1), A029930(n)²)` -/
def P6501715559839567702.Spec : Prop :=
  ∀ n, (P6501715559839567702.a n : ℤ) = A068504 (n + 1)

end A068504

/-! ## A068504.P3433654534145299930

`floor(A175216(n+1)/A057024(n+1))`
-/

namespace A068504.P3433654534145299930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175216 (n + 1) : ℚ) / (A057024 (n + 1) : ℚ)⌋

end

end A068504.P3433654534145299930

namespace A068504

/-- `floor(A175216(n+1)/A057024(n+1))` -/
def P3433654534145299930.Spec : Prop :=
  ∀ n, P3433654534145299930.a n = A068504 (n + 1)

end A068504

/-! ## A068504.P17810929061102256384

`(A006093(n+1)+2)/A057024(n+1)`
-/

namespace A068504.P17810929061102256384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 2 : ℚ) / (A057024 (n + 1) : ℚ)

end

end A068504.P17810929061102256384

namespace A068504

/-- `(A006093(n+1)+2)/A057024(n+1)` -/
def P17810929061102256384.Spec : Prop :=
  ∀ n, P17810929061102256384.a n = (A068504 (n + 1) : ℚ)

end A068504

/-! ## A068504.P17669373465942889523

`A000079(A091282(n+1)-A023506(n+1))`
-/

namespace A068504.P17669373465942889523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A091282 (n + 1) - A023506 (n + 1)).toNat

end

end A068504.P17669373465942889523

namespace A068504

/-- `A000079(A091282(n+1)-A023506(n+1))` -/
def P17669373465942889523.Spec : Prop :=
  ∀ n, P17669373465942889523.a n = A068504 (n + 1)

end A068504

/-! ## A068504.P10190103880395779398

`A299763(n+2)/A057024(n+1)`
-/

namespace A068504.P10190103880395779398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299763 (n + 2) : ℚ) / (A057024 (n + 1) : ℚ)

end

end A068504.P10190103880395779398

namespace A068504

/-- `A299763(n+2)/A057024(n+1)` -/
def P10190103880395779398.Spec : Prop :=
  ∀ n, P10190103880395779398.a n = (A068504 (n + 1) : ℚ)

end A068504

/-!
# A068506: Least highly composite number whose prime decomposition starts with 2^n.

The programs for A068506, there is no canonical definition to state claims against.
-/

/-! ## A068506.P3026764770318798464

`A022404(2^n)`
-/

namespace A068506.P3026764770318798464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022404 (2 ^ n)

end

end A068506.P3026764770318798464

/-! ## A068506.P6015586220975332405

`record[A022404(A001316(n))]`
-/

namespace A068506.P6015586220975332405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022404 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068506.P6015586220975332405

/-! ## A068506.P1256513219981869801

`record[A022404(A059268(n))]`
-/

namespace A068506.P1256513219981869801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022404 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068506.P1256513219981869801

/-! ## A068506.P14159985809222838794

`record[A022404(A080100(n))]`
-/

namespace A068506.P14159985809222838794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022404 (A080100 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068506.P14159985809222838794

/-!
# A068507: Highly composite numbers sandwiched between twin primes.

The programs for A068507, there is no canonical definition to state claims against.
-/

/-! ## A068507.P1725435406011343294

`A002182(A321995(n+1))`
-/

namespace A068507.P1725435406011343294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A321995 (n + 1)).toNat

end

end A068507.P1725435406011343294

/-! ## A068507.P1308565142883082512

`A002182(eq[2, A339385(n+2)]+2)`
-/

namespace A068507.P1308565142883082512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A068507.P1308565142883082512

/-! ## A068507.P8904554817387606235

`A135372(eq[2, A339385(n+2)]+2)-1`
-/

namespace A068507.P8904554817387606235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) - 1

end

end A068507.P8904554817387606235

/-! ## A068507.P1074865417133289736

`A002182(∩[A306587(n+1), A306588(n+1)])`
-/

namespace A068507.P1074865417133289736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306588 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A068507.P1074865417133289736

/-! ## A068507.P14424195760979448615

`A135372(∩[A306587(n+1), A306588(n+1)])-1`
-/

namespace A068507.P14424195760979448615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306588 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A068507.P14424195760979448615

/-!
# A068508: a(n) = round((a(n-1) + a(n-2))/a(n-3)) starting with a(1)=a(2)=a(3)=1.

The programs for A068508, the canonical program `A068508.P7181404711369062843` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068508 has offset 1).

The definition of A068508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((a(n-1)+a(n-2))/a(n-3))` (program `A068508.P7181404711369062843`, by `A068508.P7181404711369062843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068508.P3179458411436260450

`a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=4, a(7)=3`
-/

namespace A068508.P3179458411436260450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 5, 4, 3] fun n a =>
  a (n - 8)

end

end A068508.P3179458411436260450

namespace A068508

/-- `a(n-8)` -/
def P3179458411436260450.Spec : Prop :=
  ∀ n, (P3179458411436260450.a n : ℤ) = A068508 (n + 1)

end A068508

/-! ## A068508.P7181404711369062843

`round((a(n-1)+a(n-2))/a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068508

/-- `round((a(n-1)+a(n-2))/a(n-3))` -/
def P7181404711369062843.Spec : Prop :=
  ∀ n, P7181404711369062843.a n = A068508 (n + 1)

theorem P7181404711369062843.correct : P7181404711369062843.Spec := by
  intro n
  simp only [A068508, Nat.add_sub_cancel]

end A068508

/-!
# A068510: a(n) = lcm(1,...,n) - (product of primes <= n).

The programs for A068510, the canonical program `A068510.P11721145475733360069` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068510 has offset 1).

The definition of A068510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068510.P14185459743815564638

`∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]-A034386(n+1)`
-/

namespace A068510.P14185459743815564638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A034386 (n + 1)

end

end A068510.P14185459743815564638

namespace A068510

/-- `∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]-A034386(n+1)` -/
def P14185459743815564638.Spec : Prop :=
  ∀ n, P14185459743815564638.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P3039736753922412869

`A003418(n+1)-A034386(n+1)`
-/

namespace A068510.P3039736753922412869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - A034386 (n + 1)

end

end A068510.P3039736753922412869

namespace A068510

/-- `A003418(n+1)-A034386(n+1)` -/
def P3039736753922412869.Spec : Prop :=
  ∀ n, P3039736753922412869.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P11721145475733360069

`A059794(n+1)-A068511(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068510

/-- `A059794(n+1)-A068511(n+1)` -/
def P11721145475733360069.Spec : Prop :=
  ∀ n, P11721145475733360069.a n = A068510 (n + 1)

theorem P11721145475733360069.correct : P11721145475733360069.Spec := by
  intro n
  simp only [A068510, Nat.add_sub_cancel]

end A068510

/-! ## A068510.P5182013443136388217

`∏[A014963(n+1)]-A034386(n+1)`
-/

namespace A068510.P5182013443136388217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A034386 (n + 1)

end

end A068510.P5182013443136388217

namespace A068510

/-- `∏[A014963(n+1)]-A034386(n+1)` -/
def P5182013443136388217.Spec : Prop :=
  ∀ n, P5182013443136388217.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P4651216162232732507

`A075059(n+1)-(A034386(n+1)+1)`
-/

namespace A068510.P4651216162232732507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (n + 1) - (A034386 (n + 1) + 1)

end

end A068510.P4651216162232732507

namespace A068510

/-- `A075059(n+1)-(A034386(n+1)+1)` -/
def P4651216162232732507.Spec : Prop :=
  ∀ n, P4651216162232732507.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P12521767601915645677

`A003418(n+1)-A002110(A000720(n+1))`
-/

namespace A068510.P12521767601915645677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - A002110 (A000720 (n + 1)).toNat

end

end A068510.P12521767601915645677

namespace A068510

/-- `A003418(n+1)-A002110(A000720(n+1))` -/
def P12521767601915645677.Spec : Prop :=
  ∀ n, P12521767601915645677.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P16777064244286134117

`A387027(n+1)-(A034386(n+1)+A002944(n+1))`
-/

namespace A068510.P16777064244286134117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387027 (n + 1) - (A034386 (n + 1) + A002944 (n + 1))

end

end A068510.P16777064244286134117

namespace A068510

/-- `A387027(n+1)-(A034386(n+1)+A002944(n+1))` -/
def P16777064244286134117.Spec : Prop :=
  ∀ n, P16777064244286134117.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P17395823183783583690

`A003418(n+1)-A048633(n+1)*A056610(n+1)`
-/

namespace A068510.P17395823183783583690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - A048633 (n + 1) * A056610 (n + 1)

end

end A068510.P17395823183783583690

namespace A068510

/-- `A003418(n+1)-A048633(n+1)*A056610(n+1)` -/
def P17395823183783583690.Spec : Prop :=
  ∀ n, P17395823183783583690.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P9122049097895035933

`A034386(n+1)*A045948(n+1)-A034386(n+1)`
-/

namespace A068510.P9122049097895035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1) * A045948 (n + 1) - A034386 (n + 1)

end

end A068510.P9122049097895035933

namespace A068510

/-- `A034386(n+1)*A045948(n+1)-A034386(n+1)` -/
def P9122049097895035933.Spec : Prop :=
  ∀ n, P9122049097895035933.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P8167254920725130368

`A003418(n+1)-A056606(n+1)*A056609(n+1)`
-/

namespace A068510.P8167254920725130368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - A056606 (n + 1) * A056609 (n + 1)

end

end A068510.P8167254920725130368

namespace A068510

/-- `A003418(n+1)-A056606(n+1)*A056609(n+1)` -/
def P8167254920725130368.Spec : Prop :=
  ∀ n, P8167254920725130368.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P9304264456700800523

`A056040(n+1)*A180000(n+1)-A034386(n+1)`
-/

namespace A068510.P9304264456700800523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 1) * A180000 (n + 1) - A034386 (n + 1)

end

end A068510.P9304264456700800523

namespace A068510

/-- `A056040(n+1)*A180000(n+1)-A034386(n+1)` -/
def P9304264456700800523.Spec : Prop :=
  ∀ n, P9304264456700800523.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P2130221719720126039

`A003418(n+1)-A163641(n+1)*A163644(n+1)`
-/

namespace A068510.P2130221719720126039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - A163641 (n + 1) * A163644 (n + 1)

end

end A068510.P2130221719720126039

namespace A068510

/-- `A003418(n+1)-A163641(n+1)*A163644(n+1)` -/
def P2130221719720126039.Spec : Prop :=
  ∀ n, P2130221719720126039.a n = A068510 (n + 1)

end A068510

/-! ## A068510.P14770432074617438220

`A003418(n+1)-A003418(n+1)/A045948(n+1)`
-/

namespace A068510.P14770432074617438220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) - (A003418 (n + 1) : ℚ) / (A045948 (n + 1) : ℚ)

end

end A068510.P14770432074617438220

namespace A068510

/-- `A003418(n+1)-A003418(n+1)/A045948(n+1)` -/
def P14770432074617438220.Spec : Prop :=
  ∀ n, P14770432074617438220.a n = (A068510 (n + 1) : ℚ)

end A068510

/-!
# A068511: (Product of primes <= n) - 2^(n-1).

The programs for A068511, the canonical program `A068511.P1850682731934278667` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068511 has offset 1).

The definition of A068511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068511.P1850682731934278667

`∏[∏{d}[∑{p}[n+1, C(#, n)], #]]-2^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068511

/-- `∏[∏{d}[∑{p}[n+1, C(#, n)], #]]-2^n` -/
def P1850682731934278667.Spec : Prop :=
  ∀ n, P1850682731934278667.a n = A068511 (n + 1)

theorem P1850682731934278667.correct : P1850682731934278667.Spec := by
  intro n
  simp only [A068511, Nat.add_sub_cancel]

end A068511

/-! ## A068511.P15180534588783966593

`∏[∏{p}[C(∑{p}[n+1, #], n), #]]-2^n`
-/

namespace A068511.P15180534588783966593
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f3 n), p) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A068511.P15180534588783966593

namespace A068511

/-- `∏[∏{p}[C(∑{p}[n+1, #], n), #]]-2^n` -/
def P15180534588783966593.Spec : Prop :=
  ∀ n, P15180534588783966593.a n = A068511 (n + 1)

end A068511

/-! ## A068511.P9585215218459090019

`∏[n*char[p?[xor(3, n)]-1]+1]-2^n`
-/

namespace A068511.P9585215218459090019
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A068511.P9585215218459090019

namespace A068511

/-- `∏[n*char[p?[xor(3, n)]-1]+1]-2^n` -/
def P9585215218459090019.Spec : Prop :=
  ∀ n, P9585215218459090019.a n = A068511 (n + 1)

end A068511

/-! ## A068511.P13697821291167099931

`∏[n*char[p?[∏{p}[n, #]]-1]+1]-2^n`
-/

namespace A068511.P13697821291167099931
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A068511.P13697821291167099931

namespace A068511

/-- `∏[n*char[p?[∏{p}[n, #]]-1]+1]-2^n` -/
def P13697821291167099931.Spec : Prop :=
  ∀ n, P13697821291167099931.a n = A068511 (n + 1)

end A068511

/-! ## A068511.P17394817411795881320

`A034386(n+1)-2^n`
-/

namespace A068511.P17394817411795881320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1) - (2 ^ n : ℤ)

end

end A068511.P17394817411795881320

namespace A068511

/-- `A034386(n+1)-2^n` -/
def P17394817411795881320.Spec : Prop :=
  ∀ n, P17394817411795881320.a n = A068511 (n + 1)

end A068511

/-! ## A068511.P18304642349721712173

`2^n-A319880(n+1)`
-/

namespace A068511.P18304642349721712173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A319880 (n + 1)

end

end A068511.P18304642349721712173

namespace A068511

/-- `2^n-A319880(n+1)` -/
def P18304642349721712173.Spec : Prop :=
  ∀ n, P18304642349721712173.a n = A068511 (n + 1)

end A068511

/-! ## A068511.P14409158010787220468

`A002110(A000720(n+1))-A000079(n)`
-/

namespace A068511.P14409158010787220468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000720 (n + 1)).toNat - A000079 n

end

end A068511.P14409158010787220468

namespace A068511

/-- `A002110(A000720(n+1))-A000079(n)` -/
def P14409158010787220468.Spec : Prop :=
  ∀ n, P14409158010787220468.a n = A068511 (n + 1)

end A068511

/-! ## A068511.P1629071620822323881

`A002110(A230980(n+1))-A011782(n+1)`
-/

namespace A068511.P1629071620822323881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A230980 (n + 1)).toNat - A011782 (n + 1)

end

end A068511.P1629071620822323881

namespace A068511

/-- `A002110(A230980(n+1))-A011782(n+1)` -/
def P1629071620822323881.Spec : Prop :=
  ∀ n, P1629071620822323881.a n = A068511 (n + 1)

end A068511

/-! ## A068511.P14861047245227654345

`A059794(n+1)-A068510(n+1)`
-/

namespace A068511.P14861047245227654345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059794 (n + 1) - A068510 (n + 1)

end

end A068511.P14861047245227654345

namespace A068511

/-- `A059794(n+1)-A068510(n+1)` -/
def P14861047245227654345.Spec : Prop :=
  ∀ n, P14861047245227654345.a n = A068511 (n + 1)

theorem P14861047245227654345.correct : P14861047245227654345.Spec := by
  intro n
  simp only [A068511, Nat.add_sub_cancel, A068511.P14861047245227654345.a, A068511.P1850682731934278667.f3, A068511.P1850682731934278667.f2, A068511.P1850682731934278667.f1, A068511.P1850682731934278667.a, A059794, A059794.P9663854077218559482.f2, A059794.P9663854077218559482.f1, A059794.P9663854077218559482.a, A068510, A068510.P11721145475733360069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068511

/-!
# A068512: Numerators of arithmetic derivative of n/2: A003415(n)/2 - n/4; denominators: A010685.

The programs for A068512, the canonical program `A068512.P3368672071714361374` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068512 has offset 1).

The definition of A068512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068512.P13867952192309711914

`A168036(2*(n+1))/C(4, n%2)`
-/

namespace A068512.P13867952192309711914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 (2 * (n + 1)) : ℚ) / (Nat.choose 4 (n % 2) : ℚ)

end

end A068512.P13867952192309711914

namespace A068512

/-- `A168036(2*(n+1))/C(4, n%2)` -/
def P13867952192309711914.Spec : Prop :=
  ∀ n, P13867952192309711914.a n = (A068512 (n + 1) : ℚ)

end A068512

/-! ## A068512.P8203731598203294188

`A168036(2*(n+1))/A010685(n)`
-/

namespace A068512.P8203731598203294188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 (2 * (n + 1)) : ℚ) / (A010685 n : ℚ)

end

end A068512.P8203731598203294188

namespace A068512

/-- `A168036(2*(n+1))/A010685(n)` -/
def P8203731598203294188.Spec : Prop :=
  ∀ n, P8203731598203294188.a n = (A068512 (n + 1) : ℚ)

end A068512

/-! ## A068512.P6407899996358943198

`A168036(2*(n+1))/A000034(n)²`
-/

namespace A068512.P6407899996358943198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 (2 * (n + 1)) : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A068512.P6407899996358943198

namespace A068512

/-- `A168036(2*(n+1))/A000034(n)²` -/
def P6407899996358943198.Spec : Prop :=
  ∀ n, P6407899996358943198.a n = (A068512 (n + 1) : ℚ)

end A068512

/-! ## A068512.P5219035127290123753

`A168036(A004277(n+1))/4^(n%2)`
-/

namespace A068512.P5219035127290123753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 (A004277 (n + 1)).toNat : ℚ) / (4 ^ (n % 2) : ℚ)

end

end A068512.P5219035127290123753

namespace A068512

/-- `A168036(A004277(n+1))/4^(n%2)` -/
def P5219035127290123753.Spec : Prop :=
  ∀ n, P5219035127290123753.a n = (A068512 (n + 1) : ℚ)

end A068512

/-! ## A068512.P3368672071714361374

`ceil(A168036(A103517(n))/A000034(n)²)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068512

/-- `ceil(A168036(A103517(n))/A000034(n)²)` -/
def P3368672071714361374.Spec : Prop :=
  ∀ n, P3368672071714361374.a n = A068512 (n + 1)

theorem P3368672071714361374.correct : P3368672071714361374.Spec := by
  intro n
  simp only [A068512, Nat.add_sub_cancel]

end A068512

/-! ## A068512.P18050873741406513407

`A168036(A004277(n+1))/Δ[A032766(n)]²`
-/

namespace A068512.P18050873741406513407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 (A004277 (n + 1)).toNat : ℚ) / ((f1 (n + 1) - f1 n) ^ 2 : ℚ)

end

end A068512.P18050873741406513407

namespace A068512

/-- `A168036(A004277(n+1))/Δ[A032766(n)]²` -/
def P18050873741406513407.Spec : Prop :=
  ∀ n, P18050873741406513407.a n = (A068512 (n + 1) : ℚ)

end A068512

/-!
# A068513: a(0) = 15; for n > 0, a(n) is the smallest triangular number which is a (proper) multiple of a(n-1).

The programs for A068513, there is no canonical definition to state claims against.
-/

/-! ## A068513.P5860254182314714746

`A068859(n+3)/8`
-/

namespace A068513.P5860254182314714746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068859 (n + 3) : ℚ) / 8

end

end A068513.P5860254182314714746

/-!
# A068514: Numbers of the form (2i)! (2j)! / i! j! (i + j)!.

The programs for A068514, there is no canonical definition to state claims against.
-/

/-! ## A068514.P9701337555359222748

`lt[0, char[A068555(n)]]`
-/

namespace A068514.P9701337555359222748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068555 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068514.P9701337555359222748

/-! ## A068514.P11613743350065664750

`eq[1, char[A182411(n)]]`
-/

namespace A068514.P11613743350065664750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182411 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068514.P11613743350065664750

/-! ## A068514.P16973830405023998719

`record[A091256(or(1, n))]`
-/

namespace A068514.P16973830405023998719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091256 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068514.P16973830405023998719

/-! ## A068514.P17536445612690377690

`record[A091256(Δ[n²])]`
-/

namespace A068514.P17536445612690377690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091256 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068514.P17536445612690377690

/-! ## A068514.P7603228586163571088

`record[A091256(2*n+1)%comp[∑[n]]]`
-/

namespace A068514.P7603228586163571088
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091256 (2 * n + 1)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068514.P7603228586163571088

/-!
# A068515: A measure of how close the square root of 2 is to rational numbers.

The programs for A068515, the canonical program `A068515.P9142961320750906030` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068515 has offset 1).

The definition of A068515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068515.P9142961320750906030

`round(1/(sqrt(2)-round(sqrt(2)*(n+1))/(n+1)))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068515

/-- `round(1/(sqrt(2)-round(sqrt(2)*(n+1))/(n+1)))` -/
def P9142961320750906030.Spec : Prop :=
  ∀ n, P9142961320750906030.a n = A068515 (n + 1)

theorem P9142961320750906030.correct : P9142961320750906030.Spec := by
  intro n
  simp only [A068515, Nat.add_sub_cancel]

end A068515

/-!
# A068518: The sequence S(n,-3,1,1), where S(n,k,t,q) is defined by Sum_{j=0..n} binomial(n+q,j)^t * B(j,k) and B(j,k) is the j-th k-poly-Bernoulli number.

The programs for A068518, the canonical program `A068518.P10058222252401921738` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068518 has offset 0).

The definition of A068518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068518.P10058222252401921738

`∑[A027651(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068518

/-- `∑[A027651(n)]` -/
def P10058222252401921738.Spec : Prop :=
  ∀ n, P10058222252401921738.a n = A068518 n

theorem P10058222252401921738.correct : P10058222252401921738.Spec := by
  intro n
  simp only [A068518]

end A068518

/-! ## A068518.P16330284866492825192

`∑[A091348(n)+A091347(n+1)]`
-/

namespace A068518.P16330284866492825192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091348 n + A091347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068518.P16330284866492825192

namespace A068518

/-- `∑[A091348(n)+A091347(n+1)]` -/
def P16330284866492825192.Spec : Prop :=
  ∀ n, P16330284866492825192.a n = A068518 n

theorem P16330284866492825192.correct : P16330284866492825192.Spec := by
  intro n
  simp only [A068518, Nat.add_sub_cancel, A068518.P16330284866492825192.f1, A068518.P16330284866492825192.a, A068518.P10058222252401921738.f1, A068518.P10058222252401921738.a, A027651, A027651.P8499432226660582693.a, A091347, A091347.P9446160002068488150.a, A091348, A091348.P15282774004803408470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068518

/-! ## A068518.P16925615906610220148

`∑[A099594(∑[n+4]+10)]`
-/

namespace A068518.P16925615906610220148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (∑ j ∈ Finset.range (n + 1), f2 j + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068518.P16925615906610220148

namespace A068518

/-- `∑[A099594(∑[n+4]+10)]` -/
def P16925615906610220148.Spec : Prop :=
  ∀ n, P16925615906610220148.a n = A068518 n

end A068518

/-!
# A068519: If n is prime then a(n) = n, else a(n) = prime(n).

The programs for A068519, the canonical program `A068519.P12357754682876032502` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068519 has offset 1).

The definition of A068519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068519.P7373627187496054530

`A000040((A049084(n+1)+n)%(n+1)+1)`
-/

namespace A068519.P7373627187496054530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A049084 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A068519.P7373627187496054530

namespace A068519

/-- `A000040((A049084(n+1)+n)%(n+1)+1)` -/
def P7373627187496054530.Spec : Prop :=
  ∀ n, P7373627187496054530.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P12357754682876032502

`A014689(A005451(n+1))+A014684(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068519

/-- `A014689(A005451(n+1))+A014684(n+1)` -/
def P12357754682876032502.Spec : Prop :=
  ∀ n, P12357754682876032502.a n = A068519 (n + 1)

theorem P12357754682876032502.correct : P12357754682876032502.Spec := by
  intro n
  simp only [A068519, Nat.add_sub_cancel]

end A068519

/-! ## A068519.P6318929045743722579

`A000040(A049084(n+1)+(n+1)%A151800(n))`
-/

namespace A068519.P6318929045743722579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049084 (n + 1) + Int.tmod (n + 1 : ℤ) (A151800 n)).toNat

end

end A068519.P6318929045743722579

namespace A068519

/-- `A000040(A049084(n+1)+(n+1)%A151800(n))` -/
def P6318929045743722579.Spec : Prop :=
  ∀ n, P6318929045743722579.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P13126751652778348564

`A061397(n+1)+A000040(n+1)*A005171(n+1)`
-/

namespace A068519.P13126751652778348564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + A000040 (n + 1) * A005171 (n + 1)

end

end A068519.P13126751652778348564

namespace A068519

/-- `A061397(n+1)+A000040(n+1)*A005171(n+1)` -/
def P13126751652778348564.Spec : Prop :=
  ∀ n, P13126751652778348564.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P7790104759734770860

`A166260(n+1)+gcd(A000040(n+1), A166260(n+1))`
-/

namespace A068519.P7790104759734770860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (n + 1) + (Int.gcd (A000040 (n + 1)) (A166260 (n + 1)) : ℤ)

end

end A068519.P7790104759734770860

namespace A068519

/-- `A166260(n+1)+gcd(A000040(n+1), A166260(n+1))` -/
def P7790104759734770860.Spec : Prop :=
  ∀ n, P7790104759734770860.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P9178355697047952394

`A000040(A165634(A064427(n+1)))`
-/

namespace A068519.P9178355697047952394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A165634 (A064427 (n + 1)).toNat).toNat

end

end A068519.P9178355697047952394

namespace A068519

/-- `A000040(A165634(A064427(n+1)))` -/
def P9178355697047952394.Spec : Prop :=
  ∀ n, P9178355697047952394.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P8642609560270410523

`A089026(A010051(n+1)+A000040(n+1))*A089026(n+1)`
-/

namespace A068519.P8642609560270410523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A010051 (n + 1) + A000040 (n + 1)).toNat * A089026 (n + 1)

end

end A068519.P8642609560270410523

namespace A068519

/-- `A089026(A010051(n+1)+A000040(n+1))*A089026(n+1)` -/
def P8642609560270410523.Spec : Prop :=
  ∀ n, P8642609560270410523.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P3034282930834229394

`A328661(A236676(n+1))`
-/

namespace A068519.P3034282930834229394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328661 (A236676 (n + 1)).toNat

end

end A068519.P3034282930834229394

namespace A068519

/-- `A328661(A236676(n+1))` -/
def P3034282930834229394.Spec : Prop :=
  ∀ n, P3034282930834229394.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P17105033584529180759

`A020639(A000040(n+1)*A089026(n+1))`
-/

namespace A068519.P17105033584529180759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) * A089026 (n + 1)).toNat

end

end A068519.P17105033584529180759

namespace A068519

/-- `A020639(A000040(n+1)*A089026(n+1))` -/
def P17105033584529180759.Spec : Prop :=
  ∀ n, P17105033584529180759.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P17869299502342077260

`A020639(A008578(n+2)*A089026(n+1))`
-/

namespace A068519.P17869299502342077260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008578 (n + 2) * A089026 (n + 1)).toNat

end

end A068519.P17869299502342077260

namespace A068519

/-- `A020639(A008578(n+2)*A089026(n+1))` -/
def P17869299502342077260.Spec : Prop :=
  ∀ n, P17869299502342077260.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P6530767435446026341

`A020639(lcm(A000040(n+1), A089026(n+1)))`
-/

namespace A068519.P6530767435446026341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A000040 (n + 1)) (A089026 (n + 1)))

end

end A068519.P6530767435446026341

namespace A068519

/-- `A020639(lcm(A000040(n+1), A089026(n+1)))` -/
def P6530767435446026341.Spec : Prop :=
  ∀ n, P6530767435446026341.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P1238975015450639788

`A020639(sqrt(A001248(n+1))*A089026(n+1))`
-/

namespace A068519.P1238975015450639788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) * (A089026 (n + 1) : ℝ))).toNat

end

end A068519.P1238975015450639788

namespace A068519

/-- `A020639(sqrt(A001248(n+1))*A089026(n+1))` -/
def P1238975015450639788.Spec : Prop :=
  ∀ n, P1238975015450639788.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P17434853699405366281

`A020639(record[A006530(n+2)]*A089026(n+1))`
-/

namespace A068519.P17434853699405366281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A089026 (n + 1)).toNat

end

end A068519.P17434853699405366281

namespace A068519

/-- `A020639(record[A006530(n+2)]*A089026(n+1))` -/
def P17434853699405366281.Spec : Prop :=
  ∀ n, P17434853699405366281.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P14557056865453537913

`A020639(record[A020639(n+2)]*A089026(n+1))`
-/

namespace A068519.P14557056865453537913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A089026 (n + 1)).toNat

end

end A068519.P14557056865453537913

namespace A068519

/-- `A020639(record[A020639(n+2)]*A089026(n+1))` -/
def P14557056865453537913.Spec : Prop :=
  ∀ n, P14557056865453537913.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P6435196487035711854

`A020639((A040976(n+1)+2)*A089026(n+1))`
-/

namespace A068519.P6435196487035711854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((A040976 (n + 1) + 2) * A089026 (n + 1)).toNat

end

end A068519.P6435196487035711854

namespace A068519

/-- `A020639((A040976(n+1)+2)*A089026(n+1))` -/
def P6435196487035711854.Spec : Prop :=
  ∀ n, P6435196487035711854.a n = A068519 (n + 1)

end A068519

/-! ## A068519.P1216630289735706134

`A020639((comp[A018252(n+1)-1]+1)*A089026(n+1))`
-/

namespace A068519.P1216630289735706134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) * A089026 (n + 1)).toNat

end

end A068519.P1216630289735706134

namespace A068519

/-- `A020639((comp[A018252(n+1)-1]+1)*A089026(n+1))` -/
def P1216630289735706134.Spec : Prop :=
  ∀ n, P1216630289735706134.a n = A068519 (n + 1)

end A068519

/-!
# A068520: Numbers n which can be transformed into a true arithmetic statement by inserting zero or more parentheses and elementary arithmetic operators ((, ), +, -, *, /) and one equality sign (=) as the rightmost insertion into the decimal representation of n.

The programs for A068520, there is no canonical definition to state claims against.
-/

/-! ## A068520.P13439234662345373995

`A338214(A076564(n+1)%A105676(n+1))`
-/

namespace A068520.P13439234662345373995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338214 (Int.tmod (A076564 (n + 1)) (A105676 (n + 1))).toNat

end

end A068520.P13439234662345373995

/-! ## A068520.P10571250523015047967

`A185293(A230871(n))+A109303(n+1)`
-/

namespace A068520.P10571250523015047967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185293 (A230871 n).toNat + A109303 (n + 1)

end

end A068520.P10571250523015047967

/-!
# A068522: In base 10 notation replace digits of n with their squared values (Version 2).

The programs for A068522, there is no canonical definition to state claims against.
-/

/-! ## A068522.P16498630029079742043

`A235049(n)+a(A235049(n))+n` with `a(0)=0`
-/

namespace A068522.P16498630029079742043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A235049 n + (a (A235049 n).toNat + (n : ℤ))

end

end A068522.P16498630029079742043

/-! ## A068522.P817588840038230593

`A057147(n)-A088116(A051022(n))`
-/

namespace A068522.P817588840038230593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n - A088116 (A051022 n).toNat

end

end A068522.P817588840038230593

/-! ## A068522.P1511481437349455771

`A003132(eq[A007953(n), A076309(n)])`
-/

namespace A068522.P1511481437349455771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068522.P1511481437349455771

/-!
# A068524: a(1) = 2; for n > 1, a(n) = largest prime not exceeding a(1) + ... + a(n-1).

The programs for A068524, there is no canonical definition to state claims against.
-/

/-! ## A068524.P1641197791778132528

`A075058(1-(1-n)%(n+1))`
-/

namespace A068524.P1641197791778132528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A068524.P1641197791778132528

/-! ## A068524.P14541792212415056498

`A075058(A028310(n))`
-/

namespace A068524.P14541792212415056498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (A028310 n).toNat

end

end A068524.P14541792212415056498

/-! ## A068524.P10049724111438660605

`A075058(A000007(n)+n)`
-/

namespace A068524.P10049724111438660605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (A000007 n + (n : ℤ)).toNat

end

end A068524.P10049724111438660605

/-! ## A068524.P3080454233771153451

`A054977(n)*A075058(n)`
-/

namespace A068524.P3080454233771153451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A075058 n

end

end A068524.P3080454233771153451

/-! ## A068524.P4622692349052639926

`A075058(A289207(n+1)+1)`
-/

namespace A068524.P4622692349052639926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (A289207 (n + 1) + 1).toNat

end

end A068524.P4622692349052639926

/-! ## A068524.P5251546067956510050

`A075058(A054977(n)-1+n)`
-/

namespace A068524.P5251546067956510050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (A054977 n - 1 + (n : ℤ)).toNat

end

end A068524.P5251546067956510050

/-! ## A068524.P8771115784425492820

`A075058(n-(1-A054977(n)))`
-/

namespace A068524.P8771115784425492820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 ((n : ℤ) - (1 - A054977 n)).toNat

end

end A068524.P8771115784425492820

/-! ## A068524.P15502080268401308592

`A075058(A000038(n)/2+n)`
-/

namespace A068524.P15502080268401308592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2 + (n : ℚ))).toNat

end

end A068524.P15502080268401308592

/-! ## A068524.P6639331206414986014

`A075058(or(n, A000038(n)/2))`
-/

namespace A068524.P6639331206414986014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2))).toNat

end

end A068524.P6639331206414986014

/-! ## A068524.P5431196382625132012

`A075058(n^A070750(n+1)²)`
-/

namespace A068524.P5431196382625132012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ))).toNat

end

end A068524.P5431196382625132012

/-! ## A068524.P5429931534340208833

`A075058(n^A070750(n+1)^2)`
-/

namespace A068524.P5429931534340208833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ))).toNat

end

end A068524.P5429931534340208833

/-! ## A068524.P8228438107575184682

`A075058(n)+1-A070750(n+1)²`
-/

namespace A068524.P8228438107575184682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 n + (1 - A070750 (n + 1) ^ 2)

end

end A068524.P8228438107575184682

/-! ## A068524.P6104952274079573315

`A075058(n)+A000035(A007920(2*n+1))`
-/

namespace A068524.P6104952274079573315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 n + A000035 (A007920 (2 * n + 1)).toNat

end

end A068524.P6104952274079573315

/-! ## A068524.P14230674643631617750

`A075058(A000007(n)*A075058(n))*A075058(n)`
-/

namespace A068524.P14230674643631617750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (A000007 n * A075058 n).toNat * A075058 n

end

end A068524.P14230674643631617750

/-! ## A068524.P3761786254893602196

`A075058(n)+and(1, A003945(2*n))`
-/

namespace A068524.P3761786254893602196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 n + Int.land 1 (A003945 (2 * n))

end

end A068524.P3761786254893602196

/-! ## A068524.P16751374134750080552

`A075058(n)+and(A003945(n)², A075058(n))`
-/

namespace A068524.P16751374134750080552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 n + Int.land (A003945 n ^ 2) (A075058 n)

end

end A068524.P16751374134750080552

/-! ## A068524.P14999421608341898251

`A075058(n)*A132749(A132749(∑[n]))`
-/

namespace A068524.P14999421608341898251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 n * A132749 (A132749 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A068524.P14999421608341898251

/-! ## A068524.P16532062227000907938

`A075058(A259361(n²)+1)`
-/

namespace A068524.P16532062227000907938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (A259361 (n ^ 2) + 1).toNat

end

end A068524.P16532062227000907938

/-!
# A068525: Smallest k-almost prime between twin primes (for k >= 2).

The programs for A068525, there is no canonical definition to state claims against.
-/

/-! ## A068525.P16578496336683199066

`A164291(n+2)+A097479(n)!`
-/

namespace A068525.P16578496336683199066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164291 (n + 2) + (Nat.factorial (A097479 n).toNat : ℤ)

end

end A068525.P16578496336683199066

/-! ## A068525.P13933005723326757406

`A164291(n+2)+A243832(n)!`
-/

namespace A068525.P13933005723326757406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164291 (n + 2) + (Nat.factorial (A243832 n).toNat : ℤ)

end

end A068525.P13933005723326757406

/-! ## A068525.P6632556308523539430

`A164291(n+2)+A057427(A114736(n))`
-/

namespace A068525.P6632556308523539430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164291 (n + 2) + A057427 (A114736 n).toNat

end

end A068525.P6632556308523539430

/-! ## A068525.P5489352559913029933

`A325567(A052955(n))+A164291(n+2)`
-/

namespace A068525.P5489352559913029933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (A052955 n).toNat + A164291 (n + 2)

end

end A068525.P5489352559913029933

/-! ## A068525.P8776604876339588568

`A164291(n+2)+A057427(A061783(n+1))`
-/

namespace A068525.P8776604876339588568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164291 (n + 2) + A057427 (A061783 (n + 1)).toNat

end

end A068525.P8776604876339588568

/-!
# A068526: Numbers n such that prime(n+1)-prime(n) = tau(n) = A000005(n).

The programs for A068526, the canonical program `A068526.P8816428566634844446` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068526 has offset 1).

The definition of A068526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068526.P8816428566634844446

`eq[A000005(n+1), A001223(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068526

/-- `eq[A000005(n+1), A001223(n+1)]+1` -/
def P8816428566634844446.Spec : Prop :=
  ∀ n, (P8816428566634844446.a n : ℤ) = A068526 (n + 1)

theorem P8816428566634844446.correct : P8816428566634844446.Spec := by
  intro n
  simp only [A068526, Nat.add_sub_cancel]

end A068526

/-! ## A068526.P2845836721812612289

`eq[0, A161911(n+1)]+1`
-/

namespace A068526.P2845836721812612289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068526.P2845836721812612289

namespace A068526

/-- `eq[0, A161911(n+1)]+1` -/
def P2845836721812612289.Spec : Prop :=
  ∀ n, (P2845836721812612289.a n : ℤ) = A068526 (n + 1)

end A068526

/-! ## A068526.P13564354716047112654

`eq[∏{e}[n, #+1], A054541(n+1)]`
-/

namespace A068526.P13564354716047112654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A068526.P13564354716047112654

namespace A068526

/-- `eq[∏{e}[n, #+1], A054541(n+1)]` -/
def P13564354716047112654.Spec : Prop :=
  ∀ n, (P13564354716047112654.a n : ℤ) = A068526 (n + 1)

end A068526

/-! ## A068526.P12537106932393155043

`eq[A032741(n)+1, A054541(n+1)]`
-/

namespace A068526.P12537106932393155043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068526.P12537106932393155043

namespace A068526

/-- `eq[A032741(n)+1, A054541(n+1)]` -/
def P12537106932393155043.Spec : Prop :=
  ∀ n, (P12537106932393155043.a n : ℤ) = A068526 (n + 1)

end A068526

/-! ## A068526.P11640048026213869904

`eq[A032741(n)+2, A076368(n+1)]`
-/

namespace A068526.P11640048026213869904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068526.P11640048026213869904

namespace A068526

/-- `eq[A032741(n)+2, A076368(n+1)]` -/
def P11640048026213869904.Spec : Prop :=
  ∀ n, (P11640048026213869904.a n : ℤ) = A068526 (n + 1)

end A068526

/-! ## A068526.P7319816940231038570

`eq[A000005(n+1), Δ[A000040(n+1)]]+1`
-/

namespace A068526.P7319816940231038570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068526.P7319816940231038570

namespace A068526

/-- `eq[A000005(n+1), Δ[A000040(n+1)]]+1` -/
def P7319816940231038570.Spec : Prop :=
  ∀ n, (P7319816940231038570.a n : ℤ) = A068526 (n + 1)

theorem P7319816940231038570.correct : P7319816940231038570.Spec := by
  intro n
  simp only [A068526, Nat.add_sub_cancel, A068526.P7319816940231038570.f1, A068526.P7319816940231038570.f3, A068526.P7319816940231038570.f2, A068526.P7319816940231038570.a, A068526.P8816428566634844446.f1, A068526.P8816428566634844446.f2, A068526.P8816428566634844446.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068526

/-! ## A068526.P713225338573798722

`eq[A000005(n+1), Δ[A008864(n+1)]]+1`
-/

namespace A068526.P713225338573798722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068526.P713225338573798722

namespace A068526

/-- `eq[A000005(n+1), Δ[A008864(n+1)]]+1` -/
def P713225338573798722.Spec : Prop :=
  ∀ n, (P713225338573798722.a n : ℤ) = A068526 (n + 1)

theorem P713225338573798722.correct : P713225338573798722.Spec := by
  intro n
  simp only [A068526, Nat.add_sub_cancel, A068526.P713225338573798722.f1, A068526.P713225338573798722.f3, A068526.P713225338573798722.f2, A068526.P713225338573798722.a, A068526.P8816428566634844446.f1, A068526.P8816428566634844446.f2, A068526.P8816428566634844446.a, A000005, A000005.P16091521709108585461.a, A001223, A001223.P5034056745985311719.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068526

/-! ## A068526.P6214872425222118080

`eq[A000005(n+1), Δ[A040976(n+1)]]+1`
-/

namespace A068526.P6214872425222118080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068526.P6214872425222118080

namespace A068526

/-- `eq[A000005(n+1), Δ[A040976(n+1)]]+1` -/
def P6214872425222118080.Spec : Prop :=
  ∀ n, (P6214872425222118080.a n : ℤ) = A068526 (n + 1)

theorem P6214872425222118080.correct : P6214872425222118080.Spec := by
  intro n
  simp only [A068526, Nat.add_sub_cancel, A068526.P6214872425222118080.f1, A068526.P6214872425222118080.f3, A068526.P6214872425222118080.f2, A068526.P6214872425222118080.a, A068526.P8816428566634844446.f1, A068526.P8816428566634844446.f2, A068526.P8816428566634844446.a, A000005, A000005.P16091521709108585461.a, A001223, A001223.P5034056745985311719.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068526

/-! ## A068526.P6491679820978043361

`eq[A046933(n+1)+1, A000005(n+1)]+1`
-/

namespace A068526.P6491679820978043361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068526.P6491679820978043361

namespace A068526

/-- `eq[A046933(n+1)+1, A000005(n+1)]+1` -/
def P6491679820978043361.Spec : Prop :=
  ∀ n, (P6491679820978043361.a n : ℤ) = A068526 (n + 1)

end A068526

/-! ## A068526.P10173944481886863141

`eq[n+1-A049820(n+1), Δ[A000040(n+1)]]+1`
-/

namespace A068526.P10173944481886863141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049820 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068526.P10173944481886863141

namespace A068526

/-- `eq[n+1-A049820(n+1), Δ[A000040(n+1)]]+1` -/
def P10173944481886863141.Spec : Prop :=
  ∀ n, (P10173944481886863141.a n : ℤ) = A068526 (n + 1)

theorem P10173944481886863141.correct : P10173944481886863141.Spec := by
  intro n
  simp only [A068526, Nat.add_sub_cancel, A068526.P10173944481886863141.f1, A068526.P10173944481886863141.f3, A068526.P10173944481886863141.f2, A068526.P10173944481886863141.a, A068526.P8816428566634844446.f1, A068526.P8816428566634844446.f2, A068526.P8816428566634844446.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A049820, A049820.P9428372222244335888.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068526

/-! ## A068526.P13244144900943948248

`eq[4*Δ[(A028815(n+1)-3)/4], A000005(n+1)]+1`
-/

namespace A068526.P13244144900943948248
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028815 (n + 1) - 3 : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n + 1

end

end A068526.P13244144900943948248

namespace A068526

/-- `eq[4*Δ[(A028815(n+1)-3)/4], A000005(n+1)]+1` -/
def P13244144900943948248.Spec : Prop :=
  ∀ n, (P13244144900943948248.a n : ℤ) = A068526 (n + 1)

end A068526

/-! ## A068526.P8079356940588536250

`eq[A000005(A028310(n)), A054541(n+1)]`
-/

namespace A068526.P8079356940588536250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068526.P8079356940588536250

namespace A068526

/-- `eq[A000005(A028310(n)), A054541(n+1)]` -/
def P8079356940588536250.Spec : Prop :=
  ∀ n, (P8079356940588536250.a n : ℤ) = A068526 (n + 1)

end A068526

/-! ## A068526.P6782312807586503124

`eq[A000040(n+1)+A000005(n+1), A065091(n+1)]+1`
-/

namespace A068526.P6782312807586503124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068526.P6782312807586503124

namespace A068526

/-- `eq[A000040(n+1)+A000005(n+1), A065091(n+1)]+1` -/
def P6782312807586503124.Spec : Prop :=
  ∀ n, (P6782312807586503124.a n : ℤ) = A068526 (n + 1)

end A068526

/-! ## A068526.P14787609062690073332

`eq[A032741(n), A347237(A008578(n+1))]`
-/

namespace A068526.P14787609062690073332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347237 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068526.P14787609062690073332

namespace A068526

/-- `eq[A032741(n), A347237(A008578(n+1))]` -/
def P14787609062690073332.Spec : Prop :=
  ∀ n, (P14787609062690073332.a n : ℤ) = A068526 (n + 1)

end A068526

/-!
# A068527: Difference between smallest square >= n and n.

The programs for A068527, the canonical program `A068527.P16594543609173014161` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068527 has offset 0).

The definition of A068527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068527.P16594543609173014161

`ceil(sqrt(n))²-n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068527

/-- `ceil(sqrt(n))²-n` -/
def P16594543609173014161.Spec : Prop :=
  ∀ n, P16594543609173014161.a n = A068527 n

theorem P16594543609173014161.correct : P16594543609173014161.Spec := by
  intro n
  simp only [A068527]

end A068527

/-! ## A068527.P9316136911457307854

`(ceil(sqrt(n))²+1)%(n+1)`
-/

namespace A068527.P9316136911457307854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈Real.sqrt (n : ℝ)⌉ ^ 2 + 1) (n + 1 : ℤ)

end

end A068527.P9316136911457307854

namespace A068527

/-- `(ceil(sqrt(n))²+1)%(n+1)` -/
def P9316136911457307854.Spec : Prop :=
  ∀ n, P9316136911457307854.a n = A068527 n

end A068527

/-! ## A068527.P1499393418939817717

`abs(n-floor(-sqrt(n))²%(2*n+1))`
-/

namespace A068527.P1499393418939817717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - Int.tmod (⌊-Real.sqrt (n : ℝ)⌋ ^ 2) (2 * n + 1 : ℤ)|

end

end A068527.P1499393418939817717

namespace A068527

/-- `abs(n-floor(-sqrt(n))²%(2*n+1))` -/
def P1499393418939817717.Spec : Prop :=
  ∀ n, P1499393418939817717.a n = A068527 n

end A068527

/-! ## A068527.P15480201904409478403

`abs(n-A048761(n))`
-/

namespace A068527.P15480201904409478403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A048761 n|

end

end A068527.P15480201904409478403

namespace A068527

/-- `abs(n-A048761(n))` -/
def P15480201904409478403.Spec : Prop :=
  ∀ n, P15480201904409478403.a n = A068527 n

end A068527

/-! ## A068527.P3259463042319861146

`∑[A143051(n)-n]`
-/

namespace A068527.P3259463042319861146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068527.P3259463042319861146

namespace A068527

/-- `∑[A143051(n)-n]` -/
def P3259463042319861146.Spec : Prop :=
  ∀ n, P3259463042319861146.a n = A068527 n

end A068527

/-! ## A068527.P16225275176024015199

`abs(A000290(ceil(sqrt(n)))-n)`
-/

namespace A068527.P16225275176024015199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 ⌈Real.sqrt (n : ℝ)⌉.toNat - (n : ℤ)|

end

end A068527.P16225275176024015199

namespace A068527

/-- `abs(A000290(ceil(sqrt(n)))-n)` -/
def P16225275176024015199.Spec : Prop :=
  ∀ n, P16225275176024015199.a n = A068527 n

end A068527

/-! ## A068527.P13417251970766114547

`A053186(A020703(n+1))`
-/

namespace A068527.P13417251970766114547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A020703 (n + 1)).toNat

end

end A068527.P13417251970766114547

namespace A068527

/-- `A053186(A020703(n+1))` -/
def P13417251970766114547.Spec : Prop :=
  ∀ n, P13417251970766114547.a n = A068527 n

end A068527

/-! ## A068527.P1906935203804296310

`lcm(A080883(n), A397085(n))`
-/

namespace A068527.P1906935203804296310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080883 n) (A397085 n)

end

end A068527.P1906935203804296310

namespace A068527

/-- `lcm(A080883(n), A397085(n))` -/
def P1906935203804296310.Spec : Prop :=
  ∀ n, (P1906935203804296310.a n : ℤ) = A068527 n

end A068527

/-! ## A068527.P15063442714015309280

`A053186(A080883(n)+A048760(n))`
-/

namespace A068527.P15063442714015309280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A080883 n + A048760 n).toNat

end

end A068527.P15063442714015309280

namespace A068527

/-- `A053186(A080883(n)+A048760(n))` -/
def P15063442714015309280.Spec : Prop :=
  ∀ n, P15063442714015309280.a n = A068527 n

end A068527

/-! ## A068527.P17139756932022209132

`A053186(A048761(n)-A053186(n))`
-/

namespace A068527.P17139756932022209132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A048761 n - A053186 n).toNat

end

end A068527.P17139756932022209132

namespace A068527

/-- `A053186(A048761(n)-A053186(n))` -/
def P17139756932022209132.Spec : Prop :=
  ∀ n, P17139756932022209132.a n = A068527 n

end A068527

/-! ## A068527.P8699287763061521486

`A338829(A338829(A048761(n)-n))`
-/

namespace A068527.P8699287763061521486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338829 (A338829 (A048761 n - (n : ℤ)).toNat).toNat

end

end A068527.P8699287763061521486

namespace A068527

/-- `A338829(A338829(A048761(n)-n))` -/
def P8699287763061521486.Spec : Prop :=
  ∀ n, P8699287763061521486.a n = A068527 n

end A068527

/-! ## A068527.P15621197922493060528

`A338830(A338830(A048761(n)-n))`
-/

namespace A068527.P15621197922493060528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338830 (A338830 (A048761 n - (n : ℤ)).toNat).toNat

end

end A068527.P15621197922493060528

namespace A068527

/-- `A338830(A338830(A048761(n)-n))` -/
def P15621197922493060528.Spec : Prop :=
  ∀ n, P15621197922493060528.a n = A068527 n

end A068527

/-! ## A068527.P9534982661820428716

`A053186(∑[A010052(n)]²-A053186(n))`
-/

namespace A068527.P9534982661820428716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A053186 n).toNat

end

end A068527.P9534982661820428716

namespace A068527

/-- `A053186(∑[A010052(n)]²-A053186(n))` -/
def P9534982661820428716.Spec : Prop :=
  ∀ n, P9534982661820428716.a n = A068527 n

end A068527

/-! ## A068527.P16569107427797779997

`A053186(A003059(n+1)²-A053186(n))`
-/

namespace A068527.P16569107427797779997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A003059 (n + 1) ^ 2 - A053186 n).toNat

end

end A068527.P16569107427797779997

namespace A068527

/-- `A053186(A003059(n+1)²-A053186(n))` -/
def P16569107427797779997.Spec : Prop :=
  ∀ n, P16569107427797779997.a n = A068527 n

end A068527

/-! ## A068527.P4086788086577050267

`A249142(A103505(n))`
-/

namespace A068527.P4086788086577050267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249142 (A103505 n).toNat

end

end A068527.P4086788086577050267

namespace A068527

/-- `A249142(A103505(n))` -/
def P4086788086577050267.Spec : Prop :=
  ∀ n, P4086788086577050267.a n = A068527 n

end A068527

/-! ## A068527.P9297854378444787393

`A249142(A233583(n+1)²-n)`
-/

namespace A068527.P9297854378444787393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249142 (A233583 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A068527.P9297854378444787393

namespace A068527

/-- `A249142(A233583(n+1)²-n)` -/
def P9297854378444787393.Spec : Prop :=
  ∀ n, P9297854378444787393.a n = A068527 n

end A068527

/-! ## A068527.P9852838178444011003

`A249142(n²+1+n)`
-/

namespace A068527.P9852838178444011003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249142 (n ^ 2 + 1 + n)

end

end A068527.P9852838178444011003

namespace A068527

/-- `A249142(n²+1+n)` -/
def P9852838178444011003.Spec : Prop :=
  ∀ n, P9852838178444011003.a n = A068527 n

end A068527

/-! ## A068527.P9313216559765189802

`A053615(A048761(n)+n²)`
-/

namespace A068527.P9313216559765189802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A048761 n + (n ^ 2 : ℤ)).toNat

end

end A068527.P9313216559765189802

namespace A068527

/-- `A053615(A048761(n)+n²)` -/
def P9313216559765189802.Spec : Prop :=
  ∀ n, P9313216559765189802.a n = A068527 n

end A068527

/-!
# A068528: Let N(2k) denote the numerator of B(2k), the 2k-th Bernoulli number, and D(2k) the denominator; sequence gives values of k such that gcd(N(2k),D(2k-2))=5.

The programs for A068528, there is no canonical definition to state claims against.
-/

/-! ## A068528.P16428879181133744726

`record[A017317(n)/A183017(A183134(n)+1)]+1`
-/

namespace A068528.P16428879181133744726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017317 n : ℚ) / (A183017 (A183134 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A068528.P16428879181133744726

/-!
# A068531: a(n) = (3^(2^n) - 1)/2^(n + 2).

The programs for A068531, the canonical program `A068531.P11524486685135021709` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068531 has offset 1).

The definition of A068531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068531.P11524486685135021709

`(3^2^(n+1)-1)/2^(n+3)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068531

/-- `(3^2^(n+1)-1)/2^(n+3)` -/
def P11524486685135021709.Spec : Prop :=
  ∀ n, P11524486685135021709.a n = (A068531 (n + 1) : ℚ)

end A068531

/-! ## A068531.P10912709375825558177

`ceil(3^2^n/2)*a(n-1)` with `a(0)=1`
-/

namespace A068531.P10912709375825558177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(3 ^ 2 ^ n : ℚ) / 2⌉ * a (n - 1)

end

end A068531.P10912709375825558177

namespace A068531

/-- `ceil(3^2^n/2)*a(n-1)` -/
def P10912709375825558177.Spec : Prop :=
  ∀ n, P10912709375825558177.a n = A068531 (n + 1)

end A068531

/-! ## A068531.P15906950765744171479

`a(n-1)+a(n-1)²*2^(n+1)` with `a(0)=1`
-/

namespace A068531.P15906950765744171479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) ^ 2 * 2 ^ (n + 1)

end

end A068531.P15906950765744171479

namespace A068531

/-- `a(n-1)+a(n-1)²*2^(n+1)` -/
def P15906950765744171479.Spec : Prop :=
  ∀ n, (P15906950765744171479.a n : ℤ) = A068531 (n + 1)

end A068531

/-!
# A068532: 

The programs for A068532, there is no canonical definition to state claims against.
-/

/-! ## A068532.P2515126266510400374

`A097421(n+1)/3`
-/

namespace A068532.P2515126266510400374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097421 (n + 1) : ℚ) / 3

end

end A068532.P2515126266510400374

/-! ## A068532.P15407536002512845372

`A218728(2^n)/2^n`
-/

namespace A068532.P15407536002512845372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218728 (2 ^ n) : ℚ) / (2 ^ n : ℚ)

end

end A068532.P15407536002512845372

/-!
# A068535: Numbers k such that 2^k mod k = 2^k mod k^2.

The programs for A068535, there is no canonical definition to state claims against.
-/

/-! ## A068535.P15147506270180569637

`∪[2^n, A125773(n+1)]`
-/

namespace A068535.P15147506270180569637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068535.P15147506270180569637

/-! ## A068535.P6044608274043281205

`∪[A125773(n+1), A000079(n)]`
-/

namespace A068535.P6044608274043281205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068535.P6044608274043281205

/-! ## A068535.P13781915150004703930

`∪[A125773(n+1), record[A122111(n+1)]]`
-/

namespace A068535.P13781915150004703930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125773 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068535.P13781915150004703930

/-! ## A068535.P3536055556537695902

`record[gcd(n+1, A128092(n+1)/(n+1))]`
-/

namespace A068535.P3536055556537695902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A128092 (n + 1) : ℚ) / (n + 1 : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068535.P3536055556537695902

/-! ## A068535.P15395202131369045124

`∩[A072011(n+1), A190896(n)]`
-/

namespace A068535.P15395202131369045124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190896 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068535.P15395202131369045124

/-!
# A068537: Numbers which can be written as the sum of 2 like powers (x^n + y^n; n>1 & x,y>0).

The programs for A068537, there is no canonical definition to state claims against.
-/

/-! ## A068537.P8584954918979484938

`eq[A070176(n), A136522(A034953(n+1))]`
-/

namespace A068537.P8584954918979484938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A034953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068537.P8584954918979484938

/-!
# A068538: 

The programs for A068538, there is no canonical definition to state claims against.
-/

/-! ## A068538.P3932574036333277663

`A000042(A046412(n+1))`
-/

namespace A068538.P3932574036333277663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A046412 (n + 1)).toNat

end

end A068538.P3932574036333277663

/-!
# A068544: Numbers k such that k*tau(k) > 2*prime(k).

The programs for A068544, the canonical program `A068544.P4052281466746777693` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068544 has offset 1).

The definition of A068544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1072 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068544.P4052281466746777693

`lt[2*A008578(n+1), A038040(A028310(n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068544

/-- `lt[2*A008578(n+1), A038040(A028310(n))]` -/
def P4052281466746777693.Spec : Prop :=
  ∀ n, (P4052281466746777693.a n : ℤ) = A068544 (n + 1)

theorem P4052281466746777693.correct : P4052281466746777693.Spec := by
  intro n
  simp only [A068544, Nat.add_sub_cancel]

end A068544

/-! ## A068544.P7947070441674759640

`lt[A038040(A000040(n+1)), A038040(n+1)]+1`
-/

namespace A068544.P7947070441674759640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068544.P7947070441674759640

namespace A068544

/-- `lt[A038040(A000040(n+1)), A038040(n+1)]+1` -/
def P7947070441674759640.Spec : Prop :=
  ∀ n, (P7947070441674759640.a n : ℤ) = A068544 (n + 1)

end A068544

/-! ## A068544.P1999050130518664352

`lt[A064728(n+2), A112471(A319410(n))]`
-/

namespace A068544.P1999050130518664352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112471 (A319410 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068544.P1999050130518664352

namespace A068544

/-- `lt[A064728(n+2), A112471(A319410(n))]` -/
def P1999050130518664352.Spec : Prop :=
  ∀ n, (P1999050130518664352.a n : ℤ) = A068544 (n + 1)

end A068544

/-! ## A068544.P16353205760286869359

`lt[A108917(3*n), A000670(A032741(n))]`
-/

namespace A068544.P16353205760286869359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068544.P16353205760286869359

namespace A068544

/-- `lt[A108917(3*n), A000670(A032741(n))]` -/
def P16353205760286869359.Spec : Prop :=
  ∀ n, (P16353205760286869359.a n : ℤ) = A068544 (n + 1)

end A068544

/-! ## A068544.P2169905437510487491

`lt[A166138(2*(n+1)), A080090(A032741(n))]`
-/

namespace A068544.P2169905437510487491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166138 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080090 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068544.P2169905437510487491

namespace A068544

/-- `lt[A166138(2*(n+1)), A080090(A032741(n))]` -/
def P2169905437510487491.Spec : Prop :=
  ∀ n, (P2169905437510487491.a n : ℤ) = A068544 (n + 1)

end A068544

/-!
# A068545: Numbers n such that n*tau(n)>3*prime(n).

The programs for A068545, there is no canonical definition to state claims against.
-/

/-! ## A068545.P11841411049768728690

`lt[n, A137911(A219208(n))]`
-/

namespace A068545.P11841411049768728690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137911 (A219208 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068545.P11841411049768728690

/-! ## A068545.P1454228440373648532

`lt[A008578(n+1), A000203(A033630(n))]`
-/

namespace A068545.P1454228440373648532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068545.P1454228440373648532

/-! ## A068545.P18093829942777313029

`lt[A014692(n+1), A000203(A033630(n))]`
-/

namespace A068545.P18093829942777313029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068545.P18093829942777313029

/-! ## A068545.P2551320797774405412

`lt[A112925(n+1), A000203(A033630(n))]`
-/

namespace A068545.P2551320797774405412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068545.P2551320797774405412

/-! ## A068545.P4327969126851462365

`lt[A198470(n+1), A000203(A033630(n))]`
-/

namespace A068545.P4327969126851462365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068545.P4327969126851462365

/-!
# A068548: Coefficients of (-x^(2n-6)) in Chebyshev polynomial of degree 2n.

The programs for A068548, the canonical program `A068548.P838591696525393222` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068548 has offset 1).

The definition of A068548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068548.P838591696525393222

`(n+1)*(2*(n+1)²+3*(n+1)-2)/12*4^(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068548

/-- `(n+1)*(2*(n+1)²+3*(n+1)-2)/12*4^(n+1)` -/
def P838591696525393222.Spec : Prop :=
  ∀ n, P838591696525393222.a n = (A068548 (n + 1) : ℚ)

end A068548

/-! ## A068548.P7950227769698489147

`A001794(2*n)`
-/

namespace A068548.P7950227769698489147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 (2 * n)

end

end A068548.P7950227769698489147

namespace A068548

/-- `A001794(2*n)` -/
def P7950227769698489147.Spec : Prop :=
  ∀ n, P7950227769698489147.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P8991309270170059548

`record[A001794(and(n, n+1))]`
-/

namespace A068548.P8991309270170059548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068548.P8991309270170059548

namespace A068548

/-- `record[A001794(and(n, n+1))]` -/
def P8991309270170059548.Spec : Prop :=
  ∀ n, P8991309270170059548.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P1137849424076531945

`record[A001794(n)/(-1)^n]`
-/

namespace A068548.P1137849424076531945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001794 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068548.P1137849424076531945

namespace A068548

/-- `record[A001794(n)/(-1)^n]` -/
def P1137849424076531945.Spec : Prop :=
  ∀ n, P1137849424076531945.a n = (A068548 (n + 1) : ℚ)

end A068548

/-! ## A068548.P16669825434245598258

`record[A001794(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A068548.P16669825434245598258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A001794 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068548.P16669825434245598258

namespace A068548

/-- `record[A001794(C(n, a(n-1)))]` -/
def P16669825434245598258.Spec : Prop :=
  ∀ n, P16669825434245598258.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P4469104539621396712

`record[gcd(A001794(n), A007814(n+1))]`
-/

namespace A068548.P4469104539621396712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001794 n) (A007814 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068548.P4469104539621396712

namespace A068548

/-- `record[gcd(A001794(n), A007814(n+1))]` -/
def P4469104539621396712.Spec : Prop :=
  ∀ n, (P4469104539621396712.a n : ℤ) = A068548 (n + 1)

end A068548

/-! ## A068548.P8955063778794750040

`A136530(2*n)+A085385(2*n)`
-/

namespace A068548.P8955063778794750040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136530 (2 * n) + A085385 (2 * n)

end

end A068548.P8955063778794750040

namespace A068548

/-- `A136530(2*n)+A085385(2*n)` -/
def P8955063778794750040.Spec : Prop :=
  ∀ n, P8955063778794750040.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P8990931906544683499

`record[A001794(n+1-A001511(n+1))]`
-/

namespace A068548.P8990931906544683499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 ((n + 1 : ℤ) - A001511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068548.P8990931906544683499

namespace A068548

/-- `record[A001794(n+1-A001511(n+1))]` -/
def P8990931906544683499.Spec : Prop :=
  ∀ n, P8990931906544683499.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P4448244702034597081

`2*A080930(2*n)-A001792(2*n)`
-/

namespace A068548.P4448244702034597081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080930 (2 * n) - A001792 (2 * n)

end

end A068548.P4448244702034597081

namespace A068548

/-- `2*A080930(2*n)-A001792(2*n)` -/
def P4448244702034597081.Spec : Prop :=
  ∀ n, P4448244702034597081.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P8661256255030839191

`lcm(gcd(4, (n+1)%3), A001794(A005843(n)))`
-/

namespace A068548.P8661256255030839191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 4 ((n + 1) % 3) : ℤ) (A001794 (A005843 n).toNat)

end

end A068548.P8661256255030839191

namespace A068548

/-- `lcm(gcd(4, (n+1)%3), A001794(A005843(n)))` -/
def P8661256255030839191.Spec : Prop :=
  ∀ n, (P8661256255030839191.a n : ℤ) = A068548 (n + 1)

end A068548

/-! ## A068548.P6014034205995642417

`A055585(2*n+1)-A001793(2*(n+1))`
-/

namespace A068548.P6014034205995642417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055585 (2 * n + 1) - A001793 (2 * (n + 1))

end

end A068548.P6014034205995642417

namespace A068548

/-- `A055585(2*n+1)-A001793(2*(n+1))` -/
def P6014034205995642417.Spec : Prop :=
  ∀ n, P6014034205995642417.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P15935578160932264552

`A049612(2*n+3)-A001793(2*n+3)`
-/

namespace A068548.P15935578160932264552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (2 * n + 3) - A001793 (2 * n + 3)

end

end A068548.P15935578160932264552

namespace A068548

/-- `A049612(2*n+3)-A001793(2*n+3)` -/
def P15935578160932264552.Spec : Prop :=
  ∀ n, P15935578160932264552.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P7863267980666828963

`A049612(2*n+1)+n*A049611(2*n+1)`
-/

namespace A068548.P7863267980666828963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (2 * n + 1) + (n : ℤ) * A049611 (2 * n + 1)

end

end A068548.P7863267980666828963

namespace A068548

/-- `A049612(2*n+1)+n*A049611(2*n+1)` -/
def P7863267980666828963.Spec : Prop :=
  ∀ n, P7863267980666828963.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P14064940238132233158

`A240434(2*n+1)/4`
-/

namespace A068548.P14064940238132233158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240434 (2 * n + 1) : ℚ) / 4

end

end A068548.P14064940238132233158

namespace A068548

/-- `A240434(2*n+1)/4` -/
def P14064940238132233158.Spec : Prop :=
  ∀ n, P14064940238132233158.a n = (A068548 (n + 1) : ℚ)

end A068548

/-! ## A068548.P4754667956880057894

`A082138(2*n+1)/2-A001792(2*n)`
-/

namespace A068548.P4754667956880057894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082138 (2 * n + 1) : ℚ) / 2 - (A001792 (2 * n) : ℚ)

end

end A068548.P4754667956880057894

namespace A068548

/-- `A082138(2*n+1)/2-A001792(2*n)` -/
def P4754667956880057894.Spec : Prop :=
  ∀ n, P4754667956880057894.a n = (A068548 (n + 1) : ℚ)

end A068548

/-! ## A068548.P13448564715421028096

`A014483(2*n)-n*A001788(2*n+1)`
-/

namespace A068548.P13448564715421028096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014483 (2 * n) - (n : ℤ) * A001788 (2 * n + 1)

end

end A068548.P13448564715421028096

namespace A068548

/-- `A014483(2*n)-n*A001788(2*n+1)` -/
def P13448564715421028096.Spec : Prop :=
  ∀ n, P13448564715421028096.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P18429790961714984323

`(A001789(2*n+3)+A001788(2*n+1))/2`
-/

namespace A068548.P18429790961714984323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (2 * n + 3) + A001788 (2 * n + 1) : ℚ) / 2

end

end A068548.P18429790961714984323

namespace A068548

/-- `(A001789(2*n+3)+A001788(2*n+1))/2` -/
def P18429790961714984323.Spec : Prop :=
  ∀ n, P18429790961714984323.a n = (A068548 (n + 1) : ℚ)

end A068548

/-! ## A068548.P5884726183520471690

`A087076(2*n+1)-n*A001788(2*n+1)`
-/

namespace A068548.P5884726183520471690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087076 (2 * n + 1) - (n : ℤ) * A001788 (2 * n + 1)

end

end A068548.P5884726183520471690

namespace A068548

/-- `A087076(2*n+1)-n*A001788(2*n+1)` -/
def P5884726183520471690.Spec : Prop :=
  ∀ n, P5884726183520471690.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P205409635952716382

`A001788(2*n+1)+A058645(2*n+1)-A085385(2*n+1)`
-/

namespace A068548.P205409635952716382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (2 * n + 1) + (A058645 (2 * n + 1) - A085385 (2 * n + 1))

end

end A068548.P205409635952716382

namespace A068548

/-- `A001788(2*n+1)+A058645(2*n+1)-A085385(2*n+1)` -/
def P205409635952716382.Spec : Prop :=
  ∀ n, P205409635952716382.a n = A068548 (n + 1)

end A068548

/-! ## A068548.P2153341001060680800

`A000292(n+1)*A001788(2*n+1)/A000217(n+1)`
-/

namespace A068548.P2153341001060680800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) * A001788 (2 * n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A068548.P2153341001060680800

namespace A068548

/-- `A000292(n+1)*A001788(2*n+1)/A000217(n+1)` -/
def P2153341001060680800.Spec : Prop :=
  ∀ n, P2153341001060680800.a n = (A068548 (n + 1) : ℚ)

end A068548

/-!
# A068549: Largest prime < sqrt(2n-4) - 1.

The programs for A068549, there is no canonical definition to state claims against.
-/

/-! ## A068549.P574508900301466356

`A056813(A001651(A128557(n+1))+4)`
-/

namespace A068549.P574508900301466356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A001651 (A128557 (n + 1)).toNat + 4).toNat

end

end A068549.P574508900301466356

/-! ## A068549.P3742758641470175092

`A111656(A249038(n+5)+A151933(2*n))`
-/

namespace A068549.P3742758641470175092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111656 (A249038 (n + 5) + A151933 (2 * n)).toNat

end

end A068549.P3742758641470175092

/-! ## A068549.P2756184766227526217

`A212300(A066835(n+2)+n)`
-/

namespace A068549.P2756184766227526217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212300 (A066835 (n + 2) + (n : ℤ)).toNat

end

end A068549.P2756184766227526217

/-! ## A068549.P7750281448120542989

`A049407(floor(log2(A318126(2*(n+2)))))`
-/

namespace A068549.P7750281448120542989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (Nat.log 2 (A318126 (2 * (n + 2))).toNat)

end

end A068549.P7750281448120542989

/-! ## A068549.P14308880530002657197

`A337637(A355670(2*n+1)-A242921(n))`
-/

namespace A068549.P14308880530002657197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337637 (A355670 (2 * n + 1) - A242921 n).toNat

end

end A068549.P14308880530002657197

/-!
# A068550: a(n) = lcm{1, ..., 2n} / binomial(2n, n).

The programs for A068550, the canonical program `A068550.P11016822675318453931` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068550 has offset 0).

The definition of A068550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068550.P12427670286968546979

`A180000(2*n)`
-/

namespace A068550.P12427670286968546979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 (2 * n)

end

end A068550.P12427670286968546979

namespace A068550

/-- `A180000(2*n)` -/
def P12427670286968546979.Spec : Prop :=
  ∀ n, P12427670286968546979.a n = A068550 n

end A068550

/-! ## A068550.P4724368145724918292

`A263673(2*n)`
-/

namespace A068550.P4724368145724918292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263673 (2 * n)

end

end A068550.P4724368145724918292

namespace A068550

/-- `A263673(2*n)` -/
def P4724368145724918292.Spec : Prop :=
  ∀ n, P4724368145724918292.a n = A068550 n

end A068550

/-! ## A068550.P5871926936878987032

`A099996(n)/A000984(n)`
-/

namespace A068550.P5871926936878987032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099996 n : ℚ) / (A000984 n : ℚ)

end

end A068550.P5871926936878987032

namespace A068550

/-- `A099996(n)/A000984(n)` -/
def P5871926936878987032.Spec : Prop :=
  ∀ n, P5871926936878987032.a n = (A068550 n : ℚ)

end A068550

/-! ## A068550.P11016822675318453931

`A003418(2*n)/A001405(2*n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068550

/-- `A003418(2*n)/A001405(2*n)` -/
def P11016822675318453931.Spec : Prop :=
  ∀ n, P11016822675318453931.a n = (A068550 n : ℚ)

end A068550

/-! ## A068550.P8811925758143226331

`round(sqrt(n²+1))*A048619(comp[2*(n+1)])`
-/

namespace A068550.P8811925758143226331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A048619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A068550.P8811925758143226331

namespace A068550

/-- `round(sqrt(n²+1))*A048619(comp[2*(n+1)])` -/
def P8811925758143226331.Spec : Prop :=
  ∀ n, P8811925758143226331.a n = A068550 n

end A068550

/-! ## A068550.P7809579915040873315

`A003418(2*n)/A000984(n)`
-/

namespace A068550.P7809579915040873315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (A000984 n : ℚ)

end

end A068550.P7809579915040873315

namespace A068550

/-- `A003418(2*n)/A000984(n)` -/
def P7809579915040873315.Spec : Prop :=
  ∀ n, P7809579915040873315.a n = (A068550 n : ℚ)

end A068550

/-! ## A068550.P10384945365889422356

`A099996(n)/A001405(2*n)`
-/

namespace A068550.P10384945365889422356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099996 n : ℚ) / (A001405 (2 * n) : ℚ)

end

end A068550.P10384945365889422356

namespace A068550

/-- `A099996(n)/A001405(2*n)` -/
def P10384945365889422356.Spec : Prop :=
  ∀ n, P10384945365889422356.a n = (A068550 n : ℚ)

end A068550

/-! ## A068550.P15710555188569518656

`A099996(n)/A056040(2*n)`
-/

namespace A068550.P15710555188569518656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099996 n : ℚ) / (A056040 (2 * n) : ℚ)

end

end A068550.P15710555188569518656

namespace A068550

/-- `A099996(n)/A056040(2*n)` -/
def P15710555188569518656.Spec : Prop :=
  ∀ n, P15710555188569518656.a n = (A068550 n : ℚ)

end A068550

/-! ## A068550.P2429620813197205657

`A025560(2*n+1)/A000984(n)`
-/

namespace A068550.P2429620813197205657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025560 (2 * n + 1) : ℚ) / (A000984 n : ℚ)

end

end A068550.P2429620813197205657

namespace A068550

/-- `A025560(2*n+1)/A000984(n)` -/
def P2429620813197205657.Spec : Prop :=
  ∀ n, P2429620813197205657.a n = (A068550 n : ℚ)

end A068550

/-! ## A068550.P8086667719744016650

`A073618(2*n+1)/A000984(n)`
-/

namespace A068550.P8086667719744016650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073618 (2 * n + 1) : ℚ) / (A000984 n : ℚ)

end

end A068550.P8086667719744016650

namespace A068550

/-- `A073618(2*n+1)/A000984(n)` -/
def P8086667719744016650.Spec : Prop :=
  ∀ n, P8086667719744016650.a n = (A068550 n : ℚ)

end A068550

/-! ## A068550.P16789581970116666856

`A003418(2*n)/A056040(2*n)`
-/

namespace A068550.P16789581970116666856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (A056040 (2 * n) : ℚ)

end

end A068550.P16789581970116666856

namespace A068550

/-- `A003418(2*n)/A056040(2*n)` -/
def P16789581970116666856.Spec : Prop :=
  ∀ n, P16789581970116666856.a n = (A068550 n : ℚ)

end A068550

/-! ## A068550.P4453994001150558615

`ceil(A003418(2*n)/A051920(2*n))`
-/

namespace A068550.P4453994001150558615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003418 (2 * n) : ℚ) / (A051920 (2 * n) : ℚ)⌉

end

end A068550.P4453994001150558615

namespace A068550

/-- `ceil(A003418(2*n)/A051920(2*n))` -/
def P4453994001150558615.Spec : Prop :=
  ∀ n, P4453994001150558615.a n = A068550 n

end A068550

/-! ## A068550.P12221389064778869516

`A073618(2*n+1)/A001405(2*n)`
-/

namespace A068550.P12221389064778869516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073618 (2 * n + 1) : ℚ) / (A001405 (2 * n) : ℚ)

end

end A068550.P12221389064778869516

namespace A068550

/-- `A073618(2*n+1)/A001405(2*n)` -/
def P12221389064778869516.Spec : Prop :=
  ∀ n, P12221389064778869516.a n = (A068550 n : ℚ)

end A068550

/-! ## A068550.P13694754243672498983

`A067391(2*n+1)/A056040(2*n)`
-/

namespace A068550.P13694754243672498983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067391 (2 * n + 1) : ℚ) / (A056040 (2 * n) : ℚ)

end

end A068550.P13694754243672498983

namespace A068550

/-- `A067391(2*n+1)/A056040(2*n)` -/
def P13694754243672498983.Spec : Prop :=
  ∀ n, P13694754243672498983.a n = (A068550 n : ℚ)

end A068550

/-! ## A068550.P11042163721422269589

`A003418(2*n)/A210736(2*n+1)`
-/

namespace A068550.P11042163721422269589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (A210736 (2 * n + 1) : ℚ)

end

end A068550.P11042163721422269589

namespace A068550

/-- `A003418(2*n)/A210736(2*n+1)` -/
def P11042163721422269589.Spec : Prop :=
  ∀ n, P11042163721422269589.a n = (A068550 n : ℚ)

end A068550

/-!
# A068551: a(n) = 4^n - binomial(2*n,n).

The programs for A068551, the canonical program `A068551.P9885926519989286116` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068551 has offset 0).

The definition of A068551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-C(2*n, n)` (program `A068551.P9885926519989286116`, by `A068551.P9885926519989286116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068551.P17972203638214812081

`A045621(2*n)`
-/

namespace A068551.P17972203638214812081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n)

end

end A068551.P17972203638214812081

namespace A068551

/-- `A045621(2*n)` -/
def P17972203638214812081.Spec : Prop :=
  ∀ n, P17972203638214812081.a n = A068551 n

end A068551

/-! ## A068551.P9885926519989286116

`4^n-C(2*n, n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068551

/-- `4^n-C(2*n, n)` -/
def P9885926519989286116.Spec : Prop :=
  ∀ n, P9885926519989286116.a n = A068551 n

theorem P9885926519989286116.correct : P9885926519989286116.Spec := by
  intro n
  simp only [A068551]

end A068551

/-! ## A068551.P15396406497663592610

`A307768(2*n)`
-/

namespace A068551.P15396406497663592610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 (2 * n)

end

end A068551.P15396406497663592610

namespace A068551

/-- `A307768(2*n)` -/
def P15396406497663592610.Spec : Prop :=
  ∀ n, P15396406497663592610.a n = A068551 n

end A068551

/-! ## A068551.P6996010743175472458

`2*A058622(2*n)`
-/

namespace A068551.P6996010743175472458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058622 (2 * n)

end

end A068551.P6996010743175472458

namespace A068551

/-- `2*A058622(2*n)` -/
def P6996010743175472458.Spec : Prop :=
  ∀ n, P6996010743175472458.a n = A068551 n

end A068551

/-! ## A068551.P3486412446956761596

`2*A191391(2*n)`
-/

namespace A068551.P3486412446956761596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191391 (2 * n)

end

end A068551.P3486412446956761596

namespace A068551

/-- `2*A191391(2*n)` -/
def P3486412446956761596.Spec : Prop :=
  ∀ n, P3486412446956761596.a n = A068551 n

end A068551

/-! ## A068551.P4813647516270053979

`2*A294175(2*n)`
-/

namespace A068551.P4813647516270053979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294175 (2 * n)

end

end A068551.P4813647516270053979

namespace A068551

/-- `2*A294175(2*n)` -/
def P4813647516270053979.Spec : Prop :=
  ∀ n, P4813647516270053979.a n = A068551 n

end A068551

/-! ## A068551.P6218876514352964434

`4^n-A000984(n)`
-/

namespace A068551.P6218876514352964434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A000984 n

end

end A068551.P6218876514352964434

namespace A068551

/-- `4^n-A000984(n)` -/
def P6218876514352964434.Spec : Prop :=
  ∀ n, P6218876514352964434.a n = A068551 n

end A068551

/-! ## A068551.P1107015068851180318

`2*A007008(Δ[n²])`
-/

namespace A068551.P1107015068851180318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007008 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A068551.P1107015068851180318

namespace A068551

/-- `2*A007008(Δ[n²])` -/
def P1107015068851180318.Spec : Prop :=
  ∀ n, P1107015068851180318.a n = A068551 n

end A068551

/-! ## A068551.P8914397760215463099

`4^n-(n+1)*A000108(n)`
-/

namespace A068551.P8914397760215463099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (n + 1 : ℤ) * A000108 n

end

end A068551.P8914397760215463099

namespace A068551

/-- `4^n-(n+1)*A000108(n)` -/
def P8914397760215463099.Spec : Prop :=
  ∀ n, P8914397760215463099.a n = A068551 n

end A068551

/-! ## A068551.P1417319796982483997

`A008549(n)+A001791(n)`
-/

namespace A068551.P1417319796982483997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 n + A001791 n

end

end A068551.P1417319796982483997

namespace A068551

/-- `A008549(n)+A001791(n)` -/
def P1417319796982483997.Spec : Prop :=
  ∀ n, P1417319796982483997.a n = A068551 n

end A068551

/-! ## A068551.P9377467764868044428

`A024037(n)-A045992(n)`
-/

namespace A068551.P9377467764868044428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024037 n - A045992 n

end

end A068551.P9377467764868044428

namespace A068551

/-- `A024037(n)-A045992(n)` -/
def P9377467764868044428.Spec : Prop :=
  ∀ n, P9377467764868044428.a n = A068551 n

theorem P9377467764868044428.correct : P9377467764868044428.Spec := by
  intro n
  simp only [A068551, Nat.add_sub_cancel, A068551.P9377467764868044428.a, A068551.P9885926519989286116.a, A024037, A024037.P7380461457287617195.a, A045992, A045992.P603582236385676472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068551

/-! ## A068551.P5742450493135235717

`A002001(n)-A127275(n)`
-/

namespace A068551.P5742450493135235717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n - A127275 n

end

end A068551.P5742450493135235717

namespace A068551

/-- `A002001(n)-A127275(n)` -/
def P5742450493135235717.Spec : Prop :=
  ∀ n, P5742450493135235717.a n = A068551 n

end A068551

/-! ## A068551.P15859181363950093050

`A155602(n)-A081670(n)`
-/

namespace A068551.P15859181363950093050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155602 n - A081670 n

end

end A068551.P15859181363950093050

namespace A068551

/-- `A155602(n)-A081670(n)` -/
def P15859181363950093050.Spec : Prop :=
  ∀ n, P15859181363950093050.a n = A068551 n

theorem P15859181363950093050.correct : P15859181363950093050.Spec := by
  intro n
  simp only [A068551, Nat.add_sub_cancel, A068551.P15859181363950093050.a, A068551.P9885926519989286116.a, A081670, A081670.P6689484876117185084.a, A155602, A155602.P2314691985141275640.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068551

/-! ## A068551.P16927675454247565097

`A158879(n)-A134758(n)`
-/

namespace A068551.P16927675454247565097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158879 n - A134758 n

end

end A068551.P16927675454247565097

namespace A068551

/-- `A158879(n)-A134758(n)` -/
def P16927675454247565097.Spec : Prop :=
  ∀ n, P16927675454247565097.a n = A068551 n

theorem P16927675454247565097.correct : P16927675454247565097.Spec := by
  intro n
  simp only [A068551, Nat.add_sub_cancel, A068551.P16927675454247565097.a, A068551.P9885926519989286116.a, A134758, A134758.P3097203731672110701.a, A158879, A158879.P14813342468476927609.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068551

/-! ## A068551.P12027328634223266408

`A228197(n)-A126966(n)`
-/

namespace A068551.P12027328634223266408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228197 n - A126966 n

end

end A068551.P12027328634223266408

namespace A068551

/-- `A228197(n)-A126966(n)` -/
def P12027328634223266408.Spec : Prop :=
  ∀ n, P12027328634223266408.a n = A068551 n

theorem P12027328634223266408.correct : P12027328634223266408.Spec := by
  intro n
  simp only [A068551, Nat.add_sub_cancel, A068551.P12027328634223266408.a, A068551.P9885926519989286116.a, A126966, A126966.P12794021674090702556.a, A228197, A228197.P17697013685017105407.a, A028329, A028329.P2723209719397665586.a, A082590, A082590.P7174176292408782637.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068551

/-! ## A068551.P14421662875313901609

`A247281(n)-A286033(n+1)`
-/

namespace A068551.P14421662875313901609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247281 n - A286033 (n + 1)

end

end A068551.P14421662875313901609

namespace A068551

/-- `A247281(n)-A286033(n+1)` -/
def P14421662875313901609.Spec : Prop :=
  ∀ n, P14421662875313901609.a n = A068551 n

end A068551

/-! ## A068551.P79573875485688474

`A037952(2*n)+A008549(n)`
-/

namespace A068551.P79573875485688474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) + A008549 n

end

end A068551.P79573875485688474

namespace A068551

/-- `A037952(2*n)+A008549(n)` -/
def P79573875485688474.Spec : Prop :=
  ∀ n, P79573875485688474.a n = A068551 n

end A068551

/-! ## A068551.P3455284071887159023

`A000302(n)-A001405(2*n)`
-/

namespace A068551.P3455284071887159023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A001405 (2 * n)

end

end A068551.P3455284071887159023

namespace A068551

/-- `A000302(n)-A001405(2*n)` -/
def P3455284071887159023.Spec : Prop :=
  ∀ n, P3455284071887159023.a n = A068551 n

end A068551

/-! ## A068551.P5149913828159629946

`2*(A000302(n)-A032443(n))`
-/

namespace A068551.P5149913828159629946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000302 n - A032443 n)

end

end A068551.P5149913828159629946

namespace A068551

/-- `2*(A000302(n)-A032443(n))` -/
def P5149913828159629946.Spec : Prop :=
  ∀ n, P5149913828159629946.a n = A068551 n

end A068551

/-! ## A068551.P17728295471846040579

`2*(A032443(n)-A000984(n))`
-/

namespace A068551.P17728295471846040579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032443 n - A000984 n)

end

end A068551.P17728295471846040579

namespace A068551

/-- `2*(A032443(n)-A000984(n))` -/
def P17728295471846040579.Spec : Prop :=
  ∀ n, P17728295471846040579.a n = A068551 n

end A068551

/-!
# A068552: 2n*binomial(2n,n) - 4^n.

The programs for A068552, the canonical program `A068552.P18101198138906414966` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068552 has offset 0).

The definition of A068552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*C(2*n, n)-4^n` (program `A068552.P18101198138906414966`, by `A068552.P18101198138906414966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068552.P18101198138906414966

`2*n*C(2*n, n)-4^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068552

/-- `2*n*C(2*n, n)-4^n` -/
def P18101198138906414966.Spec : Prop :=
  ∀ n, P18101198138906414966.a n = A068552 n

theorem P18101198138906414966.correct : P18101198138906414966.Spec := by
  intro n
  simp only [A068552]

end A068552

/-! ## A068552.P1353095007601681420

`n*record[a(n-1)/(floor(n/2)/n-1)]-4^n` with `a(0)=2`
-/

namespace A068552.P1353095007601681420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (4 ^ n : ℚ)

end

end A068552.P1353095007601681420

namespace A068552

/-- `n*record[a(n-1)/(floor(n/2)/n-1)]-4^n` -/
def P1353095007601681420.Spec : Prop :=
  ∀ n, P1353095007601681420.a n = (A068552 n : ℚ)

end A068552

/-! ## A068552.P16266079210275203260

`n*A028329(n)-4^n`
-/

namespace A068552.P16266079210275203260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028329 n - (4 ^ n : ℤ)

end

end A068552.P16266079210275203260

namespace A068552

/-- `n*A028329(n)-4^n` -/
def P16266079210275203260.Spec : Prop :=
  ∀ n, P16266079210275203260.a n = A068552 n

theorem P16266079210275203260.correct : P16266079210275203260.Spec := by
  intro n
  simp only [A068552, Nat.add_sub_cancel, A068552.P16266079210275203260.a, A068552.P18101198138906414966.a, A028329, A028329.P2723209719397665586.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068552

/-! ## A068552.P16702563843276572749

`record[Δ[A056040(n)-2^n]]`
-/

namespace A068552.P16702563843276572749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068552.P16702563843276572749

namespace A068552

/-- `record[Δ[A056040(n)-2^n]]` -/
def P16702563843276572749.Spec : Prop :=
  ∀ n, P16702563843276572749.a n = A068552 n

end A068552

/-! ## A068552.P640228471637243468

`2*n*A000984(n)-4^n`
-/

namespace A068552.P640228471637243468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A000984 n) - (4 ^ n : ℤ)

end

end A068552.P640228471637243468

namespace A068552

/-- `2*n*A000984(n)-4^n` -/
def P640228471637243468.Spec : Prop :=
  ∀ n, P640228471637243468.a n = A068552 n

theorem P640228471637243468.correct : P640228471637243468.Spec := by
  intro n
  simp only [A068552, Nat.add_sub_cancel, A068552.P640228471637243468.a, A068552.P18101198138906414966.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068552

/-! ## A068552.P9227048366540309833

`2*n*A001405(2*n)-4^n`
-/

namespace A068552.P9227048366540309833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A001405 (2 * n) - (4 ^ n : ℤ)

end

end A068552.P9227048366540309833

namespace A068552

/-- `2*n*A001405(2*n)-4^n` -/
def P9227048366540309833.Spec : Prop :=
  ∀ n, P9227048366540309833.a n = A068552 n

end A068552

/-! ## A068552.P12856599206743277869

`A068554(n)+A005430(n)`
-/

namespace A068552.P12856599206743277869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068554 n + A005430 n

end

end A068552.P12856599206743277869

namespace A068552

/-- `A068554(n)+A005430(n)` -/
def P12856599206743277869.Spec : Prop :=
  ∀ n, P12856599206743277869.a n = A068552 n

theorem P12856599206743277869.correct : P12856599206743277869.Spec := by
  intro n
  simp only [A068552, Nat.add_sub_cancel, A068552.P12856599206743277869.a, A068552.P18101198138906414966.a, A005430, A005430.P3213108425417519818.a, A068554, A068554.P5300225759743515690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068552

/-! ## A068552.P2819881763784009584

`A172060(n)-A000984(n)`
-/

namespace A068552.P2819881763784009584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172060 n - A000984 n

end

end A068552.P2819881763784009584

namespace A068552

/-- `A172060(n)-A000984(n)` -/
def P2819881763784009584.Spec : Prop :=
  ∀ n, P2819881763784009584.a n = A068552 n

theorem P2819881763784009584.correct : P2819881763784009584.Spec := by
  intro n
  simp only [A068552, Nat.add_sub_cancel, A068552.P2819881763784009584.a, A068552.P18101198138906414966.a, A000984, A000984.P7946844122574426130.a, A172060, A172060.P5248690933070459008.a, A000302, A000302.P5166485833484575275.a, A002457, A002457.P9253550667326779954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068552

/-! ## A068552.P5773330674211589285

`A296665(n)-A028329(n)`
-/

namespace A068552.P5773330674211589285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296665 n - A028329 n

end

end A068552.P5773330674211589285

namespace A068552

/-- `A296665(n)-A028329(n)` -/
def P5773330674211589285.Spec : Prop :=
  ∀ n, P5773330674211589285.a n = A068552 n

end A068552

/-! ## A068552.P8567428826512972484

`A296770(n)-A051960(n)`
-/

namespace A068552.P8567428826512972484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296770 n - A051960 n

end

end A068552.P8567428826512972484

namespace A068552

/-- `A296770(n)-A051960(n)` -/
def P8567428826512972484.Spec : Prop :=
  ∀ n, P8567428826512972484.a n = A068552 n

end A068552

/-! ## A068552.P15802116041258811481

`A000302(n)+2*A068554(n)`
-/

namespace A068552.P15802116041258811481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + 2 * A068554 n

end

end A068552.P15802116041258811481

namespace A068552

/-- `A000302(n)+2*A068554(n)` -/
def P15802116041258811481.Spec : Prop :=
  ∀ n, P15802116041258811481.a n = A068552 n

theorem P15802116041258811481.correct : P15802116041258811481.Spec := by
  intro n
  simp only [A068552, Nat.add_sub_cancel, A068552.P15802116041258811481.a, A068552.P18101198138906414966.a, A000302, A000302.P5166485833484575275.a, A068554, A068554.P5300225759743515690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068552

/-! ## A068552.P1582800700760263280

`A218073(2*n)+A068554(n)`
-/

namespace A068552.P1582800700760263280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218073 (2 * n) + A068554 n

end

end A068552.P1582800700760263280

namespace A068552

/-- `A218073(2*n)+A068554(n)` -/
def P1582800700760263280.Spec : Prop :=
  ∀ n, P1582800700760263280.a n = A068552 n

end A068552

/-! ## A068552.P15622093056013337088

`2*A005430(n)-A000302(n)`
-/

namespace A068552.P15622093056013337088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005430 n - A000302 n

end

end A068552.P15622093056013337088

namespace A068552

/-- `2*A005430(n)-A000302(n)` -/
def P15622093056013337088.Spec : Prop :=
  ∀ n, P15622093056013337088.a n = A068552 n

theorem P15622093056013337088.correct : P15622093056013337088.Spec := by
  intro n
  simp only [A068552, Nat.add_sub_cancel, A068552.P15622093056013337088.a, A068552.P18101198138906414966.a, A000302, A000302.P5166485833484575275.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068552

/-! ## A068552.P4407820739443591923

`A002457(n)-2*A032443(n)`
-/

namespace A068552.P4407820739443591923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - 2 * A032443 n

end

end A068552.P4407820739443591923

namespace A068552

/-- `A002457(n)-2*A032443(n)` -/
def P4407820739443591923.Spec : Prop :=
  ∀ n, P4407820739443591923.a n = A068552 n

end A068552

/-! ## A068552.P17686389916273662065

`A107373(2*(n+1))-A000984(n)`
-/

namespace A068552.P17686389916273662065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1)) - A000984 n

end

end A068552.P17686389916273662065

namespace A068552

/-- `A107373(2*(n+1))-A000984(n)` -/
def P17686389916273662065.Spec : Prop :=
  ∀ n, P17686389916273662065.a n = A068552 n

end A068552

/-! ## A068552.P10639378673440007421

`A107373(2*(n+1))-A001405(2*n)`
-/

namespace A068552.P10639378673440007421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1)) - A001405 (2 * n)

end

end A068552.P10639378673440007421

namespace A068552

/-- `A107373(2*(n+1))-A001405(2*n)` -/
def P10639378673440007421.Spec : Prop :=
  ∀ n, P10639378673440007421.a n = A068552 n

end A068552

/-! ## A068552.P9850807613694864201

`A107373(2*(n+1))-A056040(2*n)`
-/

namespace A068552.P9850807613694864201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1)) - A056040 (2 * n)

end

end A068552.P9850807613694864201

namespace A068552

/-- `A107373(2*(n+1))-A056040(2*n)` -/
def P9850807613694864201.Spec : Prop :=
  ∀ n, P9850807613694864201.a n = A068552 n

end A068552

/-! ## A068552.P4079502436922229834

`A107373(2*(n+1))-A126869(2*n)`
-/

namespace A068552.P4079502436922229834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1)) - A126869 (2 * n)

end

end A068552.P4079502436922229834

namespace A068552

/-- `A107373(2*(n+1))-A126869(2*n)` -/
def P4079502436922229834.Spec : Prop :=
  ∀ n, P4079502436922229834.a n = A068552 n

end A068552

/-! ## A068552.P12097167278800481786

`A107373(2*(n+1))-A126930(2*n)`
-/

namespace A068552.P12097167278800481786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1)) - A126930 (2 * n)

end

end A068552.P12097167278800481786

namespace A068552

/-- `A107373(2*(n+1))-A126930(2*n)` -/
def P12097167278800481786.Spec : Prop :=
  ∀ n, P12097167278800481786.a n = A068552 n

end A068552

/-! ## A068552.P1696323904736067698

`A107373(2*(n+1))-A129383(2*n)`
-/

namespace A068552.P1696323904736067698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1)) - A129383 (2 * n)

end

end A068552.P1696323904736067698

namespace A068552

/-- `A107373(2*(n+1))-A129383(2*n)` -/
def P1696323904736067698.Spec : Prop :=
  ∀ n, P1696323904736067698.a n = A068552 n

end A068552

/-!
# A068553: a(n) = lcm(1,2,...,2*n) / (n*binomial(2*n, n)).

The programs for A068553, the canonical program `A068553.P14660080325200991820` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068553 has offset 1).

The definition of A068553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068553.P14660080325200991820

`A048619(2*(n+1)-1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068553

/-- `A048619(2*(n+1)-1)` -/
def P14660080325200991820.Spec : Prop :=
  ∀ n, P14660080325200991820.a n = A068553 (n + 1)

theorem P14660080325200991820.correct : P14660080325200991820.Spec := by
  intro n
  simp only [A068553, Nat.add_sub_cancel]

end A068553

/-! ## A068553.P15908913632236614697

`A068550(n+1)/(n+1)`
-/

namespace A068553.P15908913632236614697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068550 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A068553.P15908913632236614697

namespace A068553

/-- `A068550(n+1)/(n+1)` -/
def P15908913632236614697.Spec : Prop :=
  ∀ n, P15908913632236614697.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P16225005700443029402

`A119636(n)/A120114(n)`
-/

namespace A068553.P16225005700443029402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119636 n : ℚ) / (A120114 n : ℚ)

end

end A068553.P16225005700443029402

namespace A068553

/-- `A119636(n)/A120114(n)` -/
def P16225005700443029402.Spec : Prop :=
  ∀ n, P16225005700443029402.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P16029230866530549127

`A180000(2*n+1)/gcd(2, A180000(2*n))`
-/

namespace A068553.P16029230866530549127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (2 * n + 1) : ℚ) / (Int.gcd 2 (A180000 (2 * n)) : ℚ)

end

end A068553.P16029230866530549127

namespace A068553

/-- `A180000(2*n+1)/gcd(2, A180000(2*n))` -/
def P16029230866530549127.Spec : Prop :=
  ∀ n, P16029230866530549127.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P13112194473051707301

`A180000(2*(n+1))/(n+1)`
-/

namespace A068553.P13112194473051707301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A068553.P13112194473051707301

namespace A068553

/-- `A180000(2*(n+1))/(n+1)` -/
def P13112194473051707301.Spec : Prop :=
  ∀ n, P13112194473051707301.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P15549685915513743145

`A263673(2*(n+1))/(n+1)`
-/

namespace A068553.P15549685915513743145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A068553.P15549685915513743145

namespace A068553

/-- `A263673(2*(n+1))/(n+1)` -/
def P15549685915513743145.Spec : Prop :=
  ∀ n, P15549685915513743145.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P16192374399773665308

`gcd(A099946(n+2), A119636(n))`
-/

namespace A068553.P16192374399773665308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099946 (n + 2)) (A119636 n)

end

end A068553.P16192374399773665308

namespace A068553

/-- `gcd(A099946(n+2), A119636(n))` -/
def P16192374399773665308.Spec : Prop :=
  ∀ n, (P16192374399773665308.a n : ℤ) = A068553 (n + 1)

end A068553

/-! ## A068553.P15039784535203435550

`A046212(2*n+1)*A048619(2*n+1)`
-/

namespace A068553.P15039784535203435550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046212 (2 * n + 1) * A048619 (2 * n + 1)

end

end A068553.P15039784535203435550

namespace A068553

/-- `A046212(2*n+1)*A048619(2*n+1)` -/
def P15039784535203435550.Spec : Prop :=
  ∀ n, P15039784535203435550.a n = A068553 (n + 1)

end A068553

/-! ## A068553.P15095677320755112166

`2*A002944(2*(n+1))/A000984(n+1)`
-/

namespace A068553.P15095677320755112166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A002944 (2 * (n + 1)) : ℚ) / (A000984 (n + 1) : ℚ))

end

end A068553.P15095677320755112166

namespace A068553

/-- `2*A002944(2*(n+1))/A000984(n+1)` -/
def P15095677320755112166.Spec : Prop :=
  ∀ n, P15095677320755112166.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P14307881311427042441

`A002944(2*(n+1))/A001405(2*n+1)`
-/

namespace A068553.P14307881311427042441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (2 * (n + 1)) : ℚ) / (A001405 (2 * n + 1) : ℚ)

end

end A068553.P14307881311427042441

namespace A068553

/-- `A002944(2*(n+1))/A001405(2*n+1)` -/
def P14307881311427042441.Spec : Prop :=
  ∀ n, P14307881311427042441.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P12659519438061365109

`A119634(n)/A002457(n)`
-/

namespace A068553.P12659519438061365109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119634 n : ℚ) / (A002457 n : ℚ)

end

end A068553.P12659519438061365109

namespace A068553

/-- `A119634(n)/A002457(n)` -/
def P12659519438061365109.Spec : Prop :=
  ∀ n, P12659519438061365109.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P1091735203997025270

`A025552(2*n+1)/A242172(2*n)`
-/

namespace A068553.P1091735203997025270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025552 (2 * n + 1) : ℚ) / (A242172 (2 * n) : ℚ)

end

end A068553.P1091735203997025270

namespace A068553

/-- `A025552(2*n+1)/A242172(2*n)` -/
def P1091735203997025270.Spec : Prop :=
  ∀ n, P1091735203997025270.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P8884335606867239292

`A003418(2*(n+1))/A100071(2*(n+1))`
-/

namespace A068553.P8884335606867239292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * (n + 1)) : ℚ) / (A100071 (2 * (n + 1)) : ℚ)

end

end A068553.P8884335606867239292

namespace A068553

/-- `A003418(2*(n+1))/A100071(2*(n+1))` -/
def P8884335606867239292.Spec : Prop :=
  ∀ n, P8884335606867239292.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P15824355972969727531

`A099996(n+1)/(2*A056040(2*n+1))`
-/

namespace A068553.P15824355972969727531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099996 (n + 1) : ℚ) / (2 * A056040 (2 * n + 1) : ℚ)

end

end A068553.P15824355972969727531

namespace A068553

/-- `A099996(n+1)/(2*A056040(2*n+1))` -/
def P15824355972969727531.Spec : Prop :=
  ∀ n, P15824355972969727531.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P2039506584013149361

`A119634(n)/A119634(n+1)*A119636(n)`
-/

namespace A068553.P2039506584013149361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119634 n : ℚ) / (A119634 (n + 1) : ℚ) * (A119636 n : ℚ)

end

end A068553.P2039506584013149361

namespace A068553

/-- `A119634(n)/A119634(n+1)*A119636(n)` -/
def P2039506584013149361.Spec : Prop :=
  ∀ n, P2039506584013149361.a n = (A068553 (n + 1) : ℚ)

end A068553

/-! ## A068553.P2006956128710898394

`A120101(∑[n]+n)`
-/

namespace A068553.P2006956128710898394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120101 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A068553.P2006956128710898394

namespace A068553

/-- `A120101(∑[n]+n)` -/
def P2006956128710898394.Spec : Prop :=
  ∀ n, P2006956128710898394.a n = A068553 (n + 1)

end A068553

/-!
# A068554: a(n) = n*binomial(2n, n) - 4^n.

The programs for A068554, the canonical program `A068554.P5300225759743515690` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068554 has offset 0).

The definition of A068554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*C(2*n, n)-4^n` (program `A068554.P5300225759743515690`, by `A068554.P5300225759743515690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068554.P15412628013919998094

`A005430(n)-A000302(n)`
-/

namespace A068554.P15412628013919998094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n - A000302 n

end

end A068554.P15412628013919998094

namespace A068554

/-- `A005430(n)-A000302(n)` -/
def P15412628013919998094.Spec : Prop :=
  ∀ n, P15412628013919998094.a n = A068554 n

theorem P15412628013919998094.correct : P15412628013919998094.Spec := by
  intro n
  simp only [A068554, Nat.add_sub_cancel, A068554.P15412628013919998094.a, A068554.P5300225759743515690.a, A000302, A000302.P5166485833484575275.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068554

/-! ## A068554.P5300225759743515690

`n*C(2*n, n)-4^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068554

/-- `n*C(2*n, n)-4^n` -/
def P5300225759743515690.Spec : Prop :=
  ∀ n, P5300225759743515690.a n = A068554 n

theorem P5300225759743515690.correct : P5300225759743515690.Spec := by
  intro n
  simp only [A068554]

end A068554

/-! ## A068554.P285446865365151621

`A319924(n)-1-4^n`
-/

namespace A068554.P285446865365151621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319924 n - 1 - (4 ^ n : ℤ)

end

end A068554.P285446865365151621

namespace A068554

/-- `A319924(n)-1-4^n` -/
def P285446865365151621.Spec : Prop :=
  ∀ n, P285446865365151621.a n = A068554 n

theorem P285446865365151621.correct : P285446865365151621.Spec := by
  intro n
  simp only [A068554, Nat.add_sub_cancel, A068554.P285446865365151621.a, A068554.P5300225759743515690.a, A319924, A319924.P4321362157346301630.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068554

/-! ## A068554.P523339603985795330

`n*A056040(2*n)-4^n`
-/

namespace A068554.P523339603985795330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056040 (2 * n) - (4 ^ n : ℤ)

end

end A068554.P523339603985795330

namespace A068554

/-- `n*A056040(2*n)-4^n` -/
def P523339603985795330.Spec : Prop :=
  ∀ n, P523339603985795330.a n = A068554 n

end A068554

/-! ## A068554.P17214065866629313131

`A068552(n)-A005430(n)`
-/

namespace A068554.P17214065866629313131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068552 n - A005430 n

end

end A068554.P17214065866629313131

namespace A068554

/-- `A068552(n)-A005430(n)` -/
def P17214065866629313131.Spec : Prop :=
  ∀ n, P17214065866629313131.a n = A068554 n

theorem P17214065866629313131.correct : P17214065866629313131.Spec := by
  intro n
  simp only [A068554, Nat.add_sub_cancel, A068554.P17214065866629313131.a, A068554.P5300225759743515690.a, A005430, A005430.P3213108425417519818.a, A068552, A068552.P18101198138906414966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068554

/-! ## A068554.P460026834730767577

`A319924(n)-A052539(n)`
-/

namespace A068554.P460026834730767577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319924 n - A052539 n

end

end A068554.P460026834730767577

namespace A068554

/-- `A319924(n)-A052539(n)` -/
def P460026834730767577.Spec : Prop :=
  ∀ n, P460026834730767577.a n = A068554 n

theorem P460026834730767577.correct : P460026834730767577.Spec := by
  intro n
  simp only [A068554, Nat.add_sub_cancel, A068554.P460026834730767577.a, A068554.P5300225759743515690.a, A052539, A052539.P3422248518252475595.a, A319924, A319924.P4321362157346301630.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068554

/-! ## A068554.P8614153813454910676

`A005430(n)-A000079(n)²`
-/

namespace A068554.P8614153813454910676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n - A000079 n ^ 2

end

end A068554.P8614153813454910676

namespace A068554

/-- `A005430(n)-A000079(n)²` -/
def P8614153813454910676.Spec : Prop :=
  ∀ n, P8614153813454910676.a n = A068554 n

end A068554

/-! ## A068554.P12424857379730975868

`A166978(2*n)+A005430(n)`
-/

namespace A068554.P12424857379730975868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166978 (2 * n) + A005430 n

end

end A068554.P12424857379730975868

namespace A068554

/-- `A166978(2*n)+A005430(n)` -/
def P12424857379730975868.Spec : Prop :=
  ∀ n, P12424857379730975868.a n = A068554 n

end A068554

/-! ## A068554.P7340117409726232560

`A005430(n)-A000079(2*n)`
-/

namespace A068554.P7340117409726232560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n - A000079 (2 * n)

end

end A068554.P7340117409726232560

namespace A068554

/-- `A005430(n)-A000079(2*n)` -/
def P7340117409726232560.Spec : Prop :=
  ∀ n, P7340117409726232560.a n = A068554 n

end A068554

/-! ## A068554.P12928990106576711612

`2*A139262(n)-A000984(n)`
-/

namespace A068554.P12928990106576711612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139262 n - A000984 n

end

end A068554.P12928990106576711612

namespace A068554

/-- `2*A139262(n)-A000984(n)` -/
def P12928990106576711612.Spec : Prop :=
  ∀ n, P12928990106576711612.a n = A068554 n

end A068554

/-! ## A068554.P16854382510720130448

`n*A000984(n)-A000302(n)`
-/

namespace A068554.P16854382510720130448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000984 n - A000302 n

end

end A068554.P16854382510720130448

namespace A068554

/-- `n*A000984(n)-A000302(n)` -/
def P16854382510720130448.Spec : Prop :=
  ∀ n, P16854382510720130448.a n = A068554 n

theorem P16854382510720130448.correct : P16854382510720130448.Spec := by
  intro n
  simp only [A068554, Nat.add_sub_cancel, A068554.P16854382510720130448.a, A068554.P5300225759743515690.a, A000302, A000302.P5166485833484575275.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068554

/-! ## A068554.P17010890507198698384

`A068552(n)-n*A000984(n)`
-/

namespace A068554.P17010890507198698384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068552 n - (n : ℤ) * A000984 n

end

end A068554.P17010890507198698384

namespace A068554

/-- `A068552(n)-n*A000984(n)` -/
def P17010890507198698384.Spec : Prop :=
  ∀ n, P17010890507198698384.a n = A068554 n

theorem P17010890507198698384.correct : P17010890507198698384.Spec := by
  intro n
  simp only [A068554, Nat.add_sub_cancel, A068554.P17010890507198698384.a, A068554.P5300225759743515690.a, A000984, A000984.P7946844122574426130.a, A068552, A068552.P18101198138906414966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068554

/-! ## A068554.P1431533332959666734

`A100071(2*n)-A000079(n)²`
-/

namespace A068554.P1431533332959666734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * n) - A000079 n ^ 2

end

end A068554.P1431533332959666734

namespace A068554

/-- `A100071(2*n)-A000079(n)²` -/
def P1431533332959666734.Spec : Prop :=
  ∀ n, P1431533332959666734.a n = A068554 n

end A068554

/-! ## A068554.P2035073857657239140

`A212303(2*n)-A000079(n)²`
-/

namespace A068554.P2035073857657239140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (2 * n) - A000079 n ^ 2

end

end A068554.P2035073857657239140

namespace A068554

/-- `A212303(2*n)-A000079(n)²` -/
def P2035073857657239140.Spec : Prop :=
  ∀ n, P2035073857657239140.a n = A068554 n

end A068554

/-! ## A068554.P9032329034386828312

`2*A139262(n)-record[A126869(n)]`
-/

namespace A068554.P9032329034386828312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139262 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068554.P9032329034386828312

namespace A068554

/-- `2*A139262(n)-record[A126869(n)]` -/
def P9032329034386828312.Spec : Prop :=
  ∀ n, P9032329034386828312.a n = A068554 n

end A068554

/-! ## A068554.P7510984621931601747

`n*A000984(n)-A000079(n)²`
-/

namespace A068554.P7510984621931601747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000984 n - A000079 n ^ 2

end

end A068554.P7510984621931601747

namespace A068554

/-- `n*A000984(n)-A000079(n)²` -/
def P7510984621931601747.Spec : Prop :=
  ∀ n, P7510984621931601747.a n = A068554 n

end A068554

/-! ## A068554.P4710777770343157195

`n*A000984(n)-A122803(n)²`
-/

namespace A068554.P4710777770343157195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000984 n - A122803 n ^ 2

end

end A068554.P4710777770343157195

namespace A068554

/-- `n*A000984(n)-A122803(n)²` -/
def P4710777770343157195.Spec : Prop :=
  ∀ n, P4710777770343157195.a n = A068554 n

end A068554

/-! ## A068554.P11423161795341540638

`A191309(2*n+1)-A000984(n)`
-/

namespace A068554.P11423161795341540638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191309 (2 * n + 1) - A000984 n

end

end A068554.P11423161795341540638

namespace A068554

/-- `A191309(2*n+1)-A000984(n)` -/
def P11423161795341540638.Spec : Prop :=
  ∀ n, P11423161795341540638.a n = A068554 n

end A068554

/-! ## A068554.P12122172668275526194

`A100071(2*n)-A000079(2*n)`
-/

namespace A068554.P12122172668275526194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * n) - A000079 (2 * n)

end

end A068554.P12122172668275526194

namespace A068554

/-- `A100071(2*n)-A000079(2*n)` -/
def P12122172668275526194.Spec : Prop :=
  ∀ n, P12122172668275526194.a n = A068554 n

end A068554

/-! ## A068554.P2947541310717720304

`A212303(2*n)-A000079(2*n)`
-/

namespace A068554.P2947541310717720304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (2 * n) - A000079 (2 * n)

end

end A068554.P2947541310717720304

namespace A068554

/-- `A212303(2*n)-A000079(2*n)` -/
def P2947541310717720304.Spec : Prop :=
  ∀ n, P2947541310717720304.a n = A068554 n

end A068554

/-!
# A068555: Triangle read by rows in which row n contains (2i)!*(2j)!/(i!*j!*(i+j)!) for i + j = n, i = 0..n.

The programs for A068555, the canonical program `A068555.P14892946262437006528` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068555 has offset 0).

The definition of A068555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068555.P14892946262437006528

`A067804(n)/A007318(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068555

/-- `A067804(n)/A007318(n)` -/
def P14892946262437006528.Spec : Prop :=
  ∀ n, P14892946262437006528.a n = (A068555 n : ℚ)

end A068555

/-! ## A068555.P18238460807581520809

`A067804(n)/sqrt(A008459(n))`
-/

namespace A068555.P18238460807581520809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A068555.P18238460807581520809

namespace A068555

/-- `A067804(n)/sqrt(A008459(n))` -/
def P18238460807581520809.Spec : Prop :=
  ∀ n, P18238460807581520809.a n = (A068555 n : ℝ)

end A068555

/-! ## A068555.P248936386284435688

`2/A028326(n)*A067804(n)`
-/

namespace A068555.P248936386284435688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A067804 n : ℚ)

end

end A068555.P248936386284435688

namespace A068555

/-- `2/A028326(n)*A067804(n)` -/
def P248936386284435688.Spec : Prop :=
  ∀ n, P248936386284435688.a n = (A068555 n : ℚ)

end A068555

/-! ## A068555.P14721381671263812196

`A000984(A002262(n))*A000984(A025581(n))/A007318(n)`
-/

namespace A068555.P14721381671263812196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (A002262 n).toNat * A000984 (A025581 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A068555.P14721381671263812196

namespace A068555

/-- `A000984(A002262(n))*A000984(A025581(n))/A007318(n)` -/
def P14721381671263812196.Spec : Prop :=
  ∀ n, P14721381671263812196.a n = (A068555 n : ℚ)

end A068555

/-! ## A068555.P18410170466739282399

`A356546(n)/A086645(n)`
-/

namespace A068555.P18410170466739282399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356546 n : ℚ) / (A086645 n : ℚ)

end

end A068555.P18410170466739282399

namespace A068555

/-- `A356546(n)/A086645(n)` -/
def P18410170466739282399.Spec : Prop :=
  ∀ n, P18410170466739282399.a n = (A068555 n : ℚ)

end A068555

/-! ## A068555.P3007181199532608701

`A237520(A061885(n))/A007318(n)`
-/

namespace A068555.P3007181199532608701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237520 (A061885 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A068555.P3007181199532608701

namespace A068555

/-- `A237520(A061885(n))/A007318(n)` -/
def P3007181199532608701.Spec : Prop :=
  ∀ n, P3007181199532608701.a n = (A068555 n : ℚ)

end A068555

/-! ## A068555.P6582636456570734099

`A237520(2*n-A002262(n))/A007318(n)`
-/

namespace A068555.P6582636456570734099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237520 ((2 * n : ℤ) - A002262 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A068555.P6582636456570734099

namespace A068555

/-- `A237520(2*n-A002262(n))/A007318(n)` -/
def P6582636456570734099.Spec : Prop :=
  ∀ n, P6582636456570734099.a n = (A068555 n : ℚ)

end A068555

/-! ## A068555.P5624260212761182774

`A237520(n-A002262(n)+n)/A007318(n)`
-/

namespace A068555.P5624260212761182774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237520 ((n : ℤ) - A002262 n + (n : ℤ)).toNat : ℚ) / (A007318 n : ℚ)

end

end A068555.P5624260212761182774

namespace A068555

/-- `A237520(n-A002262(n)+n)/A007318(n)` -/
def P5624260212761182774.Spec : Prop :=
  ∀ n, P5624260212761182774.a n = (A068555 n : ℚ)

end A068555

/-! ## A068555.P1472459852788355763

`A069466(n)/A155495(n)`
-/

namespace A068555.P1472459852788355763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A155495 n : ℚ)

end

end A068555.P1472459852788355763

namespace A068555

/-- `A069466(n)/A155495(n)` -/
def P1472459852788355763.Spec : Prop :=
  ∀ n, P1472459852788355763.a n = (A068555 n : ℚ)

end A068555

/-! ## A068555.P14735227725174549629

`(A135573(A061579(n))+A135573(n))/2`
-/

namespace A068555.P14735227725174549629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135573 (A061579 n).toNat + A135573 n : ℚ) / 2

end

end A068555.P14735227725174549629

namespace A068555

/-- `(A135573(A061579(n))+A135573(n))/2` -/
def P14735227725174549629.Spec : Prop :=
  ∀ n, P14735227725174549629.a n = (A068555 n : ℚ)

end A068555

/-!
# A068556: From numerators in expansion of tan(arcsinh(x)) - sin(arctanh(x)).

The programs for A068556, there is no canonical definition to state claims against.
-/

/-! ## A068556.P9739957996540369535

`A204521(A153896(n))`
-/

namespace A068556.P9739957996540369535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204521 (A153896 n).toNat

end

end A068556.P9739957996540369535

/-! ## A068556.P4857348378135407500

`A025443(A124860(n)^n)`
-/

namespace A068556.P4857348378135407500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A124860 n ^ n).toNat

end

end A068556.P4857348378135407500

/-! ## A068556.P9083640135977136632

`A025443(A226122(n)^n)`
-/

namespace A068556.P9083640135977136632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A226122 n ^ n).toNat

end

end A068556.P9083640135977136632

/-!
# A068560: Numbers k such that phi(k) = tau(k)^2.

The programs for A068560, there is no canonical definition to state claims against.
-/

/-! ## A068560.P13843666477586076271

`eq[A000005(n+1)², A000010(n+1)]+1`
-/

namespace A068560.P13843666477586076271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068560.P13843666477586076271

/-! ## A068560.P1126822144947306738

`eq[A000005(n+1)^A020639(2*(n+1)), A000010(n+1)]+1`
-/

namespace A068560.P1126822144947306738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A068560.P1126822144947306738

/-! ## A068560.P782632905937464842

`eq[A000010(n+1), A035116(n+1)]+1`
-/

namespace A068560.P782632905937464842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068560.P782632905937464842

/-! ## A068560.P6950340300989283614

`eq[A000005(n+1), A279287(n+1)]+1`
-/

namespace A068560.P6950340300989283614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279287 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068560.P6950340300989283614

/-! ## A068560.P4085296052900478450

`eq[A071118(n+1)/(2*(n+1)), A035116(n+1)]+1`
-/

namespace A068560.P4085296052900478450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A068560.P4085296052900478450

/-!
# A068561: Numerators of coefficients in (1+x)^(1/3)-(1-x)^(1/3) power series.

The programs for A068561, there is no canonical definition to state claims against.
-/

/-! ## A068561.P495094139657541327

`record[2*A067622(n)]`
-/

namespace A068561.P495094139657541327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068561.P495094139657541327

/-! ## A068561.P3872718485922793137

`2*A067622(Δ[n²])`
-/

namespace A068561.P3872718485922793137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A068561.P3872718485922793137

/-! ## A068561.P7865851426940300311

`abs(2*A067622(2*n+1))`
-/

namespace A068561.P7865851426940300311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A067622 (2 * n + 1)|

end

end A068561.P7865851426940300311

/-! ## A068561.P11989543033442564610

`A127974(2*n+1)/(3*n+1)`
-/

namespace A068561.P11989543033442564610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127974 (2 * n + 1) : ℚ) / (3 * n + 1 : ℚ)

end

end A068561.P11989543033442564610

/-! ## A068561.P16193478255552485357

`1/A016777(n)*A127974(A005408(n))`
-/

namespace A068561.P16193478255552485357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A016777 n : ℚ) * (A127974 (A005408 n).toNat : ℚ)

end

end A068561.P16193478255552485357

/-!
# A068562: Denominators of coefficients in (1+x)^(1/3)-(1-x)^(1/3) power series.

The programs for A068562, there is no canonical definition to state claims against.
-/

/-! ## A068562.P9762427416687860656

`A067623(Δ[n²])`
-/

namespace A068562.P9762427416687860656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067623 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A068562.P9762427416687860656

/-! ## A068562.P14299253492032148887

`A060828(6*n+3)`
-/

namespace A068562.P14299253492032148887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060828 (6 * n + 3)

end

end A068562.P14299253492032148887

/-! ## A068562.P13194533148585075000

`3^A004128(Δ[n²])`
-/

namespace A068562.P13194533148585075000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004128 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A068562.P13194533148585075000

/-! ## A068562.P14130887871695382452

`3^A054861(6*n+3)`
-/

namespace A068562.P14130887871695382452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A054861 (6 * n + 3) : ℤ)

end

end A068562.P14130887871695382452

/-! ## A068562.P13926782813667926442

`lcm(3, A067623(2*n+1))`
-/

namespace A068562.P13926782813667926442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A067623 (2 * n + 1))

end

end A068562.P13926782813667926442

/-! ## A068562.P15942263774616714414

`A000244(A004128(2*n+1))`
-/

namespace A068562.P15942263774616714414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004128 (2 * n + 1)).toNat

end

end A068562.P15942263774616714414

/-! ## A068562.P2756942098082852750

`A017913(A346502(2*n+1))`
-/

namespace A068562.P2756942098082852750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A346502 (2 * n + 1)).toNat

end

end A068562.P2756942098082852750

/-! ## A068562.P16401162260635686004

`A000244(A054861(2*n+1)+2*n+1)`
-/

namespace A068562.P16401162260635686004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A054861 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A068562.P16401162260635686004

/-! ## A068562.P5687584145862598845

`A000244(2*n+1)²/A125824(2*n+1)`
-/

namespace A068562.P5687584145862598845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (2 * n + 1) ^ 2 : ℚ) / (A125824 (2 * n + 1) : ℚ)

end

end A068562.P5687584145862598845

/-!
# A068563: Numbers k such that 2^k == 4^k (mod k).

The programs for A068563, the canonical program `A068563.P1124272610542496597` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068563 has offset 1).

The definition of A068563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068563.P2196801044558198872

`eq[0, (n+1)%A007733(n+1)]+1`
-/

namespace A068563.P2196801044558198872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007733 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068563.P2196801044558198872

namespace A068563

/-- `eq[0, (n+1)%A007733(n+1)]+1` -/
def P2196801044558198872.Spec : Prop :=
  ∀ n, (P2196801044558198872.a n : ℤ) = A068563 (n + 1)

end A068563

/-! ## A068563.P7148083721091910098

`record[A006519(n+1)*A014491(n+1)]`
-/

namespace A068563.P7148083721091910098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A014491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068563.P7148083721091910098

namespace A068563

/-- `record[A006519(n+1)*A014491(n+1)]` -/
def P7148083721091910098.Spec : Prop :=
  ∀ n, P7148083721091910098.a n = A068563 (n + 1)

end A068563

/-! ## A068563.P1124272610542496597

`record[gcd(n+1, A085537(A015910(n+1)))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068563

/-- `record[gcd(n+1, A085537(A015910(n+1)))]` -/
def P1124272610542496597.Spec : Prop :=
  ∀ n, (P1124272610542496597.a n : ℤ) = A068563 (n + 1)

theorem P1124272610542496597.correct : P1124272610542496597.Spec := by
  intro n
  simp only [A068563, Nat.add_sub_cancel]

end A068563

/-! ## A068563.P1038414426362579166

`record[lcm(A014491(n+1), A055975(n+1))]`
-/

namespace A068563.P1038414426362579166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014491 (n + 1)) (A055975 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068563.P1038414426362579166

namespace A068563

/-- `record[lcm(A014491(n+1), A055975(n+1))]` -/
def P1038414426362579166.Spec : Prop :=
  ∀ n, (P1038414426362579166.a n : ℤ) = A068563 (n + 1)

end A068563

/-! ## A068563.P1639476666252397109

`eq[A000265(n+1), A014491(n+1)]+1`
-/

namespace A068563.P1639476666252397109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068563.P1639476666252397109

namespace A068563

/-- `eq[A000265(n+1), A014491(n+1)]+1` -/
def P1639476666252397109.Spec : Prop :=
  ∀ n, (P1639476666252397109.a n : ℤ) = A068563 (n + 1)

end A068563

/-! ## A068563.P10748335815174297676

`eq[A015910(n+1), A066602(n+1)]+1`
-/

namespace A068563.P10748335815174297676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068563.P10748335815174297676

namespace A068563

/-- `eq[A015910(n+1), A066602(n+1)]+1` -/
def P10748335815174297676.Spec : Prop :=
  ∀ n, (P10748335815174297676.a n : ℤ) = A068563 (n + 1)

end A068563

/-! ## A068563.P2337790614316828644

`eq[A066439(n+1), A066602(n+1)]+1`
-/

namespace A068563.P2337790614316828644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068563.P2337790614316828644

namespace A068563

/-- `eq[A066439(n+1), A066602(n+1)]+1` -/
def P2337790614316828644.Spec : Prop :=
  ∀ n, (P2337790614316828644.a n : ℤ) = A068563 (n + 1)

end A068563

/-! ## A068563.P9075617915095365277

`record[(n+1)/A000120((n+1)/A014491(n+1))]`
-/

namespace A068563.P9075617915095365277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014491 (n + 1) : ℚ))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068563.P9075617915095365277

namespace A068563

/-- `record[(n+1)/A000120((n+1)/A014491(n+1))]` -/
def P9075617915095365277.Spec : Prop :=
  ∀ n, P9075617915095365277.a n = (A068563 (n + 1) : ℚ)

end A068563

/-! ## A068563.P770248244866959567

`∪[A000079(n), A338370(n+1)]`
-/

namespace A068563.P770248244866959567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068563.P770248244866959567

namespace A068563

/-- `∪[A000079(n), A338370(n+1)]` -/
def P770248244866959567.Spec : Prop :=
  ∀ n, (P770248244866959567.a n : ℤ) = A068563 (n + 1)

end A068563

/-! ## A068563.P3507908564774127021

`∪[A008861(n), A338370(n+1)]`
-/

namespace A068563.P3507908564774127021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068563.P3507908564774127021

namespace A068563

/-- `∪[A008861(n), A338370(n+1)]` -/
def P3507908564774127021.Spec : Prop :=
  ∀ n, (P3507908564774127021.a n : ℤ) = A068563 (n + 1)

end A068563

/-!
# A068565: Denominators of Sum_{k=1..n} 1/(k * 2^k).

The programs for A068565, there is no canonical definition to state claims against.
-/

/-! ## A068565.P5011096221417301288

`A168294(A131352(n))+A131380(n)`
-/

namespace A068565.P5011096221417301288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168294 (A131352 n).toNat + A131380 n

end

end A068565.P5011096221417301288

/-!
# A068566: Numerator of Sum_{k=1..n} 1/(k * 2^k).

The programs for A068566, there is no canonical definition to state claims against.
-/

/-! ## A068566.P13343314894076561163

`A002034(∏{p}[A068102(n+1), #])`
-/

namespace A068566.P13343314894076561163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A068566.P13343314894076561163

/-! ## A068566.P2010682960047915910

`A006530(∏{p}[A068102(n+1), #])`
-/

namespace A068566.P2010682960047915910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A068566.P2010682960047915910

/-! ## A068566.P4496810069776055963

`A088387(∏{p}[A068102(n+1), #])`
-/

namespace A068566.P4496810069776055963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A068566.P4496810069776055963

/-!
# A068567: Numbers k such that gpf(k) < k/gpf(k) and gpf(k/gpf(k)) < gpf(k), where gpf(n) is the greatest prime factor of n, A006530.

The programs for A068567, the canonical program `A068567.P3560560262782570971` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068567 has offset 1).

The definition of A068567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068567.P5794123208643208807

`∩[A027854(n+1), A102750(n+1)]`
-/

namespace A068567.P5794123208643208807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068567.P5794123208643208807

namespace A068567

/-- `∩[A027854(n+1), A102750(n+1)]` -/
def P5794123208643208807.Spec : Prop :=
  ∀ n, (P5794123208643208807.a n : ℤ) = A068567 (n + 1)

end A068567

/-! ## A068567.P3560560262782570971

`∩[A048098(n+1), A102750(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A068567

/-- `∩[A048098(n+1), A102750(n+1)]` -/
def P3560560262782570971.Spec : Prop :=
  ∀ n, (P3560560262782570971.a n : ℤ) = A068567 (n + 1)

theorem P3560560262782570971.correct : P3560560262782570971.Spec := by
  intro n
  simp only [A068567, Nat.add_sub_cancel]

end A068567

/-! ## A068567.P6671150817799311688

`∩[A063539(n+1), A102750(n+1)]`
-/

namespace A068567.P6671150817799311688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068567.P6671150817799311688

namespace A068567

/-- `∩[A063539(n+1), A102750(n+1)]` -/
def P6671150817799311688.Spec : Prop :=
  ∀ n, (P6671150817799311688.a n : ℤ) = A068567 (n + 1)

end A068567

/-! ## A068567.P16704868318513827805

`∩[A085236(n+1), A102750(n+1)]`
-/

namespace A068567.P16704868318513827805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068567.P16704868318513827805

namespace A068567

/-- `∩[A085236(n+1), A102750(n+1)]` -/
def P16704868318513827805.Spec : Prop :=
  ∀ n, (P16704868318513827805.a n : ℤ) = A068567 (n + 1)

end A068567

/-! ## A068567.P16589673407285799844

`∩[A027854(n+1), A080363(n+1)]`
-/

namespace A068567.P16589673407285799844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068567.P16589673407285799844

namespace A068567

/-- `∩[A027854(n+1), A080363(n+1)]` -/
def P16589673407285799844.Spec : Prop :=
  ∀ n, (P16589673407285799844.a n : ℤ) = A068567 (n + 1)

end A068567

/-! ## A068567.P11991833958360342943

`∩[A048098(n+1), A080363(n+1)]`
-/

namespace A068567.P11991833958360342943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068567.P11991833958360342943

namespace A068567

/-- `∩[A048098(n+1), A080363(n+1)]` -/
def P11991833958360342943.Spec : Prop :=
  ∀ n, (P11991833958360342943.a n : ℤ) = A068567 (n + 1)

end A068567

/-! ## A068567.P4789834909003530968

`∩[A063539(n+1), A080363(n+1)]`
-/

namespace A068567.P4789834909003530968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068567.P4789834909003530968

namespace A068567

/-- `∩[A063539(n+1), A080363(n+1)]` -/
def P4789834909003530968.Spec : Prop :=
  ∀ n, (P4789834909003530968.a n : ℤ) = A068567 (n + 1)

end A068567

/-! ## A068567.P5270422742776009210

`∩[A080363(n+1), A085236(n+1)]`
-/

namespace A068567.P5270422742776009210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068567.P5270422742776009210

namespace A068567

/-- `∩[A080363(n+1), A085236(n+1)]` -/
def P5270422742776009210.Spec : Prop :=
  ∀ n, (P5270422742776009210.a n : ℤ) = A068567 (n + 1)

end A068567

/-! ## A068567.P17818606636439080276

`record[A243074(A027854(n+1))]`
-/

namespace A068567.P17818606636439080276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A027854 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068567.P17818606636439080276

namespace A068567

/-- `record[A243074(A027854(n+1))]` -/
def P17818606636439080276.Spec : Prop :=
  ∀ n, P17818606636439080276.a n = A068567 (n + 1)

end A068567

/-! ## A068567.P15206934197694539224

`record[A243074(A085236(n+1))]`
-/

namespace A068567.P15206934197694539224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A085236 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068567.P15206934197694539224

namespace A068567

/-- `record[A243074(A085236(n+1))]` -/
def P15206934197694539224.Spec : Prop :=
  ∀ n, P15206934197694539224.a n = A068567 (n + 1)

end A068567

/-! ## A068567.P1083264110808233309

`eq[A080367(n+1), A217581(n+1)]+1`
-/

namespace A068567.P1083264110808233309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068567.P1083264110808233309

namespace A068567

/-- `eq[A080367(n+1), A217581(n+1)]+1` -/
def P1083264110808233309.Spec : Prop :=
  ∀ n, (P1083264110808233309.a n : ℤ) = A068567 (n + 1)

end A068567

/-! ## A068567.P14500255497917638843

`lt[A087039(n+1), A217581(n+1)]+1`
-/

namespace A068567.P14500255497917638843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068567.P14500255497917638843

namespace A068567

/-- `lt[A087039(n+1), A217581(n+1)]+1` -/
def P14500255497917638843.Spec : Prop :=
  ∀ n, (P14500255497917638843.a n : ℤ) = A068567 (n + 1)

end A068567

/-! ## A068567.P9316408719365094059

`A061767(eq[A080367(n+1), A217581(n+1)])`
-/

namespace A068567.P9316408719365094059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068567.P9316408719365094059

namespace A068567

/-- `A061767(eq[A080367(n+1), A217581(n+1)])` -/
def P9316408719365094059.Spec : Prop :=
  ∀ n, P9316408719365094059.a n = A068567 (n + 1)

end A068567

/-! ## A068567.P14117758352320824268

`A020725(lt[A087039(n+1), A217581(n+1)])`
-/

namespace A068567.P14117758352320824268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068567.P14117758352320824268

namespace A068567

/-- `A020725(lt[A087039(n+1), A217581(n+1)])` -/
def P14117758352320824268.Spec : Prop :=
  ∀ n, P14117758352320824268.a n = A068567 (n + 1)

end A068567

/-! ## A068567.P3139044938659874966

`A326178(lt[A087039(n+1), A217581(n+1)])`
-/

namespace A068567.P3139044938659874966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068567.P3139044938659874966

namespace A068567

/-- `A326178(lt[A087039(n+1), A217581(n+1)])` -/
def P3139044938659874966.Spec : Prop :=
  ∀ n, P3139044938659874966.a n = A068567 (n + 1)

end A068567

/-!
# A068568: Let S = a subset of {n,n+1,n+2,..,n+m}, number of parts of S is more than 1. a(n) = smallest number m such that the product of parts of S is a square.

The programs for A068568, there is no canonical definition to state claims against.
-/

/-! ## A068568.P4671353770152516189

`A117498(A248174(n+1)+A011974(n+1))`
-/

namespace A068568.P4671353770152516189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (A248174 (n + 1) + A011974 (n + 1)).toNat

end

end A068568.P4671353770152516189

/-!
# A068571: Number of happy numbers <= 10^n.

The programs for A068571, there is no canonical definition to state claims against.
-/

/-! ## A068571.P12138601425423434100

`A175059((∑{e}[n+2, #]+n+1)^n)`
-/

namespace A068571.P12138601425423434100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175059 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + (n + 1)) ^ n)

end

end A068571.P12138601425423434100

/-!
# A068575: Numbers n such that, as strings, n is a substring of prime(n).

The programs for A068575, there is no canonical definition to state claims against.
-/

/-! ## A068575.P6897962220053550946

`A000720(A075902(n+1))`
-/

namespace A068575.P6897962220053550946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A075902 (n + 1)).toNat

end

end A068575.P6897962220053550946

/-! ## A068575.P4673202158679725413

`∩[A022465(n+1), A362060(n+1)]`
-/

namespace A068575.P4673202158679725413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068575.P4673202158679725413

/-! ## A068575.P10765143939608695460

`∪[A067248(n+1), A067928(n+1)]`
-/

namespace A068575.P10765143939608695460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068575.P10765143939608695460

/-!
# A068577: Numbers k such that tau(k)^2 > phi(k).

The programs for A068577, the canonical program `A068577.P762481586230944513` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068577 has offset 1).

The definition of A068577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068577.P17704929151733544793

`lt[A000010(n+1), A000005(n+1)²]+1`
-/

namespace A068577.P17704929151733544793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068577.P17704929151733544793

namespace A068577

/-- `lt[A000010(n+1), A000005(n+1)²]+1` -/
def P17704929151733544793.Spec : Prop :=
  ∀ n, (P17704929151733544793.a n : ℤ) = A068577 (n + 1)

end A068577

/-! ## A068577.P624941820042476240

`lt[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1, A035116(n+1)]+1`
-/

namespace A068577.P624941820042476240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n + 1

end

end A068577.P624941820042476240

namespace A068577

/-- `lt[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1, A035116(n+1)]+1` -/
def P624941820042476240.Spec : Prop :=
  ∀ n, (P624941820042476240.a n : ℤ) = A068577 (n + 1)

end A068577

/-! ## A068577.P13972728968322299012

`lt[A000010(n+1), A035116(n+1)]+1`
-/

namespace A068577.P13972728968322299012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068577.P13972728968322299012

namespace A068577

/-- `lt[A000010(n+1), A035116(n+1)]+1` -/
def P13972728968322299012.Spec : Prop :=
  ∀ n, (P13972728968322299012.a n : ℤ) = A068577 (n + 1)

end A068577

/-! ## A068577.P4272214583254727037

`lt[A000010(n+1), Δ[A006218(n)]²]+1`
-/

namespace A068577.P4272214583254727037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068577.P4272214583254727037

namespace A068577

/-- `lt[A000010(n+1), Δ[A006218(n)]²]+1` -/
def P4272214583254727037.Spec : Prop :=
  ∀ n, (P4272214583254727037.a n : ℤ) = A068577 (n + 1)

end A068577

/-! ## A068577.P3180128016077712279

`lt[A039649(n+1), Δ[A006218(n)]²]+1`
-/

namespace A068577.P3180128016077712279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068577.P3180128016077712279

namespace A068577

/-- `lt[A039649(n+1), Δ[A006218(n)]²]+1` -/
def P3180128016077712279.Spec : Prop :=
  ∀ n, (P3180128016077712279.a n : ℤ) = A068577 (n + 1)

end A068577

/-! ## A068577.P127093281307542075

`lt[A039649(n+1), A000005(n+1)²]+1`
-/

namespace A068577.P127093281307542075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068577.P127093281307542075

namespace A068577

/-- `lt[A039649(n+1), A000005(n+1)²]+1` -/
def P127093281307542075.Spec : Prop :=
  ∀ n, (P127093281307542075.a n : ℤ) = A068577 (n + 1)

end A068577

/-! ## A068577.P762481586230944513

`A020725(lt[A279507(n+1), ∏{e}[n+1, #+1]])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068577

/-- `A020725(lt[A279507(n+1), ∏{e}[n+1, #+1]])` -/
def P762481586230944513.Spec : Prop :=
  ∀ n, P762481586230944513.a n = A068577 (n + 1)

theorem P762481586230944513.correct : P762481586230944513.Spec := by
  intro n
  simp only [A068577, Nat.add_sub_cancel]

end A068577

/-! ## A068577.P9262196459081929372

`A020725(lt[A279507(n+1), ∑{d}[n+1, (n+2)%#]+1])`
-/

namespace A068577.P9262196459081929372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279507 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (n + 2) % d + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A068577.P9262196459081929372

namespace A068577

/-- `A020725(lt[A279507(n+1), ∑{d}[n+1, (n+2)%#]+1])` -/
def P9262196459081929372.Spec : Prop :=
  ∀ n, P9262196459081929372.a n = A068577 (n + 1)

end A068577

/-! ## A068577.P17037633189960819890

`A020725(lt[A279507(n+1), A032741(n+1)+1])`
-/

namespace A068577.P17037633189960819890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068577.P17037633189960819890

namespace A068577

/-- `A020725(lt[A279507(n+1), A032741(n+1)+1])` -/
def P17037633189960819890.Spec : Prop :=
  ∀ n, P17037633189960819890.a n = A068577 (n + 1)

theorem P17037633189960819890.correct : P17037633189960819890.Spec := by
  intro n
  simp only [A068577, Nat.add_sub_cancel, A068577.P17037633189960819890.f1, A068577.P17037633189960819890.f2, A068577.P17037633189960819890.a, A068577.P762481586230944513.f1, A068577.P762481586230944513.f3, A068577.P762481586230944513.f2, A068577.P762481586230944513.a, A020725, A020725.P9662279067013051637.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A279507, A279507.P3039935428284071331.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068577

/-! ## A068577.P12383883716378274717

`A020725(lt[A279507(n+1)+1, A334954(n+1)])`
-/

namespace A068577.P12383883716378274717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279507 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068577.P12383883716378274717

namespace A068577

/-- `A020725(lt[A279507(n+1)+1, A334954(n+1)])` -/
def P12383883716378274717.Spec : Prop :=
  ∀ n, P12383883716378274717.a n = A068577 (n + 1)

end A068577

/-!
# A068578: Numbers k such that tau(k)*sigma(k) > k*phi(k).

The programs for A068578, there is no canonical definition to state claims against.
-/

/-! ## A068578.P867241283561573051

`lt[xor(2, n), A026422(∏{e}[n, 3*#])]`
-/

namespace A068578.P867241283561573051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (∏ p ∈ Nat.primeFactors (f3 n), 3 * Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068578.P867241283561573051

/-! ## A068578.P7629992147750592866

`lt[log(A003113(n)), A032741(n)]`
-/

namespace A068578.P7629992147750592866
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A003113 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A068578.P7629992147750592866

/-! ## A068578.P13942763456014420265

`lt[A002618(n+1), A064840(n+1)]+1`
-/

namespace A068578.P13942763456014420265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068578.P13942763456014420265

/-! ## A068578.P13732852463262637640

`lt[A000041(n), A125316(A032741(n))]`
-/

namespace A068578.P13732852463262637640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125316 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068578.P13732852463262637640

/-! ## A068578.P2572067598953434334

`lt[A072231(n+1), A028557(A032741(n))]`
-/

namespace A068578.P2572067598953434334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068578.P2572067598953434334

/-!
# A068579: Let phi_m(x) = phi(phi(...(phi(x))...)) m times; sequence gives values of k such that phi_3(k) = tau(k).

The programs for A068579, there is no canonical definition to state claims against.
-/

/-! ## A068579.P9526104971575823716

`eq[A000005(n+1), A049099(n+1)]+1`
-/

namespace A068579.P9526104971575823716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068579.P9526104971575823716

/-! ## A068579.P7489881360294463764

`eq[∑{d}[n+1, n²%#]+1, A010554(A000010(n+1))]+1`
-/

namespace A068579.P7489881360294463764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A068579.P7489881360294463764

/-! ## A068579.P14186623151955956887

`eq[∑{d}[n+1, 1-#]+A000203(n+1), A049099(n+1)]+1`
-/

namespace A068579.P14186623151955956887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ)) + A000203 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A068579.P14186623151955956887

/-!
# A068580: Let phi_m(x) = phi(phi(...(phi(x))...)) m times; sequence gives values of k such that phi_2(k) = tau(k).

The programs for A068580, there is no canonical definition to state claims against.
-/

/-! ## A068580.P16098902213531409379

`eq[A000005(n+1), A010554(n+1)]+1`
-/

namespace A068580.P16098902213531409379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068580.P16098902213531409379

/-! ## A068580.P12461167656384463413

`eq[A002246(A225530(n)), A145154(n)]`
-/

namespace A068580.P12461167656384463413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002246 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068580.P12461167656384463413

/-! ## A068580.P2625161834567196649

`eq[A000005(n+1), A000010(A000010(n+1))]+1`
-/

namespace A068580.P2625161834567196649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068580.P2625161834567196649

/-! ## A068580.P16251982376148326449

`eq[A010554(n+1), A122668(n+1)]+1`
-/

namespace A068580.P16251982376148326449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068580.P16251982376148326449

/-!
# A068581: Let phi_m(x) = phi(phi(...(phi(x))...)) m times; sequence gives values of k such that phi_4(k) = tau(k).

The programs for A068581, the canonical program `A068581.P4641258875104326582` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068581 has offset 1).

The definition of A068581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068581.P4641258875104326582

`eq[A000005(n+1), A049100(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A068581

/-- `eq[A000005(n+1), A049100(n+1)]+1` -/
def P4641258875104326582.Spec : Prop :=
  ∀ n, (P4641258875104326582.a n : ℤ) = A068581 (n + 1)

theorem P4641258875104326582.correct : P4641258875104326582.Spec := by
  intro n
  simp only [A068581, Nat.add_sub_cancel]

end A068581

/-! ## A068581.P3530396039542751994

`eq[A000005(n+1), A010554(A010554(n+1))]+1`
-/

namespace A068581.P3530396039542751994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A010554 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068581.P3530396039542751994

namespace A068581

/-- `eq[A000005(n+1), A010554(A010554(n+1))]+1` -/
def P3530396039542751994.Spec : Prop :=
  ∀ n, (P3530396039542751994.a n : ℤ) = A068581 (n + 1)

end A068581

/-!
# A068582: Let phi_m(x) = phi(phi(...(phi(x))...)) m times; sequence gives values of k such that phi_5(k) = tau(k).

The programs for A068582, the canonical program `A068582.P1025897322335427898` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068582 has offset 1).

The definition of A068582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068582.P1025897322335427898

`eq[A000005(n+1), A049107(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068582

/-- `eq[A000005(n+1), A049107(n+1)]+1` -/
def P1025897322335427898.Spec : Prop :=
  ∀ n, (P1025897322335427898.a n : ℤ) = A068582 (n + 1)

theorem P1025897322335427898.correct : P1025897322335427898.Spec := by
  intro n
  simp only [A068582, Nat.add_sub_cancel]

end A068582

/-! ## A068582.P1208293195804708793

`eq[A005127(n), A097795(n+1)]`
-/

namespace A068582.P1208293195804708793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068582.P1208293195804708793

namespace A068582

/-- `eq[A005127(n), A097795(n+1)]` -/
def P1208293195804708793.Spec : Prop :=
  ∀ n, (P1208293195804708793.a n : ℤ) = A068582 (n + 1)

end A068582

/-! ## A068582.P13839871622649737587

`eq[A005128(n), A097795(n+1)]`
-/

namespace A068582.P13839871622649737587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068582.P13839871622649737587

namespace A068582

/-- `eq[A005128(n), A097795(n+1)]` -/
def P13839871622649737587.Spec : Prop :=
  ∀ n, (P13839871622649737587.a n : ℤ) = A068582 (n + 1)

end A068582

/-! ## A068582.P6939889740329240892

`eq[A007012(n), A097795(n+1)]`
-/

namespace A068582.P6939889740329240892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068582.P6939889740329240892

namespace A068582

/-- `eq[A007012(n), A097795(n+1)]` -/
def P6939889740329240892.Spec : Prop :=
  ∀ n, (P6939889740329240892.a n : ℤ) = A068582 (n + 1)

end A068582

/-! ## A068582.P7331501515661470931

`eq[A062830(n), A097795(n+1)]`
-/

namespace A068582.P7331501515661470931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068582.P7331501515661470931

namespace A068582

/-- `eq[A062830(n), A097795(n+1)]` -/
def P7331501515661470931.Spec : Prop :=
  ∀ n, (P7331501515661470931.a n : ℤ) = A068582 (n + 1)

end A068582

/-!
# A068583: Let p and q be distinct primes such that p^x - q^y = 2^h with h>=0, x>1, y>1. Sequence gives p^x arranged in increasing order.

The programs for A068583, there is no canonical definition to state claims against.
-/

/-! ## A068583.P49287939938538271

`A319152(∏{d}[A353955(n), #])`
-/

namespace A068583.P49287939938538271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319152 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A068583.P49287939938538271

/-!
# A068584: Numbers k such that the denominator of (Sum_{j=1..k} 1/j)^2 equals the denominator of Sum_{j=1..k} 1/j^2.

The programs for A068584, there is no canonical definition to state claims against.
-/

/-! ## A068584.P13018360093114908704

`∑[gcd(A048673(n+1), A239604(n+1))]`
-/

namespace A068584.P13018360093114908704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048673 (n + 1)) (A239604 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068584.P13018360093114908704

/-!
# A068587: Multiplicative 3-wave sequence starting with 1,2,3.

The programs for A068587, there is no canonical definition to state claims against.
-/

/-! ## A068587.P8758326974439492973

`a(xor(1, n-3))*a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A068587.P8758326974439492973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (Int.xor 1 ((n : ℤ) - 3)).toNat * a (n - 1)

end

end A068587.P8758326974439492973

/-! ## A068587.P1453480811609289068

`a(n-(A033999(n)+3))*a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A068587.P1453480811609289068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a ((n : ℤ) - (A033999 n + 3)).toNat * a (n - 1)

end

end A068587.P1453480811609289068

/-! ## A068587.P5246540218109535056

`a(n-1-A000032(gcd(n, n+2)))*a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A068587.P5246540218109535056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a ((n : ℤ) - 1 - A000032 (Nat.gcd n (n + 2))).toNat * a (n - 1)

end

end A068587.P5246540218109535056

/-!
# A068589: Denominator(Sum_{i=1..n} 1/i^3)/denominator(Sum_{i=1..n} 1/i).

The programs for A068589, there is no canonical definition to state claims against.
-/

/-! ## A068589.P4208796934268541191

`A007409(n+1)/A002805(n+1)`
-/

namespace A068589.P4208796934268541191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007409 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A068589.P4208796934268541191

/-! ## A068589.P8361677306783493414

`A007409(n+1)/A213999(∑[n+2]-1)`
-/

namespace A068589.P8361677306783493414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007409 (n + 1) : ℚ) / (A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℚ)

end

end A068589.P8361677306783493414

/-! ## A068589.P4314622843778477437

`ceil(A249950(n+1)/(n+1))/A002805(n+1)`
-/

namespace A068589.P4314622843778477437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A249950 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / (A002805 (n + 1) : ℚ)

end

end A068589.P4314622843778477437

/-! ## A068589.P4741879920669271928

`ceil(A249950(n+1)/(n+1))/A213999(∑[n+2]-1)`
-/

namespace A068589.P4741879920669271928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A249950 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / (A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℚ)

end

end A068589.P4741879920669271928

/-! ## A068589.P3929003497078932835

`A007409(n+1)/(A001008(n+1)-A064169(n+1))`
-/

namespace A068589.P3929003497078932835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007409 (n + 1) : ℚ) / (A001008 (n + 1) - A064169 (n + 1) : ℚ)

end

end A068589.P3929003497078932835

/-! ## A068589.P13949825108229939062

`A007409(n+1)/lcm(A027611(n+1), A027611(n+2))`
-/

namespace A068589.P13949825108229939062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007409 (n + 1) : ℚ) / (Int.lcm (A027611 (n + 1)) (A027611 (n + 2)) : ℚ)

end

end A068589.P13949825108229939062

/-! ## A068589.P5620486276181121843

`ceil(A249950(n+1)/(n+1))/(A001008(n+1)-A064169(n+1))`
-/

namespace A068589.P5620486276181121843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A249950 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / (A001008 (n + 1) - A064169 (n + 1) : ℚ)

end

end A068589.P5620486276181121843

/-!
# A068590: Number of different Euler multigraphs with n edges, loops allowed.

The programs for A068590, there is no canonical definition to state claims against.
-/

/-! ## A068590.P8235023635009359116

`A339166(A339166(3*n+2))+A049311(n+1)`
-/

namespace A068590.P8235023635009359116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339166 (A339166 (3 * n + 2)).toNat + A049311 (n + 1)

end

end A068590.P8235023635009359116

/-! ## A068590.P3688529237805549119

`A049311(n+1)+and(n, A293606(n+3))`
-/

namespace A068590.P3688529237805549119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049311 (n + 1) + Int.land (n : ℤ) (A293606 (n + 3))

end

end A068590.P3688529237805549119

/-! ## A068590.P8093662666287143615

`A049311(n+1)+A034329(A034331(n))`
-/

namespace A068590.P8093662666287143615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049311 (n + 1) + A034329 (A034331 n).toNat

end

end A068590.P8093662666287143615

/-!
# A068591: Nonessential triangular numbers (conjectured).

The programs for A068591, there is no canonical definition to state claims against.
-/

/-! ## A068591.P11331742905625274990

`A144100(2*n+5)-A144108(A144107(n+1))`
-/

namespace A068591.P11331742905625274990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144100 (2 * n + 5) - A144108 (A144107 (n + 1)).toNat

end

end A068591.P11331742905625274990

/-! ## A068591.P4604712408890321566

`A205783(2*(n+2))+A001222(A135576(n+1))`
-/

namespace A068591.P4604712408890321566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (2 * (n + 2)) + A001222 (A135576 (n + 1)).toNat

end

end A068591.P4604712408890321566

/-! ## A068591.P17153398195978631303

`A380573(A322338(n+1)+A018252(2*(n+2)))`
-/

namespace A068591.P17153398195978631303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A322338 (n + 1) + A018252 (2 * (n + 2))).toNat

end

end A068591.P17153398195978631303

/-!
# A068594: Factorable subsets: the number of proper subsets S of {1,2,...,n} that can be expressed in the form S=A*B, where S is defined to be the set {a(i)*b(j)| a(i) in A, b(j) in B}.

The programs for A068594, there is no canonical definition to state claims against.
-/

/-! ## A068594.P6905411774545336446

`A237769(A047136(n)+n)`
-/

namespace A068594.P6905411774545336446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237769 (A047136 n + (n : ℤ)).toNat

end

end A068594.P6905411774545336446

/-! ## A068594.P6746651902356929004

`∑[A299188(n+2)%A324346(2*n)]`
-/

namespace A068594.P6746651902356929004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299188 (n + 2)) (A324346 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068594.P6746651902356929004

/-! ## A068594.P4946688494361214700

`∑[A234615(A002057(∑{d}[n+1, #]-(n+1)))]`
-/

namespace A068594.P4946688494361214700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234615 (A002057 (∑ d ∈ Nat.divisors (f2 n), d - (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068594.P4946688494361214700

/-! ## A068594.P1630374678358457711

`A182984(n)+A133776(A056440(n+1))`
-/

namespace A068594.P1630374678358457711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182984 n + A133776 (A056440 (n + 1)).toNat

end

end A068594.P1630374678358457711

/-! ## A068594.P16288341707989440667

`A123068(A282503(n+1))%A250120(n)`
-/

namespace A068594.P16288341707989440667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123068 (A282503 (n + 1)).toNat) (A250120 n)

end

end A068594.P16288341707989440667

/-!
# A068595: Number of functions from {1,2,...,n} to {1,2,...,n} such that the sum of the function values is 0 mod 3.

The programs for A068595, there is no canonical definition to state claims against.
-/

/-! ## A068595.P11235718460873432470

`A002264((n+1)^(char[1]+1+n))`
-/

namespace A068595.P11235718460873432470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n + 1) ^ ((if ∃ j, f1 j = n then 1 else 0) + 1 + n))

end

end A068595.P11235718460873432470

/-!
# A068596: Number of 4-ary Lyndon words whose trace and subtrace are both 0 mod 4.

The programs for A068596, there is no canonical definition to state claims against.
-/

/-! ## A068596.P3729451332618416253

`A143728(2*(n+2))+A085863(A000079(2*n+1))`
-/

namespace A068596.P3729451332618416253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143728 (2 * (n + 2)) + A085863 (A000079 (2 * n + 1)).toNat

end

end A068596.P3729451332618416253

/-!
# A068597: Barriers for bigomega(n): numbers n such that, for all m < n, m + bigomega(m) <= n.

The programs for A068597, there is no canonical definition to state claims against.
-/

/-! ## A068597.P1775008355782416292

`A003059(4*A348847(n+1))`
-/

namespace A068597.P1775008355782416292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (4 * A348847 (n + 1)).toNat

end

end A068597.P1775008355782416292

/-! ## A068597.P5378662692062795434

`record[A000005(A026928(n+1)+2)]`
-/

namespace A068597.P5378662692062795434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A026928 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068597.P5378662692062795434

/-! ## A068597.P2866215414026695502

`record[A000005(2*A199133(n+1))]`
-/

namespace A068597.P2866215414026695502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A199133 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068597.P2866215414026695502

/-! ## A068597.P9265696451165146370

`record[A000005(2*A343960(n+1))]`
-/

namespace A068597.P9265696451165146370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A343960 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068597.P9265696451165146370

/-! ## A068597.P13473785967607194636

`∩[A217660(n+1), A328592(n+1)]`
-/

namespace A068597.P13473785967607194636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068597.P13473785967607194636

/-!
# A068598: Number of maximal sets of partitions of n with property that all parts in all partitions in the set are distinct.

The programs for A068598, there is no canonical definition to state claims against.
-/

/-! ## A068598.P14029099340063323827

`A210718(3*n)+A112465(A210709(2*n+1))`
-/

namespace A068598.P14029099340063323827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210718 (3 * n) + A112465 (A210709 (2 * n + 1)).toNat

end

end A068598.P14029099340063323827

/-!
# A068599: Number of n-uniform tilings.

The programs for A068599, there is no canonical definition to state claims against.
-/

/-! ## A068599.P17537076520902178247

`Δ[A299782(a(floor(n/10))+n)]` with `a(0)=0`
-/

namespace A068599.P17537076520902178247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A299782 (f1 ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068599.P17537076520902178247

