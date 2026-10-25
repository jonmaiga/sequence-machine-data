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
import Seq.B000.C033
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
import Seq.B001.C007
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
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A061700: Generalized Bell numbers.

The programs for A061700, there is no canonical definition to state claims against.
-/

/-! ## A061700.P12333313191677365142

`A118764(floor(n/3)^(2*n))`
-/

namespace A061700.P12333313191677365142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 (⌊(n : ℚ) / 3⌋ ^ (2 * n)).toNat

end

end A061700.P12333313191677365142

/-! ## A061700.P12915358943201910966

`A063656(A247309(n)^11)`
-/

namespace A061700.P12915358943201910966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (A247309 n ^ 11).toNat

end

end A061700.P12915358943201910966

/-! ## A061700.P81723085199586764

`A063656(A352945(n)^11)`
-/

namespace A061700.P81723085199586764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (A352945 n ^ 11).toNat

end

end A061700.P81723085199586764

/-!
# A061702: Triangle T(n,k) defined by Sum_{n >= 0,m >= 0} T(n,m)*x^m*y^n = 1 + y*(1 + 3*x - 4*x^2*y - 3*x^2*y^2 - 3*x^3*y^2 + 4*x^4*y^3)/((1 - y - 2*x*y - x*y^2 + x^3*y^3)*(1 - x*y)).

The programs for A061702, there is no canonical definition to state claims against.
-/

/-! ## A061702.P6431481398466939833

`A112351(n)-A269243(A112362(n+2))`
-/

namespace A061702.P6431481398466939833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112351 n - A269243 (A112362 (n + 2)).toNat

end

end A061702.P6431481398466939833

/-! ## A061702.P3462460341439451396

`A072649(A002260(n+1)^A035607(n))`
-/

namespace A061702.P3462460341439451396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A035607 n : ℤ))).toNat

end

end A061702.P3462460341439451396

/-!
# A061703: G.f.: 2*x*(2-2*x-3*x^2+2*x^3)/((1-3*x-x^2+x^3)*(1-x)).

The programs for A061703, there is no canonical definition to state claims against.
-/

/-! ## A061703.P18076078566767846412

`or(1, sqrt(A287168(n)))-1`
-/

namespace A061703.P18076078566767846412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (Real.sqrt (A287168 n : ℝ))) - 1

end

end A061703.P18076078566767846412

/-! ## A061703.P15920635444220017665

`sqrt(A002828(n²)*A287168(n))`
-/

namespace A061703.P15920635444220017665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002828 (n ^ 2) * A287168 n : ℝ)

end

end A061703.P15920635444220017665

/-! ## A061703.P3423775154576886422

`sqrt(A011619(n²)*A287168(n))`
-/

namespace A061703.P3423775154576886422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A011619 (n ^ 2) * A287168 n : ℝ)

end

end A061703.P3423775154576886422

/-! ## A061703.P809582803977841192

`sqrt(A287168(n)-A100225(2*n+1))`
-/

namespace A061703.P809582803977841192
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A287168 n - A100225 (2 * n + 1) : ℝ)

end

end A061703.P809582803977841192

/-! ## A061703.P1663757193200259382

`sqrt(A287168(n)%A075511(n))`
-/

namespace A061703.P1663757193200259382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A287168 n) (A075511 n) : ℝ)

end

end A061703.P1663757193200259382

/-!
# A061704: Number of cubes dividing n.

The programs for A061704, the canonical program `A061704.P8500927550358472593` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061704 has offset 1).

The definition of A061704 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053150, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061704.P8500927550358472593

`A000005(A053150(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A061704

/-- `A000005(A053150(n+1))` -/
def P8500927550358472593.Spec : Prop :=
  ∀ n, P8500927550358472593.a n = A061704 (n + 1)

theorem P8500927550358472593.correct : P8500927550358472593.Spec := by
  intro n
  simp only [A061704, Nat.add_sub_cancel]

end A061704

/-! ## A061704.P15952111956571455304

`∏{e}[n+1, floor(#/3)+1]`
-/

namespace A061704.P15952111956571455304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 3⌋ + 1)

end

end A061704.P15952111956571455304

namespace A061704

/-- `∏{e}[n+1, floor(#/3)+1]` -/
def P15952111956571455304.Spec : Prop :=
  ∀ n, P15952111956571455304.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P7141695670036647954

`Δ[A013937(n)]`
-/

namespace A061704.P7141695670036647954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061704.P7141695670036647954

namespace A061704

/-- `Δ[A013937(n)]` -/
def P7141695670036647954.Spec : Prop :=
  ∀ n, P7141695670036647954.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P18035168518324019716

`∑{d}[n+1, A010057(#)]`
-/

namespace A061704.P18035168518324019716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010057 d

end

end A061704.P18035168518324019716

namespace A061704

/-- `∑{d}[n+1, A010057(#)]` -/
def P18035168518324019716.Spec : Prop :=
  ∀ n, P18035168518324019716.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P17854939418522478587

`A046951(A000189(n+1))`
-/

namespace A061704.P17854939418522478587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000189 (n + 1)).toNat

end

end A061704.P17854939418522478587

namespace A061704

/-- `A046951(A000189(n+1))` -/
def P17854939418522478587.Spec : Prop :=
  ∀ n, P17854939418522478587.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P10201617353690267797

`A365488(A008834(n+1))`
-/

namespace A061704.P10201617353690267797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A008834 (n + 1)).toNat

end

end A061704.P10201617353690267797

namespace A061704

/-- `A365488(A008834(n+1))` -/
def P10201617353690267797.Spec : Prop :=
  ∀ n, P10201617353690267797.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P10619067762825248781

`A365488(A062378(n+1))`
-/

namespace A061704.P10619067762825248781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A062378 (n + 1)).toNat

end

end A061704.P10619067762825248781

namespace A061704

/-- `A365488(A062378(n+1))` -/
def P10619067762825248781.Spec : Prop :=
  ∀ n, P10619067762825248781.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P11615226749924295335

`A046951(A053150(n+1)²)`
-/

namespace A061704.P11615226749924295335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A053150 (n + 1) ^ 2).toNat

end

end A061704.P11615226749924295335

namespace A061704

/-- `A046951(A053150(n+1)²)` -/
def P11615226749924295335.Spec : Prop :=
  ∀ n, P11615226749924295335.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P16952397943459772759

`A013937(n+1)-A013937(n)`
-/

namespace A061704.P16952397943459772759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 (n + 1) - A013937 n

end

end A061704.P16952397943459772759

namespace A061704

/-- `A013937(n+1)-A013937(n)` -/
def P16952397943459772759.Spec : Prop :=
  ∀ n, P16952397943459772759.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P14025073661004575568

`A000005(n+1)-A291208(n+1)`
-/

namespace A061704.P14025073661004575568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A291208 (n + 1)

end

end A061704.P14025073661004575568

namespace A061704

/-- `A000005(n+1)-A291208(n+1)` -/
def P14025073661004575568.Spec : Prop :=
  ∀ n, P14025073661004575568.a n = A061704 (n + 1)

theorem P14025073661004575568.correct : P14025073661004575568.Spec := by
  intro n
  simp only [A061704, Nat.add_sub_cancel, A061704.P14025073661004575568.a, A061704.P8500927550358472593.a, A000005, A000005.P16091521709108585461.a, A053150, A053150.P12506958821739849534.a, A291208, A291208.P1497823083848093531.a, A000188, A000188.P7486858720566838181.a, A000189, A000189.P11210685475351648118.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A050985, A050985.P12411912326700818488.f1, A050985.P12411912326700818488.a, A008833, A008833.P18388074464065390543.a, A053149, A053149.P4125189005957149122.a, A073185, A073185.P13146702220439815820.a, A210826, A210826.P1982609276010569986.f1, A210826.P1982609276010569986.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A007948, A007948.P9205423498154585874.a, A048798, A048798.P11871248388947828360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A061704

/-! ## A061704.P11232652771018838511

`A046951((n+1)/A019555(n+1))`
-/

namespace A061704.P11232652771018838511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019555 (n + 1) : ℚ))).toNat

end

end A061704.P11232652771018838511

namespace A061704

/-- `A046951((n+1)/A019555(n+1))` -/
def P11232652771018838511.Spec : Prop :=
  ∀ n, P11232652771018838511.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P7741910550061594877

`∑{d}[n+1, A078429(#)*A130054((n+1)/#)]`
-/

namespace A061704.P7741910550061594877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078429 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061704.P7741910550061594877

namespace A061704

/-- `∑{d}[n+1, A078429(#)*A130054((n+1)/#)]` -/
def P7741910550061594877.Spec : Prop :=
  ∀ n, P7741910550061594877.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P3412827637899298903

`∑{d}[n+1, A000005(#)*A210826((n+1)/#)]`
-/

namespace A061704.P3412827637899298903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061704.P3412827637899298903

namespace A061704

/-- `∑{d}[n+1, A000005(#)*A210826((n+1)/#)]` -/
def P3412827637899298903.Spec : Prop :=
  ∀ n, P3412827637899298903.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P7478411543241205224

`∑{d}[n+1, A010052(#)*A307421((n+1)/#)]`
-/

namespace A061704.P7478411543241205224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A307421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061704.P7478411543241205224

namespace A061704

/-- `∑{d}[n+1, A010052(#)*A307421((n+1)/#)]` -/
def P7478411543241205224.Spec : Prop :=
  ∀ n, P7478411543241205224.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P14350547825629150782

`∑{d}[n+1, A034444(#)*A307420((n+1)/#)]`
-/

namespace A061704.P14350547825629150782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A307420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061704.P14350547825629150782

namespace A061704

/-- `∑{d}[n+1, A034444(#)*A307420((n+1)/#)]` -/
def P14350547825629150782.Spec : Prop :=
  ∀ n, P14350547825629150782.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P4346320501774593941

`∑{d}[n+1, A023900(#)*A327626((n+1)/#)]`
-/

namespace A061704.P4346320501774593941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A327626 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061704.P4346320501774593941

namespace A061704

/-- `∑{d}[n+1, A023900(#)*A327626((n+1)/#)]` -/
def P4346320501774593941.Spec : Prop :=
  ∀ n, P4346320501774593941.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P7559238384402731178

`∑{d}[n+1, A046951(#)*A307424((n+1)/#)]`
-/

namespace A061704.P7559238384402731178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A307424 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061704.P7559238384402731178

namespace A061704

/-- `∑{d}[n+1, A046951(#)*A307424((n+1)/#)]` -/
def P7559238384402731178.Spec : Prop :=
  ∀ n, P7559238384402731178.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P9710145462602570171

`∑{d}[n+1, A008966(#)*A370256((n+1)/#)]`
-/

namespace A061704.P9710145462602570171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A370256 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061704.P9710145462602570171

namespace A061704

/-- `∑{d}[n+1, A008966(#)*A370256((n+1)/#)]` -/
def P9710145462602570171.Spec : Prop :=
  ∀ n, P9710145462602570171.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P1080378252527205042

`∑{d}[n+1, A124315(#)*A307427((n+1)/#)]`
-/

namespace A061704.P1080378252527205042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A307427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061704.P1080378252527205042

namespace A061704

/-- `∑{d}[n+1, A124315(#)*A307427((n+1)/#)]` -/
def P1080378252527205042.Spec : Prop :=
  ∀ n, P1080378252527205042.a n = A061704 (n + 1)

end A061704

/-! ## A061704.P14564192663152263321

`∑{d}[n+1, A271102(#)*A322885((n+1)/#)]`
-/

namespace A061704.P14564192663152263321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A322885 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061704.P14564192663152263321

namespace A061704

/-- `∑{d}[n+1, A271102(#)*A322885((n+1)/#)]` -/
def P14564192663152263321.Spec : Prop :=
  ∀ n, P14564192663152263321.a n = A061704 (n + 1)

end A061704

/-!
# A061705: Number of matchings in the wheel graph with n spokes.

The programs for A061705, the canonical program `A061705.P3696026627316332055` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061705 has offset 1).

The definition of A061705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061705.P3696026627316332055

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=10, a(3)=19`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061705

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P3696026627316332055.Spec : Prop :=
  ∀ n, P3696026627316332055.a n = A061705 (n + 1)

theorem P3696026627316332055.correct : P3696026627316332055.Spec := by
  intro n
  simp only [A061705, Nat.add_sub_cancel]

end A061705

/-! ## A061705.P12482785834834979867

`ogf((2+x-2x^2-2x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A061705.P12482785834834979867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -2, -2] [1, -2, -1, 2, 1] n

end

end A061705.P12482785834834979867

namespace A061705

/-- `ogf((2+x-2x^2-2x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P12482785834834979867.Spec : Prop :=
  ∀ n, P12482785834834979867.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P17298913436403431153

`A007574(n+1)+1+n`
-/

namespace A061705.P17298913436403431153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007574 (n + 1) + 1 + (n : ℤ)

end

end A061705.P17298913436403431153

namespace A061705

/-- `A007574(n+1)+1+n` -/
def P17298913436403431153.Spec : Prop :=
  ∀ n, P17298913436403431153.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P1620523972756111164

`round(ϕ*(A000045(n)+a(n-1)))` with `a(0)=2`
-/

namespace A061705.P1620523972756111164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A000045 n + a (n - 1) : ℝ))

end

end A061705.P1620523972756111164

namespace A061705

/-- `round(ϕ*(A000045(n)+a(n-1)))` -/
def P1620523972756111164.Spec : Prop :=
  ∀ n, P1620523972756111164.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P17075770021206558777

`a(n-1)+A000032(n)+a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A061705.P17075770021206558777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + (A000032 n + a (n - 2))

end

end A061705.P17075770021206558777

namespace A061705

/-- `a(n-1)+A000032(n)+a(n-2)` -/
def P17075770021206558777.Spec : Prop :=
  ∀ n, P17075770021206558777.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P10407140918999220323

`A178521(n)+A001060(n)`
-/

namespace A061705.P10407140918999220323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 n + A001060 n

end

end A061705.P10407140918999220323

namespace A061705

/-- `A178521(n)+A001060(n)` -/
def P10407140918999220323.Spec : Prop :=
  ∀ n, P10407140918999220323.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P17569657168626732279

`A354044(n)+A020695(n)`
-/

namespace A061705.P17569657168626732279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 n + A020695 n

end

end A061705.P17569657168626732279

namespace A061705

/-- `A354044(n)+A020695(n)` -/
def P17569657168626732279.Spec : Prop :=
  ∀ n, P17569657168626732279.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P10154511685230320065

`A339610(n+1)+A099920(n)`
-/

namespace A061705.P10154511685230320065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339610 (n + 1) + A099920 n

end

end A061705.P10154511685230320065

namespace A061705

/-- `A339610(n+1)+A099920(n)` -/
def P10154511685230320065.Spec : Prop :=
  ∀ n, P10154511685230320065.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P17058335857651149371

`A007502(n+2)+A000045(n)`
-/

namespace A061705.P17058335857651149371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 2) + A000045 n

end

end A061705.P17058335857651149371

namespace A061705

/-- `A007502(n+2)+A000045(n)` -/
def P17058335857651149371.Spec : Prop :=
  ∀ n, P17058335857651149371.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P9190722251829028131

`A029907(n+2)+A029907(n)`
-/

namespace A061705.P9190722251829028131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 2) + A029907 n

end

end A061705.P9190722251829028131

namespace A061705

/-- `A029907(n+2)+A029907(n)` -/
def P9190722251829028131.Spec : Prop :=
  ∀ n, P9190722251829028131.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P2802915446441934508

`A088209(n)+A000045(n+2)`
-/

namespace A061705.P2802915446441934508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n + A000045 (n + 2)

end

end A061705.P2802915446441934508

namespace A061705

/-- `A088209(n)+A000045(n+2)` -/
def P2802915446441934508.Spec : Prop :=
  ∀ n, P2802915446441934508.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P8889072728291615325

`A264147(n+2)+A000285(n)`
-/

namespace A061705.P8889072728291615325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 (n + 2) + A000285 n

end

end A061705.P8889072728291615325

namespace A061705

/-- `A264147(n+2)+A000285(n)` -/
def P8889072728291615325.Spec : Prop :=
  ∀ n, P8889072728291615325.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P4286233427320188362

`A023607(n)+A006355(n+3)`
-/

namespace A061705.P4286233427320188362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + A006355 (n + 3)

end

end A061705.P4286233427320188362

namespace A061705

/-- `A023607(n)+A006355(n+3)` -/
def P4286233427320188362.Spec : Prop :=
  ∀ n, P4286233427320188362.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P6956719611809148474

`A055244(n+2)-A208354(n)`
-/

namespace A061705.P6956719611809148474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (n + 2) - A208354 n

end

end A061705.P6956719611809148474

namespace A061705

/-- `A055244(n+2)-A208354(n)` -/
def P6956719611809148474.Spec : Prop :=
  ∀ n, P6956719611809148474.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P10692832132360977065

`A212804(n+3)+A088209(n)`
-/

namespace A061705.P10692832132360977065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3) + A088209 n

end

end A061705.P10692832132360977065

namespace A061705

/-- `A212804(n+3)+A088209(n)` -/
def P10692832132360977065.Spec : Prop :=
  ∀ n, P10692832132360977065.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P1486891197930858170

`A094588(n+2)-A212804(n)`
-/

namespace A061705.P1486891197930858170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 2) - A212804 n

end

end A061705.P1486891197930858170

namespace A061705

/-- `A094588(n+2)-A212804(n)` -/
def P1486891197930858170.Spec : Prop :=
  ∀ n, P1486891197930858170.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P10509871184351664035

`A136391(n+3)-A000032(n)`
-/

namespace A061705.P10509871184351664035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 3) - A000032 n

end

end A061705.P10509871184351664035

namespace A061705

/-- `A136391(n+3)-A000032(n)` -/
def P10509871184351664035.Spec : Prop :=
  ∀ n, P10509871184351664035.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P481960658941940396

`A045925(n+1)+A000032(n+1)`
-/

namespace A061705.P481960658941940396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + A000032 (n + 1)

end

end A061705.P481960658941940396

namespace A061705

/-- `A045925(n+1)+A000032(n+1)` -/
def P481960658941940396.Spec : Prop :=
  ∀ n, P481960658941940396.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P6059559053925256276

`A045925(n+1)+A000204(n+1)`
-/

namespace A061705.P6059559053925256276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + A000204 (n + 1)

end

end A061705.P6059559053925256276

namespace A061705

/-- `A045925(n+1)+A000204(n+1)` -/
def P6059559053925256276.Spec : Prop :=
  ∀ n, P6059559053925256276.a n = A061705 (n + 1)

end A061705

/-! ## A061705.P8313301935678598963

`A208354(n+1)+A055244(n+1)`
-/

namespace A061705.P8313301935678598963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) + A055244 (n + 1)

end

end A061705.P8313301935678598963

namespace A061705

/-- `A208354(n+1)+A055244(n+1)` -/
def P8313301935678598963.Spec : Prop :=
  ∀ n, P8313301935678598963.a n = A061705 (n + 1)

end A061705

/-!
# A061706: G.f.: x^2*(x-1)^8/(4*x^9+x^8-79*x^7+166*x^6-225*x^5+206*x^4-129*x^3+50*x^2-11*x+1).

The programs for A061706, there is no canonical definition to state claims against.
-/

/-! ## A061706.P11239803365362536649

`A011960(A149623(n))`
-/

namespace A061706.P11239803365362536649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A149623 n).toNat

end

end A061706.P11239803365362536649

/-! ## A061706.P16516563952074658930

`A008615(A149623(n)-1)`
-/

namespace A061706.P16516563952074658930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A149623 n - 1).toNat

end

end A061706.P16516563952074658930

/-! ## A061706.P15308381091554776233

`A057356(A109085(n)+2)`
-/

namespace A061706.P15308381091554776233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A109085 n + 2).toNat

end

end A061706.P15308381091554776233

/-! ## A061706.P687332567255482887

`A057356(A346505(n))-A000332(n)`
-/

namespace A061706.P687332567255482887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A346505 n).toNat - A000332 n

end

end A061706.P687332567255482887

/-!
# A061707: Smallest number with exactly n^2 divisors.

The programs for A061707, there is no canonical definition to state claims against.
-/

/-! ## A061707.P18442992707517717225

`A005179((n+1)²)`
-/

namespace A061707.P18442992707517717225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 ((n + 1) ^ 2)

end

end A061707.P18442992707517717225

/-! ## A061707.P16332048784737126464

`A187678(A078435(n+1))`
-/

namespace A061707.P16332048784737126464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187678 (A078435 (n + 1)).toNat

end

end A061707.P16332048784737126464

/-! ## A061707.P14587448221944682832

`A070202(n+1)+A005179(A002620(2*(n+1)))`
-/

namespace A061707.P14587448221944682832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070202 (n + 1) + A005179 (A002620 (2 * (n + 1))).toNat

end

end A061707.P14587448221944682832

/-! ## A061707.P10792406944422372228

`A081532(∑[A005898(n)])`
-/

namespace A061707.P10792406944422372228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061707.P10792406944422372228

/-! ## A061707.P11664306837279192742

`A081532(∑[∑[A005897(n)]])`
-/

namespace A061707.P11664306837279192742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061707.P11664306837279192742

/-!
# A061708: Smallest number whose square has (2n - 1)^2 divisors.

The programs for A061708, there is no canonical definition to state claims against.
-/

/-! ## A061708.P15660316269762159151

`sqrt(A300357(n+1))`
-/

namespace A061708.P15660316269762159151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A300357 (n + 1) : ℝ)

end

end A061708.P15660316269762159151

/-! ## A061708.P11175198554453696626

`sqrt(A061707(2*n+1))`
-/

namespace A061708.P11175198554453696626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061707 (2 * n + 1) : ℝ)

end

end A061708.P11175198554453696626

/-! ## A061708.P5850030581870947807

`root(A300357(n+1), 2%A273315(n))`
-/

namespace A061708.P5850030581870947807
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A300357 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A273315 n) : ℝ))

end

end A061708.P5850030581870947807

/-! ## A061708.P12335168157832070705

`A016017((n+1)²+n²)`
-/

namespace A061708.P12335168157832070705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016017 ((n + 1) ^ 2 + n ^ 2)

end

end A061708.P12335168157832070705

/-!
# A061709: Consider a (hollow) triangle with n cells on each edge, for a total of 3(n-1) cells if n>1, or 1 cell if n=1; a(n) is number of ways of labeling cells with 0's and 1's; triangle may be rotated and turned over.

The programs for A061709, the canonical program `A061709.P16073260104269199847` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061709 has offset 1).

The definition of A061709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061709.P16073260104269199847

`10*a(n-1)-8*a(n-2)-80*a(n-3)+128*a(n-4)` with `a(0)=1, a(1)=4, a(2)=20, a(3)=104, a(4)=752`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061709

/-- `10*a(n-1)-8*a(n-2)-80*a(n-3)+128*a(n-4)` -/
def P16073260104269199847.Spec : Prop :=
  ∀ n, P16073260104269199847.a n = A061709 (n + 1)

theorem P16073260104269199847.correct : P16073260104269199847.Spec := by
  intro n
  simp only [A061709, Nat.add_sub_cancel]

end A061709

/-!
# A061710: Number of maximal chains in the Bruhat order of S_n.

The programs for A061710, there is no canonical definition to state claims against.
-/

/-! ## A061710.P9324313535312204223

`A000203(A066643(a(n-1)+1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A061710.P9324313535312204223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A000203 (A066643 (a (n - 1) + 1).toNat).toNat

end

end A061710.P9324313535312204223

/-!
# A061711: a(n) = n^n * n!.

The programs for A061711, the canonical program `A061711.P6649346715984630592` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061711 has offset 0).

The definition of A061711 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n*n!` (program `A061711.P6649346715984630592`, by `A061711.P6649346715984630592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061711.P6649346715984630592

`n^n*n!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061711

/-- `n^n*n!` -/
def P6649346715984630592.Spec : Prop :=
  ∀ n, (P6649346715984630592.a n : ℤ) = A061711 n

theorem P6649346715984630592.correct : P6649346715984630592.Spec := by
  intro n
  simp only [A061711]

end A061711

/-! ## A061711.P6262006877566375713

`n!/n^-n`
-/

namespace A061711.P6262006877566375713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (n : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A061711.P6262006877566375713

namespace A061711

/-- `n!/n^-n` -/
def P6262006877566375713.Spec : Prop :=
  ∀ n, P6262006877566375713.a n = (A061711 n : ℚ)

theorem P6262006877566375713.correct : P6262006877566375713.Spec := by
  intro n
  simp only [A061711, Nat.add_sub_cancel, A061711.P6262006877566375713.a, A061711.P6649346715984630592.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A061711

/-! ## A061711.P5864375685632083313

`n^n*∏[round(1/acot(n))]`
-/

namespace A061711.P5864375685632083313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A061711.P5864375685632083313

namespace A061711

/-- `n^n*∏[round(1/acot(n))]` -/
def P5864375685632083313.Spec : Prop :=
  ∀ n, P5864375685632083313.a n = A061711 n

end A061711

/-! ## A061711.P8376769051204354804

`n^n*∏[ceil(abs(γ-n))]`
-/

namespace A061711.P8376769051204354804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A061711.P8376769051204354804

namespace A061711

/-- `n^n*∏[ceil(abs(γ-n))]` -/
def P8376769051204354804.Spec : Prop :=
  ∀ n, P8376769051204354804.a n = A061711 n

end A061711

/-! ## A061711.P12828177225161116939

`abs((-1)^n*∏[floor(acot(n)-n)]*n^n)`
-/

namespace A061711.P12828177225161116939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-1) ^ n * (∏ j ∈ Finset.range (n + 1), f1 j) * (n ^ n : ℤ)|

end

end A061711.P12828177225161116939

namespace A061711

/-- `abs((-1)^n*∏[floor(acot(n)-n)]*n^n)` -/
def P12828177225161116939.Spec : Prop :=
  ∀ n, P12828177225161116939.a n = A061711 n

end A061711

/-!
# A061712: Smallest prime with Hamming weight n (i.e., with exactly n 1's when written in binary).

The programs for A061712, there is no canonical definition to state claims against.
-/

/-! ## A061712.P7758174129661064739

`A211997(n+1)+A372685(n+2)-A211997(n+2)`
-/

namespace A061712.P7758174129661064739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211997 (n + 1) + (A372685 (n + 2) - A211997 (n + 2))

end

end A061712.P7758174129661064739

/-! ## A061712.P9390660156374634732

`A000040(A372517(n+1))`
-/

namespace A061712.P9390660156374634732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372517 (n + 1)).toNat

end

end A061712.P9390660156374634732

/-! ## A061712.P9613799582340808009

`A008578(A372517(n+1)+1)`
-/

namespace A061712.P9613799582340808009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A372517 (n + 1) + 1).toNat

end

end A061712.P9613799582340808009

/-! ## A061712.P1881473390617708360

`A182986(A372517(n+1)+1)`
-/

namespace A061712.P1881473390617708360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A372517 (n + 1) + 1).toNat

end

end A061712.P1881473390617708360

/-! ## A061712.P942475108442134783

`A276730(A372517(n+1)%A350921(n))`
-/

namespace A061712.P942475108442134783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276730 (Int.tmod (A372517 (n + 1)) (A350921 n)).toNat

end

end A061712.P942475108442134783

/-!
# A061713: Number of closed walks of length n on a 3 X 3 X 3 Rubik's Cube.

The programs for A061713, there is no canonical definition to state claims against.
-/

/-! ## A061713.P7104666359649984280

`abs(record[A187844(A002212(n))])`
-/

namespace A061713.P7104666359649984280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (A002212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A061713.P7104666359649984280

/-!
# A061714: Number of types of (n-1)-swap moves for traveling salesman problem. Number of circular permutations on elements 0,1,...,2n-1 where every two elements 2i,2i+1 and no two elements 2i-1,2i are adjacent.

The programs for A061714, the canonical program `A061714.P16193808572727617002` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061714 has offset 0).

The definition of A061714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061714.P16193808572727617002

