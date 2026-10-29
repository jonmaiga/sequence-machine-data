import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C034
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B005.C000
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C022

/-!
# A010100: a(n) = a(n-1)*a(n-2) with a(0)=1, a(1)=10.

The programs for A010100, the canonical program `A010100.P18399928112959259609` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010100 has offset 0).

The definition of A010100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A010100.P18399928112959259609`, by `A010100.P18399928112959259609.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010100.P18399928112959259609

`a(n-1)*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010100

/-- `a(n-1)*a(n-2)` -/
def P18399928112959259609.Spec : Prop :=
  ∀ n, (P18399928112959259609.a n : ℤ) = A010100 n

theorem P18399928112959259609.correct : P18399928112959259609.Spec := by
  intro n
  simp only [A010100]

end A010100

/-! ## A010100.P4544447276820268850

`10^A000045(n)`
-/

namespace A010100.P4544447276820268850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A000045 n : ℤ)

end

end A010100.P4544447276820268850

namespace A010100

/-- `10^A000045(n)` -/
def P4544447276820268850.Spec : Prop :=
  ∀ n, P4544447276820268850.a n = (A010100 n : ℚ)

end A010100

/-!
# A010101: Maximal size of binary code of length n and asymmetric distance 2.

The programs for A010101, there is no canonical definition to state claims against.
-/

/-! ## A010101.P15692119485307255136

`and(ceil(sin(n)²)-3, A113864(n+1))`
-/

namespace A010101.P15692119485307255136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (⌈Real.sin (n : ℝ) ^ 2⌉ - 3) (A113864 (n + 1))

end

end A010101.P15692119485307255136

/-! ## A010101.P12342890065378219792

`ceil((2^n+1)*(2^n+2)/6/A003611(n+1))`
-/

namespace A010101.P12342890065378219792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6) / (A003611 (n + 1) : ℚ)⌉

end

end A010101.P12342890065378219792

/-! ## A010101.P17004170712891766913

`A004277(A218543(n))`
-/

namespace A010101.P17004170712891766913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A218543 n).toNat

end

end A010101.P17004170712891766913

/-! ## A010101.P7888155889277312784

`A335380(A047090(n))`
-/

namespace A010101.P7888155889277312784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A047090 n).toNat

end

end A010101.P7888155889277312784

/-! ## A010101.P3164247421563557434

`A269854(A128209(n))`
-/

namespace A010101.P3164247421563557434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269854 (A128209 n).toNat

end

end A010101.P3164247421563557434

/-!
# A010103: Spontaneous magnetization coefficients for square lattice spin 2 Ising model.

The programs for A010103, there is no canonical definition to state claims against.
-/

/-! ## A010103.P9400563466530273487

`A010106(A272574(n))%A141214(n+1)`
-/

namespace A010103.P9400563466530273487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010106 (A272574 n).toNat) (A141214 (n + 1))

end

end A010103.P9400563466530273487

/-! ## A010103.P8238772981266541426

`A000034(A173068(n))*A010106(A272574(n))`
-/

namespace A010103.P8238772981266541426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A173068 n).toNat * A010106 (A272574 n).toNat

end

end A010103.P8238772981266541426

/-! ## A010103.P14305568583965679151

`A010106(A272574(n))*A124778(A224212(n))`
-/

namespace A010103.P14305568583965679151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 (A272574 n).toNat * A124778 (A224212 n).toNat

end

end A010103.P14305568583965679151

/-! ## A010103.P11409246387607781950

`A010106(A272574(n))*A124778(n)`
-/

namespace A010103.P11409246387607781950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 (A272574 n).toNat * A124778 n

end

end A010103.P11409246387607781950

/-! ## A010103.P13115465056474593265

`A010106(A272574(n+1)-A124778(n))`
-/

namespace A010103.P13115465056474593265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 (A272574 (n + 1) - A124778 n).toNat

end

end A010103.P13115465056474593265

/-!
# A010105: Spontaneous magnetization coefficients for square lattice spin 3/2 Ising model.

The programs for A010105, there is no canonical definition to state claims against.
-/

/-! ## A010105.P9070033037696642474

`A030120(xor(xor(n, a(n-1)), a(n-1)))` with `a(0)=2`
-/

namespace A010105.P9070033037696642474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A030120 (Int.xor (Int.xor (n : ℤ) (a (n - 1))) (a (n - 1))).toNat

end

end A010105.P9070033037696642474

/-! ## A010105.P5650907867655889139

`A030120(n)+A000007(n)`
-/

namespace A010105.P5650907867655889139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n + A000007 n

end

end A010105.P5650907867655889139

/-! ## A010105.P8346063244325448308

`A030120(n)*A054977(n)`
-/

namespace A010105.P8346063244325448308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n * A054977 n

end

end A010105.P8346063244325448308

/-! ## A010105.P3236741906815711611

`A030120(n)*A141044(n)`
-/

namespace A010105.P3236741906815711611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n * A141044 n

end

end A010105.P3236741906815711611

/-! ## A010105.P10169873894306137713

`A030120(n)+char[A030122(n)]`
-/

namespace A010105.P10169873894306137713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030122 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A010105.P10169873894306137713

/-! ## A010105.P9777357681787492129

`A030120(n)+char[A030128(2*(n+1))]`
-/

namespace A010105.P9777357681787492129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030128 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A010105.P9777357681787492129

/-! ## A010105.P10463908762832300900

`A030120(n)+A008683((n+1)*(n+1))`
-/

namespace A010105.P10463908762832300900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n + A008683 ((n + 1) * (n + 1))

end

end A010105.P10463908762832300900

/-! ## A010105.P3269193443573227692

`A030120(n)+A000035(A005875(n))`
-/

namespace A010105.P3269193443573227692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n + A000035 (A005875 n).toNat

end

end A010105.P3269193443573227692

/-! ## A010105.P11318069195963656173

`A030120(n)+A000035(A008458(n))`
-/

namespace A010105.P11318069195963656173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n + A000035 (A008458 n).toNat

end

end A010105.P11318069195963656173

/-! ## A010105.P13061479435017905008

`A030120(n)+A000035(A103517(n))`
-/

namespace A010105.P13061479435017905008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n + A000035 (A103517 n).toNat

end

end A010105.P13061479435017905008

/-! ## A010105.P2727759411593114485

`A145458(A000120(n))+A030120(n)`
-/

namespace A010105.P2727759411593114485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145458 (A000120 n).toNat + A030120 n

end

end A010105.P2727759411593114485

/-! ## A010105.P1960860632188452951

`A014963(A016825(n))*A030120(n)`
-/

namespace A010105.P1960860632188452951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat * A030120 n

end

end A010105.P1960860632188452951

/-! ## A010105.P4827514934496367930

`A030120(n)+A007920(A020639(n+1))`
-/

namespace A010105.P4827514934496367930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n + A007920 (A020639 (n + 1)).toNat

end

end A010105.P4827514934496367930

/-! ## A010105.P9332138564744656163

`A030120(n)-A219977(A247451(n+1))`
-/

namespace A010105.P9332138564744656163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030120 n - A219977 (A247451 (n + 1)).toNat

end

end A010105.P9332138564744656163

/-! ## A010105.P6278426531759074604

`(3-A020639(A241646(n+1)))*A030120(n)`
-/

namespace A010105.P6278426531759074604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A020639 (A241646 (n + 1)).toNat) * A030120 n

end

end A010105.P6278426531759074604

/-!
# A010106: Spontaneous magnetization coefficients for square lattice spin 5/2 Ising model.

The programs for A010106, there is no canonical definition to state claims against.
-/

/-! ## A010106.P13073264917296228148

`A030121(n)-floor(acot(n))`
-/

namespace A010106.P13073264917296228148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A010106.P13073264917296228148

/-! ## A010106.P9823249195915121394

`A030121(n)-A000007(n)`
-/

namespace A010106.P9823249195915121394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - A000007 n

end

end A010106.P9823249195915121394

/-! ## A010106.P3297315947933745956

`A030121(n)-A003982(∑[n])`
-/

namespace A010106.P3297315947933745956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - A003982 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010106.P3297315947933745956

/-! ## A010106.P13287878651188637504

`A030121(n)-char[A004932(n)]`
-/

namespace A010106.P13287878651188637504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004932 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A010106.P13287878651188637504

/-! ## A010106.P12843363058753227834

`A030121(n)-char[A030122(n)]`
-/

namespace A010106.P12843363058753227834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030122 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A010106.P12843363058753227834

/-! ## A010106.P14041732141690831429

`A030121(n)-char[A119287(n)]`
-/

namespace A010106.P14041732141690831429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119287 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A010106.P14041732141690831429

/-! ## A010106.P13680462944683443472

`A030121(n)-A117569(2*n)`
-/

namespace A010106.P13680462944683443472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - A117569 (2 * n)

end

end A010106.P13680462944683443472

/-! ## A010106.P17842163141267583730

`A030121(n)-A000123(n)%2`
-/

namespace A010106.P17842163141267583730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - Int.tmod (A000123 n) 2

end

end A010106.P17842163141267583730

/-! ## A010106.P6801163950201842579

`xor(A000007(2*n), A030121(n))`
-/

namespace A010106.P6801163950201842579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A030121 n)

end

end A010106.P6801163950201842579

/-! ## A010106.P17829157649143697688

`A030121(n)-A008683((n+1)²)`
-/

namespace A010106.P17829157649143697688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - A008683 ((n + 1) ^ 2)

end

end A010106.P17829157649143697688

/-! ## A010106.P6472504782719616214

`xor(char[A030122(3*n)], A030121(n))`
-/

namespace A010106.P6472504782719616214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030122 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A030121 n)

end

end A010106.P6472504782719616214

/-! ## A010106.P1218326193223450198

`A030121(n)-C(2, A000040(n+1))`
-/

namespace A010106.P1218326193223450198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - (Nat.choose 2 (A000040 (n + 1)).toNat : ℤ)

end

end A010106.P1218326193223450198

/-! ## A010106.P1112476975934651163

`A030121(n)-and(1, A000010(n+2))`
-/

namespace A010106.P1112476975934651163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - Int.land 1 (A000010 (n + 2))

end

end A010106.P1112476975934651163

/-! ## A010106.P3730974041400795321

`and(A030121(n), A328455(2*n+1))`
-/

namespace A010106.P3730974041400795321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030121 n) (A328455 (2 * n + 1))

end

end A010106.P3730974041400795321

/-! ## A010106.P4217737126907949611

`A030121(n)-A000005(n²+1)%2`
-/

namespace A010106.P4217737126907949611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A010106.P4217737126907949611

/-! ## A010106.P18051855507423535536

`and(-A014963(4*n+2), A030121(n))`
-/

namespace A010106.P18051855507423535536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A014963 (4 * n + 2)) (A030121 n)

end

end A010106.P18051855507423535536

/-! ## A010106.P3723149315697938612

`A030121(n)-char[A030128(2*(n+1))]`
-/

namespace A010106.P3723149315697938612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030128 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A010106.P3723149315697938612

/-! ## A010106.P15747718384581353774

`A030121(n)-A000035(A001316(n))`
-/

namespace A010106.P15747718384581353774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - A000035 (A001316 n).toNat

end

end A010106.P15747718384581353774

/-! ## A010106.P11936473080791378969

`A030121(n)-A000035(A008458(n))`
-/

namespace A010106.P11936473080791378969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n - A000035 (A008458 n).toNat

end

end A010106.P11936473080791378969

/-! ## A010106.P4452779588677383219

`A030121(n)+A030120(n)-A010105(n)`
-/

namespace A010106.P4452779588677383219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n + A030120 n - A010105 n

end

end A010106.P4452779588677383219

/-!
# A010108: Partition function coefficients for square lattice spin 2 Ising model.

The programs for A010108, there is no canonical definition to state claims against.
-/

/-! ## A010108.P2284681299695033847

`A056620(A047260(n+1)%A089553(n+7))`
-/

namespace A010108.P2284681299695033847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056620 (Int.tmod (A047260 (n + 1)) (A089553 (n + 7))).toNat

end

end A010108.P2284681299695033847

/-! ## A010108.P14336077957335899684

`A010109(lt[A112382(n), A112382(2*(n+2))])`
-/

namespace A010108.P14336077957335899684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112382 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010109 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A010108.P14336077957335899684

/-! ## A010108.P4091622738902967409

`A056620(A047260(n+1))+A000038(A052552(n))`
-/

namespace A010108.P4091622738902967409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056620 (A047260 (n + 1)).toNat + A000038 (A052552 n).toNat

end

end A010108.P4091622738902967409

/-! ## A010108.P14764542500640298203

`A010109(lt[1, A091694(3*n+2)])`
-/

namespace A010108.P14764542500640298203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091694 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A010108.P14764542500640298203

/-!
# A010109: Partition function coefficients for square lattice spin 5/2 Ising model.

The programs for A010109, there is no canonical definition to state claims against.
-/

/-! ## A010109.P3577703215921106341

`A056620(A045681(n)%A115697(n+1))`
-/

namespace A010109.P3577703215921106341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056620 (Int.tmod (A045681 n) (A115697 (n + 1))).toNat

end

end A010109.P3577703215921106341

/-! ## A010109.P7267908601944204091

`A056620(A151988(n)%A115697(n+1))`
-/

namespace A010109.P7267908601944204091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056620 (Int.tmod (A151988 n) (A115697 (n + 1))).toNat

end

end A010109.P7267908601944204091

/-! ## A010109.P17410714465550889863

`A056620(A151988(n))%A287212(n+1)`
-/

namespace A010109.P17410714465550889863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056620 (A151988 n).toNat) (A287212 (n + 1))

end

end A010109.P17410714465550889863

/-! ## A010109.P12621912104133514666

`A056620(A045681(n))*A327502(A008778(n))`
-/

namespace A010109.P12621912104133514666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056620 (A045681 n).toNat * A327502 (A008778 n).toNat

end

end A010109.P12621912104133514666

/-!
# A010110: Partition function coefficients for square lattice spin 3/2 Ising model.

The programs for A010110, there is no canonical definition to state claims against.
-/

/-! ## A010110.P6093085654325707457

`A010109(A037468(n)%A289926(n))`
-/

namespace A010110.P6093085654325707457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010109 (Int.tmod (A037468 n) (A289926 n)).toNat

end

end A010110.P6093085654325707457

/-! ## A010110.P12489358643342800413

`A010109(A037468(n))%A294121(n+1)`
-/

namespace A010110.P12489358643342800413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010109 (A037468 n).toNat) (A294121 (n + 1))

end

end A010110.P12489358643342800413

/-! ## A010110.P10704478399431739865

`A010109(A037468(n*A254730(n)))`
-/

namespace A010110.P10704478399431739865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010109 (A037468 ((n : ℤ) * A254730 n).toNat).toNat

end

end A010110.P10704478399431739865

/-! ## A010110.P2535698826458144726

`A010109(A037468(n)^A254730(n))`
-/

namespace A010110.P2535698826458144726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010109 (SequenceMachineLib.roundAway ((A037468 n : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A010110.P2535698826458144726

/-! ## A010110.P6570172359982956327

`A010109(C(A037468(n), A254730(n)))`
-/

namespace A010110.P6570172359982956327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010109 (Nat.choose (A037468 n).toNat (A254730 n).toNat)

end

end A010110.P6570172359982956327

/-!
# A010112: Specific heat coefficients for square lattice spin 2 Ising model.

The programs for A010112, there is no canonical definition to state claims against.
-/

/-! ## A010112.P6449511544711645644

`A068780(n+1)*A114611(A000040(3*n+2))`
-/

namespace A010112.P6449511544711645644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1) * A114611 (A000040 (3 * n + 2)).toNat

end

end A010112.P6449511544711645644

/-! ## A010112.P15849040675016817406

`A013929(n+2)*A114611(A000040(3*n+2))`
-/

namespace A010112.P15849040675016817406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2) * A114611 (A000040 (3 * n + 2)).toNat

end

end A010112.P15849040675016817406

/-!
# A010113: Specific heat coefficients for square lattice spin 3/2 Ising model.

The programs for A010113, there is no canonical definition to state claims against.
-/

/-! ## A010113.P5952462597331108750

`A024023(a(n-1)+n*val(n, 5))` with `a(0)=36, a(1)=0`
-/

namespace A010113.P5952462597331108750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [36, 0] fun n a =>
  A024023 (a (n - 1) + (n * SequenceMachineLib.valuation n 5 : ℤ)).toNat

end

end A010113.P5952462597331108750

/-! ## A010113.P8589836859483424126

`A036850(A037931(n))`
-/

namespace A010113.P8589836859483424126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (A037931 n).toNat

end

end A010113.P8589836859483424126

/-!
# A010116: Magnetic susceptibility coefficients for square lattice spin 2 Ising model.

The programs for A010116, there is no canonical definition to state claims against.
-/

/-! ## A010116.P7508477762601809222

`A010117(A007092(n)%A280558(n+1))`
-/

namespace A010116.P7508477762601809222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010117 (Int.tmod (A007092 n) (A280558 (n + 1))).toNat

end

end A010116.P7508477762601809222

/-! ## A010116.P18410142708839326755

`A005171(A005903(2*n))*A010117(A007092(n))`
-/

namespace A010116.P18410142708839326755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A005903 (2 * n)).toNat * A010117 (A007092 n).toNat

end

end A010116.P18410142708839326755

/-! ## A010116.P13582346800408043930

`A014963(A068889(n+1))*A010117(A007092(n))`
-/

namespace A010116.P13582346800408043930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A068889 (n + 1)).toNat * A010117 (A007092 n).toNat

end

end A010116.P13582346800408043930

/-! ## A010116.P9410546201768258356

`A010119(eq[A010153(n+1), A362113(n)])`
-/

namespace A010116.P9410546201768258356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010119 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A010116.P9410546201768258356

/-!
# A010118: Magnetic susceptibility coefficients for square lattice spin 3/2 Ising model.

The programs for A010118, there is no canonical definition to state claims against.
-/

/-! ## A010118.P1694889811999761096

`A010119(A047205(n+1)%A123062(n+1))`
-/

namespace A010118.P1694889811999761096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010119 (Int.tmod (A047205 (n + 1)) (A123062 (n + 1))).toNat

end

end A010118.P1694889811999761096

/-! ## A010118.P16690226646403261286

`A010119(A047205(n+1))%A250238(n+1)`
-/

namespace A010118.P16690226646403261286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010119 (A047205 (n + 1)).toNat) (A250238 (n + 1))

end

end A010118.P16690226646403261286

/-! ## A010118.P15631404716894857135

`A010117(∑[n^A085491(n)])`
-/

namespace A010118.P15631404716894857135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A085491 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010117 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A010118.P15631404716894857135

/-! ## A010118.P15944031931458435744

`A010119(ceil(log2(A273924(3*n+1))))`
-/

namespace A010118.P15944031931458435744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010119 ⌈Real.logb 2 (A273924 (3 * n + 1) : ℝ)⌉.toNat

end

end A010118.P15944031931458435744

/-! ## A010118.P15061536846534307319

`A010119(eq[A010164(n+3), A362113(n)])`
-/

namespace A010118.P15061536846534307319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010164 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010119 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A010118.P15061536846534307319

/-!
# A010119: Magnetic susceptibility coefficients for square lattice spin 5/2 Ising model.

The programs for A010119, there is no canonical definition to state claims against.
-/

/-! ## A010119.P451852519141800448

`A010117(A007094(n)%Δ[A326079(n)])`
-/

namespace A010119.P451852519141800448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010117 (Int.tmod (A007094 n) (f1 (n + 1) - f1 n)).toNat

end

end A010119.P451852519141800448

/-! ## A010119.P4291200702795443926

`A010117(A007094(n))%A091114(n+1)`
-/

namespace A010119.P4291200702795443926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010117 (A007094 n).toNat) (A091114 (n + 1))

end

end A010119.P4291200702795443926

/-! ## A010119.P2525957017202442719

`A010117(A007094(n))+A000038(A000125(n))`
-/

namespace A010119.P2525957017202442719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010117 (A007094 n).toNat + A000038 (A000125 n).toNat

end

end A010119.P2525957017202442719

/-! ## A010119.P6484826548828072606

`A010117(A007094(n))%A326079(A109613(n))`
-/

namespace A010119.P6484826548828072606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010117 (A007094 n).toNat) (A326079 (A109613 n).toNat)

end

end A010119.P6484826548828072606

/-! ## A010119.P8381130354678912091

`A010117(A007094(n))^A014963(A264354(n+1))`
-/

namespace A010119.P8381130354678912091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010117 (A007094 n).toNat : ℚ) ^ (A014963 (A264354 (n + 1)).toNat : ℤ)

end

end A010119.P8381130354678912091

/-!
# A010120: Smallest start for a '3x+1' sequence containing 2^n.

The programs for A010120, there is no canonical definition to state claims against.
-/

/-! ## A010120.P17692016377145348725

`A070167(A000079(n))`
-/

namespace A010120.P17692016377145348725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (A000079 n).toNat

end

end A010120.P17692016377145348725

/-! ## A010120.P17269461255943223184

`A070167(A225124(n))`
-/

namespace A010120.P17269461255943223184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (A225124 n).toNat

end

end A010120.P17269461255943223184

/-! ## A010120.P5299944933948800406

`A070167(A231610(n))`
-/

namespace A010120.P5299944933948800406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (A231610 n).toNat

end

end A010120.P5299944933948800406

/-! ## A010120.P9688263624540955940

`A070167(2^n/A338651(n+8))`
-/

namespace A010120.P9688263624540955940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / (A338651 (n + 8) : ℚ))).toNat

end

end A010120.P9688263624540955940

/-! ## A010120.P3176125608971309253

`A070167(abs(A104895(A219676(n))))`
-/

namespace A010120.P3176125608971309253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 |A104895 (A219676 n).toNat|.toNat

end

end A010120.P3176125608971309253

/-!
# A010121: Continued fraction for sqrt(7).

The programs for A010121, the canonical program `A010121.P12688679297124374582` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010121 has offset 0).

The definition of A010121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010121.P12688679297124374582

`a(n-4)` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010121

/-- `a(n-4)` -/
def P12688679297124374582.Spec : Prop :=
  ∀ n, (P12688679297124374582.a n : ℤ) = A010121 n

theorem P12688679297124374582.correct : P12688679297124374582.Spec := by
  intro n
  simp only [A010121]

end A010121

/-!
# A010122: Continued fraction for sqrt(13).

The programs for A010122, the canonical program `A010122.P5480577467905036549` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010122 has offset 0).

The definition of A010122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010122.P5480577467905036549

`ogf((3+x+x^2+x^3+x^4+3x^5)/(1-x^5))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010122

