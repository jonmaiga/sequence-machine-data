import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B006.C002
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

/-!
# A338503: a(n) is the square root of A338502(1) XOR ... XOR A338502(n) (where XOR denotes the bitwise XOR operator).

The programs for A338503, there is no canonical definition to state claims against.
-/

/-! ## A338503.P4175053936127155553

`A035614(lt[A227351(n), 12])`
-/

namespace A338503.P4175053936127155553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227351 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A338503.P4175053936127155553

/-! ## A338503.P10507302031772469986

`A124754(lt[A096111(n), A136004(n+2)])`
-/

namespace A338503.P10507302031772469986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338503.P10507302031772469986

/-! ## A338503.P6852622432371618582

`A116922(n+1)%A115949(A043317(n+1))`
-/

namespace A338503.P6852622432371618582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116922 (n + 1)) (A115949 (A043317 (n + 1)).toNat)

end

end A338503.P6852622432371618582

/-!
# A338504: Number of integers less than n with the same sum of proper divisors as n.

The programs for A338504, there is no canonical definition to state claims against.
-/

/-! ## A338504.P3226928783060394946

`C(A355930(n+1), A301598(A301598(n+1)))`
-/

namespace A338504.P3226928783060394946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355930 (n + 1)).toNat (A301598 (A301598 (n + 1)).toNat).toNat

end

end A338504.P3226928783060394946

/-! ## A338504.P13947799577003419573

`A355524(lcm(2, A245579(n+1)))`
-/

namespace A338504.P13947799577003419573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355524 (Int.lcm 2 (A245579 (n + 1)))

end

end A338504.P13947799577003419573

/-! ## A338504.P8457528031178408757

`A230980((n*and(1, ∑{e}[n+1, #]!))%A244545(n+1))`
-/

namespace A338504.P8457528031178408757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.tmod (n * Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ) (A244545 (n + 1))).toNat

end

end A338504.P8457528031178408757

/-! ## A338504.P396600271362939225

`A316524(A064989(n+1)^(∏{p}[n+1, (n+1)/#]%(n+1)))`
-/

namespace A338504.P396600271362939225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (SequenceMachineLib.roundAway ((A064989 (n + 1) : ℚ) ^ (Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ) : ℤ))).toNat

end

end A338504.P396600271362939225

/-! ## A338504.P13786460328477850609

`A000195(A060482(n+1))*A010051(n+1)`
-/

namespace A338504.P13786460328477850609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A060482 (n + 1)).toNat * A010051 (n + 1)

end

end A338504.P13786460328477850609

/-!
# A338505: Number of positive integers less than n with the same product of decimal digits as n.

The programs for A338505, there is no canonical definition to state claims against.
-/

/-! ## A338505.P14857163034690894192

`and(floor(n/10), A320458(comp[5*n]))`
-/

namespace A338505.P14857163034690894192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 10⌋ (A320458 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A338505.P14857163034690894192

/-! ## A338505.P2636618754414551170

`and(p?[A091946(n)], A054899(n))`
-/

namespace A338505.P2636618754414551170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A054899 n)

end

end A338505.P2636618754414551170

/-! ## A338505.P17441141286871580422

`and(p?[A091946(n)], A059995(n))`
-/

namespace A338505.P17441141286871580422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A059995 n)

end

end A338505.P17441141286871580422

/-! ## A338505.P4078412319505749773

`and(A059995(n), A061346(A284635(n+1)))`
-/

namespace A338505.P4078412319505749773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059995 n) (A061346 (A284635 (n + 1)).toNat)

end

end A338505.P4078412319505749773

/-!
# A338506: a(n) is the number of subsets of divisors of n.

The programs for A338506, the canonical program `A338506.P3325007894870132421` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338506 has offset 1).

The definition of A338506 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100587, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338506.P3325007894870132421

`A100587(n+1)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338506

/-- `A100587(n+1)+1` -/
def P3325007894870132421.Spec : Prop :=
  ∀ n, P3325007894870132421.a n = A338506 (n + 1)

theorem P3325007894870132421.correct : P3325007894870132421.Spec := by
  intro n
  simp only [A338506, Nat.add_sub_cancel]

end A338506

/-! ## A338506.P4898583805108222774

`2*A100577(n+1)`
-/

namespace A338506.P4898583805108222774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100577 (n + 1)

end

end A338506.P4898583805108222774

namespace A338506

/-- `2*A100577(n+1)` -/
def P4898583805108222774.Spec : Prop :=
  ∀ n, P4898583805108222774.a n = A338506 (n + 1)

end A338506

/-! ## A338506.P7869273896970121420

`2^A000005(n+1)`
-/

namespace A338506.P7869273896970121420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A338506.P7869273896970121420

namespace A338506

/-- `2^A000005(n+1)` -/
def P7869273896970121420.Spec : Prop :=
  ∀ n, P7869273896970121420.a n = (A338506 (n + 1) : ℚ)

end A338506

/-! ## A338506.P6729158254915374503

`∏{d}[n+1, ceil(root(2, #))]`
-/

namespace A338506.P6729158254915374503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌈(2 : ℝ) ^ (1 / (d : ℝ))⌉

end

end A338506.P6729158254915374503

namespace A338506

/-- `∏{d}[n+1, ceil(root(2, #))]` -/
def P6729158254915374503.Spec : Prop :=
  ∀ n, P6729158254915374503.a n = A338506 (n + 1)

end A338506

/-! ## A338506.P4013463492137982507

`2^∏{e}[n+1, #+1]`
-/

namespace A338506.P4013463492137982507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A338506.P4013463492137982507

namespace A338506

/-- `2^∏{e}[n+1, #+1]` -/
def P4013463492137982507.Spec : Prop :=
  ∀ n, (P4013463492137982507.a n : ℤ) = A338506 (n + 1)

end A338506

/-! ## A338506.P12012601629232005439

`2^∑{d}[n+1, gcd(n, #)]`
-/

namespace A338506.P12012601629232005439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A338506.P12012601629232005439

namespace A338506

/-- `2^∑{d}[n+1, gcd(n, #)]` -/
def P12012601629232005439.Spec : Prop :=
  ∀ n, (P12012601629232005439.a n : ℤ) = A338506 (n + 1)

end A338506

/-! ## A338506.P572087301528467925

`2^∑{d}[n+1, ceil(1/#)]`
-/

namespace A338506.P572087301528467925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ : ℤ)

end

end A338506.P572087301528467925

namespace A338506

/-- `2^∑{d}[n+1, ceil(1/#)]` -/
def P572087301528467925.Spec : Prop :=
  ∀ n, P572087301528467925.a n = (A338506 (n + 1) : ℚ)

end A338506

/-! ## A338506.P15701841729887563015

`2^Δ[A006218(n)]`
-/

namespace A338506.P15701841729887563015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A338506.P15701841729887563015

namespace A338506

/-- `2^Δ[A006218(n)]` -/
def P15701841729887563015.Spec : Prop :=
  ∀ n, P15701841729887563015.a n = (A338506 (n + 1) : ℚ)

end A338506

/-! ## A338506.P11978635717701609777

`2^Δ[A054519(n)]`
-/

namespace A338506.P11978635717701609777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A338506.P11978635717701609777

namespace A338506

/-- `2^Δ[A054519(n)]` -/
def P11978635717701609777.Spec : Prop :=
  ∀ n, P11978635717701609777.a n = (A338506 (n + 1) : ℚ)

end A338506

/-! ## A338506.P1679690924947643273

`2^sqrt(A035116(n+1))`
-/

namespace A338506.P1679690924947643273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A035116 (n + 1) : ℝ))

end

end A338506.P1679690924947643273

namespace A338506

/-- `2^sqrt(A035116(n+1))` -/
def P1679690924947643273.Spec : Prop :=
  ∀ n, P1679690924947643273.a n = (A338506 (n + 1) : ℝ)

end A338506

/-! ## A338506.P3420260842114299862

`sqrt(2^A062011(n+1))`
-/

namespace A338506.P3420260842114299862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 : ℚ) ^ (A062011 (n + 1) : ℤ) : ℝ)

end

end A338506.P3420260842114299862

namespace A338506

/-- `sqrt(2^A062011(n+1))` -/
def P3420260842114299862.Spec : Prop :=
  ∀ n, P3420260842114299862.a n = (A338506 (n + 1) : ℝ)

end A338506

/-! ## A338506.P9769841863435992112

`4^(A000005(2*n-(n-1))/2)`
-/

namespace A338506.P9769841863435992112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ ((A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2 : ℝ)

end

end A338506.P9769841863435992112

namespace A338506

/-- `4^(A000005(2*n-(n-1))/2)` -/
def P9769841863435992112.Spec : Prop :=
  ∀ n, P9769841863435992112.a n = (A338506 (n + 1) : ℝ)

end A338506

/-! ## A338506.P5102102162898844965

`A000079(Δ[A006218(n)])`
-/

namespace A338506.P5102102162898844965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat

end

end A338506.P5102102162898844965

namespace A338506

/-- `A000079(Δ[A006218(n)])` -/
def P5102102162898844965.Spec : Prop :=
  ∀ n, P5102102162898844965.a n = A338506 (n + 1)

end A338506

/-! ## A338506.P12535163393622751738

`A000079(A000005(n+1))`
-/

namespace A338506.P12535163393622751738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000005 (n + 1)).toNat

end

end A338506.P12535163393622751738

namespace A338506

/-- `A000079(A000005(n+1))` -/
def P12535163393622751738.Spec : Prop :=
  ∀ n, P12535163393622751738.a n = A338506 (n + 1)

end A338506

/-! ## A338506.P6013485993703000664

`A016116(A062011(n+1))`
-/

namespace A338506.P6013485993703000664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A062011 (n + 1)).toNat

end

end A338506.P6013485993703000664

namespace A338506

/-- `A016116(A062011(n+1))` -/
def P6013485993703000664.Spec : Prop :=
  ∀ n, P6013485993703000664.a n = A338506 (n + 1)

end A338506

/-! ## A338506.P7696284093824429974

`A039597(A066446(n+1))`
-/

namespace A338506.P7696284093824429974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039597 (A066446 (n + 1)).toNat

end

end A338506.P7696284093824429974

namespace A338506

/-- `A039597(A066446(n+1))` -/
def P7696284093824429974.Spec : Prop :=
  ∀ n, P7696284093824429974.a n = A338506 (n + 1)

end A338506

/-! ## A338506.P1128982340909285576

`A082693(A035116(n+1))`
-/

namespace A338506.P1128982340909285576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082693 (A035116 (n + 1)).toNat

end

end A338506.P1128982340909285576

namespace A338506

/-- `A082693(A035116(n+1))` -/
def P1128982340909285576.Spec : Prop :=
  ∀ n, P1128982340909285576.a n = A338506 (n + 1)

end A338506

/-! ## A338506.P16189972058751989032

`A017912(A131089(n+1))`
-/

namespace A338506.P16189972058751989032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (A131089 (n + 1)).toNat

end

end A338506.P16189972058751989032

namespace A338506

/-- `A017912(A131089(n+1))` -/
def P16189972058751989032.Spec : Prop :=
  ∀ n, P16189972058751989032.a n = A338506 (n + 1)

end A338506

/-! ## A338506.P16269939278395109942

`A048656(A105555(n+1))`
-/

namespace A338506.P16269939278395109942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (A105555 (n + 1)).toNat

end

end A338506.P16269939278395109942

namespace A338506

/-- `A048656(A105555(n+1))` -/
def P16269939278395109942.Spec : Prop :=
  ∀ n, P16269939278395109942.a n = A338506 (n + 1)

end A338506

/-! ## A338506.P6239472960615716192

`A018048(A145154(n+1))`
-/

namespace A338506.P6239472960615716192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (A145154 (n + 1)).toNat

end

end A338506.P6239472960615716192

namespace A338506

/-- `A018048(A145154(n+1))` -/
def P6239472960615716192.Spec : Prop :=
  ∀ n, P6239472960615716192.a n = A338506 (n + 1)

end A338506

/-!
# A338507: Irregular table T(n, k) read by rows, n > 0 and k = 1..A000005(n); T(n, k) is the number of subsets of divisors of n with least common multiple of elements equal to the k-th divisor of n.

The programs for A338507, there is no canonical definition to state claims against.
-/

/-! ## A338507.P620296135116679628

`2*A069626(A027750(n+1))`
-/

namespace A338507.P620296135116679628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069626 (A027750 (n + 1)).toNat

end

end A338507.P620296135116679628

/-! ## A338507.P12706222838372006927

`2*A069626(abs(A233773(n+1)))`
-/

namespace A338507.P12706222838372006927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069626 |A233773 (n + 1)|.toNat

end

end A338507.P12706222838372006927

/-! ## A338507.P13906117572696959080

`lcm(2, A076078(A027750(2*n-n+1)))`
-/

namespace A338507.P13906117572696959080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A076078 (A027750 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat)

end

end A338507.P13906117572696959080

/-! ## A338507.P8961955403118117176

`A005843(A069626(A027750(n+1)))`
-/

namespace A338507.P8961955403118117176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A069626 (A027750 (n + 1)).toNat).toNat

end

end A338507.P8961955403118117176

/-! ## A338507.P14975918750586098256

`A000267(A069626(A027750(n+1))²)`
-/

namespace A338507.P14975918750586098256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A069626 (A027750 (n + 1)).toNat ^ 2).toNat

end

end A338507.P14975918750586098256

/-! ## A338507.P6571274546378598867

`A076078(lcm(2, A076078(A027750(n+1))))`
-/

namespace A338507.P6571274546378598867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (Int.lcm 2 (A076078 (A027750 (n + 1)).toNat))

end

end A338507.P6571274546378598867

/-!
# A338508: Irregular table T(n, k) read by rows, n > 0 and k = 1..A000005(n); T(n, k) is the number of nonempty subsets of divisors of n with greatest common divisor of elements equal to the k-th divisor of n.

The programs for A338508, there is no canonical definition to state claims against.
-/

/-! ## A338508.P10972707437987359981

`A076078(A056538(n+1))`
-/

namespace A338508.P10972707437987359981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (A056538 (n + 1)).toNat

end

end A338508.P10972707437987359981

/-! ## A338508.P11567396378056271353

`A076078(abs(A233772(n+1)))`
-/

namespace A338508.P11567396378056271353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 |A233772 (n + 1)|.toNat

end

end A338508.P11567396378056271353

/-! ## A338508.P2164804502352272099

`∑{d}[A056538(n+1), A305564(#)]`
-/

namespace A338508.P2164804502352272099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305564 d

end

end A338508.P2164804502352272099

/-! ## A338508.P6196237025793173153

`∑{d}[A233772(n+1), A305564(#)]`
-/

namespace A338508.P6196237025793173153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305564 d

end

end A338508.P6196237025793173153

/-! ## A338508.P9346157511800531339

`A076078(A061017(n+1)/A027750(n+1))`
-/

namespace A338508.P9346157511800531339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (SequenceMachineLib.roundAway ((A061017 (n + 1) : ℚ) / (A027750 (n + 1) : ℚ))).toNat

end

end A338508.P9346157511800531339

/-! ## A338508.P2748551349508803889

`A076078(gcd(A061017(n+1), A233772(n+1)))`
-/

namespace A338508.P2748551349508803889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (Int.gcd (A061017 (n + 1)) (A233772 (n + 1)))

end

end A338508.P2748551349508803889

/-!
# A338509: a(n) is the number of ordered triples of divisors d_i < d_j < d_k of m such that GCD(d_i, d_j, d_k) > 1 where m is the least number having its prime signature; m = A025487(n).

The programs for A338509, there is no canonical definition to state claims against.
-/

/-! ## A338509.P1973673233679915428

`A336530(A025487(n+1))`
-/

namespace A338509.P1973673233679915428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336530 (A025487 (n + 1)).toNat

end

end A338509.P1973673233679915428

/-! ## A338509.P15931672195729359615

`A336530(record[A046523(n+1)])`
-/

namespace A338509.P15931672195729359615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338509.P15931672195729359615

/-! ## A338509.P3179018161313855947

`A336530(record[A329899(n+1)])`
-/

namespace A338509.P3179018161313855947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338509.P3179018161313855947

/-! ## A338509.P17327832122044674274

`A336530(record[A051466(n+2)])`
-/

namespace A338509.P17327832122044674274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338509.P17327832122044674274

/-! ## A338509.P4390122009668568203

`A336530(A247451(n+1)*A307107(n+1))`
-/

namespace A338509.P4390122009668568203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336530 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A338509.P4390122009668568203

/-!
# A338510: a(n) is smallest number in column n >= 0 of the triangle in A247687.

The programs for A338510, there is no canonical definition to state claims against.
-/

/-! ## A338510.P1396305105963959270

`A014210(n+1)²*A000079(n)`
-/

namespace A338510.P1396305105963959270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (n + 1) ^ 2 * A000079 n

end

end A338510.P1396305105963959270

/-! ## A338510.P15283164566763553826

`A203074(n+2)²*A000079(n)`
-/

namespace A338510.P15283164566763553826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (n + 2) ^ 2 * A000079 n

end

end A338510.P15283164566763553826

/-! ## A338510.P135904153752757184

`A246956(n+1)²/A000079(n)`
-/

namespace A338510.P135904153752757184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246956 (n + 1) ^ 2 : ℚ) / (A000079 n : ℚ)

end

end A338510.P135904153752757184

/-! ## A338510.P13707845137241635629

`A014210(n+1)*A246956(n+1)`
-/

namespace A338510.P13707845137241635629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (n + 1) * A246956 (n + 1)

end

end A338510.P13707845137241635629

/-! ## A338510.P14141219522370080363

`A203074(n+2)*A246956(n+1)`
-/

namespace A338510.P14141219522370080363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (n + 2) * A246956 (n + 1)

end

end A338510.P14141219522370080363

/-!
# A338513: a(n) is the number of Chvátal-satisfying spurious graphical n-sequences.

The programs for A338513, there is no canonical definition to state claims against.
-/

/-! ## A338513.P4402291870641182808

`A005853(3*(n+3))+1-n`
-/

namespace A338513.P4402291870641182808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005853 (3 * (n + 3)) + 1 - (n : ℤ)

end

end A338513.P4402291870641182808

/-!
# A338514: Numbers k such that k and k+1 are both divisible by the total binary weight of their divisors (A093653).

The programs for A338514, the canonical program `A338514.P16262333784085285906` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338514 has offset 1).

The definition of A338514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338514.P16262333784085285906

