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
import Seq.B001.C010
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A081804: Hypotenuses of primitive Pythagorean triangles sorted on semiperimeter.

The programs for A081804, there is no canonical definition to state claims against.
-/

/-! ## A081804.P9680093646607755652

`A340375(A230138(n+1))+A103606(3*n+3)`
-/

namespace A081804.P9680093646607755652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 (A230138 (n + 1)).toNat + A103606 (3 * n + 3)

end

end A081804.P9680093646607755652

/-! ## A081804.P6151399058022907601

`A322437(A141302(3*n+1))+A103606(3*(n+1))`
-/

namespace A081804.P6151399058022907601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (A141302 (3 * n + 1)).toNat + A103606 (3 * (n + 1))

end

end A081804.P6151399058022907601

/-! ## A081804.P17516699432183735467

`A010051(A142135(n+1))*A103606(3*n+3)`
-/

namespace A081804.P17516699432183735467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A142135 (n + 1)).toNat * A103606 (3 * n + 3)

end

end A081804.P17516699432183735467

/-! ## A081804.P4795824138340876200

`A103606(3*(n+1))%A103617(A285598(3*n+1))`
-/

namespace A081804.P4795824138340876200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103606 (3 * (n + 1))) (A103617 (A285598 (3 * n + 1)).toNat)

end

end A081804.P4795824138340876200

/-! ## A081804.P17332853492099655490

`A121373(A016038(n+5))+A103606(3*n+3)`
-/

namespace A081804.P17332853492099655490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A016038 (n + 5)).toNat + A103606 (3 * n + 3)

end

end A081804.P17332853492099655490

/-! ## A081804.P6654245728006595718

`A103606(3*(n+1))%A103617(A250120(n))`
-/

namespace A081804.P6654245728006595718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103606 (3 * (n + 1))) (A103617 (A250120 n).toNat)

end

end A081804.P6654245728006595718

/-! ## A081804.P1607598143339462454

`A103606(A033627(n+2)+2)%A272607(n+1)`
-/

namespace A081804.P1607598143339462454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103606 (A033627 (n + 2) + 2).toNat) (A272607 (n + 1))

end

end A081804.P1607598143339462454

/-! ## A081804.P4212979643927272580

`A103606(3*(n+1))+A000122(A103629(3*n+4))`
-/

namespace A081804.P4212979643927272580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * (n + 1)) + A000122 (A103629 (3 * n + 4)).toNat

end

end A081804.P4212979643927272580

/-! ## A081804.P2149115512776253714

`A103606(3*n+3)+A000007(A014486(n+3))`
-/

namespace A081804.P2149115512776253714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 3) + A000007 (A014486 (n + 3)).toNat

end

end A081804.P2149115512776253714

/-! ## A081804.P1053420632370968446

`A103636(A103603(2*(n+2)))+A103606(3*(n+1))`
-/

namespace A081804.P1053420632370968446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103636 (A103603 (2 * (n + 2))).toNat + A103606 (3 * (n + 1))

end

end A081804.P1053420632370968446

/-! ## A081804.P7180809944552217071

`A103606(n+2+record[A099375(n)])`
-/

namespace A081804.P7180809944552217071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 ((n + 2 : ℤ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081804.P7180809944552217071

/-! ## A081804.P16218264958485336449

`A103606(3*n+3)+A000007(A033442(n+2))`
-/

namespace A081804.P16218264958485336449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 3) + A000007 (A033442 (n + 2)).toNat

end

end A081804.P16218264958485336449

/-! ## A081804.P8540655470880938257

`A103606(Δ[A016777(A000124(n))])`
-/

namespace A081804.P8540655470880938257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (f1 (n + 1) - f1 n).toNat

end

end A081804.P8540655470880938257

/-! ## A081804.P15359864884353488443

`A103606(Δ[A016777(A000217(n))])`
-/

namespace A081804.P15359864884353488443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (f1 (n + 1) - f1 n).toNat

end

end A081804.P15359864884353488443

/-! ## A081804.P18339396844465509146

`A001222(A198469(n+2))*A103606(3*n+3)`
-/

namespace A081804.P18339396844465509146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A198469 (n + 2)).toNat * A103606 (3 * n + 3)

end

end A081804.P18339396844465509146

/-! ## A081804.P11371432318117663934

`A103606(A016789(n)+1)+A000038(A059268(n))`
-/

namespace A081804.P11371432318117663934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (A016789 n + 1).toNat + A000038 (A059268 n).toNat

end

end A081804.P11371432318117663934

/-!
# A081805: a(n) = n minus (largest prime power in n factorization); a(1) = 0.

The programs for A081805, there is no canonical definition to state claims against.
-/

/-! ## A081805.P1304684837609909410

`1-A034699(n+1)+n`
-/

namespace A081805.P1304684837609909410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A034699 (n + 1) + (n : ℤ)

end

end A081805.P1304684837609909410

/-! ## A081805.P17010035744562791735

`ceil(n-n/A284600(n+1))`
-/

namespace A081805.P17010035744562791735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (n : ℚ) / (A284600 (n + 1) : ℚ)⌉

end

end A081805.P17010035744562791735

/-! ## A081805.P7100756378573227692

`A024000(A034699(n+1))+n`
-/

namespace A081805.P7100756378573227692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A034699 (n + 1)).toNat + (n : ℤ)

end

end A081805.P7100756378573227692

/-! ## A081805.P11497766981958397579

`-(A034699(n+1)+A001478(n+1))`
-/

namespace A081805.P11497766981958397579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A034699 (n + 1) + A001478 (n + 1))

end

end A081805.P11497766981958397579

/-! ## A081805.P16945776738729603647

`(A284600(n+1)-1)*A366649(n+1)`
-/

namespace A081805.P16945776738729603647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284600 (n + 1) - 1) * A366649 (n + 1)

end

end A081805.P16945776738729603647

/-! ## A081805.P14037117957320963635

`n+1-(A057110(n+1)+A002034(n+1))`
-/

namespace A081805.P14037117957320963635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A057110 (n + 1) + A002034 (n + 1))

end

end A081805.P14037117957320963635

/-! ## A081805.P8907951133969968477

`abs(A131738(n)/A284600(n+1)-A131738(n))`
-/

namespace A081805.P8907951133969968477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A131738 n : ℚ) / (A284600 (n + 1) : ℚ) - (A131738 n : ℚ)|

end

end A081805.P8907951133969968477

/-! ## A081805.P15023177187824518720

`A048671(n+1)-A048671(n+1)/A284600(n+1)`
-/

namespace A081805.P15023177187824518720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048671 (n + 1) : ℚ) - (A048671 (n + 1) : ℚ) / (A284600 (n + 1) : ℚ)

end

end A081805.P15023177187824518720

/-! ## A081805.P16422112147419044601

`A004526(A103517(n)-A103517(n)/A284600(n+1))`
-/

namespace A081805.P16422112147419044601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A103517 n : ℚ) - (A103517 n : ℚ) / (A284600 (n + 1) : ℚ))).toNat

end

end A081805.P16422112147419044601

/-! ## A081805.P16100346068830681833

`A008619(2*n)-A034699(A008619(2*n))`
-/

namespace A081805.P16100346068830681833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A034699 (A008619 (2 * n)).toNat

end

end A081805.P16100346068830681833

/-! ## A081805.P7967141641885066778

`1-A210208(A210241(n+1))+n`
-/

namespace A081805.P7967141641885066778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A210208 (A210241 (n + 1)).toNat + (n : ℤ)

end

end A081805.P7967141641885066778

/-! ## A081805.P3843977317875567715

`2*(n+1)-A081472(n+1)`
-/

namespace A081805.P3843977317875567715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A081472 (n + 1)

end

end A081805.P3843977317875567715

/-! ## A081805.P17968516174416460752

`A163300(n+1)%A081472(n+1)`
-/

namespace A081805.P17968516174416460752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A081472 (n + 1))

end

end A081805.P17968516174416460752

/-! ## A081805.P13683440127708500280

`A020725(n+1)-A081472(n+1)+n`
-/

namespace A081805.P13683440127708500280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A081472 (n + 1) + (n : ℤ)

end

end A081805.P13683440127708500280

/-! ## A081805.P779246339915833586

`n+1-A000027(A081472(n+1)-(n+1))`
-/

namespace A081805.P779246339915833586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000027 (A081472 (n + 1) - (n + 1 : ℤ)).toNat

end

end A081805.P779246339915833586

/-! ## A081805.P12526150429335306779

`A048671(n+1)-gcd(A048671(n+1), A081472(n+1))`
-/

namespace A081805.P12526150429335306779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) - (Int.gcd (A048671 (n + 1)) (A081472 (n + 1)) : ℤ)

end

end A081805.P12526150429335306779

/-! ## A081805.P5837635809483812434

`A001478(A081472(n+1)+A001478(n+1))-A001478(n+1)`
-/

namespace A081805.P5837635809483812434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A081472 (n + 1) + A001478 (n + 1)).toNat - A001478 (n + 1)

end

end A081805.P5837635809483812434

/-! ## A081805.P2738470454170425447

`1-sqrt(A274006((n+1)²))+n`
-/

namespace A081805.P2738470454170425447
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (A274006 ((n + 1) ^ 2) : ℝ) + (n : ℝ)

end

end A081805.P2738470454170425447

/-!
# A081807: Numbers k such that the largest prime power factor of k equals floor(sqrt(k)).

The programs for A081807, there is no canonical definition to state claims against.
-/

/-! ## A081807.P4381359901157449108

`eq[A000196(n), A034699(n+1)]+1`
-/

namespace A081807.P4381359901157449108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081807.P4381359901157449108

/-! ## A081807.P11075569992489550927

`A020725(eq[A000196(n), A034699(n+1)])`
-/

namespace A081807.P11075569992489550927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A081807.P11075569992489550927

/-! ## A081807.P11841766120567443393

`A061767(eq[A000196(n), A034699(n+1)])`
-/

namespace A081807.P11841766120567443393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A081807.P11841766120567443393

/-! ## A081807.P9503522411880233967

`eq[A000196(n), A034699(A066182(n+1))]`
-/

namespace A081807.P9503522411880233967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081807.P9503522411880233967

/-! ## A081807.P5672792266143122112

`A335024(eq[A000196(n), A034699(n+1)])`
-/

namespace A081807.P5672792266143122112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A081807.P5672792266143122112

/-!
# A081808: Numbers m such that the largest prime power in the factorization of m equals phi(m).

The programs for A081808, the canonical program `A081808.P731403091454195757` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081808 has offset 1).

The definition of A081808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081808.P731403091454195757

`2*a(n-1)` with `a(0)=12`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081808

/-- `2*a(n-1)` -/
def P731403091454195757.Spec : Prop :=
  ∀ n, (P731403091454195757.a n : ℤ) = A081808 (n + 1)

theorem P731403091454195757.correct : P731403091454195757.Spec := by
  intro n
  simp only [A081808, Nat.add_sub_cancel]

end A081808

/-! ## A081808.P4524641368393617212

`3*A020707(n)`
-/

namespace A081808.P4524641368393617212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020707 n

end

end A081808.P4524641368393617212

namespace A081808

/-- `3*A020707(n)` -/
def P4524641368393617212.Spec : Prop :=
  ∀ n, P4524641368393617212.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P9918917244853413923

`4*A007283(n)`
-/

namespace A081808.P9918917244853413923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007283 n

end

end A081808.P9918917244853413923

namespace A081808

/-- `4*A007283(n)` -/
def P9918917244853413923.Spec : Prop :=
  ∀ n, P9918917244853413923.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P6394147252435755337

`2^n*12`
-/

namespace A081808.P6394147252435755337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * 12

end

end A081808.P6394147252435755337

namespace A081808

/-- `2^n*12` -/
def P6394147252435755337.Spec : Prop :=
  ∀ n, (P6394147252435755337.a n : ℤ) = A081808 (n + 1)

end A081808

/-! ## A081808.P11930761709377818144

`lcm(3, 2^(n+2))`
-/

namespace A081808.P11930761709377818144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (2 ^ (n + 2))

end

end A081808.P11930761709377818144

namespace A081808

/-- `lcm(3, 2^(n+2))` -/
def P11930761709377818144.Spec : Prop :=
  ∀ n, (P11930761709377818144.a n : ℤ) = A081808 (n + 1)

end A081808

/-! ## A081808.P6329688204437037197

`a(n-1)+a(n-1)` with `a(0)=12`
-/

namespace A081808.P6329688204437037197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  a (n - 1) + a (n - 1)

end

end A081808.P6329688204437037197

namespace A081808

/-- `a(n-1)+a(n-1)` -/
def P6329688204437037197.Spec : Prop :=
  ∀ n, (P6329688204437037197.a n : ℤ) = A081808 (n + 1)

theorem P6329688204437037197.correct : P6329688204437037197.Spec := by
  intro n
  simp only [A081808, Nat.add_sub_cancel, A081808.P6329688204437037197.a, A081808.P731403091454195757.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A081808

/-! ## A081808.P13323411551172676975

`or(2^(n+2), Δ[2^(n+3)])`
-/

namespace A081808.P13323411551172676975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ (n + 2) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A081808.P13323411551172676975

namespace A081808

/-- `or(2^(n+2), Δ[2^(n+3)])` -/
def P13323411551172676975.Spec : Prop :=
  ∀ n, P13323411551172676975.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P15951597738983775518

`xor(2^(n+2), Δ[2^(n+3)])`
-/

namespace A081808.P15951597738983775518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ (n + 2) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A081808.P15951597738983775518

namespace A081808

/-- `xor(2^(n+2), Δ[2^(n+3)])` -/
def P15951597738983775518.Spec : Prop :=
  ∀ n, P15951597738983775518.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P9603201587235839546

`record[A112033(n)]`
-/

namespace A081808.P9603201587235839546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081808.P9603201587235839546

namespace A081808

/-- `record[A112033(n)]` -/
def P9603201587235839546.Spec : Prop :=
  ∀ n, P9603201587235839546.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P6455807388564699179

`A007283(n+2)`
-/

namespace A081808.P6455807388564699179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 2)

end

end A081808.P6455807388564699179

namespace A081808

/-- `A007283(n+2)` -/
def P6455807388564699179.Spec : Prop :=
  ∀ n, P6455807388564699179.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P2529833750380643169

`A091629(n+2)`
-/

namespace A081808.P2529833750380643169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091629 (n + 2)

end

end A081808.P2529833750380643169

namespace A081808

/-- `A091629(n+2)` -/
def P2529833750380643169.Spec : Prop :=
  ∀ n, P2529833750380643169.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P2106779683889268723

`A132477(n+2)`
-/

namespace A081808.P2106779683889268723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132477 (n + 2)

end

end A081808.P2106779683889268723

namespace A081808

/-- `A132477(n+2)` -/
def P2106779683889268723.Spec : Prop :=
  ∀ n, P2106779683889268723.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P11148631877776026473

`A003945(n+3)`
-/

namespace A081808.P11148631877776026473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 3)

end

end A081808.P11148631877776026473

namespace A081808

/-- `A003945(n+3)` -/
def P11148631877776026473.Spec : Prop :=
  ∀ n, P11148631877776026473.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P9793948798682684474

`A042950(n+3)`
-/

namespace A081808.P9793948798682684474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (n + 3)

end

end A081808.P9793948798682684474

namespace A081808

/-- `A042950(n+3)` -/
def P9793948798682684474.Spec : Prop :=
  ∀ n, P9793948798682684474.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P6432418603561023505

`A058764(n+3)`
-/

namespace A081808.P6432418603561023505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 (n + 3)

end

end A081808.P6432418603561023505

namespace A081808

/-- `A058764(n+3)` -/
def P6432418603561023505.Spec : Prop :=
  ∀ n, P6432418603561023505.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P12516653520781557644

`A082505(n+3)`
-/

namespace A081808.P12516653520781557644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 (n + 3)

end

end A081808.P12516653520781557644

namespace A081808

/-- `A082505(n+3)` -/
def P12516653520781557644.Spec : Prop :=
  ∀ n, P12516653520781557644.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P10836614160236762380

`A111286(n+4)`
-/

namespace A081808.P10836614160236762380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 4)

end

end A081808.P10836614160236762380

namespace A081808

/-- `A111286(n+4)` -/
def P10836614160236762380.Spec : Prop :=
  ∀ n, P10836614160236762380.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P12490931407075985448

`A112033(2*n)`
-/

namespace A081808.P12490931407075985448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112033 (2 * n)

end

end A081808.P12490931407075985448

namespace A081808

/-- `A112033(2*n)` -/
def P12490931407075985448.Spec : Prop :=
  ∀ n, P12490931407075985448.a n = A081808 (n + 1)

end A081808

/-! ## A081808.P16864252055547376342

`A087009(n+5)`
-/

namespace A081808.P16864252055547376342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (n + 5)

end

end A081808.P16864252055547376342

namespace A081808

/-- `A087009(n+5)` -/
def P16864252055547376342.Spec : Prop :=
  ∀ n, P16864252055547376342.a n = A081808 (n + 1)

end A081808

/-!
# A081810: If n = p_1^e_1 * ... * p_k^e_k, p_1 < ... < p_k primes, then a(n) = Max{ p_i*e_i }.

The programs for A081810, there is no canonical definition to state claims against.
-/

/-! ## A081810.P13199584447824017488

`A081811(A034699(n+1))%A086531(n+1)`
-/

namespace A081810.P13199584447824017488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081811 (A034699 (n + 1)).toNat) (A086531 (n + 1))

end

end A081810.P13199584447824017488

/-! ## A081810.P16486607291151846622

`A001414(A034699(n+1)%A269453(n+1))`
-/

namespace A081810.P16486607291151846622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.tmod (A034699 (n + 1)) (A269453 (n + 1))).toNat

end

end A081810.P16486607291151846622

/-! ## A081810.P17405950118807986185

`A001414(A034699(n+1))%A291636(n+1)`
-/

namespace A081810.P17405950118807986185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (A034699 (n + 1)).toNat) (A291636 (n + 1))

end

end A081810.P17405950118807986185

/-! ## A081810.P6058472885743083248

`A001222(A133276(n+1))*A001414(A034699(n+1))`
-/

namespace A081810.P6058472885743083248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133276 (n + 1)).toNat * A001414 (A034699 (n + 1)).toNat

end

end A081810.P6058472885743083248

/-! ## A081810.P6775144504901020798

`A001414(A034699(n+1))*A010051(A133277(n+1))`
-/

namespace A081810.P6775144504901020798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A034699 (n + 1)).toNat * A010051 (A133277 (n + 1)).toNat

end

end A081810.P6775144504901020798

/-!
# A081811: If n = p_1^e_1 * ... * p_k^e_k, p_1 < ... < p_k primes, then a(n) = min{ p_i*e_i }.

The programs for A081811, there is no canonical definition to state claims against.
-/

/-! ## A081811.P6204739074590626036

`A353931(A064988(n+1))`
-/

namespace A081811.P6204739074590626036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353931 (A064988 (n + 1)).toNat

end

end A081811.P6204739074590626036

/-! ## A081811.P215282300551230699

`A081810(A034684(n+1))%A086531(n+1)`
-/

namespace A081811.P215282300551230699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081810 (A034684 (n + 1)).toNat) (A086531 (n + 1))

end

end A081811.P215282300551230699

/-! ## A081811.P6102775792270333098

`A001414(A034684(n+1)%A261311(n+1))`
-/

namespace A081811.P6102775792270333098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.tmod (A034684 (n + 1)) (A261311 (n + 1))).toNat

end

end A081811.P6102775792270333098

/-! ## A081811.P12957782664459739015

`A001414(A034684(n+1))%A079704(A038622(n))`
-/

namespace A081811.P12957782664459739015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (A034684 (n + 1)).toNat) (A079704 (A038622 n).toNat)

end

end A081811.P12957782664459739015

/-! ## A081811.P4402783247683241359

`A001414(A034684(n+1))+A000038(A133276(n+1))`
-/

namespace A081811.P4402783247683241359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A034684 (n + 1)).toNat + A000038 (A133276 (n + 1)).toNat

end

end A081811.P4402783247683241359

/-! ## A081811.P15168556121798901286

`A001414(A034684(n+1))+A000038(A133277(n+1))`
-/

namespace A081811.P15168556121798901286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A034684 (n + 1)).toNat + A000038 (A133277 (n + 1)).toNat

end

end A081811.P15168556121798901286

/-! ## A081811.P16891875036897921932

`A001221(A181526(n+1))*A001414(A034684(n+1))`
-/