/-- `ogf((3+x+x^2+x^3+x^4+3x^5)/(1-x^5))` -/
def P5480577467905036549.Spec : Prop :=
  ∀ n, P5480577467905036549.a n = A010122 n

theorem P5480577467905036549.correct : P5480577467905036549.Spec := by
  intro n
  simp only [A010122]

end A010122

/-!
# A010123: Continued fraction for sqrt(14).

The programs for A010123, the canonical program `A010123.P14443619949027656831` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010123 has offset 0).

The definition of A010123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010123.P14443619949027656831

`ogf((3+x+2x^2+x^3+3x^4)/(1-x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010123

/-- `ogf((3+x+2x^2+x^3+3x^4)/(1-x^4))` -/
def P14443619949027656831.Spec : Prop :=
  ∀ n, P14443619949027656831.a n = A010123 n

theorem P14443619949027656831.correct : P14443619949027656831.Spec := by
  intro n
  simp only [A010123]

end A010123

/-!
# A010124: Continued fraction for sqrt(19).

The programs for A010124, the canonical program `A010124.P2849175128764748890` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010124 has offset 0).

The definition of A010124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010124.P2849175128764748890

`ogf((4+2x+x^2+3x^3+x^4+2x^5+4x^6)/(1-x^6))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010124

/-- `ogf((4+2x+x^2+3x^3+x^4+2x^5+4x^6)/(1-x^6))` -/
def P2849175128764748890.Spec : Prop :=
  ∀ n, P2849175128764748890.a n = A010124 n

