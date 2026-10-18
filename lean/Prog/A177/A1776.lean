import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C028
import Seq.B000.C029
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A177677: The maximum integer dimension in which the volume of the hypersphere of radius n remains larger than 1.

The programs for A177677, there is no canonical definition to state claims against.
-/

/-! ## A177677.P7452536155140154348

`A285482(n+2)-1`
-/

namespace A177677.P7452536155140154348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285482 (n + 2) - 1

end

end A177677.P7452536155140154348

/-! ## A177677.P16501027299401109436

`∑[abs(Δ[A285482(n+1)])]`
-/

namespace A177677.P16501027299401109436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177677.P16501027299401109436

/-! ## A177677.P17560826344160004810

`∑[A000027(Δ[A285482(n+1)])]`
-/

namespace A177677.P17560826344160004810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177677.P17560826344160004810

/-! ## A177677.P16694272866251940277

`∑[A028310(Δ[A285482(n+1)])]`
-/

namespace A177677.P16694272866251940277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177677.P16694272866251940277

/-! ## A177677.P9504765630388558579

`∑[A254667(Δ[A285482(n+1)])]`
-/

namespace A177677.P9504765630388558579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177677.P9504765630388558579

/-!
# A177678: Palindromic primes p = q//r//q such that q and r are also palindromic primes.

The programs for A177678, there is no canonical definition to state claims against.
-/

/-! ## A177678.P13968334140100127340

`filter[A343714(n+1), A304109(#)]`
-/

namespace A177678.P13968334140100127340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j).toNat = 1) n)

end

end A177678.P13968334140100127340

/-! ## A177678.P5366743943106371232

`filter[A343715(n+1), A304109(#)]`
-/

namespace A177678.P5366743943106371232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j).toNat = 1) n)

end

end A177678.P5366743943106371232

/-! ## A177678.P3985608636710918424

`A343715(A047253(n+1)^A065648(n))`
-/

namespace A177678.P3985608636710918424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343715 (SequenceMachineLib.roundAway ((A047253 (n + 1) : ℚ) ^ (A065648 n : ℤ))).toNat

end

end A177678.P3985608636710918424

/-! ## A177678.P1568537416834933739

`A343715(C(A047253(n+1), A065648(n)))`
-/

namespace A177678.P1568537416834933739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343715 (Nat.choose (A047253 (n + 1)).toNat (A065648 n).toNat)

end

end A177678.P1568537416834933739

/-! ## A177678.P13251636674319618058

`A343715(or(A243148(n), A348579(n+1)))`
-/

namespace A177678.P13251636674319618058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343715 (Int.lor (A243148 n) (A348579 (n + 1))).toNat

end

end A177678.P13251636674319618058

/-!
# A177679: Numbers k such that 30*k and 60*k are both the average of twin prime pairs.

The programs for A177679, there is no canonical definition to state claims against.
-/

/-! ## A177679.P6396312816631091439

`A066388(n+2)/30`
-/

namespace A177679.P6396312816631091439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066388 (n + 2) : ℚ) / 30

end

end A177679.P6396312816631091439

/-! ## A177679.P1574451847843957064

`A177680(n+2)/5`
-/

namespace A177679.P1574451847843957064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177680 (n + 2) : ℚ) / 5

end

end A177679.P1574451847843957064

/-! ## A177679.P2485767673373408378

`a(n-1)*ratio[A177680(n+1)]` with `a(0)=1`
-/

namespace A177679.P2485767673373408378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177680 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A177679.P2485767673373408378

/-! ## A177679.P15166896635728987521

`(A261463(n+3)+1)/30`
-/

namespace A177679.P15166896635728987521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261463 (n + 3) + 1 : ℚ) / 30

end

end A177679.P15166896635728987521

/-! ## A177679.P11020647830364742705

`A221310(n+5)/30`
-/

namespace A177679.P11020647830364742705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221310 (n + 5) : ℚ) / 30

end

end A177679.P11020647830364742705