`(-1)^n+A120765(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061714

/-- `(-1)^n+A120765(n)` -/
def P16193808572727617002.Spec : Prop :=
  ∀ n, P16193808572727617002.a n = A061714 n

theorem P16193808572727617002.correct : P16193808572727617002.Spec := by
  intro n
  simp only [A061714]

end A061714

/-! ## A061714.P11985592216303132861

`xor(1, A120765(n))`
-/

namespace A061714.P11985592216303132861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120765 n)

end

end A061714.P11985592216303132861

namespace A061714

/-- `xor(1, A120765(n))` -/
def P11985592216303132861.Spec : Prop :=
  ∀ n, P11985592216303132861.a n = A061714 n

end A061714

/-! ## A061714.P17226755588559893284

`A000354(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A061714.P17226755588559893284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000354 (n - 1) - a (n - 1)

end

end A061714.P17226755588559893284

namespace A061714

/-- `A000354(n-1)-a(n-1)` -/
def P17226755588559893284.Spec : Prop :=
  ∀ n, P17226755588559893284.a n = A061714 n

end A061714

/-! ## A061714.P12207627418626125562

`A120765(n)+A033999(n)`
-/

namespace A061714.P12207627418626125562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120765 n + A033999 n

end

end A061714.P12207627418626125562

namespace A061714

/-- `A120765(n)+A033999(n)` -/
def P12207627418626125562.Spec : Prop :=
  ∀ n, P12207627418626125562.a n = A061714 n

theorem P12207627418626125562.correct : P12207627418626125562.Spec := by
  intro n
  simp only [A061714, Nat.add_sub_cancel, A061714.P12207627418626125562.a, A061714.P16193808572727617002.a, A033999, A033999.P17703899380244199787.a, A120765, A120765.P388832571415371638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061714

/-! ## A061714.P7475933476141944569

`A120765(n)-A165326(3*n+2)`
-/

namespace A061714.P7475933476141944569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120765 n - A165326 (3 * n + 2)

end

end A061714.P7475933476141944569

namespace A061714

/-- `A120765(n)-A165326(3*n+2)` -/
def P7475933476141944569.Spec : Prop :=
  ∀ n, P7475933476141944569.a n = A061714 n

end A061714

/-!
# A061715: Numbers which are sandwiched between two numbers having the same ordered canonical form.

The programs for A061715, there is no canonical definition to state claims against.
-/

/-! ## A061715.P3074112199526336366

`eq[A071364(A065164(n+1)), A071364(n+1)]`
-/

namespace A061715.P3074112199526336366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A065164 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061715.P3074112199526336366

/-! ## A061715.P16185113662091138536

`record[A175542(A074997(n+1))]`
-/

namespace A061715.P16185113662091138536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A074997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061715.P16185113662091138536

/-! ## A061715.P1608047672423237071

`record[A175542(A074998(n+1))]`
-/

namespace A061715.P1608047672423237071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A074998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061715.P1608047672423237071

/-! ## A061715.P14439584170434969379

`record[A175542(A280383(n+1))]`
-/

namespace A061715.P14439584170434969379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A280383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061715.P14439584170434969379

/-! ## A061715.P8644708897158802710

`record[A175542(A279767(n+1)+1)]`
-/

namespace A061715.P8644708897158802710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A279767 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061715.P8644708897158802710

/-! ## A061715.P5491433209817397464

`A280469(n+1)+A000038(A272423(n))`
-/

namespace A061715.P5491433209817397464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280469 (n + 1) + A000038 (A272423 n).toNat

end

end A061715.P5491433209817397464

/-!
# A061716: Binary order of n-th prime.

The programs for A061716, the canonical program `A061716.P13140873367767329477` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061716 has offset 1).

The definition of A061716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061716.P13140873367767329477

`A029837(A000040(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061716

/-- `A029837(A000040(n+1))` -/
def P13140873367767329477.Spec : Prop :=
  ∀ n, P13140873367767329477.a n = A061716 (n + 1)

theorem P13140873367767329477.correct : P13140873367767329477.Spec := by
  intro n
  simp only [A061716, Nat.add_sub_cancel]

end A061716

/-! ## A061716.P6577205859195208609

`∑[char[A007053(n)]]`
-/

namespace A061716.P6577205859195208609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061716.P6577205859195208609

namespace A061716

/-- `∑[char[A007053(n)]]` -/
def P6577205859195208609.Spec : Prop :=
  ∀ n, (P6577205859195208609.a n : ℤ) = A061716 (n + 1)

end A061716

/-! ## A061716.P16662941368409021893

`ceil(log2(Δ[A007504(n)]))`
-/

namespace A061716.P16662941368409021893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (f1 (n + 1) - f1 n : ℝ)⌉

end

end A061716.P16662941368409021893

namespace A061716

/-- `ceil(log2(Δ[A007504(n)]))` -/
def P16662941368409021893.Spec : Prop :=
  ∀ n, P16662941368409021893.a n = A061716 (n + 1)

end A061716

/-! ## A061716.P11233107381761511017

`floor(log2(A037168(n+1)))`
-/

namespace A061716.P11233107381761511017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A037168 (n + 1)).toNat

end

end A061716.P11233107381761511017

namespace A061716

/-- `floor(log2(A037168(n+1)))` -/
def P11233107381761511017.Spec : Prop :=
  ∀ n, (P11233107381761511017.a n : ℤ) = A061716 (n + 1)

end A061716

/-! ## A061716.P5779472748353318374

`floor(log2(A084421(n+1)))`
-/

namespace A061716.P5779472748353318374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A084421 (n + 1)).toNat

end

end A061716.P5779472748353318374

namespace A061716

/-- `floor(log2(A084421(n+1)))` -/
def P5779472748353318374.Spec : Prop :=
  ∀ n, (P5779472748353318374.a n : ℤ) = A061716 (n + 1)

end A061716

/-! ## A061716.P16812029779974408120

`∑[char[A060967(2*n)]]`
-/

namespace A061716.P16812029779974408120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061716.P16812029779974408120

namespace A061716

/-- `∑[char[A060967(2*n)]]` -/
def P16812029779974408120.Spec : Prop :=
  ∀ n, (P16812029779974408120.a n : ℤ) = A061716 (n + 1)

end A061716

/-! ## A061716.P9706391928104933946

`ceil(log2(sqrt(A001248(n+1))))`
-/

namespace A061716.P9706391928104933946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A001248 (n + 1) : ℝ))⌉

end

end A061716.P9706391928104933946

namespace A061716

/-- `ceil(log2(sqrt(A001248(n+1))))` -/
def P9706391928104933946.Spec : Prop :=
  ∀ n, P9706391928104933946.a n = A061716 (n + 1)

end A061716

/-! ## A061716.P5930346996822213233

`floor(log2(A006093(n+1)))+1`
-/

namespace A061716.P5930346996822213233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A006093 (n + 1)).toNat + 1

end

end A061716.P5930346996822213233

namespace A061716

/-- `floor(log2(A006093(n+1)))+1` -/
def P5930346996822213233.Spec : Prop :=
  ∀ n, (P5930346996822213233.a n : ℤ) = A061716 (n + 1)

end A061716

/-! ## A061716.P17180769378935693591

`floor(log2(A100484(n+1)-1))`
-/

namespace A061716.P17180769378935693591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A100484 (n + 1) - 1).toNat

end

end A061716.P17180769378935693591

namespace A061716

/-- `floor(log2(A100484(n+1)-1))` -/
def P17180769378935693591.Spec : Prop :=
  ∀ n, (P17180769378935693591.a n : ℤ) = A061716 (n + 1)

end A061716

/-! ## A061716.P17889080585504060762

`ceil(log2(A008864(n+1)-1))`
-/

namespace A061716.P17889080585504060762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A008864 (n + 1) - 1 : ℝ)⌉

end

end A061716.P17889080585504060762

namespace A061716

/-- `ceil(log2(A008864(n+1)-1))` -/
def P17889080585504060762.Spec : Prop :=
  ∀ n, P17889080585504060762.a n = A061716 (n + 1)

end A061716

/-! ## A061716.P11106391361805302327

`ceil(log2(A040976(n+1)+2))`
-/

namespace A061716.P11106391361805302327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A040976 (n + 1) + 2 : ℝ)⌉

end

end A061716.P11106391361805302327

namespace A061716

/-- `ceil(log2(A040976(n+1)+2))` -/
def P11106391361805302327.Spec : Prop :=
  ∀ n, P11106391361805302327.a n = A061716 (n + 1)

end A061716

/-! ## A061716.P11702807927240112447

`floor(log2(A072055(n+1)-2))`
-/

namespace A061716.P11702807927240112447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A072055 (n + 1) - 2).toNat

end

end A061716.P11702807927240112447

namespace A061716

/-- `floor(log2(A072055(n+1)-2))` -/
def P11702807927240112447.Spec : Prop :=
  ∀ n, (P11702807927240112447.a n : ℤ) = A061716 (n + 1)

end A061716

/-! ## A061716.P5560511528400961910

`ceil(log2(A345531(n+1)-1))`
-/

namespace A061716.P5560511528400961910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A345531 (n + 1) - 1 : ℝ)⌉

end

end A061716.P5560511528400961910

namespace A061716

/-- `ceil(log2(A345531(n+1)-1))` -/
def P5560511528400961910.Spec : Prop :=
  ∀ n, P5560511528400961910.a n = A061716 (n + 1)

end A061716

/-! ## A061716.P16537637757643908526

`A098388(n+1)+A057427(n)`
-/

namespace A061716.P16537637757643908526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1) + A057427 n

end

end A061716.P16537637757643908526

namespace A061716

/-- `A098388(n+1)+A057427(n)` -/
def P16537637757643908526.Spec : Prop :=
  ∀ n, P16537637757643908526.a n = A061716 (n + 1)

end A061716

/-! ## A061716.P6888848603504797996

`A035100(n+1)-A000007(n)`
-/

namespace A061716.P6888848603504797996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) - A000007 n

end

end A061716.P6888848603504797996

namespace A061716

/-- `A035100(n+1)-A000007(n)` -/
def P6888848603504797996.Spec : Prop :=
  ∀ n, P6888848603504797996.a n = A061716 (n + 1)

end A061716

/-! ## A061716.P4066016134677000224

`A098388(n+1)-A057428(n)`
-/

namespace A061716.P4066016134677000224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1) - A057428 n

end

end A061716.P4066016134677000224

namespace A061716

/-- `A098388(n+1)-A057428(n)` -/
def P4066016134677000224.Spec : Prop :=
  ∀ n, P4066016134677000224.a n = A061716 (n + 1)

end A061716

/-! ## A061716.P10420912374861708079

`A035100(n+1)/A054977(n)`
-/

namespace A061716.P10420912374861708079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035100 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A061716.P10420912374861708079

namespace A061716

/-- `A035100(n+1)/A054977(n)` -/
def P10420912374861708079.Spec : Prop :=
  ∀ n, P10420912374861708079.a n = (A061716 (n + 1) : ℚ)

end A061716

/-! ## A061716.P16673657826871555078

`∑[char[∑[A036378(n)]-A036378(n)]]`
-/

namespace A061716.P16673657826871555078
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - A036378 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061716.P16673657826871555078

namespace A061716

/-- `∑[char[∑[A036378(n)]-A036378(n)]]` -/
def P16673657826871555078.Spec : Prop :=
  ∀ n, (P16673657826871555078.a n : ℤ) = A061716 (n + 1)

end A061716

/-! ## A061716.P17612725325885127288

`A006005(n+1)-A163293(n+1)`
-/

namespace A061716.P17612725325885127288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A163293 (n + 1)

end

end A061716.P17612725325885127288

namespace A061716

/-- `A006005(n+1)-A163293(n+1)` -/
def P17612725325885127288.Spec : Prop :=
  ∀ n, P17612725325885127288.a n = A061716 (n + 1)

end A061716

/-! ## A061716.P13269649192956996917

`ceil(log2(p?[xor(2, n)]))`
-/

namespace A061716.P13269649192956996917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌉

end

end A061716.P13269649192956996917

namespace A061716

/-- `ceil(log2(p?[xor(2, n)]))` -/
def P13269649192956996917.Spec : Prop :=
  ∀ n, P13269649192956996917.a n = A061716 (n + 1)

end A061716

/-!
# A061717: Binary order of n^n.

The programs for A061717, the canonical program `A061717.P18428606386538897644` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061717 has offset 1).

The definition of A061717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061717.P18428606386538897644

`ceil((n+1)*log2(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061717

/-- `ceil((n+1)*log2(n+1))` -/
def P18428606386538897644.Spec : Prop :=
  ∀ n, P18428606386538897644.a n = A061717 (n + 1)

theorem P18428606386538897644.correct : P18428606386538897644.Spec := by
  intro n
  simp only [A061717, Nat.add_sub_cancel]

end A061717

/-! ## A061717.P8843161887868430659

`floor((n+1)*(acot(n+1)+log2(n+1)))`
-/

namespace A061717.P8843161887868430659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (SequenceMachineLib.acot (n + 1 : ℝ) + Real.logb 2 (n + 1 : ℝ))⌋

end

end A061717.P8843161887868430659

namespace A061717

/-- `floor((n+1)*(acot(n+1)+log2(n+1)))` -/
def P8843161887868430659.Spec : Prop :=
  ∀ n, P8843161887868430659.a n = A061717 (n + 1)

end A061717

/-! ## A061717.P7303599810322711117

`A326299(n+1)+A043545(n)`
-/

namespace A061717.P7303599810322711117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326299 (n + 1) + A043545 n

end

end A061717.P7303599810322711117

namespace A061717

/-- `A326299(n+1)+A043545(n)` -/
def P7303599810322711117.Spec : Prop :=
  ∀ n, P7303599810322711117.a n = A061717 (n + 1)

end A061717

/-! ## A061717.P3634683780460309806

`A259368(n+1)-A036987(n)`
-/

namespace A061717.P3634683780460309806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259368 (n + 1) - A036987 n

end

end A061717.P3634683780460309806

namespace A061717

/-- `A259368(n+1)-A036987(n)` -/
def P3634683780460309806.Spec : Prop :=
  ∀ n, P3634683780460309806.a n = A061717 (n + 1)

end A061717

/-! ## A061717.P4704010388322083435

`A326299(n+1)+A000035(A020500(n+1))`
-/

namespace A061717.P4704010388322083435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326299 (n + 1) + A000035 (A020500 (n + 1)).toNat

end

end A061717.P4704010388322083435

namespace A061717

/-- `A326299(n+1)+A000035(A020500(n+1))` -/
def P4704010388322083435.Spec : Prop :=
  ∀ n, P4704010388322083435.a n = A061717 (n + 1)

end A061717

/-! ## A061717.P9817657670031814296

`A326299(n+1)+A000124(n)%A000265(n+1)`
-/

namespace A061717.P9817657670031814296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326299 (n + 1) + Int.tmod (A000124 n) (A000265 (n + 1))

end

end A061717.P9817657670031814296

namespace A061717

/-- `A326299(n+1)+A000124(n)%A000265(n+1)` -/
def P9817657670031814296.Spec : Prop :=
  ∀ n, P9817657670031814296.a n = A061717 (n + 1)

end A061717

/-! ## A061717.P17345243205266439609

`A029837(n+1)+A326299(n+1)-A000523(n+1)`
-/

namespace A061717.P17345243205266439609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + (A326299 (n + 1) - A000523 (n + 1))

end

end A061717.P17345243205266439609

namespace A061717

/-- `A029837(n+1)+A326299(n+1)-A000523(n+1)` -/
def P17345243205266439609.Spec : Prop :=
  ∀ n, P17345243205266439609.a n = A061717 (n + 1)

end A061717

/-! ## A061717.P4484728917316093711

`A259368(n+1)-and(1, A001405(n))`
-/

namespace A061717.P4484728917316093711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259368 (n + 1) - Int.land 1 (A001405 n)

end

end A061717.P4484728917316093711

namespace A061717

/-- `A259368(n+1)-and(1, A001405(n))` -/
def P4484728917316093711.Spec : Prop :=
  ∀ n, P4484728917316093711.a n = A061717 (n + 1)

end A061717

/-! ## A061717.P7727294336080409808

`A259368(n+1)-∏{p}[n+1, A111660(A227003(#))]`
-/

namespace A061717.P7727294336080409808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259368 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A111660 (A227003 p).toNat

end

end A061717.P7727294336080409808

namespace A061717

/-- `A259368(n+1)-∏{p}[n+1, A111660(A227003(#))]` -/
def P7727294336080409808.Spec : Prop :=
  ∀ n, P7727294336080409808.a n = A061717 (n + 1)

end A061717

/-! ## A061717.P3448237027699569121

`floor(log2(A062207(n+1)))`
-/

namespace A061717.P3448237027699569121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A062207 (n + 1)).toNat

end

end A061717.P3448237027699569121

namespace A061717

/-- `floor(log2(A062207(n+1)))` -/
def P3448237027699569121.Spec : Prop :=
  ∀ n, (P3448237027699569121.a n : ℤ) = A061717 (n + 1)

end A061717

/-!
# A061718: a(n) = (n*(n+1)/2)^n.

The programs for A061718, the canonical program `A061718.P15953172046501625065` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061718 has offset 1).

The definition of A061718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061718.P15953172046501625065

`((n+1)*(n+2)/2)^(n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061718

/-- `((n+1)*(n+2)/2)^(n+1)` -/
def P15953172046501625065.Spec : Prop :=
  ∀ n, P15953172046501625065.a n = (A061718 (n + 1) : ℚ)

end A061718

/-! ## A061718.P16481980668874665947

`record[(∑[n]-char[1])^n]`
-/

namespace A061718.P16481980668874665947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061718.P16481980668874665947

namespace A061718

/-- `record[(∑[n]-char[1])^n]` -/
def P16481980668874665947.Spec : Prop :=
  ∀ n, P16481980668874665947.a n = A061718 (n + 1)

end A061718

/-! ## A061718.P14201719825218784739

`root(∑[n+1], tan(acot(n+1)))`
-/

namespace A061718.P14201719825218784739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ)))

end

end A061718.P14201719825218784739

namespace A061718

/-- `root(∑[n+1], tan(acot(n+1)))` -/
def P14201719825218784739.Spec : Prop :=
  ∀ n, P14201719825218784739.a n = (A061718 (n + 1) : ℝ)

end A061718

/-! ## A061718.P8933765080527148594

`abs((-C(n+2, 2))^(n+1))`
-/

namespace A061718.P8933765080527148594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.choose (n + 2) 2 : ℤ)) ^ (n + 1)|

end

end A061718.P8933765080527148594

namespace A061718

/-- `abs((-C(n+2, 2))^(n+1))` -/
def P8933765080527148594.Spec : Prop :=
  ∀ n, P8933765080527148594.a n = A061718 (n + 1)

end A061718

/-! ## A061718.P14492270048536660984

`a(n-1)*ratio[∑[n]^n]` with `a(0)=1`
-/

namespace A061718.P14492270048536660984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A061718.P14492270048536660984

namespace A061718

/-- `a(n-1)*ratio[∑[n]^n]` -/
def P14492270048536660984.Spec : Prop :=
  ∀ n, P14492270048536660984.a n = (A061718 (n + 1) : ℚ)

end A061718

/-!
# A061719: a(n) = Product_{k=0...n} (k!^3).

The programs for A061719, the canonical program `A061719.P17348919647334143380` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061719 has offset 0).

The definition of A061719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061719.P17348919647334143380

`A000178(n)^3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061719

/-- `A000178(n)^3` -/
def P17348919647334143380.Spec : Prop :=
  ∀ n, P17348919647334143380.a n = A061719 n

theorem P17348919647334143380.correct : P17348919647334143380.Spec := by
  intro n
  simp only [A061719]

end A061719

/-! ## A061719.P11388973541602224877

`∏[n!^3]`
-/

namespace A061719.P11388973541602224877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A061719.P11388973541602224877

namespace A061719

/-- `∏[n!^3]` -/
def P11388973541602224877.Spec : Prop :=
  ∀ n, (P11388973541602224877.a n : ℤ) = A061719 n

end A061719

/-! ## A061719.P8286100112560788991

`8^∑[log2(n!)]`
-/

namespace A061719.P8286100112560788991
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (8 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061719.P8286100112560788991

namespace A061719

/-- `8^∑[log2(n!)]` -/
def P8286100112560788991.Spec : Prop :=
  ∀ n, P8286100112560788991.a n = (A061719 n : ℝ)

end A061719

/-! ## A061719.P4386087562614677028

`exp(∑[log(n!)])^3`
-/

namespace A061719.P4386087562614677028
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A061719.P4386087562614677028

namespace A061719

/-- `exp(∑[log(n!)])^3` -/
def P4386087562614677028.Spec : Prop :=
  ∀ n, P4386087562614677028.a n = (A061719 n : ℝ)

end A061719

/-! ## A061719.P16097426105071481585

`∏[n!²*n!]`
-/

namespace A061719.P16097426105071481585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A061719.P16097426105071481585

namespace A061719

/-- `∏[n!²*n!]` -/
def P16097426105071481585.Spec : Prop :=
  ∀ n, (P16097426105071481585.a n : ℤ) = A061719 n

end A061719

/-!
# A061720: First differences of sequence of primorials.

The programs for A061720, there is no canonical definition to state claims against.
-/

/-! ## A061720.P15207056722546151889

`A002110(n+1)-A002110(n)`
-/

namespace A061720.P15207056722546151889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A002110 n

end

end A061720.P15207056722546151889

/-! ## A061720.P7011763028952412557

`A002110(n)*A006093(n+1)`
-/

namespace A061720.P7011763028952412557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A006093 (n + 1)

end

end A061720.P7011763028952412557

/-! ## A061720.P10041897160027334512

`Δ[A002110(n)]`
-/

namespace A061720.P10041897160027334512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061720.P10041897160027334512

/-! ## A061720.P12997550779730531896

`Δ[A006862(n)]`
-/

namespace A061720.P12997550779730531896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061720.P12997550779730531896

/-! ## A061720.P11934588203302186101

`Δ[A096334(∑[n])]`
-/

namespace A061720.P11934588203302186101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061720.P11934588203302186101

/-! ## A061720.P16490691249609179014

`Δ[A121281(∑[n])]`
-/

namespace A061720.P16490691249609179014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061720.P16490691249609179014

/-! ## A061720.P4938065421888133265

`Δ[A246868(∑[n])]`
-/

namespace A061720.P4938065421888133265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246868 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061720.P4938065421888133265

/-! ## A061720.P8576038257916316092

`Δ[A370121(∑[n])]`
-/

namespace A061720.P8576038257916316092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370121 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061720.P8576038257916316092

/-! ## A061720.P13453304822631229778

`Δ[record[A096334(n)]]`
-/

namespace A061720.P13453304822631229778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061720.P13453304822631229778

/-! ## A061720.P2016883403932719350

`Δ[record[A121281(n)]]`
-/

namespace A061720.P2016883403932719350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061720.P2016883403932719350

/-!
# A061722: a(n) = 10*n^2 + 7.

The programs for A061722, the canonical program `A061722.P13309740242087995941` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061722 has offset 0).

The definition of A061722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n²+7` (program `A061722.P13309740242087995941`, by `A061722.P13309740242087995941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061722.P13309740242087995941

`10*n²+7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061722

/-- `10*n²+7` -/
def P13309740242087995941.Spec : Prop :=
  ∀ n, (P13309740242087995941.a n : ℤ) = A061722 n

theorem P13309740242087995941.correct : P13309740242087995941.Spec := by
  intro n
  simp only [A061722]

end A061722

/-! ## A061722.P13682278247331949238

`ceil(10*(n²-cos(4)))`
-/

namespace A061722.P13682278247331949238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈10 * ((n ^ 2 : ℝ) - Real.cos (4 : ℝ))⌉

end

end A061722.P13682278247331949238

namespace A061722

/-- `ceil(10*(n²-cos(4)))` -/
def P13682278247331949238.Spec : Prop :=
  ∀ n, P13682278247331949238.a n = A061722 n

end A061722

/-! ## A061722.P15428883135770155868

`floor(10*(n²-sin(4)))`
-/

namespace A061722.P15428883135770155868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * ((n ^ 2 : ℝ) - Real.sin (4 : ℝ))⌋

end

end A061722.P15428883135770155868

namespace A061722

/-- `floor(10*(n²-sin(4)))` -/
def P15428883135770155868.Spec : Prop :=
  ∀ n, P15428883135770155868.a n = A061722 n

end A061722

/-! ## A061722.P17100641008271353046

`∑[a(n-1)+20]` with `a(0)=7, a(1)=10`
-/

namespace A061722.P17100641008271353046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 10] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061722.P17100641008271353046

namespace A061722

/-- `∑[a(n-1)+20]` -/
def P17100641008271353046.Spec : Prop :=
  ∀ n, (P17100641008271353046.a n : ℤ) = A061722 n

end A061722

/-! ## A061722.P10023253402990918230

`or(1, A005901(n)+5)`
-/

namespace A061722.P10023253402990918230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005901 n + 5)

end

end A061722.P10023253402990918230

namespace A061722

/-- `or(1, A005901(n)+5)` -/
def P10023253402990918230.Spec : Prop :=
  ∀ n, P10023253402990918230.a n = A061722 n

end A061722

/-! ## A061722.P13581151114243562825

`xor(1, A033583(n)+6)`
-/

namespace A061722.P13581151114243562825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A033583 n + 6)

end

end A061722.P13581151114243562825

namespace A061722

/-- `xor(1, A033583(n)+6)` -/
def P13581151114243562825.Spec : Prop :=
  ∀ n, P13581151114243562825.a n = A061722 n

end A061722

/-! ## A061722.P2810186153551640288

`abs(A302576(n+1)+17)`
-/

namespace A061722.P2810186153551640288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A302576 (n + 1) + 17|

end

end A061722.P2810186153551640288

namespace A061722

/-- `abs(A302576(n+1)+17)` -/
def P2810186153551640288.Spec : Prop :=
  ∀ n, P2810186153551640288.a n = A061722 n

end A061722

/-! ## A061722.P3223926337263508626

`(A158187(n)+6)%A158737(n+1)`
-/

namespace A061722.P3223926337263508626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158187 n + 6) (A158737 (n + 1))

end

end A061722.P3223926337263508626

namespace A061722

/-- `(A158187(n)+6)%A158737(n+1)` -/
def P3223926337263508626.Spec : Prop :=
  ∀ n, P3223926337263508626.a n = A061722 n

end A061722

/-! ## A061722.P16500531547413885556

`abs(∑[5*(A005843(2*n)-2)]+17)`
-/

namespace A061722.P16500531547413885556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A005843 (2 * n) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 17|

end

end A061722.P16500531547413885556

namespace A061722

/-- `abs(∑[5*(A005843(2*n)-2)]+17)` -/
def P16500531547413885556.Spec : Prop :=
  ∀ n, P16500531547413885556.a n = A061722 n

end A061722

/-! ## A061722.P3615784543312348624

`abs(∑[10*A023443(2*n)]+17)`
-/

namespace A061722.P3615784543312348624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A023443 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 17|

end

end A061722.P3615784543312348624

namespace A061722

/-- `abs(∑[10*A023443(2*n)]+17)` -/
def P3615784543312348624.Spec : Prop :=
  ∀ n, P3615784543312348624.a n = A061722 n

end A061722

/-! ## A061722.P13701279206769929992

`A000027(A033583(n)+7)`
-/

namespace A061722.P13701279206769929992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033583 n + 7).toNat

end

end A061722.P13701279206769929992

namespace A061722

/-- `A000027(A033583(n)+7)` -/
def P13701279206769929992.Spec : Prop :=
  ∀ n, P13701279206769929992.a n = A061722 n

end A061722

/-! ## A061722.P17196944710553291242

`A000027(∑[10*A023443(2*n)]+17)`
-/

namespace A061722.P17196944710553291242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A023443 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j + 17).toNat

end

end A061722.P17196944710553291242

namespace A061722

/-- `A000027(∑[10*A023443(2*n)]+17)` -/
def P17196944710553291242.Spec : Prop :=
  ∀ n, P17196944710553291242.a n = A061722 n

end A061722

/-! ## A061722.P5519781400681871269

`sqrt(A017354(n²))`
-/

namespace A061722.P5519781400681871269
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017354 (n ^ 2) : ℝ)

end

end A061722.P5519781400681871269

namespace A061722

/-- `sqrt(A017354(n²))` -/
def P5519781400681871269.Spec : Prop :=
  ∀ n, P5519781400681871269.a n = (A061722 n : ℝ)

end A061722

/-! ## A061722.P8211727031653419600

`sqrt(sqrt(A017356(n²)))`
-/

namespace A061722.P8211727031653419600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017356 (n ^ 2) : ℝ))

end

end A061722.P8211727031653419600

namespace A061722

/-- `sqrt(sqrt(A017356(n²)))` -/
def P8211727031653419600.Spec : Prop :=
  ∀ n, P8211727031653419600.a n = (A061722 n : ℝ)

end A061722

/-! ## A061722.P14026732629128893337

`sqrt(sqrt(sqrt(A017360(n²))))`
-/

namespace A061722.P14026732629128893337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (Real.sqrt (A017360 (n ^ 2) : ℝ)))

end

end A061722.P14026732629128893337

namespace A061722

/-- `sqrt(sqrt(sqrt(A017360(n²))))` -/
def P14026732629128893337.Spec : Prop :=
  ∀ n, P14026732629128893337.a n = (A061722 n : ℝ)

end A061722

/-! ## A061722.P5956565789639720535

`A017353(n²)`
-/

namespace A061722.P5956565789639720535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (n ^ 2)

end

end A061722.P5956565789639720535

namespace A061722

/-- `A017353(n²)` -/
def P5956565789639720535.Spec : Prop :=
  ∀ n, P5956565789639720535.a n = A061722 n

end A061722

/-! ## A061722.P5754688443314664392

`A160912(n²+2)`
-/

namespace A061722.P5754688443314664392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n ^ 2 + 2)

end

end A061722.P5754688443314664392

namespace A061722

/-- `A160912(n²+2)` -/
def P5754688443314664392.Spec : Prop :=
  ∀ n, P5754688443314664392.a n = A061722 n

end A061722

/-! ## A061722.P5903292996728914014

`or(1, A008592(n²)+6)`
-/

namespace A061722.P5903292996728914014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008592 (n ^ 2) + 6)

end

end A061722.P5903292996728914014

namespace A061722

/-- `or(1, A008592(n²)+6)` -/
def P5903292996728914014.Spec : Prop :=
  ∀ n, P5903292996728914014.a n = A061722 n

end A061722

/-! ## A061722.P1375391003377439763

`abs(3-A008592(n²+1))`
-/

namespace A061722.P1375391003377439763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A008592 (n ^ 2 + 1)|

end

end A061722.P1375391003377439763

namespace A061722

/-- `abs(3-A008592(n²+1))` -/
def P1375391003377439763.Spec : Prop :=
  ∀ n, P1375391003377439763.a n = A061722 n

end A061722

/-!
# A061723: Floor of arithmetic-geometric mean of n and 2*n - 1.

The programs for A061723, there is no canonical definition to state claims against.
-/

/-! ## A061723.P12772541380753292707

`A259361(∑[A315538(A057353(n))])`
-/

namespace A061723.P12772541380753292707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 (A057353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061723.P12772541380753292707

/-! ## A061723.P8521540239376591762

`A000196(∑[A001951(3*(n+1))]-A001951(5*n+3))`
-/

namespace A061723.P8521540239376591762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j - A001951 (5 * n + 3)).toNat

end

end A061723.P8521540239376591762

/-! ## A061723.P10156575957093260972

`A095861(A038709(n)+A005899(n))`
-/

namespace A061723.P10156575957093260972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A038709 n + A005899 n).toNat

end

end A061723.P10156575957093260972

/-! ## A061723.P16574541336305033990

`comp[A023810(3*n+5)]%A323536(n+1)`
-/

namespace A061723.P16574541336305033990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023810 (3 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A323536 (n + 1))

end

end A061723.P16574541336305033990

/-! ## A061723.P6487909957390507981

`comp[A195126(2*(n+1))]%A195114(2*(n+1))`
-/

namespace A061723.P6487909957390507981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195126 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A195114 (2 * (n + 1)))

end

end A061723.P6487909957390507981

/-!
# A061725: p^2 + 2 where p is a prime.

The programs for A061725, the canonical program `A061725.P14287202309027882808` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061725 has offset 1).

The definition of A061725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061725.P10301341448937603515

`A066872(n+1)+1`
-/

namespace A061725.P10301341448937603515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + 1

end

end A061725.P10301341448937603515

namespace A061725

/-- `A066872(n+1)+1` -/
def P10301341448937603515.Spec : Prop :=
  ∀ n, P10301341448937603515.a n = A061725 (n + 1)

theorem P10301341448937603515.correct : P10301341448937603515.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P10301341448937603515.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A066872, A066872.P16309924819967402.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P14287202309027882808

`A001248(n+1)+2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061725

/-- `A001248(n+1)+2` -/
def P14287202309027882808.Spec : Prop :=
  ∀ n, P14287202309027882808.a n = A061725 (n + 1)

theorem P14287202309027882808.correct : P14287202309027882808.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel]