namespace A081811.P16891875036897921932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181526 (n + 1)).toNat * A001414 (A034684 (n + 1)).toNat

end

end A081811.P16891875036897921932

/-!
# A081812: If n = p_1^e_1 * ... * p_k^e_k, p_1 < ... < p_k primes, then a(n) = Max{ Max(p_i, e_i) }.

The programs for A081812, there is no canonical definition to state claims against.
-/

/-! ## A081812.P15234138872433333531

`A381214(n+2)+A381212(n+2)`
-/

namespace A081812.P15234138872433333531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381214 (n + 2) + A381212 (n + 2)

end

end A081812.P15234138872433333531

/-! ## A081812.P16890389821458564539

`A263323(A064988(n+2))`
-/

namespace A081812.P16890389821458564539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (A064988 (n + 2)).toNat

end

end A081812.P16890389821458564539

/-! ## A081812.P4706293073111558450

`A061395(A064988(n+2)*A181819(n+2))`
-/

namespace A081812.P4706293073111558450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064988 (n + 2) * A181819 (n + 2)).toNat

end

end A081812.P4706293073111558450

/-! ## A081812.P2461164782672368607

`A061395(lcm(A064988(n+2), A181819(n+2)))`
-/

namespace A081812.P2461164782672368607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A064988 (n + 2)) (A181819 (n + 2)))

end

end A081812.P2461164782672368607

/-! ## A081812.P884422936607959547

`A381404(A304180(n+2))`
-/

namespace A081812.P884422936607959547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381404 (A304180 (n + 2)).toNat

end

end A081812.P884422936607959547

/-! ## A081812.P7903723252023518530

`A263323((n+2)*A105562(n+2))`
-/

namespace A081812.P7903723252023518530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 ((n + 2 : ℤ) * A105562 (n + 2)).toNat

end

end A081812.P7903723252023518530

/-!
# A081827: Successive differences of Hofstadter Q-sequence.

The programs for A081827, the canonical program `A081827.P14419077917004219734` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081827 has offset 1).

The definition of A081827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081827.P14419077917004219734

`A005185(n+2)-A005185(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081827

/-- `A005185(n+2)-A005185(n+1)` -/
def P14419077917004219734.Spec : Prop :=
  ∀ n, P14419077917004219734.a n = A081827 (n + 1)

theorem P14419077917004219734.correct : P14419077917004219734.Spec := by
  intro n
  simp only [A081827, Nat.add_sub_cancel]

end A081827

/-! ## A081827.P12886221001922412327

`Δ[a(n-a(n-1))+a(n-a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A081827.P12886221001922412327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - f1 (n - 1)) + f1 (n - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081827.P12886221001922412327

namespace A081827

/-- `Δ[a(n-a(n-1))+a(n-a(n-2))]` -/
def P12886221001922412327.Spec : Prop :=
  ∀ n, P12886221001922412327.a n = A081827 (n + 1)

end A081827

/-! ## A081827.P16252435169828354294

`Δ[A283469(n+1)+A283472(n+1)-A284019(n+1)]`
-/

namespace A081827.P16252435169828354294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283469 (n + 1) + (A283472 (n + 1) - A284019 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081827.P16252435169828354294

namespace A081827

/-- `Δ[A283469(n+1)+A283472(n+1)-A284019(n+1)]` -/
def P16252435169828354294.Spec : Prop :=
  ∀ n, P16252435169828354294.a n = A081827 (n + 1)

end A081827

/-! ## A081827.P11271261338250696777

`Δ[A005185(n+1)]`
-/

namespace A081827.P11271261338250696777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081827.P11271261338250696777

namespace A081827

/-- `Δ[A005185(n+1)]` -/
def P11271261338250696777.Spec : Prop :=
  ∀ n, P11271261338250696777.a n = A081827 (n + 1)

theorem P11271261338250696777.correct : P11271261338250696777.Spec := by
  intro n
  simp only [A081827, Nat.add_sub_cancel, A081827.P11271261338250696777.f1, A081827.P11271261338250696777.a, A081827.P14419077917004219734.a, SequenceMachineLib.memo_apply]

end A081827

/-! ## A081827.P16134297892050511317

`1-Δ[A239913(n+1)]`
-/

namespace A081827.P16134297892050511317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A081827.P16134297892050511317

namespace A081827

/-- `1-Δ[A239913(n+1)]` -/
def P16134297892050511317.Spec : Prop :=
  ∀ n, P16134297892050511317.a n = A081827 (n + 1)

end A081827

/-! ## A081827.P9353823384821829393

`Δ[A284478(n+1)+A055748(n+1)]`
-/

namespace A081827.P9353823384821829393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284478 (n + 1) + A055748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081827.P9353823384821829393

namespace A081827

/-- `Δ[A284478(n+1)+A055748(n+1)]` -/
def P9353823384821829393.Spec : Prop :=
  ∀ n, P9353823384821829393.a n = A081827 (n + 1)

end A081827

/-! ## A081827.P10465259261493231439

`Δ[A004001(n+1)-A284019(n+1)]`
-/

namespace A081827.P10465259261493231439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A284019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081827.P10465259261493231439

namespace A081827

/-- `Δ[A004001(n+1)-A284019(n+1)]` -/
def P10465259261493231439.Spec : Prop :=
  ∀ n, P10465259261493231439.a n = A081827 (n + 1)

end A081827

/-! ## A081827.P3831725168302868596

`A239913(n+1)+1-A239913(n+2)`
-/

namespace A081827.P3831725168302868596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239913 (n + 1) + (1 - A239913 (n + 2))

end

end A081827.P3831725168302868596

namespace A081827

/-- `A239913(n+1)+1-A239913(n+2)` -/
def P3831725168302868596.Spec : Prop :=
  ∀ n, P3831725168302868596.a n = A081827 (n + 1)

end A081827

/-!
# A081828: Numbers n such that 2 successive terms of Hofstadter Q-sequence are the same.

The programs for A081828, the canonical program `A081828.P15683832804009048373` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081828 has offset 1).

The definition of A081828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081828.P15683832804009048373

`eq[0, A081827(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081828

/-- `eq[0, A081827(n+1)]+1` -/
def P15683832804009048373.Spec : Prop :=
  ∀ n, (P15683832804009048373.a n : ℤ) = A081828 (n + 1)

theorem P15683832804009048373.correct : P15683832804009048373.Spec := by
  intro n
  simp only [A081828, Nat.add_sub_cancel]

end A081828

/-! ## A081828.P1993800023384612646

`record[gcd(n+2, A081827(n+2))]`
-/

namespace A081828.P1993800023384612646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A081827 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081828.P1993800023384612646

namespace A081828

/-- `record[gcd(n+2, A081827(n+2))]` -/
def P1993800023384612646.Spec : Prop :=
  ∀ n, (P1993800023384612646.a n : ℤ) = A081828 (n + 1)

end A081828

/-! ## A081828.P16715275899365324116

`eq[A005185(n+2), A005185(n+1)]+1`
-/

namespace A081828.P16715275899365324116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081828.P16715275899365324116

namespace A081828

/-- `eq[A005185(n+2), A005185(n+1)]+1` -/
def P16715275899365324116.Spec : Prop :=
  ∀ n, (P16715275899365324116.a n : ℤ) = A081828 (n + 1)

end A081828

/-! ## A081828.P6263201154916703457

`record[n+1-lcm(A000217(n), A081827(n+1))]`
-/

namespace A081828.P6263201154916703457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (A000217 n) (A081827 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081828.P6263201154916703457

namespace A081828

/-- `record[n+1-lcm(A000217(n), A081827(n+1))]` -/
def P6263201154916703457.Spec : Prop :=
  ∀ n, P6263201154916703457.a n = A081828 (n + 1)

end A081828

/-! ## A081828.P12657384378859540307

`eq[A000038(n), A081827(A028310(n))]`
-/

namespace A081828.P12657384378859540307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081828.P12657384378859540307

namespace A081828

/-- `eq[A000038(n), A081827(A028310(n))]` -/
def P12657384378859540307.Spec : Prop :=
  ∀ n, (P12657384378859540307.a n : ℤ) = A081828 (n + 1)

end A081828

/-! ## A081828.P4658387203548861804

`eq[A000007(n), A081827(A123108(2*n))]`
-/

namespace A081828.P4658387203548861804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081828.P4658387203548861804

namespace A081828

/-- `eq[A000007(n), A081827(A123108(2*n))]` -/
def P4658387203548861804.Spec : Prop :=
  ∀ n, (P4658387203548861804.a n : ℤ) = A081828 (n + 1)

end A081828

/-!
# A081829: Numbers k such that the k-th term of Hofstadter Q-sequence is > (k+1)-th term.

The programs for A081829, the canonical program `A081829.P11769067708578577182` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081829 has offset 1).

The definition of A081829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4888 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081829.P11769067708578577182

`lt[A081827(n+1), 0]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081829

/-- `lt[A081827(n+1), 0]+1` -/
def P11769067708578577182.Spec : Prop :=
  ∀ n, (P11769067708578577182.a n : ℤ) = A081829 (n + 1)

theorem P11769067708578577182.correct : P11769067708578577182.Spec := by
  intro n
  simp only [A081829, Nat.add_sub_cancel]

end A081829

/-! ## A081829.P11224155794334910609

`lt[A081827(A028310(n)), 0]`
-/

namespace A081829.P11224155794334910609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081829.P11224155794334910609

namespace A081829

/-- `lt[A081827(A028310(n)), 0]` -/
def P11224155794334910609.Spec : Prop :=
  ∀ n, (P11224155794334910609.a n : ℤ) = A081829 (n + 1)

end A081829

/-! ## A081829.P2559552196199311562

`lt[A005185(n+2), A005185(n+1)]+1`
-/

namespace A081829.P2559552196199311562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A081829.P2559552196199311562

namespace A081829

/-- `lt[A005185(n+2), A005185(n+1)]+1` -/
def P2559552196199311562.Spec : Prop :=
  ∀ n, (P2559552196199311562.a n : ℤ) = A081829 (n + 1)

end A081829

/-! ## A081829.P7005722686233378400

`lt[A005185(n+1), A005185(A028310(n))]`
-/

namespace A081829.P7005722686233378400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081829.P7005722686233378400

namespace A081829

/-- `lt[A005185(n+1), A005185(A028310(n))]` -/
def P7005722686233378400.Spec : Prop :=
  ∀ n, (P7005722686233378400.a n : ℤ) = A081829 (n + 1)

end A081829

/-! ## A081829.P17524171617971570031

`lt[A081827(A065033(2*n)), 0]`
-/

namespace A081829.P17524171617971570031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081829.P17524171617971570031

namespace A081829

/-- `lt[A081827(A065033(2*n)), 0]` -/
def P17524171617971570031.Spec : Prop :=
  ∀ n, (P17524171617971570031.a n : ℤ) = A081829 (n + 1)

end A081829

/-! ## A081829.P9836377371013849576

`lt[A005185(n+1), A005185(A065033(2*n))]`
-/

namespace A081829.P9836377371013849576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081829.P9836377371013849576

namespace A081829

/-- `lt[A005185(n+1), A005185(A065033(2*n))]` -/
def P9836377371013849576.Spec : Prop :=
  ∀ n, (P9836377371013849576.a n : ℤ) = A081829 (n + 1)

end A081829

/-! ## A081829.P1127306955189134989

`lt[A081827(A233583(n+1)), 0]`
-/

namespace A081829.P1127306955189134989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081829.P1127306955189134989

namespace A081829

/-- `lt[A081827(A233583(n+1)), 0]` -/
def P1127306955189134989.Spec : Prop :=
  ∀ n, (P1127306955189134989.a n : ℤ) = A081829 (n + 1)

end A081829

/-! ## A081829.P12899258990955563694

`lt[A005185(n+1), A005185(A233583(n+1))]`
-/

namespace A081829.P12899258990955563694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081829.P12899258990955563694

namespace A081829

/-- `lt[A005185(n+1), A005185(A233583(n+1))]` -/
def P12899258990955563694.Spec : Prop :=
  ∀ n, (P12899258990955563694.a n : ℤ) = A081829 (n + 1)

end A081829

/-!
# A081830: Numbers k such that the k-th term of Hofstadter Q-sequence is < (k+1)-th term.

The programs for A081830, the canonical program `A081830.P915595536073595954` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081830 has offset 1).

The definition of A081830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081830.P1092765260438979056

`record[A089029(n+3)-1]`
-/

namespace A081830.P1092765260438979056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089029 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081830.P1092765260438979056

namespace A081830

/-- `record[A089029(n+3)-1]` -/
def P1092765260438979056.Spec : Prop :=
  ∀ n, P1092765260438979056.a n = A081830 (n + 1)

end A081830

/-! ## A081830.P915595536073595954

`lt[0, A081827(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081830

/-- `lt[0, A081827(n+1)]+1` -/
def P915595536073595954.Spec : Prop :=
  ∀ n, (P915595536073595954.a n : ℤ) = A081830 (n + 1)

theorem P915595536073595954.correct : P915595536073595954.Spec := by
  intro n
  simp only [A081830, Nat.add_sub_cancel]

end A081830

/-! ## A081830.P13488650610614773566

`lt[0, A081827(A028310(n))]`
-/

namespace A081830.P13488650610614773566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081830.P13488650610614773566

namespace A081830

/-- `lt[0, A081827(A028310(n))]` -/
def P13488650610614773566.Spec : Prop :=
  ∀ n, (P13488650610614773566.a n : ℤ) = A081830 (n + 1)

end A081830

/-! ## A081830.P7007427629747853504

`lt[A005185(n+1), A005185(n+2)]+1`
-/

namespace A081830.P7007427629747853504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A081830.P7007427629747853504

namespace A081830

/-- `lt[A005185(n+1), A005185(n+2)]+1` -/
def P7007427629747853504.Spec : Prop :=
  ∀ n, (P7007427629747853504.a n : ℤ) = A081830 (n + 1)

end A081830

/-! ## A081830.P14261402555199131711

`lt[A005185(A028310(n)), A005185(n+1)]`
-/

namespace A081830.P14261402555199131711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081830.P14261402555199131711

namespace A081830

/-- `lt[A005185(A028310(n)), A005185(n+1)]` -/
def P14261402555199131711.Spec : Prop :=
  ∀ n, (P14261402555199131711.a n : ℤ) = A081830 (n + 1)

end A081830

/-! ## A081830.P1175285106493403555

`lt[0, A081827(A065033(2*n))]`
-/

namespace A081830.P1175285106493403555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081830.P1175285106493403555

namespace A081830

/-- `lt[0, A081827(A065033(2*n))]` -/
def P1175285106493403555.Spec : Prop :=
  ∀ n, (P1175285106493403555.a n : ℤ) = A081830 (n + 1)

end A081830

/-! ## A081830.P15544524397672961934

`lt[A005185(A233583(n+1)), A005185(n+1)]`
-/

namespace A081830.P15544524397672961934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081830.P15544524397672961934

namespace A081830

/-- `lt[A005185(A233583(n+1)), A005185(n+1)]` -/
def P15544524397672961934.Spec : Prop :=
  ∀ n, (P15544524397672961934.a n : ℤ) = A081830 (n + 1)

end A081830

/-!
# A081831: a(1)=a(2)=1, a(n) = a(a(n - a(n-1))) + a(n - a(n-2)).

The programs for A081831, the canonical program `A081831.P9698936377034548092` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081831 has offset 1).

The definition of A081831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081831.P9698936377034548092

`a(n-a(n-2))+a(a(n-a(n-1))-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081831

/-- `a(n-a(n-2))+a(a(n-a(n-1))-1)` -/
def P9698936377034548092.Spec : Prop :=
  ∀ n, (P9698936377034548092.a n : ℤ) = A081831 (n + 1)

theorem P9698936377034548092.correct : P9698936377034548092.Spec := by
  intro n
  simp only [A081831, Nat.add_sub_cancel]

end A081831

/-!
# A081832: a(1)=a(2)=1, a(n) = a(n+1-2*a(n-1)) + a(n-2*a(n-2)).

The programs for A081832, the canonical program `A081832.P11467570822560500377` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081832 has offset 1).

The definition of A081832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n+1-2*a(n-1))+a(n-2*a(n-2))` (program `A081832.P11467570822560500377`, by `A081832.P11467570822560500377.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081832.P11467570822560500377

`a(n+1-2*a(n-1))+a(n-2*a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081832

/-- `a(n+1-2*a(n-1))+a(n-2*a(n-2))` -/
def P11467570822560500377.Spec : Prop :=
  ∀ n, (P11467570822560500377.a n : ℤ) = A081832 (n + 1)

theorem P11467570822560500377.correct : P11467570822560500377.Spec := by
  intro n
  simp only [A081832, Nat.add_sub_cancel]

end A081832

/-! ## A081832.P13164569310357169560

`floor(A316627(n+1)/2)`
-/

namespace A081832.P13164569310357169560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A316627 (n + 1) : ℚ) / 2⌋

end

end A081832.P13164569310357169560

namespace A081832

/-- `floor(A316627(n+1)/2)` -/
def P13164569310357169560.Spec : Prop :=
  ∀ n, P13164569310357169560.a n = A081832 (n + 1)

end A081832

/-! ## A081832.P4980213406978420039

`A316627(n)-a(n-1)` with `a(0)=1`
-/

namespace A081832.P4980213406978420039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A316627 n - a (n - 1)

end

end A081832.P4980213406978420039

namespace A081832

/-- `A316627(n)-a(n-1)` -/
def P4980213406978420039.Spec : Prop :=
  ∀ n, P4980213406978420039.a n = A081832 (n + 1)

end A081832

/-! ## A081832.P4398762830723094890

`∑[char[A376116(2*n+1)]]`
-/

namespace A081832.P4398762830723094890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376116 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081832.P4398762830723094890

namespace A081832

/-- `∑[char[A376116(2*n+1)]]` -/
def P4398762830723094890.Spec : Prop :=
  ∀ n, (P4398762830723094890.a n : ℤ) = A081832 (n + 1)

end A081832

/-! ## A081832.P6306793780001362971

`round(A046699(comp[∑[2^n]]+1)/2)`
-/

namespace A081832.P6306793780001362971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046699 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2)

end

end A081832.P6306793780001362971

namespace A081832

/-- `round(A046699(comp[∑[2^n]]+1)/2)` -/
def P6306793780001362971.Spec : Prop :=
  ∀ n, P6306793780001362971.a n = A081832 (n + 1)

end A081832

/-! ## A081832.P2714564635835913739

`A004526(A316627(n+1))`
-/

namespace A081832.P2714564635835913739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A316627 (n + 1)).toNat

end

end A081832.P2714564635835913739

namespace A081832

/-- `A004526(A316627(n+1))` -/
def P2714564635835913739.Spec : Prop :=
  ∀ n, P2714564635835913739.a n = A081832 (n + 1)

end A081832

/-! ## A081832.P6284625473592888458

`A008619(A316627(n+1)-2)`
-/

namespace A081832.P6284625473592888458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A316627 (n + 1) - 2).toNat

end

end A081832.P6284625473592888458

namespace A081832

/-- `A008619(A316627(n+1)-2)` -/
def P6284625473592888458.Spec : Prop :=
  ∀ n, P6284625473592888458.a n = A081832 (n + 1)

end A081832

/-! ## A081832.P1915740745509275673

`A028242(or(1, A316627(n+1)))`
-/

namespace A081832.P1915740745509275673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A316627 (n + 1))).toNat

end

end A081832.P1915740745509275673

namespace A081832

/-- `A028242(or(1, A316627(n+1)))` -/
def P1915740745509275673.Spec : Prop :=
  ∀ n, P1915740745509275673.a n = A081832 (n + 1)

end A081832

/-!
# A081834: a(1)=1, a(n)=a(n-1)+4 if n is already in the sequence, a(n)=a(n-1)+3 otherwise.

The programs for A081834, there is no canonical definition to state claims against.
-/

/-! ## A081834.P14665818110112905192

`2*n+1+comp[A184483(n+1)]`
-/

namespace A081834.P14665818110112905192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081834.P14665818110112905192

/-! ## A081834.P13849503618963411794

`comp[A184483(n+1)]+2-A165747(n)`
-/

namespace A081834.P13849503618963411794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184483 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (2 - A165747 n)

end

end A081834.P13849503618963411794

/-! ## A081834.P5176845259155359771

`A284675(n+1)-(A284674(3*n+1)+n)`
-/

namespace A081834.P5176845259155359771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284675 (n + 1) - (A284674 (3 * n + 1) + (n : ℤ))

end

end A081834.P5176845259155359771

/-! ## A081834.P6817929893044435580

`A284678(n+1)-(A284677(3*n+1)+n)`
-/

namespace A081834.P6817929893044435580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - (A284677 (3 * n + 1) + (n : ℤ))

end

end A081834.P6817929893044435580

/-! ## A081834.P5754291414218583559

`A284677(A008486(n))+A081842(n+1)`
-/

namespace A081834.P5754291414218583559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284677 (A008486 n).toNat + A081842 (n + 1)

end

end A081834.P5754291414218583559

/-! ## A081834.P15616804593995935547

`A284677(A008486(n))+comp[A184485(n+1)]+2*n`
-/

namespace A081834.P15616804593995935547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284677 (A008486 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 * n : ℤ)

end

end A081834.P15616804593995935547

/-! ## A081834.P8959873434176506058

`A080667(n)+a(A008683(A271008(n+1)))` with `a(0)=1`
-/

namespace A081834.P8959873434176506058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080667 n + a (A008683 (A271008 (n + 1)).toNat).toNat

end

end A081834.P8959873434176506058

/-!
# A081835: a(1)=1, a(n) = a(n-1) + 5 if n is already in the sequence, a(n) = a(n-1) + 4 otherwise.

The programs for A081835, the canonical program `A081835.P3909569724700482251` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081835 has offset 1).

The definition of A081835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081835.P15999464067155181107

`comp[A184515(n+1)]+3*n+1`
-/

namespace A081835.P15999464067155181107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (3 * n + 1)

end

end A081835.P15999464067155181107

namespace A081835

/-- `comp[A184515(n+1)]+3*n+1` -/
def P15999464067155181107.Spec : Prop :=
  ∀ n, (P15999464067155181107.a n : ℤ) = A081835 (n + 1)

end A081835

/-! ## A081835.P3909569724700482251

`A016777(n)+comp[A007064(2*(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A081835

/-- `A016777(n)+comp[A007064(2*(n+1))]` -/
def P3909569724700482251.Spec : Prop :=
  ∀ n, P3909569724700482251.a n = A081835 (n + 1)

theorem P3909569724700482251.correct : P3909569724700482251.Spec := by
  intro n
  simp only [A081835, Nat.add_sub_cancel]

end A081835

/-! ## A081835.P1456826534223075463

`A016777(A004976(n))-A004937(A276854(n))`
-/

namespace A081835.P1456826534223075463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A004976 n).toNat - A004937 (A276854 n).toNat

end

end A081835.P1456826534223075463

namespace A081835

/-- `A016777(A004976(n))-A004937(A276854(n))` -/
def P1456826534223075463.Spec : Prop :=
  ∀ n, P1456826534223075463.a n = A081835 (n + 1)

end A081835

/-! ## A081835.P8638705712946085307

`A008619(A081843(2*n+1))`
-/

namespace A081835.P8638705712946085307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A081843 (2 * n + 1)).toNat

end

end A081835.P8638705712946085307

namespace A081835

/-- `A008619(A081843(2*n+1))` -/
def P8638705712946085307.Spec : Prop :=
  ∀ n, P8638705712946085307.a n = A081835 (n + 1)

end A081835

/-! ## A081835.P14948962837518782459

`A110654(A081843(2*n+1)+1)`
-/

namespace A081835.P14948962837518782459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A081843 (2 * n + 1) + 1).toNat