theorem P2849175128764748890.correct : P2849175128764748890.Spec := by
  intro n
  simp only [A010124]

end A010124

/-!
# A010125: Continued fraction for sqrt(21).

The programs for A010125, the canonical program `A010125.P6678043393731690195` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010125 has offset 0).

The definition of A010125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010125.P6678043393731690195

`ogf((4+x+x^2+2x^3+x^4+x^5+4x^6)/(1-x^6))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010125

/-- `ogf((4+x+x^2+2x^3+x^4+x^5+4x^6)/(1-x^6))` -/
def P6678043393731690195.Spec : Prop :=
  ∀ n, P6678043393731690195.a n = A010125 n

theorem P6678043393731690195.correct : P6678043393731690195.Spec := by
  intro n
  simp only [A010125]

end A010125

/-!
# A010126: Continued fraction for sqrt(22).

The programs for A010126, the canonical program `A010126.P745380828952592399` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010126 has offset 0).

The definition of A010126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010126.P745380828952592399

`ogf((4+x+2x^2+4x^3+2x^4+x^5+4x^6)/(1-x^6))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010126

/-- `ogf((4+x+2x^2+4x^3+2x^4+x^5+4x^6)/(1-x^6))` -/
def P745380828952592399.Spec : Prop :=
  ∀ n, P745380828952592399.a n = A010126 n