end A061725

/-! ## A061725.P15185165614015523624

`A084920(n+1)+3`
-/

namespace A061725.P15185165614015523624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + 3

end

end A061725.P15185165614015523624

namespace A061725

/-- `A084920(n+1)+3` -/
def P15185165614015523624.Spec : Prop :=
  ∀ n, P15185165614015523624.a n = A061725 (n + 1)

theorem P15185165614015523624.correct : P15185165614015523624.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P15185165614015523624.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A084920, A084920.P18008529996685256336.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P11219481882060283341

`A287922(n+1)-2`
-/

namespace A061725.P11219481882060283341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1) - 2

end

end A061725.P11219481882060283341

namespace A061725

/-- `A287922(n+1)-2` -/
def P11219481882060283341.Spec : Prop :=
  ∀ n, P11219481882060283341.a n = A061725 (n + 1)

end A061725

/-! ## A061725.P13792583876111648040

`A049001(n+1)+4`
-/

namespace A061725.P13792583876111648040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 4

end

end A061725.P13792583876111648040

namespace A061725

/-- `A049001(n+1)+4` -/
def P13792583876111648040.Spec : Prop :=
  ∀ n, P13792583876111648040.a n = A061725 (n + 1)

theorem P13792583876111648040.correct : P13792583876111648040.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P13792583876111648040.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A049001, A049001.P16714800471455782698.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P5774614997999517199

`A182200(n+1)+5`
-/

namespace A061725.P5774614997999517199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) + 5

end

end A061725.P5774614997999517199

namespace A061725

/-- `A182200(n+1)+5` -/
def P5774614997999517199.Spec : Prop :=
  ∀ n, P5774614997999517199.a n = A061725 (n + 1)

theorem P5774614997999517199.correct : P5774614997999517199.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P5774614997999517199.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A182200, A182200.P2957371844516527360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A166010, A166010.P2251698158040960203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P14961983137285252002

`A166010(n+1)+6`
-/

namespace A061725.P14961983137285252002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + 6

end

end A061725.P14961983137285252002

namespace A061725

/-- `A166010(n+1)+6` -/
def P14961983137285252002.Spec : Prop :=
  ∀ n, P14961983137285252002.a n = A061725 (n + 1)

theorem P14961983137285252002.correct : P14961983137285252002.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P14961983137285252002.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A166010, A166010.P2251698158040960203.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P9225768995182229308

`A153480(n)/2+4`
-/

namespace A061725.P9225768995182229308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153480 n : ℚ) / 2 + 4

end

end A061725.P9225768995182229308

namespace A061725

/-- `A153480(n)/2+4` -/
def P9225768995182229308.Spec : Prop :=
  ∀ n, P9225768995182229308.a n = (A061725 (n + 1) : ℚ)

theorem P9225768995182229308.correct : P9225768995182229308.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P9225768995182229308.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A153480, A153480.P781182470284605165.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P16714800471455782698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P6650028197349611714

`Δ[A007504(n)]²+2`
-/

namespace A061725.P6650028197349611714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 2

end

end A061725.P6650028197349611714

namespace A061725

/-- `Δ[A007504(n)]²+2` -/
def P6650028197349611714.Spec : Prop :=
  ∀ n, P6650028197349611714.a n = A061725 (n + 1)

end A061725

/-! ## A061725.P12566170888046982497

`Δ[A008348(n)]²+2`
-/

namespace A061725.P12566170888046982497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 2

end

end A061725.P12566170888046982497

namespace A061725

/-- `Δ[A008348(n)]²+2` -/
def P12566170888046982497.Spec : Prop :=
  ∀ n, P12566170888046982497.a n = A061725 (n + 1)

end A061725

/-! ## A061725.P10107749735167699828

`Δ[A022837(n)]²+2`
-/

namespace A061725.P10107749735167699828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 2

end

end A061725.P10107749735167699828

namespace A061725

/-- `Δ[A022837(n)]²+2` -/
def P10107749735167699828.Spec : Prop :=
  ∀ n, P10107749735167699828.a n = A061725 (n + 1)

end A061725

/-! ## A061725.P7450740892713033792

`Δ[A064365(n)]²+2`
-/

namespace A061725.P7450740892713033792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 2

end

end A061725.P7450740892713033792

namespace A061725

/-- `Δ[A064365(n)]²+2` -/
def P7450740892713033792.Spec : Prop :=
  ∀ n, P7450740892713033792.a n = A061725 (n + 1)

end A061725

/-! ## A061725.P8422785562444308125

`Δ[A309222(n)]²+2`
-/

namespace A061725.P8422785562444308125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 2

end

end A061725.P8422785562444308125

namespace A061725

/-- `Δ[A309222(n)]²+2` -/
def P8422785562444308125.Spec : Prop :=
  ∀ n, P8422785562444308125.a n = A061725 (n + 1)

end A061725

/-! ## A061725.P7706098942514105902

`2+A000040(n+1)²`
-/

namespace A061725.P7706098942514105902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A000040 (n + 1) ^ 2

end

end A061725.P7706098942514105902

namespace A061725

/-- `2+A000040(n+1)²` -/
def P7706098942514105902.Spec : Prop :=
  ∀ n, P7706098942514105902.a n = A061725 (n + 1)

theorem P7706098942514105902.correct : P7706098942514105902.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P7706098942514105902.a, A061725.P14287202309027882808.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P428514843875772947

`A079704(n+1)/2+2`
-/

namespace A061725.P428514843875772947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) / 2 + 2

end

end A061725.P428514843875772947

namespace A061725

/-- `A079704(n+1)/2+2` -/
def P428514843875772947.Spec : Prop :=
  ∀ n, P428514843875772947.a n = (A061725 (n + 1) : ℚ)

theorem P428514843875772947.correct : P428514843875772947.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P428514843875772947.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A079704, A079704.P11944309894507862632.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P12444354789191901697

`A079705(n+1)/3+2`
-/

namespace A061725.P12444354789191901697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079705 (n + 1) : ℚ) / 3 + 2

end

end A061725.P12444354789191901697

namespace A061725

/-- `A079705(n+1)/3+2` -/
def P12444354789191901697.Spec : Prop :=
  ∀ n, P12444354789191901697.a n = (A061725 (n + 1) : ℚ)

theorem P12444354789191901697.correct : P12444354789191901697.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P12444354789191901697.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A079705, A079705.P5346247359754052354.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P13368857707458053276

`A069262(n+1)/4+2`
-/

namespace A061725.P13368857707458053276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069262 (n + 1) : ℚ) / 4 + 2

end

end A061725.P13368857707458053276

namespace A061725

/-- `A069262(n+1)/4+2` -/
def P13368857707458053276.Spec : Prop :=
  ∀ n, P13368857707458053276.a n = (A061725 (n + 1) : ℚ)

theorem P13368857707458053276.correct : P13368857707458053276.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P13368857707458053276.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A069262, A069262.P10024290030674562984.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P6677118898178086655

`(A179262(n+1)+5)/2`
-/

namespace A061725.P6677118898178086655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179262 (n + 1) + 5 : ℚ) / 2

end

end A061725.P6677118898178086655

namespace A061725

/-- `(A179262(n+1)+5)/2` -/
def P6677118898178086655.Spec : Prop :=
  ∀ n, P6677118898178086655.a n = (A061725 (n + 1) : ℚ)

theorem P6677118898178086655.correct : P6677118898178086655.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P6677118898178086655.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A179262, A179262.P16510143958199183968.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A079704, A079704.P11944309894507862632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-! ## A061725.P7066323509617118732

`A182174(n+1)+3+n`
-/

namespace A061725.P7066323509617118732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) + 3 + (n : ℤ)

end

end A061725.P7066323509617118732

namespace A061725

/-- `A182174(n+1)+3+n` -/
def P7066323509617118732.Spec : Prop :=
  ∀ n, P7066323509617118732.a n = A061725 (n + 1)

theorem P7066323509617118732.correct : P7066323509617118732.Spec := by
  intro n
  simp only [A061725, Nat.add_sub_cancel, A061725.P7066323509617118732.a, A061725.P14287202309027882808.a, A001248, A001248.P16278241061688229202.a, A182174, A182174.P17683556818926357754.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061725

/-!
# A061726: If n-th triangular number (A000217(n)) is odd, multiply it by 4; if even, multiply it by 5.

The programs for A061726, the canonical program `A061726.P9246901060818929905` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061726 has offset 1).

The definition of A061726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061726.P9246901060818929905

`(gcd(2, ∑[n+1])+3)*∑[n+1]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061726

/-- `(gcd(2, ∑[n+1])+3)*∑[n+1]` -/
def P9246901060818929905.Spec : Prop :=
  ∀ n, (P9246901060818929905.a n : ℤ) = A061726 (n + 1)

theorem P9246901060818929905.correct : P9246901060818929905.Spec := by
  intro n
  simp only [A061726, Nat.add_sub_cancel]

end A061726

/-! ## A061726.P2767049360262072386

`(5-∑[n+1]%2)*∑[n+1]`
-/

namespace A061726.P2767049360262072386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A061726.P2767049360262072386

namespace A061726

/-- `(5-∑[n+1]%2)*∑[n+1]` -/
def P2767049360262072386.Spec : Prop :=
  ∀ n, P2767049360262072386.a n = A061726 (n + 1)

end A061726

/-! ## A061726.P9119880401152891598

`(5-char[A042948(n)])*∑[n+1]`
-/

namespace A061726.P9119880401152891598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A061726.P9119880401152891598

namespace A061726

/-- `(5-char[A042948(n)])*∑[n+1]` -/
def P9119880401152891598.Spec : Prop :=
  ∀ n, P9119880401152891598.a n = A061726 (n + 1)

end A061726

/-! ## A061726.P12679540158853566856

`(Δ[A047237(n+1)]+3)*∑[n+1]`
-/

namespace A061726.P12679540158853566856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 3) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A061726.P12679540158853566856

namespace A061726

/-- `(Δ[A047237(n+1)]+3)*∑[n+1]` -/
def P12679540158853566856.Spec : Prop :=
  ∀ n, P12679540158853566856.a n = A061726 (n + 1)

end A061726

/-! ## A061726.P14793951591701726525

`(Δ[A004524(n)]+4)*∑[n+1]`
-/

namespace A061726.P14793951591701726525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 4) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A061726.P14793951591701726525

namespace A061726

/-- `(Δ[A004524(n)]+4)*∑[n+1]` -/
def P14793951591701726525.Spec : Prop :=
  ∀ n, P14793951591701726525.a n = A061726 (n + 1)

end A061726

/-! ## A061726.P11306841233346202908

`A028896(n+1)-lcm(2, ∑[n+1])`
-/

namespace A061726.P11306841233346202908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (n + 1) - (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A061726.P11306841233346202908

namespace A061726

/-- `A028896(n+1)-lcm(2, ∑[n+1])` -/
def P11306841233346202908.Spec : Prop :=
  ∀ n, P11306841233346202908.a n = A061726 (n + 1)

end A061726

/-! ## A061726.P2893004877283371789

`A000217(n+1)+A257942(n)+A002378(n+1)`
-/

namespace A061726.P2893004877283371789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A257942 n + A002378 (n + 1))

end

end A061726.P2893004877283371789

namespace A061726

/-- `A000217(n+1)+A257942(n)+A002378(n+1)` -/
def P2893004877283371789.Spec : Prop :=
  ∀ n, P2893004877283371789.a n = A061726 (n + 1)

end A061726

/-! ## A061726.P11951860037581562732

`A061727(2*(n+1))`
-/

namespace A061726.P11951860037581562732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061727 (2 * (n + 1))

end

end A061726.P11951860037581562732

namespace A061726

/-- `A061727(2*(n+1))` -/
def P11951860037581562732.Spec : Prop :=
  ∀ n, P11951860037581562732.a n = A061726 (n + 1)

end A061726

/-! ## A061726.P8194850689156845462

`2*A184418(∑[n+1])`
-/

namespace A061726.P8194850689156845462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184418 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061726.P8194850689156845462

namespace A061726

/-- `2*A184418(∑[n+1])` -/
def P8194850689156845462.Spec : Prop :=
  ∀ n, P8194850689156845462.a n = A061726 (n + 1)

end A061726

/-!
# A061727: A000217 interleaved with A061726.

The programs for A061727, there is no canonical definition to state claims against.
-/

/-! ## A061727.P361388225511672138

`A008805(n)*A181935(Δ[n^4])`
-/

namespace A061727.P361388225511672138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n * A181935 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061727.P361388225511672138

/-!
# A061728: Start with (a, b) = (2, 4). The next pair (a', b') is ((b + 1) mod 10, (a + 1) mod 10) where (a, b) is the previous pair.

The programs for A061728, there is no canonical definition to state claims against.
-/

/-! ## A061728.P18219859868003545635

`A169931(a(n-4))` with `a(0)=2, a(1)=4, a(2)=5, a(3)=3`
-/

namespace A061728.P18219859868003545635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5, 3] fun n a =>
  A169931 (a (n - 4)).toNat

end

end A061728.P18219859868003545635

/-!
# A061729: Start with 0; to get next term reverse digits and add 1 to each digit (9's get replaced by 10's).

The programs for A061729, there is no canonical definition to state claims against.
-/

/-! ## A061729.P17725089663578471858

`∩[A164836(n+1), A292439(n+1)]`
-/

namespace A061729.P17725089663578471858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061729.P17725089663578471858

/-! ## A061729.P5965910725362682189

`eq[A019430(A070565(n)), A151950(n)]`
-/

namespace A061729.P5965910725362682189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061729.P5965910725362682189

/-! ## A061729.P16171035937592910428

`eq[A062157(A054899(n)), A151950(n)]`
-/

namespace A061729.P16171035937592910428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A054899 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061729.P16171035937592910428

/-! ## A061729.P15759431935363518302

`eq[A062157(A059995(n)), A151950(n)]`
-/

namespace A061729.P15759431935363518302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A059995 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061729.P15759431935363518302

/-! ## A061729.P2659401615472060306

`eq[A062157(A066568(n)), A151950(n)]`
-/

namespace A061729.P2659401615472060306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061729.P2659401615472060306

/-!
# A061742: a(n) is the square of the product of first n primes.

The programs for A061742, there is no canonical definition to state claims against.
-/

/-! ## A061742.P8710453384343311772

`∏[eq[n, ∏{d}[n, #]]]²`
-/

namespace A061742.P8710453384343311772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061742.P8710453384343311772

/-! ## A061742.P5976758151131981623

`∏[eq[n, ∏{d}[n, #]]]^2`
-/

namespace A061742.P5976758151131981623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061742.P5976758151131981623

/-! ## A061742.P3130739700299100537

`∏[record[gcd(n+1, ∑{p}[n+1, #])²]]`
-/

namespace A061742.P3130739700299100537
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ p ∈ Nat.primeFactors (f3 n), p) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A061742.P3130739700299100537

/-! ## A061742.P464025018139116993

`∏[lt[∏{e}[n+1, #+1], 3]+1]²`
-/

namespace A061742.P464025018139116993
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061742.P464025018139116993

/-! ## A061742.P10629178810046475244

`(∏[p?[n-(-1)^n]]/p?[n-(-1)^n])²`
-/

namespace A061742.P10629178810046475244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) : ℚ)) ^ 2

end

end A061742.P10629178810046475244

/-!
# A061743: Numbers k such that k! is divisible by (k+1)^2.

The programs for A061743, the canonical program `A061743.P7478007087588602543` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061743 has offset 1).

The definition of A061743 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264828, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061743.P7478007087588602543

`A264828(n+4)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A061743

/-- `A264828(n+4)-1` -/
def P7478007087588602543.Spec : Prop :=
  ∀ n, P7478007087588602543.a n = A061743 (n + 1)

theorem P7478007087588602543.correct : P7478007087588602543.Spec := by
  intro n
  simp only [A061743, Nat.add_sub_cancel]

end A061743

/-! ## A061743.P2167326001884509773

`A061837(n+1)+1`
-/

namespace A061743.P2167326001884509773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061837 (n + 1) + 1

end

end A061743.P2167326001884509773

namespace A061743

/-- `A061837(n+1)+1` -/
def P2167326001884509773.Spec : Prop :=
  ∀ n, P2167326001884509773.a n = A061743 (n + 1)

end A061743

/-! ## A061743.P5996509679303937350

`lt[2, A319700(n+1)]`
-/

namespace A061743.P5996509679303937350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061743.P5996509679303937350

namespace A061743

/-- `lt[2, A319700(n+1)]` -/
def P5996509679303937350.Spec : Prop :=
  ∀ n, (P5996509679303937350.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P4604613461008069322

`lt[3, A319699(n+1)]`
-/

namespace A061743.P4604613461008069322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061743.P4604613461008069322

namespace A061743

/-- `lt[3, A319699(n+1)]` -/
def P4604613461008069322.Spec : Prop :=
  ∀ n, (P4604613461008069322.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P4126027299856315021

`lt[4, A319703(n+1)]`
-/

namespace A061743.P4126027299856315021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061743.P4126027299856315021

namespace A061743

/-- `lt[4, A319703(n+1)]` -/
def P4126027299856315021.Spec : Prop :=
  ∀ n, (P4126027299856315021.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P12086391830294582824

`lt[7, A319347(n+1)]`
-/

namespace A061743.P12086391830294582824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061743.P12086391830294582824

namespace A061743

/-- `lt[7, A319347(n+1)]` -/
def P12086391830294582824.Spec : Prop :=
  ∀ n, (P12086391830294582824.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P17911992925824579932

`lt[2, A296955(n+1)-2]`
-/

namespace A061743.P17911992925824579932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061743.P17911992925824579932

namespace A061743

/-- `lt[2, A296955(n+1)-2]` -/
def P17911992925824579932.Spec : Prop :=
  ∀ n, (P17911992925824579932.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P1185934403345248641

`lt[2*A006530(n+1)+3, n]`
-/

namespace A061743.P1185934403345248641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A061743.P1185934403345248641

namespace A061743

/-- `lt[2*A006530(n+1)+3, n]` -/
def P1185934403345248641.Spec : Prop :=
  ∀ n, (P1185934403345248641.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P1893248572567893656

`lt[2, (n-2)/A006530(n+2)]+1`
-/

namespace A061743.P1893248572567893656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (A006530 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A061743.P1893248572567893656

namespace A061743

/-- `lt[2, (n-2)/A006530(n+2)]+1` -/
def P1893248572567893656.Spec : Prop :=
  ∀ n, (P1893248572567893656.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P6128130444724568983

`lt[1, A072480(A072480(n+1))]`
-/

namespace A061743.P6128130444724568983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A072480 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061743.P6128130444724568983

namespace A061743

/-- `lt[1, A072480(A072480(n+1))]` -/
def P6128130444724568983.Spec : Prop :=
  ∀ n, (P6128130444724568983.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P13131005574015843609

`lt[A155085(A006530(n+1))+2, n]`
-/

namespace A061743.P13131005574015843609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (A006530 (n + 1)).toNat + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A061743.P13131005574015843609

namespace A061743

/-- `lt[A155085(A006530(n+1))+2, n]` -/
def P13131005574015843609.Spec : Prop :=
  ∀ n, (P13131005574015843609.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P17428379034123098983

`lt[A001414(n+1)+A006530(n+1), n]`
-/

namespace A061743.P17428379034123098983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A061743.P17428379034123098983

namespace A061743

/-- `lt[A001414(n+1)+A006530(n+1), n]` -/
def P17428379034123098983.Spec : Prop :=
  ∀ n, (P17428379034123098983.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P11717788604982412115

`A254671(n+2)`
-/

namespace A061743.P11717788604982412115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254671 (n + 2)

end

end A061743.P11717788604982412115

namespace A061743

/-- `A254671(n+2)` -/
def P11717788604982412115.Spec : Prop :=
  ∀ n, P11717788604982412115.a n = A061743 (n + 1)

end A061743

/-! ## A061743.P7140435884611956124

`A009188(n+2)-1`
-/

namespace A061743.P7140435884611956124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 2) - 1

end

end A061743.P7140435884611956124

namespace A061743

/-- `A009188(n+2)-1` -/
def P7140435884611956124.Spec : Prop :=
  ∀ n, P7140435884611956124.a n = A061743 (n + 1)

theorem P7140435884611956124.correct : P7140435884611956124.Spec := by
  intro n
  simp only [A061743, Nat.add_sub_cancel, A061743.P7140435884611956124.a, A061743.P7478007087588602543.a, A009188, A009188.P3584305010006713789.a, A264828, A264828.P8600560789045602649.f1, A264828.P8600560789045602649.a, A001751, A001751.P12650919447307229598.f1, A001751.P12650919447307229598.a, A006530, A006530.P13372528560459906635.a, A010051, A010051.P15078252821583414300.a, A070229, A070229.P5792893597916963980.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A061743

/-! ## A061743.P1897845989816740630

`lt[2, A307828(n+1)]`
-/

namespace A061743.P1897845989816740630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061743.P1897845989816740630

namespace A061743

/-- `lt[2, A307828(n+1)]` -/
def P1897845989816740630.Spec : Prop :=
  ∀ n, (P1897845989816740630.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P9582644826787485570

`A020725(A061837(n+1))`
-/

namespace A061743.P9582644826787485570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A061837 (n + 1)).toNat

end

end A061743.P9582644826787485570

namespace A061743

/-- `A020725(A061837(n+1))` -/
def P9582644826787485570.Spec : Prop :=
  ∀ n, P9582644826787485570.a n = A061743 (n + 1)

end A061743

/-! ## A061743.P18398429222457814866

`lt[A006530(n+1)+2, A049474(A049474(n))]`
-/

namespace A061743.P18398429222457814866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A049474 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061743.P18398429222457814866

namespace A061743

/-- `lt[A006530(n+1)+2, A049474(A049474(n))]` -/
def P18398429222457814866.Spec : Prop :=
  ∀ n, (P18398429222457814866.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P15571265640001164654

`eq[1, A301316(n+1)]`
-/

namespace A061743.P15571265640001164654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061743.P15571265640001164654

namespace A061743

/-- `eq[1, A301316(n+1)]` -/
def P15571265640001164654.Spec : Prop :=
  ∀ n, (P15571265640001164654.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P4274057468489611598

`lt[2, A011776(n+1)]`
-/

namespace A061743.P4274057468489611598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061743.P4274057468489611598

namespace A061743

/-- `lt[2, A011776(n+1)]` -/
def P4274057468489611598.Spec : Prop :=
  ∀ n, (P4274057468489611598.a n : ℤ) = A061743 (n + 1)

end A061743

/-! ## A061743.P1894834282353861557

`lt[11, A297792(n+1)]`
-/

namespace A061743.P1894834282353861557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297792 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061743.P1894834282353861557

namespace A061743

/-- `lt[11, A297792(n+1)]` -/
def P1894834282353861557.Spec : Prop :=
  ∀ n, (P1894834282353861557.a n : ℤ) = A061743 (n + 1)

end A061743

/-!
# A061744: a(n) = (2^A000959(n)) - 1.

The programs for A061744, there is no canonical definition to state claims against.
-/

/-! ## A061744.P12493702534985230616

`2^A000959(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061744.P12493702534985230616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000959 (n + 1) : ℤ) - 1

end

end A061744.P12493702534985230616

/-! ## A061744.P14918558978503825679

`2^sqrt(A032598(n+1))-1`
-/

namespace A061744.P14918558978503825679
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A032598 (n + 1) : ℝ)) - 1

end

end A061744.P14918558978503825679

/-! ## A061744.P12236279585171642985

`2^A255545(∑[n+1])-1`
-/

namespace A061744.P12236279585171642985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A255545 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A061744.P12236279585171642985

/-! ## A061744.P14538304584076424257

`2^(A139269(n+1)/2)-1`
-/

namespace A061744.P14538304584076424257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A139269 (n + 1) : ℚ) / 2 : ℝ) - 1

end

end A061744.P14538304584076424257

/-! ## A061744.P15630064666361377169

`record[∑[2^n]*A145649(n+1)]`
-/

namespace A061744.P15630064666361377169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061744.P15630064666361377169

/-! ## A061744.P4402551178642766623

`A000225(A000959(n+1))`
-/

namespace A061744.P4402551178642766623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000959 (n + 1)).toNat

end

end A061744.P4402551178642766623

/-! ## A061744.P13203732087371554765

`A243071(A032605(n+1))`
-/

namespace A061744.P13203732087371554765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A032605 (n + 1)).toNat

end

end A061744.P13203732087371554765

/-! ## A061744.P6531213334181117607

`A387325(A139269(n+1))`
-/

namespace A061744.P6531213334181117607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 (A139269 (n + 1)).toNat

end

end A061744.P6531213334181117607

/-! ## A061744.P18054412194817135160

`A282413(A000959(n+1)-1)`
-/

namespace A061744.P18054412194817135160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282413 (A000959 (n + 1) - 1).toNat

end

end A061744.P18054412194817135160

/-! ## A061744.P2701449708414374460

`A000225(A139269(n+1)/2)`
-/

namespace A061744.P2701449708414374460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 2)).toNat

end

end A061744.P2701449708414374460

/-!
# A061746: a(0) = 1; a(n) is obtained by incrementing each digit of a(n-1) by 7.

The programs for A061746, there is no canonical definition to state claims against.
-/

/-! ## A061746.P17157308490120243624

`A061522(gcd(7*n, (2*n)²))+1`
-/

namespace A061746.P17157308490120243624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061522 (Nat.gcd (7 * n) ((2 * n) ^ 2)) + 1

end

end A061746.P17157308490120243624

/-! ## A061746.P14406089839063620785

`A061522(A024640(n))+1`
-/

namespace A061746.P14406089839063620785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061522 (A024640 n).toNat + 1

end

end A061746.P14406089839063620785

/-! ## A061746.P3103017917475250480

`A061522(A024641(n))+1`
-/

namespace A061746.P3103017917475250480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061522 (A024641 n).toNat + 1

end

end A061746.P3103017917475250480

/-!
# A061747: a(0) = 0; a(n) is obtained by incrementing each digit of a(n-1) by 8.

The programs for A061747, there is no canonical definition to state claims against.
-/

/-! ## A061747.P1193272402511462125

`A061748(n)-1`
-/

namespace A061747.P1193272402511462125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061748 n - 1

end

end A061747.P1193272402511462125

/-! ## A061747.P18023096312901944005

`xor(1, A061748(A061511(n)))`
-/

namespace A061747.P18023096312901944005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A061748 (A061511 n).toNat)

end

end A061747.P18023096312901944005

/-! ## A061747.P8815368000236626545

`xor(1, A061748(A062399(n)))`
-/

namespace A061747.P8815368000236626545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A061748 (A062399 n).toNat)

end

end A061747.P8815368000236626545

/-! ## A061747.P4444415951772545273

`xor(1, A061748(A158699(n)))`
-/

namespace A061747.P4444415951772545273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A061748 (A158699 n).toNat)

end

end A061747.P4444415951772545273

/-! ## A061747.P16712697424250403324

`xor(abs(A033999(n)), A061748(n))`
-/

namespace A061747.P16712697424250403324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A033999 n| (A061748 n)

end

end A061747.P16712697424250403324

/-!
# A061748: a(0) = 1; a(n) is obtained by incrementing each digit of a(n-1) by 8.

The programs for A061748, there is no canonical definition to state claims against.
-/

/-! ## A061748.P10366470445192443107

`A061747(n)+1`
-/

namespace A061748.P10366470445192443107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061747 n + 1

end

end A061748.P10366470445192443107

/-! ## A061748.P16476739351170488065

`or(1, A061747(A061511(n)))`
-/

namespace A061748.P16476739351170488065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A061747 (A061511 n).toNat)

end

end A061748.P16476739351170488065

/-! ## A061748.P983655895392182436

`xor(1, A061747(A062399(n)))`
-/

namespace A061748.P983655895392182436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A061747 (A062399 n).toNat)

end

end A061748.P983655895392182436

/-! ## A061748.P6578476594188502553

`or(A185284(n)!, A061747(n))`
-/

namespace A061748.P6578476594188502553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A185284 n).toNat : ℤ) (A061747 n)

end

end A061748.P6578476594188502553

/-! ## A061748.P9969141032748458022

`xor(A004197(n)!, A061747(n))`
-/