/-! ## A177679.P9582370984319019420

`A014574(A158866(n+2))/30`
-/

namespace A177679.P9582370984319019420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (A158866 (n + 2)).toNat : ℚ) / 30

end

end A177679.P9582370984319019420

/-!
# A177680: Numbers n such that 6n and 12n are both the average of twin prime pairs.

The programs for A177680, there is no canonical definition to state claims against.
-/

/-! ## A177680.P11089079959193266279

`A066388(n+1)/6`
-/

namespace A177680.P11089079959193266279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066388 (n + 1) : ℚ) / 6

end

end A177680.P11089079959193266279

/-! ## A177680.P12739256037847490808

`A076504(n+1)/12`
-/

namespace A177680.P12739256037847490808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076504 (n + 1) : ℚ) / 12

end

end A177680.P12739256037847490808

/-! ## A177680.P15983180508304399814

`ceil(A069142(n+1)/6)`
-/

namespace A177680.P15983180508304399814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069142 (n + 1) : ℚ) / 6⌉

end

end A177680.P15983180508304399814

/-! ## A177680.P2895594977565332330

`floor(A158870(n+1)/12)`
-/

namespace A177680.P2895594977565332330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158870 (n + 1) : ℚ) / 12⌋

end

end A177680.P2895594977565332330

/-! ## A177680.P14579516660258938493

`A221310(n+4)/6`
-/

namespace A177680.P14579516660258938493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221310 (n + 4) : ℚ) / 6

end

end A177680.P14579516660258938493

/-! ## A177680.P4297185465884580625

`A002822(A158866(n+1)-1)`
-/

namespace A177680.P4297185465884580625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (A158866 (n + 1) - 1).toNat

end

end A177680.P4297185465884580625

/-! ## A177680.P15179021018018099003

`∩[A002822(n+1), A124519(n+1)]`
-/

namespace A177680.P15179021018018099003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177680.P15179021018018099003

/-!
# A177681: Primes p such that abs(A037861(p)) is a prime number.

The programs for A177681, there is no canonical definition to state claims against.
-/

/-! ## A177681.P18271007088149116142

`p?[A237835(n+1)*A237883(n+2)]`
-/

namespace A177681.P18271007088149116142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237835 (n + 1) * A237883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177681.P18271007088149116142

/-! ## A177681.P12457260884473760876

`filter[A095286(n+1), A114213(#)]`
-/

namespace A177681.P12457260884473760876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A177681.P12457260884473760876

/-! ## A177681.P12068766572999411083

`filter[A095286(n+1), A267959(#)]`
-/

namespace A177681.P12068766572999411083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A177681.P12068766572999411083

/-! ## A177681.P1959674263237732429

`p?[A091679(n)-A221114(n+1)]`
-/

namespace A177681.P1959674263237732429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091679 n - A221114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177681.P1959674263237732429

/-! ## A177681.P3037032426673019667

`A094548(A179273(n+1))`
-/

namespace A177681.P3037032426673019667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094548 (A179273 (n + 1)).toNat

end

end A177681.P3037032426673019667

/-!
# A177682: a(n) = 6*a(n-1)-8*a(n-2)-3 for n > 4; a(0)=179, a(1)=1571, a(2)=12511, a(3)=155403, a(4)=572951.

The programs for A177682, there is no canonical definition to state claims against.
-/

/-! ## A177682.P11472737138666825898

`A077076(4*n)/3`
-/

namespace A177682.P11472737138666825898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077076 (4 * n) : ℚ) / 3

end

end A177682.P11472737138666825898

/-!
# A177683: a(n) = 6*a(n-1)-8*a(n-2) for n > 4; a(0)=191, a(1)=1587, a(2)=14161, a(3)=123004, a(4)=508152.

The programs for A177683, there is no canonical definition to state claims against.
-/

/-! ## A177683.P14994158325177755292

`A077076(4*n+1)/6`
-/

namespace A177683.P14994158325177755292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077076 (4 * n + 1) : ℚ) / 6