theorem P745380828952592399.correct : P745380828952592399.Spec := by
  intro n
  simp only [A010126]

end A010126

/-!
# A010127: Continued fraction for sqrt(23).

The programs for A010127, the canonical program `A010127.P3604179456153427120` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010127 has offset 0).

The definition of A010127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010127.P3604179456153427120

`ogf((4+x+3x^2+x^3+4x^4)/(1-x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010127

/-- `ogf((4+x+3x^2+x^3+4x^4)/(1-x^4))` -/
def P3604179456153427120.Spec : Prop :=
  ∀ n, P3604179456153427120.a n = A010127 n

theorem P3604179456153427120.correct : P3604179456153427120.Spec := by
  intro n
  simp only [A010127]

end A010127

/-!
# A010128: Continued fraction for sqrt(29).

The programs for A010128, the canonical program `A010128.P274937519716524471` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010128 has offset 0).

The definition of A010128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010128.P274937519716524471

`ogf((5+2x+x^2+x^3+2x^4+5x^5)/(1-x^5))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010128

/-- `ogf((5+2x+x^2+x^3+2x^4+5x^5)/(1-x^5))` -/
def P274937519716524471.Spec : Prop :=
  ∀ n, P274937519716524471.a n = A010128 n

theorem P274937519716524471.correct : P274937519716524471.Spec := by
  intro n
  simp only [A010128]