`∩[A093705(n+1)-1, A093705(n+1)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A338514

/-- `∩[A093705(n+1)-1, A093705(n+1)]` -/
def P16262333784085285906.Spec : Prop :=
  ∀ n, (P16262333784085285906.a n : ℤ) = A338514 (n + 1)

theorem P16262333784085285906.correct : P16262333784085285906.Spec := by
  intro n
  simp only [A338514, Nat.add_sub_cancel]

end A338514

/-!
# A338519: Integers that can be expressed as a product d*tau(d), where tau is the number of divisors function, in a single way.

The programs for A338519, there is no canonical definition to state claims against.
-/

/-! ## A338519.P10711841866397520201

`eq[1, A327166(n+1)]+1`
-/

namespace A338519.P10711841866397520201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338519.P10711841866397520201

/-! ## A338519.P18027307316619354735

`eq[1, A000217(a(A327166(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A338519.P18027307316619354735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000217 (f2 (A327166 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338519.P18027307316619354735

/-! ## A338519.P16105793637615999286

`eq[1, A007010(a(A327166(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A338519.P16105793637615999286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A007010 (f2 (A327166 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338519.P16105793637615999286

/-! ## A338519.P8766204429248012071

`eq[1, A070504(a(A327166(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A338519.P8766204429248012071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A070504 (f2 (A327166 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338519.P8766204429248012071

/-! ## A338519.P11517420497195546853

`A061395(p?[A000040(n+1)*A327166(n+1)])`
-/

namespace A338519.P11517420497195546853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A327166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338519.P11517420497195546853

/-!
# A338520: Integers that can be expressed as a product d*sigma(d), where sigma is the sum of divisors function, in a single way.

The programs for A338520, there is no canonical definition to state claims against.
-/

/-! ## A338520.P14398429483176570334

`record[and(1, A327153(n+1))*(n+1)]`
-/

namespace A338520.P14398429483176570334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A327153 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338520.P14398429483176570334

/-! ## A338520.P4988219177782026193

`record[A327165(n+1)/A327153(A327165(n+1))]`
-/

namespace A338520.P4988219177782026193
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327165 (n + 1) : ℚ) / (A327153 (A327165 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338520.P4988219177782026193

/-! ## A338520.P15355636652404299035

`eq[1, A327153(n+1)]+1`
-/

namespace A338520.P15355636652404299035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338520.P15355636652404299035

/-! ## A338520.P13661574013686804741

`eq[A054977(n), A327153(A028310(n))]`
-/

namespace A338520.P13661574013686804741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327153 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338520.P13661574013686804741

/-! ## A338520.P6903361917871363971

`record[A001057(A327153(n+1)+2*n)]`
-/

namespace A338520.P6903361917871363971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A327153 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338520.P6903361917871363971

/-!
# A338521: The number of primes between n-primepi(n) and n.

The programs for A338521, the canonical program `A338521.P3726486366841375083` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338521 has offset 1).

The definition of A338521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338521.P3112829099747173821

`A014684(n+1)-A338215(n+1)`
-/

namespace A338521.P3112829099747173821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - A338215 (n + 1)

end

end A338521.P3112829099747173821

namespace A338521

/-- `A014684(n+1)-A338215(n+1)` -/
def P3112829099747173821.Spec : Prop :=
  ∀ n, P3112829099747173821.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P9128096290037479634

`A005171(n+1)-A338215(n+1)+n`
-/

namespace A338521.P9128096290037479634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) - A338215 (n + 1) + (n : ℤ)

end

end A338521.P9128096290037479634

namespace A338521

/-- `A005171(n+1)-A338215(n+1)+n` -/
def P9128096290037479634.Spec : Prop :=
  ∀ n, P9128096290037479634.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P8811418469873186984

`1-(A338215(n+1)+A010051(n+1))+n`
-/

namespace A338521.P8811418469873186984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A338215 (n + 1) + A010051 (n + 1)) + (n : ℤ)

end

end A338521.P8811418469873186984

namespace A338521

/-- `1-(A338215(n+1)+A010051(n+1))+n` -/
def P8811418469873186984.Spec : Prop :=
  ∀ n, P8811418469873186984.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P5079100409976265419

`(n+1)%(A338215(C(n+1, n))+A010051(n+1))`
-/

namespace A338521.P5079100409976265419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A338215 (Nat.choose (n + 1) n) + A010051 (n + 1))

end

end A338521.P5079100409976265419

namespace A338521

/-- `(n+1)%(A338215(C(n+1, n))+A010051(n+1))` -/
def P5079100409976265419.Spec : Prop :=
  ∀ n, P5079100409976265419.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P1494014803913011991

`A230980(n)-A000720(∑[∏{p}[n+1, #%(n+1)/#]])`
-/

namespace A338521.P1494014803913011991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p % (n + 1) : ℕ) : ℚ) / (p : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A000720 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A338521.P1494014803913011991

namespace A338521

/-- `A230980(n)-A000720(∑[∏{p}[n+1, #%(n+1)/#]])` -/
def P1494014803913011991.Spec : Prop :=
  ∀ n, P1494014803913011991.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P13778918007829131412

`A230980(n)-A000720(A062298(n+1))`
-/

namespace A338521.P13778918007829131412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A000720 (A062298 (n + 1)).toNat

end

end A338521.P13778918007829131412

namespace A338521

/-- `A230980(n)-A000720(A062298(n+1))` -/
def P13778918007829131412.Spec : Prop :=
  ∀ n, P13778918007829131412.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P2646659622694232150

`A230980(n)-A000720(∑[A005171(n+1)])`
-/

namespace A338521.P2646659622694232150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338521.P2646659622694232150

namespace A338521

/-- `A230980(n)-A000720(∑[A005171(n+1)])` -/
def P2646659622694232150.Spec : Prop :=
  ∀ n, P2646659622694232150.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P3726486366841375083

`A230980(n)-A230980(∑[A005171(n+1)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338521

/-- `A230980(n)-A230980(∑[A005171(n+1)])` -/
def P3726486366841375083.Spec : Prop :=
  ∀ n, P3726486366841375083.a n = A338521 (n + 1)

theorem P3726486366841375083.correct : P3726486366841375083.Spec := by
  intro n
  simp only [A338521, Nat.add_sub_cancel]

end A338521

/-! ## A338521.P5764750087627917567

`A230980(n)-A132090(A065308(n+1))`
-/

namespace A338521.P5764750087627917567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A132090 (A065308 (n + 1)).toNat

end

end A338521.P5764750087627917567

namespace A338521

/-- `A230980(n)-A132090(A065308(n+1))` -/
def P5764750087627917567.Spec : Prop :=
  ∀ n, P5764750087627917567.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P868780814040213259

`A014684(n+1)-A080786(A256885(n+1))`
-/

namespace A338521.P868780814040213259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - A080786 (A256885 (n + 1)).toNat

end

end A338521.P868780814040213259

namespace A338521

/-- `A014684(n+1)-A080786(A256885(n+1))` -/
def P868780814040213259.Spec : Prop :=
  ∀ n, P868780814040213259.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P184174223342844332

`A113638(n+1)-A080786(A256885(n+1))`
-/

namespace A338521.P184174223342844332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113638 (n + 1) - A080786 (A256885 (n + 1)).toNat

end

end A338521.P184174223342844332

namespace A338521

/-- `A113638(n+1)-A080786(A256885(n+1))` -/
def P184174223342844332.Spec : Prop :=
  ∀ n, P184174223342844332.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P17667925333289740485

`A014684(n+1)-A080786(∑[A014684(n+1)])`
-/

namespace A338521.P17667925333289740485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - A080786 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338521.P17667925333289740485

namespace A338521

/-- `A014684(n+1)-A080786(∑[A014684(n+1)])` -/
def P17667925333289740485.Spec : Prop :=
  ∀ n, P17667925333289740485.a n = A338521 (n + 1)

end A338521

/-! ## A338521.P5464452201479491876

`A230980(n)-A056811(A062298(n+1)²)`
-/

namespace A338521.P5464452201479491876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A056811 (A062298 (n + 1) ^ 2).toNat

end

end A338521.P5464452201479491876

namespace A338521

/-- `A230980(n)-A056811(A062298(n+1)²)` -/
def P5464452201479491876.Spec : Prop :=
  ∀ n, P5464452201479491876.a n = A338521 (n + 1)

end A338521

/-!
# A338522: Number of cyclic Latin squares of order n.

The programs for A338522, the canonical program `A338522.P13173507621041795602` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338522 has offset 1).

The definition of A338522 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338522.P13173507621041795602

`A000010(n+1)*A000142(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A338522

/-- `A000010(n+1)*A000142(n+1)` -/
def P13173507621041795602.Spec : Prop :=
  ∀ n, P13173507621041795602.a n = A338522 (n + 1)

theorem P13173507621041795602.correct : P13173507621041795602.Spec := by
  intro n
  simp only [A338522, Nat.add_sub_cancel]

end A338522

/-! ## A338522.P10637417592525980840

`(n+1)*A074930(n+1)`
-/

namespace A338522.P10637417592525980840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074930 (n + 1)

end

end A338522.P10637417592525980840

namespace A338522

/-- `(n+1)*A074930(n+1)` -/
def P10637417592525980840.Spec : Prop :=
  ∀ n, P10637417592525980840.a n = A338522 (n + 1)

end A338522

/-! ## A338522.P4288443072417006201

`n!*A000010((n+1)²)`
-/

namespace A338522.P4288443072417006201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000010 ((n + 1) ^ 2)

end

end A338522.P4288443072417006201

namespace A338522

/-- `n!*A000010((n+1)²)` -/
def P4288443072417006201.Spec : Prop :=
  ∀ n, P4288443072417006201.a n = A338522 (n + 1)

end A338522

/-! ## A338522.P15360035570523135193

`(n+1)*A000010(n-log2(1/2))*n!`
-/

namespace A338522.P15360035570523135193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat * (Nat.factorial n : ℤ)

end

end A338522.P15360035570523135193

namespace A338522

/-- `(n+1)*A000010(n-log2(1/2))*n!` -/
def P15360035570523135193.Spec : Prop :=
  ∀ n, P15360035570523135193.a n = A338522 (n + 1)

end A338522

/-! ## A338522.P7267054478226813849

`A000010(∑[2*n+1])/(n+1)*(n+1)!`
-/

namespace A338522.P7267054478226813849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ) * (Nat.factorial (n + 1) : ℚ)

end

end A338522.P7267054478226813849

namespace A338522

/-- `A000010(∑[2*n+1])/(n+1)*(n+1)!` -/
def P7267054478226813849.Spec : Prop :=
  ∀ n, P7267054478226813849.a n = (A338522 (n + 1) : ℚ)

end A338522

/-! ## A338522.P4809124867718857685

`A324225(A264724(n+1))`
-/

namespace A338522.P4809124867718857685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (A264724 (n + 1)).toNat

end

end A338522.P4809124867718857685

namespace A338522

/-- `A324225(A264724(n+1))` -/
def P4809124867718857685.Spec : Prop :=
  ∀ n, P4809124867718857685.a n = A338522 (n + 1)

end A338522

/-! ## A338522.P14973839072859718294

`A000142(n)*A002618(n+1)`
-/

namespace A338522.P14973839072859718294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002618 (n + 1)

end

end A338522.P14973839072859718294

namespace A338522

/-- `A000142(n)*A002618(n+1)` -/
def P14973839072859718294.Spec : Prop :=
  ∀ n, P14973839072859718294.a n = A338522 (n + 1)

end A338522

/-! ## A338522.P13886017153539962672

`A058161(n+1)*A327570(n+1)`
-/

namespace A338522.P13886017153539962672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058161 (n + 1) * A327570 (n + 1)

end

end A338522.P13886017153539962672

namespace A338522

/-- `A058161(n+1)*A327570(n+1)` -/
def P13886017153539962672.Spec : Prop :=
  ∀ n, P13886017153539962672.a n = A338522 (n + 1)

end A338522

/-! ## A338522.P13006021469629354972

`A324225(A000010(n+1)+(n+1)²)`
-/

namespace A338522.P13006021469629354972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (A000010 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A338522.P13006021469629354972

namespace A338522

/-- `A324225(A000010(n+1)+(n+1)²)` -/
def P13006021469629354972.Spec : Prop :=
  ∀ n, P13006021469629354972.a n = A338522 (n + 1)

end A338522

/-!
# A338523: Triangle T(n,m) = (2*m*n+2*n-2*m^2+1)*C(2*n+2,2*m+1)/(4*n+2).

The programs for A338523, there is no canonical definition to state claims against.
-/

/-! ## A338523.P14835655433892966872

`A098019(A157207(n))+A051601(n)`
-/

namespace A338523.P14835655433892966872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098019 (A157207 n).toNat + A051601 n

end

end A338523.P14835655433892966872

/-! ## A338523.P11970843910183934754

`A007091(A132812(n+1))%A079104(2*(n+1))`
-/

namespace A338523.P11970843910183934754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007091 (A132812 (n + 1)).toNat) (A079104 (2 * (n + 1)))

end

end A338523.P11970843910183934754

/-!
# A338524: prime(n) Gray code decoding.

The programs for A338524, the canonical program `A338524.P14576734370194940708` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338524 has offset 1).

The definition of A338524 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338524.P14576734370194940708

`A006068(A000040(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338524

/-- `A006068(A000040(n+1))` -/
def P14576734370194940708.Spec : Prop :=
  ∀ n, P14576734370194940708.a n = A338524 (n + 1)

theorem P14576734370194940708.correct : P14576734370194940708.Spec := by
  intro n
  simp only [A338524, Nat.add_sub_cancel]

end A338524

/-! ## A338524.P5367158472553527532

`A006068(p?[abs(xor(n, -2))])`
-/

namespace A338524.P5367158472553527532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338524.P5367158472553527532

namespace A338524

/-- `A006068(p?[abs(xor(n, -2))])` -/
def P5367158472553527532.Spec : Prop :=
  ∀ n, P5367158472553527532.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P3124634150184102189

`A006068(p?[xor(1, n)+1])`
-/

namespace A338524.P3124634150184102189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A338524.P3124634150184102189

namespace A338524

/-- `A006068(p?[xor(1, n)+1])` -/
def P3124634150184102189.Spec : Prop :=
  ∀ n, P3124634150184102189.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P4400773272356865505

`A268716(p?[xor(1, n)+1])/2`
-/

namespace A338524.P4400773272356865505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A338524.P4400773272356865505

namespace A338524

/-- `A268716(p?[xor(1, n)+1])/2` -/
def P4400773272356865505.Spec : Prop :=
  ∀ n, P4400773272356865505.a n = (A338524 (n + 1) : ℚ)

end A338524

/-! ## A338524.P15317477251926037239

`A268716(p?[n%3+n])/2`
-/

namespace A338524.P15317477251926037239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A338524.P15317477251926037239

namespace A338524

/-- `A268716(p?[n%3+n])/2` -/
def P15317477251926037239.Spec : Prop :=
  ∀ n, P15317477251926037239.a n = (A338524 (n + 1) : ℚ)

end A338524

/-! ## A338524.P16633827203338625989

`A268716(p?[round(sqrt(n)+n)])/2`
-/

namespace A338524.P16633827203338625989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A338524.P16633827203338625989

namespace A338524

/-- `A268716(p?[round(sqrt(n)+n)])/2` -/
def P16633827203338625989.Spec : Prop :=
  ∀ n, P16633827203338625989.a n = (A338524 (n + 1) : ℚ)

end A338524

/-! ## A338524.P7122623570909767996

`A006068(p?[gcd(1-n, floor(n/2))])`
-/

namespace A338524.P7122623570909767996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A338524.P7122623570909767996

namespace A338524

/-- `A006068(p?[gcd(1-n, floor(n/2))])` -/
def P7122623570909767996.Spec : Prop :=
  ∀ n, P7122623570909767996.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P3506740478548759882

`A066194(p?[xor(1, n)+1]+1)-1`
-/

namespace A338524.P3506740478548759882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) - 1

end

end A338524.P3506740478548759882

namespace A338524

/-- `A066194(p?[xor(1, n)+1]+1)-1` -/
def P3506740478548759882.Spec : Prop :=
  ∀ n, P3506740478548759882.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P15740331527087207024

`A006068(p?[round(1/acot(n))+n+1])`
-/

namespace A338524.P15740331527087207024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338524.P15740331527087207024

namespace A338524

/-- `A006068(p?[round(1/acot(n))+n+1])` -/
def P15740331527087207024.Spec : Prop :=
  ∀ n, P15740331527087207024.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P1791325347848772389

`A006068(A008578(n+2))`
-/

namespace A338524.P1791325347848772389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A008578 (n + 2)).toNat

end

end A338524.P1791325347848772389

namespace A338524

/-- `A006068(A008578(n+2))` -/
def P1791325347848772389.Spec : Prop :=
  ∀ n, P1791325347848772389.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P2678761425263943145

`A006068(A182986(n+2))`
-/

namespace A338524.P2678761425263943145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A182986 (n + 2)).toNat

end

end A338524.P2678761425263943145

namespace A338524

/-- `A006068(A182986(n+2))` -/
def P2678761425263943145.Spec : Prop :=
  ∀ n, P2678761425263943145.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P4191808585398135364

`A006068(A129543(A006068(n)))`
-/

namespace A338524.P4191808585398135364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A129543 (A006068 n).toNat).toNat

end

end A338524.P4191808585398135364

namespace A338524

/-- `A006068(A129543(A006068(n)))` -/
def P4191808585398135364.Spec : Prop :=
  ∀ n, P4191808585398135364.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P4281194355484167092

`A006068(A007504(n+1)-A007504(n))`
-/

namespace A338524.P4281194355484167092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A007504 (n + 1) - A007504 n).toNat

end

end A338524.P4281194355484167092

namespace A338524

/-- `A006068(A007504(n+1)-A007504(n))` -/
def P4281194355484167092.Spec : Prop :=
  ∀ n, P4281194355484167092.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P10625348785437525354

`A064707(A143292(n+1))`
-/

namespace A338524.P10625348785437525354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A143292 (n + 1)).toNat

end

end A338524.P10625348785437525354

namespace A338524

/-- `A064707(A143292(n+1))` -/
def P10625348785437525354.Spec : Prop :=
  ∀ n, P10625348785437525354.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P13429955225976151465

`A292600(A072055(n+1))`
-/

namespace A338524.P13429955225976151465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A072055 (n + 1)).toNat

end

end A338524.P13429955225976151465

namespace A338524

/-- `A292600(A072055(n+1))` -/
def P13429955225976151465.Spec : Prop :=
  ∀ n, P13429955225976151465.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P216574995339472506

`A292600(A100484(n+1))`
-/

namespace A338524.P216574995339472506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A100484 (n + 1)).toNat

end

end A338524.P216574995339472506

namespace A338524

/-- `A292600(A100484(n+1))` -/
def P216574995339472506.Spec : Prop :=
  ∀ n, P216574995339472506.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P1948157527572561732

`A292600(A001747(n+2))`
-/

namespace A338524.P1948157527572561732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A001747 (n + 2)).toNat

end

end A338524.P1948157527572561732

namespace A338524

/-- `A292600(A001747(n+2))` -/
def P1948157527572561732.Spec : Prop :=
  ∀ n, P1948157527572561732.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P7003348119975211794

`A006068(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A338524.P7003348119975211794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A338524.P7003348119975211794

namespace A338524

/-- `A006068(∑{p}[p?[round(8*n/7)]², #])` -/
def P7003348119975211794.Spec : Prop :=
  ∀ n, P7003348119975211794.a n = A338524 (n + 1)

end A338524

/-! ## A338524.P7641286676697362925

`A006068(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A338524.P7641286676697362925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A338524.P7641286676697362925

namespace A338524

/-- `A006068(∏{p}[p?[round(8*n/7)]², #])` -/
def P7641286676697362925.Spec : Prop :=
  ∀ n, P7641286676697362925.a n = A338524 (n + 1)

end A338524

/-!
# A338526: Triangle read by rows: T(n,k) is the number of permutations of k elements from [1..n] without consecutive adjacent values.

The programs for A338526, there is no canonical definition to state claims against.
-/

/-! ## A338526.P4982400878127550302

`A000523(2^A319284(n))`
-/

namespace A338526.P4982400878127550302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319284 n : ℤ))).toNat

end

end A338526.P4982400878127550302

/-! ## A338526.P10413280555583175165

`A006666(2^A319284(n))`
-/

namespace A338526.P10413280555583175165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319284 n : ℤ))).toNat

end

end A338526.P10413280555583175165

/-! ## A338526.P10462738877111614167

`A007814(2^A319284(n))`
-/

namespace A338526.P10462738877111614167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319284 n : ℤ))).toNat

end

end A338526.P10462738877111614167

/-! ## A338526.P4805084643674157569

`A056239(2^A319284(n))`
-/

namespace A338526.P4805084643674157569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319284 n : ℤ))).toNat