end

end A177683.P14994158325177755292

/-!
# A177684: a(n) = 6*a(n-1)-8*a(n-2)-3 for n > 4; a(0)=633, a(1)=4809, a(2)=46041, a(3)=277767, a(4)=1079823.

The programs for A177684, there is no canonical definition to state claims against.
-/

/-! ## A177684.P7874888941338346442

`A077076(4*n+2)/3`
-/

namespace A177684.P7874888941338346442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077076 (4 * n + 2) : ℚ) / 3

end

end A177684.P7874888941338346442

/-!
# A177685: a(n) = 6*a(n-1)-8*a(n-2) for n > 4; a(0)=603, a(1)=4731, a(2)=58834, a(3)=254204, a(4)=1032696.

The programs for A177685, there is no canonical definition to state claims against.
-/

/-! ## A177685.P13986013299477507901

`A077076(4*n+3)/6`
-/

namespace A177685.P13986013299477507901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077076 (4 * n + 3) : ℚ) / 6

end

end A177685.P13986013299477507901

/-!
# A177686: If a1a2a3 is a 3-digit integer in a concatenated form, we define two permutations of its digits as follows: P1(a1a2a3)=a2a3a1 and P2(a1a2a3)=a1a3a2, then we take the absolute value of their difference. Thus we form a sequence: a1a2a3, abs(P1(a1a2a3)-P2(a1a2a3)), and so on.

The programs for A177686, there is no canonical definition to state claims against.
-/

/-! ## A177686.P3096570346885983903

`99*A098784(n+1)`
-/

namespace A177686.P3096570346885983903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  99 * A098784 (n + 1)

end

end A177686.P3096570346885983903

/-! ## A177686.P8301117801819612481

`99*A252001(n+1)`
-/

namespace A177686.P8301117801819612481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  99 * A252001 (n + 1)

end

end A177686.P8301117801819612481

/-! ## A177686.P11538987797265620762

`99*A028125(n)%10`
-/

namespace A177686.P11538987797265620762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  99 * Int.tmod (A028125 n) 10

end

end A177686.P11538987797265620762

/-! ## A177686.P7784093488375338684

`Δ[11*A121029(n+4)]`
-/

namespace A177686.P7784093488375338684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A121029 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177686.P7784093488375338684

/-! ## A177686.P8802630132696927359

`99*A299957(A008620(3*n+1))`
-/

namespace A177686.P8802630132696927359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  99 * A299957 (A008620 (3 * n + 1)).toNat

end

end A177686.P8802630132696927359

/-!
# A177687: Number of distinct transpositions of digits (zeros and units) in n-th prime written in base 2.

The programs for A177687, the canonical program `A177687.P13636215687742854353` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177687 has offset 1).

The definition of A177687 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177687.P13636215687742854353