end

end A081835.P14948962837518782459

namespace A081835

/-- `A110654(A081843(2*n+1)+1)` -/
def P14948962837518782459.Spec : Prop :=
  ∀ n, P14948962837518782459.a n = A081835 (n + 1)

end A081835

/-! ## A081835.P12214653475878714340

`floor((A017305(n)-A329962(n+1))/2)`
-/

namespace A081835.P12214653475878714340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017305 n - A329962 (n + 1) : ℚ) / 2⌋

end

end A081835.P12214653475878714340

namespace A081835

/-- `floor((A017305(n)-A329962(n+1))/2)` -/
def P12214653475878714340.Spec : Prop :=
  ∀ n, P12214653475878714340.a n = A081835 (n + 1)

end A081835

/-! ## A081835.P4583212627081822092

`4*n+n+1-A123108(A329987(n+1))`
-/

namespace A081835.P4583212627081822092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + ((n + 1 : ℤ) - A123108 (A329987 (n + 1)).toNat)

end

end A081835.P4583212627081822092

namespace A081835

/-- `4*n+n+1-A123108(A329987(n+1))` -/
def P4583212627081822092.Spec : Prop :=
  ∀ n, P4583212627081822092.a n = A081835 (n + 1)

end A081835

/-! ## A081835.P7532484746741091145

`A016861(n)-A004526(A329987(n+1))`
-/

namespace A081835.P7532484746741091145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A004526 (A329987 (n + 1)).toNat

end

end A081835.P7532484746741091145

namespace A081835

/-- `A016861(n)-A004526(A329987(n+1))` -/
def P7532484746741091145.Spec : Prop :=
  ∀ n, P7532484746741091145.a n = A081835 (n + 1)

end A081835

/-! ## A081835.P18010794018733429096

`A004526(A017305(n)-A329962(n+1))`
-/

namespace A081835.P18010794018733429096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A017305 n - A329962 (n + 1)).toNat

end

end A081835.P18010794018733429096

namespace A081835

/-- `A004526(A017305(n)-A329962(n+1))` -/
def P18010794018733429096.Spec : Prop :=
  ∀ n, P18010794018733429096.a n = A081835 (n + 1)

end A081835

/-! ## A081835.P6706351115307736176

`A008619(A017281(n)-A329962(n+1))`
-/

namespace A081835.P6706351115307736176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A017281 n - A329962 (n + 1)).toNat

end

end A081835.P6706351115307736176

namespace A081835

/-- `A008619(A017281(n)-A329962(n+1))` -/
def P6706351115307736176.Spec : Prop :=
  ∀ n, P6706351115307736176.a n = A081835 (n + 1)

end A081835

/-!
# A081836: Let z(n) be the golden ratio (phi) truncated to n decimal digits; sequence gives maximum element in the continued fraction for z(n).

The programs for A081836, there is no canonical definition to state claims against.
-/

/-! ## A081836.P4333120534835930263

`A106177(A366453(n))+n`
-/

namespace A081836.P4333120534835930263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106177 (A366453 n).toNat + (n : ℤ)

end

end A081836.P4333120534835930263

/-! ## A081836.P7875891825508796556

`A377539(A158107(n))+n`
-/

namespace A081836.P7875891825508796556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377539 (A158107 n).toNat + (n : ℤ)

end

end A081836.P7875891825508796556

/-! ## A081836.P14207566531732576005

`A260222(A330677(n)+2)+n`
-/

namespace A081836.P14207566531732576005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (A330677 n + 2).toNat + (n : ℤ)

end

end A081836.P14207566531732576005

/-!
# A081839: a(1)=0, a(n)=a(n-1)+4 if n is already in the sequence, a(n)=a(n-1)+5 otherwise.

The programs for A081839, there is no canonical definition to state claims against.
-/

/-! ## A081839.P11608892355145815825

`A276571(A001844(2*n)-A025157(n))`
-/

namespace A081839.P11608892355145815825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A001844 (2 * n) - A025157 n).toNat

end

end A081839.P11608892355145815825

/-! ## A081839.P7202969092744739988

`A000194(A189056(n+1)+23*n²)`
-/

namespace A081839.P7202969092744739988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A189056 (n + 1) + (23 * n ^ 2 : ℤ)).toNat

end

end A081839.P7202969092744739988

/-! ## A081839.P12171797441011280728

`A016861(n)-A055642(A052952(n+1))`
-/

namespace A081839.P12171797441011280728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A055642 (A052952 (n + 1)).toNat

end

end A081839.P12171797441011280728

/-! ## A081839.P5081632575111660559

`A047416(3*n+2)-A100995(A122834(n+1))`
-/

namespace A081839.P5081632575111660559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047416 (3 * n + 2) - A100995 (A122834 (n + 1)).toNat

end

end A081839.P5081632575111660559

/-! ## A081839.P4072802276859836406

`A097448(A059552(3*(n+1))-4)`
-/

namespace A081839.P4072802276859836406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A059552 (3 * (n + 1)) - 4).toNat

end

end A081839.P4072802276859836406

/-!
# A081840: a(1)=0, a(n)=a(n-1)+3 if n is already in the sequence, a(n)=a(n-1)+4 otherwise.

The programs for A081840, the canonical program `A081840.P101306601361200037` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081840 has offset 1).

The definition of A081840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081840.P101306601361200037

`round(sqrt((n*(sqrt(3)+2))²+n))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081840

/-- `round(sqrt((n*(sqrt(3)+2))²+n))` -/
def P101306601361200037.Spec : Prop :=
  ∀ n, P101306601361200037.a n = A081840 (n + 1)

theorem P101306601361200037.correct : P101306601361200037.Spec := by
  intro n
  simp only [A081840, Nat.add_sub_cancel]

end A081840

/-! ## A081840.P3540481478472331372

`A194979(a(n-1)+n+1)+n+1` with `a(0)=0`
-/

namespace A081840.P3540481478472331372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194979 (a (n - 1) + (n + 1 : ℤ)).toNat + (n + 1 : ℤ)

end

end A081840.P3540481478472331372

namespace A081840

/-- `A194979(a(n-1)+n+1)+n+1` -/
def P3540481478472331372.Spec : Prop :=
  ∀ n, P3540481478472331372.a n = A081840 (n + 1)

end A081840

/-! ## A081840.P12835098544723284056

`A180123(a(n-1)+n+1)-A180123(a(n-1)+1)` with `a(0)=0`
-/

namespace A081840.P12835098544723284056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A180123 (a (n - 1) + (n : ℤ) + 1).toNat - A180123 (a (n - 1) + 1).toNat

end

end A081840.P12835098544723284056

namespace A081840

/-- `A180123(a(n-1)+n+1)-A180123(a(n-1)+1)` -/
def P12835098544723284056.Spec : Prop :=
  ∀ n, P12835098544723284056.a n = A081840 (n + 1)

end A081840

/-! ## A081840.P18390403902572165130

`record[and(3, A198269(2*n+1))+n]`
-/

namespace A081840.P18390403902572165130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A198269 (2 * n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081840.P18390403902572165130

namespace A081840

/-- `record[and(3, A198269(2*n+1))+n]` -/
def P18390403902572165130.Spec : Prop :=
  ∀ n, P18390403902572165130.a n = A081840 (n + 1)

end A081840

/-! ## A081840.P329819891977451842

`record[A307483(A187971(2*n+1))]`
-/

namespace A081840.P329819891977451842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307483 (A187971 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081840.P329819891977451842

namespace A081840

/-- `record[A307483(A187971(2*n+1))]` -/
def P329819891977451842.Spec : Prop :=
  ∀ n, P329819891977451842.a n = A081840 (n + 1)

end A081840

/-! ## A081840.P736497368483240600

`floor(log(A180028(n)²))`
-/

namespace A081840.P736497368483240600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A180028 n ^ 2 : ℝ)⌋

end

end A081840.P736497368483240600

namespace A081840

/-- `floor(log(A180028(n)²))` -/
def P736497368483240600.Spec : Prop :=
  ∀ n, P736497368483240600.a n = A081840 (n + 1)

end A081840

/-! ## A081840.P13447921248522665726

`floor(log(2*A090018(2*n)))`
-/

namespace A081840.P13447921248522665726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (2 * A090018 (2 * n) : ℝ)⌋

end

end A081840.P13447921248522665726

namespace A081840

/-- `floor(log(2*A090018(2*n)))` -/
def P13447921248522665726.Spec : Prop :=
  ∀ n, P13447921248522665726.a n = A081840 (n + 1)

end A081840

/-!
# A081841: a(1)=0, a(n)=a(n-1)+3 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

The programs for A081841, the canonical program `A081841.P2164666565118837986` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081841 has offset 1).

The definition of A081841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081841.P2164666565118837986

`comp[A001954(n)+2]+n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081841

/-- `comp[A001954(n)+2]+n` -/
def P2164666565118837986.Spec : Prop :=
  ∀ n, (P2164666565118837986.a n : ℤ) = A081841 (n + 1)

theorem P2164666565118837986.correct : P2164666565118837986.Spec := by
  intro n
  simp only [A081841, Nat.add_sub_cancel]

end A081841

/-! ## A081841.P11471241850357811538

`comp[comp[A001953(n)]+2]+n`
-/

namespace A081841.P11471241850357811538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A081841.P11471241850357811538

namespace A081841

/-- `comp[comp[A001953(n)]+2]+n` -/
def P11471241850357811538.Spec : Prop :=
  ∀ n, (P11471241850357811538.a n : ℤ) = A081841 (n + 1)

end A081841

/-! ## A081841.P9671590431753582595

`comp[A184119(n+1)+1]+n`
-/

namespace A081841.P9671590431753582595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A081841.P9671590431753582595

namespace A081841

/-- `comp[A184119(n+1)+1]+n` -/
def P9671590431753582595.Spec : Prop :=
  ∀ n, (P9671590431753582595.a n : ℤ) = A081841 (n + 1)

end A081841

/-! ## A081841.P11654138336567045418

`comp[A285074(2*(n+1))]+n`
-/

namespace A081841.P11654138336567045418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A081841.P11654138336567045418

namespace A081841

/-- `comp[A285074(2*(n+1))]+n` -/
def P11654138336567045418.Spec : Prop :=
  ∀ n, (P11654138336567045418.a n : ℤ) = A081841 (n + 1)

end A081841

/-! ## A081841.P9636887701409204368

`comp[A285077(2*(n+1))]+n`
-/

namespace A081841.P9636887701409204368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A081841.P9636887701409204368

namespace A081841

/-- `comp[A285077(2*(n+1))]+n` -/
def P9636887701409204368.Spec : Prop :=
  ∀ n, (P9636887701409204368.a n : ℤ) = A081841 (n + 1)

end A081841

/-! ## A081841.P10486690299047166650

`∑[char[A064437(n+2)]+2]-2`
-/

namespace A081841.P10486690299047166650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A081841.P10486690299047166650

namespace A081841

/-- `∑[char[A064437(n+2)]+2]-2` -/
def P10486690299047166650.Spec : Prop :=
  ∀ n, P10486690299047166650.a n = A081841 (n + 1)

end A081841

/-!
# A081842: a(1)=0, a(n)=a(n-1)+4 if n is already in the sequence, a(n)=a(n-1)+3 otherwise.

The programs for A081842, there is no canonical definition to state claims against.
-/

/-! ## A081842.P16957686539863093084

`comp[A184485(n+1)]+2*n`
-/

namespace A081842.P16957686539863093084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 * n

end

end A081842.P16957686539863093084

/-! ## A081842.P6383249951602680445

`comp[A184485(n^floor(atan(n)))]+n+n`
-/

namespace A081842.P6383249951602680445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n + n

end

end A081842.P6383249951602680445

/-! ## A081842.P1900255283091451113

`A005843(n)+comp[A184485(n+1)]`
-/

namespace A081842.P1900255283091451113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A081842.P1900255283091451113

/-! ## A081842.P13004910676197630390

`comp[A184485(A008619(n))]+n+n`
-/

namespace A081842.P13004910676197630390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (A008619 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n + n

end

end A081842.P13004910676197630390

/-! ## A081842.P17286949773273315920

`comp[A184485(n+1)]%A168472(n+7)+n+n`
-/

namespace A081842.P17286949773273315920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A168472 (n + 7)) + (n : ℤ) + (n : ℤ)

end

end A081842.P17286949773273315920

/-! ## A081842.P981918406895625357

`A081834(n+1)-A284677(A008486(n))`
-/

namespace A081842.P981918406895625357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1) - A284677 (A008486 n).toNat

end

end A081842.P981918406895625357

/-!
# A081843: a(1)=0, a(n)=a(n-1)+5 if n is already in the sequence, a(n)=a(n-1)+4 otherwise.

The programs for A081843, the canonical program `A081843.P5535994813020830830` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081843 has offset 1).

The definition of A081843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081843.P5535994813020830830