end

end A338526.P4805084643674157569

/-! ## A338526.P12726973962067444971

`A091222(2^A319284(n))`
-/

namespace A338526.P12726973962067444971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319284 n : ℤ))).toNat

end

end A338526.P12726973962067444971

/-!
# A338527: Number of spanning trees in the join of the disjoint union of two complete graphs each on n and n+1 vertices with the empty graph on n+1 vertices.

The programs for A338527, the canonical program `A338527.P5254348209866778769` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338527 has offset 1).

The definition of A338527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338527.P5254348209866778769

`(n+2)*(2*(n+1)+2)^(n+1)*(2*(n+1)+1)^(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A338527

/-- `(n+2)*(2*(n+1)+2)^(n+1)*(2*(n+1)+1)^(2*(n+1)-1)` -/
def P5254348209866778769.Spec : Prop :=
  ∀ n, P5254348209866778769.a n = (A338527 (n + 1) : ℚ)

end A338527

/-!
# A338529: a(n) = prime(n+2)*prime(n+3)-prime(n)*prime(n+1).

The programs for A338529, the canonical program `A338529.P17609218579952394928` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338529 has offset 1).

The definition of A338529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338529.P17609218579952394928

`A046302(n+1)/A006094(n+1)-A006094(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A338529

/-- `A046302(n+1)/A006094(n+1)-A006094(n+1)` -/
def P17609218579952394928.Spec : Prop :=
  ∀ n, P17609218579952394928.a n = (A338529 (n + 1) : ℚ)

end A338529

/-! ## A338529.P7347660967890649929

`Δ[A357679(n+2)]`
-/

namespace A338529.P7347660967890649929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338529.P7347660967890649929

namespace A338529

/-- `Δ[A357679(n+2)]` -/
def P7347660967890649929.Spec : Prop :=
  ∀ n, P7347660967890649929.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P9790651515675689035

`A109805(n+1)+A109805(n+2)`
-/

namespace A338529.P9790651515675689035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109805 (n + 1) + A109805 (n + 2)

end

end A338529.P9790651515675689035

namespace A338529

/-- `A109805(n+1)+A109805(n+2)` -/
def P9790651515675689035.Spec : Prop :=
  ∀ n, P9790651515675689035.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P1585837385500636333

`A357679(n+3)-A357679(n+2)`
-/

namespace A338529.P1585837385500636333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357679 (n + 3) - A357679 (n + 2)

end

end A338529.P1585837385500636333

namespace A338529

/-- `A357679(n+3)-A357679(n+2)` -/
def P1585837385500636333.Spec : Prop :=
  ∀ n, P1585837385500636333.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P6187769161326640028

`Δ[A127345(n+1)-A090076(n+1)]`
-/

namespace A338529.P6187769161326640028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 1) - A090076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338529.P6187769161326640028

namespace A338529

/-- `Δ[A127345(n+1)-A090076(n+1)]` -/
def P6187769161326640028.Spec : Prop :=
  ∀ n, P6187769161326640028.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P9129323269409661127

`2*A102770(n+2)-A023515(n+2)`
-/

namespace A338529.P9129323269409661127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102770 (n + 2) - A023515 (n + 2)

end

end A338529.P9129323269409661127

namespace A338529

/-- `2*A102770(n+2)-A023515(n+2)` -/
def P9129323269409661127.Spec : Prop :=
  ∀ n, P9129323269409661127.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P304821063971051624

`A046301(n+2)/A000040(n+2)-A006094(n+1)`
-/

namespace A338529.P304821063971051624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 2) : ℚ) / (A000040 (n + 2) : ℚ) - (A006094 (n + 1) : ℚ)

end

end A338529.P304821063971051624

namespace A338529

/-- `A046301(n+2)/A000040(n+2)-A006094(n+1)` -/
def P304821063971051624.Spec : Prop :=
  ∀ n, P304821063971051624.a n = (A338529 (n + 1) : ℚ)

end A338529

/-! ## A338529.P3615976969878070273

`Δ[(A093667(n+1)+A065091(n+1))*A065091(n+1)]`
-/

namespace A338529.P3615976969878070273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093667 (n + 1) + A065091 (n + 1)) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338529.P3615976969878070273

namespace A338529

/-- `Δ[(A093667(n+1)+A065091(n+1))*A065091(n+1)]` -/
def P3615976969878070273.Spec : Prop :=
  ∀ n, P3615976969878070273.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P11188565550243099857

`A006094(n+3)-A006094(n+1)`
-/

namespace A338529.P11188565550243099857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 3) - A006094 (n + 1)

end

end A338529.P11188565550243099857

namespace A338529

/-- `A006094(n+3)-A006094(n+1)` -/
def P11188565550243099857.Spec : Prop :=
  ∀ n, P11188565550243099857.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P8485353684517330732

`Δ[A006094(n+1)+A006094(n+2)]`
-/

namespace A338529.P8485353684517330732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A006094 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338529.P8485353684517330732

namespace A338529

/-- `Δ[A006094(n+1)+A006094(n+2)]` -/
def P8485353684517330732.Spec : Prop :=
  ∀ n, P8485353684517330732.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P3679757900698543851

`A023515(n+4)-A023515(n+2)`
-/

namespace A338529.P3679757900698543851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 4) - A023515 (n + 2)

end

end A338529.P3679757900698543851

namespace A338529

/-- `A023515(n+4)-A023515(n+2)` -/
def P3679757900698543851.Spec : Prop :=
  ∀ n, P3679757900698543851.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P11664356646592220537

`A023523(n+4)-A023523(n+2)`
-/

namespace A338529.P11664356646592220537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 4) - A023523 (n + 2)

end

end A338529.P11664356646592220537

namespace A338529

/-- `A023523(n+4)-A023523(n+2)` -/
def P11664356646592220537.Spec : Prop :=
  ∀ n, P11664356646592220537.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P3629667133127106690

`A124669(n+3)-A124669(n+1)`
-/

namespace A338529.P3629667133127106690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 3) - A124669 (n + 1)

end

end A338529.P3629667133127106690

namespace A338529

/-- `A124669(n+3)-A124669(n+1)` -/
def P3629667133127106690.Spec : Prop :=
  ∀ n, P3629667133127106690.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P7869338863839359591

`Δ[A124669(n+1)+A124669(n+2)]`
-/

namespace A338529.P7869338863839359591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1) + A124669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338529.P7869338863839359591

namespace A338529

/-- `Δ[A124669(n+1)+A124669(n+2)]` -/
def P7869338863839359591.Spec : Prop :=
  ∀ n, P7869338863839359591.a n = A338529 (n + 1)

end A338529

/-! ## A338529.P11588571896893501715

`A205144(∑[n+2])`
-/

namespace A338529.P11588571896893501715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205144 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338529.P11588571896893501715

namespace A338529

/-- `A205144(∑[n+2])` -/
def P11588571896893501715.Spec : Prop :=
  ∀ n, P11588571896893501715.a n = A338529 (n + 1)

end A338529

/-!
# A338530: a(n) = (prime(n) + a(n-1)) mod prime(n-1), a(1) = 1.

The programs for A338530, there is no canonical definition to state claims against.
-/

/-! ## A338530.P16553861333612868520

`(A001223(n)+a(n-1))%A000040(n)` with `a(0)=1`
-/

namespace A338530.P16553861333612868520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A001223 n + a (n - 1)) (A000040 n)

end

end A338530.P16553861333612868520

/-! ## A338530.P7995217209854249250

`(A000040(n+1)+a(n-1))%A000040(n)` with `a(0)=1`
-/

namespace A338530.P7995217209854249250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000040 (n + 1) + a (n - 1)) (A000040 n)

end

end A338530.P7995217209854249250

/-! ## A338530.P475219004671174460

`(A006005(n+1)+a(n-1))%A006005(n)` with `a(0)=1`
-/

namespace A338530.P475219004671174460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A006005 (n + 1) + a (n - 1)) (A006005 n)

end

end A338530.P475219004671174460

/-! ## A338530.P9100076746753787203

`(A008578(n+2)+a(n-1))%A008578(n+1)` with `a(0)=1`
-/

namespace A338530.P9100076746753787203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A008578 (n + 2) + a (n - 1)) (A008578 (n + 1))

end

end A338530.P9100076746753787203

/-! ## A338530.P4621749213044613437

`(A064555(n+2)+a(n-1))%A064555(n+1)` with `a(0)=1`
-/

namespace A338530.P4621749213044613437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A064555 (n + 2) + a (n - 1)) (A064555 (n + 1))

end

end A338530.P4621749213044613437

/-! ## A338530.P9005639185125481473

`(A182986(n+2)+a(n-1))%A182986(n+1)` with `a(0)=1`
-/

namespace A338530.P9005639185125481473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A182986 (n + 2) + a (n - 1)) (A182986 (n + 1))

end

end A338530.P9005639185125481473

/-!
# A338531: a(n) is the number of row-convex domino towers with n bricks (rows need not be offset).

The programs for A338531, there is no canonical definition to state claims against.
-/

/-! ## A338531.P16999010066907638169

`A110655(floor(sqrt(A064757(n+1))))`
-/

namespace A338531.P16999010066907638169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.sqrt (A064757 (n + 1))).toNat

end

end A338531.P16999010066907638169

/-! ## A338531.P6671745864664619910

`A089233(A002110(n))+A039717(n+1)`
-/

namespace A338531.P6671745864664619910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (A002110 n).toNat + A039717 (n + 1)

end

end A338531.P6671745864664619910

/-!
# A338532: Number of spanning trees in the n X 3 king graph.

The programs for A338532, there is no canonical definition to state claims against.
-/

/-! ## A338532.P6588496861543366292

`A338029(∑[n+3]+1)`
-/

namespace A338532.P6588496861543366292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338029 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A338532.P6588496861543366292

/-! ## A338532.P17857740810637718987

`record[A338029(record[A343382(n)])]`
-/

namespace A338532.P17857740810637718987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338029 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338532.P17857740810637718987

/-!
# A338533: Primes in A338529/2.

The programs for A338533, the canonical program `A338533.P15816568125547245429` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338533 has offset 1).

The definition of A338533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338533.P15816568125547245429