end A010128

/-!
# A010129: Continued fraction for sqrt(31).

The programs for A010129, the canonical program `A010129.P16408451583660702953` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010129 has offset 0).

The definition of A010129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010129.P16408451583660702953

`ogf((5+x+x^2+3x^3+5x^4+3x^5+x^6+x^7+5x^8)/(1-x^8))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010129

/-- `ogf((5+x+x^2+3x^3+5x^4+3x^5+x^6+x^7+5x^8)/(1-x^8))` -/
def P16408451583660702953.Spec : Prop :=
  ∀ n, P16408451583660702953.a n = A010129 n

theorem P16408451583660702953.correct : P16408451583660702953.Spec := by
  intro n
  simp only [A010129]

end A010129

/-!
# A010130: Continued fraction for sqrt(32).

The programs for A010130, the canonical program `A010130.P7820866009950932757` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010130 has offset 0).

The definition of A010130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010130.P7820866009950932757

`a(n-4)` with `a(0)=5, a(1)=1, a(2)=1, a(3)=1, a(4)=10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010130

/-- `a(n-4)` -/
def P7820866009950932757.Spec : Prop :=
  ∀ n, (P7820866009950932757.a n : ℤ) = A010130 n

theorem P7820866009950932757.correct : P7820866009950932757.Spec := by
  intro n
  simp only [A010130]