`A178244(A000040(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A177687

/-- `A178244(A000040(n+1))` -/
def P13636215687742854353.Spec : Prop :=
  ∀ n, P13636215687742854353.a n = A177687 (n + 1)

theorem P13636215687742854353.correct : P13636215687742854353.Spec := by
  intro n
  simp only [A177687, Nat.add_sub_cancel]

end A177687

/-! ## A177687.P665968983461234604

`A000040(n+1)-A177852(n+1)`
-/

namespace A177687.P665968983461234604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A177852 (n + 1)

end

end A177687.P665968983461234604

namespace A177687

/-- `A000040(n+1)-A177852(n+1)` -/
def P665968983461234604.Spec : Prop :=
  ∀ n, P665968983461234604.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P5089865405303558927

`C(A035100(n+1), A014499(n+1))`
-/

namespace A177687.P5089865405303558927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035100 (n + 1)).toNat (A014499 (n + 1)).toNat

end

end A177687.P5089865405303558927

namespace A177687

/-- `C(A035100(n+1), A014499(n+1))` -/
def P5089865405303558927.Spec : Prop :=
  ∀ n, (P5089865405303558927.a n : ℤ) = A177687 (n + 1)

end A177687

/-! ## A177687.P1473498490358770580

`A067747(2*n+1)-A177852(n+1)`
-/

namespace A177687.P1473498490358770580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) - A177852 (n + 1)

end

end A177687.P1473498490358770580

namespace A177687

/-- `A067747(2*n+1)-A177852(n+1)` -/
def P1473498490358770580.Spec : Prop :=
  ∀ n, P1473498490358770580.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P16737520147352387029

`A178244(A008578(n+2))`
-/

namespace A177687.P16737520147352387029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A008578 (n + 2)).toNat

end

end A177687.P16737520147352387029

namespace A177687

/-- `A178244(A008578(n+2))` -/
def P16737520147352387029.Spec : Prop :=
  ∀ n, P16737520147352387029.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P293269085449120797

`A178244(A182986(n+2))`
-/

namespace A177687.P293269085449120797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A182986 (n + 2)).toNat

end

end A177687.P293269085449120797

namespace A177687

/-- `A178244(A182986(n+2))` -/
def P293269085449120797.Spec : Prop :=
  ∀ n, P293269085449120797.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P17636603080983283899

`A090706(A072055(n+1))`
-/

namespace A177687.P17636603080983283899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A072055 (n + 1)).toNat

end

end A177687.P17636603080983283899

namespace A177687

/-- `A090706(A072055(n+1))` -/
def P17636603080983283899.Spec : Prop :=
  ∀ n, P17636603080983283899.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P5101499527724929820

`A090706(A166496(n+1))`
-/

namespace A177687.P5101499527724929820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A166496 (n + 1)).toNat

end

end A177687.P5101499527724929820

namespace A177687

/-- `A090706(A166496(n+1))` -/
def P5101499527724929820.Spec : Prop :=
  ∀ n, P5101499527724929820.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P1710791631900547957

`A090706(A100484(n+1)+1)`
-/

namespace A177687.P1710791631900547957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A100484 (n + 1) + 1).toNat

end

end A177687.P1710791631900547957

namespace A177687

/-- `A090706(A100484(n+1)+1)` -/
def P1710791631900547957.Spec : Prop :=
  ∀ n, P1710791631900547957.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P4493076390714312204

`A090706(A001747(n+2)+1)`
-/

namespace A177687.P4493076390714312204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A001747 (n + 2) + 1).toNat

end

end A177687.P4493076390714312204

namespace A177687

/-- `A090706(A001747(n+2)+1)` -/
def P4493076390714312204.Spec : Prop :=
  ∀ n, P4493076390714312204.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P433332971459395934

`A090706(A037168(n+1)+3)`
-/

namespace A177687.P433332971459395934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A037168 (n + 1) + 3).toNat

end

end A177687.P433332971459395934

namespace A177687

/-- `A090706(A037168(n+1)+3)` -/
def P433332971459395934.Spec : Prop :=
  ∀ n, P433332971459395934.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P15881427102371469930

`A090706(2*A000040(n+1)+1)`
-/

namespace A177687.P15881427102371469930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (2 * A000040 (n + 1) + 1).toNat

end

end A177687.P15881427102371469930

namespace A177687

/-- `A090706(2*A000040(n+1)+1)` -/
def P15881427102371469930.Spec : Prop :=
  ∀ n, P15881427102371469930.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P12438876434247486236

`A090706(2*record[A006530(n+2)]+1)`
-/

namespace A177687.P12438876434247486236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A177687.P12438876434247486236

namespace A177687

/-- `A090706(2*record[A006530(n+2)]+1)` -/
def P12438876434247486236.Spec : Prop :=
  ∀ n, P12438876434247486236.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P2015907478007035712

`A090706(2*record[A000010(n+1)+1]+1)`
-/

namespace A177687.P2015907478007035712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A177687.P2015907478007035712

namespace A177687

/-- `A090706(2*record[A000010(n+1)+1]+1)` -/
def P2015907478007035712.Spec : Prop :=
  ∀ n, P2015907478007035712.a n = A177687 (n + 1)

end A177687

/-! ## A177687.P16716521917400286813

`A090706(2*(eq[n, A000010(n+1)]+1)+1)`
-/

namespace A177687.P16716521917400286813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1)

end

end A177687.P16716521917400286813

namespace A177687

/-- `A090706(2*(eq[n, A000010(n+1)]+1)+1)` -/
def P16716521917400286813.Spec : Prop :=
  ∀ n, P16716521917400286813.a n = A177687 (n + 1)

end A177687

/-!
# A177688: Numbers n such that (n+2)//n - (n+1) is prime, where // represents the concatenation of decimals.

The programs for A177688, there is no canonical definition to state claims against.
-/

/-! ## A177688.P17088813745417595458

`eq[A038500(n+1), A076328(A056538(n+1))]`
-/

namespace A177688.P17088813745417595458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076328 (A056538 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177688.P17088813745417595458

/-! ## A177688.P13666093143905026697

`lt[A327098(A168018(n+1)), A053610(3*(n+1))]`
-/

namespace A177688.P13666093143905026697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327098 (A168018 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177688.P13666093143905026697

/-! ## A177688.P18375119329193492480

`lt[A088159(A056538(n+1)), A335528(2*n+3)]`
-/

namespace A177688.P18375119329193492480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088159 (A056538 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335528 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177688.P18375119329193492480

/-!
# A177689: Sums of 2 distinct primorials.

The programs for A177689, there is no canonical definition to state claims against.
-/

/-! ## A177689.P3457628282298482381

`A370121(lt[A093101(n), A145901(n+1)])`
-/

namespace A177689.P3457628282298482381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370121 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177689.P3457628282298482381

/-! ## A177689.P14294498233917630040

`A370121(lt[2*A054533(n+1), A191090(n+1)])`
-/

namespace A177689.P14294498233917630040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370121 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177689.P14294498233917630040

/-! ## A177689.P6908030951924903970

`eq[A063438(n+1), A286626(n)]`
-/

namespace A177689.P6908030951924903970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286626 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177689.P6908030951924903970

/-! ## A177689.P4407044889971670919

`eq[A018244(n+1), A353576(n)]`
-/

namespace A177689.P4407044889971670919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177689.P4407044889971670919

/-! ## A177689.P2286312107837148611

`eq[A227783(n+1), A347962(n)]`
-/

namespace A177689.P2286312107837148611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177689.P2286312107837148611

/-!
# A177690: Denominators of the Inverse Akiyama-Tanigawa transform of the aerated even-indexed Bernoulli numbers 1, 0, 1/6, 0, -1/30, 0, 1/42, ...

The programs for A177690, there is no canonical definition to state claims against.
-/

/-! ## A177690.P9522498194909704940

`A278227(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^∑{d}[n+1, #])`
-/

namespace A177690.P9522498194909704940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278227 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ (∑ d ∈ Nat.divisors (f3 n), d))).toNat