namespace A061748.P9969141032748458022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A004197 n).toNat : ℤ) (A061747 n)

end

end A061748.P9969141032748458022

/-!
# A061750: a(0) = 0; a(n) is obtained by incrementing each digit of a(n-1) by 9.

The programs for A061750, there is no canonical definition to state claims against.
-/

/-! ## A061750.P6552737282319439066

`Δ[A061749(n)]%A061749(n)`
-/

namespace A061750.P6552737282319439066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A061749 n)

end

end A061750.P6552737282319439066

/-! ## A061750.P8380879181005293853

`A061749(A061805(n+1))%A061749(n)`
-/

namespace A061750.P8380879181005293853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061749 (A061805 (n + 1)).toNat) (A061749 n)

end

end A061750.P8380879181005293853

/-!
# A061751: Numbers k such that k! is divisible by (k+1)^3.

The programs for A061751, the canonical program `A061751.P3051654264705780643` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061751 has offset 1).

The definition of A061751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061751.P13563025994822475261

`A061838(n+1)+2`
-/

namespace A061751.P13563025994822475261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061838 (n + 1) + 2

end

end A061751.P13563025994822475261

namespace A061751

/-- `A061838(n+1)+2` -/
def P13563025994822475261.Spec : Prop :=
  ∀ n, P13563025994822475261.a n = A061751 (n + 1)

theorem P13563025994822475261.correct : P13563025994822475261.Spec := by
  intro n
  simp only [A061751, Nat.add_sub_cancel, A061751.P13563025994822475261.a, A061751.P3051654264705780643.a, A061838, A061838.P10671917777384719382.a, A271345, A271345.P10207795648301136136.f1, A271345.P10207795648301136136.f2, A271345.P10207795648301136136.a, A301317, A301317.P11984798882409133037.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061751

/-! ## A061751.P3051654264705780643

`A271345(n+2)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061751

/-- `A271345(n+2)-1` -/
def P3051654264705780643.Spec : Prop :=
  ∀ n, P3051654264705780643.a n = A061751 (n + 1)

theorem P3051654264705780643.correct : P3051654264705780643.Spec := by
  intro n
  simp only [A061751, Nat.add_sub_cancel]

end A061751

/-! ## A061751.P11162225352327043846

`∑[abs(Δ[A271345(n+1)])]`
-/

namespace A061751.P11162225352327043846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061751.P11162225352327043846

namespace A061751

/-- `∑[abs(Δ[A271345(n+1)])]` -/
def P11162225352327043846.Spec : Prop :=
  ∀ n, P11162225352327043846.a n = A061751 (n + 1)

end A061751

/-! ## A061751.P1417077878560614056

`∑[A055648(Δ[A271345(n+1)])]`
-/

namespace A061751.P1417077878560614056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055648 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061751.P1417077878560614056

namespace A061751

/-- `∑[A055648(Δ[A271345(n+1)])]` -/
def P1417077878560614056.Spec : Prop :=
  ∀ n, P1417077878560614056.a n = A061751 (n + 1)

end A061751

/-! ## A061751.P5204198403273147068

`∑[A057846(Δ[A271345(n+1)])]`
-/

namespace A061751.P5204198403273147068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061751.P5204198403273147068

namespace A061751

/-- `∑[A057846(Δ[A271345(n+1)])]` -/
def P5204198403273147068.Spec : Prop :=
  ∀ n, P5204198403273147068.a n = A061751 (n + 1)

end A061751

/-! ## A061751.P385781042678396364

`∑[A080197(Δ[A271345(n+1)])]`
-/

namespace A061751.P385781042678396364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061751.P385781042678396364

namespace A061751

/-- `∑[A080197(Δ[A271345(n+1)])]` -/
def P385781042678396364.Spec : Prop :=
  ∀ n, P385781042678396364.a n = A061751 (n + 1)

end A061751

/-! ## A061751.P974349558366377695

`∑[A146288(Δ[A271345(n+1)])]+2`
-/

namespace A061751.P974349558366377695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A061751.P974349558366377695

namespace A061751

/-- `∑[A146288(Δ[A271345(n+1)])]+2` -/
def P974349558366377695.Spec : Prop :=
  ∀ n, P974349558366377695.a n = A061751 (n + 1)

end A061751

/-! ## A061751.P4107332596052940947

`∑[A333219(Δ[A271345(n+1)])]+2`
-/

namespace A061751.P4107332596052940947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A061751.P4107332596052940947

namespace A061751

/-- `∑[A333219(Δ[A271345(n+1)])]+2` -/
def P4107332596052940947.Spec : Prop :=
  ∀ n, P4107332596052940947.a n = A061751 (n + 1)

end A061751

/-! ## A061751.P16811750784687495631

`A009056(A061838(n+1))`
-/

namespace A061751.P16811750784687495631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A061838 (n + 1)).toNat

end

end A061751.P16811750784687495631

namespace A061751

/-- `A009056(A061838(n+1))` -/
def P16811750784687495631.Spec : Prop :=
  ∀ n, P16811750784687495631.a n = A061751 (n + 1)

end A061751

/-! ## A061751.P3725922457910583482

`eq[1, A301317(n+1)]`
-/

namespace A061751.P3725922457910583482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061751.P3725922457910583482

namespace A061751

/-- `eq[1, A301317(n+1)]` -/
def P3725922457910583482.Spec : Prop :=
  ∀ n, (P3725922457910583482.a n : ℤ) = A061751 (n + 1)

end A061751

/-! ## A061751.P11370265582722509694

`lt[1, A011776(n+1)-2]`
-/

namespace A061751.P11370265582722509694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061751.P11370265582722509694

namespace A061751

/-- `lt[1, A011776(n+1)-2]` -/
def P11370265582722509694.Spec : Prop :=
  ∀ n, (P11370265582722509694.a n : ℤ) = A061751 (n + 1)

end A061751

/-! ## A061751.P13562908015529383711

`eq[1, A130543(A011776(n+1))]`
-/

namespace A061751.P13562908015529383711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061751.P13562908015529383711

namespace A061751

/-- `eq[1, A130543(A011776(n+1))]` -/
def P13562908015529383711.Spec : Prop :=
  ∀ n, (P13562908015529383711.a n : ℤ) = A061751 (n + 1)

end A061751

/-! ## A061751.P7573224529219639094

`lt[A301317(n+1), A301336(n)]`
-/

namespace A061751.P7573224529219639094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061751.P7573224529219639094

namespace A061751

/-- `lt[A301317(n+1), A301336(n)]` -/
def P7573224529219639094.Spec : Prop :=
  ∀ n, (P7573224529219639094.a n : ℤ) = A061751 (n + 1)

end A061751

/-! ## A061751.P1067354019497099572

`eq[1, A008461(A011776(n+1)+2)]`
-/

namespace A061751.P1067354019497099572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (A011776 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061751.P1067354019497099572

namespace A061751

/-- `eq[1, A008461(A011776(n+1)+2)]` -/
def P1067354019497099572.Spec : Prop :=
  ∀ n, (P1067354019497099572.a n : ℤ) = A061751 (n + 1)

end A061751

/-! ## A061751.P16705092358049785204

`eq[1, A112667(2*A011776(n+1))]`
-/

namespace A061751.P16705092358049785204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112667 (2 * A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061751.P16705092358049785204

namespace A061751

/-- `eq[1, A112667(2*A011776(n+1))]` -/
def P16705092358049785204.Spec : Prop :=
  ∀ n, (P16705092358049785204.a n : ℤ) = A061751 (n + 1)

end A061751

/-! ## A061751.P16736646784865180474

`eq[A000038(n), A226797(A011776(n+1)+2)]`
-/

namespace A061751.P16736646784865180474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226797 (A011776 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061751.P16736646784865180474

namespace A061751

/-- `eq[A000038(n), A226797(A011776(n+1)+2)]` -/
def P16736646784865180474.Spec : Prop :=
  ∀ n, (P16736646784865180474.a n : ℤ) = A061751 (n + 1)

end A061751

/-! ## A061751.P17631200847737366196

`eq[A000007(n), A045534(2*A011776(n+1))]`
-/

namespace A061751.P17631200847737366196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (2 * A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061751.P17631200847737366196

namespace A061751

/-- `eq[A000007(n), A045534(2*A011776(n+1))]` -/
def P17631200847737366196.Spec : Prop :=
  ∀ n, (P17631200847737366196.a n : ℤ) = A061751 (n + 1)

end A061751

/-! ## A061751.P16118746354087221561

`eq[A000038(n), A045534(2*A011776(n+1))]`
-/

namespace A061751.P16118746354087221561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (2 * A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061751.P16118746354087221561

namespace A061751

/-- `eq[A000038(n), A045534(2*A011776(n+1))]` -/
def P16118746354087221561.Spec : Prop :=
  ∀ n, (P16118746354087221561.a n : ℤ) = A061751 (n + 1)

end A061751

/-! ## A061751.P17037381264040160368

`lt[A032741(2*A011776(n+1)), A011776(n+1)]`
-/

namespace A061751.P17037381264040160368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * A011776 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061751.P17037381264040160368

namespace A061751

/-- `lt[A032741(2*A011776(n+1)), A011776(n+1)]` -/
def P17037381264040160368.Spec : Prop :=
  ∀ n, (P17037381264040160368.a n : ℤ) = A061751 (n + 1)

end A061751

/-! ## A061751.P6497062287865939582

`A023443(A271345(n+2))`
-/

namespace A061751.P6497062287865939582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A271345 (n + 2)).toNat

end

end A061751.P6497062287865939582

namespace A061751

/-- `A023443(A271345(n+2))` -/
def P6497062287865939582.Spec : Prop :=
  ∀ n, P6497062287865939582.a n = A061751 (n + 1)

end A061751

/-!
# A061752: Positive integers k such that k! is divisible by (k+1)^4.

The programs for A061752, there is no canonical definition to state claims against.
-/

/-! ## A061752.P17809423658474512270

`lt[4, A011776(n+1)]`
-/

namespace A061752.P17809423658474512270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061752.P17809423658474512270

/-! ## A061752.P16784955099776377929

`lt[4, A011776(A028310(n))]-1`
-/

namespace A061752.P16784955099776377929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A061752.P16784955099776377929

/-! ## A061752.P12765084023781280781

`eq[1, A008461(A011776(n+1)+1)]`
-/

namespace A061752.P12765084023781280781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (A011776 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061752.P12765084023781280781

/-! ## A061752.P12843011083265539702

`eq[1, A112667(A011776(n+1)+2)]`
-/

namespace A061752.P12843011083265539702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112667 (A011776 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061752.P12843011083265539702

/-! ## A061752.P15933073854012672476

`eq[1, A130543(A011776(n+1)-1)]`
-/

namespace A061752.P15933073854012672476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 (A011776 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061752.P15933073854012672476

/-! ## A061752.P15654203865656527550

`eq[round(2/A011776(n+1)), A000007(n)]`
-/

namespace A061752.P15654203865656527550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A011776 (n + 1) : ℚ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061752.P15654203865656527550

/-! ## A061752.P16013082923066766739

`eq[n, A047513(round(2/A011776(n+1))+1)+n]`
-/

namespace A061752.P16013082923066766739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (SequenceMachineLib.roundAway (2 / (A011776 (n + 1) : ℚ)) + 1).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061752.P16013082923066766739

/-! ## A061752.P10221076400931778158

`eq[A000038(n), A226797(A011776(n+1)+1)]`
-/

namespace A061752.P10221076400931778158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226797 (A011776 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061752.P10221076400931778158

/-! ## A061752.P10965723325878097173

`lt[A310905(A002034(n+1)), A087711(n)]`
-/

namespace A061752.P10965723325878097173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310905 (A002034 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061752.P10965723325878097173

/-! ## A061752.P702536959145346391

`lt[A059999(n+1), A060067(n+1)]`
-/

namespace A061752.P702536959145346391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061752.P702536959145346391

/-!
# A061753: Positive integers k such that k! is divisible by (k+1)^5.

The programs for A061753, there is no canonical definition to state claims against.
-/

/-! ## A061753.P2745561305127214877

`lt[5, A011776(n+1)]`
-/

namespace A061753.P2745561305127214877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061753.P2745561305127214877

/-! ## A061753.P5523513490358285557

`eq[1, A112667(A011776(n+1)+1)]`
-/

namespace A061753.P5523513490358285557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112667 (A011776 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061753.P5523513490358285557

/-! ## A061753.P4851483912489614144

`eq[A008461(A011776(n+1)), A054977(n)]`
-/

namespace A061753.P4851483912489614144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (A011776 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061753.P4851483912489614144

/-! ## A061753.P17721707213154873817

`eq[A008461(A011776(n+1)), A060576(n)]`
-/

namespace A061753.P17721707213154873817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (A011776 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061753.P17721707213154873817

/-! ## A061753.P11010116217996149439

`eq[A008461(A011776(n+1)), A130543(n)]`
-/

namespace A061753.P11010116217996149439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (A011776 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061753.P11010116217996149439

/-! ## A061753.P4542332717881926122

`eq[A000038(n), A226797(A011776(n+1))]`
-/

namespace A061753.P4542332717881926122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226797 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061753.P4542332717881926122

/-! ## A061753.P17623472161649708379

`eq[A000007(n), A045534(A011776(n+1)+2)]`
-/

namespace A061753.P17623472161649708379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A011776 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061753.P17623472161649708379

/-! ## A061753.P17024920613151547796

`eq[A000038(n), A045534(A011776(n+1)+2)]`
-/

namespace A061753.P17024920613151547796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A011776 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061753.P17024920613151547796

/-! ## A061753.P7970604040847190294

`eq[A226797(A011776(n+1))², A226797(n+1)]`
-/

namespace A061753.P7970604040847190294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226797 (A011776 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226797 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061753.P7970604040847190294

/-! ## A061753.P12232871436842260386

`eq[1, A301317(A011776(n+1)²)]`
-/

namespace A061753.P12232871436842260386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (A011776 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061753.P12232871436842260386

/-! ## A061753.P986770515587507155

`eq[A248771(n+1)%(n+1), A000007(n)]`
-/

namespace A061753.P986770515587507155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248771 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061753.P986770515587507155

/-!
# A061754: Numbers k such that k! is divisible by (k+1)^6.

The programs for A061754, there is no canonical definition to state claims against.
-/

/-! ## A061754.P16410649202406923958

`lt[6, A011776(n+1)]`
-/

namespace A061754.P16410649202406923958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061754.P16410649202406923958

/-! ## A061754.P6886157911306912694

`eq[A054977(n), A112667(A011776(n+1))]`
-/

namespace A061754.P6886157911306912694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112667 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061754.P6886157911306912694

/-! ## A061754.P13044966575439070299

`eq[A057427(n), A112667(A011776(n+1))]`
-/

namespace A061754.P13044966575439070299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112667 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061754.P13044966575439070299

/-! ## A061754.P4968264291660644647

`eq[A060576(n), A112667(A011776(n+1))]`
-/

namespace A061754.P4968264291660644647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112667 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061754.P4968264291660644647

/-! ## A061754.P5513890693680391775

`eq[A112667(A011776(n+1)), A130543(n)]`
-/

namespace A061754.P5513890693680391775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112667 (A011776 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061754.P5513890693680391775

/-! ## A061754.P2734004052989114408

`eq[A112667(A011776(n+1)), A141044(n)]`
-/

namespace A061754.P2734004052989114408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112667 (A011776 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061754.P2734004052989114408

/-! ## A061754.P16039208442946775360

`eq[A112667(A011776(n+1)), A157928(n)]`
-/

namespace A061754.P16039208442946775360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112667 (A011776 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061754.P16039208442946775360

/-! ## A061754.P8109848947138191706

`eq[A000007(n), A045534(A011776(n+1)+1)]`
-/

namespace A061754.P8109848947138191706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A011776 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061754.P8109848947138191706

/-! ## A061754.P4672291561788006914

`eq[A000038(n), A045534(A011776(n+1)+1)]`
-/

namespace A061754.P4672291561788006914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A011776 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061754.P4672291561788006914

/-! ## A061754.P4764736432986645359

`eq[A112667(A011776(n+1)), A308626(n+1)]`
-/

namespace A061754.P4764736432986645359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112667 (A011776 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061754.P4764736432986645359

/-! ## A061754.P15071990384928166241

`eq[A248774(n+1)%(n+1), A000007(n)]`
-/

namespace A061754.P15071990384928166241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248774 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061754.P15071990384928166241

/-!
# A061755: Positive integers k such that k! is divisible by (k+1)^7.

The programs for A061755, there is no canonical definition to state claims against.
-/

/-! ## A061755.P8561875941056377486

`lt[7, A011776(n+1)]`
-/

namespace A061755.P8561875941056377486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061755.P8561875941056377486

/-! ## A061755.P186076674594771832

`lt[7, A011776(A028310(n))]-1`
-/

namespace A061755.P186076674594771832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A061755.P186076674594771832

/-! ## A061755.P9513300880359228015

`lt[2*A093896(n+1), A065033(n)²]`
-/

namespace A061755.P9513300880359228015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061755.P9513300880359228015

/-! ## A061755.P9879977335427722767

`eq[A000007(n), A045534(A011776(n+1))]`
-/

namespace A061755.P9879977335427722767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061755.P9879977335427722767

/-! ## A061755.P13093912084868632063

`eq[A000038(n), A045534(A011776(n+1))]`
-/

namespace A061755.P13093912084868632063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061755.P13093912084868632063

/-! ## A061755.P2413802857952077971

`eq[A045534(n)², A045534(A011776(n+1))]`
-/

namespace A061755.P2413802857952077971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061755.P2413802857952077971

/-! ## A061755.P8302778048246120882

`eq[A045534(A011776(n+1))+1, A057427(n)]`
-/

namespace A061755.P8302778048246120882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A011776 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061755.P8302778048246120882

/-! ## A061755.P8742523397943642440

`eq[A028310(n)-n, A045534(A011776(n+1))]`
-/

namespace A061755.P8742523397943642440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061755.P8742523397943642440

/-! ## A061755.P7239328698403743237

`lt[A093896(2*(n+1))/A065033(n+1), A065033(n+1)]`
-/

namespace A061755.P7239328698403743237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093896 (2 * (n + 1)) : ℚ) / (A065033 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A061755.P7239328698403743237

/-!
# A061756: Positive integers k such that k! is divisible by (k+1)^8.

The programs for A061756, there is no canonical definition to state claims against.
-/

/-! ## A061756.P9151469275741584292

`lt[8, A011776(n+1)]`
-/

namespace A061756.P9151469275741584292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061756.P9151469275741584292

/-! ## A061756.P4354834054587013900

`lt[8, A011776(A028310(n))]-1`
-/

namespace A061756.P4354834054587013900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A061756.P4354834054587013900

/-! ## A061756.P2208675670036423805

`eq[1, A053828(ceil(9/A011776(n+1)))]`
-/

namespace A061756.P2208675670036423805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 ⌈9 / (A011776 (n + 1) : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061756.P2208675670036423805

/-! ## A061756.P9245779791766922798

`eq[round(4/A011776(n+1)), A000007(n)]`
-/

namespace A061756.P9245779791766922798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / (A011776 (n + 1) : ℚ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061756.P9245779791766922798

/-! ## A061756.P11736575617168578156

`eq[1, A213549(round(4/A011776(n+1))+1)]`
-/

namespace A061756.P11736575617168578156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213549 (SequenceMachineLib.roundAway (4 / (A011776 (n + 1) : ℚ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061756.P11736575617168578156

/-! ## A061756.P9331945367857979932

`eq[A000038(n), A045534(A011776(n+1)-1)]`
-/

namespace A061756.P9331945367857979932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A011776 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061756.P9331945367857979932

/-!
# A061757: Positive integers k such that k! is divisible by (k+1)^9.

The programs for A061757, there is no canonical definition to state claims against.
-/

/-! ## A061757.P8799057894497958347

`lt[9, A011776(n+1)]`
-/

namespace A061757.P8799057894497958347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061757.P8799057894497958347

/-! ## A061757.P7831646600986235444

`lt[9, A011776(A028310(n))]-1`
-/

namespace A061757.P7831646600986235444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A061757.P7831646600986235444

/-! ## A061757.P5583856184122730186

`eq[1, A053828(ceil(10/A011776(n+1)))]`
-/

namespace A061757.P5583856184122730186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 ⌈10 / (A011776 (n + 1) : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061757.P5583856184122730186

/-! ## A061757.P7880828610390637768

`eq[1, A277543(C(9, A011776(n+1))+1)]`
-/

namespace A061757.P7880828610390637768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (Nat.choose 9 (A011776 (n + 1)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061757.P7880828610390637768

/-! ## A061757.P10621569364815383955

`eq[A036058(3*n+2), A036058(A011776(n+1))]`
-/

namespace A061757.P10621569364815383955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036058 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036058 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061757.P10621569364815383955

/-! ## A061757.P9886975248149633056

`lt[A060061(A005843(n+2)), A060067(n+1)]`
-/

namespace A061757.P9886975248149633056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060061 (A005843 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061757.P9886975248149633056

/-!
# A061758: Positive integers k such that k! is divisible by (k+1)^10.

The programs for A061758, there is no canonical definition to state claims against.
-/

/-! ## A061758.P8552025074382462687

`lt[10, A011776(n+1)]`
-/

namespace A061758.P8552025074382462687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061758.P8552025074382462687

/-! ## A061758.P12130456113189829128

`lt[10, A011776(A028310(n))]-1`
-/

namespace A061758.P12130456113189829128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A061758.P12130456113189829128

/-! ## A061758.P16755070100648186901

`eq[1, A000005(round(5/A011776(n+1))+1)]`
-/

namespace A061758.P16755070100648186901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (5 / (A011776 (n + 1) : ℚ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061758.P16755070100648186901

/-! ## A061758.P8478128222539207685

`eq[2, A000040(round(5/A011776(n+1))+1)]`
-/

namespace A061758.P8478128222539207685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (5 / (A011776 (n + 1) : ℚ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061758.P8478128222539207685

/-! ## A061758.P1780725089400387457

`eq[1, A260218(n+1)^A014658(A011776(n+1))]`
-/

namespace A061758.P1780725089400387457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260218 (n + 1) : ℚ) ^ (A014658 (A011776 (n + 1)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A061758.P1780725089400387457

/-! ## A061758.P11882578174438840455

`lt[A060062(n), A060067(n+1)]`
-/

namespace A061758.P11882578174438840455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061758.P11882578174438840455

/-! ## A061758.P1766360825801122989

`lt[A060060(n), sqrt(A060067(n+1))]`
-/

namespace A061758.P1766360825801122989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060060 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A060067 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A061758.P1766360825801122989

/-!
# A061759: Numbers k such that k! is divisible by (k+1)^11.

The programs for A061759, there is no canonical definition to state claims against.
-/

/-! ## A061759.P3626597611714278290

`lt[11, A011776(n+1)]`
-/

namespace A061759.P3626597611714278290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061759.P3626597611714278290

/-! ## A061759.P10008773493704370097

`lt[11, A011776(A028310(n))]-1`
-/

namespace A061759.P10008773493704370097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A061759.P10008773493704370097

/-! ## A061759.P423635474228066548

`lt[A090624(2*(n+1)), (n+1)/12]`
-/

namespace A061759.P423635474228066548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090624 (2 * (n + 1))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A061759.P423635474228066548

/-! ## A061759.P13959877363023629213

`lt[A223733(n+4), A083032(A143773(n+1))]`
-/

namespace A061759.P13959877363023629213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223733 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083032 (A143773 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061759.P13959877363023629213

/-! ## A061759.P876123077268133604

`record[A061758(A061295(3*n+2))]`
-/

namespace A061759.P876123077268133604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061758 (A061295 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061759.P876123077268133604

/-!
# A061760: Least multiple of n that is greater than n, not equal to a power of 10 times n and contains all the digits of n.

The programs for A061760, there is no canonical definition to state claims against.
-/

/-! ## A061760.P1124666556098211072

`A075617(A309631(n+1))`
-/

namespace A061760.P1124666556098211072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A309631 (n + 1)).toNat

end

end A061760.P1124666556098211072

/-! ## A061760.P5800061737697445854

`A056926(A309631(n+1)²)`
-/

namespace A061760.P5800061737697445854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A309631 (n + 1) ^ 2).toNat

end

end A061760.P5800061737697445854

/-! ## A061760.P4701762617058328848

`A233583(A309631(n+1)+1)`
-/

namespace A061760.P4701762617058328848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A309631 (n + 1) + 1).toNat

end

end A061760.P4701762617058328848

/-! ## A061760.P6065282112264244360

`A309631(n+1)%A197952(n+3)`
-/

namespace A061760.P6065282112264244360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309631 (n + 1)) (A197952 (n + 3))

end

end A061760.P6065282112264244360

/-! ## A061760.P4540667767167100420

`A309631(n+1)+A000007(A003242(n))`
-/

namespace A061760.P4540667767167100420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309631 (n + 1) + A000007 (A003242 n).toNat

end

end A061760.P4540667767167100420

/-!
# A061761: a(n) = 2^n + 2*n - 1.

The programs for A061761, the canonical program `A061761.P16955976905781525061` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061761 has offset 0).

The definition of A061761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+2*n-1` (program `A061761.P16955976905781525061`, by `A061761.P16955976905781525061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061761.P16955976905781525061

`2^n+2*n-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061761

/-- `2^n+2*n-1` -/
def P16955976905781525061.Spec : Prop :=
  ∀ n, P16955976905781525061.a n = A061761 n

theorem P16955976905781525061.correct : P16955976905781525061.Spec := by
  intro n
  simp only [A061761]

end A061761

/-! ## A061761.P838890601108469574

`∑[ogf((3x-5x^2)/(1-3x+2x^2))]`
-/

namespace A061761.P838890601108469574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -5] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061761.P838890601108469574

namespace A061761

/-- `∑[ogf((3x-5x^2)/(1-3x+2x^2))]` -/
def P838890601108469574.Spec : Prop :=
  ∀ n, P838890601108469574.a n = A061761 n

end A061761

/-! ## A061761.P3359219764759144328

`ogf((3x-5x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A061761.P3359219764759144328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -5] [1, -4, 5, -2] n

end

end A061761.P3359219764759144328

namespace A061761

/-- `ogf((3x-5x^2)/(1-4x+5x^2-2x^3))` -/
def P3359219764759144328.Spec : Prop :=
  ∀ n, P3359219764759144328.a n = A061761 n

end A061761

/-! ## A061761.P17003170993777276871

`abs(xor(1-2*n, 2^n))`
-/

namespace A061761.P17003170993777276871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (1 - (2 * n : ℤ)) (2 ^ n : ℤ)|

end

end A061761.P17003170993777276871

namespace A061761

/-- `abs(xor(1-2*n, 2^n))` -/
def P17003170993777276871.Spec : Prop :=
  ∀ n, P17003170993777276871.a n = A061761 n

end A061761

/-! ## A061761.P14121207544862790839

`-xor(1-2*n, 2^n)`
-/

namespace A061761.P14121207544862790839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (1 - (2 * n : ℤ)) (2 ^ n : ℤ)

end

end A061761.P14121207544862790839

namespace A061761

/-- `-xor(1-2*n, 2^n)` -/
def P14121207544862790839.Spec : Prop :=
  ∀ n, P14121207544862790839.a n = A061761 n

end A061761

/-! ## A061761.P8016045137219749304

`abs(or(n, 2^n)+n-1)`
-/

namespace A061761.P8016045137219749304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor n (2 ^ n) : ℤ) + ((n : ℤ) - 1)|

end

end A061761.P8016045137219749304

namespace A061761

/-- `abs(or(n, 2^n)+n-1)` -/
def P8016045137219749304.Spec : Prop :=
  ∀ n, P8016045137219749304.a n = A061761 n

end A061761

/-! ## A061761.P11646093854373561936

`xor(abs(n-1+n), 2^n)`
-/

namespace A061761.P11646093854373561936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |(n : ℤ) - 1 + (n : ℤ)| (2 ^ n : ℤ)

end

end A061761.P11646093854373561936

namespace A061761

/-- `xor(abs(n-1+n), 2^n)` -/
def P11646093854373561936.Spec : Prop :=
  ∀ n, P11646093854373561936.a n = A061761 n

end A061761

/-! ## A061761.P3236708292052794526

`∑[2*(a(n-1)-1)]` with `a(0)=0, a(1)=3`
-/

namespace A061761.P3236708292052794526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061761.P3236708292052794526

namespace A061761

/-- `∑[2*(a(n-1)-1)]` -/
def P3236708292052794526.Spec : Prop :=
  ∀ n, P3236708292052794526.a n = A061761 n

end A061761

/-! ## A061761.P6876319477739738329

`2*(5/2+a(n-1)-n)` with `a(0)=0`
-/

namespace A061761.P6876319477739738329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((5 : ℚ) / 2 + (a (n - 1) - (n : ℚ)))

end

end A061761.P6876319477739738329

namespace A061761

/-- `2*(5/2+a(n-1)-n)` -/
def P6876319477739738329.Spec : Prop :=
  ∀ n, P6876319477739738329.a n = (A061761 n : ℚ)

theorem P6876319477739738329.correct : P6876319477739738329.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A061761, Nat.add_sub_cancel, A061761.P6876319477739738329.a, A061761.P16955976905781525061.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A061761, Nat.add_sub_cancel, A061761.P6876319477739738329.a, A061761.P16955976905781525061.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A061761

/-! ## A061761.P8363736495711840202

`2*(5/2-(n-a(n-1)))` with `a(0)=0`
-/

namespace A061761.P8363736495711840202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((5 : ℚ) / 2 - ((n : ℚ) - a (n - 1)))

end

end A061761.P8363736495711840202

namespace A061761

/-- `2*(5/2-(n-a(n-1)))` -/
def P8363736495711840202.Spec : Prop :=
  ∀ n, P8363736495711840202.a n = (A061761 n : ℚ)

theorem P8363736495711840202.correct : P8363736495711840202.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A061761, Nat.add_sub_cancel, A061761.P8363736495711840202.a, A061761.P16955976905781525061.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A061761, Nat.add_sub_cancel, A061761.P8363736495711840202.a, A061761.P16955976905781525061.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A061761

/-! ## A061761.P3009804011362209369

`∑[a(n-1)+2^(n-2)]` with `a(0)=0, a(1)=3`
-/

namespace A061761.P3009804011362209369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061761.P3009804011362209369

namespace A061761

/-- `∑[a(n-1)+2^(n-2)]` -/
def P3009804011362209369.Spec : Prop :=
  ∀ n, P3009804011362209369.a n = (A061761 n : ℚ)

end A061761

/-! ## A061761.P2268465647646136973

`floor(2*(a(n-1)+ϕ-(n-1)))` with `a(0)=0`
-/

namespace A061761.P2268465647646136973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊2 * ((a (n - 1) : ℝ) + (Real.goldenRatio - ((n : ℤ) - 1 : ℝ)))⌋

end

end A061761.P2268465647646136973

namespace A061761

/-- `floor(2*(a(n-1)+ϕ-(n-1)))` -/
def P2268465647646136973.Spec : Prop :=
  ∀ n, P2268465647646136973.a n = A061761 n

end A061761

/-! ## A061761.P5371749599341445640

`floor(2*(ϕ-(n-1-a(n-1))))` with `a(0)=0`
-/

namespace A061761.P5371749599341445640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊2 * (Real.goldenRatio - ((n : ℤ) - 1 - a (n - 1) : ℝ))⌋

end

end A061761.P5371749599341445640

namespace A061761

/-- `floor(2*(ϕ-(n-1-a(n-1))))` -/
def P5371749599341445640.Spec : Prop :=
  ∀ n, P5371749599341445640.a n = A061761 n

end A061761

/-! ## A061761.P8296606428775969767

`∑[floor(a(n-1)+a(n-1)-2)]` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A061761.P8296606428775969767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061761.P8296606428775969767

namespace A061761

/-- `∑[floor(a(n-1)+a(n-1)-2)]` -/
def P8296606428775969767.Spec : Prop :=
  ∀ n, P8296606428775969767.a n = A061761 n

end A061761

/-! ## A061761.P12303059149964870022

`∑[floor(a(n-1)-(2-a(n-1)))]` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A061761.P12303059149964870022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061761.P12303059149964870022

namespace A061761

/-- `∑[floor(a(n-1)-(2-a(n-1)))]` -/
def P12303059149964870022.Spec : Prop :=
  ∀ n, P12303059149964870022.a n = A061761 n

end A061761

/-! ## A061761.P15393212067863391968

`record[A016724(n)-2]`
-/

namespace A061761.P15393212067863391968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016724 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061761.P15393212067863391968

namespace A061761

/-- `record[A016724(n)-2]` -/
def P15393212067863391968.Spec : Prop :=
  ∀ n, P15393212067863391968.a n = A061761 n

end A061761

/-! ## A061761.P4217433897360585945

`record[A137206(n)+n]`
-/

namespace A061761.P4217433897360585945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061761.P4217433897360585945

namespace A061761

/-- `record[A137206(n)+n]` -/
def P4217433897360585945.Spec : Prop :=
  ∀ n, P4217433897360585945.a n = A061761 n

end A061761

/-! ## A061761.P15833266800100859948

`record[A077957(n+1)+n]`
-/

namespace A061761.P15833266800100859948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061761.P15833266800100859948

namespace A061761

/-- `record[A077957(n+1)+n]` -/
def P15833266800100859948.Spec : Prop :=
  ∀ n, P15833266800100859948.a n = A061761 n

end A061761

/-! ## A061761.P1337485379861700646

`record[A052552(n)-2+n]`
-/

namespace A061761.P1337485379861700646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061761.P1337485379861700646

namespace A061761

/-- `record[A052552(n)-2+n]` -/
def P1337485379861700646.Spec : Prop :=
  ∀ n, P1337485379861700646.a n = A061761 n

end A061761

/-! ## A061761.P15784942257886594665

`abs(1-(A000079(n)+2*n))`
-/

namespace A061761.P15784942257886594665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000079 n + (2 * n : ℤ))|

end

end A061761.P15784942257886594665

namespace A061761

/-- `abs(1-(A000079(n)+2*n))` -/
def P15784942257886594665.Spec : Prop :=
  ∀ n, P15784942257886594665.a n = A061761 n

end A061761

/-!
# A061762: a(n) = (sum of digits of n) + (product of digits of n).

The programs for A061762, the canonical program `A061762.P2226516995009236848` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061762 has offset 0).

The definition of A061762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061762.P2226516995009236848

`A007953(n)+A007954(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061762

/-- `A007953(n)+A007954(n)` -/
def P2226516995009236848.Spec : Prop :=
  ∀ n, P2226516995009236848.a n = A061762 n

theorem P2226516995009236848.correct : P2226516995009236848.Spec := by
  intro n
  simp only [A061762]

end A061762

/-! ## A061762.P10009531603575169686

`∏{digits}[n, #]+∑{digits}[n, #]`
-/

namespace A061762.P10009531603575169686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

end

end A061762.P10009531603575169686

namespace A061762

/-- `∏{digits}[n, #]+∑{digits}[n, #]` -/
def P10009531603575169686.Spec : Prop :=
  ∀ n, (P10009531603575169686.a n : ℤ) = A061762 n

end A061762

/-! ## A061762.P1276922843323089252

`n-A249121(n)`
-/

namespace A061762.P1276922843323089252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A249121 n

end

end A061762.P1276922843323089252

namespace A061762

/-- `n-A249121(n)` -/
def P1276922843323089252.Spec : Prop :=
  ∀ n, P1276922843323089252.a n = A061762 n

theorem P1276922843323089252.correct : P1276922843323089252.Spec := by
  intro n
  simp only [A061762, Nat.add_sub_cancel, A061762.P1276922843323089252.a, A061762.P2226516995009236848.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A249121, A249121.P5600374421228380133.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061762

/-! ## A061762.P1303332454577131881

`∏{digits}[n, #]+sqrt(A118881(n))`
-/

namespace A061762.P1303332454577131881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℝ) + Real.sqrt (A118881 n : ℝ)

end

end A061762.P1303332454577131881

namespace A061762

/-- `∏{digits}[n, #]+sqrt(A118881(n))` -/
def P1303332454577131881.Spec : Prop :=
  ∀ n, P1303332454577131881.a n = (A061762 n : ℝ)

end A061762

/-! ## A061762.P13718423253331380971

`∏{digits}[n, #]+log2(A329562(n))`
-/

namespace A061762.P13718423253331380971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℝ) + Real.logb 2 (A329562 n : ℝ)

end

end A061762.P13718423253331380971

namespace A061762

/-- `∏{digits}[n, #]+log2(A329562(n))` -/
def P13718423253331380971.Spec : Prop :=
  ∀ n, P13718423253331380971.a n = (A061762 n : ℝ)

end A061762

/-! ## A061762.P4644821772979504139

`A062028(n)-A070565(n)`
-/

namespace A061762.P4644821772979504139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - A070565 n

end

end A061762.P4644821772979504139

namespace A061762

/-- `A062028(n)-A070565(n)` -/
def P4644821772979504139.Spec : Prop :=
  ∀ n, P4644821772979504139.a n = A061762 n

end A061762

/-! ## A061762.P1240082743331362581

`A169805(n)-A062329(n)`
-/

namespace A061762.P1240082743331362581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n - A062329 n

end

end A061762.P1240082743331362581

namespace A061762

/-- `A169805(n)-A062329(n)` -/
def P1240082743331362581.Spec : Prop :=
  ∀ n, P1240082743331362581.a n = A061762 n

end A061762

/-! ## A061762.P7885148283444913863

`A230099(n)-A066568(n)`
-/

namespace A061762.P7885148283444913863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n - A066568 n

end

end A061762.P7885148283444913863

namespace A061762

/-- `A230099(n)-A066568(n)` -/
def P7885148283444913863.Spec : Prop :=
  ∀ n, P7885148283444913863.a n = A061762 n

end A061762

/-! ## A061762.P4192295582981693458

`A007954(n)+sqrt(A118881(n))`
-/

namespace A061762.P4192295582981693458
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007954 n : ℝ) + Real.sqrt (A118881 n : ℝ)