end A010130

/-!
# A010131: Continued fraction for sqrt(33).

The programs for A010131, the canonical program `A010131.P15509222145912144506` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010131 has offset 0).

The definition of A010131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010131.P15509222145912144506

`ogf((5+x+2x^2+x^3+5x^4)/(1-x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010131

/-- `ogf((5+x+2x^2+x^3+5x^4)/(1-x^4))` -/
def P15509222145912144506.Spec : Prop :=
  ∀ n, P15509222145912144506.a n = A010131 n

theorem P15509222145912144506.correct : P15509222145912144506.Spec := by
  intro n
  simp only [A010131]

end A010131

/-!
# A010132: Continued fraction for sqrt(34).

The programs for A010132, the canonical program `A010132.P10263102486582777909` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010132 has offset 0).

The definition of A010132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010132.P10263102486582777909

`ogf((5+x+4x^2+x^3+5x^4)/(1-x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010132

/-- `ogf((5+x+4x^2+x^3+5x^4)/(1-x^4))` -/
def P10263102486582777909.Spec : Prop :=
  ∀ n, P10263102486582777909.a n = A010132 n

theorem P10263102486582777909.correct : P10263102486582777909.Spec := by
  intro n
  simp only [A010132]

end A010132

/-!
# A010133: Continued fraction for sqrt(41).

The programs for A010133, the canonical program `A010133.P15074458958957198385` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010133 has offset 0).

The definition of A010133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010133.P15074458958957198385

`a(n-3)` with `a(0)=6, a(1)=2, a(2)=2, a(3)=12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010133

/-- `a(n-3)` -/
def P15074458958957198385.Spec : Prop :=
  ∀ n, (P15074458958957198385.a n : ℤ) = A010133 n

theorem P15074458958957198385.correct : P15074458958957198385.Spec := by
  intro n
  simp only [A010133]

end A010133

/-!
# A010134: Continued fraction for sqrt(43).

The programs for A010134, the canonical program `A010134.P10174421137026531401` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010134 has offset 0).

The definition of A010134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010134.P10174421137026531401

`ogf((6+x+x^2+3x^3+x^4+5x^5+x^6+3x^7+x^8+x^9+6x^10)/(1-x^10))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010134

/-- `ogf((6+x+x^2+3x^3+x^4+5x^5+x^6+3x^7+x^8+x^9+6x^10)/(1-x^10))` -/
def P10174421137026531401.Spec : Prop :=
  ∀ n, P10174421137026531401.a n = A010134 n

theorem P10174421137026531401.correct : P10174421137026531401.Spec := by
  intro n
  simp only [A010134]

end A010134

/-!
# A010135: Continued fraction for sqrt(45).

The programs for A010135, the canonical program `A010135.P6956980339769390756` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010135 has offset 0).