end

end A177690.P9522498194909704940

/-! ## A177690.P442211582612026132

`A134413(A039766(n+1))`
-/

namespace A177690.P442211582612026132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134413 (A039766 (n + 1)).toNat

end

end A177690.P442211582612026132

/-!
# A177691: The odd values of PrimePi(.), with repetition.

The programs for A177691, the canonical program `A177691.P3371925039135772831` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177691 has offset 1).

The definition of A177691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177691.P15108466216380985643

`A000720(A057812(n+1))`
-/

namespace A177691.P15108466216380985643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057812 (n + 1)).toNat

end

end A177691.P15108466216380985643

namespace A177691

/-- `A000720(A057812(n+1))` -/
def P15108466216380985643.Spec : Prop :=
  ∀ n, P15108466216380985643.a n = A177691 (n + 1)

end A177691

/-! ## A177691.P17085694282628539792

`A000720(eq[1, A000720(n+1)%2]+1)`
-/

namespace A177691.P17085694282628539792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A177691.P17085694282628539792

namespace A177691

/-- `A000720(eq[1, A000720(n+1)%2]+1)` -/
def P17085694282628539792.Spec : Prop :=
  ∀ n, P17085694282628539792.a n = A177691 (n + 1)

end A177691

/-! ## A177691.P1318430437771083717