end

end A061762.P4192295582981693458

namespace A061762

/-- `A007954(n)+sqrt(A118881(n))` -/
def P4192295582981693458.Spec : Prop :=
  ∀ n, P4192295582981693458.a n = (A061762 n : ℝ)

end A061762

/-! ## A061762.P16807597112097010134

`A007954(n)+log2(A329562(n))`
-/

namespace A061762.P16807597112097010134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007954 n : ℝ) + Real.logb 2 (A329562 n : ℝ)

end

end A061762.P16807597112097010134

namespace A061762

/-- `A007954(n)+log2(A329562(n))` -/
def P16807597112097010134.Spec : Prop :=
  ∀ n, P16807597112097010134.a n = (A061762 n : ℝ)

end A061762

/-! ## A061762.P8596422876956294945

`A062329(n)+2*A007954(n)`
-/

namespace A061762.P8596422876956294945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + 2 * A007954 n

end

end A061762.P8596422876956294945

namespace A061762

/-- `A062329(n)+2*A007954(n)` -/
def P8596422876956294945.Spec : Prop :=
  ∀ n, P8596422876956294945.a n = A061762 n

end A061762

/-! ## A061762.P6066176550596069242

`2*A007953(n)-A062329(n)`
-/

namespace A061762.P6066176550596069242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n - A062329 n

end

end A061762.P6066176550596069242

namespace A061762

/-- `2*A007953(n)-A062329(n)` -/
def P6066176550596069242.Spec : Prop :=
  ∀ n, P6066176550596069242.a n = A061762 n

end A061762

/-! ## A061762.P1759866486604932076

`A007954(n)+A169805(n)/2`
-/

namespace A061762.P1759866486604932076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007954 n : ℚ) + (A169805 n : ℚ) / 2

end

end A061762.P1759866486604932076

namespace A061762

/-- `A007954(n)+A169805(n)/2` -/
def P1759866486604932076.Spec : Prop :=
  ∀ n, P1759866486604932076.a n = (A061762 n : ℚ)

theorem P1759866486604932076.correct : P1759866486604932076.Spec := by
  intro n
  simp only [A061762, Nat.add_sub_cancel, A061762.P1759866486604932076.a, A061762.P2226516995009236848.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A169805, A169805.P17977796700678006772.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061762

/-! ## A061762.P855896739628347581

`A007954(n)+A062028(n)-n`
-/

namespace A061762.P855896739628347581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + (A062028 n - (n : ℤ))

end

end A061762.P855896739628347581

namespace A061762

/-- `A007954(n)+A062028(n)-n` -/
def P855896739628347581.Spec : Prop :=
  ∀ n, P855896739628347581.a n = A061762 n

theorem P855896739628347581.correct : P855896739628347581.Spec := by
  intro n
  simp only [A061762, Nat.add_sub_cancel, A061762.P855896739628347581.a, A061762.P2226516995009236848.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A062028, A062028.P8420805724104474199.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061762

/-! ## A061762.P3199457275933727724

`A007954(n)+n-A066568(n)`
-/

namespace A061762.P3199457275933727724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + ((n : ℤ) - A066568 n)

end

end A061762.P3199457275933727724

namespace A061762

/-- `A007954(n)+n-A066568(n)` -/
def P3199457275933727724.Spec : Prop :=
  ∀ n, P3199457275933727724.a n = A061762 n

end A061762

/-! ## A061762.P10588850761242259677

`A007953(n)+n-A070565(n)`
-/

namespace A061762.P10588850761242259677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + ((n : ℤ) - A070565 n)

end

end A061762.P10588850761242259677

namespace A061762

/-- `A007953(n)+n-A070565(n)` -/
def P10588850761242259677.Spec : Prop :=
  ∀ n, P10588850761242259677.a n = A061762 n

end A061762

/-! ## A061762.P15738465784250597043

`A007953(n)+A230099(n)-n`
-/

namespace A061762.P15738465784250597043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (A230099 n - (n : ℤ))

end

end A061762.P15738465784250597043

namespace A061762

/-- `A007953(n)+A230099(n)-n` -/
def P15738465784250597043.Spec : Prop :=
  ∀ n, P15738465784250597043.a n = A061762 n

end A061762

/-! ## A061762.P3752389313300179738

`A160939(n+1)+A007954(n)-(n+1)`
-/

namespace A061762.P3752389313300179738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) + (A007954 n - (n + 1 : ℤ))

end

end A061762.P3752389313300179738

namespace A061762

/-- `A160939(n+1)+A007954(n)-(n+1)` -/
def P3752389313300179738.Spec : Prop :=
  ∀ n, P3752389313300179738.a n = A061762 n

theorem P3752389313300179738.correct : P3752389313300179738.Spec := by
  intro n
  simp only [A061762, Nat.add_sub_cancel, A061762.P3752389313300179738.a, A061762.P2226516995009236848.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A160939, A160939.P10335950988782502839.a, A054899, A054899.P10770181254942084517.a, A062028, A062028.P8420805724104474199.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061762

/-!
# A061763: Numbers k such that k is divisible by A061762(k) and the product of digits of k (A007954(k)) is not zero.

The programs for A061763, the canonical program `A061763.P17211553431124948696` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061763 has offset 1).

The definition of A061763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061763.P17211553431124948696

`∩[A038366(n+1), A052382(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061763

/-- `∩[A038366(n+1), A052382(n+1)]` -/
def P17211553431124948696.Spec : Prop :=
  ∀ n, (P17211553431124948696.a n : ℤ) = A061763 (n + 1)

theorem P17211553431124948696.correct : P17211553431124948696.Spec := by
  intro n
  simp only [A061763, Nat.add_sub_cancel]

end A061763

/-! ## A061763.P12945904696137382093

`record[A004719(A038366(n+2))]`
-/

namespace A061763.P12945904696137382093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A038366 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061763.P12945904696137382093

namespace A061763

/-- `record[A004719(A038366(n+2))]` -/
def P12945904696137382093.Spec : Prop :=
  ∀ n, P12945904696137382093.a n = A061763 (n + 1)

end A061763

/-! ## A061763.P6072801782815667683

`filter[A038366(n+1), A168046(#)]`
-/

namespace A061763.P6072801782815667683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A061763.P6072801782815667683

namespace A061763

/-- `filter[A038366(n+1), A168046(#)]` -/
def P6072801782815667683.Spec : Prop :=
  ∀ n, P6072801782815667683.a n = A061763 (n + 1)

end A061763

/-! ## A061763.P17625838360183393569

`lt[lcm(n, A061762(n)), A230099(n)]`
-/

namespace A061763.P17625838360183393569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A061762 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061763.P17625838360183393569

namespace A061763

/-- `lt[lcm(n, A061762(n)), A230099(n)]` -/
def P17625838360183393569.Spec : Prop :=
  ∀ n, (P17625838360183393569.a n : ℤ) = A061763 (n + 1)

end A061763

/-! ## A061763.P2128233302747424937

`lt[n%A061762(A028310(n)), A168046(n)]`
-/

namespace A061763.P2128233302747424937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A061762 (A028310 n).toNat)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061763.P2128233302747424937

namespace A061763

/-- `lt[n%A061762(A028310(n)), A168046(n)]` -/
def P2128233302747424937.Spec : Prop :=
  ∀ n, (P2128233302747424937.a n : ℤ) = A061763 (n + 1)

end A061763

/-!
# A061764: Positive integers k such that k! is divisible by (k+1)^12.

The programs for A061764, there is no canonical definition to state claims against.
-/

/-! ## A061764.P11927560862089903489

`lt[12, A011776(n+1)]`
-/

namespace A061764.P11927560862089903489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061764.P11927560862089903489

/-! ## A061764.P6441473328838840815

`lt[A002034(n+1)-1, n/13]`
-/

namespace A061764.P6441473328838840815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A061764.P6441473328838840815

/-! ## A061764.P11722779251458215947

`lt[12, A011776(A028310(n))]-1`
-/

namespace A061764.P11722779251458215947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A061764.P11722779251458215947

/-! ## A061764.P1943377560105397457

`eq[round(6/A011776(n+1)), A000007(n)]`
-/

namespace A061764.P1943377560105397457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (6 / (A011776 (n + 1) : ℚ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061764.P1943377560105397457

/-! ## A061764.P9650550574656664884

`eq[A005151(3*n+4), A005151(A011776(n+1))]`
-/

namespace A061764.P9650550574656664884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005151 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005151 (A011776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061764.P9650550574656664884

/-!
# A061765: a(n) = usigma(sigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448) and sigma(n) is the sum of the divisors (A000203).

The programs for A061765, the canonical program `A061765.P1670125670375018520` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061765 has offset 1).

The definition of A061765 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061765.P1670125670375018520

`A034448(A000203(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A061765

/-- `A034448(A000203(n+1))` -/
def P1670125670375018520.Spec : Prop :=
  ∀ n, P1670125670375018520.a n = A061765 (n + 1)

theorem P1670125670375018520.correct : P1670125670375018520.Spec := by
  intro n
  simp only [A061765, Nat.add_sub_cancel]

end A061765

/-! ## A061765.P12182906219537179203

`A051027(n+1)-A048146(∑{d}[n+1, #])`
-/

namespace A061765.P12182906219537179203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A048146 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A061765.P12182906219537179203

namespace A061765

/-- `A051027(n+1)-A048146(∑{d}[n+1, #])` -/
def P12182906219537179203.Spec : Prop :=
  ∀ n, P12182906219537179203.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P10761641493254394269

`A051027(n+1)-A048146(A000203(n+1))`
-/

namespace A061765.P10761641493254394269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A048146 (A000203 (n + 1)).toNat

end

end A061765.P10761641493254394269

namespace A061765

/-- `A051027(n+1)-A048146(A000203(n+1))` -/
def P10761641493254394269.Spec : Prop :=
  ∀ n, P10761641493254394269.a n = A061765 (n + 1)

theorem P10761641493254394269.correct : P10761641493254394269.Spec := by
  intro n
  simp only [A061765, Nat.add_sub_cancel, A061765.P10761641493254394269.a, A061765.P1670125670375018520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A051027, A051027.P5984083100296461897.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061765

/-! ## A061765.P10783470784402520384

`A051027(n+1)-A048146(A088580(n+1)-1)`
-/

namespace A061765.P10783470784402520384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A048146 (A088580 (n + 1) - 1).toNat

end

end A061765.P10783470784402520384

namespace A061765

/-- `A051027(n+1)-A048146(A088580(n+1)-1)` -/
def P10783470784402520384.Spec : Prop :=
  ∀ n, P10783470784402520384.a n = A061765 (n + 1)

theorem P10783470784402520384.correct : P10783470784402520384.Spec := by
  intro n
  simp only [A061765, Nat.add_sub_cancel, A061765.P10783470784402520384.a, A061765.P1670125670375018520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A051027, A051027.P5984083100296461897.a, A088580, A088580.P3089093194242277422.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061765

/-! ## A061765.P6947997263948805151

`A051027(n+1)-A048146(A001065(n+1)+1+n)`
-/

namespace A061765.P6947997263948805151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A048146 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A061765.P6947997263948805151

namespace A061765

/-- `A051027(n+1)-A048146(A001065(n+1)+1+n)` -/
def P6947997263948805151.Spec : Prop :=
  ∀ n, P6947997263948805151.a n = A061765 (n + 1)

theorem P6947997263948805151.correct : P6947997263948805151.Spec := by
  intro n
  simp only [A061765, Nat.add_sub_cancel, A061765.P6947997263948805151.a, A061765.P1670125670375018520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A051027, A051027.P5984083100296461897.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061765

/-! ## A061765.P9225994858676089469

`A193337(n+1)+A193336(n+1)-A048146(∑{d}[n+1, #])`
-/

namespace A061765.P9225994858676089469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193337 (n + 1) + A193336 (n + 1) - A048146 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A061765.P9225994858676089469

namespace A061765

/-- `A193337(n+1)+A193336(n+1)-A048146(∑{d}[n+1, #])` -/
def P9225994858676089469.Spec : Prop :=
  ∀ n, P9225994858676089469.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P3514674911090183320

`A051027(n+1)-A048146(A048146(n+1)+A034448(n+1))`
-/

namespace A061765.P3514674911090183320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A048146 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A061765.P3514674911090183320

namespace A061765

/-- `A051027(n+1)-A048146(A048146(n+1)+A034448(n+1))` -/
def P3514674911090183320.Spec : Prop :=
  ∀ n, P3514674911090183320.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P500200937323377462

`A051027(n+1)-A048146(A070039(n+1)+A070038(n+1))`
-/

namespace A061765.P500200937323377462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A048146 (A070039 (n + 1) + A070038 (n + 1)).toNat

end

end A061765.P500200937323377462

namespace A061765

/-- `A051027(n+1)-A048146(A070039(n+1)+A070038(n+1))` -/
def P500200937323377462.Spec : Prop :=
  ∀ n, P500200937323377462.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P10873304268816427222

`A051027(n+1)-A048146(A117004(n+1)+A079667(n+1))`
-/

namespace A061765.P10873304268816427222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A048146 (A117004 (n + 1) + A079667 (n + 1)).toNat

end

end A061765.P10873304268816427222

namespace A061765

/-- `A051027(n+1)-A048146(A117004(n+1)+A079667(n+1))` -/
def P10873304268816427222.Spec : Prop :=
  ∀ n, P10873304268816427222.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P15259813520284321168

`A193337(n+1)+A193336(n+1)-A048146(A088580(n+1)-1)`
-/

namespace A061765.P15259813520284321168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193337 (n + 1) + A193336 (n + 1) - A048146 (A088580 (n + 1) - 1).toNat

end

end A061765.P15259813520284321168

namespace A061765

/-- `A193337(n+1)+A193336(n+1)-A048146(A088580(n+1)-1)` -/
def P15259813520284321168.Spec : Prop :=
  ∀ n, P15259813520284321168.a n = A061765 (n + 1)

theorem P15259813520284321168.correct : P15259813520284321168.Spec := by
  intro n
  simp only [A061765, Nat.add_sub_cancel, A061765.P15259813520284321168.a, A061765.P1670125670375018520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A088580, A088580.P3089093194242277422.a, A193336, A193336.P7441199582202554829.a, A193337, A193337.P10860167010947937724.a, A000593, A000593.P13640346029616979906.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A146076, A146076.P5513778411624192836.a, A038712, A038712.P3404197303190209645.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061765

/-! ## A061765.P15965716343953332098

`A193337(n+1)+A193336(n+1)-A048146(A245092(2*n+1))`
-/

namespace A061765.P15965716343953332098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193337 (n + 1) + A193336 (n + 1) - A048146 (A245092 (2 * n + 1)).toNat

end

end A061765.P15965716343953332098

namespace A061765

/-- `A193337(n+1)+A193336(n+1)-A048146(A245092(2*n+1))` -/
def P15965716343953332098.Spec : Prop :=
  ∀ n, P15965716343953332098.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P7277777906014414061

`A193337(n+1)+A193336(n+1)-A048146(A001065(n+1)+1+n)`
-/

namespace A061765.P7277777906014414061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193337 (n + 1) + A193336 (n + 1) - A048146 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A061765.P7277777906014414061

namespace A061765

/-- `A193337(n+1)+A193336(n+1)-A048146(A001065(n+1)+1+n)` -/
def P7277777906014414061.Spec : Prop :=
  ∀ n, P7277777906014414061.a n = A061765 (n + 1)

theorem P7277777906014414061.correct : P7277777906014414061.Spec := by
  intro n
  simp only [A061765, Nat.add_sub_cancel, A061765.P7277777906014414061.a, A061765.P1670125670375018520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A193336, A193336.P7441199582202554829.a, A193337, A193337.P10860167010947937724.a, A000593, A000593.P13640346029616979906.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A146076, A146076.P5513778411624192836.a, A038712, A038712.P3404197303190209645.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061765

/-! ## A061765.P15295783209158317631

`A034448(∑{d}[n+1, #])`
-/

namespace A061765.P15295783209158317631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A061765.P15295783209158317631

namespace A061765

/-- `A034448(∑{d}[n+1, #])` -/
def P15295783209158317631.Spec : Prop :=
  ∀ n, P15295783209158317631.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P2026249264394315292

`A034448(Δ[A160664(n)])`
-/

namespace A061765.P2026249264394315292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (f1 (n + 1) - f1 n).toNat

end

end A061765.P2026249264394315292

namespace A061765

/-- `A034448(Δ[A160664(n)])` -/
def P2026249264394315292.Spec : Prop :=
  ∀ n, P2026249264394315292.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P1410463169332842450

`A034448(A039653(n+1)+1)`
-/

namespace A061765.P1410463169332842450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A039653 (n + 1) + 1).toNat

end

end A061765.P1410463169332842450

namespace A061765

/-- `A034448(A039653(n+1)+1)` -/
def P1410463169332842450.Spec : Prop :=
  ∀ n, P1410463169332842450.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P2760747817742914498

`A034448(A088580(n+1)-1)`
-/

namespace A061765.P2760747817742914498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A088580 (n + 1) - 1).toNat

end

end A061765.P2760747817742914498

namespace A061765

/-- `A034448(A088580(n+1)-1)` -/
def P2760747817742914498.Spec : Prop :=
  ∀ n, P2760747817742914498.a n = A061765 (n + 1)

theorem P2760747817742914498.correct : P2760747817742914498.Spec := by
  intro n
  simp only [A061765, Nat.add_sub_cancel, A061765.P2760747817742914498.a, A061765.P1670125670375018520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A088580, A088580.P3089093194242277422.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061765

/-! ## A061765.P13953441591711423443

`A034448(A245092(2*n+1))`
-/

namespace A061765.P13953441591711423443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A245092 (2 * n + 1)).toNat

end

end A061765.P13953441591711423443

namespace A061765

/-- `A034448(A245092(2*n+1))` -/
def P13953441591711423443.Spec : Prop :=
  ∀ n, P13953441591711423443.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P8496425526877688131

`A034448(A074400(n+1)/2)`
-/

namespace A061765.P8496425526877688131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A061765.P8496425526877688131

namespace A061765

/-- `A034448(A074400(n+1)/2)` -/
def P8496425526877688131.Spec : Prop :=
  ∀ n, P8496425526877688131.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P12408075507824224873

`∑{d}[A000203(n+1), A254503(#)]`
-/

namespace A061765.P12408075507824224873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A254503 d

end

end A061765.P12408075507824224873

namespace A061765

/-- `∑{d}[A000203(n+1), A254503(#)]` -/
def P12408075507824224873.Spec : Prop :=
  ∀ n, P12408075507824224873.a n = A061765 (n + 1)

end A061765

/-! ## A061765.P2675711097872534030

`A034448(A001065(n+1)+n+1)`
-/

namespace A061765.P2675711097872534030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A061765.P2675711097872534030

namespace A061765

/-- `A034448(A001065(n+1)+n+1)` -/
def P2675711097872534030.Spec : Prop :=
  ∀ n, P2675711097872534030.a n = A061765 (n + 1)

theorem P2675711097872534030.correct : P2675711097872534030.Spec := by
  intro n
  simp only [A061765, Nat.add_sub_cancel, A061765.P2675711097872534030.a, A061765.P1670125670375018520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A034448, A034448.P17017727775393200719.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061765

/-!
# A061766: a(1) = 4; a(n) = smallest composite number of the form k*a(n-1) + 1.

The programs for A061766, there is no canonical definition to state claims against.
-/

/-! ## A061766.P1244300650932077651

`A061767(a(n-1))` with `a(0)=4`
-/

namespace A061766.P1244300650932077651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A061767 (a (n - 1)).toNat

end

end A061766.P1244300650932077651

/-! ## A061766.P6825830605610767261

`record[A061767(a(A081805(n+1)))]` with `a(0)=4`
-/

namespace A061766.P6825830605610767261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A061767 (f1 (A081805 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061766.P6825830605610767261

/-! ## A061766.P5942432636320129688

`A002260(C(A080735(n+4), 2))`
-/

namespace A061766.P5942432636320129688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.choose (A080735 (n + 4)).toNat 2)

end

end A061766.P5942432636320129688

/-! ## A061766.P13214287493390341443

`A080735(n+4)-A330098(A025612(n+1))`
-/

namespace A061766.P13214287493390341443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (n + 4) - A330098 (A025612 (n + 1)).toNat

end

end A061766.P13214287493390341443

/-! ## A061766.P2963125008720682261

`A080735(n+4)-A132199(A126646(n+2))`
-/

namespace A061766.P2963125008720682261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (n + 4) - A132199 (A126646 (n + 2)).toNat

end

end A061766.P2963125008720682261

/-!
# A061767: a(n) = smallest composite number of the form k*n + 1.

The programs for A061767, there is no canonical definition to state claims against.
-/

/-! ## A061767.P5852590567531838449

`A113484(A187829(n+1))`
-/

namespace A061767.P5852590567531838449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A187829 (n + 1)).toNat

end

end A061767.P5852590567531838449

/-! ## A061767.P8933867154361545730

`A113484(∑[∑[A028240(n)]])`
-/

namespace A061767.P8933867154361545730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061767.P8933867154361545730

/-! ## A061767.P14653357658109054881

`A113484(∑[∑[A106433(n)]])`
-/

namespace A061767.P14653357658109054881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106433 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061767.P14653357658109054881

/-! ## A061767.P5403201596135717108

`A028240(n)!*A113484(n+1)`
-/

namespace A061767.P5403201596135717108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A028240 n).toNat : ℤ) * A113484 (n + 1)

end

end A061767.P5403201596135717108

/-! ## A061767.P11273911116752787216

`A113484(n+1)+A000007(A011782(n))`
-/

namespace A061767.P11273911116752787216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (n + 1) + A000007 (A011782 n).toNat

end

end A061767.P11273911116752787216

/-!
# A061768: k is the least number such that k! is divisible by (k+1)^n.

The programs for A061768, there is no canonical definition to state claims against.
-/

/-! ## A061768.P8024969522124030481

`A092427(n+1)-1`
-/

namespace A061768.P8024969522124030481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092427 (n + 1) - 1

end

end A061768.P8024969522124030481

/-! ## A061768.P4067692618208274846

`Δ[∑[A092427(n)]-n]`
-/

namespace A061768.P4067692618208274846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061768.P4067692618208274846

/-! ## A061768.P5821742326196644673

`A023443(A092427(n+1))`
-/

namespace A061768.P5821742326196644673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A092427 (n + 1)).toNat

end

end A061768.P5821742326196644673

/-! ## A061768.P15583068536818005113

`A156709(A000041(gcd(n, n+2)²))+A092427(n+1)`
-/

namespace A061768.P15583068536818005113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156709 (A000041 (Nat.gcd n (n + 2) ^ 2)).toNat + A092427 (n + 1)

end

end A061768.P15583068536818005113

/-! ## A061768.P6473010259466399779

`A059169(4*A092427(n+1))`
-/

namespace A061768.P6473010259466399779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A092427 (n + 1)).toNat

end

end A061768.P6473010259466399779

/-!
# A061769: The least number k = a(n) > a(n-1) for which k!/(k+1)^m for increasing m's.

The programs for A061769, there is no canonical definition to state claims against.
-/

/-! ## A061769.P11302945010872063359

`A011778(n+1)-1`
-/

namespace A061769.P11302945010872063359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011778 (n + 1) - 1

end

end A061769.P11302945010872063359

/-! ## A061769.P2872361999539337461

`A061768(A011776(a(n-1)+1))` with `a(0)=1`
-/

namespace A061769.P2872361999539337461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061768 (A011776 (a (n - 1) + 1).toNat).toNat

end

end A061769.P2872361999539337461

/-! ## A061769.P2651791733664746110

`A057428(n+1)+A011778(n+1)`
-/

namespace A061769.P2651791733664746110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A011778 (n + 1)

end

end A061769.P2651791733664746110

/-! ## A061769.P1549662788110295595

`A134824(n+2)+A011778(n+1)`
-/

namespace A061769.P1549662788110295595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A011778 (n + 1)

end

end A061769.P1549662788110295595

/-! ## A061769.P8361180771788493279

`A260196(n+2)+A011778(n+1)`
-/

namespace A061769.P8361180771788493279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A011778 (n + 1)

end

end A061769.P8361180771788493279

/-!
# A061770: Numbers m = a(n) > a(n-1) such that there exists a smallest integer k > 1 such that k!/(k+1)^m is an integer.

The programs for A061770, there is no canonical definition to state claims against.
-/

/-! ## A061770.P14035869491897529751

`record[A011776(n+1)-C(2, n)]`
-/

namespace A061770.P14035869491897529751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1) - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061770.P14035869491897529751

/-! ## A061770.P13268545048758784081

`record[A011776(n+1)-A000007(n)]`
-/

namespace A061770.P13268545048758784081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061770.P13268545048758784081

/-! ## A061770.P1818366483056853470

`record[A011776(n+1)-A010054(n)]`
-/

namespace A061770.P1818366483056853470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1) - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061770.P1818366483056853470

/-! ## A061770.P6896348285287815648

`record[A011776(n+1)-A198954(n)]`
-/

namespace A061770.P6896348285287815648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1) - A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061770.P6896348285287815648

/-! ## A061770.P14918037210320101118

`record[A011776(n+1)%A000041(n)]`
-/

namespace A061770.P14918037210320101118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011776 (n + 1)) (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061770.P14918037210320101118

/-!
# A061771: Primes p(k) such that p(k+1) - p(k) = 2^m for some m (smaller of a pair of consecutive primes which differ by a power of 2).

The programs for A061771, the canonical program `A061771.P15852509562719419888` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061771 has offset 1).

The definition of A061771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061771.P15852509562719419888

`A000040(lt[A100375(n+1), 2]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061771

/-- `A000040(lt[A100375(n+1), 2]+1)` -/
def P15852509562719419888.Spec : Prop :=
  ∀ n, P15852509562719419888.a n = A061771 (n + 1)

theorem P15852509562719419888.correct : P15852509562719419888.Spec := by
  intro n
  simp only [A061771, Nat.add_sub_cancel]

end A061771

/-! ## A061771.P16265508576219675164

`eq[A000265(A013632(n)), A003415(n)]`
-/

namespace A061771.P16265508576219675164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A013632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061771.P16265508576219675164

namespace A061771

/-- `eq[A000265(A013632(n)), A003415(n)]` -/
def P16265508576219675164.Spec : Prop :=
  ∀ n, (P16265508576219675164.a n : ℤ) = A061771 (n + 1)

end A061771

/-! ## A061771.P15193781661602167589

`eq[A007920(n), A129760(A013632(n))]`
-/

namespace A061771.P15193781661602167589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A013632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061771.P15193781661602167589

namespace A061771

/-- `eq[A007920(n), A129760(A013632(n))]` -/
def P15193781661602167589.Spec : Prop :=
  ∀ n, (P15193781661602167589.a n : ℤ) = A061771 (n + 1)

end A061771

/-! ## A061771.P16528040790326118654

`eq[A000120(A166597(n)), A003415(n)]`
-/

namespace A061771.P16528040790326118654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A166597 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061771.P16528040790326118654

namespace A061771

/-- `eq[A000120(A166597(n)), A003415(n)]` -/
def P16528040790326118654.Spec : Prop :=
  ∀ n, (P16528040790326118654.a n : ℤ) = A061771 (n + 1)

end A061771

/-! ## A061771.P8029439308069115190

`eq[A003415(n), A347101(A166597(n+1))]`
-/

namespace A061771.P8029439308069115190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347101 (A166597 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061771.P8029439308069115190

namespace A061771

/-- `eq[A003415(n), A347101(A166597(n+1))]` -/
def P8029439308069115190.Spec : Prop :=
  ∀ n, (P8029439308069115190.a n : ℤ) = A061771 (n + 1)

end A061771

/-!
# A061772: a(n) is the number of n-digit multiples of n.

The programs for A061772, the canonical program `A061772.P13620646421649794216` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061772 has offset 1).

The definition of A061772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061772.P13620646421649794216

`floor((10^(n+1)-1)/(n+1))-(ceil(10^n/(n+1))-ceil(acot(n)))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061772

/-- `floor((10^(n+1)-1)/(n+1))-(ceil(10^n/(n+1))-ceil(acot(n)))` -/
def P13620646421649794216.Spec : Prop :=
  ∀ n, P13620646421649794216.a n = A061772 (n + 1)

theorem P13620646421649794216.correct : P13620646421649794216.Spec := by
  intro n
  simp only [A061772, Nat.add_sub_cancel]

end A061772

/-! ## A061772.P15198258218945991669

`floor(A063945(n+1)/A000005(5^n))`
-/

namespace A061772.P15198258218945991669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063945 (n + 1) : ℚ) / (A000005 (5 ^ n) : ℚ)⌋

end

end A061772.P15198258218945991669

namespace A061772

/-- `floor(A063945(n+1)/A000005(5^n))` -/
def P15198258218945991669.Spec : Prop :=
  ∀ n, P15198258218945991669.a n = A061772 (n + 1)

end A061772

/-!
# A061774: (m-1)!, as m runs through the prime powers >= 1.

The programs for A061774, the canonical program `A061774.P2339286912223203709` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061774 has offset 1).