`p?[A102770(n+3)-A102770(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A338533

/-- `p?[A102770(n+3)-A102770(n+1)]` -/
def P15816568125547245429.Spec : Prop :=
  ∀ n, P15816568125547245429.a n = A338533 (n + 1)

theorem P15816568125547245429.correct : P15816568125547245429.Spec := by
  intro n
  simp only [A338533, Nat.add_sub_cancel]

end A338533

/-! ## A338533.P7065148058791536907

`p?[A014682(A338529(n+1))]`
-/

namespace A338533.P7065148058791536907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A338529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338533.P7065148058791536907

namespace A338533

/-- `p?[A014682(A338529(n+1))]` -/
def P7065148058791536907.Spec : Prop :=
  ∀ n, P7065148058791536907.a n = A338533 (n + 1)

end A338533

/-! ## A338533.P15594398877049046216

`p?[A014682(A109805(n+1)+A109805(n+2))]`
-/

namespace A338533.P15594398877049046216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A109805 (n + 1) + A109805 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338533.P15594398877049046216

namespace A338533

/-- `p?[A014682(A109805(n+1)+A109805(n+2))]` -/
def P15594398877049046216.Spec : Prop :=
  ∀ n, P15594398877049046216.a n = A338533 (n + 1)

end A338533

/-!
# A338534: a(n) is the smallest number k whose symmetric representation of sigma(k) consists of n regions (or parts) and whose areas are strictly decreasing towards the diagonal.

The programs for A338534, there is no canonical definition to state claims against.
-/

/-! ## A338534.P7206485764595574540

`record[A153212(A085685(n)²)]`
-/

namespace A338534.P7206485764595574540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (A085685 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338534.P7206485764595574540

/-! ## A338534.P6828383682069146557

`record[gcd(A014945(n+1), A099423(n))]`
-/

namespace A338534.P6828383682069146557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014945 (n + 1)) (A099423 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338534.P6828383682069146557

/-! ## A338534.P18340555930522776607

`record[gcd(A056745(n+1), A056757(n+1))]`
-/

namespace A338534.P18340555930522776607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056745 (n + 1)) (A056757 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338534.P18340555930522776607

/-!
# A338535: a(n) is the smallest number k for which the width n at the diagonal equals the maximum width of the symmetric representation of sigma(k).

The programs for A338535, there is no canonical definition to state claims against.
-/

/-! ## A338535.P16429567599815526365

`A065033(A005318(n)*A209447(n))`
-/

namespace A338535.P16429567599815526365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005318 n * A209447 n).toNat

end

end A338535.P16429567599815526365

/-!
# A338539: Numbers having exactly two non-unitary prime factors.

The programs for A338539, the canonical program `A338539.P1686285935933793053` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338539 has offset 1).

The definition of A338539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 805 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338539.P17657794698198494151

`A013929(eq[2, A212177(n+1)]+1)`
-/

namespace A338539.P17657794698198494151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A338539.P17657794698198494151

namespace A338539

/-- `A013929(eq[2, A212177(n+1)]+1)` -/
def P17657794698198494151.Spec : Prop :=
  ∀ n, P17657794698198494151.a n = A338539 (n + 1)

end A338539

/-! ## A338539.P1686285935933793053

`∩[A013929(n+1), A333634(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A338539

/-- `∩[A013929(n+1), A333634(n+1)]` -/
def P1686285935933793053.Spec : Prop :=
  ∀ n, (P1686285935933793053.a n : ℤ) = A338539 (n + 1)

theorem P1686285935933793053.correct : P1686285935933793053.Spec := by
  intro n
  simp only [A338539, Nat.add_sub_cancel]

end A338539

/-! ## A338539.P170704705533093288

`∩[A038838(n+1), A333634(n+1)]`
-/

namespace A338539.P170704705533093288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338539.P170704705533093288

namespace A338539

/-- `∩[A038838(n+1), A333634(n+1)]` -/
def P170704705533093288.Spec : Prop :=
  ∀ n, (P170704705533093288.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P4849696574406576654

`∩[A046790(n+1), A333634(n+1)]`
-/

namespace A338539.P4849696574406576654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338539.P4849696574406576654

namespace A338539

/-- `∩[A046790(n+1), A333634(n+1)]` -/
def P4849696574406576654.Spec : Prop :=
  ∀ n, (P4849696574406576654.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P13286388246256647920

`∩[A048108(n+1), A333634(n+1)]`
-/

namespace A338539.P13286388246256647920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338539.P13286388246256647920

namespace A338539

/-- `∩[A048108(n+1), A333634(n+1)]` -/
def P13286388246256647920.Spec : Prop :=
  ∀ n, (P13286388246256647920.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P2377834440448618033

`∩[A048111(n+1), A333634(n+1)]`
-/

namespace A338539.P2377834440448618033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338539.P2377834440448618033

namespace A338539

/-- `∩[A048111(n+1), A333634(n+1)]` -/
def P2377834440448618033.Spec : Prop :=
  ∀ n, (P2377834440448618033.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P17381526095156414084

`∩[A049199(n+1), A333634(n+1)]`
-/

namespace A338539.P17381526095156414084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338539.P17381526095156414084

namespace A338539

/-- `∩[A049199(n+1), A333634(n+1)]` -/
def P17381526095156414084.Spec : Prop :=
  ∀ n, (P17381526095156414084.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P8190294988896329076

`∩[A062171(n+1), A333634(n+1)]`
-/

namespace A338539.P8190294988896329076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338539.P8190294988896329076

namespace A338539

/-- `∩[A062171(n+1), A333634(n+1)]` -/
def P8190294988896329076.Spec : Prop :=
  ∀ n, (P8190294988896329076.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P11115254459304897107

`∩[A072903(n+1), A333634(n+1)]`
-/

namespace A338539.P11115254459304897107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338539.P11115254459304897107

namespace A338539

/-- `∩[A072903(n+1), A333634(n+1)]` -/
def P11115254459304897107.Spec : Prop :=
  ∀ n, (P11115254459304897107.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P7175791067041890195

`eq[2, A056170(n+1)]+1`
-/

namespace A338539.P7175791067041890195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338539.P7175791067041890195

namespace A338539

/-- `eq[2, A056170(n+1)]+1` -/
def P7175791067041890195.Spec : Prop :=
  ∀ n, (P7175791067041890195.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P2175027381718463507

`eq[2, A056170(A028310(n))]`
-/

namespace A338539.P2175027381718463507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338539.P2175027381718463507

namespace A338539

/-- `eq[2, A056170(A028310(n))]` -/
def P2175027381718463507.Spec : Prop :=
  ∀ n, (P2175027381718463507.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P9380825110529551356

`A020725(eq[2, A056170(n+1)])`
-/

namespace A338539.P9380825110529551356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338539.P9380825110529551356

namespace A338539

/-- `A020725(eq[2, A056170(n+1)])` -/
def P9380825110529551356.Spec : Prop :=
  ∀ n, P9380825110529551356.a n = A338539 (n + 1)

end A338539

/-! ## A338539.P16677802545438289404

`A065475(eq[2, A056170(n+1)])`
-/

namespace A338539.P16677802545438289404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338539.P16677802545438289404

namespace A338539

/-- `A065475(eq[2, A056170(n+1)])` -/
def P16677802545438289404.Spec : Prop :=
  ∀ n, P16677802545438289404.a n = A338539 (n + 1)

end A338539

/-! ## A338539.P1103673448578919651

`A153152(eq[2, A056170(n+1)])`
-/

namespace A338539.P1103673448578919651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338539.P1103673448578919651

namespace A338539

/-- `A153152(eq[2, A056170(n+1)])` -/
def P1103673448578919651.Spec : Prop :=
  ∀ n, P1103673448578919651.a n = A338539 (n + 1)

end A338539

/-! ## A338539.P14370439293783419151

`eq[2, A001221(A000188(n+1))]+1`
-/

namespace A338539.P14370439293783419151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338539.P14370439293783419151

namespace A338539

/-- `eq[2, A001221(A000188(n+1))]+1` -/
def P14370439293783419151.Spec : Prop :=
  ∀ n, (P14370439293783419151.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P11697850829449864910

`eq[2, A001221(A003557(n+1))]+1`
-/

namespace A338539.P11697850829449864910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338539.P11697850829449864910

namespace A338539

/-- `eq[2, A001221(A003557(n+1))]+1` -/
def P11697850829449864910.Spec : Prop :=
  ∀ n, (P11697850829449864910.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P13584205599938267590

`eq[2, A001221(A292589(n+1))]+1`
-/

namespace A338539.P13584205599938267590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A292589 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338539.P13584205599938267590

namespace A338539

/-- `eq[2, A001221(A292589(n+1))]+1` -/
def P13584205599938267590.Spec : Prop :=
  ∀ n, (P13584205599938267590.a n : ℤ) = A338539 (n + 1)

end A338539

/-! ## A338539.P17030258534333940289

`eq[2, A056170(A138153(n+1))]`
-/

namespace A338539.P17030258534333940289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338539.P17030258534333940289

namespace A338539

/-- `eq[2, A056170(A138153(n+1))]` -/
def P17030258534333940289.Spec : Prop :=
  ∀ n, (P17030258534333940289.a n : ℤ) = A338539 (n + 1)

end A338539

/-!
# A338543: Numbers k such that 1 + Product_{i

The programs for A338543, there is no canonical definition to state claims against.
-/

/-! ## A338543.P18100806381910554493

`floor(A193276(n+1)/sqrt(55))`
-/

namespace A338543.P18100806381910554493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193276 (n + 1) : ℝ) / Real.sqrt (55 : ℝ)⌋

end

end A338543.P18100806381910554493

/-!
# A338544: a(n) = (5*floor((n-1)/2)^2 + (4+(-1)^n)*floor((n-1)/2)) / 2.

The programs for A338544, the canonical program `A338544.P13923182106641021751` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338544 has offset 0).

The definition of A338544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338544.P13923182106641021751

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A338544

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13923182106641021751.Spec : Prop :=
  ∀ n, P13923182106641021751.a n = A338544 n

theorem P13923182106641021751.correct : P13923182106641021751.Spec := by
  intro n
  simp only [A338544]

end A338544

/-! ## A338544.P8648321540138372068

`∑[n*ratio[gcd(2, n)]]-ceil(3*n/2)`
-/

namespace A338544.P8648321540138372068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (⌈3 * ((n : ℚ) / 2)⌉ : ℚ)

end

end A338544.P8648321540138372068

namespace A338544

/-- `∑[n*ratio[gcd(2, n)]]-ceil(3*n/2)` -/
def P8648321540138372068.Spec : Prop :=
  ∀ n, P8648321540138372068.a n = (A338544 n : ℚ)

end A338544

/-! ## A338544.P17208584974001931250

`a(n-1)+lcm(n, 2-lcm(2, n))/n` with `a(0)=0`
-/

namespace A338544.P17208584974001931250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Int.lcm (n : ℤ) (2 - (Nat.lcm 2 n : ℤ)) : ℚ) / (n : ℚ)

end

end A338544.P17208584974001931250

namespace A338544

/-- `a(n-1)+lcm(n, 2-lcm(2, n))/n` -/
def P17208584974001931250.Spec : Prop :=
  ∀ n, P17208584974001931250.a n = (A338544 n : ℚ)

end A338544

/-! ## A338544.P16375354531691428516

`∑[5-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=4`
-/

namespace A338544.P16375354531691428516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 4] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A338544.P16375354531691428516

namespace A338544

/-- `∑[5-a(n-1)]+a(n-2)` -/
def P16375354531691428516.Spec : Prop :=
  ∀ n, P16375354531691428516.a n = A338544 n

end A338544

/-! ## A338544.P15649615834693220733

`5-a(n-4)+a(n-2)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=4`
-/

namespace A338544.P15649615834693220733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 4] fun n a =>
  5 - a (n - 4) + (a (n - 2) + a (n - 2))

end

end A338544.P15649615834693220733

namespace A338544

/-- `5-a(n-4)+a(n-2)+a(n-2)` -/
def P15649615834693220733.Spec : Prop :=
  ∀ n, P15649615834693220733.a n = A338544 n

end A338544

/-! ## A338544.P17666087954519813013

`5-(a(n-4)-a(n-2)-a(n-2))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=4`
-/

namespace A338544.P17666087954519813013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 4] fun n a =>
  5 - (a (n - 4) - a (n - 2) - a (n - 2))

end

end A338544.P17666087954519813013

namespace A338544

/-- `5-(a(n-4)-a(n-2)-a(n-2))` -/
def P17666087954519813013.Spec : Prop :=
  ∀ n, P17666087954519813013.a n = A338544 n

end A338544

/-! ## A338544.P13836005080243987572

`n²-record[A267313(n)]`
-/

namespace A338544.P13836005080243987572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338544.P13836005080243987572

namespace A338544

/-- `n²-record[A267313(n)]` -/
def P13836005080243987572.Spec : Prop :=
  ∀ n, P13836005080243987572.a n = A338544 n

end A338544

/-! ## A338544.P16122537404203496621

`A085787(n)-A022998(n)`
-/

namespace A338544.P16122537404203496621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n - A022998 n

end

end A338544.P16122537404203496621

namespace A338544

/-- `A085787(n)-A022998(n)` -/
def P16122537404203496621.Spec : Prop :=
  ∀ n, P16122537404203496621.a n = A338544 n

end A338544

/-! ## A338544.P3027347908442084828

`A032528(n)-A118277(n)`
-/

namespace A338544.P3027347908442084828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n - A118277 n

end

end A338544.P3027347908442084828

namespace A338544

/-- `A032528(n)-A118277(n)` -/
def P3027347908442084828.Spec : Prop :=
  ∀ n, P3027347908442084828.a n = A338544 n

end A338544

/-! ## A338544.P16031480286148582534

`A329482(n)-A008805(n)`
-/

namespace A338544.P16031480286148582534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329482 n - A008805 n

end

end A338544.P16031480286148582534

namespace A338544

/-- `A329482(n)-A008805(n)` -/
def P16031480286148582534.Spec : Prop :=
  ∀ n, P16031480286148582534.a n = A338544 n

end A338544

/-! ## A338544.P16493082473104074719

`A195041(n)-A210981(n)`
-/

namespace A338544.P16493082473104074719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 n - A210981 n

end

end A338544.P16493082473104074719

namespace A338544

/-- `A195041(n)-A210981(n)` -/
def P16493082473104074719.Spec : Prop :=
  ∀ n, P16493082473104074719.a n = A338544 n

end A338544

/-! ## A338544.P9807681540846956118

`∑[A064680(n)]-A007494(n)`
-/

namespace A338544.P9807681540846956118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007494 n

end

end A338544.P9807681540846956118

namespace A338544

/-- `∑[A064680(n)]-A007494(n)` -/
def P9807681540846956118.Spec : Prop :=
  ∀ n, P9807681540846956118.a n = A338544 n

end A338544

/-! ## A338544.P7361022372738824449

`A057569(n+1)-A007494(n)`
-/

namespace A338544.P7361022372738824449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057569 (n + 1) - A007494 n

end

end A338544.P7361022372738824449

namespace A338544

/-- `A057569(n+1)-A007494(n)` -/
def P7361022372738824449.Spec : Prop :=
  ∀ n, P7361022372738824449.a n = A338544 n

end A338544

/-! ## A338544.P10739639790228588020

`A117748(n+1)-A116940(n)`
-/

namespace A338544.P10739639790228588020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1) - A116940 n

end

end A338544.P10739639790228588020

namespace A338544

/-- `A117748(n+1)-A116940(n)` -/
def P10739639790228588020.Spec : Prop :=
  ∀ n, P10739639790228588020.a n = A338544 n

end A338544

/-! ## A338544.P1207016030075623114

`A104585(n)-A274830(n+1)`
-/

namespace A338544.P1207016030075623114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104585 n - A274830 (n + 1)

end

end A338544.P1207016030075623114

namespace A338544

/-- `A104585(n)-A274830(n+1)` -/
def P1207016030075623114.Spec : Prop :=
  ∀ n, P1207016030075623114.a n = A338544 n

end A338544

/-! ## A338544.P167310090880034425

`A298950(n+1)-A265382(n)`
-/

namespace A338544.P167310090880034425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1) - A265382 n

end

end A338544.P167310090880034425

namespace A338544

/-- `A298950(n+1)-A265382(n)` -/
def P167310090880034425.Spec : Prop :=
  ∀ n, P167310090880034425.a n = A338544 n

end A338544

/-! ## A338544.P12584580869573863030

`C(A007494(n), 2)-A000217(n)`
-/

namespace A338544.P12584580869573863030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A007494 n).toNat 2 : ℤ) - A000217 n

end

end A338544.P12584580869573863030

namespace A338544

/-- `C(A007494(n), 2)-A000217(n)` -/
def P12584580869573863030.Spec : Prop :=
  ∀ n, P12584580869573863030.a n = A338544 n

end A338544

/-! ## A338544.P2206234860884872345

`∑[A165355(n)-n]-A165355(n)`
-/

namespace A338544.P2206234860884872345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A165355 n

end

end A338544.P2206234860884872345

namespace A338544

/-- `∑[A165355(n)-n]-A165355(n)` -/
def P2206234860884872345.Spec : Prop :=
  ∀ n, P2206234860884872345.a n = A338544 n

end A338544

/-! ## A338544.P9984302633617998440

`A111712(n+1)-A113497(n+1)`
-/

namespace A338544.P9984302633617998440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111712 (n + 1) - A113497 (n + 1)

end

end A338544.P9984302633617998440

namespace A338544

/-- `A111712(n+1)-A113497(n+1)` -/
def P9984302633617998440.Spec : Prop :=
  ∀ n, P9984302633617998440.a n = A338544 n

end A338544

/-! ## A338544.P10887385745273683748

`A111711(n+1)-A114752(n+1)`
-/

namespace A338544.P10887385745273683748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111711 (n + 1) - A114752 (n + 1)

end

end A338544.P10887385745273683748

namespace A338544

/-- `A111711(n+1)-A114752(n+1)` -/
def P10887385745273683748.Spec : Prop :=
  ∀ n, P10887385745273683748.a n = A338544 n

end A338544

/-!
# A338546: For n > 0, a(n) is the number of 1's among the first T(n) terms of the sequence 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, ..., k 1's, k 0's, where T(n) is the n-th triangular number.

The programs for A338546, there is no canonical definition to state claims against.
-/

/-! ## A338546.P1219481241687038663

`A037458(∑[n+1])`
-/

namespace A338546.P1219481241687038663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338546.P1219481241687038663

/-! ## A338546.P6436029728811354417

`(A181176(n+1)+∑[n+1])/2`
-/

namespace A338546.P6436029728811354417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181176 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A338546.P6436029728811354417

/-! ## A338546.P14390796379337850982

`A080344(A049068(∑[n+1]))`
-/

namespace A338546.P14390796379337850982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080344 (A049068 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A338546.P14390796379337850982

/-! ## A338546.P9781088827166262619

`record[A037458(A160791(n+1))]`
-/

namespace A338546.P9781088827166262619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (A160791 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338546.P9781088827166262619

/-! ## A338546.P13297711786914125805

`record[A037458(A276956(n+1))]`
-/

namespace A338546.P13297711786914125805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (A276956 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338546.P13297711786914125805

/-! ## A338546.P8049836342665477

`record[A057944(A064801(n+1))-n]`
-/

namespace A338546.P8049836342665477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A064801 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338546.P8049836342665477

/-! ## A338546.P2520957974438838364

`A280497(A181176(n+1)+∑[n+1])`
-/

namespace A338546.P2520957974438838364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (A181176 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A338546.P2520957974438838364

/-! ## A338546.P15500489879516465353

`gcd(n, n+1)*A037458(A000217(n+1))`
-/

namespace A338546.P15500489879516465353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A037458 (A000217 (n + 1)).toNat

end

end A338546.P15500489879516465353

/-! ## A338546.P3199925442165068423

`A004526(A181176(n+1)+A000217(n+1))`
-/

namespace A338546.P3199925442165068423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A181176 (n + 1) + A000217 (n + 1)).toNat

end

end A338546.P3199925442165068423

/-!
# A338547: a(n) = n^2 * Sum_{d|n} (-1)^(n/d + 1) * mu(d) / d^2.

The programs for A338547, the canonical program `A338547.P6553117471732932713` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338547 has offset 1).

The definition of A338547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338547.P11009865403738705612

`∑{d}[n+1, A008683(#)*A162395((n+1)/#)]`
-/

namespace A338547.P11009865403738705612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A162395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338547.P11009865403738705612

namespace A338547

/-- `∑{d}[n+1, A008683(#)*A162395((n+1)/#)]` -/
def P11009865403738705612.Spec : Prop :=
  ∀ n, P11009865403738705612.a n = A338547 (n + 1)

end A338547

/-! ## A338547.P16853934707249870305

`∑{d}[n+1, A120630(#)*A138501((n+1)/#)]`
-/

namespace A338547.P16853934707249870305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A138501 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338547.P16853934707249870305

namespace A338547

/-- `∑{d}[n+1, A120630(#)*A138501((n+1)/#)]` -/
def P16853934707249870305.Spec : Prop :=
  ∀ n, P16853934707249870305.a n = A338547 (n + 1)

end A338547

/-! ## A338547.P6553117471732932713

`∑{d}[n+1, A007427(#)*A321543((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338547

/-- `∑{d}[n+1, A007427(#)*A321543((n+1)/#)]` -/
def P6553117471732932713.Spec : Prop :=
  ∀ n, P6553117471732932713.a n = A338547 (n + 1)

theorem P6553117471732932713.correct : P6553117471732932713.Spec := by
  intro n
  simp only [A338547, Nat.add_sub_cancel]

end A338547

/-! ## A338547.P11508389658011080890

`∑{d}[n+1, A046692(#)*A326238((n+1)/#)]`
-/

namespace A338547.P11508389658011080890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A326238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338547.P11508389658011080890

namespace A338547

/-- `∑{d}[n+1, A046692(#)*A326238((n+1)/#)]` -/
def P11508389658011080890.Spec : Prop :=
  ∀ n, P11508389658011080890.a n = A338547 (n + 1)

end A338547

/-! ## A338547.P13939005497336771715

`∑{d}[n+1, A321558(#)*A327274((n+1)/#)]`
-/

namespace A338547.P13939005497336771715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321558 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338547.P13939005497336771715

namespace A338547

/-- `∑{d}[n+1, A321558(#)*A327274((n+1)/#)]` -/
def P13939005497336771715.Spec : Prop :=
  ∀ n, P13939005497336771715.a n = A338547 (n + 1)

end A338547

/-! ## A338547.P15068575766406833461

`∑{d}[n+1, A334657(#)*A368929((n+1)/#)]`
-/

namespace A338547.P15068575766406833461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d * A368929 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338547.P15068575766406833461

namespace A338547

/-- `∑{d}[n+1, A334657(#)*A368929((n+1)/#)]` -/
def P15068575766406833461.Spec : Prop :=
  ∀ n, P15068575766406833461.a n = A338547 (n + 1)

end A338547

/-!
# A338548: a(n) = n^3 * Sum_{d|n} (-1)^(n/d + 1) * mu(d) / d^3.

The programs for A338548, the canonical program `A338548.P7895902691056002045` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338548 has offset 1).

The definition of A338548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338548.P7895902691056002045

`∑{d}[n+1, A007427(#)*A138503((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338548

/-- `∑{d}[n+1, A007427(#)*A138503((n+1)/#)]` -/
def P7895902691056002045.Spec : Prop :=
  ∀ n, P7895902691056002045.a n = A338548 (n + 1)

theorem P7895902691056002045.correct : P7895902691056002045.Spec := by
  intro n
  simp only [A338548, Nat.add_sub_cancel]

end A338548

/-! ## A338548.P5241947347509007625

`∑{d}[n+1, A321559(#)*A327274((n+1)/#)]`
-/

namespace A338548.P5241947347509007625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321559 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338548.P5241947347509007625

namespace A338548

/-- `∑{d}[n+1, A321559(#)*A327274((n+1)/#)]` -/
def P5241947347509007625.Spec : Prop :=
  ∀ n, P5241947347509007625.a n = A338548 (n + 1)

end A338548

/-! ## A338548.P6126970771160697770

`∑{d}[n+1, A334659(#)*A369101((n+1)/#)]`
-/

namespace A338548.P6126970771160697770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334659 d * A369101 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338548.P6126970771160697770

namespace A338548

/-- `∑{d}[n+1, A334659(#)*A369101((n+1)/#)]` -/
def P6126970771160697770.Spec : Prop :=
  ∀ n, P6126970771160697770.a n = A338548 (n + 1)

end A338548

/-! ## A338548.P4113341256974693037

`∑{d}[n+1, A002408(#)*A327276((n+1)/#)]`
-/

namespace A338548.P4113341256974693037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002408 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338548.P4113341256974693037

namespace A338548

/-- `∑{d}[n+1, A002408(#)*A327276((n+1)/#)]` -/
def P4113341256974693037.Spec : Prop :=
  ∀ n, P4113341256974693037.a n = A338548 (n + 1)

end A338548

/-!
# A338549: a(n) = n^4 * Sum_{d|n} (-1)^(n/d + 1) * mu(d) / d^4.

The programs for A338549, the canonical program `A338549.P13915775322579867345` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338549 has offset 1).

The definition of A338549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338549.P13915775322579867345

`∑{d}[n+1, A321560(#)*A327274((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338549

/-- `∑{d}[n+1, A321560(#)*A327274((n+1)/#)]` -/
def P13915775322579867345.Spec : Prop :=
  ∀ n, P13915775322579867345.a n = A338549 (n + 1)

theorem P13915775322579867345.correct : P13915775322579867345.Spec := by
  intro n
  simp only [A338549, Nat.add_sub_cancel]

end A338549

/-!
# A338550: Number of binary trees of height n such that the number of nodes at depth d equals d+1 for every d = 0..n.

The programs for A338550, there is no canonical definition to state claims against.
-/

/-! ## A338550.P9464430263827397650

`∏[C(floor(2/acot(n)), n+1)]`
-/

namespace A338550.P9464430263827397650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A338550.P9464430263827397650

/-! ## A338550.P11284441704815341321

`∏[C(2*n, (n+1)%n!)]`
-/

namespace A338550.P11284441704815341321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) ((n + 1) % Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A338550.P11284441704815341321

/-! ## A338550.P5477864893881576249

`∏[C(2*n, (n-1)%(n+1))]`
-/

namespace A338550.P5477864893881576249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A338550.P5477864893881576249

/-! ## A338550.P18296062410199522388

`C(2*n, n+1)*a(n-1)` with `a(0)=1`
-/

namespace A338550.P18296062410199522388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n) (n + 1) * a (n - 1)

end

end A338550.P18296062410199522388

/-! ## A338550.P13176979797572254230

`floor(C(2*n, n-1)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A338550.P13176979797572254230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n) ((n : ℤ) - 1).toNat * a (n - 1)

end

end A338550.P13176979797572254230

/-!
# A338552: Non-powers of primes whose prime indices have a common divisor > 1.

The programs for A338552, there is no canonical definition to state claims against.
-/

/-! ## A338552.P4211804206125114625

`record[A327656(A061346(n+2))]`
-/

namespace A338552.P4211804206125114625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A061346 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338552.P4211804206125114625

/-!
# A338553: Number of integer partitions of n that are either constant or relatively prime.

The programs for A338553, there is no canonical definition to state claims against.
-/

/-! ## A338553.P4648886937877770746

`A000837(n)+∑{d}[n, floor(atan(#))]`
-/

namespace A338553.P4648886937877770746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋

end

end A338553.P4648886937877770746

/-! ## A338553.P11548449246535169679

`A032741(n)+A000837(n)`
-/

namespace A338553.P11548449246535169679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A000837 n

end

end A338553.P11548449246535169679

/-! ## A338553.P17716968441976827501

`A000041(n)-A338554(n)`
-/

namespace A338553.P17716968441976827501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A338554 n

end

end A338553.P17716968441976827501

/-! ## A338553.P1566001104547950321

`A000837(n)+A319410(n)/2`
-/

namespace A338553.P1566001104547950321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000837 n : ℚ) + (A319410 n : ℚ) / 2

end

end A338553.P1566001104547950321

/-! ## A338553.P16870259524090748102

`A000837(n)+A018783(n)-A338554(n)`
-/

namespace A338553.P16870259524090748102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A338554 n)

end

end A338553.P16870259524090748102

/-!
# A338554: Number of non-constant integer partitions of n whose parts have a common divisor > 1.

The programs for A338554, there is no canonical definition to state claims against.
-/

/-! ## A338554.P17114082733576002831

`A018783(n)-∑{d}[n, floor(atan(#))]`
-/

namespace A338554.P17114082733576002831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n - ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋

end

end A338554.P17114082733576002831

/-! ## A338554.P11155869662740634790

`A018783(n)-A032741(n)`
-/

namespace A338554.P11155869662740634790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n - A032741 n

end

end A338554.P11155869662740634790

/-! ## A338554.P15622585535156369854

`A325937(A008574(n))+A018783(n)`
-/

namespace A338554.P15622585535156369854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A008574 n).toNat + A018783 n

end

end A338554.P15622585535156369854

/-! ## A338554.P3009624717460089225

`A018783(n)-A059169(A145154(n))`
-/

namespace A338554.P3009624717460089225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n - A059169 (A145154 n).toNat

end

end A338554.P3009624717460089225

/-! ## A338554.P10683540942456256871

`A167934(n)-A000837(n)`
-/

namespace A338554.P10683540942456256871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 n - A000837 n

end

end A338554.P10683540942456256871

/-! ## A338554.P11707761711396618570

`A000041(n)-A338553(n)`
-/

namespace A338554.P11707761711396618570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A338553 n

end

end A338554.P11707761711396618570

/-! ## A338554.P4987681177816872886

`A167934(A028310(n))%A000837(n)`
-/

namespace A338554.P4987681177816872886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167934 (A028310 n).toNat) (A000837 n)

end

end A338554.P4987681177816872886

/-! ## A338554.P10282931878698495974

`A000041(n)-(A032741(n)+A000837(n))`
-/

namespace A338554.P10282931878698495974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A032741 n + A000837 n)

end

end A338554.P10282931878698495974

/-! ## A338554.P16422910920101148243

`A018783(n)+A167934(n)-A000041(n)`
-/

namespace A338554.P16422910920101148243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + (A167934 n - A000041 n)

end

end A338554.P16422910920101148243

/-! ## A338554.P2758730976884465884

`A000837(n)+A018783(n)-A338553(n)`
-/

namespace A338554.P2758730976884465884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A338553 n)

end

end A338554.P2758730976884465884

/-! ## A338554.P10841214580749710327

`A167934(n)-A168532(∑[abs(1-n)])`
-/

namespace A338554.P10841214580749710327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 n - A168532 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338554.P10841214580749710327

/-!
# A338555: Numbers that are either a power of a prime or have relatively prime prime indices.

The programs for A338555, there is no canonical definition to state claims against.
-/

/-! ## A338555.P17353074131477294599

`comp[A338552(n+1)-1]+1`
-/

namespace A338555.P17353074131477294599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338552 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A338555.P17353074131477294599

/-! ## A338555.P17589743301763671127

`∪[2*(n+1), A316476(n+1)]`
-/

namespace A338555.P17589743301763671127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338555.P17589743301763671127

/-! ## A338555.P12793732346793059238

`∪[2*(n+1), A328674(n+1)]`
-/

namespace A338555.P12793732346793059238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338555.P12793732346793059238

/-! ## A338555.P17755315980385957839

`∪[8*n+2, A338331(n+1)]`
-/

namespace A338555.P17755315980385957839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338555.P17755315980385957839

/-! ## A338555.P12174120861870941842

`eq[ceil(acot(n)), A327402(n^(n%2))]`
-/

namespace A338555.P12174120861870941842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327402 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338555.P12174120861870941842

/-! ## A338555.P3019432666714239830

`eq[1, A290105(xor(1, n)*a(n-1)+1)]` with `a(0)=3`
-/

namespace A338555.P3019432666714239830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A290105 ((Nat.xor 1 n : ℤ) * f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338555.P3019432666714239830

/-! ## A338555.P13176032559551678678

`lt[A001221(A327531(n+1)), 2]+1`
-/

namespace A338555.P13176032559551678678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327531 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A338555.P13176032559551678678

/-! ## A338555.P3716977892940953270

`eq[1, gcd(A020639(n+1), A035109(n))]+1`
-/

namespace A338555.P3716977892940953270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (n + 1)) (A035109 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A338555.P3716977892940953270

/-! ## A338555.P4516359007525866390

`lt[A001221(n+1)-1, A327530(n+1)]+1`
-/

namespace A338555.P4516359007525866390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A338555.P4516359007525866390

/-!
# A338556: Products of three prime numbers of even index.

The programs for A338556, there is no canonical definition to state claims against.
-/

/-! ## A338556.P7162833816498079498

`record[A248101(A046316(n+1))]`
-/

namespace A338556.P7162833816498079498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A046316 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338556.P7162833816498079498

/-! ## A338556.P5976874346466240438

`filter[A066207(n+1), A101605(#)]`
-/

namespace A338556.P5976874346466240438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A338556.P5976874346466240438

/-! ## A338556.P388776293286334638

`∩[A014612(n+1), A066207(n+1)]`
-/

namespace A338556.P388776293286334638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338556.P388776293286334638

/-! ## A338556.P6017310162669011007

`∩[A046316(n+1), A066207(n+1)]`
-/

namespace A338556.P6017310162669011007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338556.P6017310162669011007

/-! ## A338556.P6800576590283564372

`∩[A066207(n+1), A358763(n+1)]`
-/

namespace A338556.P6800576590283564372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338556.P6800576590283564372

/-!
# A338557: Products of three distinct prime numbers of even index.

The programs for A338557, there is no canonical definition to state claims against.
-/

/-! ## A338557.P4577876534634113906

`∩[A046389(n+1), A258117(n+1)]`
-/

namespace A338557.P4577876534634113906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P4577876534634113906

/-! ## A338557.P14189784854750035280

`∩[A046389(n+1), A352140(n+1)]`
-/

namespace A338557.P14189784854750035280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P14189784854750035280

/-! ## A338557.P5617677571384754807

`∩[A046316(n+1), A258117(n+1)]`
-/

namespace A338557.P5617677571384754807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P5617677571384754807

/-! ## A338557.P12876477524089115249

`∩[A046389(n+1), A066207(n+1)]`
-/

namespace A338557.P12876477524089115249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P12876477524089115249

/-! ## A338557.P5869250744808712752

`∩[A258117(n+1), A278569(n+1)]`
-/

namespace A338557.P5869250744808712752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P5869250744808712752

/-! ## A338557.P4900736466032591195

`∩[A046340(n+1), A258117(n+1)]`
-/

namespace A338557.P4900736466032591195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P4900736466032591195

/-! ## A338557.P9802631401955594213

`∩[A257411(n+1), A258117(n+1)]`
-/

namespace A338557.P9802631401955594213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P9802631401955594213

/-! ## A338557.P9529198123435632533

`∩[A066207(n+1), A378480(n+1)]`
-/

namespace A338557.P9529198123435632533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P9529198123435632533

/-! ## A338557.P8249729178825701661

`∩[A258117(n+1), A378480(n+1)]`
-/

namespace A338557.P8249729178825701661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P8249729178825701661

/-! ## A338557.P12571088856404441084

`∩[A352140(n+1), A378480(n+1)]`
-/

namespace A338557.P12571088856404441084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P12571088856404441084

/-! ## A338557.P10703657171411617239

`∩[A066207(n+1), A073488(n+1)]`
-/

namespace A338557.P10703657171411617239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P10703657171411617239

/-! ## A338557.P8512912041198518710

`∩[A073488(n+1), A258117(n+1)]`
-/

namespace A338557.P8512912041198518710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P8512912041198518710

/-! ## A338557.P17694180303122483419

`∩[A073488(n+1), A352140(n+1)]`
-/

namespace A338557.P17694180303122483419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P17694180303122483419

/-! ## A338557.P7187076395482192775

`∩[A007304(n+1), A066207(n+1)]`
-/

namespace A338557.P7187076395482192775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P7187076395482192775

/-! ## A338557.P6350601444643544296

`∩[A007304(n+1), A258117(n+1)]`
-/

namespace A338557.P6350601444643544296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P6350601444643544296

/-! ## A338557.P4829169895925174882

`∩[A007304(n+1), A352140(n+1)]`
-/

namespace A338557.P4829169895925174882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P4829169895925174882

/-! ## A338557.P16873506624752711999

`∩[A258117(n+1), A345382(n+1)]`
-/

namespace A338557.P16873506624752711999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P16873506624752711999

/-! ## A338557.P7768315289289752354

`∩[A258117(n+1), A267891(n+1)]`
-/

namespace A338557.P7768315289289752354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338557.P7768315289289752354

/-!
# A338560: Denominators of the fractions f(n) such that (6/Pi^2)*f(n) is the asymptotic density of the numbers k with A280292(k) = sopfr(k) - sopf(k) = n.

The programs for A338560, there is no canonical definition to state claims against.
-/

/-! ## A338560.P6687680712814861074

`∏{p}[∏[A049084(2*n+3)²-n], #-1]`
-/

namespace A338560.P6687680712814861074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * n + 3) ^ 2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A338560.P6687680712814861074

/-! ## A338560.P7007294295158299130

`A140284(A018010(n))`
-/

namespace A338560.P7007294295158299130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140284 (A018010 n).toNat

end

end A338560.P7007294295158299130

/-!
# A338562: Number of cyclic diagonal Latin squares of order 2n+1.

The programs for A338562, there is no canonical definition to state claims against.
-/

/-! ## A338562.P15464220205081626806

`A370672(n)*(2*n)!`
-/

namespace A338562.P15464220205081626806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370672 n * (Nat.factorial (2 * n) : ℤ)

end

end A338562.P15464220205081626806

/-! ## A338562.P16881326415266741663

`A123565(2*n+1)*(2*n+1)!`
-/

namespace A338562.P16881326415266741663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123565 (2 * n + 1) * (Nat.factorial (2 * n + 1) : ℤ)

end

end A338562.P16881326415266741663

/-! ## A338562.P2952728702822346811

`Δ[n²]!*A123565(Δ[n²])`
-/

namespace A338562.P2952728702822346811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ) * A123565 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A338562.P2952728702822346811

/-!
# A338563: a(n) = lcm(n, tau(n), sigma(n)) where tau(k) is the number of divisors of k (A000005) and sigma(k) is the sum of divisors of k (A000203).

The programs for A338563, the canonical program `A338563.P2974356808106912103` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338563 has offset 1).

The definition of A338563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338563.P2974356808106912103

`lcm(lcm(n+1, ∏{e}[n+1, #+1]), ∑{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A338563

/-- `lcm(lcm(n+1, ∏{e}[n+1, #+1]), ∑{d}[n+1, #])` -/
def P2974356808106912103.Spec : Prop :=
  ∀ n, (P2974356808106912103.a n : ℤ) = A338563 (n + 1)

theorem P2974356808106912103.correct : P2974356808106912103.Spec := by
  intro n
  simp only [A338563, Nat.add_sub_cancel]

end A338563

/-! ## A338563.P10213846341563844662

`lcm(n+1, A009278(n+1))`
-/

namespace A338563.P10213846341563844662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A009278 (n + 1))

end

end A338563.P10213846341563844662

namespace A338563

/-- `lcm(n+1, A009278(n+1))` -/
def P10213846341563844662.Spec : Prop :=
  ∀ n, (P10213846341563844662.a n : ℤ) = A338563 (n + 1)

end A338563

/-! ## A338563.P9420446671704194709

`lcm(∑{d}[n+1, #], A009230(n+1))`
-/

namespace A338563.P9420446671704194709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A009230 (n + 1))

end

end A338563.P9420446671704194709

namespace A338563

/-- `lcm(∑{d}[n+1, #], A009230(n+1))` -/
def P9420446671704194709.Spec : Prop :=
  ∀ n, (P9420446671704194709.a n : ℤ) = A338563 (n + 1)

end A338563

/-! ## A338563.P6836605253721535039

`lcm(-∑{d}[n+1, or(#, -1)], A009242(n+1))`
-/

namespace A338563.P6836605253721535039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-(∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1))) (A009242 (n + 1))

end

end A338563.P6836605253721535039

namespace A338563

/-- `lcm(-∑{d}[n+1, or(#, -1)], A009242(n+1))` -/
def P6836605253721535039.Spec : Prop :=
  ∀ n, (P6836605253721535039.a n : ℤ) = A338563 (n + 1)

end A338563

/-! ## A338563.P6075304037217076531

`lcm(Δ[A006218(n)], A009242(n+1))`
-/

namespace A338563.P6075304037217076531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A009242 (n + 1))

end

end A338563.P6075304037217076531

namespace A338563

/-- `lcm(Δ[A006218(n)], A009242(n+1))` -/
def P6075304037217076531.Spec : Prop :=
  ∀ n, (P6075304037217076531.a n : ℤ) = A338563 (n + 1)

end A338563

/-! ## A338563.P5984289687745360624

`lcm(Δ[A160664(n)], A009230(n+1))`
-/

namespace A338563.P5984289687745360624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A009230 (n + 1))