`A000720(eq[1, gcd(2, A000720(n+1))]+1)`
-/

namespace A177691.P1318430437771083717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000720 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A177691.P1318430437771083717

namespace A177691

/-- `A000720(eq[1, gcd(2, A000720(n+1))]+1)` -/
def P1318430437771083717.Spec : Prop :=
  ∀ n, P1318430437771083717.a n = A177691 (n + 1)

end A177691

/-! ## A177691.P7724704016303480336

`A000720(eq[1, and(1, A000720(n+1))]+1)`
-/

namespace A177691.P7724704016303480336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000720 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A177691.P7724704016303480336

namespace A177691

/-- `A000720(eq[1, and(1, A000720(n+1))]+1)` -/
def P7724704016303480336.Spec : Prop :=
  ∀ n, P7724704016303480336.a n = A177691 (n + 1)

end A177691

/-! ## A177691.P16035704056088680692

`A000720(lt[(-1)^A000720(n+1), 1]+1)`
-/

namespace A177691.P16035704056088680692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000720 (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1)

end

end A177691.P16035704056088680692

namespace A177691

/-- `A000720(lt[(-1)^A000720(n+1), 1]+1)` -/
def P16035704056088680692.Spec : Prop :=
  ∀ n, P16035704056088680692.a n = A177691 (n + 1)

end A177691

/-! ## A177691.P2547686514607617273

`A000720(eq[0, A065357(n)+1])`
-/

namespace A177691.P2547686514607617273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177691.P2547686514607617273

namespace A177691

/-- `A000720(eq[0, A065357(n)+1])` -/
def P2547686514607617273.Spec : Prop :=
  ∀ n, P2547686514607617273.a n = A177691 (n + 1)

end A177691

/-! ## A177691.P577059981415171415

`A000720(eq[2, 1-A065357(n)])`
-/

namespace A177691.P577059981415171415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177691.P577059981415171415

namespace A177691

/-- `A000720(eq[2, 1-A065357(n)])` -/
def P577059981415171415.Spec : Prop :=
  ∀ n, P577059981415171415.a n = A177691 (n + 1)

end A177691

/-! ## A177691.P3371925039135772831