`ceil(ϕ*(2*n-1)+n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081843

/-- `ceil(ϕ*(2*n-1)+n+1)` -/
def P5535994813020830830.Spec : Prop :=
  ∀ n, P5535994813020830830.a n = A081843 (n + 1)

theorem P5535994813020830830.correct : P5535994813020830830.Spec := by
  intro n
  simp only [A081843, Nat.add_sub_cancel]

end A081843

/-! ## A081843.P2212628700521183850

`floor(a(n-1)/ϕ+ϕ*(n+2))` with `a(0)=0`
-/

namespace A081843.P2212628700521183850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.goldenRatio + Real.goldenRatio * (n + 2 : ℝ)⌋

end

end A081843.P2212628700521183850

namespace A081843

/-- `floor(a(n-1)/ϕ+ϕ*(n+2))` -/
def P2212628700521183850.Spec : Prop :=
  ∀ n, P2212628700521183850.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P17751219433253312266

`floor((a(n-1)+n+2)/ϕ+n+2)` with `a(0)=0`
-/

namespace A081843.P17751219433253312266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) + (n + 2 : ℤ) : ℝ) / Real.goldenRatio + (n + 2 : ℝ)⌋

end

end A081843.P17751219433253312266

namespace A081843

/-- `floor((a(n-1)+n+2)/ϕ+n+2)` -/
def P17751219433253312266.Spec : Prop :=
  ∀ n, P17751219433253312266.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P15073859474071811508

`floor(ϕ*(a(n-1)+n+2)-a(n-1))` with `a(0)=0`
-/

namespace A081843.P15073859474071811508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + (n + 2 : ℤ) : ℝ) - (a (n - 1) : ℝ)⌋

end

end A081843.P15073859474071811508

namespace A081843

/-- `floor(ϕ*(a(n-1)+n+2)-a(n-1))` -/
def P15073859474071811508.Spec : Prop :=
  ∀ n, P15073859474071811508.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P12708498000673941640

`record[A007066(n+1)-lcm(2, n+1)]+n+1`
-/

namespace A081843.P12708498000673941640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) - (Nat.lcm 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A081843.P12708498000673941640

namespace A081843

/-- `record[A007066(n+1)-lcm(2, n+1)]+n+1` -/
def P12708498000673941640.Spec : Prop :=
  ∀ n, P12708498000673941640.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P12382440628437452588

`A026355(2*n)*A057427(n)+n`
-/

namespace A081843.P12382440628437452588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 (2 * n) * A057427 n + (n : ℤ)

end

end A081843.P12382440628437452588

namespace A081843

/-- `A026355(2*n)*A057427(n)+n` -/
def P12382440628437452588.Spec : Prop :=
  ∀ n, P12382440628437452588.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P1624649274476242487

`A004956(2*n)-A189479(2*n+1)+n`
-/

namespace A081843.P1624649274476242487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (2 * n) - A189479 (2 * n + 1) + (n : ℤ)

end

end A081843.P1624649274476242487

namespace A081843

/-- `A004956(2*n)-A189479(2*n+1)+n` -/
def P1624649274476242487.Spec : Prop :=
  ∀ n, P1624649274476242487.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P6673569388307174387

`A026351(2*n)-A287523(2*n+1)+n`
-/

namespace A081843.P6673569388307174387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (2 * n) - A287523 (2 * n + 1) + (n : ℤ)

end

end A081843.P6673569388307174387

namespace A081843

/-- `A026351(2*n)-A287523(2*n+1)+n` -/
def P6673569388307174387.Spec : Prop :=
  ∀ n, P6673569388307174387.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P11934903550589042841

`A004958(n)-A188014(A004958(n)+1+n)`
-/

namespace A081843.P11934903550589042841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - A188014 (A004958 n + 1 + (n : ℤ)).toNat

end

end A081843.P11934903550589042841

namespace A081843

/-- `A004958(n)-A188014(A004958(n)+1+n)` -/
def P11934903550589042841.Spec : Prop :=
  ∀ n, P11934903550589042841.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P3908267717710031819

`eq[1, Δ[A188472(2*n+1)]]`
-/

namespace A081843.P3908267717710031819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081843.P3908267717710031819

namespace A081843

/-- `eq[1, Δ[A188472(2*n+1)]]` -/
def P3908267717710031819.Spec : Prop :=
  ∀ n, (P3908267717710031819.a n : ℤ) = A081843 (n + 1)

end A081843

/-! ## A081843.P9681851333623445983

`record[A131732(A047924(n))]`
-/

namespace A081843.P9681851333623445983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A047924 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081843.P9681851333623445983

namespace A081843

/-- `record[A131732(A047924(n))]` -/
def P9681851333623445983.Spec : Prop :=
  ∀ n, P9681851333623445983.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P15055978264828636050

`record[A001057(A019444(n+1)+n+1)+1]`
-/

namespace A081843.P15055978264828636050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A019444 (n + 1) + (n + 1 : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081843.P15055978264828636050

namespace A081843

/-- `record[A001057(A019444(n+1)+n+1)+1]` -/
def P15055978264828636050.Spec : Prop :=
  ∀ n, P15055978264828636050.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P5540167050011389323

`record[A001468(n)-A001057(A003622(n+1))]`
-/

namespace A081843.P5540167050011389323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n - A001057 (A003622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081843.P5540167050011389323

namespace A081843

/-- `record[A001468(n)-A001057(A003622(n+1))]` -/
def P5540167050011389323.Spec : Prop :=
  ∀ n, P5540167050011389323.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P12686944465467131740

`A189663(A054082(A026356(A026355(2*n))))`
-/

namespace A081843.P12686944465467131740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A054082 (A026356 (A026355 (2 * n)).toNat).toNat).toNat

end

end A081843.P12686944465467131740

namespace A081843

/-- `A189663(A054082(A026356(A026355(2*n))))` -/
def P12686944465467131740.Spec : Prop :=
  ∀ n, P12686944465467131740.a n = A081843 (n + 1)

end A081843

/-! ## A081843.P18422137285591074774

`A022290(A165404(2*n))+n`
-/

namespace A081843.P18422137285591074774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A165404 (2 * n)).toNat + (n : ℤ)

end

end A081843.P18422137285591074774

namespace A081843

/-- `A022290(A165404(2*n))+n` -/
def P18422137285591074774.Spec : Prop :=
  ∀ n, P18422137285591074774.a n = A081843 (n + 1)

end A081843

/-!
# A081844: Number of irreducible factors of x^(2n+1) - 1 over GF(2).

The programs for A081844, there is no canonical definition to state claims against.
-/

/-! ## A081844.P386778380321166985

`A006694(n)+1`
-/

namespace A081844.P386778380321166985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n + 1

end

end A081844.P386778380321166985

/-! ## A081844.P17611003941084022

`A000374(2*n+1)`
-/

namespace A081844.P17611003941084022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (2 * n + 1)

end

end A081844.P17611003941084022

/-! ## A081844.P14542074438028887565

`A327551(n+1)-1`
-/

namespace A081844.P14542074438028887565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327551 (n + 1) - 1

end

end A081844.P14542074438028887565

/-! ## A081844.P6017528271800645181

`A008619(2*A006694(n))`
-/

namespace A081844.P6017528271800645181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A006694 n).toNat

end

end A081844.P6017528271800645181

/-! ## A081844.P7993797059396340025

`A027656(2*A006694(n))`
-/

namespace A081844.P7993797059396340025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A006694 n).toNat

end

end A081844.P7993797059396340025

/-! ## A081844.P7090424718040629857

`A103221(6*A006694(n))`
-/

namespace A081844.P7090424718040629857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * A006694 n).toNat

end

end A081844.P7090424718040629857

/-! ## A081844.P6353433708731313839

`ceil(A137576(n)/A002326(n))`
-/

namespace A081844.P6353433708731313839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137576 n : ℚ) / (A002326 n : ℚ)⌉

end

end A081844.P6353433708731313839

/-! ## A081844.P9975393633266235283

`2-(A257075(n)²-A006694(n))`
-/

namespace A081844.P9975393633266235283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A257075 n ^ 2 - A006694 n)

end

end A081844.P9975393633266235283

/-! ## A081844.P18093532974333324490

`A141310(2*A006694(n))-A006694(n)`
-/

namespace A081844.P18093532974333324490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A006694 n).toNat - A006694 n

end

end A081844.P18093532974333324490

/-! ## A081844.P12237167579152483460

`A091248(Δ[n²])`
-/

namespace A081844.P12237167579152483460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091248 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081844.P12237167579152483460

/-! ## A081844.P5751904650493290374

`∑{d}[2*n+1, A318622(#)]`
-/

namespace A081844.P5751904650493290374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318622 d

end

end A081844.P5751904650493290374

/-! ## A081844.P18241312752973637438

`A091248(2*n+1)%(n+2)`
-/

namespace A081844.P18241312752973637438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091248 (2 * n + 1)) (n + 2 : ℤ)

end

end A081844.P18241312752973637438

/-! ## A081844.P558020486426227905

`A072828(n+1)%A327551(n+1)`
-/

namespace A081844.P558020486426227905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A327551 (n + 1))

end

end A081844.P558020486426227905

/-! ## A081844.P16069092406200821768

`A348888(A005893(n)+1+n)`
-/

namespace A081844.P16069092406200821768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348888 (A005893 n + 1 + (n : ℤ)).toNat

end

end A081844.P16069092406200821768

/-! ## A081844.P14283738927319106529

`A348888(A271624(n+1)+2*n)`
-/

namespace A081844.P14283738927319106529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348888 (A271624 (n + 1) + (2 * n : ℤ)).toNat

end

end A081844.P14283738927319106529

/-! ## A081844.P11719137572349782600

`A348888(A000124(2*n+1)-n)`
-/

namespace A081844.P11719137572349782600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348888 (A000124 (2 * n + 1) - (n : ℤ)).toNat

end

end A081844.P11719137572349782600

/-! ## A081844.P11052525577763864277

`A348888(A271624(n+1)+n+n)`
-/

namespace A081844.P11052525577763864277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348888 (A271624 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A081844.P11052525577763864277

/-!
# A081846: Maximal element in the continued fraction for (1/n)*Sum_{k>=0} 1/2^(2^k).

The programs for A081846, there is no canonical definition to state claims against.
-/

/-! ## A081846.P2298681891640934727

`A190367(n+1)-A086710(A002252(n+1))`
-/

namespace A081846.P2298681891640934727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190367 (n + 1) - A086710 (A002252 (n + 1)).toNat

end

end A081846.P2298681891640934727

/-! ## A081846.P6098926585209439750

`A190367(n+1)-A053645(A130764(n+1))`
-/

namespace A081846.P6098926585209439750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190367 (n + 1) - A053645 (A130764 (n + 1)).toNat

end

end A081846.P6098926585209439750

/-! ## A081846.P16948551976098009444

`A277644(A000196(A277645(n+1)²))`
-/

namespace A081846.P16948551976098009444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (A000196 (A277645 (n + 1) ^ 2).toNat).toNat

end

end A081846.P16948551976098009444

/-! ## A081846.P10545667743377468784

`A190367(n+1)-A000005(A000079(n))`
-/

namespace A081846.P10545667743377468784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190367 (n + 1) - A000005 (A000079 n).toNat

end

end A081846.P10545667743377468784

/-!
# A081848: Number of numbers whose base-3/2 expansion (see A024629) has n digits.

The programs for A081848, the canonical program `A081848.P16688892493849896551` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081848 has offset 1).

The definition of A081848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081848.P12470173039409493342

`3*A073941(n+1)`
-/

namespace A081848.P12470173039409493342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A073941 (n + 1)

end

end A081848.P12470173039409493342

namespace A081848

/-- `3*A073941(n+1)` -/
def P12470173039409493342.Spec : Prop :=
  ∀ n, P12470173039409493342.a n = A081848 (n + 1)

end A081848

/-! ## A081848.P11791857770114514162

`A104740(2*(n+2))`
-/

namespace A081848.P11791857770114514162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104740 (2 * (n + 2))

end

end A081848.P11791857770114514162

namespace A081848

/-- `A104740(2*(n+2))` -/
def P11791857770114514162.Spec : Prop :=
  ∀ n, P11791857770114514162.a n = A081848 (n + 1)

end A081848

/-! ## A081848.P16688892493849896551

`3*A005428(abs(1-n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081848

/-- `3*A005428(abs(1-n))` -/
def P16688892493849896551.Spec : Prop :=
  ∀ n, P16688892493849896551.a n = A081848 (n + 1)

theorem P16688892493849896551.correct : P16688892493849896551.Spec := by
  intro n
  simp only [A081848, Nat.add_sub_cancel]

end A081848

/-! ## A081848.P10209544882725054406

`3*ceil(A061419(n+1)/3)`
-/

namespace A081848.P10209544882725054406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(A061419 (n + 1) : ℚ) / 3⌉

end

end A081848.P10209544882725054406

namespace A081848

/-- `3*ceil(A061419(n+1)/3)` -/
def P10209544882725054406.Spec : Prop :=
  ∀ n, P10209544882725054406.a n = A081848 (n + 1)

end A081848

/-! ## A081848.P11928357118173241736

`3*round(A061418(n+1)/3)`
-/

namespace A081848.P11928357118173241736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((A061418 (n + 1) : ℚ) / 3)

end

end A081848.P11928357118173241736

namespace A081848

/-- `3*round(A061418(n+1)/3)` -/
def P11928357118173241736.Spec : Prop :=
  ∀ n, P11928357118173241736.a n = A081848 (n + 1)

end A081848

/-! ## A081848.P10771031480319708350

`A304273(n+1)+A061419(n+1)`
-/

namespace A081848.P10771031480319708350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1) + A061419 (n + 1)

end

end A081848.P10771031480319708350

namespace A081848

/-- `A304273(n+1)+A061419(n+1)` -/
def P10771031480319708350.Spec : Prop :=
  ∀ n, P10771031480319708350.a n = A081848 (n + 1)

end A081848

/-! ## A081848.P7148857101246278701

`A304273(n+1)+∑[A073941(n+1)]`
-/

namespace A081848.P7148857101246278701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081848.P7148857101246278701

namespace A081848

/-- `A304273(n+1)+∑[A073941(n+1)]` -/
def P7148857101246278701.Spec : Prop :=
  ∀ n, P7148857101246278701.a n = A081848 (n + 1)

end A081848

/-! ## A081848.P12247690510098854590

`A061418(n+1)+A304273(n+1)-1`
-/

namespace A081848.P12247690510098854590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) + (A304273 (n + 1) - 1)

end

end A081848.P12247690510098854590

namespace A081848

/-- `A061418(n+1)+A304273(n+1)-1` -/
def P12247690510098854590.Spec : Prop :=
  ∀ n, P12247690510098854590.a n = A081848 (n + 1)

end A081848

/-! ## A081848.P10398541876562357836

`A304273(n+1)+A305498(n+1)/2`
-/

namespace A081848.P10398541876562357836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304273 (n + 1) : ℚ) + (A305498 (n + 1) : ℚ) / 2

end

end A081848.P10398541876562357836

namespace A081848

/-- `A304273(n+1)+A305498(n+1)/2` -/
def P10398541876562357836.Spec : Prop :=
  ∀ n, P10398541876562357836.a n = (A081848 (n + 1) : ℚ)

end A081848

/-! ## A081848.P18219839183473365913

`A000007(n)+Δ[A070885(n+1)]`
-/

namespace A081848.P18219839183473365913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A081848.P18219839183473365913

namespace A081848

/-- `A000007(n)+Δ[A070885(n+1)]` -/
def P18219839183473365913.Spec : Prop :=
  ∀ n, P18219839183473365913.a n = A081848 (n + 1)

end A081848

/-! ## A081848.P9558529655988084497

`A010051(2*(n+1))+Δ[A070885(n+1)]`
-/

namespace A081848.P9558529655988084497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A081848.P9558529655988084497

namespace A081848

/-- `A010051(2*(n+1))+Δ[A070885(n+1)]` -/
def P9558529655988084497.Spec : Prop :=
  ∀ n, P9558529655988084497.a n = A081848 (n + 1)

end A081848

/-!
# A081850: Consider recurrence b(0) = (2n+1)/4, b(n) = b(0)*ceiling(b(n-1)); sequence gives number of steps to reach an integer (or -1 if no integer is ever reached).

The programs for A081850, there is no canonical definition to state claims against.
-/

/-! ## A081850.P1351406430051932559

`A074090(2*n+5)`
-/

namespace A081850.P1351406430051932559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074090 (2 * n + 5)

end

end A081850.P1351406430051932559

/-!
# A081854: a(n) = (8*n - 3)*(4*n - 1)*(8*n^2 - 5*n + 1).

The programs for A081854, the canonical program `A081854.P14548482421748984542` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081854 has offset 0).

The definition of A081854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n-3)*(4*n-1)*(8*n²-5*n+1)` (program `A081854.P14548482421748984542`, by `A081854.P14548482421748984542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081854.P14548482421748984542

`(8*n-3)*(4*n-1)*(8*n²-5*n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081854

/-- `(8*n-3)*(4*n-1)*(8*n²-5*n+1)` -/
def P14548482421748984542.Spec : Prop :=
  ∀ n, P14548482421748984542.a n = A081854 n

theorem P14548482421748984542.correct : P14548482421748984542.Spec := by
  intro n
  simp only [A081854]

end A081854

/-! ## A081854.P13987695831551026756

`A033991(∑[a(n-1)+16])` with `a(0)=1, a(1)=3`
-/

namespace A081854.P13987695831551026756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081854.P13987695831551026756

namespace A081854

/-- `A033991(∑[a(n-1)+16])` -/
def P13987695831551026756.Spec : Prop :=
  ∀ n, P13987695831551026756.a n = A081854 n

end A081854

/-! ## A081854.P6085410452201353882

`A033991(n*(8*n-5)+1)`
-/

namespace A081854.P6085410452201353882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 ((n : ℤ) * ((8 * n : ℤ) - 5) + 1).toNat

end

end A081854.P6085410452201353882

namespace A081854

/-- `A033991(n*(8*n-5)+1)` -/
def P6085410452201353882.Spec : Prop :=
  ∀ n, P6085410452201353882.a n = A081854 n

end A081854

/-! ## A081854.P12413143828868991317

`A014635(n*(8*n-5)+1)/2`
-/

namespace A081854.P12413143828868991317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014635 ((n : ℤ) * ((8 * n : ℤ) - 5) + 1).toNat : ℚ) / 2

end

end A081854.P12413143828868991317

namespace A081854

/-- `A014635(n*(8*n-5)+1)/2` -/
def P12413143828868991317.Spec : Prop :=
  ∀ n, P12413143828868991317.a n = (A081854 n : ℚ)

end A081854

/-! ## A081854.P10586532896429834875

`(A181890(A139272(n))+1)/2`
-/

namespace A081854.P10586532896429834875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181890 (A139272 n).toNat + 1 : ℚ) / 2

end

end A081854.P10586532896429834875

namespace A081854

/-- `(A181890(A139272(n))+1)/2` -/
def P10586532896429834875.Spec : Prop :=
  ∀ n, P10586532896429834875.a n = (A081854 n : ℚ)

end A081854

/-!
# A081856: Numbers k such that 2k-1 divides 2^k-1.

The programs for A081856, there is no canonical definition to state claims against.
-/

/-! ## A081856.P4242233980895610636

`A246648(n+1)+1`
-/

namespace A081856.P4242233980895610636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246648 (n + 1) + 1

end

end A081856.P4242233980895610636

/-! ## A081856.P3940049341267887018

`lt[(n+1)%A002326(n), 1]+1`
-/

namespace A081856.P3940049341267887018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A002326 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A081856.P3940049341267887018

/-! ## A081856.P13764575916244745285

`A015906(A246648(n+1))`
-/

namespace A081856.P13764575916244745285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A246648 (n + 1)).toNat

end

end A081856.P13764575916244745285

/-!
# A081857: Jacobsthal sequence (A001045) as represented in base 4.

The programs for A081857, the canonical program `A081857.P13674883407381429939` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081857 has offset 0).

The definition of A081857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081857.P13674883407381429939