end

end A338563.P5984289687745360624

namespace A338563

/-- `lcm(Δ[A160664(n)], A009230(n+1))` -/
def P5984289687745360624.Spec : Prop :=
  ∀ n, (P5984289687745360624.a n : ℤ) = A338563 (n + 1)

end A338563

/-! ## A338563.P9919575575479865562

`lcm(A000005(n+1)*A057020(n+1), C(n+1, n))`
-/

namespace A338563.P9919575575479865562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1) * A057020 (n + 1)) (Nat.choose (n + 1) n : ℤ)

end

end A338563.P9919575575479865562

namespace A338563

/-- `lcm(A000005(n+1)*A057020(n+1), C(n+1, n))` -/
def P9919575575479865562.Spec : Prop :=
  ∀ n, (P9919575575479865562.a n : ℤ) = A338563 (n + 1)

end A338563

/-!
# A338565: Number of ordered factorizations of n into decimal palindromes > 1.

The programs for A338565, there is no canonical definition to state claims against.
-/

/-! ## A338565.P4804132376033755463

`A067734(n+1)+A025466(A330859(3*n))`
-/

namespace A338565.P4804132376033755463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (n + 1) + A025466 (A330859 (3 * n + 100)).toNat

end

end A338565.P4804132376033755463

/-! ## A338565.P9086093538098209913

`A067734(n+1)+A000030(A244173(n))`
-/

namespace A338565.P9086093538098209913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (n + 1) + A000030 (A244173 (n + 10)).toNat

end

end A338565.P9086093538098209913

/-! ## A338565.P12360466925242306734

`A004086(A244173(n)+A067734(n+1))`
-/

namespace A338565.P12360466925242306734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A244173 (n + 10) + A067734 (n + 1)).toNat

end

end A338565.P12360466925242306734

/-! ## A338565.P8241977002207183654

`A001222(2^(A244173(n)+A067734(n+1)))`
-/

namespace A338565.P8241977002207183654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A244173 (n + 10) + A067734 (n + 1) : ℤ))).toNat

end

end A338565.P8241977002207183654

/-! ## A338565.P6743867496192840164

`or(A067734(n+1), A266588(A000073(n)))`
-/

namespace A338565.P6743867496192840164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067734 (n + 1)) (A266588 (A000073 n).toNat)

end

end A338565.P6743867496192840164