The definition of A061774 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061774.P2339286912223203709

`(A000961(n+1)-1)!`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A061774

/-- `(A000961(n+1)-1)!` -/
def P2339286912223203709.Spec : Prop :=
  ∀ n, (P2339286912223203709.a n : ℤ) = A061774 (n + 1)

theorem P2339286912223203709.correct : P2339286912223203709.Spec := by
  intro n
  simp only [A061774, Nat.add_sub_cancel]

end A061774

/-! ## A061774.P9061506004669415652

`lt[∑{p}[n+1, gcd(n, #)], 2]!`
-/

namespace A061774.P9061506004669415652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A061774.P9061506004669415652

namespace A061774

/-- `lt[∑{p}[n+1, gcd(n, #)], 2]!` -/
def P9061506004669415652.Spec : Prop :=
  ∀ n, (P9061506004669415652.a n : ℤ) = A061774 (n + 1)

end A061774

/-! ## A061774.P4411717312771829381

`lt[∑{p}[n+1, n+1-#], n+1]!`
-/

namespace A061774.P4411717312771829381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((n + 1 : ℤ) - (p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A061774.P4411717312771829381

namespace A061774

/-- `lt[∑{p}[n+1, n+1-#], n+1]!` -/
def P4411717312771829381.Spec : Prop :=
  ∀ n, (P4411717312771829381.a n : ℤ) = A061774 (n + 1)

end A061774

/-! ## A061774.P8177870696078638765

`eq[∑{e}[n+1, #]+1, ∏{e}[n+1, #+1]]!`
-/

namespace A061774.P8177870696078638765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f3 j) n)

end

end A061774.P8177870696078638765

namespace A061774

/-- `eq[∑{e}[n+1, #]+1, ∏{e}[n+1, #+1]]!` -/
def P8177870696078638765.Spec : Prop :=
  ∀ n, (P8177870696078638765.a n : ℤ) = A061774 (n + 1)

end A061774

/-! ## A061774.P6229492954807548520

`eq[∏{p}[n+1, (n+1)/#]%(n+1), ∑{p}[n+1, ceil(n/#)]]!`
-/

namespace A061774.P6229492954807548520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), ⌈(n : ℚ) / (p : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f3 j) n)

end

end A061774.P6229492954807548520

namespace A061774

/-- `eq[∏{p}[n+1, (n+1)/#]%(n+1), ∑{p}[n+1, ceil(n/#)]]!` -/
def P6229492954807548520.Spec : Prop :=
  ∀ n, (P6229492954807548520.a n : ℤ) = A061774 (n + 1)

end A061774

/-!
# A061775: Number of nodes in rooted tree with Matula-Goebel number n.

The programs for A061775, there is no canonical definition to state claims against.
-/

/-! ## A061775.P427790365559022256

`A196050(n+1)+1`
-/

namespace A061775.P427790365559022256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + 1

end

end A061775.P427790365559022256

/-! ## A061775.P2470514150971252818

`A091238(A091204(n+1))`
-/

namespace A061775.P2470514150971252818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091238 (A091204 (n + 1)).toNat

end

end A061775.P2470514150971252818

/-! ## A061775.P12654441238992325935

`A366386(n+1)+A317713(n+1)`
-/

namespace A061775.P12654441238992325935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366386 (n + 1) + A317713 (n + 1)

end

end A061775.P12654441238992325935

/-! ## A061775.P1481018874788532062

`A358729(n+1)+A358552(n+1)`
-/

namespace A061775.P1481018874788532062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (n + 1) + A358552 (n + 1)

end

end A061775.P1481018874788532062

/-! ## A061775.P7338924255959610943

`A196068(n+1)-A196047(n+1)`
-/

namespace A061775.P7338924255959610943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - A196047 (n + 1)

end

end A061775.P7338924255959610943

/-! ## A061775.P6668694246133144302

`A109082(n+1)+A358729(n+1)+1`
-/

namespace A061775.P6668694246133144302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (n + 1) + (A358729 (n + 1) + 1)

end

end A061775.P6668694246133144302

/-! ## A061775.P14621909320049277431

`A109129(n+1)+A366388(n+1)+1`
-/

namespace A061775.P14621909320049277431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + (A366388 (n + 1) + 1)

end

end A061775.P14621909320049277431

/-! ## A061775.P6323394003959441934

`A324923(n+1)+A366386(n+1)+1`
-/

namespace A061775.P6323394003959441934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (n + 1) + (A366386 (n + 1) + 1)

end

end A061775.P6323394003959441934

/-! ## A061775.P12013628580190177983

`A109129(n+1)+A028310(A342507(n+1))`
-/

namespace A061775.P12013628580190177983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + A028310 (A342507 (n + 1)).toNat

end

end A061775.P12013628580190177983

/-! ## A061775.P16160840139960208695

`A196047(n+1)+1-A196047(A003963(n+1))`
-/

namespace A061775.P16160840139960208695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (n + 1) + (1 - A196047 (A003963 (n + 1)).toNat)

end

end A061775.P16160840139960208695

/-! ## A061775.P16402883871292739303

`Δ[A325544(n)]+1`
-/

namespace A061775.P16402883871292739303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A061775.P16402883871292739303

/-! ## A061775.P13384947495519350301

`A196050(Δ[2*∑[n]])`
-/

namespace A061775.P13384947495519350301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061775.P13384947495519350301

/-! ## A061775.P16773646051245597799

`A342507(2*(n+1))+A109129(n+1)`
-/

namespace A061775.P16773646051245597799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (2 * (n + 1)) + A109129 (n + 1)

end

end A061775.P16773646051245597799

/-! ## A061775.P9572135389804807881

`A206494(2*(n+1))/A206494(n+1)`
-/

namespace A061775.P9572135389804807881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206494 (2 * (n + 1)) : ℚ) / (A206494 (n + 1) : ℚ)

end

end A061775.P9572135389804807881

/-! ## A061775.P4837252177005705311

`A196047(A000040(n+1))-A196047(n+1)`
-/

namespace A061775.P4837252177005705311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (A000040 (n + 1)).toNat - A196047 (n + 1)

end

end A061775.P4837252177005705311

/-! ## A061775.P8366411735897201567

`∑{e}[A324922(n+1), #]+1`
-/

namespace A061775.P8366411735897201567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A061775.P8366411735897201567

/-! ## A061775.P3604796680234562137

`A001222(A324922(n+1))+1`
-/

namespace A061775.P3604796680234562137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324922 (n + 1)).toNat + 1

end

end A061775.P3604796680234562137

/-! ## A061775.P16095211751902900462

`A196068(n+1)-(A343006(n+1)+A196048(n+1))`
-/

namespace A061775.P16095211751902900462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - (A343006 (n + 1) + A196048 (n + 1))

end

end A061775.P16095211751902900462

/-!
# A061776: Start with a single triangle; at n-th generation add a triangle at each vertex, allowing triangles to overlap; sequence gives number of triangles in n-th generation.

The programs for A061776, the canonical program `A061776.P6419063357440924845` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061776 has offset 0).

The definition of A061776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061776.P6419063357440924845

`a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061776

/-- `a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P6419063357440924845.Spec : Prop :=
  ∀ n, P6419063357440924845.a n = A061776 n

theorem P6419063357440924845.correct : P6419063357440924845.Spec := by
  intro n
  simp only [A061776]

end A061776

/-! ## A061776.P17763492393055959743

`∑[ogf((1+2x+x^2+2x^3)/(1-2x^2))]`
-/

namespace A061776.P17763492393055959743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 2] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061776.P17763492393055959743

namespace A061776

/-- `∑[ogf((1+2x+x^2+2x^3)/(1-2x^2))]` -/
def P17763492393055959743.Spec : Prop :=
  ∀ n, P17763492393055959743.a n = A061776 n

end A061776

/-! ## A061776.P1372692424378666255

`ogf((1+2x+x^2+2x^3)/(1-x-2x^2+2x^3))`
-/

namespace A061776.P1372692424378666255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 2] [1, -1, -2, 2] n

end

end A061776.P1372692424378666255

namespace A061776

/-- `ogf((1+2x+x^2+2x^3)/(1-x-2x^2+2x^3))` -/
def P1372692424378666255.Spec : Prop :=
  ∀ n, P1372692424378666255.a n = A061776 n

end A061776

/-! ## A061776.P16108100099365544259

`2*(a(n-2)+3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A061776.P16108100099365544259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  2 * (a (n - 2) + 3)

end

end A061776.P16108100099365544259

namespace A061776

/-- `2*(a(n-2)+3)` -/
def P16108100099365544259.Spec : Prop :=
  ∀ n, (P16108100099365544259.a n : ℤ) = A061776 n

end A061776

/-! ## A061776.P8926945410111614575

`∑[2*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A061776.P8926945410111614575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061776.P8926945410111614575

namespace A061776

/-- `∑[2*a(n-2)]` -/
def P8926945410111614575.Spec : Prop :=
  ∀ n, (P8926945410111614575.a n : ℤ) = A061776 n

end A061776

/-! ## A061776.P12531582847466167379

`lcm(6, xor(1, a(n-2)+2))` with `a(0)=1, a(1)=3`
-/

namespace A061776.P12531582847466167379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 6 (Nat.xor 1 (a (n - 2) + 2))

end

end A061776.P12531582847466167379

namespace A061776

/-- `lcm(6, xor(1, a(n-2)+2))` -/
def P12531582847466167379.Spec : Prop :=
  ∀ n, (P12531582847466167379.a n : ℤ) = A061776 n

end A061776

/-! ## A061776.P4016048712476568161

`a(n-2)+a(n-2)+6` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A061776.P4016048712476568161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  a (n - 2) + (a (n - 2) + 6)

end

end A061776.P4016048712476568161

namespace A061776

/-- `a(n-2)+a(n-2)+6` -/
def P4016048712476568161.Spec : Prop :=
  ∀ n, (P4016048712476568161.a n : ℤ) = A061776 n

end A061776

/-! ## A061776.P643017653669999900

`2*(3-(a(n-1)%2-a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A061776.P643017653669999900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (3 - (Int.tmod (a (n - 1)) 2 - a (n - 2)))

end

end A061776.P643017653669999900

namespace A061776

/-- `2*(3-(a(n-1)%2-a(n-2)))` -/
def P643017653669999900.Spec : Prop :=
  ∀ n, P643017653669999900.a n = A061776 n

end A061776

/-! ## A061776.P11446295461788021277

`∏[A000005(a(n-2))]+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A061776.P11446295461788021277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A000005 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A061776.P11446295461788021277

namespace A061776

/-- `∏[A000005(a(n-2))]+a(n-1)` -/
def P11446295461788021277.Spec : Prop :=
  ∀ n, P11446295461788021277.a n = A061776 n

end A061776

/-! ## A061776.P7357209687580610327

`A131575(n)+∑[2*A131572(n)]`
-/

namespace A061776.P7357209687580610327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061776.P7357209687580610327

namespace A061776

/-- `A131575(n)+∑[2*A131572(n)]` -/
def P7357209687580610327.Spec : Prop :=
  ∀ n, P7357209687580610327.a n = A061776 n

end A061776

/-! ## A061776.P15197051661314642302

`A354788(n+1)+A354788(n)-A131572(n)`
-/

namespace A061776.P15197051661314642302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 (n + 1) + (A354788 n - A131572 n)

end

end A061776.P15197051661314642302

namespace A061776

/-- `A354788(n+1)+A354788(n)-A131572(n)` -/
def P15197051661314642302.Spec : Prop :=
  ∀ n, P15197051661314642302.a n = A061776 n

end A061776

/-! ## A061776.P9769883377914706424

`A060482(n+2)+A354788(n)-A016116(n)`
-/

namespace A061776.P9769883377914706424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 (n + 2) + (A354788 n - A016116 n)

end

end A061776.P9769883377914706424

namespace A061776

/-- `A060482(n+2)+A354788(n)-A016116(n)` -/
def P9769883377914706424.Spec : Prop :=
  ∀ n, P9769883377914706424.a n = A061776 n

end A061776

/-! ## A061776.P10155004123811563447

`A060482(n+2)+A136252(n)-A164090(n+1)`
-/

namespace A061776.P10155004123811563447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 (n + 2) + (A136252 n - A164090 (n + 1))

end

end A061776.P10155004123811563447

namespace A061776

/-- `A060482(n+2)+A136252(n)-A164090(n+1)` -/
def P10155004123811563447.Spec : Prop :=
  ∀ n, P10155004123811563447.a n = A061776 n

end A061776

/-! ## A061776.P12058412145041947654

`A347789(n+1)+A060482(n+2)-A052955(n)`
-/

namespace A061776.P12058412145041947654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347789 (n + 1) + (A060482 (n + 2) - A052955 n)

end

end A061776.P12058412145041947654

namespace A061776

/-- `A347789(n+1)+A060482(n+2)-A052955(n)` -/
def P12058412145041947654.Spec : Prop :=
  ∀ n, P12058412145041947654.a n = A061776 n

end A061776

/-! ## A061776.P15863978599847198485

`A027383(n+1)+A060482(n+2)-A209721(n+1)`
-/

namespace A061776.P15863978599847198485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) + (A060482 (n + 2) - A209721 (n + 1))

end

end A061776.P15863978599847198485

namespace A061776

/-- `A027383(n+1)+A060482(n+2)-A209721(n+1)` -/
def P15863978599847198485.Spec : Prop :=
  ∀ n, P15863978599847198485.a n = A061776 n

end A061776

/-! ## A061776.P5456016693001202501

`A063757(n)-A131572(n)`
-/

namespace A061776.P5456016693001202501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063757 n - A131572 n

end

end A061776.P5456016693001202501

namespace A061776

/-- `A063757(n)-A131572(n)` -/
def P5456016693001202501.Spec : Prop :=
  ∀ n, P5456016693001202501.a n = A061776 n

end A061776

/-! ## A061776.P6852517787250903509

`∑[A063759(n)]-A131572(n)`
-/

namespace A061776.P6852517787250903509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131572 n

end

end A061776.P6852517787250903509

namespace A061776

/-- `∑[A063759(n)]-A131572(n)` -/
def P6852517787250903509.Spec : Prop :=
  ∀ n, P6852517787250903509.a n = A061776 n

end A061776

/-! ## A061776.P6122390634981472832

`A136252(n+2)-A343177(n)`
-/

namespace A061776.P6122390634981472832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 (n + 2) - A343177 n

end

end A061776.P6122390634981472832

namespace A061776

/-- `A136252(n+2)-A343177(n)` -/
def P6122390634981472832.Spec : Prop :=
  ∀ n, P6122390634981472832.a n = A061776 n

end A061776

/-! ## A061776.P2167495242766115271

`∪[A068293(n+1), A089143(n)]`
-/

namespace A061776.P2167495242766115271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089143 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061776.P2167495242766115271

namespace A061776

/-- `∪[A068293(n+1), A089143(n)]` -/
def P2167495242766115271.Spec : Prop :=
  ∀ n, (P2167495242766115271.a n : ℤ) = A061776 n

end A061776

/-! ## A061776.P7980416392673751197

`∑[A111286(n+1)/A016116(n)]`
-/

namespace A061776.P7980416392673751197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111286 (n + 1) : ℚ) / (A016116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061776.P7980416392673751197

namespace A061776

/-- `∑[A111286(n+1)/A016116(n)]` -/
def P7980416392673751197.Spec : Prop :=
  ∀ n, P7980416392673751197.a n = (A061776 n : ℚ)

end A061776

/-!
# A061777: Start with a single triangle; at n-th generation add a triangle at each vertex, allowing triangles to overlap; sequence gives total population of triangles at n-th generation.

The programs for A061777, the canonical program `A061777.P5924743191704226321` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061777 has offset 0).

The definition of A061777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061777.P2643159138804091720

`2*a(n-2)+(3*n-2)/(3*n-5)*(a(n-1)-2*a(n-3))` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A061777.P2643159138804091720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  2 * a (n - 2) + ((3 * n : ℤ) - 2 : ℚ) / ((3 * n : ℤ) - 5 : ℚ) * (a (n - 1) - 2 * a (n - 3))

end

end A061777.P2643159138804091720

namespace A061777

/-- `2*a(n-2)+(3*n-2)/(3*n-5)*(a(n-1)-2*a(n-3))` -/
def P2643159138804091720.Spec : Prop :=
  ∀ n, P2643159138804091720.a n = (A061777 n : ℚ)

end A061777

/-! ## A061777.P5924743191704226321

`2*a(n-1)+a(n-2)-4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=22`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061777

/-- `2*a(n-1)+a(n-2)-4*a(n-3)+2*a(n-4)` -/
def P5924743191704226321.Spec : Prop :=
  ∀ n, P5924743191704226321.a n = A061777 n

theorem P5924743191704226321.correct : P5924743191704226321.Spec := by
  intro n
  simp only [A061777]

end A061777

/-! ## A061777.P15914992007754553744

`∑[2*(a(n-2)+3)]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A061777.P15914992007754553744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  2 * (f1 (n - 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061777.P15914992007754553744

namespace A061777

/-- `∑[2*(a(n-2)+3)]` -/
def P15914992007754553744.Spec : Prop :=
  ∀ n, (P15914992007754553744.a n : ℤ) = A061777 n

end A061777

/-! ## A061777.P15846903875999614328

`∑[∑[2*a(n-2)]]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A061777.P15846903875999614328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061777.P15846903875999614328

namespace A061777

/-- `∑[∑[2*a(n-2)]]` -/
def P15846903875999614328.Spec : Prop :=
  ∀ n, (P15846903875999614328.a n : ℤ) = A061777 n

end A061777

/-! ## A061777.P8367713871054624780

`2*(3*n+a(n-2)-2)` with `a(0)=1, a(1)=4`
-/

namespace A061777.P8367713871054624780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * ((3 * n : ℤ) + (a (n - 2) - 2))

end

end A061777.P8367713871054624780

namespace A061777

/-- `2*(3*n+a(n-2)-2)` -/
def P8367713871054624780.Spec : Prop :=
  ∀ n, P8367713871054624780.a n = A061777 n

end A061777

/-! ## A061777.P16231622774426287760

`2*(3*n-(2-a(n-2)))` with `a(0)=1, a(1)=4`
-/

namespace A061777.P16231622774426287760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * ((3 * n : ℤ) - (2 - a (n - 2)))

end

end A061777.P16231622774426287760

namespace A061777

/-- `2*(3*n-(2-a(n-2)))` -/
def P16231622774426287760.Spec : Prop :=
  ∀ n, P16231622774426287760.a n = A061777 n

end A061777

/-! ## A061777.P16198938912164916448