`11*a(n-2)-10*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081857

/-- `11*a(n-2)-10*a(n-4)` -/
def P13674883407381429939.Spec : Prop :=
  ∀ n, P13674883407381429939.a n = A081857 n

theorem P13674883407381429939.correct : P13674883407381429939.Spec := by
  intro n
  simp only [A081857]

end A081857

/-! ## A081857.P1292029200727896859

`A092900(n)-(-1)^n`
-/

namespace A081857.P1292029200727896859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092900 n - (-1) ^ n

end

end A081857.P1292029200727896859

namespace A081857

/-- `A092900(n)-(-1)^n` -/
def P1292029200727896859.Spec : Prop :=
  ∀ n, P1292029200727896859.a n = A081857 n

end A081857

/-! ## A081857.P14198638292018756162

`abs(A033999(n)-A092900(n))`
-/

namespace A081857.P14198638292018756162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n - A092900 n|

end

end A081857.P14198638292018756162

namespace A081857

/-- `abs(A033999(n)-A092900(n))` -/
def P14198638292018756162.Spec : Prop :=
  ∀ n, P14198638292018756162.a n = A081857 n

end A081857

/-! ## A081857.P5934736010819804699

`A001045(n)+A092900(n)-A078008(n)`
-/

namespace A081857.P5934736010819804699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A092900 n - A078008 n)

end

end A081857.P5934736010819804699

namespace A081857

/-- `A001045(n)+A092900(n)-A078008(n)` -/
def P5934736010819804699.Spec : Prop :=
  ∀ n, P5934736010819804699.a n = A081857 n

end A081857

/-! ## A081857.P5027151478639441363

`ceil((A004643(n)-1)/9)`
-/

namespace A081857.P5027151478639441363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004643 n - 1 : ℚ) / 9⌉

end

end A081857.P5027151478639441363

namespace A081857

/-- `ceil((A004643(n)-1)/9)` -/
def P5027151478639441363.Spec : Prop :=
  ∀ n, P5027151478639441363.a n = A081857 n

end A081857

/-!
# A081858: Numbers k such that 2*k+1 divides 2^k-1.

The programs for A081858, there is no canonical definition to state claims against.
-/

/-! ## A081858.P18441812852295513672

`eq[1, A266697(n)]`
-/

namespace A081858.P18441812852295513672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081858.P18441812852295513672

/-! ## A081858.P1244258141375787579

`eq[0, n%A002326(n)]`
-/

namespace A081858.P1244258141375787579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A002326 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081858.P1244258141375787579

/-! ## A081858.P16297637950869710136

`eq[n, lcm(A002326(n), A038608(n))]`
-/

namespace A081858.P16297637950869710136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002326 n) (A038608 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081858.P16297637950869710136

/-! ## A081858.P7863805437915807616

`eq[n, lcm(n, A007733(2*n+1))]`
-/

namespace A081858.P7863805437915807616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A007733 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081858.P7863805437915807616

/-! ## A081858.P15808138723566310006

`eq[gcd(n, A054703(2*n+1)), A054703(2*n+1)]`
-/

namespace A081858.P15808138723566310006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A054703 (2 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081858.P15808138723566310006

/-! ## A081858.P5482423585887750503

`lt[(2^n)%(2*n+1), 2]`
-/

namespace A081858.P5482423585887750503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081858.P5482423585887750503

/-! ## A081858.P12193157807747645245

`lt[2*n, gcd(2*n+1, A000225(n))]`
-/

namespace A081858.P12193157807747645245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A000225 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081858.P12193157807747645245

/-!
# A081859: Short leg of primitive Pythagorean triangles sorted on semiperimeter.

The programs for A081859, there is no canonical definition to state claims against.
-/

/-! ## A081859.P7061419687234004923

`A103606(3*n+1)+A000038(A059268(n))`
-/

namespace A081859.P7061419687234004923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1) + A000038 (A059268 n).toNat

end

end A081859.P7061419687234004923

/-! ## A081859.P13003844688824426143

`A103606(3*n+1)+A046660(A072859(n+1))`
-/

namespace A081859.P13003844688824426143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1) + A046660 (A072859 (n + 1)).toNat

end

end A081859.P13003844688824426143

/-! ## A081859.P7325379512724330300

`A103606(3*n+1)+A000038(A054685(n+3))`
-/

namespace A081859.P7325379512724330300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1) + A000038 (A054685 (n + 3)).toNat

end

end A081859.P7325379512724330300

/-! ## A081859.P9598150753733312218

`A050412(A040040(n+1))*A103606(3*n+1)`
-/

namespace A081859.P9598150753733312218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A040040 (n + 1)).toNat * A103606 (3 * n + 1)

end

end A081859.P9598150753733312218

/-! ## A081859.P6204482524528098177

`A103606(3*n+1)%A003329(A034718(n+1))`
-/

namespace A081859.P6204482524528098177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103606 (3 * n + 1)) (A003329 (A034718 (n + 1)).toNat)

end

end A081859.P6204482524528098177

/-! ## A081859.P17131896172671212738

`A103606(3*n+1)+A007949(A023241(n+1))`
-/

namespace A081859.P17131896172671212738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1) + A007949 (A023241 (n + 1)).toNat

end

end A081859.P17131896172671212738

/-! ## A081859.P10826612560221820661

`A087088(A139619(n))*A103606(3*n+1)`
-/

namespace A081859.P10826612560221820661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (A139619 n).toNat * A103606 (3 * n + 1)

end

end A081859.P10826612560221820661

/-! ## A081859.P7822146422094921301

`A001222(A002385(n+1))*A103606(3*n+1)`
-/

namespace A081859.P7822146422094921301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002385 (n + 1)).toNat * A103606 (3 * n + 1)

end

end A081859.P7822146422094921301

/-! ## A081859.P15430713461923007996

`A103606(3*n+1)+A000038(A000115(4*n))`
-/

namespace A081859.P15430713461923007996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 1) + A000038 (A000115 (4 * n)).toNat

end

end A081859.P15430713461923007996

/-! ## A081859.P2846959495984434591

`A103606(3*A053186(n*(n+1))+1)`
-/

namespace A081859.P2846959495984434591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * A053186 (n * (n + 1)) + 1).toNat

end

end A081859.P2846959495984434591

/-!
# A081860: a(n) = Sum_{k=0..n-1} sigma(2k+1)*sigma_3(n-k).

The programs for A081860, there is no canonical definition to state claims against.
-/

/-! ## A081860.P10382354779374489628

`A156393(∑[A155046(n+1)])+A085461(n+1)`
-/

namespace A081860.P10382354779374489628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A085461 (n + 1)

end

end A081860.P10382354779374489628

/-! ## A081860.P12869764494048024621

`or(A167040(2*n)!, A085461(n+1))`
-/

namespace A081860.P12869764494048024621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A167040 (2 * n)).toNat : ℤ) (A085461 (n + 1))

end

end A081860.P12869764494048024621

/-!
# A081861: a(n) = (1/24)*(sigma_3(2*n-1) - sigma_1(2*n-1)).

The programs for A081861, the canonical program `A081861.P15139232812757351489` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081861 has offset 1).

The definition of A081861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081861.P15139232812757351489

`∑{d}[2*n+1, A000330(n%#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081861

/-- `∑{d}[2*n+1, A000330(n%#)]` -/
def P15139232812757351489.Spec : Prop :=
  ∀ n, P15139232812757351489.a n = A081861 (n + 1)

theorem P15139232812757351489.correct : P15139232812757351489.Spec := by
  intro n
  simp only [A081861, Nat.add_sub_cancel]

end A081861

/-! ## A081861.P15821530597557691484

`A363604(2*n+1)/4`
-/

namespace A081861.P15821530597557691484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363604 (2 * n + 1) : ℚ) / 4

end

end A081861.P15821530597557691484

namespace A081861

/-- `A363604(2*n+1)/4` -/
def P15821530597557691484.Spec : Prop :=
  ∀ n, P15821530597557691484.a n = (A081861 (n + 1) : ℚ)

end A081861

/-! ## A081861.P1563658625997114944

`∑{d}[2*n+1, A060422(#)]`
-/

namespace A081861.P1563658625997114944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060422 d

end

end A081861.P1563658625997114944

namespace A081861

/-- `∑{d}[2*n+1, A060422(#)]` -/
def P1563658625997114944.Spec : Prop :=
  ∀ n, P1563658625997114944.a n = A081861 (n + 1)

end A081861

/-! ## A081861.P4786756549468042042

`∑{d}[2*n+1, A188067(#)]`
-/

namespace A081861.P4786756549468042042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188067 d

end

end A081861.P4786756549468042042

namespace A081861

/-- `∑{d}[2*n+1, A188067(#)]` -/
def P4786756549468042042.Spec : Prop :=
  ∀ n, P4786756549468042042.a n = A081861 (n + 1)

end A081861

/-! ## A081861.P11470866656250641354

`∑{d}[2*n+1, A208950(#)]`
-/

namespace A081861.P11470866656250641354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A208950 d

end

end A081861.P11470866656250641354

namespace A081861

/-- `∑{d}[2*n+1, A208950(#)]` -/
def P11470866656250641354.Spec : Prop :=
  ∀ n, P11470866656250641354.a n = A081861 (n + 1)

end A081861

/-! ## A081861.P5521868099003133139

`∑{d}[2*n+1, A392421(#)]`
-/

namespace A081861.P5521868099003133139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A392421 d

end

end A081861.P5521868099003133139

namespace A081861

/-- `∑{d}[2*n+1, A392421(#)]` -/
def P5521868099003133139.Spec : Prop :=
  ∀ n, P5521868099003133139.a n = A081861 (n + 1)

end A081861

/-! ## A081861.P2301873649793404731

`∑{d}[2*n+1, A000330(A004526(#))]`
-/

namespace A081861.P2301873649793404731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000330 (A004526 d).toNat

end

end A081861.P2301873649793404731

namespace A081861

/-- `∑{d}[2*n+1, A000330(A004526(#))]` -/
def P2301873649793404731.Spec : Prop :=
  ∀ n, P2301873649793404731.a n = A081861 (n + 1)

end A081861

/-!
# A081863: Largest integer m such that m divides (sigma_(2n+1)(2k-1)-sigma(2k-1)) for all k>=1.

The programs for A081863, the canonical program `A081863.P2129435876270539085` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081863 has offset 1).

The definition of A081863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081863.P2129435876270539085

`4*A165886(2*n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A081863

/-- `4*A165886(2*n+1)` -/
def P2129435876270539085.Spec : Prop :=
  ∀ n, P2129435876270539085.a n = A081863 (n + 1)

theorem P2129435876270539085.correct : P2129435876270539085.Spec := by
  intro n
  simp only [A081863, Nat.add_sub_cancel]

end A081863

/-! ## A081863.P2180139036884743739

`A002445(n+1)*A059159(n+1)`
-/

namespace A081863.P2180139036884743739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (n + 1) * A059159 (n + 1)

end

end A081863.P2180139036884743739

namespace A081863

/-- `A002445(n+1)*A059159(n+1)` -/
def P2180139036884743739.Spec : Prop :=
  ∀ n, P2180139036884743739.a n = A081863 (n + 1)

end A081863

/-! ## A081863.P8407564173597775022

`A027762(n+1)*A059159(n+1)`
-/

namespace A081863.P8407564173597775022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027762 (n + 1) * A059159 (n + 1)

end

end A081863.P8407564173597775022

namespace A081863

/-- `A027762(n+1)*A059159(n+1)` -/
def P8407564173597775022.Spec : Prop :=
  ∀ n, P8407564173597775022.a n = A081863 (n + 1)

end A081863

/-! ## A081863.P8783285013816277329

`lcm(A027762(n+1), A037239(n+1))`
-/

namespace A081863.P8783285013816277329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027762 (n + 1)) (A037239 (n + 1))

end

end A081863.P8783285013816277329

namespace A081863

/-- `lcm(A027762(n+1), A037239(n+1))` -/
def P8783285013816277329.Spec : Prop :=
  ∀ n, (P8783285013816277329.a n : ℤ) = A081863 (n + 1)

end A081863

/-! ## A081863.P15841982400467716135

`A002445(n+1)*A297402(2*(n+1))`
-/

namespace A081863.P15841982400467716135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (n + 1) * A297402 (2 * (n + 1))

end

end A081863.P15841982400467716135

namespace A081863

/-- `A002445(n+1)*A297402(2*(n+1))` -/
def P15841982400467716135.Spec : Prop :=
  ∀ n, P15841982400467716135.a n = A081863 (n + 1)

end A081863

/-!
# A081864: Sum of 5th powers of the divisors of odd numbers: a(n) = sigma_5(2n-1).

The programs for A081864, the canonical program `A081864.P18173580079460019944` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081864 has offset 1).

The definition of A081864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081864.P18173580079460019944

`∑{d}[Δ[n²], #^5]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081864

/-- `∑{d}[Δ[n²], #^5]` -/
def P18173580079460019944.Spec : Prop :=
  ∀ n, (P18173580079460019944.a n : ℤ) = A081864 (n + 1)

theorem P18173580079460019944.correct : P18173580079460019944.Spec := by
  intro n
  simp only [A081864, Nat.add_sub_cancel]

end A081864

/-! ## A081864.P17138093219307480653

`abs(∑{d}[2*n+1, (-#)^5])`
-/

namespace A081864.P17138093219307480653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ)) ^ 5|

end

end A081864.P17138093219307480653

namespace A081864

/-- `abs(∑{d}[2*n+1, (-#)^5])` -/
def P17138093219307480653.Spec : Prop :=
  ∀ n, P17138093219307480653.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P6604691095846787273

`-∑{d}[2*n+1, (-#)^5]`
-/

namespace A081864.P6604691095846787273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ)) ^ 5)

end

end A081864.P6604691095846787273

namespace A081864

/-- `-∑{d}[2*n+1, (-#)^5]` -/
def P6604691095846787273.Spec : Prop :=
  ∀ n, P6604691095846787273.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P3131363944814855674

`floor(∑{d}[2*n+1, ((2*n+1)/#)^5])`
-/

namespace A081864.P3131363944814855674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), ((2 * n + 1 : ℚ) / (d : ℚ)) ^ 5⌋

end

end A081864.P3131363944814855674

namespace A081864

/-- `floor(∑{d}[2*n+1, ((2*n+1)/#)^5])` -/
def P3131363944814855674.Spec : Prop :=
  ∀ n, P3131363944814855674.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P9344000998076050720

`ceil(∑{d}[2*n+1, ((2*n+1)/#)^5])`
-/

namespace A081864.P9344000998076050720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), ((2 * n + 1 : ℚ) / (d : ℚ)) ^ 5⌉

end

end A081864.P9344000998076050720

namespace A081864

/-- `ceil(∑{d}[2*n+1, ((2*n+1)/#)^5])` -/
def P9344000998076050720.Spec : Prop :=
  ∀ n, P9344000998076050720.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P15968645238388973019

`round(∑{d}[2*n+1, ((2*n+1)/#)^5])`
-/

namespace A081864.P15968645238388973019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), ((2 * n + 1 : ℚ) / (d : ℚ)) ^ 5)

end

end A081864.P15968645238388973019

namespace A081864

/-- `round(∑{d}[2*n+1, ((2*n+1)/#)^5])` -/
def P15968645238388973019.Spec : Prop :=
  ∀ n, P15968645238388973019.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P16888807460546418563

`A022065(2*n+1)/(6*8/2)`
-/

namespace A081864.P16888807460546418563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022065 (2 * n + 1) : ℚ) / (6 * ((8 : ℚ) / 2))

end

end A081864.P16888807460546418563

namespace A081864

/-- `A022065(2*n+1)/(6*8/2)` -/
def P16888807460546418563.Spec : Prop :=
  ∀ n, P16888807460546418563.a n = (A081864 (n + 1) : ℚ)

end A081864

/-! ## A081864.P10260763402006607257

`A001160(Δ[n²])`
-/

namespace A081864.P10260763402006607257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001160 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081864.P10260763402006607257

namespace A081864

/-- `A001160(Δ[n²])` -/
def P10260763402006607257.Spec : Prop :=
  ∀ n, P10260763402006607257.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P15266575791001452360

`A051002(Δ[n²])`
-/

namespace A081864.P15266575791001452360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081864.P15266575791001452360

namespace A081864

/-- `A051002(Δ[n²])` -/
def P15266575791001452360.Spec : Prop :=
  ∀ n, P15266575791001452360.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P4397813786136345561

`A096960(Δ[n²])`
-/

namespace A081864.P4397813786136345561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096960 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081864.P4397813786136345561

namespace A081864

/-- `A096960(Δ[n²])` -/
def P4397813786136345561.Spec : Prop :=
  ∀ n, P4397813786136345561.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P5716209987729305843

`A284926(Δ[n²])`
-/

namespace A081864.P5716209987729305843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081864.P5716209987729305843

namespace A081864

/-- `A284926(Δ[n²])` -/
def P5716209987729305843.Spec : Prop :=
  ∀ n, P5716209987729305843.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P527211517148762415

`A321544(Δ[n²])`
-/

namespace A081864.P527211517148762415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321544 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081864.P527211517148762415

namespace A081864

/-- `A321544(Δ[n²])` -/
def P527211517148762415.Spec : Prop :=
  ∀ n, P527211517148762415.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P12466911980263652124

`A321561(Δ[n²])`
-/

namespace A081864.P12466911980263652124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321561 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081864.P12466911980263652124

namespace A081864

/-- `A321561(Δ[n²])` -/
def P12466911980263652124.Spec : Prop :=
  ∀ n, P12466911980263652124.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P10009534006299460544

`A352051(Δ[n²])+1`
-/

namespace A081864.P10009534006299460544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081864.P10009534006299460544

namespace A081864

/-- `A352051(Δ[n²])+1` -/
def P10009534006299460544.Spec : Prop :=
  ∀ n, P10009534006299460544.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P12448398670196139790

`abs(A321544(2*n+1))`
-/

namespace A081864.P12448398670196139790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321544 (2 * n + 1)|

end

end A081864.P12448398670196139790

namespace A081864

/-- `abs(A321544(2*n+1))` -/
def P12448398670196139790.Spec : Prop :=
  ∀ n, P12448398670196139790.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P7284983399027621078

`abs(A321561(2*n+1))`
-/

namespace A081864.P7284983399027621078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321561 (2 * n + 1)|

end

end A081864.P7284983399027621078

namespace A081864

/-- `abs(A321561(2*n+1))` -/
def P7284983399027621078.Spec : Prop :=
  ∀ n, P7284983399027621078.a n = A081864 (n + 1)

end A081864

/-! ## A081864.P12722348492952577885

`A029751(2*n+1)/8`
-/

namespace A081864.P12722348492952577885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029751 (2 * n + 1) : ℚ) / 8

end

end A081864.P12722348492952577885

namespace A081864

/-- `A029751(2*n+1)/8` -/
def P12722348492952577885.Spec : Prop :=
  ∀ n, P12722348492952577885.a n = (A081864 (n + 1) : ℚ)

end A081864

/-! ## A081864.P4092959634044882736

`A035036(2*n+1)/8`
-/

namespace A081864.P4092959634044882736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035036 (2 * n + 1) : ℚ) / 8

end

end A081864.P4092959634044882736

namespace A081864

/-- `A035036(2*n+1)/8` -/
def P4092959634044882736.Spec : Prop :=
  ∀ n, P4092959634044882736.a n = (A081864 (n + 1) : ℚ)

end A081864

/-! ## A081864.P3657851699217740197

`A282050(2*n+1)/(2*n+1)`
-/

namespace A081864.P3657851699217740197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282050 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A081864.P3657851699217740197

namespace A081864

/-- `A282050(2*n+1)/(2*n+1)` -/
def P3657851699217740197.Spec : Prop :=
  ∀ n, P3657851699217740197.a n = (A081864 (n + 1) : ℚ)

end A081864

/-! ## A081864.P3535361910066818163

`A284926(2*n+1)+A000007(n+1)`
-/

namespace A081864.P3535361910066818163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284926 (2 * n + 1) + A000007 (n + 1)

end

end A081864.P3535361910066818163

namespace A081864

/-- `A284926(2*n+1)+A000007(n+1)` -/
def P3535361910066818163.Spec : Prop :=
  ∀ n, P3535361910066818163.a n = A081864 (n + 1)

end A081864

/-!
# A081865: a(n) = sigma_7(2n-1).

The programs for A081865, the canonical program `A081865.P10498946442083396496` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081865 has offset 1).

The definition of A081865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081865.P5145946951814597067

`∑{d}[comp[2*n], #^7]`
-/

namespace A081865.P5145946951814597067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 7

end

end A081865.P5145946951814597067

namespace A081865

/-- `∑{d}[comp[2*n], #^7]` -/
def P5145946951814597067.Spec : Prop :=
  ∀ n, (P5145946951814597067.a n : ℤ) = A081865 (n + 1)

end A081865

/-! ## A081865.P10498946442083396496

`abs(∑{d}[2*n+1, (-#)^7])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081865

/-- `abs(∑{d}[2*n+1, (-#)^7])` -/
def P10498946442083396496.Spec : Prop :=
  ∀ n, P10498946442083396496.a n = A081865 (n + 1)

theorem P10498946442083396496.correct : P10498946442083396496.Spec := by
  intro n
  simp only [A081865, Nat.add_sub_cancel]

end A081865

/-! ## A081865.P10439365437125819111

`-∑{d}[2*n+1, (-#)^7]`
-/

namespace A081865.P10439365437125819111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ)) ^ 7)

end

end A081865.P10439365437125819111

namespace A081865

/-- `-∑{d}[2*n+1, (-#)^7]` -/
def P10439365437125819111.Spec : Prop :=
  ∀ n, P10439365437125819111.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P8085703487371353717

`A013955(Δ[n²])`
-/

namespace A081865.P8085703487371353717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013955 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081865.P8085703487371353717

namespace A081865

/-- `A013955(Δ[n²])` -/
def P8085703487371353717.Spec : Prop :=
  ∀ n, P8085703487371353717.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P10680360868395560280

`A096961(Δ[n²])`
-/

namespace A081865.P10680360868395560280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096961 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081865.P10680360868395560280

namespace A081865

/-- `A096961(Δ[n²])` -/
def P10680360868395560280.Spec : Prop :=
  ∀ n, P10680360868395560280.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P3222846947397621798

`A321546(Δ[n²])`
-/

namespace A081865.P3222846947397621798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321546 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081865.P3222846947397621798

namespace A081865

/-- `A321546(Δ[n²])` -/
def P3222846947397621798.Spec : Prop :=
  ∀ n, P3222846947397621798.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P17122592339821430352

`A321552(Δ[n²])`
-/

namespace A081865.P17122592339821430352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321552 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081865.P17122592339821430352

namespace A081865

/-- `A321552(Δ[n²])` -/
def P17122592339821430352.Spec : Prop :=
  ∀ n, P17122592339821430352.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P10685925101196541714

`A321563(Δ[n²])`
-/

namespace A081865.P10685925101196541714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321563 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081865.P10685925101196541714

namespace A081865

/-- `A321563(Δ[n²])` -/
def P10685925101196541714.Spec : Prop :=
  ∀ n, P10685925101196541714.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P9675187657539833990

`A321811(Δ[n²])`
-/

namespace A081865.P9675187657539833990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321811 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081865.P9675187657539833990

namespace A081865

/-- `A321811(Δ[n²])` -/
def P9675187657539833990.Spec : Prop :=
  ∀ n, P9675187657539833990.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P11423764133513618195

`record[A321546(n+1)]`
-/

namespace A081865.P11423764133513618195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081865.P11423764133513618195

namespace A081865

/-- `record[A321546(n+1)]` -/
def P11423764133513618195.Spec : Prop :=
  ∀ n, P11423764133513618195.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P264525589274929600

`record[A321563(n+1)]`
-/

namespace A081865.P264525589274929600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081865.P264525589274929600

namespace A081865

/-- `record[A321563(n+1)]` -/
def P264525589274929600.Spec : Prop :=
  ∀ n, P264525589274929600.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P70367192601190362

`record[A321811(n+1)]`
-/

namespace A081865.P70367192601190362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081865.P70367192601190362

namespace A081865

/-- `record[A321811(n+1)]` -/
def P70367192601190362.Spec : Prop :=
  ∀ n, P70367192601190362.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P11669657438073676352

`A352053(Δ[n²])+1`
-/

namespace A081865.P11669657438073676352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352053 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081865.P11669657438073676352

namespace A081865

/-- `A352053(Δ[n²])+1` -/
def P11669657438073676352.Spec : Prop :=
  ∀ n, P11669657438073676352.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P3820008973299054280

`abs(A321546(2*n+1))`
-/

namespace A081865.P3820008973299054280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321546 (2 * n + 1)|

end

end A081865.P3820008973299054280

namespace A081865

/-- `abs(A321546(2*n+1))` -/
def P3820008973299054280.Spec : Prop :=
  ∀ n, P3820008973299054280.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P9736322164408859028

`abs(A321563(2*n+1))`
-/

namespace A081865.P9736322164408859028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321563 (2 * n + 1)|

end

end A081865.P9736322164408859028

namespace A081865