/-!
# A338566: Primes p such that (p*q) mod r is prime, where q and r are the next primes after p.

The programs for A338566, there is no canonical definition to state claims against.
-/

/-! ## A338566.P10566322970362123928

`A258031(A183530(n+2))`
-/

namespace A338566.P10566322970362123928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258031 (A183530 (n + 2)).toNat

end

end A338566.P10566322970362123928

/-! ## A338566.P9024389051451373461

`p?[∑[A052816(A200515(n))]]`
-/

namespace A338566.P9024389051451373461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052816 (A200515 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338566.P9024389051451373461

/-! ## A338566.P9167954080079533021

`p?[or(A061901(n), A298024(n))]`
-/

namespace A338566.P9167954080079533021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061901 n) (A298024 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338566.P9167954080079533021

/-!
# A338567: Primes p such that (q*r) mod p is prime, where q and r are the next primes after p.

The programs for A338567, there is no canonical definition to state claims against.
-/

/-! ## A338567.P875843426341500923

`A171602(∑[A172347(n)])`
-/

namespace A338567.P875843426341500923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338567.P875843426341500923

/-! ## A338567.P5943875577866594396

`A171602(∑[A279222(n)²])`
-/

namespace A338567.P5943875577866594396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279222 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338567.P5943875577866594396

/-! ## A338567.P2317361648755979420

`A171602(A005472(n+1)+n)`
-/

namespace A338567.P2317361648755979420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (A005472 (n + 1) + (n : ℤ)).toNat

end

end A338567.P2317361648755979420

/-! ## A338567.P7423628707475114451

`A171602(∑[A171622(n+1)²])`
-/

namespace A338567.P7423628707475114451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171622 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338567.P7423628707475114451

/-! ## A338567.P17012538375275997506

`A171602(∑[∏[A054576(n+1)²]])`
-/

namespace A338567.P17012538375275997506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338567.P17012538375275997506

/-!
# A338568: Number of integers less than n with the same number of unordered factorizations as n.

The programs for A338568, there is no canonical definition to state claims against.
-/

/-! ## A338568.P10504703300709028355

`C(A061395(n+1), A001221(A286263(n+1)))`
-/

namespace A338568.P10504703300709028355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061395 (n + 1)).toNat (A001221 (A286263 (n + 1)).toNat).toNat

end

end A338568.P10504703300709028355

/-! ## A338568.P7896067513467964510

`C(A061395(n+1), A302247(A075525(2*(n+1))))`
-/

namespace A338568.P7896067513467964510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061395 (n + 1)).toNat (A302247 (A075525 (2 * (n + 1))).toNat).toNat

end

end A338568.P7896067513467964510

/-! ## A338568.P4139585803621984089

`C(A061395(n+1), A369995(A160552(2*n+1)))`
-/

namespace A338568.P4139585803621984089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061395 (n + 1)).toNat (A369995 (A160552 (2 * n + 1)).toNat).toNat

end

end A338568.P4139585803621984089

/-! ## A338568.P9828586437031856987

`C(A363942(n+1), A056624(A003945(n)))`
-/

namespace A338568.P9828586437031856987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A363942 (n + 1)).toNat (A056624 (A003945 n).toNat).toNat

end

end A338568.P9828586437031856987

/-! ## A338568.P8904424587925487474

`C(A363487(n+1), A007877(A288652(n)))`
-/

namespace A338568.P8904424587925487474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A363487 (n + 1)).toNat (A007877 (A288652 n).toNat).toNat

end

end A338568.P8904424587925487474

/-!
# A338569: Number of integers less than n with the same number of ordered factorizations as n.

The programs for A338569, there is no canonical definition to state claims against.
-/

/-! ## A338569.P13083000580256899547

`A064839(n+1)-A112526(A091136(n))`
-/

namespace A338569.P13083000580256899547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (n + 1) - A112526 (A091136 n).toNat

end

end A338569.P13083000580256899547

/-! ## A338569.P13750865181239944220

`A335286(n+1)-A112526(A091136(n))`
-/

namespace A338569.P13750865181239944220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335286 (n + 1) - A112526 (A091136 n).toNat

end

end A338569.P13750865181239944220

/-! ## A338569.P6367512160942332969

`A335286(n+1)-A050370(A113195(2*(n+1)))`
-/

namespace A338569.P6367512160942332969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335286 (n + 1) - A050370 (A113195 (2 * (n + 1))).toNat

end

end A338569.P6367512160942332969

/-! ## A338569.P9141005123023353159

`A079067(n+1)+A010051(A077168(n))`
-/

namespace A338569.P9141005123023353159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1) + A010051 (A077168 n).toNat

end

end A338569.P9141005123023353159

/-! ## A338569.P10841606064138954045

`A124754(C(A087207(n+1), A124778(2*(n+2))))`
-/

namespace A338569.P10841606064138954045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Nat.choose (A087207 (n + 1)).toNat (A124778 (2 * (n + 2))).toNat)

end

end A338569.P10841606064138954045

/-!
# A338570: Primes p such that q*r mod p is prime, where q is the prime preceding p and r is the prime following p.

The programs for A338570, the canonical program `A338570.P11904695409261409454` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338570 has offset 1).

The definition of A338570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338570.P11904695409261409454

`p?[A001222(A022462(n+1))*A065091(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A338570

/-- `p?[A001222(A022462(n+1))*A065091(n+1)]` -/
def P11904695409261409454.Spec : Prop :=
  ∀ n, P11904695409261409454.a n = A338570 (n + 1)

theorem P11904695409261409454.correct : P11904695409261409454.Spec := by
  intro n
  simp only [A338570, Nat.add_sub_cancel]

end A338570

/-! ## A338570.P2085359305749361597

`A060265(lt[A058361(n+2), A007623(n)])`
-/

namespace A338570.P2085359305749361597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058361 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338570.P2085359305749361597

namespace A338570

/-- `A060265(lt[A058361(n+2), A007623(n)])` -/
def P2085359305749361597.Spec : Prop :=
  ∀ n, P2085359305749361597.a n = A338570 (n + 1)

end A338570

/-! ## A338570.P15024703427946710939

`A216227(∑[A250005(8*(n+1)+1)])`
-/

namespace A338570.P15024703427946710939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250005 (8 * (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216227 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338570.P15024703427946710939

namespace A338570

/-- `A216227(∑[A250005(8*(n+1)+1)])` -/
def P15024703427946710939.Spec : Prop :=
  ∀ n, P15024703427946710939.a n = A338570 (n + 1)

end A338570

/-! ## A338570.P11069858171354701981

`A077018(A134982(3*n+2)+A003146(n+1))`
-/

namespace A338570.P11069858171354701981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 (A134982 (3 * n + 2) + A003146 (n + 1)).toNat

end

end A338570.P11069858171354701981

namespace A338570

/-- `A077018(A134982(3*n+2)+A003146(n+1))` -/
def P11069858171354701981.Spec : Prop :=
  ∀ n, P11069858171354701981.a n = A338570 (n + 1)

end A338570

/-! ## A338570.P680494903082570763

`A317587(A048215(n+3))`
-/

namespace A338570.P680494903082570763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317587 (A048215 (n + 3)).toNat

end

end A338570.P680494903082570763

namespace A338570

/-- `A317587(A048215(n+3))` -/
def P680494903082570763.Spec : Prop :=
  ∀ n, P680494903082570763.a n = A338570 (n + 1)

end A338570

/-!
# A338572: Number of integers less than n with the same number of factorizations into prime powers as n.

The programs for A338572, there is no canonical definition to state claims against.
-/

/-! ## A338572.P5250847902398713058

`floor(A013928(∏{p}[n+1, #])/A124778(2*(n+2)))`
-/

namespace A338572.P5250847902398713058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A013928 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) / (A124778 (2 * (n + 2)) : ℚ)⌋

end

end A338572.P5250847902398713058

/-! ## A338572.P4468817028059353904

`floor(A284584(∏{p}[n+1, #])/A124778(2*(n+2)))`
-/

namespace A338572.P4468817028059353904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284584 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) / (A124778 (2 * (n + 2)) : ℚ)⌋

end

end A338572.P4468817028059353904

/-! ## A338572.P8168030385296912379

`floor((A100112(∏{p}[n+1, #])-1)/A124778(2*(n+2)))`
-/

namespace A338572.P8168030385296912379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100112 (∏ p ∈ Nat.primeFactors (f1 n), p) - 1 : ℚ) / (A124778 (2 * (n + 2)) : ℚ)⌋

end

end A338572.P8168030385296912379

/-! ## A338572.P3434251918485068783

`floor((A107079(∏{p}[n+1, #])-1)/A124778(2*(n+2)))`
-/

namespace A338572.P3434251918485068783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107079 (∏ p ∈ Nat.primeFactors (f1 n), p) - 1 : ℚ) / (A124778 (2 * (n + 2)) : ℚ)⌋

end

end A338572.P3434251918485068783

/-! ## A338572.P11400569588420422069

`A285329(n+1)+A002487(2^n)-A193592(A083260(n+1))`
-/

namespace A338572.P11400569588420422069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285329 (n + 1) + A002487 (2 ^ n) - A193592 (A083260 (n + 1)).toNat

end

end A338572.P11400569588420422069

/-!
# A338573: Array read by ascending antidiagonals: T(m,n) (m, n >= 1) is the minimum number of unit resistors needed to produce resistance m/n.

The programs for A338573, there is no canonical definition to state claims against.
-/

/-! ## A338573.P4971733832380693126

`A113881(n+1)%14`
-/

namespace A338573.P4971733832380693126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113881 (n + 1)) 14

end

end A338573.P4971733832380693126

/-! ## A338573.P2535617993841116545

`A113881((n+1)^ceil(n/98))`
-/

namespace A338573.P2535617993841116545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ))).toNat

end

end A338573.P2535617993841116545

/-! ## A338573.P15695220736256210782

`and(79, A113881(∑[char[∑[n]]]²-n))`
-/

namespace A338573.P15695220736256210782
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 79 (A113881 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n))

end

end A338573.P15695220736256210782

/-! ## A338573.P2375841431258990282

`A002377(A113881(n+1))`
-/

namespace A338573.P2375841431258990282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A113881 (n + 1)).toNat

end

end A338573.P2375841431258990282

/-! ## A338573.P9145313583760494551

`A029730(A113881(n+1)+1)`
-/

namespace A338573.P9145313583760494551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (A113881 (n + 1) + 1).toNat

end

end A338573.P9145313583760494551

/-! ## A338573.P4554812882518623144

`A106039(A113881(n+1)+1)`
-/

namespace A338573.P4554812882518623144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (A113881 (n + 1) + 1).toNat

end

end A338573.P4554812882518623144

/-! ## A338573.P2539273024679795936

`gcd(A113881(n+1), A320824(n))`
-/

namespace A338573.P2539273024679795936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113881 (n + 1)) (A320824 n)

end

end A338573.P2539273024679795936

/-! ## A338573.P9527123152768926425

`A113881(n+1)+char[A113857(n)]`
-/

namespace A338573.P9527123152768926425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113857 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A338573.P9527123152768926425

/-! ## A338573.P4373474549936393376

`and(A113881(n+1), A166118(n+1))`
-/

namespace A338573.P4373474549936393376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113881 (n + 1)) (A166118 (n + 1))

end

end A338573.P4373474549936393376

/-! ## A338573.P8799126246291526199

`and(A113881(n+1), A304516(n+1))`
-/

namespace A338573.P8799126246291526199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113881 (n + 1)) (A304516 (n + 1))

end

end A338573.P8799126246291526199

/-!
# A338575: Number of even permutations on n letters that have a root.

The programs for A338575, there is no canonical definition to state claims against.
-/

/-! ## A338575.P8047258521514776827

`A005599(A371966(n)+A067275(n))`
-/

namespace A338575.P8047258521514776827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (A371966 n + A067275 n).toNat

end

end A338575.P8047258521514776827

/-!
# A338576: a(n) = n * pod(n) where pod(n) = the product of divisors of n (A007955).

The programs for A338576, the canonical program `A338576.P8156366932210890769` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338576 has offset 1).

The definition of A338576 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338576.P8156366932210890769

`(n+1)*A007955(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338576

/-- `(n+1)*A007955(n+1)` -/
def P8156366932210890769.Spec : Prop :=
  ∀ n, P8156366932210890769.a n = A338576 (n + 1)

theorem P8156366932210890769.correct : P8156366932210890769.Spec := by
  intro n
  simp only [A338576, Nat.add_sub_cancel]

end A338576

/-! ## A338576.P10869179404618366769

`(n+1)²*A007956(n+1)`
-/

namespace A338576.P10869179404618366769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A007956 (n + 1)

end

end A338576.P10869179404618366769

namespace A338576

/-- `(n+1)²*A007956(n+1)` -/
def P10869179404618366769.Spec : Prop :=
  ∀ n, P10869179404618366769.a n = A338576 (n + 1)

end A338576

/-! ## A338576.P15943958859740723109

`(n+1)*∏{d}[n+1, #]`
-/

namespace A338576.P15943958859740723109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ d ∈ Nat.divisors (f1 n), d)

end

end A338576.P15943958859740723109

namespace A338576

/-- `(n+1)*∏{d}[n+1, #]` -/
def P15943958859740723109.Spec : Prop :=
  ∀ n, (P15943958859740723109.a n : ℤ) = A338576 (n + 1)

end A338576

/-! ## A338576.P9735566339045615101

`(n+1)*2^∑{d}[n+1, log2(#)]`
-/

namespace A338576.P9735566339045615101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ))

end

end A338576.P9735566339045615101

namespace A338576

/-- `(n+1)*2^∑{d}[n+1, log2(#)]` -/
def P9735566339045615101.Spec : Prop :=
  ∀ n, P9735566339045615101.a n = (A338576 (n + 1) : ℝ)

end A338576

/-! ## A338576.P2925498742306140553

`sqrt(n+1)^(A000005(n+1)+2)`
-/

namespace A338576.P2925498742306140553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) + 2 : ℤ)

end

end A338576.P2925498742306140553

namespace A338576

/-- `sqrt(n+1)^(A000005(n+1)+2)` -/
def P2925498742306140553.Spec : Prop :=
  ∀ n, P2925498742306140553.a n = (A338576 (n + 1) : ℝ)

end A338576

/-! ## A338576.P5142102324783757908

`A064549(n+1)*A087652(n+1)`
-/

namespace A338576.P5142102324783757908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) * A087652 (n + 1)

end

end A338576.P5142102324783757908

namespace A338576

/-- `A064549(n+1)*A087652(n+1)` -/
def P5142102324783757908.Spec : Prop :=
  ∀ n, P5142102324783757908.a n = A338576 (n + 1)

end A338576

/-! ## A338576.P5575351685693003215

`∑{d}[n+1, A008683(#)*A174933((n+1)/#)]`
-/

namespace A338576.P5575351685693003215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A174933 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338576.P5575351685693003215

namespace A338576

/-- `∑{d}[n+1, A008683(#)*A174933((n+1)/#)]` -/
def P5575351685693003215.Spec : Prop :=
  ∀ n, P5575351685693003215.a n = A338576 (n + 1)

end A338576

/-! ## A338576.P9124199469031062724

`A007956(n+1)*A048671(n+1)*A140580(n+1)`
-/

namespace A338576.P9124199469031062724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A048671 (n + 1) * A140580 (n + 1)

end

end A338576.P9124199469031062724

namespace A338576

/-- `A007956(n+1)*A048671(n+1)*A140580(n+1)` -/
def P9124199469031062724.Spec : Prop :=
  ∀ n, P9124199469031062724.a n = A338576 (n + 1)

end A338576

/-! ## A338576.P16708859208813308333

`∏{d}[A008619(2*n), #]*A008619(2*n)`
-/

namespace A338576.P16708859208813308333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A008619 (2 * n)

end

end A338576.P16708859208813308333

namespace A338576

/-- `∏{d}[A008619(2*n), #]*A008619(2*n)` -/
def P16708859208813308333.Spec : Prop :=
  ∀ n, P16708859208813308333.a n = A338576 (n + 1)

end A338576

/-! ## A338576.P11595665184310515085

`∏{d}[A052938(2*n), #]*A052938(2*n)`
-/

namespace A338576.P11595665184310515085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A052938 (2 * n)

end

end A338576.P11595665184310515085

namespace A338576

/-- `∏{d}[A052938(2*n), #]*A052938(2*n)` -/
def P11595665184310515085.Spec : Prop :=
  ∀ n, P11595665184310515085.a n = A338576 (n + 1)

end A338576

/-! ## A338576.P14972944873543701492

`∏{d}[A028242(2*n), #]*A028242(2*n)`
-/

namespace A338576.P14972944873543701492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A028242 (2 * n)

end

end A338576.P14972944873543701492

namespace A338576

/-- `∏{d}[A028242(2*n), #]*A028242(2*n)` -/
def P14972944873543701492.Spec : Prop :=
  ∀ n, P14972944873543701492.a n = A338576 (n + 1)

end A338576

/-! ## A338576.P14202094973742036071

`(n+1)*sqrt(A062758(n+1))`
-/

namespace A338576.P14202094973742036071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A062758 (n + 1) : ℝ)

end

end A338576.P14202094973742036071

namespace A338576

/-- `(n+1)*sqrt(A062758(n+1))` -/
def P14202094973742036071.Spec : Prop :=
  ∀ n, P14202094973742036071.a n = (A338576 (n + 1) : ℝ)

end A338576

/-! ## A338576.P10963027916184513283

`A062758(n+1)/A007956(n+1)`
-/

namespace A338576.P10963027916184513283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062758 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ)

end

end A338576.P10963027916184513283

namespace A338576

/-- `A062758(n+1)/A007956(n+1)` -/
def P10963027916184513283.Spec : Prop :=
  ∀ n, P10963027916184513283.a n = (A338576 (n + 1) : ℚ)

end A338576

/-! ## A338576.P14403734862544381006

`A007955(n+1)²/A007956(n+1)`
-/

namespace A338576.P14403734862544381006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) ^ 2 : ℚ) / (A007956 (n + 1) : ℚ)

end

end A338576.P14403734862544381006

namespace A338576

/-- `A007955(n+1)²/A007956(n+1)` -/
def P14403734862544381006.Spec : Prop :=
  ∀ n, P14403734862544381006.a n = (A338576 (n + 1) : ℚ)

end A338576

/-! ## A338576.P440463920586569543

`(n+1)*A240694(A006218(n+1))`
-/

namespace A338576.P440463920586569543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A240694 (A006218 (n + 1)).toNat

end

end A338576.P440463920586569543

namespace A338576

/-- `(n+1)*A240694(A006218(n+1))` -/
def P440463920586569543.Spec : Prop :=
  ∀ n, P440463920586569543.a n = A338576 (n + 1)