`A230980(eq[1, gcd(2, A230980(n))])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A177691

/-- `A230980(eq[1, gcd(2, A230980(n))])` -/
def P3371925039135772831.Spec : Prop :=
  ∀ n, P3371925039135772831.a n = A177691 (n + 1)

theorem P3371925039135772831.correct : P3371925039135772831.Spec := by
  intro n
  simp only [A177691, Nat.add_sub_cancel]

end A177691

/-! ## A177691.P6223796392094948599

`A230980(eq[1, and(1, A230980(n))])`
-/

namespace A177691.P6223796392094948599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A230980 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177691.P6223796392094948599

namespace A177691

/-- `A230980(eq[1, and(1, A230980(n))])` -/
def P6223796392094948599.Spec : Prop :=
  ∀ n, P6223796392094948599.a n = A177691 (n + 1)

end A177691

/-!
# A177692: The even values of PrimePi(.), with repetition.

The programs for A177692, there is no canonical definition to state claims against.
-/

/-! ## A177692.P13528709002870587332

`∑[2*char[A054541(2*n+1)+a(n-1)]]` with `a(0)=1`
-/

namespace A177692.P13528709002870587332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A054541 (2 * n + 1) + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177692.P13528709002870587332

/-! ## A177692.P9490492906901734123

`2*∑[char[∑[(A000040(n+1)-1)*(-1)^n]]]`
-/

namespace A177692.P9490492906901734123
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177692.P9490492906901734123

/-! ## A177692.P2414339878694489300

`A000720(A057811(n+1))`
-/

namespace A177692.P2414339878694489300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057811 (n + 1)).toNat

end

end A177692.P2414339878694489300

/-! ## A177692.P7333350833029400408

`A000720(comp[n*A131378(n)])`
-/

namespace A177692.P7333350833029400408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131378 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A177692.P7333350833029400408

/-! ## A177692.P5211382791040599695

`A055679(2*A057811(n+1))`
-/

namespace A177692.P5211382791040599695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * A057811 (n + 1)).toNat

end

end A177692.P5211382791040599695

/-! ## A177692.P13890004700053483204

`A056172(2*A057811(n+1))`
-/

namespace A177692.P13890004700053483204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A057811 (n + 1)).toNat

end

end A177692.P13890004700053483204

/-! ## A177692.P15474637348577132080

`∑{d}[A057811(n+1), A062778(#)]`
-/

namespace A177692.P15474637348577132080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062778 d

end

end A177692.P15474637348577132080

/-! ## A177692.P5906959835822918382

`A000720(eq[1, A065357(n+1)]+1)`
-/

namespace A177692.P5906959835822918382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A177692.P5906959835822918382

/-! ## A177692.P12294167759218255128

`A230980(A057811(n+1)%(n+1)²)`
-/

namespace A177692.P12294167759218255128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.tmod (A057811 (n + 1)) ((n + 1) ^ 2 : ℤ)).toNat

end

end A177692.P12294167759218255128

/-! ## A177692.P5792857584660585993

`∑{d}[A230980(A057811(n+1)), A000010(#)]`
-/

namespace A177692.P5792857584660585993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A057811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A177692.P5792857584660585993

/-!
# A177693: Triangle, read by rows, T(n, k) = p(n)/(p(k)*p(n-k)), where p(n) = Product_{j=1..n} A001607(j).

The programs for A177693, there is no canonical definition to state claims against.
-/

/-! ## A177693.P14343999777618218075

`3-A005881(A045912(n))`
-/

namespace A177693.P14343999777618218075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A005881 (A045912 n).toNat

end

end A177693.P14343999777618218075

/-! ## A177693.P3134038932015535495

`A077953(∑{e}[A022166(n)², #])`
-/

namespace A177693.P3134038932015535495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A177693.P3134038932015535495

/-! ## A177693.P18082702094355167020

`3-A028641(A359993(n+1))`
-/

namespace A177693.P18082702094355167020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A028641 (A359993 (n + 1)).toNat

end

end A177693.P18082702094355167020

/-! ## A177693.P4009706288946187787

`A077953(A001222(A022166(n)²))`
-/

namespace A177693.P4009706288946187787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (A001222 (A022166 n ^ 2).toNat).toNat

end

end A177693.P4009706288946187787

/-! ## A177693.P14258354471241378598

`A077953(∑{e}[A119687(n), A104147(#)])`
-/

namespace A177693.P14258354471241378598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A104147 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A177693.P14258354471241378598

/-!
# A177696: Symmetrical triangle read by rows: T(n, k) = m*(T(n-1, k-1) + T(n-1, k)), where T(n, 1) = T(n, n) = n, and m = 2.

The programs for A177696, there is no canonical definition to state claims against.
-/

/-! ## A177696.P8551131825115394892

`xor(A135831(A256038(n)), A135835(n+1))`
-/

namespace A177696.P8551131825115394892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135831 (A256038 n).toNat) (A135835 (n + 1))

end

end A177696.P8551131825115394892

/-!
# A177697: Sums of 3 distinct primorials.

The programs for A177697, there is no canonical definition to state claims against.
-/

/-! ## A177697.P2017316528664488265

`A276156(eq[0, a(and(n, n-1))+1])` with `a(0)=-3`
-/

namespace A177697.P2017316528664488265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177697.P2017316528664488265

/-! ## A177697.P7900540572224688285

`A276156(A014311(n+1))`
-/

namespace A177697.P7900540572224688285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (A014311 (n + 1)).toNat