/-- `abs(A321563(2*n+1))` -/
def P9736322164408859028.Spec : Prop :=
  ∀ n, P9736322164408859028.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P11139221798961273203

`root(A096961(2*n+1)², 2)`
-/

namespace A081865.P11139221798961273203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A096961 (2 * n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A081865.P11139221798961273203

namespace A081865

/-- `root(A096961(2*n+1)², 2)` -/
def P11139221798961273203.Spec : Prop :=
  ∀ n, P11139221798961273203.a n = (A081865 (n + 1) : ℝ)

end A081865

/-! ## A081865.P732304440355104348

`A282060(2*n+1)/(2*n+1)`
-/

namespace A081865.P732304440355104348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282060 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A081865.P732304440355104348

namespace A081865

/-- `A282060(2*n+1)/(2*n+1)` -/
def P732304440355104348.Spec : Prop :=
  ∀ n, P732304440355104348.a n = (A081865 (n + 1) : ℚ)

end A081865

/-! ## A081865.P11797433435135146588

`A154955(n+3)+A096961(2*n+1)`
-/

namespace A081865.P11797433435135146588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 3) + A096961 (2 * n + 1)

end

end A081865.P11797433435135146588

namespace A081865

/-- `A154955(n+3)+A096961(2*n+1)` -/
def P11797433435135146588.Spec : Prop :=
  ∀ n, P11797433435135146588.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P5462265076293360011

`A013955(2*n+1)+A008442(2*(n+1))`
-/

namespace A081865.P5462265076293360011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013955 (2 * n + 1) + A008442 (2 * (n + 1))

end

end A081865.P5462265076293360011

namespace A081865

/-- `A013955(2*n+1)+A008442(2*(n+1))` -/
def P5462265076293360011.Spec : Prop :=
  ∀ n, P5462265076293360011.a n = A081865 (n + 1)

end A081865

/-! ## A081865.P17358791909480762748

`A096961(2*n+1)+A007814(2*n+1)`
-/

namespace A081865.P17358791909480762748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096961 (2 * n + 1) + A007814 (2 * n + 1)

end

end A081865.P17358791909480762748

namespace A081865

/-- `A096961(2*n+1)+A007814(2*n+1)` -/
def P17358791909480762748.Spec : Prop :=
  ∀ n, P17358791909480762748.a n = A081865 (n + 1)

end A081865

/-!
# A081866: a(n) = sigma_9(2n-1).

The programs for A081866, the canonical program `A081866.P3736057492783651677` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081866 has offset 1).

The definition of A081866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081866.P12106871957773405250

`∑{d}[comp[2*n], #^9]`
-/

namespace A081866.P12106871957773405250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 9

end

end A081866.P12106871957773405250

namespace A081866

/-- `∑{d}[comp[2*n], #^9]` -/
def P12106871957773405250.Spec : Prop :=
  ∀ n, (P12106871957773405250.a n : ℤ) = A081866 (n + 1)

end A081866

/-! ## A081866.P3736057492783651677

`abs(∑{d}[2*n+1, (-#)^9])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081866

/-- `abs(∑{d}[2*n+1, (-#)^9])` -/
def P3736057492783651677.Spec : Prop :=
  ∀ n, P3736057492783651677.a n = A081866 (n + 1)

theorem P3736057492783651677.correct : P3736057492783651677.Spec := by
  intro n
  simp only [A081866, Nat.add_sub_cancel]

end A081866

/-! ## A081866.P14860572118029431752

`-∑{d}[2*n+1, (-#)^9]`
-/

namespace A081866.P14860572118029431752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ)) ^ 9)

end

end A081866.P14860572118029431752

namespace A081866

/-- `-∑{d}[2*n+1, (-#)^9]` -/
def P14860572118029431752.Spec : Prop :=
  ∀ n, P14860572118029431752.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P16410885005060106204

`A013957(Δ[n²])`
-/

namespace A081866.P16410885005060106204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013957 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081866.P16410885005060106204

namespace A081866

/-- `A013957(Δ[n²])` -/
def P16410885005060106204.Spec : Prop :=
  ∀ n, P16410885005060106204.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P16113089938203074492

`A096962(Δ[n²])`
-/

namespace A081866.P16113089938203074492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096962 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081866.P16113089938203074492

namespace A081866

/-- `A096962(Δ[n²])` -/
def P16113089938203074492.Spec : Prop :=
  ∀ n, P16113089938203074492.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P9251452699881241239

`A321548(Δ[n²])`
-/

namespace A081866.P9251452699881241239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321548 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081866.P9251452699881241239

namespace A081866

/-- `A321548(Δ[n²])` -/
def P9251452699881241239.Spec : Prop :=
  ∀ n, P9251452699881241239.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P15493247009916962560

`A321554(Δ[n²])`
-/

namespace A081866.P15493247009916962560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081866.P15493247009916962560

namespace A081866

/-- `A321554(Δ[n²])` -/
def P15493247009916962560.Spec : Prop :=
  ∀ n, P15493247009916962560.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P9935136821288530908

`A321565(Δ[n²])`
-/

namespace A081866.P9935136821288530908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081866.P9935136821288530908

namespace A081866

/-- `A321565(Δ[n²])` -/
def P9935136821288530908.Spec : Prop :=
  ∀ n, P9935136821288530908.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P3551519263533904081

`A321813(Δ[n²])`
-/

namespace A081866.P3551519263533904081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321813 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081866.P3551519263533904081

namespace A081866

/-- `A321813(Δ[n²])` -/
def P3551519263533904081.Spec : Prop :=
  ∀ n, P3551519263533904081.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P12349252166735974153

`record[A321548(n+1)]`
-/

namespace A081866.P12349252166735974153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081866.P12349252166735974153

namespace A081866

/-- `record[A321548(n+1)]` -/
def P12349252166735974153.Spec : Prop :=
  ∀ n, P12349252166735974153.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P3771749954160604759

`record[A321565(n+1)]`
-/

namespace A081866.P3771749954160604759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081866.P3771749954160604759

namespace A081866

/-- `record[A321565(n+1)]` -/
def P3771749954160604759.Spec : Prop :=
  ∀ n, P3771749954160604759.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P11292157091395483909

`record[A321813(n+1)]`
-/

namespace A081866.P11292157091395483909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081866.P11292157091395483909

namespace A081866

/-- `record[A321813(n+1)]` -/
def P11292157091395483909.Spec : Prop :=
  ∀ n, P11292157091395483909.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P17407849347574046971

`A352055(Δ[n²])+1`
-/

namespace A081866.P17407849347574046971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352055 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081866.P17407849347574046971

namespace A081866

/-- `A352055(Δ[n²])+1` -/
def P17407849347574046971.Spec : Prop :=
  ∀ n, P17407849347574046971.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P362431992825380828

`abs(A321548(2*n+1))`
-/

namespace A081866.P362431992825380828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321548 (2 * n + 1)|

end

end A081866.P362431992825380828

namespace A081866

/-- `abs(A321548(2*n+1))` -/
def P362431992825380828.Spec : Prop :=
  ∀ n, P362431992825380828.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P3125484011812715772

`abs(A321565(2*n+1))`
-/

namespace A081866.P3125484011812715772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321565 (2 * n + 1)|

end

end A081866.P3125484011812715772

namespace A081866

/-- `abs(A321565(2*n+1))` -/
def P3125484011812715772.Spec : Prop :=
  ∀ n, P3125484011812715772.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P5772095744761396918

`A029821(2*n+1)/8`
-/

namespace A081866.P5772095744761396918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029821 (2 * n + 1) : ℚ) / 8

end

end A081866.P5772095744761396918

namespace A081866

/-- `A029821(2*n+1)/8` -/
def P5772095744761396918.Spec : Prop :=
  ∀ n, P5772095744761396918.a n = (A081866 (n + 1) : ℚ)

end A081866

/-! ## A081866.P14772785006284866583

`A282254(2*n+1)/(2*n+1)`
-/

namespace A081866.P14772785006284866583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282254 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A081866.P14772785006284866583

namespace A081866

/-- `A282254(2*n+1)/(2*n+1)` -/
def P14772785006284866583.Spec : Prop :=
  ∀ n, P14772785006284866583.a n = (A081866 (n + 1) : ℚ)

end A081866

/-! ## A081866.P15462860787643662222

`A280021(2*n+1)/(2*n+1)²`
-/

namespace A081866.P15462860787643662222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280021 (2 * n + 1) : ℚ) / ((2 * n + 1) ^ 2 : ℚ)

end

end A081866.P15462860787643662222

namespace A081866

/-- `A280021(2*n+1)/(2*n+1)²` -/
def P15462860787643662222.Spec : Prop :=
  ∀ n, P15462860787643662222.a n = (A081866 (n + 1) : ℚ)

end A081866

/-! ## A081866.P11884440188683084257

`A006519(2*n+1)*A321813(2*n+1)`
-/

namespace A081866.P11884440188683084257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A321813 (2 * n + 1)

end

end A081866.P11884440188683084257

namespace A081866

/-- `A006519(2*n+1)*A321813(2*n+1)` -/
def P11884440188683084257.Spec : Prop :=
  ∀ n, P11884440188683084257.a n = A081866 (n + 1)

end A081866

/-! ## A081866.P5541175609023614543

`2*A013957(2*n+1)-A013957(2*n+1)`
-/

namespace A081866.P5541175609023614543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013957 (2 * n + 1) - A013957 (2 * n + 1)

end

end A081866.P5541175609023614543

namespace A081866

/-- `2*A013957(2*n+1)-A013957(2*n+1)` -/
def P5541175609023614543.Spec : Prop :=
  ∀ n, P5541175609023614543.a n = A081866 (n + 1)

end A081866

/-!
# A081867: a(n) = sigma_11(2n-1).

The programs for A081867, the canonical program `A081867.P2020492604411292126` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081867 has offset 1).

The definition of A081867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081867.P2020492604411292126

`∑{d}[2*n+1, #^11]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081867

/-- `∑{d}[2*n+1, #^11]` -/
def P2020492604411292126.Spec : Prop :=
  ∀ n, (P2020492604411292126.a n : ℤ) = A081867 (n + 1)

theorem P2020492604411292126.correct : P2020492604411292126.Spec := by
  intro n
  simp only [A081867, Nat.add_sub_cancel]

end A081867

/-! ## A081867.P2350996897349510911

`A013959(Δ[n²])`
-/

namespace A081867.P2350996897349510911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013959 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081867.P2350996897349510911

namespace A081867

/-- `A013959(Δ[n²])` -/
def P2350996897349510911.Spec : Prop :=
  ∀ n, P2350996897349510911.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P15819679258636457146

`A096963(Δ[n²])`
-/

namespace A081867.P15819679258636457146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081867.P15819679258636457146

namespace A081867

/-- `A096963(Δ[n²])` -/
def P15819679258636457146.Spec : Prop :=
  ∀ n, P15819679258636457146.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P12948218017515835623

`A321550(Δ[n²])`
-/

namespace A081867.P12948218017515835623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321550 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081867.P12948218017515835623

namespace A081867

/-- `A321550(Δ[n²])` -/
def P12948218017515835623.Spec : Prop :=
  ∀ n, P12948218017515835623.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P652146655314248126

`A321556(Δ[n²])`
-/

namespace A081867.P652146655314248126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321556 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081867.P652146655314248126

namespace A081867

/-- `A321556(Δ[n²])` -/
def P652146655314248126.Spec : Prop :=
  ∀ n, P652146655314248126.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P18350515861682302200

`A321808(Δ[n²])`
-/

namespace A081867.P18350515861682302200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321808 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081867.P18350515861682302200

namespace A081867

/-- `A321808(Δ[n²])` -/
def P18350515861682302200.Spec : Prop :=
  ∀ n, P18350515861682302200.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P17293005920243646762

`A321815(Δ[n²])`
-/

namespace A081867.P17293005920243646762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081867.P17293005920243646762

namespace A081867

/-- `A321815(Δ[n²])` -/
def P17293005920243646762.Spec : Prop :=
  ∀ n, P17293005920243646762.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P4783333258554075175

`record[A321550(n+1)]`
-/

namespace A081867.P4783333258554075175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081867.P4783333258554075175

namespace A081867

/-- `record[A321550(n+1)]` -/
def P4783333258554075175.Spec : Prop :=
  ∀ n, P4783333258554075175.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P7819980160899788352

`record[A321808(n+1)]`
-/

namespace A081867.P7819980160899788352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081867.P7819980160899788352

namespace A081867

/-- `record[A321808(n+1)]` -/
def P7819980160899788352.Spec : Prop :=
  ∀ n, P7819980160899788352.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P546584911018980717

`record[A321815(n+1)]`
-/

namespace A081867.P546584911018980717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081867.P546584911018980717

namespace A081867

/-- `record[A321815(n+1)]` -/
def P546584911018980717.Spec : Prop :=
  ∀ n, P546584911018980717.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P12189269409948462464

`abs(A321550(2*n+1))`
-/

namespace A081867.P12189269409948462464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321550 (2 * n + 1)|

end

end A081867.P12189269409948462464

namespace A081867

/-- `abs(A321550(2*n+1))` -/
def P12189269409948462464.Spec : Prop :=
  ∀ n, P12189269409948462464.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P11533501588061688483

`abs(A321808(2*n+1))`
-/

namespace A081867.P11533501588061688483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321808 (2 * n + 1)|

end

end A081867.P11533501588061688483

namespace A081867

/-- `abs(A321808(2*n+1))` -/
def P11533501588061688483.Spec : Prop :=
  ∀ n, P11533501588061688483.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P3711194003218856612

`A282548(2*n+1)/(2*n+1)`
-/

namespace A081867.P3711194003218856612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282548 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A081867.P3711194003218856612

namespace A081867

/-- `A282548(2*n+1)/(2*n+1)` -/
def P3711194003218856612.Spec : Prop :=
  ∀ n, P3711194003218856612.a n = (A081867 (n + 1) : ℚ)

end A081867

/-! ## A081867.P7644519544168778760

`∩[A013959(n+1), A096963(n+1)]`
-/

namespace A081867.P7644519544168778760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081867.P7644519544168778760

namespace A081867

/-- `∩[A013959(n+1), A096963(n+1)]` -/
def P7644519544168778760.Spec : Prop :=
  ∀ n, (P7644519544168778760.a n : ℤ) = A081867 (n + 1)

end A081867

/-! ## A081867.P17105852693234763530

`∩[A013959(n+1), A321556(n+1)]`
-/

namespace A081867.P17105852693234763530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081867.P17105852693234763530

namespace A081867

/-- `∩[A013959(n+1), A321556(n+1)]` -/
def P17105852693234763530.Spec : Prop :=
  ∀ n, (P17105852693234763530.a n : ℤ) = A081867 (n + 1)

end A081867

/-! ## A081867.P13598189600876815608

`∩[A096963(n+1), A321556(n+1)]`
-/

namespace A081867.P13598189600876815608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081867.P13598189600876815608

namespace A081867

/-- `∩[A096963(n+1), A321556(n+1)]` -/
def P13598189600876815608.Spec : Prop :=
  ∀ n, (P13598189600876815608.a n : ℤ) = A081867 (n + 1)

end A081867

/-! ## A081867.P9987482119587714642

`A321815(2*n+1)+A007814(2*n+1)`
-/

namespace A081867.P9987482119587714642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321815 (2 * n + 1) + A007814 (2 * n + 1)

end

end A081867.P9987482119587714642

namespace A081867

/-- `A321815(2*n+1)+A007814(2*n+1)` -/
def P9987482119587714642.Spec : Prop :=
  ∀ n, P9987482119587714642.a n = A081867 (n + 1)

end A081867

/-! ## A081867.P1238476002332282992

`A035263(2*n+1)*A321815(2*n+1)`
-/

namespace A081867.P1238476002332282992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * n + 1) * A321815 (2 * n + 1)

end

end A081867.P1238476002332282992

namespace A081867

/-- `A035263(2*n+1)*A321815(2*n+1)` -/
def P1238476002332282992.Spec : Prop :=
  ∀ n, P1238476002332282992.a n = A081867 (n + 1)

end A081867

/-!
# A081868: Numbers k such that Sum_{j=1..k} (binomial(2*j,j) mod 3) is even.

The programs for A081868, the canonical program `A081868.P17513291804743263769` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081868 has offset 1).

The definition of A081868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081868.P8978191597570524412

`lt[2, A020639(A088564(n))]`
-/

namespace A081868.P8978191597570524412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081868.P8978191597570524412

namespace A081868

/-- `lt[2, A020639(A088564(n))]` -/
def P8978191597570524412.Spec : Prop :=
  ∀ n, (P8978191597570524412.a n : ℤ) = A081868 (n + 1)

end A081868

/-! ## A081868.P17513291804743263769