end A338576

/-!
# A338577: Primes p such that A013632(p)*A105161(p) > p.

The programs for A338577, there is no canonical definition to state claims against.
-/

/-! ## A338577.P11868323377390579624

`∩[A023777(n+1), A095415(n+1)]`
-/

namespace A338577.P11868323377390579624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338577.P11868323377390579624

/-! ## A338577.P5140895564674694193

`∩[A284836(n+1), A334797(n+1)]`
-/

namespace A338577.P5140895564674694193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338577.P5140895564674694193

/-! ## A338577.P15707426280132743493

`A000040(eq[A263414(n), A309528(n+1)])`
-/

namespace A338577.P15707426280132743493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263414 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A338577.P15707426280132743493

/-! ## A338577.P12101024336262200474

`A000040(lt[A000045(n), A332895(2*n+1)])`
-/

namespace A338577.P12101024336262200474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332895 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338577.P12101024336262200474

/-! ## A338577.P10024873941822314395

`p?[A331125(n+1)]`
-/

namespace A338577.P10024873941822314395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338577.P10024873941822314395

/-!
# A338578: Primes p such that (r-p)*(r-q) > r, where q and r are the next two primes.

The programs for A338578, there is no canonical definition to state claims against.
-/

/-! ## A338578.P14042082857718700056

`A000040(lt[A034887(n), A001223(n+1)])`
-/

namespace A338578.P14042082857718700056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338578.P14042082857718700056

/-! ## A338578.P12188760675245634268

`A000040(lt[A005378(n), A100803(n+1)])`
-/

namespace A338578.P12188760675245634268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338578.P12188760675245634268

/-! ## A338578.P4739238931959778979

`A000040(lt[A361637(n), A061214(n+1)])`
-/

namespace A338578.P4739238931959778979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361637 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338578.P4739238931959778979

/-! ## A338578.P10168483433193256928

`A000040(lt[A092982(n+1), A100803(n+1)])`
-/

namespace A338578.P10168483433193256928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338578.P10168483433193256928

/-! ## A338578.P3373321023536692919

`record[A130006(∑[A306641(n)])]`
-/

namespace A338578.P3373321023536692919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306641 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130006 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338578.P3373321023536692919

/-!
# A338580: Numerators of resistance values that can be obtained from a network of exactly 10 one-ohm resistors, but not from any network with fewer than 10 one-ohm resistors. Denominators are in A338590.

The programs for A338580, there is no canonical definition to state claims against.
-/

/-! ## A338580.P1086593638403647325

`A338590(n+1)-A338599(n+1)`
-/

namespace A338580.P1086593638403647325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338590 (n + 1) - A338599 (n + 1)

end

end A338580.P1086593638403647325

/-! ## A338580.P9772091745155677541

`A338590((n+2+n)/2)%A338599(n+1)`
-/

namespace A338580.P9772091745155677541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338590 (SequenceMachineLib.roundAway ((n + 2 + n : ℚ) / 2)).toNat) (A338599 (n + 1))

end

end A338580.P9772091745155677541

/-! ## A338580.P6009987928441605506

`A028310(A338590(n+1)%A338599(n+1))`
-/

namespace A338580.P6009987928441605506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A338590 (n + 1)) (A338599 (n + 1))).toNat

end

end A338580.P6009987928441605506

/-! ## A338580.P18137980629336389956

`A338590(A000027(n+1))%-A338599(n+1)`
-/

namespace A338580.P18137980629336389956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338590 (A000027 (n + 1)).toNat) (-A338599 (n + 1))

end

end A338580.P18137980629336389956

/-! ## A338580.P14059679399477079397

`A338599(n+1)-A338598(n+1)`
-/

namespace A338580.P14059679399477079397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (n + 1) - A338598 (n + 1)

end

end A338580.P14059679399477079397

/-! ## A338580.P3773525105694485510

`(A338590(n+1)-A338598(n+1))/2`
-/

namespace A338580.P3773525105694485510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338590 (n + 1) - A338598 (n + 1) : ℚ) / 2

end

end A338580.P3773525105694485510

/-! ## A338580.P1485912357909271803

`A001281(A338590(n+1)-A338598(n+1))`
-/

namespace A338580.P1485912357909271803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A338590 (n + 1) - A338598 (n + 1)).toNat

end

end A338580.P1485912357909271803

/-! ## A338580.P10988075137294306601

`A004525(A338590(n+1)-A338598(n+1))`
-/

namespace A338580.P10988075137294306601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A338590 (n + 1) - A338598 (n + 1)).toNat

end

end A338580.P10988075137294306601

/-! ## A338580.P4637831716390300481

`A004526(A338590(n+1)-A338598(n+1))`
-/

namespace A338580.P4637831716390300481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338590 (n + 1) - A338598 (n + 1)).toNat

end

end A338580.P4637831716390300481

/-! ## A338580.P4017801595506647014

`A006370(A338590(n+1)-A338598(n+1))`
-/

namespace A338580.P4017801595506647014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A338590 (n + 1) - A338598 (n + 1)).toNat

end

end A338580.P4017801595506647014

/-! ## A338580.P1165779613011671924

`A014682(A338590(n+1)-A338598(n+1))`
-/

namespace A338580.P1165779613011671924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A338590 (n + 1) - A338598 (n + 1)).toNat

end

end A338580.P1165779613011671924

/-! ## A338580.P11850224189404160400

`A025480(A338590(n+1)-A338598(n+1))`
-/

namespace A338580.P11850224189404160400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A338590 (n + 1) - A338598 (n + 1)).toNat

end

end A338580.P11850224189404160400

/-! ## A338580.P7383926274803136458

`A065033(A338590(n+1)-A338598(n+1))`
-/

namespace A338580.P7383926274803136458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A338590 (n + 1) - A338598 (n + 1)).toNat

end

end A338580.P7383926274803136458

/-! ## A338580.P7948264764577401312

`A078898(A338590(n+1)-A338598(n+1))`
-/

namespace A338580.P7948264764577401312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A338590 (n + 1) - A338598 (n + 1)).toNat

end

end A338580.P7948264764577401312

/-! ## A338580.P12708954158082425021

`A110654(A338590(n+1)-A338598(n+1))`
-/

namespace A338580.P12708954158082425021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A338590 (n + 1) - A338598 (n + 1)).toNat

end

end A338580.P12708954158082425021

/-! ## A338580.P3319305826805889147

`A123108(A338590(n+1)-A338598(n+1))`
-/

namespace A338580.P3319305826805889147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A338590 (n + 1) - A338598 (n + 1)).toNat

end

end A338580.P3319305826805889147

/-! ## A338580.P4377595623440264837

`A338599(A000027(n+1))%A338598(n+1)`
-/

namespace A338580.P4377595623440264837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338599 (A000027 (n + 1)).toNat) (A338598 (n + 1))

end

end A338580.P4377595623440264837

/-!
# A338581: Numerators x of resistance values R=x/y that can be obtained by a network of at most 11 one-ohm resistors such that a network of more than 11 one-ohm resistors is needed to obtain the resistance y/x. Denominators are in A338591.

The programs for A338581, there is no canonical definition to state claims against.
-/

/-! ## A338581.P1554042848920800293

`A338582(n+1)+A175918(A186729(n))`
-/

namespace A338581.P1554042848920800293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (n + 1) + A175918 (A186729 n).toNat

end

end A338581.P1554042848920800293

/-! ## A338581.P1925948692597126110

`A338582(n+1)+A049820(A186729(n)+1)`
-/

namespace A338581.P1925948692597126110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (n + 1) + A049820 (A186729 n + 1).toNat

end

end A338581.P1925948692597126110

/-! ## A338581.P9081910714953790545

`A338582(n+1)+C(2, A086844(n+1))`
-/

namespace A338581.P9081910714953790545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (n + 1) + (Nat.choose 2 (A086844 (n + 1)).toNat : ℤ)

end

end A338581.P9081910714953790545

/-! ## A338581.P6808005267686068194

`A338582(n+1)+A000007(A003215(n))`
-/

namespace A338581.P6808005267686068194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (n + 1) + A000007 (A003215 n).toNat

end

end A338581.P6808005267686068194

/-! ## A338581.P12639829426790827974

`A338582(n+1)+A010051(A006000(n))`
-/

namespace A338581.P12639829426790827974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (n + 1) + A010051 (A006000 n).toNat

end

end A338581.P12639829426790827974

/-! ## A338581.P2020308228661801138

`A338582(n+1)+A000007(A056109(n))`
-/

namespace A338581.P2020308228661801138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (n + 1) + A000007 (A056109 n).toNat

end

end A338581.P2020308228661801138

/-! ## A338581.P6867690966029142556

`A087966(A010010(n))*A338582(n+1)`
-/

namespace A338581.P6867690966029142556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087966 (A010010 n).toNat * A338582 (n + 1)

end

end A338581.P6867690966029142556

/-! ## A338581.P3585813151909843559

`A186729(A186729(n)²)*A338582(n+1)`
-/

namespace A338581.P3585813151909843559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186729 (A186729 n ^ 2).toNat * A338582 (n + 1)

end

end A338581.P3585813151909843559

/-!
# A338582: Numerators x of resistance values R=x/y that can be obtained by a network of at most 12 one-ohm resistors such that a network of more than 12 one-ohm resistors is needed to obtain the resistance y/x. Denominators are in A338592.

The programs for A338582, there is no canonical definition to state claims against.
-/

/-! ## A338582.P6204848634631921812

`A338581(n+1)-A175918(A186729(n))`
-/

namespace A338582.P6204848634631921812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338581 (n + 1) - A175918 (A186729 n).toNat

end

end A338582.P6204848634631921812

/-!
# A338583: Number of unlabeled 3-connected nonplanar graphs with n edges.

The programs for A338583, there is no canonical definition to state claims against.
-/

/-! ## A338583.P5896685149736542077

`A338511(n+9)-A002840(n+9)`
-/

namespace A338583.P5896685149736542077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338511 (n + 9) - A002840 (n + 9)

end

end A338583.P5896685149736542077

/-! ## A338583.P8908627485308490203

`A281687(A082134(n)+3)`
-/

namespace A338583.P8908627485308490203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281687 (A082134 n + 3).toNat

end

end A338583.P8908627485308490203

/-! ## A338583.P2338935829164708018

`∑[A126209(A233510(n+1))]`
-/

namespace A338583.P2338935829164708018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126209 (A233510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338583.P2338935829164708018

/-!
# A338584: Number of unlabeled nonplanar connected graphs with n edges with minimum degree 3 at each node that are not 3-connected.

The programs for A338584, there is no canonical definition to state claims against.
-/

/-! ## A338584.P5374512639155227729

`A338593(n+13)-A338583(n+13)`
-/

namespace A338584.P5374512639155227729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338593 (n + 13) - A338583 (n + 13)

end

end A338584.P5374512639155227729

/-!
# A338585: Number of partitions of the n-th triangular number into exactly n positive triangular numbers.

The programs for A338585, there is no canonical definition to state claims against.
-/

/-! ## A338585.P12330128244470742016

`A319797(C(∑[n]+1, 2)+n)`
-/

namespace A338585.P12330128244470742016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 + n)

end

end A338585.P12330128244470742016

/-! ## A338585.P4811408654389064390

`A319797(A002817(n)+n)`
-/

namespace A338585.P4811408654389064390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A002817 n + (n : ℤ)).toNat

end

end A338585.P4811408654389064390

/-! ## A338585.P12088954666249088886

`A319797(A000217(∑[n])+n)`
-/

namespace A338585.P12088954666249088886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000217 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A338585.P12088954666249088886

/-! ## A338585.P14979924296597259352

`A319797(A004255(n+1)-1)`
-/

namespace A338585.P14979924296597259352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A004255 (n + 1) - 1).toNat

end

end A338585.P14979924296597259352

/-! ## A338585.P13552125249831411136

`A319797(A133252(n)-A064999(n))`
-/

namespace A338585.P13552125249831411136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A133252 n - A064999 n).toNat

end

end A338585.P13552125249831411136

/-!
# A338587: Numerators of resistance values < 1 ohm that can be obtained from a network of exactly 7 one-ohm resistors, but not from any network with fewer than 7 one-ohm resistors. Denominators are in A338597.

The programs for A338587, there is no canonical definition to state claims against.
-/

/-! ## A338587.P14557313783815413428

`A338580(n+1)%20`
-/

namespace A338587.P14557313783815413428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338580 (n + 1)) 20

end

end A338587.P14557313783815413428

/-! ## A338587.P10158190469866996773

`A338580(n*floor(n/30)!+1)`
-/

namespace A338587.P10158190469866996773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338580 (n * Nat.factorial ⌊(n : ℚ) / 30⌋.toNat + 1)

end

end A338587.P10158190469866996773

/-! ## A338587.P15672401917370599785

`A338580(floor(2*(n+1)*tan(79))+1)`
-/

namespace A338587.P15672401917370599785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338580 (⌊(2 * (n + 1) : ℝ) * Real.tan (79 : ℝ)⌋ + 1).toNat

end

end A338587.P15672401917370599785

/-! ## A338587.P9605255505905055682

`A004441(A338580(n+1))`
-/

namespace A338587.P9605255505905055682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004441 (A338580 (n + 1)).toNat

end

end A338587.P9605255505905055682

/-! ## A338587.P3336765711236716698

`A338580(A055643(n+1))`
-/

namespace A338587.P3336765711236716698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338580 (A055643 (n + 1)).toNat

end

end A338587.P3336765711236716698

/-! ## A338587.P10466753659245720520

`A338580(A090108(n+1))`
-/

namespace A338587.P10466753659245720520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338580 (A090108 (n + 1)).toNat

end

end A338587.P10466753659245720520

/-! ## A338587.P9120404807157014902

`A338580(A118759(n+1))`
-/

namespace A338587.P9120404807157014902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338580 (A118759 (n + 1)).toNat

end

end A338587.P9120404807157014902

/-! ## A338587.P16450697356856269596

`A000041(C(n, 64))*A338580(n+1)`
-/

namespace A338587.P16450697356856269596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A338580 (n + 1)

end

end A338587.P16450697356856269596

/-! ## A338587.P3287325672555181923

`lcm(A008683(∏{e}[n²+2, #]), A338580(n+1))`
-/

namespace A338587.P3287325672555181923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A338580 (n + 1))

end

end A338587.P3287325672555181923

/-! ## A338587.P1571856697362929837

`A007318(a(A001221(n)))*A338580(n+1)` with `a(0)=1`
-/

namespace A338587.P1571856697362929837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (a (A001221 n).toNat).toNat * A338580 (n + 1)

end

end A338587.P1571856697362929837

/-!
# A338588: a(n)/A002939(n+1) is the Kirchhoff index of the disjoint union of two complete graphs each on n and n+1 vertices with the empty graph on n+1 vertices.

The programs for A338588, the canonical program `A338588.P16971192733736992687` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338588 has offset 0).

The definition of A338588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338588.P16971192733736992687