end

end A177697.P7900540572224688285

/-! ## A177697.P8763259877260352063

`A277021(A173589(n+1))`
-/

namespace A177697.P8763259877260352063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A173589 (n + 1)).toNat

end

end A177697.P8763259877260352063

/-! ## A177697.P5510805277844093244

`A276156(eq[3, A000120(n)])`
-/

namespace A177697.P5510805277844093244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177697.P5510805277844093244

/-! ## A177697.P741521532867731996

`A276156(eq[3, A088512(n)])`
-/

namespace A177697.P741521532867731996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177697.P741521532867731996

/-!
# A177698: Expansion of e.g.f.: sin(arctan(x)).

The programs for A177698, there is no canonical definition to state claims against.
-/

/-! ## A177698.P8205597689655469142

`(2-n)*n*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A177698.P8205597689655469142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 - (n : ℤ)) * ((n : ℤ) * a (n - 2))

end

end A177698.P8205597689655469142

/-! ## A177698.P6902166442320535116

`a(n-2)*A131386(n)` with `a(0)=0, a(1)=1`
-/

namespace A177698.P6902166442320535116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) * A131386 n

end

end A177698.P6902166442320535116

/-! ## A177698.P17562348063596934196

`∏[Δ[A141310(n)]]*A000035(n)`
-/

namespace A177698.P17562348063596934196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000035 n

end

end A177698.P17562348063596934196

/-! ## A177698.P5792717479664849129

`A066325(A000124(n))*A133221(n)`
-/

namespace A177698.P5792717479664849129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (A000124 n).toNat * A133221 n

end

end A177698.P5792717479664849129

/-! ## A177698.P1525973742949758065

`A066325(∑[A028310(n)])*A133221(n)`
-/

namespace A177698.P1525973742949758065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A133221 n

end

end A177698.P1525973742949758065

/-! ## A177698.P12831008802301076215

`A385369(xor(1, n+2))`
-/

namespace A177698.P12831008802301076215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385369 (Nat.xor 1 (n + 2))

end

end A177698.P12831008802301076215

/-! ## A177698.P15273754147944313127

`A161119(A000124(n))/A009001(n)`
-/

namespace A177698.P15273754147944313127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161119 (A000124 n).toNat : ℚ) / (A009001 n : ℚ)

end

end A177698.P15273754147944313127

/-!
# A177699: Expansion of e.g.f. log(1+x) * sinh(x).

The programs for A177699, there is no canonical definition to state claims against.
-/

/-! ## A177699.P9770722122205787423

`(A002104(n)-A002741(n))/(2*(-1)^n)`
-/

namespace A177699.P9770722122205787423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002104 n - A002741 n : ℚ) / (2 * (-1) ^ n : ℚ)

end

end A177699.P9770722122205787423

/-! ## A177699.P319362344062405290

`A002104(A237420(n))-A263102(n)`
-/

namespace A177699.P319362344062405290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 (A237420 n).toNat - A263102 n

end

end A177699.P319362344062405290

/-! ## A177699.P17851734782458583719

`A291484(n)-(A263102(n)+A009416(n))`
-/

namespace A177699.P17851734782458583719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n - (A263102 n + A009416 n)

end

end A177699.P17851734782458583719

/-! ## A177699.P7321972249205176277

`A009416(n)+A002104(n)*A033999(n)`
-/

namespace A177699.P7321972249205176277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009416 n + A002104 n * A033999 n

end

end A177699.P7321972249205176277

/-! ## A177699.P5371957661262422742

`A291484(n)-A002104(n-A237420(n))`
-/

namespace A177699.P5371957661262422742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n - A002104 ((n : ℤ) - A237420 n).toNat

end

end A177699.P5371957661262422742

/-! ## A177699.P2273958451475577138

`A009416(n+1)-A009179(n)`
-/

namespace A177699.P2273958451475577138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009416 (n + 1) - A009179 n

end

end A177699.P2273958451475577138