`eq[A000035(A088564(n)), A054977(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A081868

/-- `eq[A000035(A088564(n)), A054977(n)]` -/
def P17513291804743263769.Spec : Prop :=
  ∀ n, (P17513291804743263769.a n : ℤ) = A081868 (n + 1)

theorem P17513291804743263769.correct : P17513291804743263769.Spec := by
  intro n
  simp only [A081868, Nat.add_sub_cancel]

end A081868

/-! ## A081868.P12814659936446841533

`eq[A000007(n), A230642(A088564(n))]`
-/

namespace A081868.P12814659936446841533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 (A088564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081868.P12814659936446841533

namespace A081868

/-- `eq[A000007(n), A230642(A088564(n))]` -/
def P12814659936446841533.Spec : Prop :=
  ∀ n, (P12814659936446841533.a n : ℤ) = A081868 (n + 1)

end A081868

/-! ## A081868.P9445682010506262674

`eq[1, A008683(2*A020639(A088564(n)))]`
-/

namespace A081868.P9445682010506262674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A020639 (A088564 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081868.P9445682010506262674

namespace A081868

/-- `eq[1, A008683(2*A020639(A088564(n)))]` -/
def P9445682010506262674.Spec : Prop :=
  ∀ n, (P9445682010506262674.a n : ℤ) = A081868 (n + 1)

end A081868

/-! ## A081868.P11083787539036507734

`eq[2, A040080(A088564(n)+A040080(n))]`
-/

namespace A081868.P11083787539036507734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 (A088564 n + A040080 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081868.P11083787539036507734

namespace A081868

/-- `eq[2, A040080(A088564(n)+A040080(n))]` -/
def P11083787539036507734.Spec : Prop :=
  ∀ n, (P11083787539036507734.a n : ℤ) = A081868 (n + 1)

end A081868

/-! ## A081868.P654510644276117619

`eq[A000038(n), A126869(A088564(n))]`
-/

namespace A081868.P654510644276117619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A088564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081868.P654510644276117619

namespace A081868

/-- `eq[A000038(n), A126869(A088564(n))]` -/
def P654510644276117619.Spec : Prop :=
  ∀ n, (P654510644276117619.a n : ℤ) = A081868 (n + 1)

end A081868

/-!
# A081869: a(1)=2; for n>1, a(n)=2*a(n-1)-1 if that number is composite, a(n)=a(n-1)+1 otherwise.

The programs for A081869, there is no canonical definition to state claims against.
-/

/-! ## A081869.P6769647096492255633

`lt[A000700(n), A003242(A059126(n))]`
-/

namespace A081869.P6769647096492255633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 (A059126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081869.P6769647096492255633

/-! ## A081869.P11805156692419777480

`A222257(A281873(a(n-1)))` with `a(0)=2`
-/

namespace A081869.P11805156692419777480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A222257 (A281873 (a (n - 1)).toNat).toNat

end

end A081869.P11805156692419777480

/-! ## A081869.P18438435057340875009

`lt[A228165(A032981(n+4)), A003973(n+1)]`
-/

namespace A081869.P18438435057340875009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228165 (A032981 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081869.P18438435057340875009

/-!
# A081870: a(1)=1, a(n)=2*a(n-1)+1 if that number is not squarefree, a(n)=a(n-1)+1 otherwise.

The programs for A081870, there is no canonical definition to state claims against.
-/

/-! ## A081870.P5749430183156860636

`∑[gcd(65, A277041(n))]`
-/

namespace A081870.P5749430183156860636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 65 (A277041 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081870.P5749430183156860636

/-! ## A081870.P1677641960448395256

`∑[gcd(8^n-1, A123422(n+1))]`
-/

namespace A081870.P1677641960448395256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((8 ^ n : ℤ) - 1) (A123422 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081870.P1677641960448395256

/-! ## A081870.P3335030883322507395

`∑[A059592(A238859(n))]`
-/

namespace A081870.P3335030883322507395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 (A238859 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081870.P3335030883322507395

/-! ## A081870.P5063437277623434791

`∑[gcd(A001047(n), A080551(n))]`
-/

namespace A081870.P5063437277623434791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001047 n) (A080551 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081870.P5063437277623434791

/-! ## A081870.P17780561526263092204

`∑[A285512(A244051(n+1)!)]`
-/

namespace A081870.P17780561526263092204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285512 (Nat.factorial (A244051 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081870.P17780561526263092204

/-!
# A081871: a(1)=1, a(n)=2*a(n-1)+1 if that number is composite, a(n)=a(n-1)+1 otherwise.

The programs for A081871, there is no canonical definition to state claims against.
-/

/-! ## A081871.P2035776655532084525

`a(n-1)*A338884(a(n-1))+1` with `a(0)=1`
-/

namespace A081871.P2035776655532084525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A338884 (a (n - 1)).toNat + 1

end

end A081871.P2035776655532084525

/-! ## A081871.P16472116277782185132

`A003602(p?[A142878(n)])`
-/

namespace A081871.P16472116277782185132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A081871.P16472116277782185132

/-! ## A081871.P6678267049073775901

`A065033(p?[A142878(n)])`
-/

namespace A081871.P6678267049073775901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A081871.P6678267049073775901

/-! ## A081871.P13403950746332303197

`A152271(p?[A142878(n)])`
-/

namespace A081871.P13403950746332303197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A081871.P13403950746332303197

/-! ## A081871.P5319811216354151931

`A003602(A142885(n+1))`
-/

namespace A081871.P5319811216354151931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A142885 (n + 1)).toNat

end

end A081871.P5319811216354151931

/-!
# A081872: Long legs of primitive Pythagorean triangles sorted on semiperimeter.

The programs for A081872, there is no canonical definition to state claims against.
-/

/-! ## A081872.P14181022721519006325

`A103606(3*n+2)%A234742(A084967(2*n+5))`
-/

namespace A081872.P14181022721519006325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103606 (3 * n + 2)) (A234742 (A084967 (2 * n + 5)).toNat)

end

end A081872.P14181022721519006325

/-! ## A081872.P12059858606331903814

`A209229(A230856(n+5))+A103606(3*n+2)`
-/

namespace A081872.P12059858606331903814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A230856 (n + 5)).toNat + A103606 (3 * n + 2)

end

end A081872.P12059858606331903814

/-! ## A081872.P2700540503769152527

`A103606(3*n+2)+A057635(A084967(3*n+2))`
-/

namespace A081872.P2700540503769152527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 2) + A057635 (A084967 (3 * n + 2)).toNat

end

end A081872.P2700540503769152527

/-! ## A081872.P16409494043710768321

`A103606(3*n+2)+A057635(A006512(n+1))`
-/

namespace A081872.P16409494043710768321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (3 * n + 2) + A057635 (A006512 (n + 1)).toNat

end

end A081872.P16409494043710768321

/-! ## A081872.P6112176785242848416

`A001511(A001359(n+1))*A103606(A016789(n))`
-/

namespace A081872.P6112176785242848416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001359 (n + 1)).toNat * A103606 (A016789 n).toNat

end

end A081872.P6112176785242848416

/-! ## A081872.P15759997990872920965

`A001511(A054735(n+1)/2-1)+A103606(A016789(n))-1`
-/

namespace A081872.P15759997990872920965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2 - 1)).toNat + (A103606 (A016789 n).toNat - 1)

end

end A081872.P15759997990872920965

/-! ## A081872.P17860463742479302913

`A001511(A001359(n+2))+A103606(A016789(n))-1`
-/

namespace A081872.P17860463742479302913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001359 (n + 2)).toNat + (A103606 (A016789 n).toNat - 1)

end

end A081872.P17860463742479302913

/-! ## A081872.P14634153293967642809

`A001511(A053742(n))*A103606(A016789(n))`
-/

namespace A081872.P14634153293967642809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A053742 n).toNat * A103606 (A016789 n).toNat

end

end A081872.P14634153293967642809

/-! ## A081872.P2976010081567860666

`A103606(n+1+A003056(∑[n+1])+n)`
-/

namespace A081872.P2976010081567860666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 ((n + 1 : ℤ) + (A003056 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ))).toNat

end

end A081872.P2976010081567860666

/-! ## A081872.P10325910826887475723

`A103606(A016789(n))+A000007(∑[n+1]+1)`
-/

namespace A081872.P10325910826887475723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (A016789 n).toNat + A000007 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A081872.P10325910826887475723

/-! ## A081872.P3356891399010296256

`A103606(A016789(n))/A014963(A330853(n+1))`
-/

namespace A081872.P3356891399010296256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103606 (A016789 n).toNat : ℚ) / (A014963 (A330853 (n + 1)).toNat : ℚ)

end

end A081872.P3356891399010296256

/-! ## A081872.P7832631718071622433

`A103606(2*n+n+2)+A000038(A059268(n))`
-/

namespace A081872.P7832631718071622433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (2 * n + (n + 2)) + A000038 (A059268 n).toNat

end

end A081872.P7832631718071622433

/-! ## A081872.P15438955793794901393

`A103606(A016789(n))%A001556(n)`
-/

namespace A081872.P15438955793794901393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103606 (A016789 n).toNat) (A001556 n)

end

end A081872.P15438955793794901393

/-!
# A081873: Ordered semiperimeter of primitive Pythagorean triangles with an odd short leg (or an even long leg).

The programs for A081873, there is no canonical definition to state claims against.
-/

/-! ## A081873.P14047610488013899412

`A120090(n+1)/2`
-/

namespace A081873.P14047610488013899412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120090 (n + 1) : ℚ) / 2

end

end A081873.P14047610488013899412

/-! ## A081873.P17360274438824303952

`sqrt(A120089(n+1))/2`
-/

namespace A081873.P17360274438824303952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A120089 (n + 1) : ℝ) / 2

end

end A081873.P17360274438824303952

/-! ## A081873.P16662859089161858671

`A000217(A120090(n+1)-1)%A120090(n+1)`
-/

namespace A081873.P16662859089161858671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A120090 (n + 1) - 1).toNat) (A120090 (n + 1))

end

end A081873.P16662859089161858671

/-! ## A081873.P3214898787045529847

`A001281(A120090(n+1))`
-/

namespace A081873.P3214898787045529847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A120090 (n + 1)).toNat

end

end A081873.P3214898787045529847

/-! ## A081873.P11412005495274244398

`A004526(A120090(n+1)+1)`
-/

namespace A081873.P11412005495274244398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A120090 (n + 1) + 1).toNat

end

end A081873.P11412005495274244398

/-! ## A081873.P8225315908539471048

`A008619(A120090(n+1)-1)`
-/

namespace A081873.P8225315908539471048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A120090 (n + 1) - 1).toNat

end

end A081873.P8225315908539471048

/-!
# A081874: Ordered odd short legs of primitive Pythagorean triangles.

The programs for A081874, there is no canonical definition to state claims against.
-/

/-! ## A081874.P8400069161489149062

`filter[A020884(n+1), A000035(#)]`
-/

namespace A081874.P8400069161489149062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A081874.P8400069161489149062

/-! ## A081874.P8466962626932369082

`filter[A020884(n+1), A039982(#)]`
-/

namespace A081874.P8466962626932369082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A081874.P8466962626932369082

/-! ## A081874.P16434283226576349104

`filter[A020884(n+1), A098725(#)]`
-/

namespace A081874.P16434283226576349104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A081874.P16434283226576349104

/-! ## A081874.P5209627898691654682

`filter[A020884(n+1), A166486(#)]`
-/

namespace A081874.P5209627898691654682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A081874.P5209627898691654682

/-! ## A081874.P16778168756677626761

`filter[A020884(n+1), A266070(#)]`
-/

namespace A081874.P16778168756677626761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A081874.P16778168756677626761

/-! ## A081874.P16355127724299569660

`filter[A020884(n+1), A266719(#)]`
-/

namespace A081874.P16355127724299569660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A081874.P16355127724299569660

/-! ## A081874.P955406324244837788

`filter[A020884(n+1), A267256(#)]`
-/

namespace A081874.P955406324244837788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A081874.P955406324244837788

/-! ## A081874.P15081381917625367022

`filter[A020884(n+1), A296066(#)]`
-/

namespace A081874.P15081381917625367022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A081874.P15081381917625367022

/-! ## A081874.P17229139125893299611

`A020884(eq[1, A020884(n+1)%2]+1)`
-/

namespace A081874.P17229139125893299611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020884 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081874.P17229139125893299611

/-! ## A081874.P3021068900741343413

`A020884(eq[1, gcd(2, A020884(n+1))]+1)`
-/

namespace A081874.P3021068900741343413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A020884 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A081874.P3021068900741343413

/-! ## A081874.P11245101061181109116

`A020884(record[n*and(1, A020884(n+1))]+1)`
-/

namespace A081874.P11245101061181109116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A020884 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A081874.P11245101061181109116

/-! ## A081874.P12887022154884781715

`A020884(record[n^and(1, A020884(n+1))]+1)`
-/

namespace A081874.P12887022154884781715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.land 1 (A020884 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A081874.P12887022154884781715

/-! ## A081874.P16413912982032588320

`filter[A263728(3*n+1), A000035(#)]`
-/

namespace A081874.P16413912982032588320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A081874.P16413912982032588320

/-! ## A081874.P3250666286259120484

`filter[A263728(3*n+1), A039982(#)]`
-/

namespace A081874.P3250666286259120484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A081874.P3250666286259120484

/-! ## A081874.P2206561942580074630

`filter[A263728(3*n+1), A098725(#)]`
-/

namespace A081874.P2206561942580074630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A081874.P2206561942580074630

/-! ## A081874.P4825376227718164081

`filter[A263728(3*n+1), A166486(#)]`
-/

namespace A081874.P4825376227718164081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A081874.P4825376227718164081

/-! ## A081874.P16560973293114602814

`filter[A263728(3*n+1), A266070(#)]`
-/

namespace A081874.P16560973293114602814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A081874.P16560973293114602814

/-! ## A081874.P15147170563798521244

`filter[A263728(3*n+1), A266719(#)]`
-/

namespace A081874.P15147170563798521244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A081874.P15147170563798521244

/-! ## A081874.P13798485467920077633

`filter[A263728(3*n+1), A267256(#)]`
-/

namespace A081874.P13798485467920077633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A081874.P13798485467920077633

/-! ## A081874.P14974029955550892403

`filter[A263728(3*n+1), A296066(#)]`
-/

namespace A081874.P14974029955550892403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A081874.P14974029955550892403

/-!
# A081875: a(n) = Sum_{d|n} phi(n/d)*C(2*d,d)/2.

The programs for A081875, the canonical program `A081875.P11648244356831158345` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081875 has offset 1).

The definition of A081875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081875.P7375796961100581708

`(n+1)*A003239(n+1)`
-/

namespace A081875.P7375796961100581708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003239 (n + 1)

end

end A081875.P7375796961100581708

namespace A081875

/-- `(n+1)*A003239(n+1)` -/
def P7375796961100581708.Spec : Prop :=
  ∀ n, P7375796961100581708.a n = A081875 (n + 1)

end A081875

/-! ## A081875.P873813140283131084

`(n+1)/2*A123611(n+1)`
-/

namespace A081875.P873813140283131084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A123611 (n + 1) : ℚ)

end

end A081875.P873813140283131084

namespace A081875

/-- `(n+1)/2*A123611(n+1)` -/
def P873813140283131084.Spec : Prop :=
  ∀ n, P873813140283131084.a n = (A081875 (n + 1) : ℚ)

end A081875

/-! ## A081875.P9632892276312808717

`∑{d}[n+1, #*A045630((n+1)/#)]`
-/

namespace A081875.P9632892276312808717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A045630 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A081875.P9632892276312808717

namespace A081875

/-- `∑{d}[n+1, #*A045630((n+1)/#)]` -/
def P9632892276312808717.Spec : Prop :=
  ∀ n, P9632892276312808717.a n = A081875 (n + 1)

end A081875

/-! ## A081875.P3704815506804664919

`∑{d}[n+1, A008683(#)*A322203((n+1)/#)]`
-/

namespace A081875.P3704815506804664919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A322203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A081875.P3704815506804664919

namespace A081875

/-- `∑{d}[n+1, A008683(#)*A322203((n+1)/#)]` -/
def P3704815506804664919.Spec : Prop :=
  ∀ n, P3704815506804664919.a n = A081875 (n + 1)

end A081875

/-! ## A081875.P11648244356831158345

`∑{d}[n+1, A067856(#)*A322187((n+1)/#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081875

/-- `∑{d}[n+1, A067856(#)*A322187((n+1)/#)]` -/
def P11648244356831158345.Spec : Prop :=
  ∀ n, P11648244356831158345.a n = A081875 (n + 1)

theorem P11648244356831158345.correct : P11648244356831158345.Spec := by
  intro n
  simp only [A081875, Nat.add_sub_cancel]

end A081875

/-! ## A081875.P2931706337053543680

`∑{d}[n+1, A000010(#)*A001700((n+1)/#-1)]`
-/

namespace A081875.P2931706337053543680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A081875.P2931706337053543680

namespace A081875

/-- `∑{d}[n+1, A000010(#)*A001700((n+1)/#-1)]` -/
def P2931706337053543680.Spec : Prop :=
  ∀ n, P2931706337053543680.a n = A081875 (n + 1)

end A081875

/-! ## A081875.P18134133686236269990

`(n+1)*A072506(∑[n+1])`
-/

namespace A081875.P18134133686236269990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081875.P18134133686236269990

namespace A081875

/-- `(n+1)*A072506(∑[n+1])` -/
def P18134133686236269990.Spec : Prop :=
  ∀ n, P18134133686236269990.a n = A081875 (n + 1)

end A081875

/-! ## A081875.P16351954369425851058

`(n+1)*A037306(2*(n+1)²)`
-/

namespace A081875.P16351954369425851058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A037306 (2 * (n + 1) ^ 2)

end

end A081875.P16351954369425851058

namespace A081875

/-- `(n+1)*A037306(2*(n+1)²)` -/
def P16351954369425851058.Spec : Prop :=
  ∀ n, P16351954369425851058.a n = A081875 (n + 1)

end A081875

/-!
# A081876: a(n) is the starting position of the second occurrence of a string of the initial n decimal digits of Pi in the decimal expansion of Pi.

The programs for A081876, there is no canonical definition to state claims against.
-/

/-! ## A081876.P17065271440705673296

`A065593(n+1)-1`
-/

namespace A081876.P17065271440705673296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065593 (n + 1) - 1

end

end A081876.P17065271440705673296

/-! ## A081876.P2946268181029383406

`abs(1-A065593(Δ[n²]-n))`
-/

namespace A081876.P2946268181029383406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A065593 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A081876.P2946268181029383406

/-! ## A081876.P15764326840393236073

`record[A065593(A328577(n))-1]`
-/

namespace A081876.P15764326840393236073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065593 (A328577 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081876.P15764326840393236073

/-! ## A081876.P12965183444118958857

`A321800(n)+A065593(n+1)`
-/

namespace A081876.P12965183444118958857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A065593 (n + 1)

end

end A081876.P12965183444118958857

/-! ## A081876.P16357384108560174666

`A321804(n)+A065593(n+1)`
-/

namespace A081876.P16357384108560174666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A065593 (n + 1)

end

end A081876.P16357384108560174666

/-!
# A081878: Triangle read by rows in which row n begins with n and iterates the process of dividing n by 2 if n is even, adding 3 if n is an odd prime, otherwise adding 1; stopping when either 1 or 3 is reached.

The programs for A081878, there is no canonical definition to state claims against.
-/

/-! ## A081878.P10726279373493338671

`A070168(lt[A127245(n), A102583(2*n)])`
-/

namespace A081878.P10726279373493338671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102583 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A081878.P10726279373493338671

/-!
# A081881: Pack bins of size 1 sequentially with items of size 1/1, 1/2, 1/3, 1/4, ... . Sequence gives values of n for which 1/n starts a new bin.

The programs for A081881, there is no canonical definition to state claims against.
-/

/-! ## A081881.P17360207255377836021

`A295571(n+1)+1`
-/

namespace A081881.P17360207255377836021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295571 (n + 1) + 1

end

end A081881.P17360207255377836021

/-! ## A081881.P1232956120669670579

`A295572(n)+a(n-1)` with `a(0)=1`
-/

namespace A081881.P1232956120669670579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295572 n + a (n - 1)

end

end A081881.P1232956120669670579

/-! ## A081881.P12559796861687259441

`∑[A295572(A065033(2*n))]`
-/

namespace A081881.P12559796861687259441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295572 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081881.P12559796861687259441

/-! ## A081881.P8920696451061700417

`∑[A295572(A000007(n)+n)]`
-/

namespace A081881.P8920696451061700417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295572 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081881.P8920696451061700417

/-! ## A081881.P9538667119609031313

`∑[A295572(or(n, A000007(n)))]`
-/

namespace A081881.P9538667119609031313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295572 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081881.P9538667119609031313

/-! ## A081881.P10130502586326605507

`∑[A295572(xor(n, A000007(n)))]`
-/

namespace A081881.P10130502586326605507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295572 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081881.P10130502586326605507

/-! ## A081881.P9107948390765612930

`∑[A295572(n+1)]+1-A295572(n+1)`
-/

namespace A081881.P9107948390765612930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A295572 (n + 1))

end

end A081881.P9107948390765612930

/-!
# A081882: Number of steps needed to reach an integer starting with n-1/4 and iterating the map x ->x*ceiling(x).

The programs for A081882, there is no canonical definition to state claims against.
-/

/-! ## A081882.P12223835643171515819

`A073341(2*n+3)`
-/

namespace A081882.P12223835643171515819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073341 (2 * n + 3)

end

end A081882.P12223835643171515819

/-! ## A081882.P16759991380627691152

`A000027(A073341(Δ[(n+1)²]))`
-/

namespace A081882.P16759991380627691152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A073341 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A081882.P16759991380627691152

/-! ## A081882.P4797991664669123869

`A001222(2^A073341(n+3+n))`
-/

namespace A081882.P4797991664669123869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A073341 (n + 3 + n) : ℤ))).toNat

end

end A081882.P4797991664669123869

/-! ## A081882.P16496032759469767988

`∑{d}[A073341(n+3+n), A000010(#)]`
-/

namespace A081882.P16496032759469767988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073341 (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A081882.P16496032759469767988

/-! ## A081882.P14574979494684611178

`gcd(A000038(n), A073341(Δ[(n+1)²]))`
-/

namespace A081882.P14574979494684611178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A073341 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A081882.P14574979494684611178

/-! ## A081882.P14217946273345305922

`A073341(Δ[(n+1)²])+A000007(n+1)`
-/

namespace A081882.P14217946273345305922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073341 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000007 (n + 1)

end

end A081882.P14217946273345305922

/-! ## A081882.P7725281555659830242

`A073341(Δ[n²]+2)/A007318(floor(1/(n+1)))`
-/

namespace A081882.P7725281555659830242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073341 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat : ℚ) / (A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A081882.P7725281555659830242

/-! ## A081882.P16343522985707033698

`A074735(4*(n+1))`
-/

namespace A081882.P16343522985707033698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074735 (4 * (n + 1))

end

end A081882.P16343522985707033698

/-! ## A081882.P1831378440716066597

`A000523(2^A073341(n+3+n))`
-/

namespace A081882.P1831378440716066597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A073341 (n + 3 + n) : ℤ))).toNat

end

end A081882.P1831378440716066597

/-!
# A081887: Numbers k such that lcm(1..k) equals the denominator of the sum of the first k harmonic numbers.

The programs for A081887, the canonical program `A081887.P3401142838611076180` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081887 has offset 1).

The definition of A081887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081887.P10591905797172678074

`p?[A098464(n+1)]-1`
-/

namespace A081887.P10591905797172678074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A081887.P10591905797172678074

namespace A081887

/-- `p?[A098464(n+1)]-1` -/
def P10591905797172678074.Spec : Prop :=
  ∀ n, P10591905797172678074.a n = A081887 (n + 1)

end A081887

/-! ## A081887.P10484666927918898928

`A000010(p?[A098464(n+1)])`
-/

namespace A081887.P10484666927918898928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A081887.P10484666927918898928

namespace A081887

/-- `A000010(p?[A098464(n+1)])` -/
def P10484666927918898928.Spec : Prop :=
  ∀ n, P10484666927918898928.a n = A081887 (n + 1)