`∑[a(n-2)+a(n-2)+6]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A061777.P16198938912164916448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061777.P16198938912164916448

namespace A061777

/-- `∑[a(n-2)+a(n-2)+6]` -/
def P16198938912164916448.Spec : Prop :=
  ∀ n, (P16198938912164916448.a n : ℤ) = A061777 n

end A061777

/-! ## A061777.P18415000259322393902

`∑[A061776(n)]`
-/

namespace A061777.P18415000259322393902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061777.P18415000259322393902

namespace A061777

/-- `∑[A061776(n)]` -/
def P18415000259322393902.Spec : Prop :=
  ∀ n, P18415000259322393902.a n = A061777 n

end A061777

/-! ## A061777.P3444926329211091753

`∑[3*(A052955(n)-1)]+1`
-/

namespace A061777.P3444926329211091753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A052955 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061777.P3444926329211091753

namespace A061777

/-- `∑[3*(A052955(n)-1)]+1` -/
def P3444926329211091753.Spec : Prop :=
  ∀ n, P3444926329211091753.a n = A061777 n

end A061777

/-! ## A061777.P11891361662220650929

`∑[∑[A063759(n)]-A131572(n)]`
-/

namespace A061777.P11891361662220650929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A131572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061777.P11891361662220650929

namespace A061777

/-- `∑[∑[A063759(n)]-A131572(n)]` -/
def P11891361662220650929.Spec : Prop :=
  ∀ n, P11891361662220650929.a n = A061777 n

end A061777

/-! ## A061777.P9470428290233567750

`∑[2*A099942(n)]-A099942(n)`
-/

namespace A061777.P9470428290233567750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099942 n

end

end A061777.P9470428290233567750

namespace A061777

/-- `∑[2*A099942(n)]-A099942(n)` -/
def P9470428290233567750.Spec : Prop :=
  ∀ n, P9470428290233567750.a n = A061777 n

end A061777

/-! ## A061777.P8069750745624139534

`ogf((1+2x+x^2+2x^3)/(1-2x-x^2+4x^3-2x^4))`
-/

namespace A061777.P8069750745624139534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 2] [1, -2, -1, 4, -2] n

end

end A061777.P8069750745624139534

namespace A061777

/-- `ogf((1+2x+x^2+2x^3)/(1-2x-x^2+4x^3-2x^4))` -/
def P8069750745624139534.Spec : Prop :=
  ∀ n, P8069750745624139534.a n = A061777 n

end A061777

/-! ## A061777.P10709763892533441131

`A247903(n)+A247903(n)-A247619(n)`
-/

namespace A061777.P10709763892533441131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247903 n + (A247903 n - A247619 n)

end

end A061777.P10709763892533441131

namespace A061777

/-- `A247903(n)+A247903(n)-A247619(n)` -/
def P10709763892533441131.Spec : Prop :=
  ∀ n, P10709763892533441131.a n = A061777 n

end A061777

/-! ## A061777.P7462074280641214523

`(A247905(n)+1)/2`
-/

namespace A061777.P7462074280641214523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247905 n + 1 : ℚ) / 2

end

end A061777.P7462074280641214523

namespace A061777

/-- `(A247905(n)+1)/2` -/
def P7462074280641214523.Spec : Prop :=
  ∀ n, P7462074280641214523.a n = (A061777 n : ℚ)

end A061777

/-! ## A061777.P9049278107810701747

`A247619(n)-(A247905(n)-A247903(n))`
-/

namespace A061777.P9049278107810701747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247619 n - (A247905 n - A247903 n)

end

end A061777.P9049278107810701747

namespace A061777

/-- `A247619(n)-(A247905(n)-A247903(n))` -/
def P9049278107810701747.Spec : Prop :=
  ∀ n, P9049278107810701747.a n = A061777 n

end A061777

/-! ## A061777.P6282226905541671033

`2*A247903(n)-A247619(n)`
-/

namespace A061777.P6282226905541671033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247903 n - A247619 n

end

end A061777.P6282226905541671033

namespace A061777

/-- `2*A247903(n)-A247619(n)` -/
def P6282226905541671033.Spec : Prop :=
  ∀ n, P6282226905541671033.a n = A061777 n

end A061777

/-! ## A061777.P13614821260256855141

`∑[∑[A111286(n+1)/A016116(n)]]`
-/

namespace A061777.P13614821260256855141
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111286 (n + 1) : ℚ) / (A016116 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061777.P13614821260256855141

namespace A061777

/-- `∑[∑[A111286(n+1)/A016116(n)]]` -/
def P13614821260256855141.Spec : Prop :=
  ∀ n, P13614821260256855141.a n = (A061777 n : ℚ)

end A061777

/-!
# A061778: a(n) = Product_{j=0..floor(n/2)} binomial(n,j).

The programs for A061778, there is no canonical definition to state claims against.
-/

/-! ## A061778.P7952110340551398994

`A090447(∑[or(1, n+1)])`
-/

namespace A061778.P7952110340551398994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061778.P7952110340551398994

/-! ## A061778.P16145692459047130398

`A090447(∑[n%2+n+1])`
-/

namespace A061778.P16145692459047130398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061778.P16145692459047130398

/-! ## A061778.P8799519559694972006

`A090447(∑[n+2]-1-floor(n/2))`
-/

namespace A061778.P8799519559694972006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090447 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - ⌊(n : ℚ) / 2⌋).toNat

end

end A061778.P8799519559694972006

/-! ## A061778.P14011151626536968869

`A001142(n+1)/A208653(n+2)`
-/

namespace A061778.P14011151626536968869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001142 (n + 1) : ℚ) / (A208653 (n + 2) : ℚ)

end

end A061778.P14011151626536968869

/-!
# A061779: Primes p such that q-p = 22, where q is the next prime after p.

The programs for A061779, there is no canonical definition to state claims against.
-/

/-! ## A061779.P7466943428043139777

`A098976(n+1)-22`
-/

namespace A061779.P7466943428043139777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098976 (n + 1) - 22

end

end A061779.P7466943428043139777

/-! ## A061779.P9975597018961127613

`p?[A164513(n+1)+22]-22`
-/

namespace A061779.P9975597018961127613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164513 (n + 1) + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 22

end

end A061779.P9975597018961127613

/-! ## A061779.P13928486036222731961

`∩[A164513(n+1), A242476(n+1)]`
-/

namespace A061779.P13928486036222731961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061779.P13928486036222731961

/-! ## A061779.P14604826500129057339

`A000040(A320709(n+1))`
-/

namespace A061779.P14604826500129057339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320709 (n + 1)).toNat

end

end A061779.P14604826500129057339

/-! ## A061779.P1560462130148130598

`A008578(A320709(n+1)+1)`
-/

namespace A061779.P1560462130148130598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320709 (n + 1) + 1).toNat

end

end A061779.P1560462130148130598

/-! ## A061779.P1982424531390464573

`A175787(A320709(n+1)+1)`
-/

namespace A061779.P1982424531390464573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A320709 (n + 1) + 1).toNat

end

end A061779.P1982424531390464573

/-! ## A061779.P7960403497603597924

`A045319(A320709(n+1)-1)`
-/

namespace A061779.P7960403497603597924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320709 (n + 1) - 1).toNat

end

end A061779.P7960403497603597924

/-! ## A061779.P13140456172212942897

`A045344(A320709(n+1)-1)`
-/

namespace A061779.P13140456172212942897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A320709 (n + 1) - 1).toNat

end

end A061779.P13140456172212942897

/-! ## A061779.P15785070310731314258

`A065091(A320709(n+1)-1)`
-/

namespace A061779.P15785070310731314258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320709 (n + 1) - 1).toNat

end

end A061779.P15785070310731314258

/-! ## A061779.P9723597233875744927

`A004139(A320709(n+1)-2)`
-/

namespace A061779.P9723597233875744927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A320709 (n + 1) - 2).toNat

end

end A061779.P9723597233875744927

/-! ## A061779.P7212284999139493923

`∑{d}[A320709(n+1), A007444(#)]`
-/

namespace A061779.P7212284999139493923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A061779.P7212284999139493923

/-! ## A061779.P8350880799631842607

`A001747(A320709(n+1)+1)/2`
-/

namespace A061779.P8350880799631842607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A320709 (n + 1) + 1).toNat : ℚ) / 2

end

end A061779.P8350880799631842607

/-! ## A061779.P16465026678685061609

`A006093(A320709(n+1)+1)-21`
-/

namespace A061779.P16465026678685061609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A320709 (n + 1) + 1).toNat - 21

end

end A061779.P16465026678685061609

/-! ## A061779.P8212056240538928847

`(A006093(A320709(n+1))+1)*A007318(A014963(2*(n+1)))`
-/

namespace A061779.P8212056240538928847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (A320709 (n + 1)).toNat + 1) * A007318 (A014963 (2 * (n + 1))).toNat

end

end A061779.P8212056240538928847

/-! ## A061779.P1099841884277594377

`record[A006530(A164513(abs(1-n)+1)+22)]-22`
-/

namespace A061779.P1099841884277594377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A164513 (|1 - (n : ℤ)| + 1).toNat + 22).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 22

end

end A061779.P1099841884277594377

/-! ## A061779.P10051360551312960805

`∑{p}[A006093(A320709(n+1))+1, A006530(#)]`
-/

namespace A061779.P10051360551312960805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A320709 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A061779.P10051360551312960805

/-!
# A061780: Number of solutions to x + y + z = 0 mod (2n+1) such that x,y,z are units modulo 2n+1, i.e., gcd(x, 2n+1) = gcd(y, 2n+1) = gcd(z, 2n+1) = 1.

The programs for A061780, the canonical program `A061780.P5646685799009453226` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061780 has offset 1).

The definition of A061780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061780.P5646685799009453226

`A000010(2*n+3)*A070554(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061780

/-- `A000010(2*n+3)*A070554(n+1)` -/
def P5646685799009453226.Spec : Prop :=
  ∀ n, P5646685799009453226.a n = A061780 (n + 1)

theorem P5646685799009453226.correct : P5646685799009453226.Spec := by
  intro n
  simp only [A061780, Nat.add_sub_cancel]

end A061780

/-! ## A061780.P10773785664363091580

`A037225(n+1)*A184997(2*n+3)`
-/

namespace A061780.P10773785664363091580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (n + 1) * A184997 (2 * n + 3)

end

end A061780.P10773785664363091580

namespace A061780

/-- `A037225(n+1)*A184997(2*n+3)` -/
def P10773785664363091580.Spec : Prop :=
  ∀ n, P10773785664363091580.a n = A061780 (n + 1)

end A061780

/-! ## A061780.P6130810493943356796

`A070554(n+1)*A232626(2*n+3)`
-/

namespace A061780.P6130810493943356796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070554 (n + 1) * A232626 (2 * n + 3)

end

end A061780.P6130810493943356796

namespace A061780

/-- `A070554(n+1)*A232626(2*n+3)` -/
def P6130810493943356796.Spec : Prop :=
  ∀ n, P6130810493943356796.a n = A061780 (n + 1)

end A061780

/-! ## A061780.P13261438914294968648

`A000010(2*n+3)*A002472(2*n+3)`
-/

namespace A061780.P13261438914294968648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3) * A002472 (2 * n + 3)

end

end A061780.P13261438914294968648

namespace A061780

/-- `A000010(2*n+3)*A002472(2*n+3)` -/
def P13261438914294968648.Spec : Prop :=
  ∀ n, P13261438914294968648.a n = A061780 (n + 1)

end A061780

/-! ## A061780.P13379536162996120517

`A000010(2*n+3)*A184997(2*n+3)`
-/

namespace A061780.P13379536162996120517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3) * A184997 (2 * n + 3)

end

end A061780.P13379536162996120517

namespace A061780

/-- `A000010(2*n+3)*A184997(2*n+3)` -/
def P13379536162996120517.Spec : Prop :=
  ∀ n, P13379536162996120517.a n = A061780 (n + 1)

end A061780

/-! ## A061780.P12148108066887804045

`(A002088(2*n+3)-A002088(2*(n+1)))*A058026(2*n+3)`
-/

namespace A061780.P12148108066887804045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (2 * n + 3) - A002088 (2 * (n + 1))) * A058026 (2 * n + 3)

end

end A061780.P12148108066887804045

namespace A061780

/-- `(A002088(2*n+3)-A002088(2*(n+1)))*A058026(2*n+3)` -/
def P12148108066887804045.Spec : Prop :=
  ∀ n, P12148108066887804045.a n = A061780 (n + 1)

end A061780

/-! ## A061780.P3975974146038707570

`A002472(2*n+3)*A055034(4*n+6)`
-/

namespace A061780.P3975974146038707570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (2 * n + 3) * A055034 (4 * n + 6)

end

end A061780.P3975974146038707570

namespace A061780

/-- `A002472(2*n+3)*A055034(4*n+6)` -/
def P3975974146038707570.Spec : Prop :=
  ∀ n, P3975974146038707570.a n = A061780 (n + 1)

end A061780

/-!
# A061781: Number of distinct sums p(i) + p(j) for 1<=i<=j<=n, p(k) = k-th prime.

The programs for A061781, there is no canonical definition to state claims against.
-/

/-! ## A061781.P550251874586337625

`A255402(n)+a(n-1)` with `a(0)=1`
-/

namespace A061781.P550251874586337625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255402 n + a (n - 1)

end

end A061781.P550251874586337625

/-! ## A061781.P16517846937830507074

`∑[n+1]-A061784(n+1)`
-/

namespace A061781.P16517846937830507074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A061784 (n + 1)

end

end A061781.P16517846937830507074

/-! ## A061781.P5259968344891330191

`∑[A255402(A028310(n))]-1`
-/

namespace A061781.P5259968344891330191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255402 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A061781.P5259968344891330191

/-! ## A061781.P15788871514709051364

`A000124(n)-A061784(n+1)+n`
-/

namespace A061781.P15788871514709051364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A061784 (n + 1) + (n : ℤ)

end

end A061781.P15788871514709051364

/-! ## A061781.P8614580608738059891

`∑[A255402(A008574(n)-3*n)]-1`
-/

namespace A061781.P8614580608738059891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255402 (A008574 n - (3 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A061781.P8614580608738059891

/-! ## A061781.P4237447089081319809

`A006093(n+1)-A334810(n+1)+n`
-/

namespace A061781.P4237447089081319809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A334810 (n + 1) + (n : ℤ)

end

end A061781.P4237447089081319809

/-! ## A061781.P971387346197522923

`∑[A255402(n+1)]+1-A255402(n+1)`
-/

namespace A061781.P971387346197522923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A255402 (n + 1))

end

end A061781.P971387346197522923

/-! ## A061781.P2998585826588872835

`A024000(A255402(n+1))+∑[A255402(n+1)]`
-/

namespace A061781.P2998585826588872835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A255402 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061781.P2998585826588872835

/-! ## A061781.P855313415145893655

`∑[A105047(n+1)]+n`
-/

namespace A061781.P855313415145893655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A061781.P855313415145893655

/-!
# A061782: a(n) = smallest positive number m such that m*n is a triangular number.

The programs for A061782, there is no canonical definition to state claims against.
-/

/-! ## A061782.P6625967933909245938

`A066561(n+1)/(n+1)`
-/

namespace A061782.P6625967933909245938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066561 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061782.P6625967933909245938

/-! ## A061782.P17424322496290890044

`C(A321366(n+1), 2)/(n+1)`
-/

namespace A061782.P17424322496290890044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A321366 (n + 1)).toNat 2 : ℚ) / (n + 1 : ℚ)

end

end A061782.P17424322496290890044

/-! ## A061782.P1900837403457173101

`A379676(n)-A321366(n+1)`
-/

namespace A061782.P1900837403457173101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379676 n - A321366 (n + 1)

end

end A061782.P1900837403457173101

/-! ## A061782.P9687382393161016470

`A081469(n+1)-A011772(n+1)`
-/

namespace A061782.P9687382393161016470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081469 (n + 1) - A011772 (n + 1)

end

end A061782.P9687382393161016470

/-! ## A061782.P7904916013202520474

`A000217(A011772(A344758(n+1)))/(n+1)`
-/

namespace A061782.P7904916013202520474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A011772 (A344758 (n + 1)).toNat).toNat : ℚ) / (n + 1 : ℚ)

end

end A061782.P7904916013202520474

/-! ## A061782.P5685503778489773382

`A002378(A011772(n+1))/Δ[A002378(n)]`
-/

namespace A061782.P5685503778489773382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A011772 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A061782.P5685503778489773382

/-! ## A061782.P11291080906668464942

`A344006(2*(n+1))`
-/

namespace A061782.P11291080906668464942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (2 * (n + 1))

end

end A061782.P11291080906668464942

/-! ## A061782.P6490838513796943969

`A345988(2*(n+1))/(2*(n+1))`
-/

namespace A061782.P6490838513796943969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345988 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A061782.P6490838513796943969

/-! ## A061782.P9057336443602172294

`A000217(A344005(2*(n+1)))/(n+1)`
-/

namespace A061782.P9057336443602172294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A344005 (2 * (n + 1))).toNat : ℚ) / (n + 1 : ℚ)

end

end A061782.P9057336443602172294

/-! ## A061782.P11629682630497985685

`(2*A345988(2*(n+1)))%A004767(n)`
-/

namespace A061782.P11629682630497985685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A345988 (2 * (n + 1))) (A004767 n)

end

end A061782.P11629682630497985685

/-! ## A061782.P13192164207164155060

`A345998(2*(n+1))*A345999(2*(n+1))`
-/

namespace A061782.P13192164207164155060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345998 (2 * (n + 1)) * A345999 (2 * (n + 1))

end

end A061782.P13192164207164155060

/-! ## A061782.P9038807550104506794

`A344005(2*(n+1))/A345992(2*(n+1))*A345999(2*(n+1))`
-/

namespace A061782.P9038807550104506794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (2 * (n + 1)) : ℚ) / (A345992 (2 * (n + 1)) : ℚ) * (A345999 (2 * (n + 1)) : ℚ)

end

end A061782.P9038807550104506794

/-! ## A061782.P3360840005247447307

`A076942(8*(n+1))`
-/

namespace A061782.P3360840005247447307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076942 (8 * (n + 1))

end

end A061782.P3360840005247447307

/-!
# A061783: Luhn primes: primes p such that p + (p reversed) is also a prime.

The programs for A061783, there is no canonical definition to state claims against.
-/

/-! ## A061783.P2459332346556528367

`p?[A072366(n+1)]`
-/

namespace A061783.P2459332346556528367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061783.P2459332346556528367

/-! ## A061783.P3687372302217816118

`filter[A072366(n+1), A010051(#)]`
-/

namespace A061783.P3687372302217816118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A061783.P3687372302217816118

/-! ## A061783.P7454673324199308997

`A000027(p?[A072366(n-log2(1/2))])`
-/

namespace A061783.P7454673324199308997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A061783.P7454673324199308997

/-! ## A061783.P5205513036115672679

`∩[A000040(n+1), A072366(n+1)]`
-/

namespace A061783.P5205513036115672679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061783.P5205513036115672679

/-! ## A061783.P4457289926529407657

`∩[A004139(n+1), A072366(n+1)]`
-/

namespace A061783.P4457289926529407657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061783.P4457289926529407657

/-! ## A061783.P12645516295571264552

`∩[A045319(n+1), A072366(n+1)]`
-/

namespace A061783.P12645516295571264552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061783.P12645516295571264552

/-! ## A061783.P7110160290713983112

`∩[A053813(n+1), A072366(n+1)]`
-/

namespace A061783.P7110160290713983112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061783.P7110160290713983112

/-! ## A061783.P5869618019283414045

`filter[A072366(n+1), A323153(#)]`
-/

namespace A061783.P5869618019283414045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A061783.P5869618019283414045

/-! ## A061783.P9894134389762754486

`filter[A072366(n+2), A323152(#)]`
-/

namespace A061783.P9894134389762754486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A061783.P9894134389762754486

/-! ## A061783.P2399041927221740192

`filter[A072366(n+2), A351957(#)]`
-/

namespace A061783.P2399041927221740192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A061783.P2399041927221740192

/-! ## A061783.P17147079883987507085

`∩[A072366(n+1), A106843(n+1)]`
-/

namespace A061783.P17147079883987507085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061783.P17147079883987507085

/-!
# A061784: Number of sums prime(i) + prime(j) that occur more than once for 1 <= i <= j <= n, where prime(k) = k-th prime.

The programs for A061784, there is no canonical definition to state claims against.
-/

/-! ## A061784.P15297272174359852663

`∑[n+1]-A061781(n+1)`
-/

namespace A061784.P15297272174359852663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A061781 (n + 1)

end

end A061784.P15297272174359852663

/-! ## A061784.P14482128431824233016

`A000096(n)+1-A061781(n+1)`
-/

namespace A061784.P14482128431824233016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A061781 (n + 1))

end

end A061784.P14482128431824233016

/-! ## A061784.P919606498770588463

`A000124(n)-A061781(n+1)+n`
-/

namespace A061784.P919606498770588463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A061781 (n + 1) + (n : ℤ)

end

end A061784.P919606498770588463

/-! ## A061784.P16745121886560572940

`∑[n+1]-(A000040(n+1)+n-1-A334810(n+1))`
-/

namespace A061784.P16745121886560572940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A000040 (n + 1) + (n : ℤ) - 1 - A334810 (n + 1))

end

end A061784.P16745121886560572940

/-! ## A061784.P16537852011707406683

`A000217(n+1)+A255402(n+1)-A061781(n+2)`
-/

namespace A061784.P16537852011707406683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A255402 (n + 1) - A061781 (n + 2))

end

end A061784.P16537852011707406683

/-! ## A061784.P1779365881673641379

`∑[n-A105047(n+1)]+1`
-/

namespace A061784.P1779365881673641379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061784.P1779365881673641379

/-! ## A061784.P10852299964656418800

`A000124(n)-∑[A105047(n+1)]`
-/

namespace A061784.P10852299964656418800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061784.P10852299964656418800

/-! ## A061784.P3901358260493828442

`∑[A028310(n)-A105047(n+1)]`
-/

namespace A061784.P3901358260493828442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061784.P3901358260493828442

/-!
# A061785: a(n) = m such that 2^m < 5^n < 2^(m+1).

The programs for A061785, the canonical program `A061785.P12290130280362300888` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061785 has offset 1).

The definition of A061785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061785.P12290130280362300888

`floor((n+1)*log2(5))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061785

/-- `floor((n+1)*log2(5))` -/
def P12290130280362300888.Spec : Prop :=
  ∀ n, P12290130280362300888.a n = A061785 (n + 1)

theorem P12290130280362300888.correct : P12290130280362300888.Spec := by
  intro n
  simp only [A061785, Nat.add_sub_cancel]

end A061785

/-! ## A061785.P8959625120726476347

`∑[dr(Δ[floor(n*log2(5))])]`
-/

namespace A061785.P8959625120726476347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061785.P8959625120726476347

namespace A061785

/-- `∑[dr(Δ[floor(n*log2(5))])]` -/
def P8959625120726476347.Spec : Prop :=
  ∀ n, (P8959625120726476347.a n : ℤ) = A061785 (n + 1)

end A061785

/-! ## A061785.P15493439993241434417

`∑[A022922(n)]`
-/

namespace A061785.P15493439993241434417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061785.P15493439993241434417

namespace A061785

/-- `∑[A022922(n)]` -/
def P15493439993241434417.Spec : Prop :=
  ∀ n, P15493439993241434417.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P11674999161292747317

`Δ[A022334(n)]-1`
-/

namespace A061785.P11674999161292747317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A061785.P11674999161292747317

namespace A061785

/-- `Δ[A022334(n)]-1` -/
def P11674999161292747317.Spec : Prop :=
  ∀ n, P11674999161292747317.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P15155110372323357164

`A066343(n+1)-(n+1)`
-/

namespace A061785.P15155110372323357164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1) - (n + 1 : ℤ)

end

end A061785.P15155110372323357164

namespace A061785

/-- `A066343(n+1)-(n+1)` -/
def P15155110372323357164.Spec : Prop :=
  ∀ n, P15155110372323357164.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P18356747589286580483

`∑[A000041(Δ[floor(n*log2(5))])]`
-/

namespace A061785.P18356747589286580483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061785.P18356747589286580483

namespace A061785

/-- `∑[A000041(Δ[floor(n*log2(5))])]` -/
def P18356747589286580483.Spec : Prop :=
  ∀ n, P18356747589286580483.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P8118545200708855573

`∑[A005117(Δ[floor(n*log2(5))])]`
-/

namespace A061785.P8118545200708855573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061785.P8118545200708855573

namespace A061785

/-- `∑[A005117(Δ[floor(n*log2(5))])]` -/
def P8118545200708855573.Spec : Prop :=
  ∀ n, P8118545200708855573.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P15709294217813034345

`∑[A006530(Δ[floor(n*log2(5))])]`
-/

namespace A061785.P15709294217813034345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061785.P15709294217813034345

namespace A061785

/-- `∑[A006530(Δ[floor(n*log2(5))])]` -/
def P15709294217813034345.Spec : Prop :=
  ∀ n, P15709294217813034345.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P1745328834964708267

`∑[A014963(Δ[floor(n*log2(5))])]`
-/

namespace A061785.P1745328834964708267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061785.P1745328834964708267

namespace A061785

/-- `∑[A014963(Δ[floor(n*log2(5))])]` -/
def P1745328834964708267.Spec : Prop :=
  ∀ n, P1745328834964708267.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P9445394559715253227

`∑[A020639(Δ[floor(n*log2(5))])]`
-/

namespace A061785.P9445394559715253227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061785.P9445394559715253227

namespace A061785

/-- `∑[A020639(Δ[floor(n*log2(5))])]` -/
def P9445394559715253227.Spec : Prop :=
  ∀ n, P9445394559715253227.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P13766639319955557787

`∑[A000005(Δ[floor(n*log2(10))])]`
-/

namespace A061785.P13766639319955557787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061785.P13766639319955557787

namespace A061785

/-- `∑[A000005(Δ[floor(n*log2(10))])]` -/
def P13766639319955557787.Spec : Prop :=
  ∀ n, P13766639319955557787.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P18374269635663217951

`∑[A129344(n+1)-1]-1`
-/

namespace A061785.P18374269635663217951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129344 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A061785.P18374269635663217951

namespace A061785

/-- `∑[A129344(n+1)-1]-1` -/
def P18374269635663217951.Spec : Prop :=
  ∀ n, P18374269635663217951.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P18407574838502965759

`eq[1, A008952(n+1)]-(n+1)`
-/

namespace A061785.P18407574838502965759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A061785.P18407574838502965759

namespace A061785

/-- `eq[1, A008952(n+1)]-(n+1)` -/
def P18407574838502965759.Spec : Prop :=
  ∀ n, P18407574838502965759.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P18098900664658120719

`A118737(n+1)+A118738(n+1)-1`
-/

namespace A061785.P18098900664658120719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118737 (n + 1) + (A118738 (n + 1) - 1)

end

end A061785.P18098900664658120719

namespace A061785

/-- `A118737(n+1)+A118738(n+1)-1` -/
def P18098900664658120719.Spec : Prop :=
  ∀ n, P18098900664658120719.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P6402581646023441426

`A067497(n+1)-(n+2)`
-/

namespace A061785.P6402581646023441426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 (n + 1) - (n + 2 : ℤ)

end

end A061785.P6402581646023441426

namespace A061785

/-- `A067497(n+1)-(n+2)` -/
def P6402581646023441426.Spec : Prop :=
  ∀ n, P6402581646023441426.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P5360074708326897081

`∑[Δ[A123384(n)]-1]`
-/

namespace A061785.P5360074708326897081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061785.P5360074708326897081

namespace A061785

/-- `∑[Δ[A123384(n)]-1]` -/
def P5360074708326897081.Spec : Prop :=
  ∀ n, P5360074708326897081.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P1615871938292615164

`A123384(n+1)-(n+2)`
-/

namespace A061785.P1615871938292615164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 (n + 1) - (n + 2 : ℤ)

end

end A061785.P1615871938292615164

namespace A061785

/-- `A123384(n+1)-(n+2)` -/
def P1615871938292615164.Spec : Prop :=
  ∀ n, P1615871938292615164.a n = A061785 (n + 1)

end A061785

/-! ## A061785.P11392709291156426229

`filter[n+1, A022925(#)]`
-/

namespace A061785.P11392709291156426229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022925 (f1 j) = 1) n)

end

end A061785.P11392709291156426229

namespace A061785

/-- `filter[n+1, A022925(#)]` -/
def P11392709291156426229.Spec : Prop :=
  ∀ n, (P11392709291156426229.a n : ℤ) = A061785 (n + 1)

end A061785

/-! ## A061785.P6728138046386213673

`eq[A022925(n), A373565(n)]`
-/

namespace A061785.P6728138046386213673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061785.P6728138046386213673

namespace A061785

/-- `eq[A022925(n), A373565(n)]` -/
def P6728138046386213673.Spec : Prop :=
  ∀ n, (P6728138046386213673.a n : ℤ) = A061785 (n + 1)

end A061785

/-! ## A061785.P4033177783297260588

`eq[A022925(n), A121273(n+1)]`
-/

namespace A061785.P4033177783297260588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061785.P4033177783297260588

namespace A061785

/-- `eq[A022925(n), A121273(n+1)]` -/
def P4033177783297260588.Spec : Prop :=
  ∀ n, (P4033177783297260588.a n : ℤ) = A061785 (n + 1)

end A061785

/-!
# A061786: Number of distinct sums i^2 + j^2 for 1<=i<=j<=n.

The programs for A061786, there is no canonical definition to state claims against.
-/

/-! ## A061786.P10091117244618440861

`∑[n+1]-A061790(n+1)`
-/

namespace A061786.P10091117244618440861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A061790 (n + 1)

end

end A061786.P10091117244618440861

/-! ## A061786.P7222933328890726501

`A000096(n)+1-A061790(n+1)`
-/

namespace A061786.P7222933328890726501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A061790 (n + 1))

end

end A061786.P7222933328890726501

/-! ## A061786.P10091628002232460581

`A000124(n)-A061790(n+1)+n`
-/

namespace A061786.P10091628002232460581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A061790 (n + 1) + (n : ℤ)

end

end A061786.P10091628002232460581

/-! ## A061786.P52326890822858752

`abs(A061790(n+1)-Δ[A000292(n)])`
-/

namespace A061786.P52326890822858752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061790 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A061786.P52326890822858752

/-! ## A061786.P6328841917448013628

`abs(A000217(n+1)-A061790(n+1))`
-/

namespace A061786.P6328841917448013628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (n + 1) - A061790 (n + 1)|

end

end A061786.P6328841917448013628

/-! ## A061786.P5599172676484801216

`A000217(n)+n+1-A061790(n+1)`
-/

namespace A061786.P5599172676484801216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ((n + 1 : ℤ) - A061790 (n + 1))

end

end A061786.P5599172676484801216

/-! ## A061786.P9710039912890351413

`record[A008795(n)-A061790(A008619(n))]`
-/

namespace A061786.P9710039912890351413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n - A061790 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061786.P9710039912890351413

/-! ## A061786.P3417136822246001860

`abs(A061790(n+1)-record[A066182(n+1)])`
-/

namespace A061786.P3417136822246001860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061790 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A061786.P3417136822246001860

/-!
# A061787: a(n) = Sum_{k=1..n} (2k-1)^(2k-1).

The programs for A061787, there is no canonical definition to state claims against.
-/

/-! ## A061787.P5324313545098976278

`∑[Δ[n²]^Δ[n²]]`
-/

namespace A061787.P5324313545098976278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) ^ ((f3 (n + 1) : ℤ) - (f3 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061787.P5324313545098976278

/-! ## A061787.P2212305756524990887

`-∑[(-or(1, 2*n))^(2*n+1)]`
-/

namespace A061787.P2212305756524990887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.lor 1 (2 * n) : ℤ)) ^ (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061787.P2212305756524990887

/-! ## A061787.P12292928988117412241

`-∑[(-xor(1, 2*n))^(2*n+1)]`
-/

namespace A061787.P12292928988117412241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.xor 1 (2 * n) : ℤ)) ^ (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061787.P12292928988117412241

/-! ## A061787.P12791406788365400597

`and(-3, ∑[(2*n+1)^(2*n+1)])`
-/

namespace A061787.P12791406788365400597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A061787.P12791406788365400597

/-! ## A061787.P16821422232346648226

`a(n-1)+(2*n+1)^Δ[n²]` with `a(0)=1`
-/

namespace A061787.P16821422232346648226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A061787.P16821422232346648226

/-!
# A061788: a(n) = Sum_{k=1..n} (2k)^(2k).

The programs for A061788, there is no canonical definition to state claims against.
-/

/-! ## A061788.P17351594725838613206

`∑[record[(-(n+2))^(n+2)]]`
-/

namespace A061788.P17351594725838613206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 2 : ℤ)) ^ (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061788.P17351594725838613206

/-! ## A061788.P14677479625624118606

`∑[((2*(n+1))^(n+1))²]`
-/

namespace A061788.P14677479625624118606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061788.P14677479625624118606

/-! ## A061788.P15988997380769110313

`record[(-(n+2))^(n+2)]+a(n-1)` with `a(0)=4`
-/

namespace A061788.P15988997380769110313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 2 : ℤ)) ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A061788.P15988997380769110313

/-! ## A061788.P13774195157385548701

`a(n-1)+((2*(n+1))^(n+1))²` with `a(0)=4`
-/