`18*n^3+37*n²+20*n+2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A338588

/-- `18*n^3+37*n²+20*n+2` -/
def P16971192733736992687.Spec : Prop :=
  ∀ n, (P16971192733736992687.a n : ℤ) = A338588 n

theorem P16971192733736992687.correct : P16971192733736992687.Spec := by
  intro n
  simp only [A338588]

end A338588

/-! ## A338588.P15834619809434924869

`abs(A158551(n+1)-A224454(n+1))`
-/

namespace A338588.P15834619809434924869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158551 (n + 1) - A224454 (n + 1)|

end

end A338588.P15834619809434924869

namespace A338588

/-- `abs(A158551(n+1)-A224454(n+1))` -/
def P15834619809434924869.Spec : Prop :=
  ∀ n, P15834619809434924869.a n = A338588 n

end A338588

/-! ## A338588.P11177319149352195185

`abs(∑[9*A126587(n+1)]-A158551(n+1))`
-/

namespace A338588.P11177319149352195185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A126587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A158551 (n + 1)|

end

end A338588.P11177319149352195185

namespace A338588

/-- `abs(∑[9*A126587(n+1)]-A158551(n+1))` -/
def P11177319149352195185.Spec : Prop :=
  ∀ n, P11177319149352195185.a n = A338588 n

end A338588

/-! ## A338588.P2327653086121086530

`∑[A004277(n)+A003154(3*n+1)]`
-/

namespace A338588.P2327653086121086530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + A003154 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338588.P2327653086121086530

namespace A338588

/-- `∑[A004277(n)+A003154(3*n+1)]` -/
def P2327653086121086530.Spec : Prop :=
  ∀ n, P2327653086121086530.a n = A338588 n

end A338588

/-! ## A338588.P3192656866755825500

`abs(A275709(3*(n+1))/3-A158551(n+1))`
-/

namespace A338588.P3192656866755825500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A275709 (3 * (n + 1)) : ℚ) / 3 - (A158551 (n + 1) : ℚ)|

end

end A338588.P3192656866755825500

namespace A338588

/-- `abs(A275709(3*(n+1))/3-A158551(n+1))` -/
def P3192656866755825500.Spec : Prop :=
  ∀ n, P3192656866755825500.a n = (A338588 n : ℚ)

end A338588

/-! ## A338588.P14245074067488579837

`∑[A008706(n)+A000969(A008591(n))]`
-/

namespace A338588.P14245074067488579837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A000969 (A008591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338588.P14245074067488579837

namespace A338588

/-- `∑[A008706(n)+A000969(A008591(n))]` -/
def P14245074067488579837.Spec : Prop :=
  ∀ n, P14245074067488579837.a n = A338588 n

end A338588

/-!
# A338589: Sum of the remainders (s*t mod n), where s + t = n and 1 <= s <= t.

The programs for A338589, there is no canonical definition to state claims against.
-/

/-! ## A338589.P15724308429297761892

`(A195938(n+1)+A165186(n+1))/2`
-/

namespace A338589.P15724308429297761892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195938 (n + 1) + A165186 (n + 1) : ℚ) / 2

end

end A338589.P15724308429297761892

/-! ## A338589.P7637387904275165333

`A001281(A195938(n+1)+A165186(n+1))`
-/

namespace A338589.P7637387904275165333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A195938 (n + 1) + A165186 (n + 1)).toNat

end

end A338589.P7637387904275165333

/-! ## A338589.P17989620343377252530

`A004525(A195938(n+1)+A165186(n+1))`
-/

namespace A338589.P17989620343377252530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A195938 (n + 1) + A165186 (n + 1)).toNat

end

end A338589.P17989620343377252530

/-! ## A338589.P7041405686701090354

`A004526(A195938(n+1)+A165186(n+1))`
-/

namespace A338589.P7041405686701090354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A195938 (n + 1) + A165186 (n + 1)).toNat

end

end A338589.P7041405686701090354

/-! ## A338589.P4663195469691981592

`A006370(A195938(n+1)+A165186(n+1))`
-/

namespace A338589.P4663195469691981592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A195938 (n + 1) + A165186 (n + 1)).toNat

end

end A338589.P4663195469691981592

/-! ## A338589.P10104027077415778552

`A032742(A195938(n+1)+A165186(n+1)+2)-1`
-/

namespace A338589.P10104027077415778552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A195938 (n + 1) + A165186 (n + 1) + 2).toNat - 1

end

end A338589.P10104027077415778552

/-!
# A338590: Denominators of resistance values that can be obtained from a network of exactly 10 one-ohm resistors, but not from any network with fewer than 10 one-ohm resistors. Numerators are in A338580.

The programs for A338590, there is no canonical definition to state claims against.
-/

/-! ## A338590.P1877030383946087608

`A338599(n+1)+A338580(n+1)`
-/

namespace A338590.P1877030383946087608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (n + 1) + A338580 (n + 1)

end

end A338590.P1877030383946087608

/-! ## A338590.P547063105463770628

`A338598(n+1)+2*A338580(n+1)`
-/

namespace A338590.P547063105463770628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338598 (n + 1) + 2 * A338580 (n + 1)

end

end A338590.P547063105463770628

/-! ## A338590.P1524497923081431954

`2*A338599(n+1)-A338598(n+1)`
-/

namespace A338590.P1524497923081431954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338599 (n + 1) - A338598 (n + 1)

end

end A338590.P1524497923081431954

/-! ## A338590.P17087817763836400351

`A338598(n+1)+A004277(A338580(n+1))`
-/

namespace A338590.P17087817763836400351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338598 (n + 1) + A004277 (A338580 (n + 1)).toNat

end

end A338590.P17087817763836400351

/-! ## A338590.P5609855708237499515

`A004277(A338599(n+1))-A338598(n+1)`
-/

namespace A338590.P5609855708237499515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A338599 (n + 1)).toNat - A338598 (n + 1)

end

end A338590.P5609855708237499515

/-! ## A338590.P7781868728667533180

`A338599(A000027(n+1))+A338599(n+1)-A338598(n+1)`
-/

namespace A338590.P7781868728667533180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (A000027 (n + 1)).toNat + (A338599 (n + 1) - A338598 (n + 1))

end

end A338590.P7781868728667533180

/-! ## A338590.P6539986694134371096

`A338599(n+1)+A338587(n+1)`
-/

namespace A338590.P6539986694134371096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (n + 1) + A338587 (n + 1)

end

end A338590.P6539986694134371096

/-! ## A338590.P10281581268496157953

`A338598(n+1)+2*A338587(n+1)`
-/

namespace A338590.P10281581268496157953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338598 (n + 1) + 2 * A338587 (n + 1)

end

end A338590.P10281581268496157953

/-! ## A338590.P12849989572843521589

`A338598(n+1)+A004277(A338587(n+1))`
-/

namespace A338590.P12849989572843521589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338598 (n + 1) + A004277 (A338587 (n + 1)).toNat

end

end A338590.P12849989572843521589

/-! ## A338590.P13440670124403864889

`A338597(n+1)+A008585(A338580(n+1))`
-/

namespace A338590.P13440670124403864889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338597 (n + 1) + A008585 (A338580 (n + 1)).toNat

end

end A338590.P13440670124403864889

/-!
# A338591: Denominators y of resistance values R=x/y that can be obtained by a network of at most 11 one-ohm resistors such that a network of more than 11 one-ohm resistors is needed to obtain the resistance y/x. Numerators are in A338581.

The programs for A338591, there is no canonical definition to state claims against.
-/

/-! ## A338591.P17309318718641273258

`A338592(n+1)-(A338582(n+1)+C(2, A086844(n+1)))`
-/

namespace A338591.P17309318718641273258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338592 (n + 1) - (A338582 (n + 1) + (Nat.choose 2 (A086844 (n + 1)).toNat : ℤ))

end

end A338591.P17309318718641273258

/-! ## A338591.P1011035250485202012

`A338592(n+1)-(A338582(n+1)+A000007(A003215(n)))`
-/

namespace A338591.P1011035250485202012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338592 (n + 1) - (A338582 (n + 1) + A000007 (A003215 n).toNat)

end

end A338591.P1011035250485202012

/-! ## A338591.P14315343668977481210

`A338592(n+1)-(A338582(n+1)+A010051(A006000(n)))`
-/

namespace A338591.P14315343668977481210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338592 (n + 1) - (A338582 (n + 1) + A010051 (A006000 n).toNat)

end

end A338591.P14315343668977481210

/-! ## A338591.P161090740280908536

`A338592(n+1)-(A338582(n+1)+A000007(A056109(n)))`
-/

namespace A338591.P161090740280908536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338592 (n + 1) - (A338582 (n + 1) + A000007 (A056109 n).toNat)

end

end A338591.P161090740280908536

/-! ## A338591.P806969809315655591

`(A338592(n+1)-A338582(n+1))*A087966(A010010(n))`
-/

namespace A338591.P806969809315655591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338592 (n + 1) - A338582 (n + 1)) * A087966 (A010010 n).toNat

end

end A338591.P806969809315655591

/-! ## A338591.P12242929751620344528

`A338592(n+1)-A338581(n+1)%A338607(n+1)`
-/

namespace A338591.P12242929751620344528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338592 (n + 1) - Int.tmod (A338581 (n + 1)) (A338607 (n + 1))

end

end A338591.P12242929751620344528

/-! ## A338591.P9048269721471088802

`(A338592(n+1)-A338582(n+1))*A057427(A306344(n))`
-/

namespace A338591.P9048269721471088802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338592 (n + 1) - A338582 (n + 1)) * A057427 (A306344 n).toNat

end

end A338591.P9048269721471088802

/-!
# A338592: Denominators y of resistance values R=x/y that can be obtained by a network of at most 12 one-ohm resistors such that a network of more than 12 one-ohm resistors is needed to obtain the resistance y/x. Numerators are in A338582.

The programs for A338592, there is no canonical definition to state claims against.
-/

/-! ## A338592.P18188340452688142334

`A338582(n+1)+A338591(n+1)+A000007(A003215(n))`
-/

namespace A338592.P18188340452688142334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (n + 1) + (A338591 (n + 1) + A000007 (A003215 n).toNat)

end

end A338592.P18188340452688142334

/-! ## A338592.P4683337638168309714

`A338582(n+1)+A338591(n+1)+A010051(A006000(n))`
-/

namespace A338592.P4683337638168309714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (n + 1) + (A338591 (n + 1) + A010051 (A006000 n).toNat)

end

end A338592.P4683337638168309714

/-! ## A338592.P15930794444373007022

`A338582(n+1)+A338591(n+1)+A000007(A056109(n))`
-/

namespace A338592.P15930794444373007022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (n + 1) + (A338591 (n + 1) + A000007 (A056109 n).toNat)

end

end A338592.P15930794444373007022

/-! ## A338592.P11174104959616379885

`A338582(n+1)+A087966(A010010(n))*A338591(n+1)`
-/

namespace A338592.P11174104959616379885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (n + 1) + A087966 (A010010 n).toNat * A338591 (n + 1)

end

end A338592.P11174104959616379885

/-! ## A338592.P1794193089889417885

`A338581(n+1)+A338591(n+1)%A338607(n+1)`
-/

namespace A338592.P1794193089889417885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338581 (n + 1) + Int.tmod (A338591 (n + 1)) (A338607 (n + 1))

end

end A338592.P1794193089889417885

/-!
# A338593: Number of unlabeled connected nonplanar graphs with n edges with degree >= 3 at each node.

The programs for A338593, there is no canonical definition to state claims against.
-/

/-! ## A338593.P17806351048037530500

`A338604(n+9)-A338594(n+9)`
-/

namespace A338593.P17806351048037530500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338604 (n + 9) - A338594 (n + 9)

end

end A338593.P17806351048037530500

/-! ## A338593.P16053192430077952777

`A024417(xor(n, A150535(n)))`
-/

namespace A338593.P16053192430077952777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.xor (n : ℤ) (A150535 n)).toNat

end

end A338593.P16053192430077952777

/-!
# A338596: Denominators of resistance values < 1 ohm that can be obtained from a network of exactly 6 one-ohm resistors, but not from any network with fewer than 6 one-ohm resistors. Numerators are in A338580.

The programs for A338596, there is no canonical definition to state claims against.
-/

/-! ## A338596.P1647922009902940488

`A338597(n+1)-A338580(n+1)`
-/

namespace A338596.P1647922009902940488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338597 (n + 1) - A338580 (n + 1)

end

end A338596.P1647922009902940488

/-! ## A338596.P7571646354694326750

`A338597(n+1)-A338587(n+1)`
-/

namespace A338596.P7571646354694326750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338597 (n + 1) - A338587 (n + 1)

end

end A338596.P7571646354694326750

/-! ## A338596.P5822481323626339204

`A338598(n+1)-2*A338580(n+1)`
-/

namespace A338596.P5822481323626339204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338598 (n + 1) - 2 * A338580 (n + 1)

end

end A338596.P5822481323626339204

/-! ## A338596.P4373162298744929913

`2*A338598(n+1)-A338590(n+1)`
-/

namespace A338596.P4373162298744929913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338598 (n + 1) - A338590 (n + 1)

end

end A338596.P4373162298744929913

/-! ## A338596.P10355524620268585124

`A338598(n+1)-2*A338587(n+1)`
-/

namespace A338596.P10355524620268585124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338598 (n + 1) - 2 * A338587 (n + 1)

end

end A338596.P10355524620268585124

/-!
# A338597: Denominators of resistance values < 1 ohm that can be obtained from a network of exactly 7 one-ohm resistors, but not from any network with fewer than 7 one-ohm resistors. Numerators are in A338580.

The programs for A338597, there is no canonical definition to state claims against.
-/

/-! ## A338597.P14109962550235505964

`A338598(n+1)-A338580(n+1)`
-/

namespace A338597.P14109962550235505964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338598 (n + 1) - A338580 (n + 1)

end

end A338597.P14109962550235505964

/-! ## A338597.P2343861809696068646

`A338598(n+1)-A338587(n+1)`
-/

namespace A338597.P2343861809696068646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338598 (n + 1) - A338587 (n + 1)

end

end A338597.P2343861809696068646

/-! ## A338597.P8619593944352442268

`A338599(n+1)-2*A338580(n+1)`
-/

namespace A338597.P8619593944352442268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (n + 1) - 2 * A338580 (n + 1)

end

end A338597.P8619593944352442268

/-! ## A338597.P15744727917229434736

`A338599(n+1)-2*A338587(n+1)`
-/

namespace A338597.P15744727917229434736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (n + 1) - 2 * A338587 (n + 1)

end

end A338597.P15744727917229434736

/-! ## A338597.P11995298233620432974

`2*A338598(n+1)-A338599(n+1)`
-/

namespace A338597.P11995298233620432974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338598 (n + 1) - A338599 (n + 1)

end

end A338597.P11995298233620432974

/-! ## A338597.P1264910300529229124

`A338590(n+1)-3*A338580(n+1)`
-/

namespace A338597.P1264910300529229124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338590 (n + 1) - 3 * A338580 (n + 1)

end

end A338597.P1264910300529229124

/-! ## A338597.P12982047805659644688

`A338590(n+1)-3*A338587(n+1)`
-/

namespace A338597.P12982047805659644688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338590 (n + 1) - 3 * A338587 (n + 1)

end

end A338597.P12982047805659644688

/-! ## A338597.P4373522773590312236

`(3*A338599(n+1))%A338590(n+1)`
-/

namespace A338597.P4373522773590312236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A338599 (n + 1)) (A338590 (n + 1))

end

end A338597.P4373522773590312236

/-! ## A338597.P11974537747649858392

`A338599(n+1)-A004277(A338580(n+1))`
-/

namespace A338597.P11974537747649858392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (n + 1) - A004277 (A338580 (n + 1)).toNat

end

end A338597.P11974537747649858392

/-! ## A338597.P16637419418996541494

`A338599(n+1)-A004277(A338587(n+1))`
-/

namespace A338597.P16637419418996541494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (n + 1) - A004277 (A338587 (n + 1)).toNat

end

end A338597.P16637419418996541494

/-!
# A338598: Denominators of resistance values < 1 ohm that can be obtained from a network of exactly 8 one-ohm resistors, but not from any network with fewer than 8 one-ohm resistors. Numerators are in A338580.

The programs for A338598, there is no canonical definition to state claims against.
-/

/-! ## A338598.P14443290259353758008

`A338599(n+1)-A338580(n+1)`
-/

namespace A338598.P14443290259353758008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (n + 1) - A338580 (n + 1)

end

end A338598.P14443290259353758008

/-! ## A338598.P9391627525845121859

`A338590(n+1)-2*A338580(n+1)`
-/

namespace A338598.P9391627525845121859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338590 (n + 1) - 2 * A338580 (n + 1)

end

end A338598.P9391627525845121859

/-! ## A338598.P17421097282789444641

`2*A338599(n+1)-A338590(n+1)`
-/

namespace A338598.P17421097282789444641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338599 (n + 1) - A338590 (n + 1)

end

end A338598.P17421097282789444641

/-! ## A338598.P1649389614067100993

`A338590(n+1)-A004277(A338580(n+1))`
-/

namespace A338598.P1649389614067100993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338590 (n + 1) - A004277 (A338580 (n + 1)).toNat

end

end A338598.P1649389614067100993

/-! ## A338598.P8714258033888950972

`A004277(A338599(n+1))-A338590(n+1)`
-/

namespace A338598.P8714258033888950972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A338599 (n + 1)).toNat - A338590 (n + 1)

end

end A338598.P8714258033888950972

/-! ## A338598.P4898531147011053589

`A338599(A000027(n+1))+A338599(n+1)-A338590(n+1)`
-/

namespace A338598.P4898531147011053589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (A000027 (n + 1)).toNat + (A338599 (n + 1) - A338590 (n + 1))

end

end A338598.P4898531147011053589

/-! ## A338598.P14591557033751810398

`A028310(A338599(n+1)+A338599(n+1)-A338590(n+1))`
-/

namespace A338598.P14591557033751810398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A338599 (n + 1) + (A338599 (n + 1) - A338590 (n + 1))).toNat

end

end A338598.P14591557033751810398

/-! ## A338598.P7138430020803601116

`A338597(n+1)+A338580(n+1)`
-/

namespace A338598.P7138430020803601116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338597 (n + 1) + A338580 (n + 1)

end

end A338598.P7138430020803601116

/-! ## A338598.P10929534602828574

`A338597(n+1)+A338587(n+1)`
-/

namespace A338598.P10929534602828574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338597 (n + 1) + A338587 (n + 1)

end

end A338598.P10929534602828574

/-! ## A338598.P13207082885617944708

`A338599(n+1)-A338587(n+1)`
-/

namespace A338598.P13207082885617944708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338599 (n + 1) - A338587 (n + 1)

end

end A338598.P13207082885617944708

/-!
# A338599: Denominators of resistance values < 1 ohm that can be obtained from a network of exactly 9 one-ohm resistors, but not from any network with fewer than 9 one-ohm resistors. Numerators are in A338580.

The programs for A338599, there is no canonical definition to state claims against.
-/

/-! ## A338599.P3584376448375508388

`A338590(n+1)-A338580(n+1)`
-/

namespace A338599.P3584376448375508388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338590 (n + 1) - A338580 (n + 1)

end

end A338599.P3584376448375508388

/-! ## A338599.P7249107961691572906

`A338598(n+1)+A338580(n+1)`
-/

namespace A338599.P7249107961691572906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338598 (n + 1) + A338580 (n + 1)

end

end A338599.P7249107961691572906

/-! ## A338599.P5841287255529335966

`(A338598(n+1)+A338590(n+1))/2`
-/

namespace A338599.P5841287255529335966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338598 (n + 1) + A338590 (n + 1) : ℚ) / 2

end

end A338599.P5841287255529335966

/-! ## A338599.P12113156656674527875

`A001281(A338598(n+1)+A338590(n+1))`
-/

namespace A338599.P12113156656674527875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A338598 (n + 1) + A338590 (n + 1)).toNat

end

end A338599.P12113156656674527875

/-! ## A338599.P7514834915886690284

`A004525(A338598(n+1)+A338590(n+1))`
-/

namespace A338599.P7514834915886690284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A338598 (n + 1) + A338590 (n + 1)).toNat

end

end A338599.P7514834915886690284

/-! ## A338599.P16050621075171252781

`A004526(A338598(n+1)+A338590(n+1))`
-/

namespace A338599.P16050621075171252781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338598 (n + 1) + A338590 (n + 1)).toNat

end

end A338599.P16050621075171252781

/-! ## A338599.P2843563325480550685

`A006370(A338598(n+1)+A338590(n+1))`
-/

namespace A338599.P2843563325480550685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A338598 (n + 1) + A338590 (n + 1)).toNat

end

end A338599.P2843563325480550685

/-! ## A338599.P7545764830581637803

`A014682(A338598(n+1)+A338590(n+1))`
-/

namespace A338599.P7545764830581637803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A338598 (n + 1) + A338590 (n + 1)).toNat

end

end A338599.P7545764830581637803

/-! ## A338599.P14820577135519280903

`A025480(A338598(n+1)+A338590(n+1))`
-/

namespace A338599.P14820577135519280903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A338598 (n + 1) + A338590 (n + 1)).toNat

end

end A338599.P14820577135519280903

/-! ## A338599.P2650942390655570468

`A065033(A338598(n+1)+A338590(n+1))`
-/

namespace A338599.P2650942390655570468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A338598 (n + 1) + A338590 (n + 1)).toNat

end

end A338599.P2650942390655570468

/-! ## A338599.P689812611819001503

`A078898(A338598(n+1)+A338590(n+1))`
-/

namespace A338599.P689812611819001503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A338598 (n + 1) + A338590 (n + 1)).toNat

end

end A338599.P689812611819001503

/-! ## A338599.P11227078199814160873

`A110654(A338598(n+1)+A338590(n+1))`
-/

namespace A338599.P11227078199814160873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A338598 (n + 1) + A338590 (n + 1)).toNat

end

end A338599.P11227078199814160873

/-! ## A338599.P9657212189028540866

`A123108(A338598(n+1)+A338590(n+1))`
-/

namespace A338599.P9657212189028540866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A338598 (n + 1) + A338590 (n + 1)).toNat

end

end A338599.P9657212189028540866