The definition of A010135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010135.P6956980339769390756

`ogf((6+x+2x^2+2x^3+2x^4+x^5+6x^6)/(1-x^6))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010135

/-- `ogf((6+x+2x^2+2x^3+2x^4+x^5+6x^6)/(1-x^6))` -/
def P6956980339769390756.Spec : Prop :=
  ∀ n, P6956980339769390756.a n = A010135 n

theorem P6956980339769390756.correct : P6956980339769390756.Spec := by
  intro n
  simp only [A010135]

end A010135

/-!
# A010137: Continued fraction for sqrt(47).

The programs for A010137, the canonical program `A010137.P11023755221597904507` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010137 has offset 0).

The definition of A010137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010137.P11023755221597904507

`ogf((6+x+5x^2+x^3+6x^4)/(1-x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010137

/-- `ogf((6+x+5x^2+x^3+6x^4)/(1-x^4))` -/
def P11023755221597904507.Spec : Prop :=
  ∀ n, P11023755221597904507.a n = A010137 n

theorem P11023755221597904507.correct : P11023755221597904507.Spec := by
  intro n
  simp only [A010137]

end A010137

/-!
# A010169: Continued fraction for sqrt(98).

The programs for A010169, the canonical program `A010169.P2113618535921421123` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010169 has offset 0).

The definition of A010169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010169.P2113618535921421123

`a(n-4)` with `a(0)=9, a(1)=1, a(2)=8, a(3)=1, a(4)=18`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010169

/-- `a(n-4)` -/
def P2113618535921421123.Spec : Prop :=
  ∀ n, (P2113618535921421123.a n : ℤ) = A010169 n

theorem P2113618535921421123.correct : P2113618535921421123.Spec := by
  intro n
  simp only [A010169]

end A010169

/-!
# A010173: Continued fraction for sqrt(107).

The programs for A010173, the canonical program `A010173.P15317188474989129054` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010173 has offset 0).

The definition of A010173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010173.P15317188474989129054

`ogf((10+2x+x^2+9x^3+x^4+2x^5+10x^6)/(1-x^6))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010173

/-- `ogf((10+2x+x^2+9x^3+x^4+2x^5+10x^6)/(1-x^6))` -/
def P15317188474989129054.Spec : Prop :=
  ∀ n, P15317188474989129054.a n = A010173 n

theorem P15317188474989129054.correct : P15317188474989129054.Spec := by
  intro n
  simp only [A010173]

end A010173

/-!
# A010174: Continued fraction for sqrt(108).

The programs for A010174, the canonical program `A010174.P13678326852313186956` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010174 has offset 0).

The definition of A010174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010174.P13678326852313186956

`ogf((10+2x+x^2+x^3+4x^4+x^5+x^6+2x^7+10x^8)/(1-x^8))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010174

/-- `ogf((10+2x+x^2+x^3+4x^4+x^5+x^6+2x^7+10x^8)/(1-x^8))` -/
def P13678326852313186956.Spec : Prop :=
  ∀ n, P13678326852313186956.a n = A010174 n

theorem P13678326852313186956.correct : P13678326852313186956.Spec := by
  intro n
  simp only [A010174]

end A010174

/-!
# A010176: Continued fraction for sqrt(111).

The programs for A010176, the canonical program `A010176.P14063563762761643568` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010176 has offset 0).

The definition of A010176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010176.P14063563762761643568