namespace A061788.P13774195157385548701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + ((2 * (n + 1)) ^ (n + 1)) ^ 2

end

end A061788.P13774195157385548701

/-! ## A061788.P5537171268706994182

`A353009(2*(n+1))-1`
-/

namespace A061788.P5537171268706994182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353009 (2 * (n + 1)) - 1

end

end A061788.P5537171268706994182

/-!
# A061789: a(n) = Sum_{k=1..n} prime(k)^prime(k).

The programs for A061789, there is no canonical definition to state claims against.
-/

/-! ## A061789.P4532714587287899697

`∑[A051674(n+1)]`
-/

namespace A061789.P4532714587287899697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061789.P4532714587287899697

/-! ## A061789.P18072304091072546265

`∑[record[A108138(n+2)]]`
-/

namespace A061789.P18072304091072546265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108138 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061789.P18072304091072546265

/-! ## A061789.P17681924257216261328

`∑[∏{d}[A000040(n+1), #^#]]`
-/

namespace A061789.P17681924257216261328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d ^ d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061789.P17681924257216261328

/-! ## A061789.P1104282000557937982

`∑[record[(n+2)^A006530(n+2)]]`
-/

namespace A061789.P1104282000557937982
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061789.P1104282000557937982

/-! ## A061789.P1821896628302948900

`∑[record[(n+2)^A020639(n+2)]]`
-/

namespace A061789.P1821896628302948900
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A020639 (n + 2) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061789.P1821896628302948900

/-!
# A061790: a(n) = A000217(n) - A061786(n).

The programs for A061790, there is no canonical definition to state claims against.
-/

/-! ## A061790.P2041289124092052621

`A000217(n+1)-A061786(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061790.P2041289124092052621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A061786 (n + 1)

end

end A061790.P2041289124092052621

/-! ## A061790.P8378009203063857639

`A253145(n)%A061786(n+1)`
-/

namespace A061790.P8378009203063857639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A061786 (n + 1))

end

end A061790.P8378009203063857639

/-! ## A061790.P13037260570201362918

`Δ[A000292(n)]%A061786(n+1)`
-/

namespace A061790.P13037260570201362918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A061786 (n + 1))

end

end A061790.P13037260570201362918

/-! ## A061790.P722988368286005500

`A000096(n)+1-A061786(n+1)`
-/

namespace A061790.P722988368286005500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A061786 (n + 1))

end

end A061790.P722988368286005500

/-! ## A061790.P8782197246437983207

`A161680(n+2)%A061786(n+1)`
-/

namespace A061790.P8782197246437983207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161680 (n + 2)) (A061786 (n + 1))

end

end A061790.P8782197246437983207

/-! ## A061790.P11648354329983074209

`A000124(n)-A061786(n+1)+n`
-/

namespace A061790.P11648354329983074209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A061786 (n + 1) + (n : ℤ)

end

end A061790.P11648354329983074209

/-! ## A061790.P848283055212839558

`record[A008795(n)]%A061786(n+1)`
-/

namespace A061790.P848283055212839558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A061786 (n + 1))

end

end A061790.P848283055212839558

/-! ## A061790.P4281889200171443005

`A000027(∑[n+1])%A061786(n+1)`
-/

namespace A061790.P4281889200171443005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (∑ j ∈ Finset.range (n + 1), f1 j)) (A061786 (n + 1))

end

end A061790.P4281889200171443005

/-!
# A061791: Number of distinct sums i^3 + j^3 for 1<=i<=j<=n.

The programs for A061791, there is no canonical definition to state claims against.
-/

/-! ## A061791.P14600328569934401109

`A374707(n+1)-(n+2)`
-/

namespace A061791.P14600328569934401109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374707 (n + 1) - (n + 2 : ℤ)

end

end A061791.P14600328569934401109

/-! ## A061791.P12560741899874657392

`A038722(A000124(n))-A061798(n+1)`
-/

namespace A061791.P12560741899874657392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A000124 n).toNat - A061798 (n + 1)

end

end A061791.P12560741899874657392

/-! ## A061791.P2439950364385230358

`A038722(A061798(n+1)+A000124(n))`
-/

namespace A061791.P2439950364385230358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A061798 (n + 1) + A000124 n).toNat

end

end A061791.P2439950364385230358

/-! ## A061791.P489961066867343933

`A360202(A000217(n+1))-A061798(n+1)`
-/

namespace A061791.P489961066867343933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A000217 (n + 1)).toNat - A061798 (n + 1)

end

end A061791.P489961066867343933

/-! ## A061791.P8116093336783328181

`∑[and(1, A077665(A103580(n+1)+1))+n]`
-/

namespace A061791.P8116093336783328181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A077665 (A103580 (n + 1) + 1).toNat) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061791.P8116093336783328181

/-!
# A061792: a(n) = 49*(n*(n+1)/2) + 6.

The programs for A061792, the canonical program `A061792.P2239218912930053313` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061792 has offset 0).

The definition of A061792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*n*(n+1)/2+6` (program `A061792.P2353258454091927058`, by `A061792.P2353258454091927058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061792.P2353258454091927058

`49*n*(n+1)/2+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061792.P2353258454091927058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  49 * ((n * (n + 1) : ℚ) / 2) + 6

end

end A061792.P2353258454091927058

namespace A061792

/-- `49*n*(n+1)/2+6` -/
def P2353258454091927058.Spec : Prop :=
  ∀ n, P2353258454091927058.a n = (A061792 n : ℚ)

theorem P2353258454091927058.correct : P2353258454091927058.Spec := by
  intro n
  induction n with
  | zero => simp [A061792, A061792.P2353258454091927058.a, A061792.P2239218912930053313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A061792, Nat.add_sub_cancel, A061792.P2353258454091927058.a, A061792.P2239218912930053313.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A061792

/-! ## A061792.P17347428120176394247

`A177071(n)/2`
-/

namespace A061792.P17347428120176394247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177071 n : ℚ) / 2

end

end A061792.P17347428120176394247

namespace A061792

/-- `A177071(n)/2` -/
def P17347428120176394247.Spec : Prop :=
  ∀ n, P17347428120176394247.a n = (A061792 n : ℚ)

theorem P17347428120176394247.correct : P17347428120176394247.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A061792, Nat.add_sub_cancel, A061792.P17347428120176394247.a, A061792.P2239218912930053313.a, A177071, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A061792, Nat.add_sub_cancel, A061792.P17347428120176394247.a, A061792.P2239218912930053313.a, A177071, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061792

/-! ## A061792.P2846846051129660962

`C(7*n+4, 2)`
-/

namespace A061792.P2846846051129660962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (7 * n + 4) 2

end

end A061792.P2846846051129660962

namespace A061792

/-- `C(7*n+4, 2)` -/
def P2846846051129660962.Spec : Prop :=
  ∀ n, (P2846846051129660962.a n : ℤ) = A061792 n

end A061792

/-! ## A061792.P16758586434259082042

`∑[a(n-1)+49]` with `a(0)=6, a(1)=49`
-/

namespace A061792.P16758586434259082042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 49] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061792.P16758586434259082042

namespace A061792

/-- `∑[a(n-1)+49]` -/
def P16758586434259082042.Spec : Prop :=
  ∀ n, (P16758586434259082042.a n : ℤ) = A061792 n

end A061792

/-! ## A061792.P2239218912930053313

`floor(a(n-1)+7*7*n)` with `a(0)=6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061792

/-- `floor(a(n-1)+7*7*n)` -/
def P2239218912930053313.Spec : Prop :=
  ∀ n, (P2239218912930053313.a n : ℤ) = A061792 n

theorem P2239218912930053313.correct : P2239218912930053313.Spec := by
  intro n
  simp only [A061792]

end A061792

/-! ## A061792.P5976098932035422688

`lcm(7*n-gcd(2, n)+5, record[n+2-(2*n)%7])`
-/

namespace A061792.P5976098932035422688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((2 * n % 7 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((7 * n : ℤ) - (Nat.gcd 2 n : ℤ) + 5) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A061792.P5976098932035422688

namespace A061792

/-- `lcm(7*n-gcd(2, n)+5, record[n+2-(2*n)%7])` -/
def P5976098932035422688.Spec : Prop :=
  ∀ n, (P5976098932035422688.a n : ℤ) = A061792 n

end A061792

/-! ## A061792.P4874628357064451319

`(A017018(n)+A017017(n))/2`
-/

namespace A061792.P4874628357064451319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017018 n + A017017 n : ℚ) / 2

end

end A061792.P4874628357064451319

namespace A061792

/-- `(A017018(n)+A017017(n))/2` -/
def P4874628357064451319.Spec : Prop :=
  ∀ n, P4874628357064451319.a n = (A061792 n : ℚ)

theorem P4874628357064451319.correct : P4874628357064451319.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A061792, Nat.add_sub_cancel, A061792.P4874628357064451319.a, A061792.P2239218912930053313.a, A017017, A017017.P16632027915442464889.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A061792, Nat.add_sub_cancel, A061792.P4874628357064451319.a, A061792.P2239218912930053313.a, A017017, A017017.P16632027915442464889.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061792

/-! ## A061792.P12628012516155677489

`(A017030(n)-A017029(n))/2`
-/

namespace A061792.P12628012516155677489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017030 n - A017029 n : ℚ) / 2

end

end A061792.P12628012516155677489

namespace A061792

/-- `(A017030(n)-A017029(n))/2` -/
def P12628012516155677489.Spec : Prop :=
  ∀ n, P12628012516155677489.a n = (A061792 n : ℚ)

theorem P12628012516155677489.correct : P12628012516155677489.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A061792, Nat.add_sub_cancel, A061792.P12628012516155677489.a, A061792.P2239218912930053313.a, A017029, A017029.P18040034652068019793.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A061792, Nat.add_sub_cancel, A061792.P12628012516155677489.a, A061792.P2239218912930053313.a, A017029, A017029.P18040034652068019793.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061792

/-! ## A061792.P12956381553779489100

`A017017(n)/2*A017029(n)`
-/

namespace A061792.P12956381553779489100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017017 n : ℚ) / 2 * (A017029 n : ℚ)

end

end A061792.P12956381553779489100

namespace A061792

/-- `A017017(n)/2*A017029(n)` -/
def P12956381553779489100.Spec : Prop :=
  ∀ n, P12956381553779489100.a n = (A061792 n : ℚ)

theorem P12956381553779489100.correct : P12956381553779489100.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A061792, Nat.add_sub_cancel, A061792.P12956381553779489100.a, A061792.P2239218912930053313.a, A017017, A017017.P16632027915442464889.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A061792, Nat.add_sub_cancel, A061792.P12956381553779489100.a, A061792.P2239218912930053313.a, A017017, A017017.P16632027915442464889.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061792

/-! ## A061792.P13685731330956895000

`A047385(n+1)*A113803(n+1)`
-/

namespace A061792.P13685731330956895000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1) * A113803 (n + 1)

end

end A061792.P13685731330956895000

namespace A061792

/-- `A047385(n+1)*A113803(n+1)` -/
def P13685731330956895000.Spec : Prop :=
  ∀ n, P13685731330956895000.a n = A061792 n

end A061792

/-! ## A061792.P260243487373878576

`A282286(2*n+1)/4`
-/

namespace A061792.P260243487373878576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282286 (2 * n + 1) : ℚ) / 4

end

end A061792.P260243487373878576

namespace A061792

/-- `A282286(2*n+1)/4` -/
def P260243487373878576.Spec : Prop :=
  ∀ n, P260243487373878576.a n = (A061792 n : ℚ)

end A061792

/-! ## A061792.P6559372224901966869

`Δ[A007531(2*n+1)+Δ[A000332(n+1)]]`
-/

namespace A061792.P6559372224901966869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061792.P6559372224901966869

namespace A061792

/-- `Δ[A007531(2*n+1)+Δ[A000332(n+1)]]` -/
def P6559372224901966869.Spec : Prop :=
  ∀ n, P6559372224901966869.a n = A061792 n

end A061792

/-! ## A061792.P10318483306172723116

`A000217(7*n+3)`
-/

namespace A061792.P10318483306172723116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (7 * n + 3)

end

end A061792.P10318483306172723116

namespace A061792

/-- `A000217(7*n+3)` -/
def P10318483306172723116.Spec : Prop :=
  ∀ n, P10318483306172723116.a n = A061792 n

end A061792

/-! ## A061792.P9169484128977204688

`∑[A298038(A008574(n))+n]`
-/

namespace A061792.P9169484128977204688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298038 (A008574 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061792.P9169484128977204688

namespace A061792

/-- `∑[A298038(A008574(n))+n]` -/
def P9169484128977204688.Spec : Prop :=
  ∀ n, P9169484128977204688.a n = A061792 n

end A061792

/-! ## A061792.P7371895373101699920

`sqrt(A000537(7*n+3))`
-/

namespace A061792.P7371895373101699920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 (7 * n + 3) : ℝ)

end

end A061792.P7371895373101699920

namespace A061792

/-- `sqrt(A000537(7*n+3))` -/
def P7371895373101699920.Spec : Prop :=
  ∀ n, P7371895373101699920.a n = (A061792 n : ℝ)

end A061792

/-! ## A061792.P17603835452159550963

`A161680(A017029(n))`
-/

namespace A061792.P17603835452159550963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A017029 n).toNat

end

end A061792.P17603835452159550963

namespace A061792

/-- `A161680(A017029(n))` -/
def P17603835452159550963.Spec : Prop :=
  ∀ n, P17603835452159550963.a n = A061792 n

end A061792

/-! ## A061792.P3034033581657522018

`A253145(A017005(n))`
-/

namespace A061792.P3034033581657522018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A017005 n).toNat

end

end A061792.P3034033581657522018

namespace A061792

/-- `A253145(A017005(n))` -/
def P3034033581657522018.Spec : Prop :=
  ∀ n, P3034033581657522018.a n = A061792 n

end A061792

/-! ## A061792.P11312220686160904544

`A161680(A017017(n)+1)`
-/

namespace A061792.P11312220686160904544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A017017 n + 1).toNat

end

end A061792.P11312220686160904544

namespace A061792

/-- `A161680(A017017(n)+1)` -/
def P11312220686160904544.Spec : Prop :=
  ∀ n, P11312220686160904544.a n = A061792 n

end A061792

/-! ## A061792.P7145619858952573580

`A161680(A017113(n)-n)`
-/

namespace A061792.P7145619858952573580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A017113 n - (n : ℤ)).toNat

end

end A061792.P7145619858952573580

namespace A061792

/-- `A161680(A017113(n)-n)` -/
def P7145619858952573580.Spec : Prop :=
  ∀ n, P7145619858952573580.a n = A061792 n

end A061792

/-! ## A061792.P16089935417926884886

`A001971(7*(2*n+1))`
-/

namespace A061792.P16089935417926884886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (7 * (2 * n + 1))

end

end A061792.P16089935417926884886

namespace A061792

/-- `A001971(7*(2*n+1))` -/
def P16089935417926884886.Spec : Prop :=
  ∀ n, P16089935417926884886.a n = A061792 n

end A061792

/-!
# A061793: a(n) = 25*n*(n + 1)/2 + 3.

The programs for A061793, the canonical program `A061793.P13113956615551041210` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061793 has offset 0).

The definition of A061793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*n*(n+1)/2+3` (program `A061793.P18297747651445939000`, by `A061793.P18297747651445939000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061793.P18297747651445939000

`25*n*(n+1)/2+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061793.P18297747651445939000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * n * (n + 1) : ℚ) / 2 + 3

end

end A061793.P18297747651445939000

namespace A061793

/-- `25*n*(n+1)/2+3` -/
def P18297747651445939000.Spec : Prop :=
  ∀ n, P18297747651445939000.a n = (A061793 n : ℚ)

theorem P18297747651445939000.correct : P18297747651445939000.Spec := by
  intro n
  induction n with
  | zero => simp [A061793, A061793.P18297747651445939000.a, A061793.P13113956615551041210.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A061793, Nat.add_sub_cancel, A061793.P18297747651445939000.a, A061793.P13113956615551041210.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A061793

/-! ## A061793.P7603948899800298187

`C(5*n+3, 2)`
-/

namespace A061793.P7603948899800298187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n + 3) 2

end

end A061793.P7603948899800298187

namespace A061793

/-- `C(5*n+3, 2)` -/
def P7603948899800298187.Spec : Prop :=
  ∀ n, (P7603948899800298187.a n : ℤ) = A061793 n

end A061793

/-! ## A061793.P11081047975705135641

`∑[a(n-1)+25]` with `a(0)=3, a(1)=25`
-/

namespace A061793.P11081047975705135641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 25] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061793.P11081047975705135641

namespace A061793

/-- `∑[a(n-1)+25]` -/
def P11081047975705135641.Spec : Prop :=
  ∀ n, (P11081047975705135641.a n : ℤ) = A061793 n

end A061793

/-! ## A061793.P3575873568393679254

`abs(a(n-1)+25*n)` with `a(0)=3`
-/

namespace A061793.P3575873568393679254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 25 * n

end

end A061793.P3575873568393679254

namespace A061793

/-- `abs(a(n-1)+25*n)` -/
def P3575873568393679254.Spec : Prop :=
  ∀ n, (P3575873568393679254.a n : ℤ) = A061793 n

end A061793

/-! ## A061793.P13113956615551041210

`floor(a(n-1)+5*5*n)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061793

/-- `floor(a(n-1)+5*5*n)` -/
def P13113956615551041210.Spec : Prop :=
  ∀ n, (P13113956615551041210.a n : ℤ) = A061793 n

theorem P13113956615551041210.correct : P13113956615551041210.Spec := by
  intro n
  simp only [A061793]

end A061793

/-! ## A061793.P14598121763061384776

`A177059(n)/2`
-/

namespace A061793.P14598121763061384776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177059 n : ℚ) / 2

end

end A061793.P14598121763061384776

namespace A061793

/-- `A177059(n)/2` -/
def P14598121763061384776.Spec : Prop :=
  ∀ n, P14598121763061384776.a n = (A061793 n : ℚ)

theorem P14598121763061384776.correct : P14598121763061384776.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A061793, Nat.add_sub_cancel, A061793.P14598121763061384776.a, A061793.P13113956615551041210.a, A177059, A177059.P11129240338913351021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A061793, Nat.add_sub_cancel, A061793.P14598121763061384776.a, A061793.P13113956615551041210.a, A177059, A177059.P11129240338913351021.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061793

/-! ## A061793.P4005799811864078549

`(A001545(n)+2)/2`
-/

namespace A061793.P4005799811864078549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001545 n + 2 : ℚ) / 2

end

end A061793.P4005799811864078549

namespace A061793

/-- `(A001545(n)+2)/2` -/
def P4005799811864078549.Spec : Prop :=
  ∀ n, P4005799811864078549.a n = (A061793 n : ℚ)

theorem P4005799811864078549.correct : P4005799811864078549.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A061793, Nat.add_sub_cancel, A061793.P4005799811864078549.a, A061793.P13113956615551041210.a, A001545, A001545.P4596200827424455748.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A061793, Nat.add_sub_cancel, A061793.P4005799811864078549.a, A061793.P13113956615551041210.a, A001545, A001545.P4596200827424455748.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061793

/-! ## A061793.P5416810938964873151

`A001509(n)/A017293(n)`
-/

namespace A061793.P5416810938964873151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001509 n : ℚ) / (A017293 n : ℚ)

end

end A061793.P5416810938964873151

namespace A061793

/-- `A001509(n)/A017293(n)` -/
def P5416810938964873151.Spec : Prop :=
  ∀ n, P5416810938964873151.a n = (A061793 n : ℚ)

end A061793

/-! ## A061793.P17309967431835188338

`A047209(n+1)*A063226(n+1)`
-/

namespace A061793.P17309967431835188338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) * A063226 (n + 1)

end

end A061793.P17309967431835188338

namespace A061793

/-- `A047209(n+1)*A063226(n+1)` -/
def P17309967431835188338.Spec : Prop :=
  ∀ n, P17309967431835188338.a n = A061793 n

end A061793

/-! ## A061793.P11646313687597230751

`C(A016873(n)+1, 2)%A157796(n+1)`
-/

namespace A061793.P11646313687597230751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A016873 n + 1).toNat 2 : ℤ) (A157796 (n + 1))

end

end A061793.P11646313687597230751

namespace A061793

/-- `C(A016873(n)+1, 2)%A157796(n+1)` -/
def P11646313687597230751.Spec : Prop :=
  ∀ n, P11646313687597230751.a n = A061793 n

end A061793

/-! ## A061793.P5979869012368786867

`A000217(5*n+2)`
-/

namespace A061793.P5979869012368786867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (5 * n + 2)

end

end A061793.P5979869012368786867

namespace A061793

/-- `A000217(5*n+2)` -/
def P5979869012368786867.Spec : Prop :=
  ∀ n, P5979869012368786867.a n = A061793 n

end A061793

/-! ## A061793.P10922561538113124107

`A282285(2*n+1)/4`
-/

namespace A061793.P10922561538113124107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282285 (2 * n + 1) : ℚ) / 4

end

end A061793.P10922561538113124107

namespace A061793

/-- `A282285(2*n+1)/4` -/
def P10922561538113124107.Spec : Prop :=
  ∀ n, P10922561538113124107.a n = (A061793 n : ℚ)

end A061793

/-! ## A061793.P9382436608699229789

`A001509(n)/A016873(2*n)`
-/

namespace A061793.P9382436608699229789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001509 n : ℚ) / (A016873 (2 * n) : ℚ)

end

end A061793.P9382436608699229789

namespace A061793

/-- `A001509(n)/A016873(2*n)` -/
def P9382436608699229789.Spec : Prop :=
  ∀ n, P9382436608699229789.a n = (A061793 n : ℚ)

end A061793

/-! ## A061793.P16376006638150838567

`∑[A168101(5*n)]`
-/

namespace A061793.P16376006638150838567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061793.P16376006638150838567

namespace A061793

/-- `∑[A168101(5*n)]` -/
def P16376006638150838567.Spec : Prop :=
  ∀ n, P16376006638150838567.a n = A061793 n

end A061793

/-! ## A061793.P1705444598351553650

`A161680(5*n+3)`
-/

namespace A061793.P1705444598351553650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (5 * n + 3)

end

end A061793.P1705444598351553650

namespace A061793

/-- `A161680(5*n+3)` -/
def P1705444598351553650.Spec : Prop :=
  ∀ n, P1705444598351553650.a n = A061793 n

end A061793

/-! ## A061793.P5648328879850167773

`sqrt(A000537(2*n+3*n+2))`
-/

namespace A061793.P5648328879850167773
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 (2 * n + (3 * n + 2)) : ℝ)

end

end A061793.P5648328879850167773

namespace A061793

/-- `sqrt(A000537(2*n+3*n+2))` -/
def P5648328879850167773.Spec : Prop :=
  ∀ n, P5648328879850167773.a n = (A061793 n : ℝ)

end A061793

/-! ## A061793.P5074862813262315181

`A253145(A016861(n))`
-/

namespace A061793.P5074862813262315181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A016861 n).toNat

end

end A061793.P5074862813262315181

namespace A061793

/-- `A253145(A016861(n))` -/
def P5074862813262315181.Spec : Prop :=
  ∀ n, P5074862813262315181.a n = A061793 n

end A061793

/-! ## A061793.P14438526511840085898

`A111074(10*n)`
-/

namespace A061793.P14438526511840085898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111074 (10 * n)

end

end A061793.P14438526511840085898

namespace A061793

/-- `A111074(10*n)` -/
def P14438526511840085898.Spec : Prop :=
  ∀ n, P14438526511840085898.a n = A061793 n

end A061793

/-! ## A061793.P3660351410422382286

`A001971(5*(2*n+1))`
-/

namespace A061793.P3660351410422382286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (5 * (2 * n + 1))

end

end A061793.P3660351410422382286

namespace A061793

/-- `A001971(5*(2*n+1))` -/
def P3660351410422382286.Spec : Prop :=
  ∀ n, P3660351410422382286.a n = A061793 n

end A061793

/-! ## A061793.P4011119098353677521

`A008795(5*(2*n+1))`
-/

namespace A061793.P4011119098353677521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (5 * (2 * n + 1))

end

end A061793.P4011119098353677521

namespace A061793

/-- `A008795(5*(2*n+1))` -/
def P4011119098353677521.Spec : Prop :=
  ∀ n, P4011119098353677521.a n = A061793 n

end A061793

/-!
# A061797: Smallest k such that k*n has even digits and is a palindrome or becomes a palindrome when 0's are added on the left.

The programs for A061797, there is no canonical definition to state claims against.
-/

/-! ## A061797.P18432764876355322555

`A062293(n)/(n*a(2%n))` with `a(0)=1`
-/

namespace A061797.P18432764876355322555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A062293 n : ℚ) / ((n : ℚ) * a (2 % n))

end

end A061797.P18432764876355322555

/-! ## A061797.P573944020511196709

`gcd(A062293(n)/A028310(n), C(2, n))`
-/

namespace A061797.P573944020511196709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A062293 n : ℚ) / (A028310 n : ℚ))) (Nat.choose 2 n : ℤ)

end

end A061797.P573944020511196709

/-! ## A061797.P4783947786198933536

`A000007(n)+A062293(n)/A028310(n)`
-/

namespace A061797.P4783947786198933536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A062293 n : ℚ) / (A028310 n : ℚ)

end

end A061797.P4783947786198933536

/-! ## A061797.P615741909230117449

`A151933(n)+A062293(n)/A028310(n)`
-/

namespace A061797.P615741909230117449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151933 n : ℚ) + (A062293 n : ℚ) / (A028310 n : ℚ)

end

end A061797.P615741909230117449

/-! ## A061797.P4304683298706016769

`(A062293(n)/A028310(n))^A000045(ceil(n/98))`
-/

namespace A061797.P4304683298706016769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A062293 n : ℚ) / (A028310 n : ℚ)) ^ (A000045 ⌈(n : ℚ) / 98⌉.toNat : ℤ)

end

end A061797.P4304683298706016769

/-! ## A061797.P7824511700676517662

`val(A000040(n+1), 2)+A062293(n)/A028310(n)`
-/

namespace A061797.P7824511700676517662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℚ) + (A062293 n : ℚ) / (A028310 n : ℚ)

end

end A061797.P7824511700676517662

/-! ## A061797.P891713026199913712

`A000045(C(2, n+2))+A062293(n)/A028310(n)`
-/

namespace A061797.P891713026199913712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (Nat.choose 2 (n + 2)) : ℚ) + (A062293 n : ℚ) / (A028310 n : ℚ)

end

end A061797.P891713026199913712

/-! ## A061797.P6251179722242552640

`(A062293(n)/A028310(n))^(A000040(n²+1)%2)`
-/

namespace A061797.P6251179722242552640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A062293 n : ℚ) / (A028310 n : ℚ)) ^ (Int.tmod (A000040 (n ^ 2 + 1)) 2 : ℤ)

end

end A061797.P6251179722242552640

/-! ## A061797.P1131099033440119111

`A062293(n*a(A020639(2*(n+1))-2))/A028310(n)` with `a(0)=1`
-/

namespace A061797.P1131099033440119111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A062293 (SequenceMachineLib.roundAway ((n : ℚ) * a (A020639 (2 * (n + 1)) - 2).toNat)).toNat : ℚ) / (A028310 n : ℚ)

end

end A061797.P1131099033440119111

/-!
# A061798: Number of sums i^3 + j^3 that occur more than once for 1<=i<=j<=n.

The programs for A061798, there is no canonical definition to state claims against.
-/

/-! ## A061798.P16428706309935808281

`A004736(A061791(n+1))-1`
-/

namespace A061798.P16428706309935808281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A061791 (n + 1)).toNat - 1

end

end A061798.P16428706309935808281

/-! ## A061798.P2352634999424120258

`A025581(A061791(n+1)-1)`
-/

namespace A061798.P2352634999424120258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A061791 (n + 1) - 1).toNat

end

end A061798.P2352634999424120258

/-! ## A061798.P12581087787237565838

`n-A002262(A061791(n+1)-1)`
-/

namespace A061798.P12581087787237565838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002262 (A061791 (n + 1) - 1).toNat

end

end A061798.P12581087787237565838

/-! ## A061798.P14270088054974922753

`A158893(A374707(n+1))-1`
-/

namespace A061798.P14270088054974922753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158893 (A374707 (n + 1)).toNat - 1

end

end A061798.P14270088054974922753

/-! ## A061798.P5614262012885156348

`A025581(A061791(n+1)+1+n)`
-/

namespace A061798.P5614262012885156348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A061791 (n + 1) + 1 + (n : ℤ)).toNat

end

end A061798.P5614262012885156348

/-!
# A061799: Smallest number with at least n divisors.

The programs for A061799, there is no canonical definition to state claims against.
-/

/-! ## A061799.P3313188019434963642

`A002182(∑[char[A002183(n+1)]]+1)`
-/

namespace A061799.P3313188019434963642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A061799.P3313188019434963642

/-! ## A061799.P8175022451446880155

`A005179(A350786(n+1))`
-/

namespace A061799.P8175022451446880155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A350786 (n + 1)).toNat

end

end A061799.P8175022451446880155

/-! ## A061799.P17844405258760173903

`A123258(A350786(2*n+1-n))`
-/

namespace A061799.P17844405258760173903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A350786 (2 * n + 1 - n)).toNat

end

end A061799.P17844405258760173903

/-! ## A061799.P15100262589126195067

`A123258(lcm(A105220(n), A350786(n+1)))`
-/

namespace A061799.P15100262589126195067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (Int.lcm (A105220 n) (A350786 (n + 1)))

end

end A061799.P15100262589126195067

/-! ## A061799.P17331032340205736155

`A123258(∑{d}[A350786(n+1), A000010(#)])`
-/

namespace A061799.P17331032340205736155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A061799.P17331032340205736155