end A081887

/-! ## A081887.P12289092857280838027

`A098371(p?[A098464(n+1)])`
-/

namespace A081887.P12289092857280838027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098371 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A081887.P12289092857280838027

namespace A081887

/-- `A098371(p?[A098464(n+1)])` -/
def P12289092857280838027.Spec : Prop :=
  ∀ n, P12289092857280838027.a n = A081887 (n + 1)

end A081887

/-! ## A081887.P7825270693673538153

`record[A014963(A098464(n+2))-1]`
-/

namespace A081887.P7825270693673538153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A098464 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081887.P7825270693673538153

namespace A081887

/-- `record[A014963(A098464(n+2))-1]` -/
def P7825270693673538153.Spec : Prop :=
  ∀ n, P7825270693673538153.a n = A081887 (n + 1)

end A081887

/-! ## A081887.P15054207213546235768

`eq[A006022(n+1), A110566(n+1)]`
-/

namespace A081887.P15054207213546235768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P15054207213546235768

namespace A081887

/-- `eq[A006022(n+1), A110566(n+1)]` -/
def P15054207213546235768.Spec : Prop :=
  ∀ n, (P15054207213546235768.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P3401142838611076180

`eq[A010051(n+1), A110566(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A081887

/-- `eq[A010051(n+1), A110566(n+1)]` -/
def P3401142838611076180.Spec : Prop :=
  ∀ n, (P3401142838611076180.a n : ℤ) = A081887 (n + 1)

theorem P3401142838611076180.correct : P3401142838611076180.Spec := by
  intro n
  simp only [A081887, Nat.add_sub_cancel]

end A081887

/-! ## A081887.P4619319708258423211

`eq[A024994(n+1), A110566(n+1)]`
-/

namespace A081887.P4619319708258423211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P4619319708258423211

namespace A081887

/-- `eq[A024994(n+1), A110566(n+1)]` -/
def P4619319708258423211.Spec : Prop :=
  ∀ n, (P4619319708258423211.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P185803288998303413

`eq[A061007(n+1), A110566(n+1)]`
-/

namespace A081887.P185803288998303413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P185803288998303413

namespace A081887

/-- `eq[A061007(n+1), A110566(n+1)]` -/
def P185803288998303413.Spec : Prop :=
  ∀ n, (P185803288998303413.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P15162754492305745536

`eq[A063476(n+1), A110566(n+1)]`
-/

namespace A081887.P15162754492305745536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P15162754492305745536

namespace A081887

/-- `eq[A063476(n+1), A110566(n+1)]` -/
def P15162754492305745536.Spec : Prop :=
  ∀ n, (P15162754492305745536.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P13139857919766618065

`eq[A064279(n+1), A110566(n+1)]`
-/

namespace A081887.P13139857919766618065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P13139857919766618065

namespace A081887

/-- `eq[A064279(n+1), A110566(n+1)]` -/
def P13139857919766618065.Spec : Prop :=
  ∀ n, (P13139857919766618065.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P5362160176300737010

`eq[A064947(n+1), A110566(n+1)]`
-/

namespace A081887.P5362160176300737010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P5362160176300737010

namespace A081887

/-- `eq[A064947(n+1), A110566(n+1)]` -/
def P5362160176300737010.Spec : Prop :=
  ∀ n, (P5362160176300737010.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P10350738090360448121

`eq[A067558(n+1), A110566(n+1)]`
-/

namespace A081887.P10350738090360448121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P10350738090360448121

namespace A081887

/-- `eq[A067558(n+1), A110566(n+1)]` -/
def P10350738090360448121.Spec : Prop :=
  ∀ n, (P10350738090360448121.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P11973067984984292598

`eq[A069249(n+1), A110566(n+1)]`
-/

namespace A081887.P11973067984984292598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P11973067984984292598

namespace A081887

/-- `eq[A069249(n+1), A110566(n+1)]` -/
def P11973067984984292598.Spec : Prop :=
  ∀ n, (P11973067984984292598.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P2149814707940360097

`eq[A069250(n+1), A110566(n+1)]`
-/

namespace A081887.P2149814707940360097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P2149814707940360097

namespace A081887

/-- `eq[A069250(n+1), A110566(n+1)]` -/
def P2149814707940360097.Spec : Prop :=
  ∀ n, (P2149814707940360097.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P11570910969749656663

`eq[A069359(n+1), A110566(n+1)]`
-/

namespace A081887.P11570910969749656663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P11570910969749656663

namespace A081887

/-- `eq[A069359(n+1), A110566(n+1)]` -/
def P11570910969749656663.Spec : Prop :=
  ∀ n, (P11570910969749656663.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P1314934575766514542

`eq[A077088(n+1), A110566(n+1)]`
-/

namespace A081887.P1314934575766514542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P1314934575766514542

namespace A081887

/-- `eq[A077088(n+1), A110566(n+1)]` -/
def P1314934575766514542.Spec : Prop :=
  ∀ n, (P1314934575766514542.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P16301666439513057951

`eq[A086156(n+1), A110566(n+1)]`
-/

namespace A081887.P16301666439513057951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P16301666439513057951

namespace A081887

/-- `eq[A086156(n+1), A110566(n+1)]` -/
def P16301666439513057951.Spec : Prop :=
  ∀ n, (P16301666439513057951.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P9939186046129768824

`eq[A095112(n+1), A110566(n+1)]`
-/

namespace A081887.P9939186046129768824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P9939186046129768824

namespace A081887

/-- `eq[A095112(n+1), A110566(n+1)]` -/
def P9939186046129768824.Spec : Prop :=
  ∀ n, (P9939186046129768824.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P11504062363388663223

`eq[A105661(n+1), A110566(n+1)]`
-/

namespace A081887.P11504062363388663223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P11504062363388663223

namespace A081887

/-- `eq[A105661(n+1), A110566(n+1)]` -/
def P11504062363388663223.Spec : Prop :=
  ∀ n, (P11504062363388663223.a n : ℤ) = A081887 (n + 1)

end A081887

/-! ## A081887.P2545513512680640305

`eq[A110566(n+1), A136180(n+1)]`
-/

namespace A081887.P2545513512680640305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081887.P2545513512680640305

namespace A081887

/-- `eq[A110566(n+1), A136180(n+1)]` -/
def P2545513512680640305.Spec : Prop :=
  ∀ n, (P2545513512680640305.a n : ℤ) = A081887 (n + 1)

end A081887

/-!
# A081888: Numbers n such that the least positive primitive root of n is larger than the value for all positive numbers smaller than n.

The programs for A081888, there is no canonical definition to state claims against.
-/

/-! ## A081888.P10960304100343888447

`A214158(A081889(n+1)%A008000(n))`
-/

namespace A081888.P10960304100343888447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 (Int.tmod (A081889 (n + 1)) (A008000 n)).toNat

end

end A081888.P10960304100343888447

/-! ## A081888.P5616205824042702729

`A214158(A081889(n+1)-A267883(n+3))`
-/

namespace A081888.P5616205824042702729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 (A081889 (n + 1) - A267883 (n + 3)).toNat

end

end A081888.P5616205824042702729

/-! ## A081888.P15560051270273149736

`A214158(xor(A081889(n+1), A267883(n+3)))`
-/

namespace A081888.P15560051270273149736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 (Int.xor (A081889 (n + 1)) (A267883 (n + 3))).toNat

end

end A081888.P15560051270273149736

/-! ## A081888.P14120002875939318329

`A214158(record[A306252(n+2)]%A193102(n))`
-/

namespace A081888.P14120002875939318329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A193102 n)).toNat

end

end A081888.P14120002875939318329

/-! ## A081888.P10358241800503663350

`A214158(record[A306252(n+2)]-A267883(n+3))`
-/

namespace A081888.P10358241800503663350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A267883 (n + 3)).toNat

end

end A081888.P10358241800503663350

/-!
# A081889: Least primitive root corresponding to A081888(n).

The programs for A081889, there is no canonical definition to state claims against.
-/

/-! ## A081889.P8425938367522025884

`record[A306252(n+2)]`
-/

namespace A081889.P8425938367522025884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081889.P8425938367522025884

/-! ## A081889.P8938737089636244616

`A111076(A081888(n+1))`
-/

namespace A081889.P8938737089636244616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A081888 (n + 1)).toNat

end

end A081889.P8938737089636244616

/-! ## A081889.P2540151057068496460

`record[A046145(A001751(n+1))]`
-/

namespace A081889.P2540151057068496460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081889.P2540151057068496460

/-! ## A081889.P805561230214582488

`record[A111076(A033948(n+1))]`
-/

namespace A081889.P805561230214582488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A033948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081889.P805561230214582488

/-! ## A081889.P10369941143294926547

`∏{p}[A046145(A081888(n+1)), A006530(#)]`
-/

namespace A081889.P10369941143294926547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A081888 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A081889.P10369941143294926547

/-!
# A081890: a(n) = 9^n - 8^n - 7^n - 6^n + 3*5^n.

The programs for A081890, the canonical program `A081890.P12736344221678593873` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081890 has offset 0).

The definition of A081890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-8^n-7^n-6^n+3*5^n` (program `A081890.P12736344221678593873`, by `A081890.P12736344221678593873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081890.P12736344221678593873

`9^n-8^n-7^n-6^n+3*5^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081890

/-- `9^n-8^n-7^n-6^n+3*5^n` -/
def P12736344221678593873.Spec : Prop :=
  ∀ n, P12736344221678593873.a n = A081890 n

theorem P12736344221678593873.correct : P12736344221678593873.Spec := by
  intro n
  simp only [A081890]

end A081890

/-!
# A081891: a(n) = 10^n - 9^n - 8^n - 7^n + 3*6^n.

The programs for A081891, the canonical program `A081891.P4398696522444758293` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081891 has offset 0).

The definition of A081891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-9^n-8^n-7^n+3*6^n` (program `A081891.P4398696522444758293`, by `A081891.P4398696522444758293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081891.P4398696522444758293

`10^n-9^n-8^n-7^n+3*6^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081891

/-- `10^n-9^n-8^n-7^n+3*6^n` -/
def P4398696522444758293.Spec : Prop :=
  ∀ n, P4398696522444758293.a n = A081891 n

theorem P4398696522444758293.correct : P4398696522444758293.Spec := by
  intro n
  simp only [A081891]

end A081891

/-!
# A081892: Second binomial transform of C(n+2,2).

The programs for A081892, the canonical program `A081892.P6804369749327387268` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081892 has offset 0).

The definition of A081892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081892.P6804369749327387268

`3^n*(n²+11*n+18)/18`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081892

/-- `3^n*(n²+11*n+18)/18` -/
def P6804369749327387268.Spec : Prop :=
  ∀ n, P6804369749327387268.a n = (A081892 n : ℚ)

end A081892

/-! ## A081892.P8145689100016461111

`A382618(n)+A027471(n+1)`
-/

namespace A081892.P8145689100016461111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382618 n + A027471 (n + 1)

end

end A081892.P8145689100016461111

namespace A081892

/-- `A382618(n)+A027471(n+1)` -/
def P8145689100016461111.Spec : Prop :=
  ∀ n, P8145689100016461111.a n = A081892 n

end A081892

/-! ## A081892.P1491160671117494218

`A006234(n+3)+A382618(n)-A000244(n)`
-/

namespace A081892.P1491160671117494218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3) + (A382618 n - A000244 n)

end

end A081892.P1491160671117494218

namespace A081892

/-- `A006234(n+3)+A382618(n)-A000244(n)` -/
def P1491160671117494218.Spec : Prop :=
  ∀ n, P1491160671117494218.a n = A081892 n

end A081892

/-! ## A081892.P11062535455893702966

`A036068(n)-A383136(n)`
-/

namespace A081892.P11062535455893702966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036068 n - A383136 n

end

end A081892.P11062535455893702966

namespace A081892

/-- `A036068(n)-A383136(n)` -/
def P11062535455893702966.Spec : Prop :=
  ∀ n, P11062535455893702966.a n = A081892 n

end A081892

/-! ## A081892.P11242222566874017778

`2*A081278(n)-∑[A081278(n)]`
-/

namespace A081892.P11242222566874017778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081278 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081892.P11242222566874017778

namespace A081892

/-- `2*A081278(n)-∑[A081278(n)]` -/
def P11242222566874017778.Spec : Prop :=
  ∀ n, P11242222566874017778.a n = A081892 n

end A081892

/-! ## A081892.P16538957714852003366

`(A081278(n)+A006234(n+3))/2`
-/

namespace A081892.P16538957714852003366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081278 n + A006234 (n + 3) : ℚ) / 2

end

end A081892.P16538957714852003366

namespace A081892

/-- `(A081278(n)+A006234(n+3))/2` -/
def P16538957714852003366.Spec : Prop :=
  ∀ n, P16538957714852003366.a n = (A081892 n : ℚ)

end A081892

/-! ## A081892.P8273784684501510620

`A081278(n)+A081278(n)-A080420(n)`
-/

namespace A081892.P8273784684501510620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081278 n + (A081278 n - A080420 n)

end

end A081892.P8273784684501510620

namespace A081892

/-- `A081278(n)+A081278(n)-A080420(n)` -/
def P8273784684501510620.Spec : Prop :=
  ∀ n, P8273784684501510620.a n = A081892 n

end A081892

/-! ## A081892.P3468060536762040052

`A080421(n)/(n+1)`
-/

namespace A081892.P3468060536762040052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080421 n : ℚ) / (n + 1 : ℚ)

end

end A081892.P3468060536762040052

namespace A081892

/-- `A080421(n)/(n+1)` -/
def P3468060536762040052.Spec : Prop :=
  ∀ n, P3468060536762040052.a n = (A081892 n : ℚ)

end A081892

/-! ## A081892.P14661380178575651373

`∑[∑[A081279(n)]]/(n+1)`
-/

namespace A081892.P14661380178575651373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A081892.P14661380178575651373

namespace A081892

/-- `∑[∑[A081279(n)]]/(n+1)` -/
def P14661380178575651373.Spec : Prop :=
  ∀ n, P14661380178575651373.a n = (A081892 n : ℚ)

end A081892

/-! ## A081892.P12393412849492451779

`A027471(n+2)+A086443(n)-A380024(n)`
-/

namespace A081892.P12393412849492451779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 2) + (A086443 n - A380024 n)

end

end A081892.P12393412849492451779

namespace A081892

/-- `A027471(n+2)+A086443(n)-A380024(n)` -/
def P12393412849492451779.Spec : Prop :=
  ∀ n, P12393412849492451779.a n = A081892 n

end A081892

/-! ## A081892.P6273148131290768483

`A027471(n+2)+A380651(n)-A380249(n)`
-/

namespace A081892.P6273148131290768483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 2) + (A380651 n - A380249 n)

end

end A081892.P6273148131290768483

namespace A081892

/-- `A027471(n+2)+A380651(n)-A380249(n)` -/
def P6273148131290768483.Spec : Prop :=
  ∀ n, P6273148131290768483.a n = A081892 n

end A081892

/-! ## A081892.P11339014071199236925

`A024462(∑[n+3])`
-/

namespace A081892.P11339014071199236925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081892.P11339014071199236925

namespace A081892

/-- `A024462(∑[n+3])` -/
def P11339014071199236925.Spec : Prop :=
  ∀ n, P11339014071199236925.a n = A081892 n

end A081892

/-!
# A081893: Third binomial transform of C(n+2,2).

The programs for A081893, the canonical program `A081893.P643709115837561969` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081893 has offset 0).

The definition of A081893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081893.P643709115837561969

`4^n*(n²+15*n+32)/32`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081893

/-- `4^n*(n²+15*n+32)/32` -/
def P643709115837561969.Spec : Prop :=
  ∀ n, P643709115837561969.a n = (A081893 n : ℚ)

end A081893

/-! ## A081893.P4393734621597696381

`A081910(n)+A002699(n)`
-/

namespace A081893.P4393734621597696381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081910 n + A002699 n

end

end A081893.P4393734621597696381

namespace A081893

/-- `A081910(n)+A002699(n)` -/
def P4393734621597696381.Spec : Prop :=
  ∀ n, P4393734621597696381.a n = A081893 n

end A081893

/-! ## A081893.P875601000579170739

`A081910(n)+A057711(2*n)`
-/

namespace A081893.P875601000579170739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081910 n + A057711 (2 * n)

end

end A081893.P875601000579170739

namespace A081893

/-- `A081910(n)+A057711(2*n)` -/
def P875601000579170739.Spec : Prop :=
  ∀ n, P875601000579170739.a n = A081893 n

end A081893

/-! ## A081893.P10054007936073343846

`A081910(n)+A000079(n)*A001787(n)`
-/

namespace A081893.P10054007936073343846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081910 n + A000079 n * A001787 n

end

end A081893.P10054007936073343846

namespace A081893

/-- `A081910(n)+A000079(n)*A001787(n)` -/
def P10054007936073343846.Spec : Prop :=
  ∀ n, P10054007936073343846.a n = A081893 n

end A081893

/-! ## A081893.P1013878495004236563

`A081910(n)+A011782(n)*A036289(n)`
-/

namespace A081893.P1013878495004236563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081910 n + A011782 n * A036289 n

end

end A081893.P1013878495004236563

namespace A081893

/-- `A081910(n)+A011782(n)*A036289(n)` -/
def P1013878495004236563.Spec : Prop :=
  ∀ n, P1013878495004236563.a n = A081893 n

end A081893

/-!
# A081894: Fourth binomial transform of C(n+2,2).

The programs for A081894, the canonical program `A081894.P2612257425881216210` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081894 has offset 0).

The definition of A081894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081894.P2612257425881216210

`5^n*(n²+19*n+50)/50`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081894

/-- `5^n*(n²+19*n+50)/50` -/
def P2612257425881216210.Spec : Prop :=
  ∀ n, P2612257425881216210.a n = (A081894 n : ℚ)

end A081894

/-!
# A081895: Second binomial transform of binomial(n+3, 3).

The programs for A081895, the canonical program `A081895.P5809129913924539786` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081895 has offset 0).

The definition of A081895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081895.P5809129913924539786

`3^n*(n^3+24*n²+137*n+162)/162`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081895

/-- `3^n*(n^3+24*n²+137*n+162)/162` -/
def P5809129913924539786.Spec : Prop :=
  ∀ n, P5809129913924539786.a n = (A081895 n : ℚ)

end A081895

/-! ## A081895.P2934144228365660468

`A081278(n)+A384198(n)-A006234(n+3)`
-/

namespace A081895.P2934144228365660468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081278 n + (A384198 n - A006234 (n + 3))

end

end A081895.P2934144228365660468

namespace A081895

/-- `A081278(n)+A384198(n)-A006234(n+3)` -/
def P2934144228365660468.Spec : Prop :=
  ∀ n, P2934144228365660468.a n = A081895 n

end A081895

/-!
# A081896: Third binomial transform of binomial(n+3, 3).

The programs for A081896, the canonical program `A081896.P15809381967734681837` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081896 has offset 0).

The definition of A081896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081896.P15809381967734681837

`4^n*(n^3+33*n²+254*n+384)/384`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081896

/-- `4^n*(n^3+33*n²+254*n+384)/384` -/
def P15809381967734681837.Spec : Prop :=
  ∀ n, P15809381967734681837.a n = (A081896 n : ℚ)

end A081896

/-!
# A081897: Fourth binomial transform of binomial(n+3, 3).

The programs for A081897, the canonical program `A081897.P8345231620525376555` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081897 has offset 0).

The definition of A081897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081897.P8345231620525376555

`5^n*(n^3+42*n²+407*n+750)/750`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081897

/-- `5^n*(n^3+42*n²+407*n+750)/750` -/
def P8345231620525376555.Spec : Prop :=
  ∀ n, P8345231620525376555.a n = (A081897 n : ℚ)

end A081897

/-!
# A081898: Second binomial transform of binomial(n+4, 4).

The programs for A081898, there is no canonical definition to state claims against.
-/

/-! ## A081898.P4033149686103190735

`A038810(A245068(n))`
-/

namespace A081898.P4033149686103190735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038810 (A245068 (n + 11)).toNat

end

end A081898.P4033149686103190735

/-!
# A081899: Third binomial transform of binomial(n+4, 4).

The programs for A081899, there is no canonical definition to state claims against.
-/

/-! ## A081899.P17849429968310168619

`A122797(A001579(n)-A005993(n))`
-/

namespace A081899.P17849429968310168619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A001579 n - A005993 n).toNat

end

end A081899.P17849429968310168619