`ogf((10+x+x^2+6x^3+x^4+x^5+10x^6)/(1-x^6))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010176

/-- `ogf((10+x+x^2+6x^3+x^4+x^5+10x^6)/(1-x^6))` -/
def P14063563762761643568.Spec : Prop :=
  ∀ n, P14063563762761643568.a n = A010176 n

theorem P14063563762761643568.correct : P14063563762761643568.Spec := by
  intro n
  simp only [A010176]

end A010176

/-!
# A010177: Continued fraction for sqrt(112).

The programs for A010177, the canonical program `A010177.P5098866238992721641` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010177 has offset 0).

The definition of A010177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010177.P5098866238992721641

`a(n-6)` with `a(0)=10, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=1, a(6)=20`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010177

/-- `a(n-6)` -/
def P5098866238992721641.Spec : Prop :=
  ∀ n, (P5098866238992721641.a n : ℤ) = A010177 n

theorem P5098866238992721641.correct : P5098866238992721641.Spec := by
  intro n
  simp only [A010177]

end A010177

/-!
# A010178: Continued fraction for sqrt(113).

The programs for A010178, the canonical program `A010178.P5471039329127057163` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010178 has offset 0).

The definition of A010178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010178.P5471039329127057163

`a(n-9)` with `a(0)=10, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=1, a(7)=1, a(8)=1, a(9)=20`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010178

/-- `a(n-9)` -/
def P5471039329127057163.Spec : Prop :=
  ∀ n, (P5471039329127057163.a n : ℤ) = A010178 n

theorem P5471039329127057163.correct : P5471039329127057163.Spec := by
  intro n
  simp only [A010178]

end A010178

/-!
# A010179: Continued fraction for sqrt(114).

The programs for A010179, the canonical program `A010179.P15435759871491533113` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010179 has offset 0).

The definition of A010179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010179.P15435759871491533113

`ogf((10+x+2x^2+10x^3+2x^4+x^5+10x^6)/(1-x^6))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010179

/-- `ogf((10+x+2x^2+10x^3+2x^4+x^5+10x^6)/(1-x^6))` -/
def P15435759871491533113.Spec : Prop :=
  ∀ n, P15435759871491533113.a n = A010179 n

theorem P15435759871491533113.correct : P15435759871491533113.Spec := by
  intro n
  simp only [A010179]

end A010179

/-!
# A010180: Continued fraction for sqrt(115).

The programs for A010180, the canonical program `A010180.P9568615604376134` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010180 has offset 0).

The definition of A010180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010180.P9568615604376134

`ogf((10+x+2x^2+x^3+x^4+x^5+x^6+x^7+2x^8+x^9+10x^10)/(1-x^10))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010180

/-- `ogf((10+x+2x^2+x^3+x^4+x^5+x^6+x^7+2x^8+x^9+10x^10)/(1-x^10))` -/
def P9568615604376134.Spec : Prop :=
  ∀ n, P9568615604376134.a n = A010180 n

theorem P9568615604376134.correct : P9568615604376134.Spec := by
  intro n
  simp only [A010180]

end A010180

/-!
# A010181: Continued fraction for sqrt(116).

The programs for A010181, the canonical program `A010181.P11185727114593998007` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010181 has offset 0).

The definition of A010181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010181.P11185727114593998007

`ogf((10+x+3x^2+2x^3+x^4+4x^5+x^6+2x^7+3x^8+x^9+10x^10)/(1-x^10))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010181

/-- `ogf((10+x+3x^2+2x^3+x^4+4x^5+x^6+2x^7+3x^8+x^9+10x^10)/(1-x^10))` -/
def P11185727114593998007.Spec : Prop :=
  ∀ n, P11185727114593998007.a n = A010181 n

theorem P11185727114593998007.correct : P11185727114593998007.Spec := by
  intro n
  simp only [A010181]

end A010181

/-!
# A010186: Continued fraction for sqrt(125).

The programs for A010186, the canonical program `A010186.P3851931292454270778` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010186 has offset 0).

The definition of A010186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010186.P3851931292454270778

`a(n-5)` with `a(0)=11, a(1)=5, a(2)=1, a(3)=1, a(4)=5, a(5)=22`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010186

/-- `a(n-5)` -/
def P3851931292454270778.Spec : Prop :=
  ∀ n, (P3851931292454270778.a n : ℤ) = A010186 n

theorem P3851931292454270778.correct : P3851931292454270778.Spec := by
  intro n
  simp only [A010186]

end A010186

/-!
# A010197: Continued fraction for sqrt(138).

The programs for A010197, the canonical program `A010197.P13305100349425232448` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010197 has offset 0).

The definition of A010197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010197.P13305100349425232448

`a(n-4)` with `a(0)=11, a(1)=1, a(2)=2, a(3)=1, a(4)=22`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010197

/-- `a(n-4)` -/
def P13305100349425232448.Spec : Prop :=
  ∀ n, (P13305100349425232448.a n : ℤ) = A010197 n

theorem P13305100349425232448.correct : P13305100349425232448.Spec := by
  intro n
  simp only [A010197]

end A010197

