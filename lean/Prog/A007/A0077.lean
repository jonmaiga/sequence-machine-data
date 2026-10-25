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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C003
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
# A007700: Numbers n such that n, 2n+1, and 4n+3 all prime.

The programs for A007700, there is no canonical definition to state claims against.
-/

/-! ## A007700.P14618246900424402847

`floor(A059455(n+1)/2)`
-/

namespace A007700.P14618246900424402847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059455 (n + 1) : ℚ) / 2⌋

end

end A007700.P14618246900424402847

/-! ## A007700.P12682237279954559939

`floor(A066179(n+1)/4)`
-/

namespace A007700.P12682237279954559939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066179 (n + 1) : ℚ) / 4⌋

end

end A007700.P12682237279954559939

/-! ## A007700.P8262985581109475620

`(A059455(A000027(n+1))-1)/2`
-/

namespace A007700.P8262985581109475620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059455 (A000027 (n + 1)).toNat - 1 : ℚ) / 2

end

end A007700.P8262985581109475620

/-! ## A007700.P2393697972133189878

`p?[floor(A005384(n+1)/2)]`
-/

namespace A007700.P2393697972133189878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005384 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007700.P2393697972133189878

/-! ## A007700.P8137834350873093783

`A100930(n+1)/A066179(n+1)`
-/

namespace A007700.P8137834350873093783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100930 (n + 1) : ℚ) / (A066179 (n + 1) : ℚ)

end

end A007700.P8137834350873093783

/-! ## A007700.P13508003804021817183

`A100930(n+1)%A059455(n+1)`
-/

namespace A007700.P13508003804021817183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100930 (n + 1)) (A059455 (n + 1))

end

end A007700.P13508003804021817183

/-! ## A007700.P7497267642449050729

`p?[A152843(n+1)+1]`
-/

namespace A007700.P7497267642449050729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152843 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007700.P7497267642449050729

/-! ## A007700.P18059727330465493501

`p?[A124485(n+1)-1]`
-/

namespace A007700.P18059727330465493501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124485 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007700.P18059727330465493501

/-! ## A007700.P15849180755445790418

`∩[A005384(n+1), A023213(n+1)]`
-/

namespace A007700.P15849180755445790418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P15849180755445790418

/-! ## A007700.P18445538849244086660

`∩[A023213(n+1), A246857(n+1)]`
-/

namespace A007700.P18445538849244086660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P18445538849244086660

/-! ## A007700.P16181610665837266585

`∩[A023213(n+1), A348511(n+1)]`
-/

namespace A007700.P16181610665837266585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P16181610665837266585

/-! ## A007700.P9438516562220617361

`∩[A023213(n+1), A364926(n+1)]`
-/

namespace A007700.P9438516562220617361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P9438516562220617361

/-! ## A007700.P3019406412531759438

`∩[A023213(n+1), A259973(n+1)]`
-/

namespace A007700.P3019406412531759438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P3019406412531759438

/-! ## A007700.P17158709563031621912

`∩[A023213(n+1), A078762(n+1)]`
-/

namespace A007700.P17158709563031621912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P17158709563031621912

/-! ## A007700.P8460980545176625741

`A006530((A059455(n+1)-1)/2)`
-/

namespace A007700.P8460980545176625741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A059455 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A007700.P8460980545176625741

/-! ## A007700.P7116845874722042103

`∩[A023213(n+1), A054639(n+1)]`
-/

namespace A007700.P7116845874722042103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P7116845874722042103

/-! ## A007700.P1895868173067309395

`∩[A014109(n+1), A023213(n+1)]`
-/

namespace A007700.P1895868173067309395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P1895868173067309395

/-! ## A007700.P17678683060411670216

`∩[A023213(n+1), A156541(n+1)]`
-/

namespace A007700.P17678683060411670216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P17678683060411670216

/-! ## A007700.P821237470602025398

`∩[A023213(n+1), A177966(n+1)]`
-/

namespace A007700.P821237470602025398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P821237470602025398

/-! ## A007700.P10691005911659424579

`∩[A005384(n+1), A294434(n)]`
-/

namespace A007700.P10691005911659424579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294434 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007700.P10691005911659424579

/-!
# A007701: a(0) = 0; for n > 0, a(n) = n^n*2^((n-1)^2).

The programs for A007701, there is no canonical definition to state claims against.
-/

/-! ## A007701.P4119264820297342397

`n*A097067(n+1)^abs(1-n)`
-/

namespace A007701.P4119264820297342397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (A097067 (n + 1) : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A007701.P4119264820297342397

/-! ## A007701.P3714346383487875928

`A052746(n)*A217652(n)`
-/

namespace A007701.P3714346383487875928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052746 n * A217652 n

end

end A007701.P3714346383487875928

/-! ## A007701.P16484911719694243681

`n*A001787(n)^(A004273(n)-n)`
-/

namespace A007701.P16484911719694243681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (A001787 n : ℚ) ^ (A004273 n - (n : ℤ) : ℤ)

end

end A007701.P16484911719694243681

/-! ## A007701.P11386881306532303083

`A001787(n)^A028310(n)/A011782(n)`
-/

namespace A007701.P11386881306532303083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 n : ℚ) ^ (A028310 n : ℤ) / (A011782 n : ℚ)

end

end A007701.P11386881306532303083

/-! ## A007701.P1940758329377074793

`A197927(n)*A274740(A000124(n))`
-/

namespace A007701.P1940758329377074793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197927 n * A274740 (A000124 n).toNat

end

end A007701.P1940758329377074793

/-!
# A007703: Regular primes.

The programs for A007703, there is no canonical definition to state claims against.
-/

/-! ## A007703.P6100597334087621950

`A000040(eq[0, A091888(n+2)]+2)`
-/

namespace A007703.P6100597334087621950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A007703.P6100597334087621950

/-! ## A007703.P12648373417610941410

`A000040(lt[A091888(n+2), 1]+2)`
-/

namespace A007703.P12648373417610941410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A007703.P12648373417610941410

/-! ## A007703.P9097228654534516566

`p?[gcd(A065091(n+1), A091888(n+2))]`
-/

namespace A007703.P9097228654534516566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065091 (n + 1)) (A091888 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A007703.P9097228654534516566

/-! ## A007703.P14829257198738463124

`A040976(lt[A091888(n+2), 1]+2)+2`
-/

namespace A007703.P14829257198738463124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) + 2

end

end A007703.P14829257198738463124

/-! ## A007703.P10626652149532133666

`A000928(n+2)-A090877(n+2)`
-/

namespace A007703.P10626652149532133666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 2) - A090877 (n + 2)

end

end A007703.P10626652149532133666

/-! ## A007703.P7007039292808725975

`A090876(n+2)-A000928(n+2)`
-/

namespace A007703.P7007039292808725975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090876 (n + 2) - A000928 (n + 2)

end

end A007703.P7007039292808725975

/-!
# A007704: a(n+2) = (a(n) - 1)*a(n+1) + 1, with (a(1), a(2)) = (2, 3).

The programs for A007704, the canonical program `A007704.P521430820069253339` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007704 has offset 1).

The definition of A007704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007704.P521430820069253339

`a(n-1)*(a(n-2)-1)+1` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007704

/-- `a(n-1)*(a(n-2)-1)+1` -/
def P521430820069253339.Spec : Prop :=
  ∀ n, P521430820069253339.a n = A007704 (n + 1)

theorem P521430820069253339.correct : P521430820069253339.Spec := by
  intro n
  simp only [A007704, Nat.add_sub_cancel]

end A007704

/-! ## A007704.P13596325849052861213

`A006277(n+1)+1`
-/

namespace A007704.P13596325849052861213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006277 (n + 1) + 1

end

end A007704.P13596325849052861213

namespace A007704

/-- `A006277(n+1)+1` -/
def P13596325849052861213.Spec : Prop :=
  ∀ n, P13596325849052861213.a n = A007704 (n + 1)

end A007704

/-! ## A007704.P7932053567046830981

`1-(1-a(n-2))*a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A007704.P7932053567046830981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  1 - (1 - a (n - 2)) * a (n - 1)

end

end A007704.P7932053567046830981

namespace A007704

/-- `1-(1-a(n-2))*a(n-1)` -/
def P7932053567046830981.Spec : Prop :=
  ∀ n, P7932053567046830981.a n = A007704 (n + 1)

end A007704

/-! ## A007704.P10111571467583079634

`ratio[A141609(n+2)]+1`
-/

namespace A007704.P10111571467583079634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141609 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + 1

end

end A007704.P10111571467583079634

namespace A007704

/-- `ratio[A141609(n+2)]+1` -/
def P10111571467583079634.Spec : Prop :=
  ∀ n, P10111571467583079634.a n = (A007704 (n + 1) : ℚ)

end A007704

/-!
# A007705: Number of ways of arranging 2n+1 nonattacking queens on a 2n+1 X 2n+1 toroidal board.

The programs for A007705, there is no canonical definition to state claims against.
-/

/-! ## A007705.P10557374462328521823

`A071607(n)*(2*n+1)`
-/

namespace A007705.P10557374462328521823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071607 n * (2 * n + 1 : ℤ)

end

end A007705.P10557374462328521823

/-! ## A007705.P13775521018242716309

`A051906(Δ[n²])`
-/

namespace A007705.P13775521018242716309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051906 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007705.P13775521018242716309

/-! ## A007705.P8507286793031159766

`Δ[n²]*A071607(n)`
-/

namespace A007705.P8507286793031159766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A071607 n

end

end A007705.P8507286793031159766

/-! ## A007705.P5545070889180825791

`and(-1, A051906(2*n+1))`
-/

namespace A007705.P5545070889180825791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A051906 (2 * n + 1))

end

end A007705.P5545070889180825791

/-! ## A007705.P9599114847401108149

`xor(char[18], A051906(n+1+n))`
-/

namespace A007705.P9599114847401108149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A051906 (n + 1 + n))

end

end A007705.P9599114847401108149

/-!
# A007706: a(n) = 1 + coefficient of x^n in Product_{k>=1} (1-x^k) (essentially the expansion of the Dedekind function eta(x)).

The programs for A007706, the canonical program `A007706.P7962893497832790206` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007706 has offset 0).

The definition of A007706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007706.P7601768480708614111

`A010815(n)+1`
-/

namespace A007706.P7601768480708614111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n + 1

end

end A007706.P7601768480708614111

namespace A007706

/-- `A010815(n)+1` -/
def P7601768480708614111.Spec : Prop :=
  ∀ n, P7601768480708614111.a n = A007706 n

end A007706

/-! ## A007706.P65164725917323060

`A274719(2*n)+1`
-/

namespace A007706.P65164725917323060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (2 * n) + 1

end

end A007706.P65164725917323060

namespace A007706

/-- `A274719(2*n)+1` -/
def P65164725917323060.Spec : Prop :=
  ∀ n, P65164725917323060.a n = A007706 n

end A007706

/-! ## A007706.P4333919190747731115

`(A261568(n)+1)%5`
-/

namespace A007706.P4333919190747731115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261568 n + 1) 5

end

end A007706.P4333919190747731115

namespace A007706

/-- `(A261568(n)+1)%5` -/
def P4333919190747731115.Spec : Prop :=
  ∀ n, P4333919190747731115.a n = A007706 n

end A007706

/-! ## A007706.P10377458020388885267

`and(3, A080332(n)+1)`
-/

namespace A007706.P10377458020388885267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A080332 n + 1)

end

end A007706.P10377458020388885267

namespace A007706

/-- `and(3, A080332(n)+1)` -/
def P10377458020388885267.Spec : Prop :=
  ∀ n, P10377458020388885267.a n = A007706 n

end A007706

/-! ## A007706.P18137512170394478936

`A286956(n)+1-n`
-/

namespace A007706.P18137512170394478936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 n + (1 - (n : ℤ))

end

end A007706.P18137512170394478936

namespace A007706

/-- `A286956(n)+1-n` -/
def P18137512170394478936.Spec : Prop :=
  ∀ n, P18137512170394478936.a n = A007706 n

end A007706

/-! ## A007706.P10774283511471095584

`abs(A121373(n)+(-1)^n)`
-/

namespace A007706.P10774283511471095584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121373 n + (-1) ^ n|

end

end A007706.P10774283511471095584

namespace A007706

/-- `abs(A121373(n)+(-1)^n)` -/
def P10774283511471095584.Spec : Prop :=
  ∀ n, P10774283511471095584.a n = A007706 n

end A007706

/-! ## A007706.P1322470132695087642

`A204843(A103214(n))+1`
-/

namespace A007706.P1322470132695087642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A103214 n).toNat + 1

end

end A007706.P1322470132695087642

namespace A007706

/-- `A204843(A103214(n))+1` -/
def P1322470132695087642.Spec : Prop :=
  ∀ n, P1322470132695087642.a n = A007706 n

end A007706

/-! ## A007706.P9879260145464156629

`A000122(and(5, A178902(n)))`
-/

namespace A007706.P9879260145464156629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.land 5 (A178902 n)).toNat

end

end A007706.P9879260145464156629

namespace A007706

/-- `A000122(and(5, A178902(n)))` -/
def P9879260145464156629.Spec : Prop :=
  ∀ n, P9879260145464156629.a n = A007706 n

end A007706

/-! ## A007706.P6148764193352720713

`A054977(n)-A257628(n)`
-/

namespace A007706.P6148764193352720713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A257628 n

end

end A007706.P6148764193352720713

namespace A007706

/-- `A054977(n)-A257628(n)` -/
def P6148764193352720713.Spec : Prop :=
  ∀ n, P6148764193352720713.a n = A007706 n

end A007706

/-! ## A007706.P3200568867867476218

`A204843(A017533(2*n))+1`
-/

namespace A007706.P3200568867867476218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A017533 (2 * n)).toNat + 1

end

end A007706.P3200568867867476218

namespace A007706

/-- `A204843(A017533(2*n))+1` -/
def P3200568867867476218.Spec : Prop :=
  ∀ n, P3200568867867476218.a n = A007706 n

end A007706

/-! ## A007706.P9642464711084705955

`A067661(n)+1-A067659(n)`
-/

namespace A007706.P9642464711084705955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n + (1 - A067659 n)

end

end A007706.P9642464711084705955

namespace A007706

/-- `A067661(n)+1-A067659(n)` -/
def P9642464711084705955.Spec : Prop :=
  ∀ n, P9642464711084705955.a n = A007706 n

end A007706

/-! ## A007706.P7962893497832790206

`A000007(n)+1-A257628(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A007706

/-- `A000007(n)+1-A257628(n)` -/
def P7962893497832790206.Spec : Prop :=
  ∀ n, P7962893497832790206.a n = A007706 n

theorem P7962893497832790206.correct : P7962893497832790206.Spec := by
  intro n
  simp only [A007706]

end A007706

/-! ## A007706.P989868244483768559

`A121373(n)*A133985(n)+1`
-/

namespace A007706.P989868244483768559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A133985 n + 1

end

end A007706.P989868244483768559

namespace A007706

/-- `A121373(n)*A133985(n)+1` -/
def P989868244483768559.Spec : Prop :=
  ∀ n, P989868244483768559.a n = A007706 n

end A007706

/-! ## A007706.P16487906687303479217

`A010872(A286956(n)-(n-1))`
-/

namespace A007706.P16487906687303479217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A286956 n - ((n : ℤ) - 1)).toNat

end

end A007706.P16487906687303479217

namespace A007706

/-- `A010872(A286956(n)-(n-1))` -/
def P16487906687303479217.Spec : Prop :=
  ∀ n, P16487906687303479217.a n = A007706 n

end A007706

/-! ## A007706.P5351319901045236595

`2-(A257628(n)+A057427(n))`
-/

namespace A007706.P5351319901045236595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A257628 n + A057427 n)

end

end A007706.P5351319901045236595

namespace A007706

/-- `2-(A257628(n)+A057427(n))` -/
def P5351319901045236595.Spec : Prop :=
  ∀ n, P5351319901045236595.a n = A007706 n

theorem P5351319901045236595.correct : P5351319901045236595.Spec := by
  intro n
  simp only [A007706, Nat.add_sub_cancel, A007706.P5351319901045236595.a, A007706.P7962893497832790206.a, A000007, A000007.P6599383543502402472.a, A057427, A057427.P3058147525557661423.a, A257628, A257628.P18237328773760466214.a, A147843, A147843.P14429766809705781327.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A078616, A078616.P11557008643438510974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007706

/-! ## A007706.P4941714911672252568

`A000122(xor(n, A121373(n)+n))`
-/

namespace A007706.P4941714911672252568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.xor (n : ℤ) (A121373 n + (n : ℤ))).toNat

end

end A007706.P4941714911672252568

namespace A007706

/-- `A000122(xor(n, A121373(n)+n))` -/
def P4941714911672252568.Spec : Prop :=
  ∀ n, P4941714911672252568.a n = A007706 n

end A007706

/-! ## A007706.P4969240525318714729

`A328795(xor(n, A121373(n)+n))`
-/

namespace A007706.P4969240525318714729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328795 (Int.xor (n : ℤ) (A121373 n + (n : ℤ))).toNat

end

end A007706.P4969240525318714729

namespace A007706

/-- `A328795(xor(n, A121373(n)+n))` -/
def P4969240525318714729.Spec : Prop :=
  ∀ n, P4969240525318714729.a n = A007706 n

end A007706

/-! ## A007706.P260863042542690043

`2-(A057077(n)²-A010815(n))`
-/

namespace A007706.P260863042542690043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A057077 n ^ 2 - A010815 n)

end

end A007706.P260863042542690043

namespace A007706

/-- `2-(A057077(n)²-A010815(n))` -/
def P260863042542690043.Spec : Prop :=
  ∀ n, P260863042542690043.a n = A007706 n

end A007706

/-! ## A007706.P17747956191089219375

`ratio[A057077(n)]*A121373(n)+1`
-/

namespace A007706.P17747956191089219375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A121373 n : ℚ) + 1

end

end A007706.P17747956191089219375

namespace A007706

/-- `ratio[A057077(n)]*A121373(n)+1` -/
def P17747956191089219375.Spec : Prop :=
  ∀ n, P17747956191089219375.a n = (A007706 n : ℚ)

end A007706

/-! ## A007706.P18054927217819949792

`A057077(2*n)*A121373(n)+1`
-/

namespace A007706.P18054927217819949792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A121373 n + 1

end

end A007706.P18054927217819949792

namespace A007706

/-- `A057077(2*n)*A121373(n)+1` -/
def P18054927217819949792.Spec : Prop :=
  ∀ n, P18054927217819949792.a n = A007706 n

end A007706

/-!
# A007707: Prime(n)*...*prime(a(n)) is the least product of consecutive primes which is abundant.

The programs for A007707, there is no canonical definition to state claims against.
-/

/-! ## A007707.P2903990465941687237

`A396829(n+1)+n`
-/

namespace A007707.P2903990465941687237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396829 (n + 1) + (n : ℤ)

end

end A007707.P2903990465941687237

/-! ## A007707.P12720968087295226310

`A007684(n+1)+A000007(n)`
-/

namespace A007707.P12720968087295226310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007684 (n + 1) + A000007 n

end

end A007707.P12720968087295226310

/-! ## A007707.P10187455525964552895

`A355449(2*n)+A007684(n+1)`
-/

namespace A007707.P10187455525964552895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (2 * n) + A007684 (n + 1)

end

end A007707.P10187455525964552895

/-! ## A007707.P4325700395169912193

`or(A007684(n+1), A186685(n+2))`
-/

namespace A007707.P4325700395169912193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007684 (n + 1)) (A186685 (n + 2))

end

end A007707.P4325700395169912193

/-! ## A007707.P17577351690098319530

`A306440(6*n+1)+A007684(n+1)`
-/

namespace A007707.P17577351690098319530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306440 (6 * n + 1) + A007684 (n + 1)

end

end A007707.P17577351690098319530

/-! ## A007707.P18133953196129006982

`A007684(n+1)+A068336(n+1)%2`
-/

namespace A007707.P18133953196129006982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007684 (n + 1) + Int.tmod (A068336 (n + 1)) 2

end

end A007707.P18133953196129006982

/-! ## A007707.P16986121901546026007

`A010052(A006530(n+1))+A007684(n+1)`
-/

namespace A007707.P16986121901546026007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A006530 (n + 1)).toNat + A007684 (n + 1)

end

end A007707.P16986121901546026007

/-! ## A007707.P11954436158507990004

`A186685(A000720(3*n+4))+A007684(n+1)`
-/

namespace A007707.P11954436158507990004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186685 (A000720 (3 * n + 4)).toNat + A007684 (n + 1)

end

end A007707.P11954436158507990004

/-! ## A007707.P18433926241134581351

`A007684(n+1)+A108227(n+1)-A107705(n+1)`
-/

namespace A007707.P18433926241134581351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007684 (n + 1) + (A108227 (n + 1) - A107705 (n + 1))

end

end A007707.P18433926241134581351

/-! ## A007707.P12836410576187805494

`A007684(n+1)+∏{p}[A002491(n+1), A066503(#)]`
-/

namespace A007707.P12836410576187805494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007684 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A066503 p

end

end A007707.P12836410576187805494

/-! ## A007707.P14296401401709730568

`A010052(n²+1)+A007684(n+1)`
-/

namespace A007707.P14296401401709730568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2 + 1) + A007684 (n + 1)

end

end A007707.P14296401401709730568

/-!
# A007708: Prime(n)*...*a(n) is the least product of consecutive primes which is abundant.

The programs for A007708, there is no canonical definition to state claims against.
-/

/-! ## A007708.P4332835745783612064

`A007686(n+1)+A000038(n)`
-/

namespace A007708.P4332835745783612064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007686 (n + 1) + A000038 n

end

end A007708.P4332835745783612064

/-! ## A007708.P1446332471114674029

`A007686(n+1)+2*A000007(n)`
-/

namespace A007708.P1446332471114674029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007686 (n + 1) + 2 * A000007 n

end

end A007708.P1446332471114674029

/-! ## A007708.P10993855040820004394

`A061006(3*(n+1))+A007686(n+1)`
-/

namespace A007708.P10993855040820004394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (3 * (n + 1)) + A007686 (n + 1)

end

end A007708.P10993855040820004394

/-! ## A007708.P11058352988672211018

`A007686(n+1)+and(2, A002313(n+1))`
-/

namespace A007708.P11058352988672211018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007686 (n + 1) + Int.land 2 (A002313 (n + 1))

end

end A007708.P11058352988672211018

/-! ## A007708.P9947336842695618789

`A130706(A286589(n))+A007686(n+1)`
-/

namespace A007708.P9947336842695618789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A286589 n).toNat + A007686 (n + 1)

end

end A007708.P9947336842695618789

/-! ## A007708.P184673059222890690

`A007686(n+1)+A007684(n+1)%A007707(n+1)`
-/

namespace A007708.P184673059222890690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007686 (n + 1) + Int.tmod (A007684 (n + 1)) (A007707 (n + 1))

end

end A007708.P184673059222890690

/-! ## A007708.P11179264078846914725

`A259748(A252090(n+1))+A007686(n+1)`
-/

namespace A007708.P11179264078846914725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259748 (A252090 (n + 1)).toNat + A007686 (n + 1)

end

end A007708.P11179264078846914725

/-! ## A007708.P2689180414908053130

`A000040(A007707(n+1))`
-/

namespace A007708.P2689180414908053130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007707 (n + 1)).toNat

end

end A007708.P2689180414908053130

/-! ## A007708.P9445856568626825756

`A008578(A007707(n+1)+1)`
-/

namespace A007708.P9445856568626825756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007707 (n + 1) + 1).toNat

end

end A007708.P9445856568626825756

/-! ## A007708.P18141306544682838241

`A000040(A396829(n+1)+n)`
-/

namespace A007708.P18141306544682838241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A396829 (n + 1) + (n : ℤ)).toNat

end

end A007708.P18141306544682838241

/-!
# A007709: Number of winning (or reformed) decks at Mousetrap.

The programs for A007709, there is no canonical definition to state claims against.
-/

/-! ## A007709.P11056308932713498271

`(n+1)!-A007711(n+1)`
-/

namespace A007709.P11056308932713498271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A007711 (n + 1)

end

end A007709.P11056308932713498271

/-! ## A007709.P3543890945972162815

`Δ[A007489(n)]-A007711(n+1)`
-/

namespace A007709.P3543890945972162815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007711 (n + 1)

end

end A007709.P3543890945972162815

/-! ## A007709.P11494448316771058008

`∏[A005555(n)]-A007711(n+1)`
-/

namespace A007709.P11494448316771058008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A007711 (n + 1)

end

end A007709.P11494448316771058008

/-! ## A007709.P3322689902294664254

`∏[A291769(n)]-A007711(n+1)`
-/

namespace A007709.P3322689902294664254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A007711 (n + 1)

end

end A007709.P3322689902294664254

/-! ## A007709.P5223589573265213520

`∏[A348553(n)]-A007711(n+1)`
-/

namespace A007709.P5223589573265213520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A007711 (n + 1)

end

end A007709.P5223589573265213520

/-!
# A007710: From the game of Mousetrap.

The programs for A007710, there is no canonical definition to state claims against.
-/

/-! ## A007710.P11176333000065065332

`A028305(1/2*(n+2)*(n+3)-(n+1))`
-/

namespace A007710.P11176333000065065332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028305 (SequenceMachineLib.roundAway ((1 : ℚ) / 2 * (n + 2 : ℚ) * (n + 3 : ℚ) - (n + 1 : ℚ))).toNat

end

end A007710.P11176333000065065332

/-! ## A007710.P3580010951432245316

`A008615(A247180((n+1)!))`
-/

namespace A007710.P3580010951432245316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A247180 (Nat.factorial (n + 1))).toNat

end

end A007710.P3580010951432245316

/-! ## A007710.P16872851770401790506

`A084680(n+1)+A004526(A292183(n))`
-/

namespace A007710.P16872851770401790506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (n + 1) + A004526 (A292183 n).toNat

end

end A007710.P16872851770401790506

/-!
# A007711: Number of unreformed permutations of {1,...,n}.

The programs for A007711, there is no canonical definition to state claims against.
-/

/-! ## A007711.P10559278626880147249

`(n+1)!-A007709(n+1)`
-/

namespace A007711.P10559278626880147249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A007709 (n + 1)

end

end A007711.P10559278626880147249

/-! ## A007711.P13208383756677407757

`Δ[A007489(n)]-A007709(n+1)`
-/

namespace A007711.P13208383756677407757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007709 (n + 1)

end

end A007711.P13208383756677407757

/-! ## A007711.P8232282419820133237

`∏[A005555(n)]-A007709(n+1)`
-/

namespace A007711.P8232282419820133237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A007709 (n + 1)

end

end A007711.P8232282419820133237

/-! ## A007711.P6051758481072966779

`∏[A291769(n)]-A007709(n+1)`
-/

namespace A007711.P6051758481072966779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A007709 (n + 1)

end

end A007711.P6051758481072966779

/-! ## A007711.P7404895992209907415

`∏[A348553(n)]-A007709(n+1)`
-/

namespace A007711.P7404895992209907415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A007709 (n + 1)

end

end A007711.P7404895992209907415

/-!
# A007712: Number of once reformable permutations of {1,2,...,n}.

The programs for A007712, there is no canonical definition to state claims against.
-/

/-! ## A007712.P8205880268606524522

`A207890(2^n)`
-/

namespace A007712.P8205880268606524522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207890 (2 ^ n)

end

end A007712.P8205880268606524522

/-! ## A007712.P9982066099616571701

`record[A207890(ceil(or(n, n+1)/2))]`
-/

namespace A007712.P9982066099616571701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207890 ⌈(Nat.lor n (n + 1) : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007712.P9982066099616571701

/-!
# A007713: Number of 4-level rooted trees with n leaves.

The programs for A007713, there is no canonical definition to state claims against.
-/

/-! ## A007713.P4959265279635910329

`A055886(∑[n]+floor(acot(n)))`
-/

namespace A007713.P4959265279635910329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055886 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A007713.P4959265279635910329

/-! ## A007713.P2208851376158002554

`A055886(∑[n]+C(2, n+2))`
-/

namespace A007713.P2208851376158002554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055886 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 2))

end

end A007713.P2208851376158002554

/-! ## A007713.P9783649765394736009

`A055886(∑[n]^floor(atan(n+1)))`
-/

namespace A007713.P9783649765394736009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055886 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ))).toNat

end

end A007713.P9783649765394736009

/-! ## A007713.P12038121664123333498

`A055886(A179865(n+1))`
-/

namespace A007713.P12038121664123333498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055886 (A179865 (n + 1)).toNat

end

end A007713.P12038121664123333498

/-! ## A007713.P7394509987407712264

`A055886(A028310(∑[n]))`
-/

namespace A007713.P7394509987407712264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055886 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007713.P7394509987407712264

/-! ## A007713.P6650485553166874813

`A290353(∑[n+5]+5)`
-/

namespace A007713.P6650485553166874813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A007713.P6650485553166874813

/-!
# A007714: Number of 5-level rooted trees with n leaves.

The programs for A007714, there is no canonical definition to state claims against.
-/

/-! ## A007714.P2166300205360409327

`A290353(A055999(n+3))`
-/

namespace A007714.P2166300205360409327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A055999 (n + 3)).toNat

end

end A007714.P2166300205360409327

/-! ## A007714.P5399806322835399257

`A290353(eq[5, A025581(n)])`
-/

namespace A007714.P5399806322835399257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007714.P5399806322835399257

/-! ## A007714.P11488189133554385605

`A290353(Δ[A023551(n+1)])`
-/

namespace A007714.P11488189133554385605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (f1 (n + 1) - f1 n).toNat

end

end A007714.P11488189133554385605

/-! ## A007714.P12307456038807413578

`A290353(eq[6, A004736(n+1)])`
-/

namespace A007714.P12307456038807413578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007714.P12307456038807413578

/-! ## A007714.P17212162620252701942

`A290353(A167614(n+3)+A005843(n+1))`
-/

namespace A007714.P17212162620252701942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167614 (n + 3) + A005843 (n + 1)).toNat

end

end A007714.P17212162620252701942

/-!
# A007715: Number of 5-leaf rooted trees with n levels.

The programs for A007715, the canonical program `A007715.P17991344837364854223` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007715 has offset 1).

The definition of A007715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007715.P16650972286146899936

`(n+1)*(n+2)*(5*(n+1)²+n+1+6)/24`
-/

namespace A007715.P16650972286146899936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (5 * (n + 1) ^ 2 + (n + 1) + 6) : ℚ) / 24

end

end A007715.P16650972286146899936

namespace A007715

/-- `(n+1)*(n+2)*(5*(n+1)²+n+1+6)/24` -/
def P16650972286146899936.Spec : Prop :=
  ∀ n, P16650972286146899936.a n = (A007715 (n + 1) : ℚ)

theorem P16650972286146899936.correct : P16650972286146899936.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A007715, Nat.add_sub_cancel, A007715.P16650972286146899936.a, A007715.P17991344837364854223.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A007715, Nat.add_sub_cancel, A007715.P16650972286146899936.a, A007715.P17991344837364854223.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007715

/-! ## A007715.P17991344837364854223

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=27, a(3)=75, a(4)=170`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007715

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17991344837364854223.Spec : Prop :=
  ∀ n, P17991344837364854223.a n = A007715 (n + 1)

theorem P17991344837364854223.correct : P17991344837364854223.Spec := by
  intro n
  simp only [A007715, Nat.add_sub_cancel]

end A007715

/-! ## A007715.P235844747758291853

`floor(∑[∑[∑[a(n-1)+5]]])` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A007715.P235844747758291853
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007715.P235844747758291853

namespace A007715

/-- `floor(∑[∑[∑[a(n-1)+5]]])` -/
def P235844747758291853.Spec : Prop :=
  ∀ n, (P235844747758291853.a n : ℤ) = A007715 (n + 1)

end A007715

/-! ## A007715.P3776056356847717817

`∑[∑[C(n+2, 2)+2*n²]]`
-/

namespace A007715.P3776056356847717817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + 2 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007715.P3776056356847717817

namespace A007715

/-- `∑[∑[C(n+2, 2)+2*n²]]` -/
def P3776056356847717817.Spec : Prop :=
  ∀ n, (P3776056356847717817.a n : ℤ) = A007715 (n + 1)

end A007715

/-! ## A007715.P701529660383649215

`floor(∑[∑[2-∑[a(n-1)-5]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A007715.P701529660383649215
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007715.P701529660383649215

namespace A007715

/-- `floor(∑[∑[2-∑[a(n-1)-5]]])` -/
def P701529660383649215.Spec : Prop :=
  ∀ n, P701529660383649215.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P4527728102712101906

`∑[2-∑[a(n-1)-5]]+a(n-1)` with `a(0)=1`
-/

namespace A007715.P4527728102712101906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A007715.P4527728102712101906

namespace A007715

/-- `∑[2-∑[a(n-1)-5]]+a(n-1)` -/
def P4527728102712101906.Spec : Prop :=
  ∀ n, P4527728102712101906.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P7839103791113482205

`a(n-1)-∑[∑[a(n-1)-5]-2]` with `a(0)=1`
-/

namespace A007715.P7839103791113482205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007715.P7839103791113482205

namespace A007715

/-- `a(n-1)-∑[∑[a(n-1)-5]-2]` -/
def P7839103791113482205.Spec : Prop :=
  ∀ n, P7839103791113482205.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P2707066107237271643

`∑[A203552(n+1)]`
-/

namespace A007715.P2707066107237271643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007715.P2707066107237271643

namespace A007715

/-- `∑[A203552(n+1)]` -/
def P2707066107237271643.Spec : Prop :=
  ∀ n, P2707066107237271643.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P4709733192488123907

`∑[∑[A134238(n+1)]]`
-/

namespace A007715.P4709733192488123907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134238 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007715.P4709733192488123907

namespace A007715

/-- `∑[∑[A134238(n+1)]]` -/
def P4709733192488123907.Spec : Prop :=
  ∀ n, P4709733192488123907.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P5598816558606657240

`∑[A162148(n)+n+1]`
-/

namespace A007715.P5598816558606657240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007715.P5598816558606657240

namespace A007715

/-- `∑[A162148(n)+n+1]` -/
def P5598816558606657240.Spec : Prop :=
  ∀ n, P5598816558606657240.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P14479759975317389709

`∑[n+1]²-A005582(n)`
-/

namespace A007715.P14479759975317389709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A005582 n

end

end A007715.P14479759975317389709

namespace A007715

/-- `∑[n+1]²-A005582(n)` -/
def P14479759975317389709.Spec : Prop :=
  ∀ n, P14479759975317389709.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P9522409724061577518

`A006322(n+1)-∑[∑[n]]`
-/

namespace A007715.P9522409724061577518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A007715.P9522409724061577518

namespace A007715

/-- `A006322(n+1)-∑[∑[n]]` -/
def P9522409724061577518.Spec : Prop :=
  ∀ n, P9522409724061577518.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P17214004460991204797

`∑[A203551(n+1)-(n+1)²]`
-/

namespace A007715.P17214004460991204797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007715.P17214004460991204797

namespace A007715

/-- `∑[A203551(n+1)-(n+1)²]` -/
def P17214004460991204797.Spec : Prop :=
  ∀ n, P17214004460991204797.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P15904547879866926843

`∑[A002411(n)]+∑[∑[(n+1)²]]`
-/

namespace A007715.P15904547879866926843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A007715.P15904547879866926843

namespace A007715

/-- `∑[A002411(n)]+∑[∑[(n+1)²]]` -/
def P15904547879866926843.Spec : Prop :=
  ∀ n, P15904547879866926843.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P6811070972656341031

`A008498(n)+A005900(n)`
-/

namespace A007715.P6811070972656341031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008498 n + A005900 n

end

end A007715.P6811070972656341031

namespace A007715

/-- `A008498(n)+A005900(n)` -/
def P6811070972656341031.Spec : Prop :=
  ∀ n, P6811070972656341031.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P3015118198926191915

`A212415(n)+A081436(n)`
-/

namespace A007715.P3015118198926191915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212415 n + A081436 n

end

end A007715.P3015118198926191915

namespace A007715

/-- `A212415(n)+A081436(n)` -/
def P3015118198926191915.Spec : Prop :=
  ∀ n, P3015118198926191915.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P16863265751331458684

`A014820(n)-A002817(n)`
-/

namespace A007715.P16863265751331458684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n - A002817 n

end

end A007715.P16863265751331458684

namespace A007715

/-- `A014820(n)-A002817(n)` -/
def P16863265751331458684.Spec : Prop :=
  ∀ n, P16863265751331458684.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P7469748547634491429

`A187673(n)-A004320(n)`
-/

namespace A007715.P7469748547634491429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 n - A004320 n

end

end A007715.P7469748547634491429

namespace A007715

/-- `A187673(n)-A004320(n)` -/
def P7469748547634491429.Spec : Prop :=
  ∀ n, P7469748547634491429.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P12452049948971672312

`A051797(n)-A241765(n)`
-/

namespace A007715.P12452049948971672312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n - A241765 n

end

end A007715.P12452049948971672312

namespace A007715

/-- `A051797(n)-A241765(n)` -/
def P12452049948971672312.Spec : Prop :=
  ∀ n, P12452049948971672312.a n = A007715 (n + 1)

end A007715

/-! ## A007715.P16711856328266400607

`A212246(n+1)+∑[n+1]`
-/

namespace A007715.P16711856328266400607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212246 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A007715.P16711856328266400607

namespace A007715

/-- `A212246(n+1)+∑[n+1]` -/
def P16711856328266400607.Spec : Prop :=
  ∀ n, P16711856328266400607.a n = A007715 (n + 1)

end A007715

/-!
# A007716: Number of polynomial symmetric functions of matrix of order n under separate row and column permutations.

The programs for A007716, there is no canonical definition to state claims against.
-/

/-! ## A007716.P2293637971906798371

`∑{d}[round(sqrt(n²+1)), A303546(#)]`
-/

namespace A007716.P2293637971906798371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303546 d

end

end A007716.P2293637971906798371

/-! ## A007716.P12596662165351280584

`A330058(n)+A302545(n)`
-/

namespace A007716.P12596662165351280584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330058 n + A302545 n

end

end A007716.P12596662165351280584

/-! ## A007716.P11634615327114321412

`2*A318395(n)-A316983(n)`
-/

namespace A007716.P11634615327114321412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318395 n - A316983 n

end

end A007716.P11634615327114321412

/-! ## A007716.P16119756167903229811

`abs(1-∑{d}[A028310(n), A303546(#)])+1`
-/

namespace A007716.P16119756167903229811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ d ∈ Nat.divisors (f1 n).natAbs, A303546 d| + 1

end

end A007716.P16119756167903229811

/-! ## A007716.P6260854438346044234

`A321283(n)+A320810(A028310(n))`
-/

namespace A007716.P6260854438346044234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321283 n + A320810 (A028310 n).toNat

end

end A007716.P6260854438346044234

/-! ## A007716.P8064680154309594699

`A000007(n+1)+∑{d}[A028310(n), A303546(#)]`
-/

namespace A007716.P8064680154309594699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A303546 d

end

end A007716.P8064680154309594699

/-! ## A007716.P16291683851567446151

`A001489(n)+∑{d}[A028310(n), A303546(#)]+n`
-/

namespace A007716.P16291683851567446151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (∑ d ∈ Nat.divisors (f1 n).natAbs, A303546 d + (n : ℤ))

end

end A007716.P16291683851567446151

/-!
# A007717: Number of symmetric polynomial functions of degree n of a symmetric matrix (of indefinitely large size) under joint row and column permutations. Also number of multigraphs with n edges (allowing loops) on an infinite set of nodes.

The programs for A007717, there is no canonical definition to state claims against.
-/

/-! ## A007717.P8811701677304902309

`A290428(A062725(n))`
-/

namespace A007717.P8811701677304902309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290428 (A062725 n).toNat

end

end A007717.P8811701677304902309

/-! ## A007717.P4158810852990787468

`A290428(A081270(n))`
-/

namespace A007717.P4158810852990787468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290428 (A081270 n).toNat

end

end A007717.P4158810852990787468

/-! ## A007717.P4773095234893110385

`A290428(A051682(n+1))`
-/

namespace A007717.P4773095234893110385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290428 (A051682 (n + 1)).toNat

end

end A007717.P4773095234893110385

/-! ## A007717.P7085886603676569004

`A331485(∑[n+2]+3)`
-/

namespace A007717.P7085886603676569004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A007717.P7085886603676569004

/-! ## A007717.P1675581906504557026

`record[A331485(A069981(n)+2)]`
-/

namespace A007717.P1675581906504557026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (A069981 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007717.P1675581906504557026

/-!
# A007718: Number of independent polynomial invariants of matrix of order n.

The programs for A007718, there is no canonical definition to state claims against.
-/

/-! ## A007718.P14999936483680107668

`A321194(C(n, 2)+1)`
-/

namespace A007718.P14999936483680107668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321194 (Nat.choose n 2 + 1)

end

end A007718.P14999936483680107668

/-! ## A007718.P3974608508972609115

`A321194(∑[abs(1-n)])`
-/

namespace A007718.P3974608508972609115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007718.P3974608508972609115

/-! ## A007718.P6266905774916054190

`A302594(A000219(n))`
-/

namespace A007718.P6266905774916054190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302594 (A000219 n).toNat

end

end A007718.P6266905774916054190

/-!
# A007719: Number of independent polynomial invariants of symmetric matrix of order n.

The programs for A007719, there is no canonical definition to state claims against.
-/

/-! ## A007719.P1204541845061186250

`A089576(A150658(n))`
-/

namespace A007719.P1204541845061186250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089576 (A150658 n).toNat

end

end A007719.P1204541845061186250

/-! ## A007719.P887959623959157641

`A058032(A050385(n+2))`
-/

namespace A007719.P887959623959157641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058032 (A050385 (n + 2)).toNat

end

end A007719.P887959623959157641

/-! ## A007719.P2453619604441495153

`A001462(A121555(n+1)+gcd(n, ∑[n]))`
-/

namespace A007719.P2453619604441495153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A121555 (n + 1) + (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A007719.P2453619604441495153

/-!
# A007720: Arises in attempts to apply Engel's `probabilistic abacus' to random walks on infinite square grid.

The programs for A007720, there is no canonical definition to state claims against.
-/

/-! ## A007720.P8536588205622288043

`A002828(lt[A070565(n+1), A053836(n)])`
-/

namespace A007720.P8536588205622288043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007720.P8536588205622288043

/-! ## A007720.P1430501071556201824

`A043562(A086066(3*n+1)*A105121(n+1))`
-/

namespace A007720.P1430501071556201824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A086066 (3 * n + 1) * A105121 (n + 1)).toNat

end

end A007720.P1430501071556201824

/-!
# A007721: Number of distinct degree sequences among all connected graphs with n nodes.

The programs for A007721, there is no canonical definition to state claims against.
-/

/-! ## A007721.P14534214119427072989

`or(A003002(n), A008621(A000984(n)))`
-/

namespace A007721.P14534214119427072989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003002 n) (A008621 (A000984 n).toNat)

end

end A007721.P14534214119427072989

/-! ## A007721.P16093819860320583985

`or(A008621(A000984(n)), A020915(n))`
-/

namespace A007721.P16093819860320583985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008621 (A000984 n).toNat) (A020915 n)

end

end A007721.P16093819860320583985

/-! ## A007721.P14777328022377146373

`or(A008621(A000984(n)), A051068(n))`
-/

namespace A007721.P14777328022377146373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008621 (A000984 n).toNat) (A051068 n)

end

end A007721.P14777328022377146373

/-! ## A007721.P17253764668650171267

`or(A008621(A000984(n)), A077773(n))`
-/

namespace A007721.P17253764668650171267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008621 (A000984 n).toNat) (A077773 n)

end

end A007721.P17253764668650171267

/-!
# A007722: Number of graphical partitions of biconnected graphs with n nodes.

The programs for A007722, there is no canonical definition to state claims against.
-/

/-! ## A007722.P5441496655352581828

`A082514(∑[1-2^n]²+1)`
-/

namespace A007722.P5441496655352581828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1).toNat

end

end A007722.P5441496655352581828

/-! ## A007722.P12183812962071903477

`∑[A262293(n+2)+∏[2-n²%3]-1]`
-/

namespace A007722.P12183812962071903477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262293 (n + 2) + (∏ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007722.P12183812962071903477

/-!
# A007723: Triangle a(n,k) of number of M-sequences read by antidiagonals.

The programs for A007723, there is no canonical definition to state claims against.
-/

/-! ## A007723.P4548882177996622893

`A117806(A238303(n)^A097805(n))`
-/

namespace A007723.P4548882177996622893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117806 (SequenceMachineLib.roundAway ((A238303 n : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A007723.P4548882177996622893

/-! ## A007723.P11817798159653445399

`A117806(A238303(n)^A213889(n))`
-/

namespace A007723.P11817798159653445399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117806 (SequenceMachineLib.roundAway ((A238303 n : ℚ) ^ (A213889 n : ℤ))).toNat

end

end A007723.P11817798159653445399

/-! ## A007723.P1386478027293588215

`A078840(A097805(n)%A116427(n))`
-/

namespace A007723.P1386478027293588215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (Int.tmod (A097805 n) (A116427 n)).toNat

end

end A007723.P1386478027293588215

/-!
# A007724: Even minus odd extensions of truncated 3 X 2n grid diagram.

The programs for A007724, the canonical program `A007724.P18167815655044341567` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007724 has offset 2).

The definition of A007724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007724.P18167815655044341567

`(3*(n+2))!/((2*(n+2)+1)*(2*(n+2)-1)*(n+3)!*(n+2)!²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007724

/-- `(3*(n+2))!/((2*(n+2)+1)*(2*(n+2)-1)*(n+3)!*(n+2)!²)` -/
def P18167815655044341567.Spec : Prop :=
  ∀ n, P18167815655044341567.a n = (A007724 (n + 2) : ℚ)

end A007724

/-! ## A007724.P9062217542039464301

`A217800(n+1)`
-/

namespace A007724.P9062217542039464301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217800 (n + 1)

end

end A007724.P9062217542039464301

namespace A007724

/-- `A217800(n+1)` -/
def P9062217542039464301.Spec : Prop :=
  ∀ n, P9062217542039464301.a n = A007724 (n + 2)

end A007724

/-! ## A007724.P45493636237254821

`record[A217800(abs(1-n))]`
-/

namespace A007724.P45493636237254821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217800 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007724.P45493636237254821

namespace A007724

/-- `record[A217800(abs(1-n))]` -/
def P45493636237254821.Spec : Prop :=
  ∀ n, P45493636237254821.a n = A007724 (n + 2)

end A007724

/-! ## A007724.P4420205591434936070

`record[A000139(n)*A120588(n)]`
-/

namespace A007724.P4420205591434936070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n * A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007724.P4420205591434936070

namespace A007724

/-- `record[A000139(n)*A120588(n)]` -/
def P4420205591434936070.Spec : Prop :=
  ∀ n, P4420205591434936070.a n = A007724 (n + 2)

end A007724

/-! ## A007724.P7193345646577897891

`record[abs(A000139(n)*A115140(n))]`
-/

namespace A007724.P7193345646577897891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000139 n * A115140 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007724.P7193345646577897891

namespace A007724

/-- `record[abs(A000139(n)*A115140(n))]` -/
def P7193345646577897891.Spec : Prop :=
  ∀ n, P7193345646577897891.a n = A007724 (n + 2)

end A007724

/-! ## A007724.P6442583770997512732

`record[A000139(n)]*record[A097331(n)]`
-/

namespace A007724.P6442583770997512732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A007724.P6442583770997512732

namespace A007724

/-- `record[A000139(n)]*record[A097331(n)]` -/
def P6442583770997512732.Spec : Prop :=
  ∀ n, P6442583770997512732.a n = A007724 (n + 2)

end A007724

/-! ## A007724.P8032384087845789285

`record[A000139(n)]*record[A106566(n)]`
-/

namespace A007724.P8032384087845789285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A007724.P8032384087845789285

namespace A007724

/-- `record[A000139(n)]*record[A106566(n)]` -/
def P8032384087845789285.Spec : Prop :=
  ∀ n, P8032384087845789285.a n = A007724 (n + 2)

end A007724

/-! ## A007724.P9517461451706428510

`A000108(n+1)*record[A000139(n)]`
-/

namespace A007724.P9517461451706428510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007724.P9517461451706428510

namespace A007724

/-- `A000108(n+1)*record[A000139(n)]` -/
def P9517461451706428510.Spec : Prop :=
  ∀ n, P9517461451706428510.a n = A007724 (n + 2)

end A007724

/-! ## A007724.P2544919765349500070

`A000108(n+1)*A000139(n+2)`
-/

namespace A007724.P2544919765349500070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000139 (n + 2)

end

end A007724.P2544919765349500070

namespace A007724

/-- `A000108(n+1)*A000139(n+2)` -/
def P2544919765349500070.Spec : Prop :=
  ∀ n, P2544919765349500070.a n = A007724 (n + 2)

end A007724

/-!
# A007725: Number of spanning trees of Aztec diamonds of order n.

The programs for A007725, there is no canonical definition to state claims against.
-/

/-! ## A007725.P3063827787133736444

`A071102(A004277(n))*A071136(n+2)`
-/

namespace A007725.P3063827787133736444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071102 (A004277 n).toNat * A071136 (n + 2)

end

end A007725.P3063827787133736444

/-!
# A007726: Number of spanning trees of quarter Aztec diamonds of order n.

The programs for A007726, there is no canonical definition to state claims against.
-/

/-! ## A007726.P10061394220403856680

`sqrt(A007341(n+1)/((n+1)*2^n))`
-/

namespace A007726.P10061394220403856680
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A007341 (n + 1) : ℚ) / ((n + 1) * 2 ^ n : ℚ) : ℝ)

end

end A007726.P10061394220403856680

/-!
# A007727: Number of 2n-bead black-white strings with n black beads and fundamental period 2n.

The programs for A007727, there is no canonical definition to state claims against.
-/

/-! ## A007727.P16150595874999967329

`record[floor(n/a(n-1))]*A022553(n)` with `a(0)=1`
-/

namespace A007727.P16150595874999967329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A022553 n

end

end A007727.P16150595874999967329

/-! ## A007727.P14488526739287180451

`A004277(n)*A022553(n)`
-/

namespace A007727.P14488526739287180451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A022553 n

end

end A007727.P14488526739287180451

/-! ## A007727.P10340799591027773501

`record[A005131(n)]*A022553(n)`
-/

namespace A007727.P10340799591027773501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A022553 n

end

end A007727.P10340799591027773501

/-! ## A007727.P3091788270718981097

`A004275(n+1)*A022553(n)`
-/

namespace A007727.P3091788270718981097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) * A022553 n

end

end A007727.P3091788270718981097

/-! ## A007727.P3119681578256347646

`(A004273(n)+1)*A022553(n)`
-/

namespace A007727.P3119681578256347646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + 1) * A022553 n

end

end A007727.P3119681578256347646

/-! ## A007727.P8828705482487056868

`A036453(n+1)*A045630(n)`
-/

namespace A007727.P8828705482487056868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A045630 n

end

end A007727.P8828705482487056868

/-! ## A007727.P12791544120465996780

`A022553(n)*A028310(2*n)`
-/

namespace A007727.P12791544120465996780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n * A028310 (2 * n)

end

end A007727.P12791544120465996780

/-! ## A007727.P2615780739768069150

`A022553(n)*A274922(2*n)`
-/

namespace A007727.P2615780739768069150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n * A274922 (2 * n)

end

end A007727.P2615780739768069150

/-! ## A007727.P17248449530136751212

`A014963(A001316(n))*A045630(n)`
-/

namespace A007727.P17248449530136751212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A045630 n

end

end A007727.P17248449530136751212

/-! ## A007727.P10096170876444481441

`A020639(A000010(n+2))*A045630(n)`
-/

namespace A007727.P10096170876444481441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A045630 n

end

end A007727.P10096170876444481441

/-! ## A007727.P5536709674090247231

`A022553(n)/A045680(n)*A045662(n)`
-/

namespace A007727.P5536709674090247231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022553 n : ℚ) / (A045680 n : ℚ) * (A045662 n : ℚ)

end

end A007727.P5536709674090247231

/-! ## A007727.P13899774713116168686

`A000984(n)/A088218(n)*A045630(n)`
-/

namespace A007727.P13899774713116168686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A088218 n : ℚ) * (A045630 n : ℚ)

end

end A007727.P13899774713116168686

/-! ## A007727.P3508280155295117940

`A000005(record[A014963(n+1)])*A045630(n)`
-/

namespace A007727.P3508280155295117940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A045630 n

end

end A007727.P3508280155295117940

/-! ## A007727.P16301770356600207563

`A000267(n²)*A022553(n)`
-/

namespace A007727.P16301770356600207563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (n ^ 2) * A022553 n

end

end A007727.P16301770356600207563

/-!
# A007728: 5th binary partition function.

The programs for A007728, there is no canonical definition to state claims against.
-/

/-! ## A007728.P4930819266850562554

`A072170(∑[n+3]+6)`
-/

namespace A007728.P4930819266850562554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A007728.P4930819266850562554

/-! ## A007728.P6670966577933646954

`or(char[1], A072170(A167614(n+2)))`
-/

namespace A007728.P6670966577933646954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A072170 (A167614 (n + 2)).toNat)

end

end A007728.P6670966577933646954

/-! ## A007728.P15798950278031400082

`or(char[1], A072170(A152950(n+4)))`
-/

namespace A007728.P15798950278031400082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A072170 (A152950 (n + 4)).toNat)

end

end A007728.P15798950278031400082

/-! ## A007728.P6459531131915023337

`(A072170(A052905(n)+8)^(1/2))²`
-/

namespace A007728.P6459531131915023337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A072170 (A052905 n + 8).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A007728.P6459531131915023337

/-! ## A007728.P13025779641492440528

`or(char[1], A072170(A034856(n+2)+5))`
-/

namespace A007728.P13025779641492440528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A072170 (A034856 (n + 2) + 5).toNat)

end

end A007728.P13025779641492440528

/-! ## A007728.P7748230051197962652

`A072170(A167614(n+2))%A000041(n+2)`
-/

namespace A007728.P7748230051197962652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072170 (A167614 (n + 2)).toNat) (A000041 (n + 2))

end

end A007728.P7748230051197962652

/-! ## A007728.P862853584684045256

`gcd(2*A000007(n), A072170(A167614(n+2)))`
-/

namespace A007728.P862853584684045256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A000007 n) (A072170 (A167614 (n + 2)).toNat)

end

end A007728.P862853584684045256

/-! ## A007728.P7105605037192211898

`A072170(A034856(n+2)+5)%A146081(n)`
-/

namespace A007728.P7105605037192211898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072170 (A034856 (n + 2) + 5).toNat) (A146081 n)

end

end A007728.P7105605037192211898

/-! ## A007728.P11868502010511343902

`A072170(A152950(n+4))^A000108(C(2, n))`
-/

namespace A007728.P11868502010511343902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072170 (A152950 (n + 4)).toNat : ℚ) ^ (A000108 (Nat.choose 2 n) : ℤ)

end

end A007728.P11868502010511343902

/-! ## A007728.P13508043101561498945

`∑{d}[A072170(A034856(n+2)+5), A000010(#)]`
-/

namespace A007728.P13508043101561498945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A034856 (n + 2) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A007728.P13508043101561498945

/-! ## A007728.P10393800128735541647

`∏{d}[A072170(A034856(n+2)+5), A014963(#)]`
-/

namespace A007728.P10393800128735541647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A034856 (n + 2) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A007728.P10393800128735541647

/-! ## A007728.P8723262580207993592

`A007318(C(2, n))*A072170(A034856(n+2)+5)`
-/

namespace A007728.P8723262580207993592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A072170 (A034856 (n + 2) + 5).toNat

end

end A007728.P8723262580207993592

/-! ## A007728.P10417365740809341720

`A072170(A167614(n+2))^gcd(n+4, A201255(n+1))`
-/

namespace A007728.P10417365740809341720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A167614 (n + 2)).toNat ^ Int.gcd (n + 4 : ℤ) (A201255 (n + 1))

end

end A007728.P10417365740809341720

/-! ## A007728.P16529576639478123338

`A014963(A008458(n))*A072170(A034856(n+2)+5)`
-/

namespace A007728.P16529576639478123338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A072170 (A034856 (n + 2) + 5).toNat

end

end A007728.P16529576639478123338

/-! ## A007728.P7185490895102046134

`A072170(A167614(n+2))^A027708(n)^(2*A000007(n))`
-/

namespace A007728.P7185490895102046134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A072170 (A167614 (n + 2)).toNat : ℝ) ^ ((A027708 n : ℚ) ^ (2 * A000007 n : ℤ) : ℝ)

end

end A007728.P7185490895102046134

/-! ## A007728.P11506303366102111580

`A072170(A167614(n+2))^A028560(n+1)^(2*A000007(n))`
-/

namespace A007728.P11506303366102111580
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A072170 (A167614 (n + 2)).toNat : ℝ) ^ ((A028560 (n + 1) : ℚ) ^ (2 * A000007 n : ℤ) : ℝ)

end

end A007728.P11506303366102111580

/-! ## A007728.P3823593847764083284

`A072170(A034856(n+2)+5)^A014963(16*A000040(n+1))`
-/

namespace A007728.P3823593847764083284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072170 (A034856 (n + 2) + 5).toNat : ℚ) ^ (A014963 (16 * A000040 (n + 1)).toNat : ℤ)

end

end A007728.P3823593847764083284

/-!
# A007729: 6th binary partition function.

The programs for A007729, the canonical program `A007729.P2856163913979848745` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007729 has offset 0).

The definition of A007729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007729.P2856163913979848745

`A174868(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007729

/-- `A174868(n+1)` -/
def P2856163913979848745.Spec : Prop :=
  ∀ n, P2856163913979848745.a n = A007729 n

theorem P2856163913979848745.correct : P2856163913979848745.Spec := by
  intro n
  simp only [A007729]

end A007729

/-! ## A007729.P2198962098211323651

`∑[A002487(n+1)]`
-/

namespace A007729.P2198962098211323651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P2198962098211323651

namespace A007729

/-- `∑[A002487(n+1)]` -/
def P2198962098211323651.Spec : Prop :=
  ∀ n, P2198962098211323651.a n = A007729 n

end A007729

/-! ## A007729.P6437798823152605762

`record[A174868(abs(1-n))]`
-/

namespace A007729.P6437798823152605762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007729.P6437798823152605762

namespace A007729

/-- `record[A174868(abs(1-n))]` -/
def P6437798823152605762.Spec : Prop :=
  ∀ n, P6437798823152605762.a n = A007729 n

end A007729

/-! ## A007729.P13562459794294873000

`∑[A007306(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A007729.P13562459794294873000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A007306 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P13562459794294873000

namespace A007729

/-- `∑[A007306(n+1)-a(n-1)]` -/
def P13562459794294873000.Spec : Prop :=
  ∀ n, P13562459794294873000.a n = A007729 n

end A007729

/-! ## A007729.P14598476983902336015

`∑[A287896((n+1)/and(n+1, -(n+1)))]`
-/

namespace A007729.P14598476983902336015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P14598476983902336015

namespace A007729

/-- `∑[A287896((n+1)/and(n+1, -(n+1)))]` -/
def P14598476983902336015.Spec : Prop :=
  ∀ n, P14598476983902336015.a n = A007729 n

end A007729

/-! ## A007729.P6378447228476454755

`∑[A007306(A003602(n+1))]`
-/

namespace A007729.P6378447228476454755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P6378447228476454755

namespace A007729

/-- `∑[A007306(A003602(n+1))]` -/
def P6378447228476454755.Spec : Prop :=
  ∀ n, P6378447228476454755.a n = A007729 n

end A007729

/-! ## A007729.P14825948838371516886

`∑[A324337(A003188(n+1))]`
-/

namespace A007729.P14825948838371516886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P14825948838371516886

namespace A007729

/-- `∑[A324337(A003188(n+1))]` -/
def P14825948838371516886.Spec : Prop :=
  ∀ n, P14825948838371516886.a n = A007729 n

end A007729

/-! ## A007729.P4774969948519589485

`∑[A245327(A284460(n+1))]`
-/

namespace A007729.P4774969948519589485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A284460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P4774969948519589485

namespace A007729

/-- `∑[A245327(A284460(n+1))]` -/
def P4774969948519589485.Spec : Prop :=
  ∀ n, P4774969948519589485.a n = A007729 n

end A007729

/-! ## A007729.P13990018384985318670

`∑[A324337(A233280(n))]+1`
-/

namespace A007729.P13990018384985318670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A233280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007729.P13990018384985318670

namespace A007729

/-- `∑[A324337(A233280(n))]+1` -/
def P13990018384985318670.Spec : Prop :=
  ∀ n, P13990018384985318670.a n = A007729 n

end A007729

/-! ## A007729.P3368411223474315081

`∑[A317838(n+1)-A317837(n+1)]`
-/

namespace A007729.P3368411223474315081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (n + 1) - A317837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P3368411223474315081

namespace A007729

/-- `∑[A317838(n+1)-A317837(n+1)]` -/
def P3368411223474315081.Spec : Prop :=
  ∀ n, P3368411223474315081.a n = A007729 n

end A007729

/-! ## A007729.P11692077187134358755

`∑[A126606(n+2)/2]`
-/

namespace A007729.P11692077187134358755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126606 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P11692077187134358755

namespace A007729

/-- `∑[A126606(n+2)/2]` -/
def P11692077187134358755.Spec : Prop :=
  ∀ n, P11692077187134358755.a n = (A007729 n : ℚ)

end A007729

/-! ## A007729.P5974585602559141329

`∑[n+1-A284013(n+1)]`
-/

namespace A007729.P5974585602559141329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A284013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P5974585602559141329

namespace A007729

/-- `∑[n+1-A284013(n+1)]` -/
def P5974585602559141329.Spec : Prop :=
  ∀ n, P5974585602559141329.a n = A007729 n

end A007729

/-! ## A007729.P18052132374906371370

`A282720(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A007729.P18052132374906371370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282720 (n + 1) - a (n - 1)

end

end A007729.P18052132374906371370

namespace A007729

/-- `A282720(n+1)-a(n-1)` -/
def P18052132374906371370.Spec : Prop :=
  ∀ n, P18052132374906371370.a n = A007729 n

end A007729

/-! ## A007729.P10846855869171652805

`∑[A324338(A233280(n+1))]`
-/

namespace A007729.P10846855869171652805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A233280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P10846855869171652805

namespace A007729

/-- `∑[A324338(A233280(n+1))]` -/
def P10846855869171652805.Spec : Prop :=
  ∀ n, P10846855869171652805.a n = A007729 n

end A007729

/-! ## A007729.P11065741262883141295

`∑[A317840(2*(n+1))]`
-/

namespace A007729.P11065741262883141295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P11065741262883141295

namespace A007729

/-- `∑[A317840(2*(n+1))]` -/
def P11065741262883141295.Spec : Prop :=
  ∀ n, P11065741262883141295.a n = A007729 n

end A007729

/-! ## A007729.P1449071252328300484

`∑[A020651(A231550(n+1))]`
-/

namespace A007729.P1449071252328300484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A231550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P1449071252328300484

namespace A007729

/-- `∑[A020651(A231550(n+1))]` -/
def P1449071252328300484.Spec : Prop :=
  ∀ n, P1449071252328300484.a n = A007729 n

end A007729

/-! ## A007729.P14341819945727451435

`∑[A007305(A145342(n+2))]`
-/

namespace A007729.P14341819945727451435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A145342 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P14341819945727451435

namespace A007729

/-- `∑[A007305(A145342(n+2))]` -/
def P14341819945727451435.Spec : Prop :=
  ∀ n, P14341819945727451435.a n = A007729 n

end A007729

/-! ## A007729.P12013903334384866903

`∑[A245328(A284460(2*n+1))]`
-/

namespace A007729.P12013903334384866903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A284460 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P12013903334384866903

namespace A007729

/-- `∑[A245328(A284460(2*n+1))]` -/
def P12013903334384866903.Spec : Prop :=
  ∀ n, P12013903334384866903.a n = A007729 n

end A007729

/-! ## A007729.P17811900526028266656

`∑[A288003(2*n+1)]`
-/

namespace A007729.P17811900526028266656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P17811900526028266656

namespace A007729

/-- `∑[A288003(2*n+1)]` -/
def P17811900526028266656.Spec : Prop :=
  ∀ n, P17811900526028266656.a n = A007729 n

end A007729

/-! ## A007729.P15359876810809615910

`∑[A295515(2*(n+1))]`
-/

namespace A007729.P15359876810809615910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007729.P15359876810809615910

namespace A007729

/-- `∑[A295515(2*(n+1))]` -/
def P15359876810809615910.Spec : Prop :=
  ∀ n, P15359876810809615910.a n = A007729 n

end A007729

/-!
# A007730: 7th binary partition function.

The programs for A007730, there is no canonical definition to state claims against.
-/

/-! ## A007730.P12553117265404122569

`A072170(A167499(n+4))`
-/

namespace A007730.P12553117265404122569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A167499 (n + 4)).toNat

end

end A007730.P12553117265404122569

/-! ## A007730.P3998150189099319548

`A072170(A056115(n)+20)`
-/

namespace A007730.P3998150189099319548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A056115 n + 20).toNat

end

end A007730.P3998150189099319548

/-! ## A007730.P10919437078450462244

`A072170(A166136(n+4)-1)`
-/

namespace A007730.P10919437078450462244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A166136 (n + 4) - 1).toNat

end

end A007730.P10919437078450462244

/-! ## A007730.P2087378486607017298

`A072170(A000124(n+5)+4)`
-/

namespace A007730.P2087378486607017298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A000124 (n + 5) + 4).toNat

end

end A007730.P2087378486607017298

/-! ## A007730.P8215078540127410188

`A072170(A000096(n+4)+6)`
-/

namespace A007730.P8215078540127410188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A000096 (n + 4) + 6).toNat

end

end A007730.P8215078540127410188

/-! ## A007730.P17660800499559820327

`A072170(A000217(n+5)+5)`
-/

namespace A007730.P17660800499559820327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A000217 (n + 5) + 5).toNat

end

end A007730.P17660800499559820327

/-! ## A007730.P13003969435710894783

`A072170(A046691(n+3)+9)`
-/

namespace A007730.P13003969435710894783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A046691 (n + 3) + 9).toNat

end

end A007730.P13003969435710894783

/-! ## A007730.P14833488569150524674

`A072170(A052905(n+3)-(n-4))`
-/

namespace A007730.P14833488569150524674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A052905 (n + 3) - ((n : ℤ) - 4)).toNat

end

end A007730.P14833488569150524674

/-!
# A007731: a(n) = a(floor(n/2)) + a(floor(n/3)) + a(floor(n/6)), with a(0) = 1.

The programs for A007731, the canonical program `A007731.P4267493398999237278` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007731 has offset 0).

The definition of A007731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/2))+a(floor(n/3))+a(floor(n/6))` (program `A007731.P4267493398999237278`, by `A007731.P4267493398999237278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007731.P4267493398999237278

`a(floor(n/2))+a(floor(n/3))+a(floor(n/6))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007731

/-- `a(floor(n/2))+a(floor(n/3))+a(floor(n/6))` -/
def P4267493398999237278.Spec : Prop :=
  ∀ n, (P4267493398999237278.a n : ℤ) = A007731 n

theorem P4267493398999237278.correct : P4267493398999237278.Spec := by
  intro n
  simp only [A007731]

end A007731

/-!
# A007732: Period of decimal representation of 1/n.

The programs for A007732, there is no canonical definition to state claims against.
-/

/-! ## A007732.P12485911712307158203

`floor(sqrt(A051626(n+1)²+1))`
-/

namespace A007732.P12485911712307158203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A051626 (n + 1) ^ 2 + 1)

end

end A007732.P12485911712307158203

/-! ## A007732.P8539332972236914630

`A028310(A051626(n+1))`
-/

namespace A007732.P8539332972236914630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A051626 (n + 1)).toNat

end

end A007732.P8539332972236914630

/-! ## A007732.P5969997882095445054

`A054710(A132740(n+1))`
-/

namespace A007732.P5969997882095445054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (A132740 (n + 1)).toNat

end

end A007732.P5969997882095445054

/-! ## A007732.P15825068682546143142

`A002329(A379003(n+1))`
-/

namespace A007732.P15825068682546143142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002329 (A379003 (n + 1)).toNat

end

end A007732.P15825068682546143142

/-! ## A007732.P10697663508400623577

`A054710(n+1)-A051628(n+1)`
-/

namespace A007732.P10697663508400623577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - A051628 (n + 1)

end

end A007732.P10697663508400623577

/-! ## A007732.P13882453597130361597

`A054710((n+1)/A132741(n+1))`
-/

namespace A007732.P13882453597130361597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A132741 (n + 1) : ℚ))).toNat

end

end A007732.P13882453597130361597

/-! ## A007732.P15020267882174011459

`or(A051626(n+1), A065333(A064989(n+1)))`
-/

namespace A007732.P15020267882174011459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051626 (n + 1)) (A065333 (A064989 (n + 1)).toNat)

end

end A007732.P15020267882174011459

/-! ## A007732.P640338698133108056

`or(A051626(n+1), A065333(A132740(n+1)))`
-/

namespace A007732.P640338698133108056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051626 (n + 1)) (A065333 (A132740 (n + 1)).toNat)

end

end A007732.P640338698133108056

/-! ## A007732.P11808195825084432844

`A051626(n+1)+∏{d}[A051626(n+1), A051626(#)]`
-/

namespace A007732.P11808195825084432844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1) + ∏ d ∈ Nat.divisors (f1 n).natAbs, A051626 d

end

end A007732.P11808195825084432844

/-! ## A007732.P13278003790001883353

`A007733(n+1)*A007736(n+1)/A334487(n+1)`
-/

namespace A007732.P13278003790001883353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (n + 1) * A007736 (n + 1) : ℚ) / (A334487 (n + 1) : ℚ)

end

end A007732.P13278003790001883353

/-! ## A007732.P18097395182076426934

`gcd(A051626(n+1), A176920(n+1))`
-/

namespace A007732.P18097395182076426934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051626 (n + 1)) (A176920 (n + 1))

end

end A007732.P18097395182076426934

/-! ## A007732.P3617325342950791920

`A051626(A109047(n+1)/2)`
-/

namespace A007732.P3617325342950791920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (SequenceMachineLib.roundAway ((A109047 (n + 1) : ℚ) / 2)).toNat

end

end A007732.P3617325342950791920

/-! ## A007732.P3548544443345831409

`A051626(lcm(3, n+1))`
-/

namespace A007732.P3548544443345831409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (Nat.lcm 3 (n + 1))

end

end A007732.P3548544443345831409

/-! ## A007732.P7273274506557942263

`A051626(A066393(n+1))`
-/

namespace A007732.P7273274506557942263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A066393 (n + 1)).toNat

end

end A007732.P7273274506557942263

/-! ## A007732.P16469600167932015854

`A051626(A109044(n+1))`
-/

namespace A007732.P16469600167932015854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A109044 (n + 1)).toNat

end

end A007732.P16469600167932015854

/-! ## A007732.P17957750680976115100

`A051626(n+1)+A054710(n+1)-A121341(n+1)`
-/

namespace A007732.P17957750680976115100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1) + (A054710 (n + 1) - A121341 (n + 1))

end

end A007732.P17957750680976115100

/-! ## A007732.P12257182818416881035

`A051626(A109047(n+1))`
-/

namespace A007732.P12257182818416881035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A109047 (n + 1)).toNat

end

end A007732.P12257182818416881035

/-! ## A007732.P15593712641388809886

`A051626(A109053(n+1)/2)`
-/

namespace A007732.P15593712641388809886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (SequenceMachineLib.roundAway ((A109053 (n + 1) : ℚ) / 2)).toNat

end

end A007732.P15593712641388809886

/-! ## A007732.P13610363025041682580

`A051626(A109050(n+1))`
-/

namespace A007732.P13610363025041682580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A109050 (n + 1)).toNat

end

end A007732.P13610363025041682580

/-! ## A007732.P5458616386709645355

`A233583(A051626(n+1)+2)-1`
-/

namespace A007732.P5458616386709645355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A051626 (n + 1) + 2).toNat - 1

end

end A007732.P5458616386709645355

/-!
# A007733: Period of binary representation of 1/n. Also, multiplicative order of 2 modulo the odd part of n (= A000265(n)).

The programs for A007733, there is no canonical definition to state claims against.
-/

/-! ## A007733.P3459685872460256535

`A002326((A000265(n+1)-1)/2)`
-/

namespace A007733.P3459685872460256535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A000265 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A007733.P3459685872460256535

/-! ## A007733.P12904305496640870587

`A385989(n+1)-(n+1)`
-/

namespace A007733.P12904305496640870587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385989 (n + 1) - (n + 1 : ℤ)

end

end A007733.P12904305496640870587

/-! ## A007733.P1773271230306401871

`A002326(floor(n/(xor(n, n+1)+1)))`
-/

namespace A007733.P1773271230306401871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A007733.P1773271230306401871

/-! ## A007733.P5214421922541105849

`A002326(floor(n/2^val(n+1, 2))/2)`
-/

namespace A007733.P5214421922541105849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat

end

end A007733.P5214421922541105849

/-! ## A007733.P14332043012190070421

`A002326(floor(n/and(n+1, -(n+1)))/2)`
-/

namespace A007733.P14332043012190070421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2)).toNat

end

end A007733.P14332043012190070421

/-! ## A007733.P18085112514137507363

`A002326(A025480(n))`
-/

namespace A007733.P18085112514137507363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A025480 n).toNat

end

end A007733.P18085112514137507363

/-! ## A007733.P16319056281692982144

`A054703(A000265(n+1))`
-/

namespace A007733.P16319056281692982144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (A000265 (n + 1)).toNat

end

end A007733.P16319056281692982144

/-! ## A007733.P9391935541402169569

`A054703(A153733(n)+1)`
-/

namespace A007733.P9391935541402169569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (A153733 n + 1).toNat

end

end A007733.P9391935541402169569

/-! ## A007733.P2155720994744281765

`A336843(A064989(n+1))`
-/

namespace A007733.P2155720994744281765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A064989 (n + 1)).toNat

end

end A007733.P2155720994744281765

/-! ## A007733.P10000767771519792336

`A024222(A000265(n+1)+1)`
-/

namespace A007733.P10000767771519792336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A000265 (n + 1) + 1).toNat

end

end A007733.P10000767771519792336

/-! ## A007733.P8090911053869688338

`A002326(A003602(n+1)-1)`
-/

namespace A007733.P8090911053869688338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A003602 (n + 1) - 1).toNat

end

end A007733.P8090911053869688338

/-! ## A007733.P14717210892531173135

`A054703(2*A025480(n)+1)`
-/

namespace A007733.P14717210892531173135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (2 * A025480 n + 1).toNat

end

end A007733.P14717210892531173135

/-! ## A007733.P6580904786700921174

`A024222(A171435(2*(n+1))+1)`
-/

namespace A007733.P6580904786700921174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A171435 (2 * (n + 1)) + 1).toNat

end

end A007733.P6580904786700921174

/-! ## A007733.P16830797191366554487

`A002326(A110963(2*n+1)-1)`
-/

namespace A007733.P16830797191366554487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A110963 (2 * n + 1) - 1).toNat

end

end A007733.P16830797191366554487

/-! ## A007733.P13256304070764837090

`A054703(n+1)-A007814(n+1)`
-/

namespace A007733.P13256304070764837090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (n + 1) - A007814 (n + 1)

end

end A007733.P13256304070764837090

/-! ## A007733.P13382295956316747025

`A054703(1-A331739(n+1)+n)`
-/

namespace A007733.P13382295956316747025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (1 - A331739 (n + 1) + (n : ℤ)).toNat

end

end A007733.P13382295956316747025

/-! ## A007733.P11622343286365640199

`A000010(n+1)/A318622(n+1)`
-/

namespace A007733.P11622343286365640199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A318622 (n + 1) : ℚ)

end

end A007733.P11622343286365640199

/-! ## A007733.P14095595223957324794

`lcm(A007735(n+1), A007739(n+1))`
-/

namespace A007733.P14095595223957324794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007735 (n + 1)) (A007739 (n + 1))

end

end A007733.P14095595223957324794

/-! ## A007733.P1096511572131665763

`A054703(n+1)+1-A001511(n+1)`
-/

namespace A007733.P1096511572131665763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (n + 1) + (1 - A001511 (n + 1))

end

end A007733.P1096511572131665763

/-! ## A007733.P5137944418819687479

`A054703(A025480(n)+A025480(n)+1)`
-/

namespace A007733.P5137944418819687479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (A025480 n + (A025480 n + 1)).toNat

end

end A007733.P5137944418819687479

/-!
# A007734: Period of repeating digits of 1/n in base 3.

The programs for A007734, there is no canonical definition to state claims against.
-/

/-! ## A007734.P14914846278153218002

`A054704(A038502(n+1))`
-/

namespace A007734.P14914846278153218002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (A038502 (n + 1)).toNat

end

end A007734.P14914846278153218002

/-! ## A007734.P11197569406706796274

`A054704(n+1)-Δ[A054861(n)]`
-/

namespace A007734.P11197569406706796274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (n + 1) - (f1 (n + 1) - f1 n)

end

end A007734.P11197569406706796274

/-! ## A007734.P3099376092430638548

`A054704(n+1)-A007949(n+1)`
-/

namespace A007734.P3099376092430638548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (n + 1) - A007949 (n + 1)

end

end A007734.P3099376092430638548

/-! ## A007734.P2521523530091404056

`A054704((n+1)/A038500(n+1))`
-/

namespace A007734.P2521523530091404056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A007734.P2521523530091404056

/-! ## A007734.P4325534095773522991

`A000010(n+1)/A327812(n+1)`
-/

namespace A007734.P4325534095773522991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A327812 (n + 1) : ℚ)

end

end A007734.P4325534095773522991

/-! ## A007734.P7935601049946443339

`A054704(n+1)-A001222(A318666(n+1))`
-/

namespace A007734.P7935601049946443339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (n + 1) - A001222 (A318666 (n + 1)).toNat

end

end A007734.P7935601049946443339

/-! ## A007734.P15588151020109085507

`A054704(n+1)+1-A054704(A038500(n+1))`
-/

namespace A007734.P15588151020109085507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (n + 1) + (1 - A054704 (A038500 (n + 1)).toNat)

end

end A007734.P15588151020109085507

/-! ## A007734.P280105900059066751

`A057593(A238531(n)+2)`
-/

namespace A007734.P280105900059066751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057593 (A238531 n + 2).toNat

end

end A007734.P280105900059066751

/-! ## A007734.P1609770432138297120

`A066799(∑[n+3]+1)`
-/

namespace A007734.P1609770432138297120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007734.P1609770432138297120

/-! ## A007734.P12876714146395614445

`A066799(A034856(n+2))*A066799(A066799(n+2))`
-/

namespace A007734.P12876714146395614445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (A034856 (n + 2)).toNat * A066799 (A066799 (n + 2)).toNat

end

end A007734.P12876714146395614445

/-!
# A007735: Period of base 4 representation of 1/n.

The programs for A007735, there is no canonical definition to state claims against.
-/

/-! ## A007735.P17897982498075340479

`lcm(2, A007733(n+1))/2`
-/

namespace A007735.P17897982498075340479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A007733 (n + 1)) : ℚ) / 2

end

end A007735.P17897982498075340479

/-! ## A007735.P1417035626990225890

`A053447(char[2^n-1]+floor(n/(xor(n, n+1)+1)))`
-/

namespace A007735.P1417035626990225890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A007735.P1417035626990225890

/-! ## A007735.P3608596783969940759

`A053447(A025480(n))`
-/

namespace A007735.P3608596783969940759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (A025480 n).toNat

end

end A007735.P3608596783969940759

/-! ## A007735.P11844679802748330754

`A026741(A007733(n+1))`
-/

namespace A007735.P11844679802748330754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A007733 (n + 1)).toNat

end

end A007735.P11844679802748330754

/-! ## A007735.P18270946161381326128

`A054705(A000265(n+1))`
-/

namespace A007735.P18270946161381326128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (A000265 (n + 1)).toNat

end

end A007735.P18270946161381326128

/-! ## A007735.P16884963633147903196

`A050976(A101279(n+1))`
-/

namespace A007735.P16884963633147903196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A101279 (n + 1)).toNat

end

end A007735.P16884963633147903196

/-! ## A007735.P10632258291404555112

`A054705(A153733(n)+1)`
-/

namespace A007735.P10632258291404555112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (A153733 n + 1).toNat

end

end A007735.P10632258291404555112

/-! ## A007735.P293069853503218493

`A004526(lcm(2, A007733(n+1)))`
-/

namespace A007735.P293069853503218493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A007733 (n + 1)))

end

end A007735.P293069853503218493

/-! ## A007735.P12771830127537521963

`A029578(A007733(n+1)+2)-1`
-/

namespace A007735.P12771830127537521963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A007733 (n + 1) + 2).toNat - 1

end

end A007735.P12771830127537521963

/-! ## A007735.P16717101389488539790

`A053447((A000265(n+1)-1)/2)`
-/

namespace A007735.P16717101389488539790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (SequenceMachineLib.roundAway ((A000265 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A007735.P16717101389488539790

/-! ## A007735.P2642967236561648130

`A054705(n+1)-A244415(n+1)`
-/

namespace A007735.P2642967236561648130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (n + 1) - A244415 (n + 1)

end

end A007735.P2642967236561648130

/-! ## A007735.P13795463696187884039

`A054705((n+1)/A006519(n+1))`
-/

namespace A007735.P13795463696187884039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A007735.P13795463696187884039

/-! ## A007735.P8774279587134608123

`A000010(n+1)/A327813(n+1)`
-/

namespace A007735.P8774279587134608123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A327813 (n + 1) : ℚ)

end

end A007735.P8774279587134608123

/-! ## A007735.P11709005430939466924

`A026741(A054703(n+1)-A007814(n+1))`
-/

namespace A007735.P11709005430939466924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A054703 (n + 1) - A007814 (n + 1)).toNat

end

end A007735.P11709005430939466924

/-! ## A007735.P14775079610908156516

`A007733(n+1)/A000034(A007733(n+1)+1)`
-/

namespace A007735.P14775079610908156516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (n + 1) : ℚ) / (A000034 (A007733 (n + 1) + 1).toNat : ℚ)

end

end A007735.P14775079610908156516

/-! ## A007735.P9786120083632935380

`A007733(n+1)/A040001(A007733(n+1)+2)`
-/

namespace A007735.P9786120083632935380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (n + 1) : ℚ) / (A040001 (A007733 (n + 1) + 2).toNat : ℚ)

end

end A007735.P9786120083632935380

/-! ## A007735.P8300506803496553263

`A028310(A007733(n+1)/gcd(2, A007733(n+1)))`
-/

namespace A007735.P8300506803496553263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A007733 (n + 1) : ℚ) / (Int.gcd 2 (A007733 (n + 1)) : ℚ))).toNat

end

end A007735.P8300506803496553263

/-! ## A007735.P8238036558498531046

`A309563(2*n+1)/A327813(n+1)`
-/

namespace A007735.P8238036558498531046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309563 (2 * n + 1) : ℚ) / (A327813 (n + 1) : ℚ)

end

end A007735.P8238036558498531046

/-! ## A007735.P8860480358759447392

`A007733(A014681(2*n+1))-A142150(A007733(2*(n+1)))`
-/

namespace A007735.P8860480358759447392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A014681 (2 * n + 1)).toNat - A142150 (A007733 (2 * (n + 1))).toNat

end

end A007735.P8860480358759447392

/-!
# A007736: Period of repeating digits of 1/n in base 5.

The programs for A007736, there is no canonical definition to state claims against.
-/

/-! ## A007736.P16936973053167773729

`A054706(A132739(n+1))`
-/

namespace A007736.P16936973053167773729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (A132739 (n + 1)).toNat

end

end A007736.P16936973053167773729

/-! ## A007736.P14155140079736638118

`A054706(n+1)-Δ[A027868(n)]`
-/

namespace A007736.P14155140079736638118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (n + 1) - (f1 (n + 1) - f1 n)

end

end A007736.P14155140079736638118

/-! ## A007736.P8720741142949341709

`A054706(n+1)-A112765(n+1)`
-/

namespace A007736.P8720741142949341709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (n + 1) - A112765 (n + 1)

end

end A007736.P8720741142949341709

/-! ## A007736.P13223199666978572547

`A000010(n+1)/A327814(n+1)`
-/

namespace A007736.P13223199666978572547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A327814 (n + 1) : ℚ)

end

end A007736.P13223199666978572547

/-! ## A007736.P13079655775744905805

`A054706(n+1)-A051628(A000265(n+1))`
-/

namespace A007736.P13079655775744905805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (n + 1) - A051628 (A000265 (n + 1)).toNat

end

end A007736.P13079655775744905805

/-! ## A007736.P3018741628887003565

`A007732(n+1)/A007733(n+1)*A334487(n+1)`
-/

namespace A007736.P3018741628887003565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007732 (n + 1) : ℚ) / (A007733 (n + 1) : ℚ) * (A334487 (n + 1) : ℚ)

end

end A007736.P3018741628887003565

/-! ## A007736.P11042429277796594258

`A066799(A046691(n+3))`
-/

namespace A007736.P11042429277796594258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (A046691 (n + 3)).toNat

end

end A007736.P11042429277796594258

/-! ## A007736.P15606390013071226517

`A066799(Δ[A161532(n)+A000292(n)])`
-/

namespace A007736.P15606390013071226517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n + A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (f1 (n + 1) - f1 n).toNat

end

end A007736.P15606390013071226517

/-!
# A007737: Period of repeating digits of 1/n in base 6.

The programs for A007737, there is no canonical definition to state claims against.
-/

/-! ## A007737.P4661173149242085889

`A054707(A065330(n+1))`
-/

namespace A007737.P4661173149242085889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (A065330 (n + 1)).toNat

end

end A007737.P4661173149242085889

/-! ## A007737.P11545639266177706524

`A053449(A126760(n+1))`
-/

namespace A007737.P11545639266177706524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053449 (A126760 (n + 1)).toNat

end

end A007737.P11545639266177706524

/-! ## A007737.P3437951662709206489

`A054707(n+1)-A244417(n+1)`
-/

namespace A007737.P3437951662709206489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (n + 1) - A244417 (n + 1)

end

end A007737.P3437951662709206489

/-! ## A007737.P15579089083893539532

`A054707((n+1)/A065331(n+1))`
-/

namespace A007737.P15579089083893539532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A007737.P15579089083893539532

/-! ## A007737.P15237078212392204735

`A054707(A038502(n+1))-A007814(n+1)`
-/

namespace A007737.P15237078212392204735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (A038502 (n + 1)).toNat - A007814 (n + 1)

end

end A007737.P15237078212392204735

/-! ## A007737.P12799146564969468746

`A054707(n+1)-A051903(A065331(n+1))`
-/

namespace A007737.P12799146564969468746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (n + 1) - A051903 (A065331 (n + 1)).toNat

end

end A007737.P12799146564969468746

/-! ## A007737.P14667877210626746264

`A066799(A000217(n+6)-5)`
-/

namespace A007737.P14667877210626746264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (A000217 (n + 6) - 5).toNat

end

end A007737.P14667877210626746264

/-! ## A007737.P12389933305983759567

`A066799(A166136(n+3)+2*n)`
-/

namespace A007737.P12389933305983759567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (A166136 (n + 3) + (2 * n : ℤ)).toNat

end

end A007737.P12389933305983759567

/-! ## A007737.P4576245717099000700

`A028310(A249772(n+1))`
-/

namespace A007737.P4576245717099000700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A249772 (n + 1)).toNat

end

end A007737.P4576245717099000700

/-! ## A007737.P9560202075340396031

`∏{d}[A249772(n+1), A014963(#)]`
-/

namespace A007737.P9560202075340396031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A007737.P9560202075340396031

/-!
# A007738: Period of repeating digits of 1/n in base 7.

The programs for A007738, there is no canonical definition to state claims against.
-/

/-! ## A007738.P7331689133037170

`A054708(A242603(n+1))`
-/

namespace A007738.P7331689133037170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (A242603 (n + 1)).toNat

end

end A007738.P7331689133037170

/-! ## A007738.P13901488599593456592

`Δ[A002088(n)]/A327815(n+1)`
-/

namespace A007738.P13901488599593456592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A327815 (n + 1) : ℚ)

end

end A007738.P13901488599593456592

/-! ## A007738.P1659499765586954584

`A054708(n+1)-A214411(n+1)`
-/

namespace A007738.P1659499765586954584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (n + 1) - A214411 (n + 1)

end

end A007738.P1659499765586954584

/-! ## A007738.P13838516498330843146

`A000010(n+1)/A327815(n+1)`
-/

namespace A007738.P13838516498330843146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A327815 (n + 1) : ℚ)

end

end A007738.P13838516498330843146

/-! ## A007738.P16514525429159746429

`A054708(n+1)-A112765(A064989(n+1))`
-/

namespace A007738.P16514525429159746429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (n + 1) - A112765 (A064989 (n + 1)).toNat

end

end A007738.P16514525429159746429

/-! ## A007738.P11426215633540375791

`A070678(Δ[A047306(n+1)]*A242603(n+1))`
-/

namespace A007738.P11426215633540375791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 ((f1 (n + 1) - f1 n) * A242603 (n + 1)).toNat

end

end A007738.P11426215633540375791

/-! ## A007738.P5612440939486025762

`A070678(A242603(lcm(2, n+1)))`
-/

namespace A007738.P5612440939486025762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A242603 (Nat.lcm 2 (n + 1))).toNat

end

end A007738.P5612440939486025762

/-! ## A007738.P4393177744843552560

`A066799(A055999(n+4))`
-/

namespace A007738.P4393177744843552560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (A055999 (n + 4)).toNat

end

end A007738.P4393177744843552560

/-!
# A007739: Period of repeating digits of 1/n in base 8.

The programs for A007739, there is no canonical definition to state claims against.
-/

/-! ## A007739.P13248804394167540763

`lcm(3, A007733(n+1))/3`
-/

namespace A007739.P13248804394167540763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A007733 (n + 1)) : ℚ) / 3

end

end A007739.P13248804394167540763

/-! ## A007739.P13869010971766104409

`A053451(A025480(n))`
-/

namespace A007739.P13869010971766104409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (A025480 n).toNat

end

end A007739.P13869010971766104409

/-! ## A007739.P3717900588919201390

`A054709(A000265(n+1))`
-/

namespace A007739.P3717900588919201390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (A000265 (n + 1)).toNat

end

end A007739.P3717900588919201390

/-! ## A007739.P3915148505337049917

`A051176(A007733(n+1))`
-/

namespace A007739.P3915148505337049917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A007733 (n + 1)).toNat

end

end A007739.P3915148505337049917

/-! ## A007739.P4119766179746545432

`A054709(A153733(n)+1)`
-/

namespace A007739.P4119766179746545432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (A153733 n + 1).toNat

end

end A007739.P4119766179746545432

/-! ## A007739.P12992332969018979581

`A054709((n+1)/A006519(n+1))`
-/

namespace A007739.P12992332969018979581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A007739.P12992332969018979581

/-! ## A007739.P17820342103056545359

`A000010(n+1)/A327816(n+1)`
-/

namespace A007739.P17820342103056545359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A327816 (n + 1) : ℚ)

end

end A007739.P17820342103056545359

/-! ## A007739.P11866026090351391809

`A054709(n+1)+1-A054709(A006519(n+1))`
-/

namespace A007739.P11866026090351391809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (n + 1) + (1 - A054709 (A006519 (n + 1)).toNat)

end

end A007739.P11866026090351391809

/-!
# A007740: Period of repeating digits of 1/n in base 9.

The programs for A007740, there is no canonical definition to state claims against.
-/

/-! ## A007740.P9473356172604627855

`lcm(2, A007734(n+1))/2`
-/

namespace A007740.P9473356172604627855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A007734 (n + 1)) : ℚ) / 2

end

end A007740.P9473356172604627855

/-! ## A007740.P2458171528677797113

`A026741(A007734(n+1))`
-/

namespace A007740.P2458171528677797113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A007734 (n + 1)).toNat

end

end A007740.P2458171528677797113

/-! ## A007740.P18088993066060089771

`A054717(A038502(n+1))`
-/

namespace A007740.P18088993066060089771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (A038502 (n + 1)).toNat

end

end A007740.P18088993066060089771

/-! ## A007740.P5956987982002142543

`A004526(lcm(2, A007734(n+1)))`
-/

namespace A007740.P5956987982002142543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A007734 (n + 1)))

end

end A007740.P5956987982002142543

/-! ## A007740.P1555483096841247741

`∑{d}[A007734(n+1), A326305(#)]`
-/

namespace A007740.P1555483096841247741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A326305 d

end

end A007740.P1555483096841247741

/-! ## A007740.P14988998266665328549

`A000010(n+1)/A327817(n+1)`
-/

namespace A007740.P14988998266665328549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A327817 (n + 1) : ℚ)

end

end A007740.P14988998266665328549

/-! ## A007740.P16197412222147499164

`A007734(n+1)/A000034(A007734(n+1)+1)`
-/

namespace A007740.P16197412222147499164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (n + 1) : ℚ) / (A000034 (A007734 (n + 1) + 1).toNat : ℚ)

end

end A007740.P16197412222147499164

/-! ## A007740.P551278446334544138

`(A002088(n+1)-A002088(n))/A327817(n+1)`
-/

namespace A007740.P551278446334544138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n : ℚ) / (A327817 (n + 1) : ℚ)

end

end A007740.P551278446334544138

/-! ## A007740.P13372510752491141761

`A060789(3*A007734(n+1))`
-/

namespace A007740.P13372510752491141761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (3 * A007734 (n + 1)).toNat

end

end A007740.P13372510752491141761

/-! ## A007740.P7327439909881086215

`A106609(4*A007734(n+1))`
-/

namespace A007740.P7327439909881086215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * A007734 (n + 1)).toNat

end

end A007740.P7327439909881086215

/-!
# A007742: a(n) = n*(4*n+1).

The programs for A007742, the canonical program `A007742.P14173437786459717136` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007742 has offset 0).

The definition of A007742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n+1)` (program `A007742.P14173437786459717136`, by `A007742.P14173437786459717136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007742.P6459684952367577190

`4*n²+n`
-/

namespace A007742.P6459684952367577190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 2 + n

end

end A007742.P6459684952367577190

namespace A007742

/-- `4*n²+n` -/
def P6459684952367577190.Spec : Prop :=
  ∀ n, (P6459684952367577190.a n : ℤ) = A007742 n

theorem P6459684952367577190.correct : P6459684952367577190.Spec := by
  intro n
  simp only [A007742, Nat.add_sub_cancel, A007742.P6459684952367577190.a, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007742

/-! ## A007742.P14173437786459717136

`n*(4*n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007742

/-- `n*(4*n+1)` -/
def P14173437786459717136.Spec : Prop :=
  ∀ n, (P14173437786459717136.a n : ℤ) = A007742 n

theorem P14173437786459717136.correct : P14173437786459717136.Spec := by
  intro n
  simp only [A007742]

end A007742

/-! ## A007742.P10510529128722985955

`A074378(2*n)`
-/

namespace A007742.P10510529128722985955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (2 * n)

end

end A007742.P10510529128722985955

namespace A007742

/-- `A074378(2*n)` -/
def P10510529128722985955.Spec : Prop :=
  ∀ n, P10510529128722985955.a n = A007742 n

end A007742

/-! ## A007742.P11861443788880915375

`A118729(8*n+4)`
-/

namespace A007742.P11861443788880915375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (8 * n + 4)

end

end A007742.P11861443788880915375

namespace A007742

/-- `A118729(8*n+4)` -/
def P11861443788880915375.Spec : Prop :=
  ∀ n, P11861443788880915375.a n = A007742 n

end A007742

/-! ## A007742.P6925477765376487589

`∑[a(n-1)+8]` with `a(0)=0, a(1)=5`
-/

namespace A007742.P6925477765376487589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007742.P6925477765376487589

namespace A007742

/-- `∑[a(n-1)+8]` -/
def P6925477765376487589.Spec : Prop :=
  ∀ n, (P6925477765376487589.a n : ℤ) = A007742 n

end A007742

/-! ## A007742.P6246585578177795952

`∑[ogf((5x+3x^2)/(1-2x+x^2))]`
-/

namespace A007742.P6246585578177795952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007742.P6246585578177795952

namespace A007742

/-- `∑[ogf((5x+3x^2)/(1-2x+x^2))]` -/
def P6246585578177795952.Spec : Prop :=
  ∀ n, P6246585578177795952.a n = A007742 n

end A007742

/-! ## A007742.P14692710384321492495

`ogf((5x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A007742.P14692710384321492495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3] [1, -3, 3, -1] n

end

end A007742.P14692710384321492495

namespace A007742

/-- `ogf((5x+3x^2)/(1-3x+3x^2-x^3))` -/
def P14692710384321492495.Spec : Prop :=
  ∀ n, P14692710384321492495.a n = A007742 n

end A007742

/-! ## A007742.P14766869098452118678

`floor(8*n-(3-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A007742.P14766869098452118678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (8 * n : ℤ) - (3 - a (n - 1))

end

end A007742.P14766869098452118678

namespace A007742

/-- `floor(8*n-(3-a(n-1)))` -/
def P14766869098452118678.Spec : Prop :=
  ∀ n, P14766869098452118678.a n = A007742 n

theorem P14766869098452118678.correct : P14766869098452118678.Spec := by
  intro n
  induction n with
  | zero => simp [A007742, A007742.P14766869098452118678.a, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A007742, Nat.add_sub_cancel, A007742.P14766869098452118678.a, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A007742

/-! ## A007742.P18263518155461876090

`A033585(n)/2`
-/

namespace A007742.P18263518155461876090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033585 n : ℚ) / 2

end

end A007742.P18263518155461876090

namespace A007742

/-- `A033585(n)/2` -/
def P18263518155461876090.Spec : Prop :=
  ∀ n, P18263518155461876090.a n = (A007742 n : ℚ)

theorem P18263518155461876090.correct : P18263518155461876090.Spec := by
  intro n
  simp only [A007742, Nat.add_sub_cancel, A007742.P18263518155461876090.a, A007742.P14173437786459717136.a, A033585, A033585.P9867637388797284521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007742

/-! ## A007742.P7379269098655747612

`A063436(n)/3`
-/

namespace A007742.P7379269098655747612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063436 n : ℚ) / 3

end

end A007742.P7379269098655747612

namespace A007742

/-- `A063436(n)/3` -/
def P7379269098655747612.Spec : Prop :=
  ∀ n, P7379269098655747612.a n = (A007742 n : ℚ)

theorem P7379269098655747612.correct : P7379269098655747612.Spec := by
  intro n
  simp only [A007742, Nat.add_sub_cancel, A007742.P7379269098655747612.a, A007742.P14173437786459717136.a, A063436, A063436.P6856054806736193048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007742

/-! ## A007742.P9592749255274016314

`(A033566(n)+1)/2`
-/

namespace A007742.P9592749255274016314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033566 n + 1 : ℚ) / 2

end

end A007742.P9592749255274016314

namespace A007742

/-- `(A033566(n)+1)/2` -/
def P9592749255274016314.Spec : Prop :=
  ∀ n, P9592749255274016314.a n = (A007742 n : ℚ)

theorem P9592749255274016314.correct : P9592749255274016314.Spec := by
  intro n
  simp only [A007742, Nat.add_sub_cancel, A007742.P9592749255274016314.a, A007742.P14173437786459717136.a, A033566, A033566.P726618908899133796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007742

/-! ## A007742.P2564855652448394658

`(A188135(n)-1)/2`
-/

namespace A007742.P2564855652448394658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188135 n - 1 : ℚ) / 2

end

end A007742.P2564855652448394658

namespace A007742

/-- `(A188135(n)-1)/2` -/
def P2564855652448394658.Spec : Prop :=
  ∀ n, P2564855652448394658.a n = (A007742 n : ℚ)

theorem P2564855652448394658.correct : P2564855652448394658.Spec := by
  intro n
  simp only [A007742, Nat.add_sub_cancel, A007742.P2564855652448394658.a, A007742.P14173437786459717136.a, A188135, A188135.P13478576752506582860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007742

/-! ## A007742.P7375848026362450731

`(A082041(n)-1)/4`
-/

namespace A007742.P7375848026362450731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082041 n - 1 : ℚ) / 4

end

end A007742.P7375848026362450731

namespace A007742

/-- `(A082041(n)-1)/4` -/
def P7375848026362450731.Spec : Prop :=
  ∀ n, P7375848026362450731.a n = (A007742 n : ℚ)

theorem P7375848026362450731.correct : P7375848026362450731.Spec := by
  intro n
  simp only [A007742, Nat.add_sub_cancel, A007742.P7375848026362450731.a, A007742.P14173437786459717136.a, A082041, A082041.P4769740866210431926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007742

/-! ## A007742.P1187638002751270070

`A033577(n)%A014634(n)`
-/

namespace A007742.P1187638002751270070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033577 n) (A014634 n)

end

end A007742.P1187638002751270070

namespace A007742

/-- `A033577(n)%A014634(n)` -/
def P1187638002751270070.Spec : Prop :=
  ∀ n, P1187638002751270070.a n = A007742 n

end A007742

/-! ## A007742.P15986073435300040846

`A016814(n)%A033577(n)`
-/

namespace A007742.P15986073435300040846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016814 n) (A033577 n)

end

end A007742.P15986073435300040846

namespace A007742

/-- `A016814(n)%A033577(n)` -/
def P15986073435300040846.Spec : Prop :=
  ∀ n, P15986073435300040846.a n = A007742 n

end A007742

/-! ## A007742.P8446839971118146631

`A033591(n)%A080859(n)`
-/

namespace A007742.P8446839971118146631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033591 n) (A080859 n)

end

end A007742.P8446839971118146631

namespace A007742

/-- `A033591(n)%A080859(n)` -/
def P8446839971118146631.Spec : Prop :=
  ∀ n, P8446839971118146631.a n = A007742 n

end A007742

/-! ## A007742.P9261226453348196753

`A033575(n)%A081275(n)`
-/

namespace A007742.P9261226453348196753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033575 n) (A081275 n)

end

end A007742.P9261226453348196753

namespace A007742

/-- `A033575(n)%A081275(n)` -/
def P9261226453348196753.Spec : Prop :=
  ∀ n, P9261226453348196753.a n = A007742 n

end A007742

/-! ## A007742.P13505015805916455909

`A102083(n)%A033951(n)`
-/

namespace A007742.P13505015805916455909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102083 n) (A033951 n)

end

end A007742.P13505015805916455909

namespace A007742

/-- `A102083(n)%A033951(n)` -/
def P13505015805916455909.Spec : Prop :=
  ∀ n, P13505015805916455909.a n = A007742 n

end A007742

/-! ## A007742.P7315333752575643733

`A080860(n)%A080859(n)`
-/

namespace A007742.P7315333752575643733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080860 n) (A080859 n)

end

end A007742.P7315333752575643733

namespace A007742

/-- `A080860(n)%A080859(n)` -/
def P7315333752575643733.Spec : Prop :=
  ∀ n, P7315333752575643733.a n = A007742 n

end A007742

/-! ## A007742.P7569779608762354290

`A014641(n)%A194268(n)`
-/

namespace A007742.P7569779608762354290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014641 n) (A194268 n)

end

end A007742.P7569779608762354290

namespace A007742

/-- `A014641(n)%A194268(n)` -/
def P7569779608762354290.Spec : Prop :=
  ∀ n, P7569779608762354290.a n = A007742 n

end A007742

/-!
# A007743: Number of achiral polyominoes with n cubical cells of the regular tiling with Schläfli symbol {4,3,4} (or polycubes).

The programs for A007743, there is no canonical definition to state claims against.
-/

/-! ## A007743.P13504172463125054377

`A038119(n+1)-A371397(n+1)`
-/

namespace A007743.P13504172463125054377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038119 (n + 1) - A371397 (n + 1)

end

end A007743.P13504172463125054377

/-! ## A007743.P4584193168254689596

`A000162(n+1)-2*A371397(n+1)`
-/

namespace A007743.P4584193168254689596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000162 (n + 1) - 2 * A371397 (n + 1)

end

end A007743.P4584193168254689596

/-! ## A007743.P17756323569327455403

`2*A038119(n+1)-A000162(n+1)`
-/

namespace A007743.P17756323569327455403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038119 (n + 1) - A000162 (n + 1)

end

end A007743.P17756323569327455403

/-! ## A007743.P11540032911709805047

`A000162(n+1)-A371397(n+1)-A371397(A000027(n+1))`
-/

namespace A007743.P11540032911709805047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000162 (n + 1) - A371397 (n + 1) - A371397 (A000027 (n + 1)).toNat

end

end A007743.P11540032911709805047

/-! ## A007743.P5310228384816681131

`2*A038119(n+1)-(A006759(n+1)+Δ[A173271(n)])`
-/

namespace A007743.P5310228384816681131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038119 (n + 1) - (A006759 (n + 1) + (f1 (n + 1) - f1 n))

end

end A007743.P5310228384816681131

/-!
# A007744: Expansion of (1+6*x)/(1-4*x)^(7/2).

The programs for A007744, the canonical program `A007744.P16874309615917674` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007744 has offset 0).

The definition of A007744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007744.P16874309615917674

`C(2*n+3, n)*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007744

/-- `C(2*n+3, n)*C(n+3, 3)` -/
def P16874309615917674.Spec : Prop :=
  ∀ n, (P16874309615917674.a n : ℤ) = A007744 n

theorem P16874309615917674.correct : P16874309615917674.Spec := by
  intro n
  simp only [A007744]

end A007744

/-! ## A007744.P5179505806910761902

`(n+1)*A002802(n)`
-/

namespace A007744.P5179505806910761902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002802 n

end

end A007744.P5179505806910761902

namespace A007744

/-- `(n+1)*A002802(n)` -/
def P5179505806910761902.Spec : Prop :=
  ∀ n, P5179505806910761902.a n = A007744 n

end A007744

/-! ## A007744.P10186345111110664388

`(n+1)*∑[A085373(n)]`
-/

namespace A007744.P10186345111110664388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007744.P10186345111110664388

namespace A007744

/-- `(n+1)*∑[A085373(n)]` -/
def P10186345111110664388.Spec : Prop :=
  ∀ n, P10186345111110664388.a n = A007744 n

end A007744

/-! ## A007744.P15071419463700664194

`(n+1)*Δ[A323223(n)]`
-/

namespace A007744.P15071419463700664194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A007744.P15071419463700664194

namespace A007744

/-- `(n+1)*Δ[A323223(n)]` -/
def P15071419463700664194.Spec : Prop :=
  ∀ n, P15071419463700664194.a n = A007744 n

end A007744

/-! ## A007744.P3047649636691742660

`∑[record[xor(1, n)²]]*A000984(n)`
-/

namespace A007744.P3047649636691742660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000984 n

end

end A007744.P3047649636691742660

namespace A007744

/-- `∑[record[xor(1, n)²]]*A000984(n)` -/
def P3047649636691742660.Spec : Prop :=
  ∀ n, P3047649636691742660.a n = A007744 n

end A007744

/-! ## A007744.P5627994839152531243

`(n+1)/3*A051133(n+1)`
-/

namespace A007744.P5627994839152531243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A051133 (n + 1) : ℚ)

end

end A007744.P5627994839152531243

namespace A007744

/-- `(n+1)/3*A051133(n+1)` -/
def P5627994839152531243.Spec : Prop :=
  ∀ n, P5627994839152531243.a n = (A007744 n : ℚ)

end A007744

/-! ## A007744.P11819721978950842057

`∑[(n+1)²]*A001791(n+1)`
-/

namespace A007744.P11819721978950842057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001791 (n + 1)

end

end A007744.P11819721978950842057

namespace A007744

/-- `∑[(n+1)²]*A001791(n+1)` -/
def P11819721978950842057.Spec : Prop :=
  ∀ n, P11819721978950842057.a n = A007744 n

end A007744

/-! ## A007744.P2636977887631606056

`∑[(2*n+1)²]*A126869(2*n)`
-/

namespace A007744.P2636977887631606056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A126869 (2 * n)

end

end A007744.P2636977887631606056

namespace A007744

/-- `∑[(2*n+1)²]*A126869(2*n)` -/
def P2636977887631606056.Spec : Prop :=
  ∀ n, P2636977887631606056.a n = A007744 n

end A007744

/-! ## A007744.P11245253931929003955

`(n+1)*A000108(n)*∑[Δ[n²]²]`
-/

namespace A007744.P11245253931929003955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A007744.P11245253931929003955

namespace A007744

/-- `(n+1)*A000108(n)*∑[Δ[n²]²]` -/
def P11245253931929003955.Spec : Prop :=
  ∀ n, P11245253931929003955.a n = A007744 n

end A007744

/-! ## A007744.P11286023741828869758

`(n+1)*∑[(n+1)²]*A000108(n+1)`
-/

namespace A007744.P11286023741828869758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) * A000108 (n + 1)

end

end A007744.P11286023741828869758

namespace A007744

/-- `(n+1)*∑[(n+1)²]*A000108(n+1)` -/
def P11286023741828869758.Spec : Prop :=
  ∀ n, P11286023741828869758.a n = A007744 n

end A007744

/-! ## A007744.P1650642533866805759

`A002802(n)*A008619(2*n)`
-/

namespace A007744.P1650642533866805759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002802 n * A008619 (2 * n)

end

end A007744.P1650642533866805759

namespace A007744

/-- `A002802(n)*A008619(2*n)` -/
def P1650642533866805759.Spec : Prop :=
  ∀ n, P1650642533866805759.a n = A007744 n

end A007744

/-! ## A007744.P15230379117824216477

`A000292(n+1)*A002054(n+1)`
-/

namespace A007744.P15230379117824216477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A002054 (n + 1)

end

end A007744.P15230379117824216477

namespace A007744

/-- `A000292(n+1)*A002054(n+1)` -/
def P15230379117824216477.Spec : Prop :=
  ∀ n, P15230379117824216477.a n = A007744 n

theorem P15230379117824216477.correct : P15230379117824216477.Spec := by
  intro n
  simp only [A007744, Nat.add_sub_cancel, A007744.P15230379117824216477.a, A007744.P16874309615917674.a, A000292, A000292.P18322089543142633594.a, A002054, A002054.P2149703825712078038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007744

/-! ## A007744.P13299342335262477765

`A000292(2*n+1)*A000984(n)`
-/

namespace A007744.P13299342335262477765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) * A000984 n

end

end A007744.P13299342335262477765

namespace A007744

/-- `A000292(2*n+1)*A000984(n)` -/
def P13299342335262477765.Spec : Prop :=
  ∀ n, P13299342335262477765.a n = A007744 n

end A007744

/-! ## A007744.P12720497017930372986

`A000447(n+1)*A001405(2*n)`
-/

namespace A007744.P12720497017930372986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1) * A001405 (2 * n)

end

end A007744.P12720497017930372986

namespace A007744

/-- `A000447(n+1)*A001405(2*n)` -/
def P12720497017930372986.Spec : Prop :=
  ∀ n, P12720497017930372986.a n = A007744 n

end A007744

/-! ## A007744.P875569824286195815

`A000108(n+1)*A181474(2*n)`
-/

namespace A007744.P875569824286195815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A181474 (2 * n)

end

end A007744.P875569824286195815

namespace A007744

/-- `A000108(n+1)*A181474(2*n)` -/
def P875569824286195815.Spec : Prop :=
  ∀ n, P875569824286195815.a n = A007744 n

end A007744

/-! ## A007744.P2717865756654766744

`A000292(2*n+1)*A001405(2*n)`
-/

namespace A007744.P2717865756654766744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) * A001405 (2 * n)

end

end A007744.P2717865756654766744

namespace A007744

/-- `A000292(2*n+1)*A001405(2*n)` -/
def P2717865756654766744.Spec : Prop :=
  ∀ n, P2717865756654766744.a n = A007744 n

end A007744

/-! ## A007744.P195332130774892578

`A000292(2*n+1)*A056040(2*n)`
-/

namespace A007744.P195332130774892578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) * A056040 (2 * n)

end

end A007744.P195332130774892578

namespace A007744

/-- `A000292(2*n+1)*A056040(2*n)` -/
def P195332130774892578.Spec : Prop :=
  ∀ n, P195332130774892578.a n = A007744 n

end A007744

/-! ## A007744.P4659299648934318826

`A097331(2*n+3)*A181474(2*n)`
-/

namespace A007744.P4659299648934318826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 3) * A181474 (2 * n)

end

end A007744.P4659299648934318826

namespace A007744

/-- `A097331(2*n+3)*A181474(2*n)` -/
def P4659299648934318826.Spec : Prop :=
  ∀ n, P4659299648934318826.a n = A007744 n

end A007744

/-! ## A007744.P3547196707903630608

`∑[A004273(n+1)²]*A001405(2*n)`
-/

namespace A007744.P3547196707903630608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001405 (2 * n)

end

end A007744.P3547196707903630608

namespace A007744

/-- `∑[A004273(n+1)²]*A001405(2*n)` -/
def P3547196707903630608.Spec : Prop :=
  ∀ n, P3547196707903630608.a n = A007744 n

end A007744

/-! ## A007744.P4204939507256766761

`∑[A001478(2*n+1)²]*A063886(2*n)`
-/

namespace A007744.P4204939507256766761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A063886 (2 * n)

end

end A007744.P4204939507256766761

namespace A007744

/-- `∑[A001478(2*n+1)²]*A063886(2*n)` -/
def P4204939507256766761.Spec : Prop :=
  ∀ n, P4204939507256766761.a n = A007744 n

end A007744

/-!
# A007745: a(n) = n OR n^2 (applied to binary expansions).

The programs for A007745, the canonical program `A007745.P1312165707394382952` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007745 has offset 1).

The definition of A007745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007745.P1312165707394382952

`or(n+1, (n+1)²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007745

/-- `or(n+1, (n+1)²)` -/
def P1312165707394382952.Spec : Prop :=
  ∀ n, (P1312165707394382952.a n : ℤ) = A007745 (n + 1)

theorem P1312165707394382952.correct : P1312165707394382952.Spec := by
  intro n
  simp only [A007745, Nat.add_sub_cancel]

end A007745

/-! ## A007745.P7770052858802983467

`∑[abs(Δ[or(n, n²)])]`
-/

namespace A007745.P7770052858802983467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007745.P7770052858802983467

namespace A007745

/-- `∑[abs(Δ[or(n, n²)])]` -/
def P7770052858802983467.Spec : Prop :=
  ∀ n, P7770052858802983467.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P14973075782545374749

`∑[or(1, Δ[or(n, n²)])]`
-/

namespace A007745.P14973075782545374749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007745.P14973075782545374749

namespace A007745

/-- `∑[or(1, Δ[or(n, n²)])]` -/
def P14973075782545374749.Spec : Prop :=
  ∀ n, P14973075782545374749.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P8117561197711758880

`record[abs(or(n-1, (1-n)²))]`
-/

namespace A007745.P8117561197711758880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((n : ℤ) - 1) ((1 - (n : ℤ)) ^ 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007745.P8117561197711758880

namespace A007745

/-- `record[abs(or(n-1, (1-n)²))]` -/
def P8117561197711758880.Spec : Prop :=
  ∀ n, P8117561197711758880.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P6951021141001543251

`∑[Δ[and(1-n, n²)]+1]`
-/

namespace A007745.P6951021141001543251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007745.P6951021141001543251

namespace A007745

/-- `∑[Δ[and(1-n, n²)]+1]` -/
def P6951021141001543251.Spec : Prop :=
  ∀ n, P6951021141001543251.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P9264000208841414315

`and(-n, (n+1)²)+n+1`
-/

namespace A007745.P9264000208841414315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) ((n + 1) ^ 2 : ℤ) + (n + 1 : ℤ)

end

end A007745.P9264000208841414315

namespace A007745

/-- `and(-n, (n+1)²)+n+1` -/
def P9264000208841414315.Spec : Prop :=
  ∀ n, P9264000208841414315.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P1654671068231668824

`or(n-1, ∑[2*n+1])+2`
-/

namespace A007745.P1654671068231668824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2

end

end A007745.P1654671068231668824

namespace A007745

/-- `or(n-1, ∑[2*n+1])+2` -/
def P1654671068231668824.Spec : Prop :=
  ∀ n, P1654671068231668824.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P5144856270105108258

`abs(or(n+1, (n+3)*(n-1)+4))`
-/

namespace A007745.P5144856270105108258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n + 1 : ℤ) ((n + 3 : ℤ) * ((n : ℤ) - 1) + 4)|

end

end A007745.P5144856270105108258

namespace A007745

/-- `abs(or(n+1, (n+3)*(n-1)+4))` -/
def P5144856270105108258.Spec : Prop :=
  ∀ n, P5144856270105108258.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P10790905382534069001

`xor(n+1, and(n-2*n, (n+1)²))`
-/

namespace A007745.P10790905382534069001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (Int.land ((n : ℤ) - (2 * n : ℤ)) ((n + 1) ^ 2 : ℤ))

end

end A007745.P10790905382534069001

namespace A007745

/-- `xor(n+1, and(n-2*n, (n+1)²))` -/
def P10790905382534069001.Spec : Prop :=
  ∀ n, P10790905382534069001.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P5925546037526093332

`∑[2*(n+1)]-and(n+1, (n+1)²)`
-/

namespace A007745.P5925546037526093332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land (n + 1) ((n + 1) ^ 2) : ℤ)

end

end A007745.P5925546037526093332

namespace A007745

/-- `∑[2*(n+1)]-and(n+1, (n+1)²)` -/
def P5925546037526093332.Spec : Prop :=
  ∀ n, P5925546037526093332.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P3845672565124328655

`(n+1)²+n+1-and(n+1, (n+1)²)`
-/

namespace A007745.P3845672565124328655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((n + 1 : ℤ) - (Nat.land (n + 1) ((n + 1) ^ 2) : ℤ))

end

end A007745.P3845672565124328655

namespace A007745

/-- `(n+1)²+n+1-and(n+1, (n+1)²)` -/
def P3845672565124328655.Spec : Prop :=
  ∀ n, P3845672565124328655.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P10451146800741884782

`∑[2*n+1]-and(n+1, ∑[2*n+1])+n+1`
-/

namespace A007745.P10451146800741884782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) + (n + 1 : ℤ)

end

end A007745.P10451146800741884782

namespace A007745

/-- `∑[2*n+1]-and(n+1, ∑[2*n+1])+n+1` -/
def P10451146800741884782.Spec : Prop :=
  ∀ n, P10451146800741884782.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P9485586396126233856

`A396236(n+1)+1+n`
-/

namespace A007745.P9485586396126233856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396236 (n + 1) + 1 + (n : ℤ)

end

end A007745.P9485586396126233856

namespace A007745

/-- `A396236(n+1)+1+n` -/
def P9485586396126233856.Spec : Prop :=
  ∀ n, P9485586396126233856.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P13540863568998001338

`A396237(n+1)+(n+1)²`
-/

namespace A007745.P13540863568998001338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396237 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A007745.P13540863568998001338

namespace A007745

/-- `A396237(n+1)+(n+1)²` -/
def P13540863568998001338.Spec : Prop :=
  ∀ n, P13540863568998001338.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P8888753194587982737

`record[or(A328399(n)², A328399(n))]`
-/

namespace A007745.P8888753194587982737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A328399 n ^ 2) (A328399 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007745.P8888753194587982737

namespace A007745

/-- `record[or(A328399(n)², A328399(n))]` -/
def P8888753194587982737.Spec : Prop :=
  ∀ n, P8888753194587982737.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P11423945432822324313

`record[or(A331742(n)², A331742(n))]`
-/

namespace A007745.P11423945432822324313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A331742 n ^ 2) (A331742 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007745.P11423945432822324313

namespace A007745

/-- `record[or(A331742(n)², A331742(n))]` -/
def P11423945432822324313.Spec : Prop :=
  ∀ n, P11423945432822324313.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P16498648186501347174

`(n+1)*(n+2)-A213541(n+1)`
-/

namespace A007745.P16498648186501347174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - A213541 (n + 1)

end

end A007745.P16498648186501347174

namespace A007745

/-- `(n+1)*(n+2)-A213541(n+1)` -/
def P16498648186501347174.Spec : Prop :=
  ∀ n, P16498648186501347174.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P7595587761530619563

`A213541(n+1)+A169810(n+1)`
-/

namespace A007745.P7595587761530619563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213541 (n + 1) + A169810 (n + 1)

end

end A007745.P7595587761530619563

namespace A007745

/-- `A213541(n+1)+A169810(n+1)` -/
def P7595587761530619563.Spec : Prop :=
  ∀ n, P7595587761530619563.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P8335281730156493696

`A000217(n+1)+A000217(n+1)-A213541(n+1)`
-/

namespace A007745.P8335281730156493696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 1) - A213541 (n + 1))

end

end A007745.P8335281730156493696

namespace A007745

/-- `A000217(n+1)+A000217(n+1)-A213541(n+1)` -/
def P8335281730156493696.Spec : Prop :=
  ∀ n, P8335281730156493696.a n = A007745 (n + 1)

end A007745

/-! ## A007745.P7703012560266447531

`record[or(A028242(n)², A028242(n))]`
-/

namespace A007745.P7703012560266447531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028242 n ^ 2) (A028242 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007745.P7703012560266447531

namespace A007745

/-- `record[or(A028242(n)², A028242(n))]` -/
def P7703012560266447531.Spec : Prop :=
  ∀ n, P7703012560266447531.a n = A007745 (n + 1)

end A007745

/-!
# A007746: Number of ways for n-3 nonintersecting loops to cross a line 2n times.

The programs for A007746, there is no canonical definition to state claims against.
-/

/-! ## A007746.P432582528912258305

`A008828(A141214(n+1))`
-/

namespace A007746.P432582528912258305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (A141214 (n + 1)).toNat

end

end A007746.P432582528912258305

/-! ## A007746.P4299444775662821277

`A008828(A055998(n+2))`
-/

namespace A007746.P4299444775662821277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (A055998 (n + 2)).toNat

end

end A007746.P4299444775662821277

/-! ## A007746.P14473865874516204430

`A008828(A155212(n)+5)`
-/

namespace A007746.P14473865874516204430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (A155212 n + 5).toNat

end

end A007746.P14473865874516204430

/-! ## A007746.P4860741311441983664

`A008828(A056000(n)+7)`
-/

namespace A007746.P4860741311441983664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (A056000 n + 7).toNat

end

end A007746.P4860741311441983664

/-! ## A007746.P2020083563346501475

`A008828(eq[8, A235798(n+1)])`
-/

namespace A007746.P2020083563346501475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007746.P2020083563346501475

/-!
# A007747: Number of nonnegative integer points (p_1,p_2,...,p_n) in polytope defined by p_0 = p_{n+1} = 0, 2p_i - (p_{i+1} + p_{i-1}) <= 2, p_i >= 0, i=1,...,n. Number of score sequences in a chess tournament with n+1 players (with 3 outcomes for each game).

The programs for A007747, there is no canonical definition to state claims against.
-/

/-! ## A007747.P9400426475575233716

`∑[A300763(∑[A308152(n+1)])]`
-/

namespace A007747.P9400426475575233716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308152 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007747.P9400426475575233716

/-! ## A007747.P10652941551061341192

`A054899(Δ[A318895(n)])+A007878(n+1)`
-/

namespace A007747.P10652941551061341192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (f1 (n + 1) - f1 n).toNat + A007878 (n + 1)

end

end A007747.P10652941551061341192

/-! ## A007747.P4815626532612105415

`xor(A157195(A209001(n+1)), A208988(n+1))`
-/

namespace A007747.P4815626532612105415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157195 (A209001 (n + 1)).toNat) (A208988 (n + 1))

end

end A007747.P4815626532612105415

/-!
# A007748: Number of self-converse oriented trees with n nodes.

The programs for A007748, there is no canonical definition to state claims against.
-/

/-! ## A007748.P519133447969553138

`2*A005751(n+1)-A000238(n+1)`
-/

namespace A007748.P519133447969553138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005751 (n + 1) - A000238 (n + 1)

end

end A007748.P519133447969553138

/-! ## A007748.P3993349723365241881

`2*A005751(n+1)-(A038056(n+1)-A000060(n+1))`
-/

namespace A007748.P3993349723365241881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005751 (n + 1) - (A038056 (n + 1) - A000060 (n + 1))

end

end A007748.P3993349723365241881

/-! ## A007748.P14267868677840675695

`2*A005751(n+1)-A139621(∑[n]+n)`
-/

namespace A007748.P14267868677840675695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005751 (n + 1) - A139621 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007748.P14267868677840675695

/-! ## A007748.P15695627937854664025

`2*A005751(n+1)-A350789(∑[n]+n)`
-/

namespace A007748.P15695627937854664025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005751 (n + 1) - A350789 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007748.P15695627937854664025

/-! ## A007748.P449192736582877047

`2*A005751(n+1)-A350914(∑[n]+n)`
-/

namespace A007748.P449192736582877047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005751 (n + 1) - A350914 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007748.P449192736582877047

/-!
# A007750: Nonnegative integers n such that n^2*(n+1)*(2*n+1)^2*(7*n+1)/36 is a square.

The programs for A007750, the canonical program `A007750.P12044470340098905521` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007750 has offset 0).

The definition of A007750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007750.P12044470340098905521

`16*a(n-2)-a(n-4)+8` with `a(0)=0, a(1)=1, a(2)=7, a(3)=24`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007750

/-- `16*a(n-2)-a(n-4)+8` -/
def P12044470340098905521.Spec : Prop :=
  ∀ n, P12044470340098905521.a n = A007750 n

theorem P12044470340098905521.correct : P12044470340098905521.Spec := by
  intro n
  simp only [A007750]

end A007750

/-! ## A007750.P14027925365642179561

`∑[∑[16*a(n-2)-a(n-4)]]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11, a(4)=79`
-/

namespace A007750.P14027925365642179561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 11, 79] fun n f2 =>
  16 * f2 (n - 2) - f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007750.P14027925365642179561

namespace A007750

/-- `∑[∑[16*a(n-2)-a(n-4)]]` -/
def P14027925365642179561.Spec : Prop :=
  ∀ n, P14027925365642179561.a n = A007750 n

end A007750

/-! ## A007750.P14624761066741702311

`∑[A204517(A032766(n+2))]`
-/

namespace A007750.P14624761066741702311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204517 (A032766 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007750.P14624761066741702311

namespace A007750

/-- `∑[A204517(A032766(n+2))]` -/
def P14624761066741702311.Spec : Prop :=
  ∀ n, P14624761066741702311.a n = A007750 n

end A007750

/-! ## A007750.P5078754922207224685

`∑[∑[A161852(n+1)]-A161852(n+1)]`
-/

namespace A007750.P5078754922207224685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161852 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A161852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007750.P5078754922207224685

namespace A007750

/-- `∑[∑[A161852(n+1)]-A161852(n+1)]` -/
def P5078754922207224685.Spec : Prop :=
  ∀ n, P5078754922207224685.a n = A007750 n

end A007750

/-! ## A007750.P1081115448585653005

`A007751(A065033(n))%A084069(n+1)`
-/

namespace A007750.P1081115448585653005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007751 (A065033 n).toNat) (A084069 (n + 1))

end

end A007750.P1081115448585653005

namespace A007750

/-- `A007751(A065033(n))%A084069(n+1)` -/
def P1081115448585653005.Spec : Prop :=
  ∀ n, P1081115448585653005.a n = A007750 n

end A007750

/-! ## A007750.P17938553470574696276

`∑[Δ[A077398(n)]%A202638(n+1)]`
-/

namespace A007750.P17938553470574696276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077398 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A202638 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007750.P17938553470574696276

namespace A007750

/-- `∑[Δ[A077398(n)]%A202638(n+1)]` -/
def P17938553470574696276.Spec : Prop :=
  ∀ n, P17938553470574696276.a n = A007750 n

end A007750

/-! ## A007750.P13263728522440653803

`∑[gcd(A001080(n), A098303(n))]`
-/

namespace A007750.P13263728522440653803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001080 n) (A098303 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007750.P13263728522440653803

namespace A007750

/-- `∑[gcd(A001080(n), A098303(n))]` -/
def P13263728522440653803.Spec : Prop :=
  ∀ n, (P13263728522440653803.a n : ℤ) = A007750 n

end A007750

/-!
# A007751: Even bisection of A007750.

The programs for A007751, the canonical program `A007751.P7217029147631011581` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007751 has offset 0).

The definition of A007751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007751.P7217029147631011581

`16*a(n-1)-a(n-2)+8` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007751

/-- `16*a(n-1)-a(n-2)+8` -/
def P7217029147631011581.Spec : Prop :=
  ∀ n, P7217029147631011581.a n = A007751 n

theorem P7217029147631011581.correct : P7217029147631011581.Spec := by
  intro n
  simp only [A007751]

end A007751

/-! ## A007751.P16138342150447355868

`A007750(2*n)`
-/

namespace A007751.P16138342150447355868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (2 * n)

end

end A007751.P16138342150447355868

namespace A007751

/-- `A007750(2*n)` -/
def P16138342150447355868.Spec : Prop :=
  ∀ n, P16138342150447355868.a n = A007751 n

end A007751

/-! ## A007751.P4783191910424446510

`record[A007750(A014681(n))]`
-/

namespace A007751.P4783191910424446510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007751.P4783191910424446510

namespace A007751

/-- `record[A007750(A014681(n))]` -/
def P4783191910424446510.Spec : Prop :=
  ∀ n, P4783191910424446510.a n = A007751 n

end A007751

/-! ## A007751.P15576290995592532057

`record[A007750(A093178(n)-1)]`
-/

namespace A007751.P15576290995592532057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007751.P15576290995592532057

namespace A007751

/-- `record[A007750(A093178(n)-1)]` -/
def P15576290995592532057.Spec : Prop :=
  ∀ n, P15576290995592532057.a n = A007751 n

end A007751

/-! ## A007751.P3883783666263966731

`record[A007750(n)/A033999(n)]`
-/

namespace A007751.P3883783666263966731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007750 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007751.P3883783666263966731

namespace A007751

/-- `record[A007750(n)/A033999(n)]` -/
def P3883783666263966731.Spec : Prop :=
  ∀ n, P3883783666263966731.a n = (A007751 n : ℚ)

end A007751

/-! ## A007751.P16747292232748293032

`A350925(n)-(A098303(n)+1)`
-/

namespace A007751.P16747292232748293032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350925 n - (A098303 n + 1)

end

end A007751.P16747292232748293032

namespace A007751

/-- `A350925(n)-(A098303(n)+1)` -/
def P16747292232748293032.Spec : Prop :=
  ∀ n, P16747292232748293032.a n = A007751 n

end A007751

/-! ## A007751.P11538773840746265168

`A098303(n)+∑[2*A001080(n)]`
-/

namespace A007751.P11538773840746265168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098303 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007751.P11538773840746265168

namespace A007751

/-- `A098303(n)+∑[2*A001080(n)]` -/
def P11538773840746265168.Spec : Prop :=
  ∀ n, P11538773840746265168.a n = A007751 n

end A007751

/-! ## A007751.P954672304151280120

`record[A007750(n-A142150(n+1))]`
-/

namespace A007751.P954672304151280120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 ((n : ℤ) - A142150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007751.P954672304151280120

namespace A007751

/-- `record[A007750(n-A142150(n+1))]` -/
def P954672304151280120.Spec : Prop :=
  ∀ n, P954672304151280120.a n = A007751 n

end A007751

/-! ## A007751.P1922206433817082978

`record[A007750(A142150(A042948(n)))]`
-/

namespace A007751.P1922206433817082978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A142150 (A042948 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007751.P1922206433817082978

namespace A007751

/-- `record[A007750(A142150(A042948(n)))]` -/
def P1922206433817082978.Spec : Prop :=
  ∀ n, P1922206433817082978.a n = A007751 n

end A007751

/-! ## A007751.P6599130868441125334

`record[A007750(A106249(A093178(n)))]`
-/

namespace A007751.P6599130868441125334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A106249 (A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007751.P6599130868441125334

namespace A007751

/-- `record[A007750(A106249(A093178(n)))]` -/
def P6599130868441125334.Spec : Prop :=
  ∀ n, P6599130868441125334.a n = A007751 n

end A007751

/-!
# A007752: Odd bisection of A007750.

The programs for A007752, the canonical program `A007752.P4124829418347089449` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007752 has offset 1).

The definition of A007752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007752.P4124829418347089449

`16*a(n-1)-a(n-2)+8` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007752

/-- `16*a(n-1)-a(n-2)+8` -/
def P4124829418347089449.Spec : Prop :=
  ∀ n, P4124829418347089449.a n = A007752 (n + 1)

theorem P4124829418347089449.correct : P4124829418347089449.Spec := by
  intro n
  simp only [A007752, Nat.add_sub_cancel]

end A007752

/-! ## A007752.P12953205279444820742

`∑[ogf((1+7x)/(1-16x+x^2))]`
-/

namespace A007752.P12953205279444820742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -16, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007752.P12953205279444820742

namespace A007752

/-- `∑[ogf((1+7x)/(1-16x+x^2))]` -/
def P12953205279444820742.Spec : Prop :=
  ∀ n, P12953205279444820742.a n = A007752 (n + 1)

end A007752

/-! ## A007752.P10365129173502645797

`A007750(Δ[n²])`
-/

namespace A007752.P10365129173502645797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007752.P10365129173502645797

namespace A007752

/-- `A007750(Δ[n²])` -/
def P10365129173502645797.Spec : Prop :=
  ∀ n, P10365129173502645797.a n = A007752 (n + 1)

end A007752

/-! ## A007752.P12121009426603900285

`record[A007750(A004442(n))]`
-/

namespace A007752.P12121009426603900285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007752.P12121009426603900285

namespace A007752

/-- `record[A007750(A004442(n))]` -/
def P12121009426603900285.Spec : Prop :=
  ∀ n, P12121009426603900285.a n = A007752 (n + 1)

end A007752

/-! ## A007752.P18096801438144081685

`record[A007750(A093178(n))]`
-/

namespace A007752.P18096801438144081685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007752.P18096801438144081685

namespace A007752

/-- `record[A007750(A093178(n))]` -/
def P18096801438144081685.Spec : Prop :=
  ∀ n, P18096801438144081685.a n = A007752 (n + 1)

end A007752

/-! ## A007752.P4133392547315592628

`record[A007750(A198954(n))]`
-/

namespace A007752.P4133392547315592628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007752.P4133392547315592628

namespace A007752

/-- `record[A007750(A198954(n))]` -/
def P4133392547315592628.Spec : Prop :=
  ∀ n, P4133392547315592628.a n = A007752 (n + 1)

end A007752

/-! ## A007752.P6197902150064501236

`record[A007750(A014681(n)+1)]`
-/

namespace A007752.P6197902150064501236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007752.P6197902150064501236

namespace A007752

/-- `record[A007750(A014681(n)+1)]` -/
def P6197902150064501236.Spec : Prop :=
  ∀ n, P6197902150064501236.a n = A007752 (n + 1)

end A007752

/-! ## A007752.P14525261396218885820

`record[A007750(A092092(n+1))]`
-/

namespace A007752.P14525261396218885820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A092092 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007752.P14525261396218885820

namespace A007752

/-- `record[A007750(A092092(n+1))]` -/
def P14525261396218885820.Spec : Prop :=
  ∀ n, P14525261396218885820.a n = A007752 (n + 1)

end A007752

/-! ## A007752.P15557049005927123512

`record[A007750(A033999(n)+n)]`
-/

namespace A007752.P15557049005927123512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007752.P15557049005927123512

namespace A007752

/-- `record[A007750(A033999(n)+n)]` -/
def P15557049005927123512.Spec : Prop :=
  ∀ n, P15557049005927123512.a n = A007752 (n + 1)

end A007752

/-! ## A007752.P10649827972026632385

`∑[A307173(n+1)+A001080(n)]`
-/

namespace A007752.P10649827972026632385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307173 (n + 1) + A001080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007752.P10649827972026632385

namespace A007752

/-- `∑[A307173(n+1)+A001080(n)]` -/
def P10649827972026632385.Spec : Prop :=
  ∀ n, P10649827972026632385.a n = A007752 (n + 1)

end A007752

/-!
# A007753: a(n) = Sum_{k=0..n-1} binomial(a(k)^2, k).

The programs for A007753, there is no canonical definition to state claims against.
-/

/-! ## A007753.P6292391749330124080

`a(n-1)+C(a(n-1)², n-1)` with `a(0)=1, a(1)=1`
-/

namespace A007753.P6292391749330124080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.choose (a (n - 1) ^ 2) ((n : ℤ) - 1).toNat

end

end A007753.P6292391749330124080

/-!
# A007755: Smallest number m such that the trajectory of m under iteration of Euler's totient function phi(n) [A000010] contains exactly n distinct numbers, including m and the fixed point.

The programs for A007755, there is no canonical definition to state claims against.
-/

/-! ## A007755.P8715785913668253697

`eq[1, A289152(n+1)]+1`
-/

namespace A007755.P8715785913668253697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007755.P8715785913668253697

/-! ## A007755.P3973538459113727477

`record[A000027(n+1)/A289152(n+1)]`
-/

namespace A007755.P3973538459113727477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A289152 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007755.P3973538459113727477

/-! ## A007755.P14211840034990689074

`record[A007948(n+1)/A289152(n+1)]`
-/

namespace A007755.P14211840034990689074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) / (A289152 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007755.P14211840034990689074

/-! ## A007755.P5527620961036016661

`record[A038387(n+1)/A289152(n+1)]`
-/

namespace A007755.P5527620961036016661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038387 (n + 1) : ℚ) / (A289152 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007755.P5527620961036016661

/-! ## A007755.P9954406349212493391

`record[A333645(n+1)/A289152(n+1)]`
-/

namespace A007755.P9954406349212493391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333645 (n + 1) : ℚ) / (A289152 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007755.P9954406349212493391

/-!
# A007756: Number of irreducible indecomposable spherical curves with n crossings (only ordinary double points), the circle is oriented, the sphere is not oriented (OU case).

The programs for A007756, there is no canonical definition to state claims against.
-/

/-! ## A007756.P13025228792715437986

`A033182(2*A317078(n))`
-/

namespace A007756.P13025228792715437986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (2 * A317078 n).toNat

end

end A007756.P13025228792715437986

/-! ## A007756.P161206196965525048

`A254011(A317078(n)+6)`
-/

namespace A007756.P161206196965525048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (A317078 n + 6).toNat

end

end A007756.P161206196965525048

/-! ## A007756.P4126627516355005389

`A033182(A061396(n))+A008615(n)`
-/

namespace A007756.P4126627516355005389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A061396 n).toNat + A008615 n

end

end A007756.P4126627516355005389

/-! ## A007756.P10336519821732333469

`A008618(A342236(n+3)+A001680(n))`
-/

namespace A007756.P10336519821732333469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A342236 (n + 3) + A001680 n).toNat

end

end A007756.P10336519821732333469

/-! ## A007756.P12009677015027622451

`A139436(A248227(n+1))+A008618(A001680(n))`
-/

namespace A007756.P12009677015027622451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139436 (A248227 (n + 1)).toNat + A008618 (A001680 n).toNat

end

end A007756.P12009677015027622451

/-!
# A007757: Dwork-Kontsevich sequence evaluated at 2*n.

The programs for A007757, there is no canonical definition to state claims against.
-/

/-! ## A007757.P9369635912218069554

`gcd(A025527(2*(n+1)), A027457(2*(n+1)))*A025527(2*(n+1))`
-/

namespace A007757.P9369635912218069554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A025527 (2 * (n + 1))) (A027457 (2 * (n + 1))) : ℤ) * A025527 (2 * (n + 1))

end

end A007757.P9369635912218069554

/-! ## A007757.P2092821197025583103

`gcd(Δ[A001705(2*n+1)], A001705(2*n+1))`
-/

namespace A007757.P2092821197025583103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001705 (2 * n + 1))

end

end A007757.P2092821197025583103

/-! ## A007757.P7725527791082358949

`gcd(A025562(2*(n+1))², A056612(2*(n+1)))`
-/

namespace A007757.P7725527791082358949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025562 (2 * (n + 1)) ^ 2) (A056612 (2 * (n + 1)))

end

end A007757.P7725527791082358949

/-! ## A007757.P17917122473196339319

`gcd(A001044(n+1)², A001705(2*n+1))`
-/

namespace A007757.P17917122473196339319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001044 (n + 1) ^ 2) (A001705 (2 * n + 1))

end

end A007757.P17917122473196339319

/-! ## A007757.P3796400017379805690

`gcd(A001044(2*n), A001705(2*n+1))`
-/

namespace A007757.P3796400017379805690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001044 (2 * n)) (A001705 (2 * n + 1))

end

end A007757.P3796400017379805690

/-!
# A007758: a(n) = 2^n*n^2.

The programs for A007758, the canonical program `A007758.P17176775618145894956` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007758 has offset 0).

The definition of A007758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*n²` (program `A007758.P17176775618145894956`, by `A007758.P17176775618145894956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007758.P17176775618145894956

`2^n*n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007758

/-- `2^n*n²` -/
def P17176775618145894956.Spec : Prop :=
  ∀ n, (P17176775618145894956.a n : ℤ) = A007758 n

theorem P17176775618145894956.correct : P17176775618145894956.Spec := by
  intro n
  simp only [A007758]

end A007758

/-! ## A007758.P17716812831282992265

`floor(n²/acot(2^n))`
-/

namespace A007758.P17716812831282992265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) / SequenceMachineLib.acot (2 ^ n : ℝ)⌋

end

end A007758.P17716812831282992265

namespace A007758

/-- `floor(n²/acot(2^n))` -/
def P17716812831282992265.Spec : Prop :=
  ∀ n, P17716812831282992265.a n = A007758 n

end A007758

/-! ## A007758.P4768391853765985120

`round(n²/acot(2^n))`
-/

namespace A007758.P4768391853765985120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) / SequenceMachineLib.acot (2 ^ n : ℝ))

end

end A007758.P4768391853765985120

namespace A007758

/-- `round(n²/acot(2^n))` -/
def P4768391853765985120.Spec : Prop :=
  ∀ n, P4768391853765985120.a n = A007758 n

end A007758

/-! ## A007758.P6002995496126295369

`(n/cos(atan(1))^n)²`
-/

namespace A007758.P6002995496126295369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.cos (Real.arctan (1 : ℝ)) ^ n) ^ 2

end

end A007758.P6002995496126295369

namespace A007758

/-- `(n/cos(atan(1))^n)²` -/
def P6002995496126295369.Spec : Prop :=
  ∀ n, P6002995496126295369.a n = (A007758 n : ℝ)

end A007758

/-! ## A007758.P17183357912164160684

`(n/sin(atan(1))^n)²`
-/

namespace A007758.P17183357912164160684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.sin (Real.arctan (1 : ℝ)) ^ n) ^ 2

end

end A007758.P17183357912164160684

namespace A007758

/-- `(n/sin(atan(1))^n)²` -/
def P17183357912164160684.Spec : Prop :=
  ∀ n, P17183357912164160684.a n = (A007758 n : ℝ)

end A007758

/-! ## A007758.P386753396530737729

`(n/cos(acot(1))^n)²`
-/

namespace A007758.P386753396530737729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.cos (SequenceMachineLib.acot (1 : ℝ)) ^ n) ^ 2

end

end A007758.P386753396530737729

namespace A007758

/-- `(n/cos(acot(1))^n)²` -/
def P386753396530737729.Spec : Prop :=
  ∀ n, P386753396530737729.a n = (A007758 n : ℝ)

end A007758

/-! ## A007758.P10621373166723618731

`(n/sin(acot(1))^n)²`
-/

namespace A007758.P10621373166723618731
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.sin (SequenceMachineLib.acot (1 : ℝ)) ^ n) ^ 2

end

end A007758.P10621373166723618731

namespace A007758

/-- `(n/sin(acot(1))^n)²` -/
def P10621373166723618731.Spec : Prop :=
  ∀ n, P10621373166723618731.a n = (A007758 n : ℝ)

end A007758

/-! ## A007758.P1706832417099908985

`n²/tan(acot(2^n))`
-/

namespace A007758.P1706832417099908985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (2 ^ n : ℝ))

end

end A007758.P1706832417099908985

namespace A007758

/-- `n²/tan(acot(2^n))` -/
def P1706832417099908985.Spec : Prop :=
  ∀ n, P1706832417099908985.a n = (A007758 n : ℝ)

end A007758

/-! ## A007758.P3535891224977129216

`floor(n²*Δ[2*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A007758.P3535891224977129216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A007758.P3535891224977129216

namespace A007758

/-- `floor(n²*Δ[2*a(n-1)])` -/
def P3535891224977129216.Spec : Prop :=
  ∀ n, P3535891224977129216.a n = A007758 n

end A007758

/-! ## A007758.P15549099767528841026

`floor(n²*∑[2*a(n-1)])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A007758.P15549099767528841026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007758.P15549099767528841026

namespace A007758

/-- `floor(n²*∑[2*a(n-1)])` -/
def P15549099767528841026.Spec : Prop :=
  ∀ n, (P15549099767528841026.a n : ℤ) = A007758 n

end A007758

/-! ## A007758.P188603486211393336

`n²/2^(gcd(n, n+1)-(n+1))`
-/

namespace A007758.P188603486211393336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (2 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A007758.P188603486211393336

namespace A007758

/-- `n²/2^(gcd(n, n+1)-(n+1))` -/
def P188603486211393336.Spec : Prop :=
  ∀ n, P188603486211393336.a n = (A007758 n : ℚ)

theorem P188603486211393336.correct : P188603486211393336.Spec := by
  intro n
  simp only [A007758, Nat.add_sub_cancel, A007758.P188603486211393336.a, A007758.P17176775618145894956.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A007758

/-! ## A007758.P3017350790304536151

`1-A168298(n)`
-/

namespace A007758.P3017350790304536151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A168298 n

end

end A007758.P3017350790304536151

namespace A007758

/-- `1-A168298(n)` -/
def P3017350790304536151.Spec : Prop :=
  ∀ n, P3017350790304536151.a n = A007758 n

theorem P3017350790304536151.correct : P3017350790304536151.Spec := by
  intro n
  simp only [A007758, Nat.add_sub_cancel, A007758.P3017350790304536151.a, A007758.P17176775618145894956.a, A168298, A168298.P12875536655596633023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007758

/-! ## A007758.P811341337730458744

`A248917(n)-1`
-/

namespace A007758.P811341337730458744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248917 n - 1

end

end A007758.P811341337730458744

namespace A007758

/-- `A248917(n)-1` -/
def P811341337730458744.Spec : Prop :=
  ∀ n, P811341337730458744.a n = A007758 n

theorem P811341337730458744.correct : P811341337730458744.Spec := by
  intro n
  simp only [A007758, Nat.add_sub_cancel, A007758.P811341337730458744.a, A007758.P17176775618145894956.a, A248917, A248917.P11121051063052159615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007758

/-! ## A007758.P15034931263805054991

`n*A002064(n)-n`
-/

namespace A007758.P15034931263805054991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002064 n - (n : ℤ)

end

end A007758.P15034931263805054991

namespace A007758

/-- `n*A002064(n)-n` -/
def P15034931263805054991.Spec : Prop :=
  ∀ n, P15034931263805054991.a n = A007758 n

theorem P15034931263805054991.correct : P15034931263805054991.Spec := by
  intro n
  simp only [A007758, Nat.add_sub_cancel, A007758.P15034931263805054991.a, A007758.P17176775618145894956.a, A002064, A002064.P16424863031535762998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007758

/-! ## A007758.P4577867037792548231

`abs(n²*A120617(n))`
-/

namespace A007758.P4577867037792548231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A120617 n|

end

end A007758.P4577867037792548231

namespace A007758

/-- `abs(n²*A120617(n))` -/
def P4577867037792548231.Spec : Prop :=
  ∀ n, P4577867037792548231.a n = A007758 n

end A007758

/-! ## A007758.P16493083834306698975

`abs(n²*A122803(n))`
-/

namespace A007758.P16493083834306698975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A122803 n|

end

end A007758.P16493083834306698975

namespace A007758

/-- `abs(n²*A122803(n))` -/
def P16493083834306698975.Spec : Prop :=
  ∀ n, P16493083834306698975.a n = A007758 n

end A007758

/-! ## A007758.P14751131805889106177

`n²+n²*A000225(n)`
-/

namespace A007758.P14751131805889106177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (n ^ 2 : ℤ) * A000225 n

end

end A007758.P14751131805889106177

namespace A007758

/-- `n²+n²*A000225(n)` -/
def P14751131805889106177.Spec : Prop :=
  ∀ n, P14751131805889106177.a n = A007758 n

theorem P14751131805889106177.correct : P14751131805889106177.Spec := by
  intro n
  simp only [A007758, Nat.add_sub_cancel, A007758.P14751131805889106177.a, A007758.P17176775618145894956.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007758

/-! ## A007758.P9788881875212020180

`A217527(n+2)-2^(n+1)`
-/

namespace A007758.P9788881875212020180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217527 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A007758.P9788881875212020180

namespace A007758

/-- `A217527(n+2)-2^(n+1)` -/
def P9788881875212020180.Spec : Prop :=
  ∀ n, P9788881875212020180.a n = A007758 n

theorem P9788881875212020180.correct : P9788881875212020180.Spec := by
  intro n
  simp only [A007758, Nat.add_sub_cancel, A007758.P9788881875212020180.a, A007758.P17176775618145894956.a, A217527, A217527.P167056022829218626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007758

/-! ## A007758.P8115806506044576348

`(A000079(n)+1)*n²-n²`
-/

namespace A007758.P8115806506044576348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + 1) * (n ^ 2 : ℤ) - (n ^ 2 : ℤ)

end

end A007758.P8115806506044576348

namespace A007758

/-- `(A000079(n)+1)*n²-n²` -/
def P8115806506044576348.Spec : Prop :=
  ∀ n, P8115806506044576348.a n = A007758 n

theorem P8115806506044576348.correct : P8115806506044576348.Spec := by
  intro n
  simp only [A007758, Nat.add_sub_cancel, A007758.P8115806506044576348.a, A007758.P17176775618145894956.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007758

/-! ## A007758.P9429260274196844549

`A084857(n)+A001788(n)`
-/

namespace A007758.P9429260274196844549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084857 n + A001788 n

end

end A007758.P9429260274196844549

namespace A007758

/-- `A084857(n)+A001788(n)` -/
def P9429260274196844549.Spec : Prop :=
  ∀ n, P9429260274196844549.a n = A007758 n

end A007758

/-!
# A007759: Knopfmacher expansion of sqrt(2): a(2n) = 2*(a(2n-1) + 1)^2 - 1, a(2n+1) = 2*(a(2n)^2 - 1).

The programs for A007759, there is no canonical definition to state claims against.
-/

/-! ## A007759.P9862770612465638781

`A099938(∑[A011782(n)]+1)-1-char[2*n]`
-/

namespace A007759.P9862770612465638781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099938 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - 1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007759.P9862770612465638781

/-! ## A007759.P3624327361957550975

`A219508(2*n+1)-A008683(2*(n+1))²`
-/

namespace A007759.P3624327361957550975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219508 (2 * n + 1) - A008683 (2 * (n + 1)) ^ 2

end

end A007759.P3624327361957550975

/-! ## A007759.P8534796215192472507

`A082639(A000051(n))+A000035(n)`
-/

namespace A007759.P8534796215192472507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (A000051 n).toNat + A000035 n

end

end A007759.P8534796215192472507

/-! ## A007759.P4987703048326534320

`A001541(A000079(n))-A059841(n)`
-/

namespace A007759.P4987703048326534320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (A000079 n).toNat - A059841 n

end

end A007759.P4987703048326534320

/-!
# A007762: Number of domino tilings of a certain region.

The programs for A007762, the canonical program `A007762.P10892315126186211912` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007762 has offset 1).

The definition of A007762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, A104550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007762.P10892315126186211912

`A006318(n)*A104550(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A007762

/-- `A006318(n)*A104550(n+1)` -/
def P10892315126186211912.Spec : Prop :=
  ∀ n, P10892315126186211912.a n = A007762 (n + 1)

theorem P10892315126186211912.correct : P10892315126186211912.Spec := by
  intro n
  simp only [A007762, Nat.add_sub_cancel]

end A007762

/-! ## A007762.P9485347971487758715

`Δ[A002002(n)]*A006318(n)`
-/

namespace A007762.P9485347971487758715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006318 n

end

end A007762.P9485347971487758715

namespace A007762

/-- `Δ[A002002(n)]*A006318(n)` -/
def P9485347971487758715.Spec : Prop :=
  ∀ n, P9485347971487758715.a n = A007762 (n + 1)

theorem P9485347971487758715.correct : P9485347971487758715.Spec := by
  intro n
  simp only [A007762, Nat.add_sub_cancel, A007762.P9485347971487758715.f1, A007762.P9485347971487758715.a, A007762.P10892315126186211912.a, A002002, A002002.P13046393267194405166.f2, A002002.P13046393267194405166.f1, A002002.P13046393267194405166.a, A006318, A006318.P6019427271403172875.f1, A006318.P6019427271403172875.a, A104550, A104550.P11450034910284479824.f1, A104550.P11450034910284479824.a, A003056, A003056.P5318256527314048597.a, A047665, A047665.P11812153229518684916.a, A176006, A176006.P1011772208691613746.a, A001850, A001850.P8225243896153059034.a, A035011, A035011.P9518209092387552565.a, A086616, A086616.P4854257795119713207.a, A025240, A025240.P15418065983883315172.a, A104858, A104858.P16916997968901490082.f1, A104858.P16916997968901490082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A007762

/-! ## A007762.P14782620326624584734

`Δ[A110170(n)]*A001003(n)`
-/

namespace A007762.P14782620326624584734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001003 n

end

end A007762.P14782620326624584734

namespace A007762

/-- `Δ[A110170(n)]*A001003(n)` -/
def P14782620326624584734.Spec : Prop :=
  ∀ n, P14782620326624584734.a n = A007762 (n + 1)

end A007762

/-! ## A007762.P14810807790036447192

`abs(A080243(n))*Δ[A110170(n)]`
-/

namespace A007762.P14810807790036447192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080243 n| * (f1 (n + 1) - f1 n)

end

end A007762.P14810807790036447192

namespace A007762

/-- `abs(A080243(n))*Δ[A110170(n)]` -/
def P14810807790036447192.Spec : Prop :=
  ∀ n, P14810807790036447192.a n = A007762 (n + 1)

end A007762

/-! ## A007762.P14786038069984612523

`∑[A006319(n)]*Δ[A002002(n)]`
-/

namespace A007762.P14786038069984612523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A007762.P14786038069984612523

namespace A007762

/-- `∑[A006319(n)]*Δ[A002002(n)]` -/
def P14786038069984612523.Spec : Prop :=
  ∀ n, P14786038069984612523.a n = A007762 (n + 1)

end A007762

/-! ## A007762.P13202189364234395133

`Δ[A002002(n)]*A080247(∑[n])`
-/

namespace A007762.P13202189364234395133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A080247 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A007762.P13202189364234395133

namespace A007762

/-- `Δ[A002002(n)]*A080247(∑[n])` -/
def P13202189364234395133.Spec : Prop :=
  ∀ n, P13202189364234395133.a n = A007762 (n + 1)

end A007762

/-! ## A007762.P16924188891530294016

`Δ[A002002(n)]*Δ[A176006(n)]`
-/

namespace A007762.P16924188891530294016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A007762.P16924188891530294016

namespace A007762

/-- `Δ[A002002(n)]*Δ[A176006(n)]` -/
def P16924188891530294016.Spec : Prop :=
  ∀ n, P16924188891530294016.a n = A007762 (n + 1)

theorem P16924188891530294016.correct : P16924188891530294016.Spec := by
  intro n
  simp only [A007762, Nat.add_sub_cancel, A007762.P16924188891530294016.f1, A007762.P16924188891530294016.f2, A007762.P16924188891530294016.a, A007762.P10892315126186211912.a, A002002, A002002.P13046393267194405166.f2, A002002.P13046393267194405166.f1, A002002.P13046393267194405166.a, A006318, A006318.P6019427271403172875.f1, A006318.P6019427271403172875.a, A104550, A104550.P11450034910284479824.f1, A104550.P11450034910284479824.a, A176006, A176006.P1011772208691613746.a, A003056, A003056.P5318256527314048597.a, A035011, A035011.P9518209092387552565.a, A047665, A047665.P11812153229518684916.a, A086616, A086616.P4854257795119713207.a, A001850, A001850.P8225243896153059034.a, A025240, A025240.P15418065983883315172.a, A104858, A104858.P16916997968901490082.f1, A104858.P16916997968901490082.a, A000007, A000007.P6599383543502402472.a, A001003, A001003.P3197254907760158298.a, A080243, A080243.P6426181956936067807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A007762

/-! ## A007762.P13876330601401940327

`∑[A006319(n)]*A104550(n+1)`
-/

namespace A007762.P13876330601401940327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A104550 (n + 1)

end

end A007762.P13876330601401940327

namespace A007762

/-- `∑[A006319(n)]*A104550(n+1)` -/
def P13876330601401940327.Spec : Prop :=
  ∀ n, P13876330601401940327.a n = A007762 (n + 1)

end A007762

/-! ## A007762.P15065931069665566188

`(A035011(n)+1)*A104550(n+1)`
-/

namespace A007762.P15065931069665566188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035011 n + 1) * A104550 (n + 1)

end

end A007762.P15065931069665566188

namespace A007762

/-- `(A035011(n)+1)*A104550(n+1)` -/
def P15065931069665566188.Spec : Prop :=
  ∀ n, P15065931069665566188.a n = A007762 (n + 1)

end A007762

/-! ## A007762.P2408969981505906035

`A006318(n)*A247630(2*n+1)`
-/

namespace A007762.P2408969981505906035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n * A247630 (2 * n + 1)

end

end A007762.P2408969981505906035

namespace A007762

/-- `A006318(n)*A247630(2*n+1)` -/
def P2408969981505906035.Spec : Prop :=
  ∀ n, P2408969981505906035.a n = A007762 (n + 1)

end A007762

/-!
# A007763: Number of pairs of length n permutations achievable by double-ended priority queue.

The programs for A007763, there is no canonical definition to state claims against.
-/

/-! ## A007763.P5752145624155029465

`A310876(lcm(n, A299034(n)))`
-/

namespace A007763.P5752145624155029465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310876 (Int.lcm (n : ℤ) (A299034 n))

end

end A007763.P5752145624155029465

/-!
# A007764: Number of nonintersecting (or self-avoiding) rook paths joining opposite corners of an n X n grid.

The programs for A007764, there is no canonical definition to state claims against.
-/

/-! ## A007764.P8642873610973129961

`A064297(∑[n+1])`
-/

namespace A007764.P8642873610973129961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007764.P8642873610973129961

/-! ## A007764.P7722848727451782489

`record[A064297(∑[A008621(n)])]`
-/

namespace A007764.P7722848727451782489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064297 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007764.P7722848727451782489

/-! ## A007764.P14103274926968013221

`record[A064297(A038722(n+1))]`
-/

namespace A007764.P14103274926968013221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064297 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007764.P14103274926968013221

/-! ## A007764.P5187072363862464601

`record[A064297(n+1)/A154983(n)]`
-/

namespace A007764.P5187072363862464601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064297 (n + 1) : ℚ) / (A154983 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007764.P5187072363862464601

/-! ## A007764.P5499427306784841808

`record[root(A064297(n+1), A047150(n))]`
-/

namespace A007764.P5499427306784841808
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A064297 (n + 1) : ℝ) ^ (1 / (A047150 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007764.P5499427306784841808

/-!
# A007766: Primes p == 1 (mod 8), p = a^2 + 64*b^2 such that y^2 = x^3 + p*x has rank 2.

The programs for A007766, there is no canonical definition to state claims against.
-/

/-! ## A007766.P13330711293883039180

`A014754(lt[∏{p}[n+1, -1%#], A215735(n+1)])`
-/

namespace A007766.P13330711293883039180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Int.tmod (-1) (p : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A007766.P13330711293883039180

/-! ## A007766.P6854145180435253359

`A110560(eq[A060953(n+1), A061142(n+1)])`
-/

namespace A007766.P6854145180435253359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A007766.P6854145180435253359

/-! ## A007766.P3020037302750839488

`∩[A003655(n+1), A014754(n+1)]`
-/

namespace A007766.P3020037302750839488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007766.P3020037302750839488

/-! ## A007766.P5608134447468793563

`∩[A003655(n+1), A040098(n+1)]`
-/

namespace A007766.P5608134447468793563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007766.P5608134447468793563

/-! ## A007766.P10997347239041856239

`∩[A003655(n+1), A049584(n+1)]`
-/

namespace A007766.P10997347239041856239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007766.P10997347239041856239

/-!
# A007767: Number of pairs of permutations of degree n that avoid (12,21).

The programs for A007767, there is no canonical definition to state claims against.
-/

/-! ## A007767.P9332775111377779399

`or(1, ∑[A008611(A014501(n))])`
-/

namespace A007767.P9332775111377779399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A014501 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007767.P9332775111377779399

/-! ## A007767.P14234370485015479698

`or(1, A316628(A316654(n+1)))`
-/

namespace A007767.P14234370485015479698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316628 (A316654 (n + 1)).toNat)

end

end A007767.P14234370485015479698

/-!
# A007769: Number of chord diagrams with n chords; number of pairings on a necklace.

The programs for A007769, there is no canonical definition to state claims against.
-/

/-! ## A007769.P17254637289719706858

`A054938(A028310(n))+A054499(n)`
-/

namespace A007769.P17254637289719706858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054938 (A028310 n).toNat + A054499 n

end

end A007769.P17254637289719706858

/-! ## A007769.P15527846274296971893

`A054938(A233583(n+1))+A054499(n)`
-/

namespace A007769.P15527846274296971893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054938 (A233583 (n + 1)).toNat + A054499 n

end

end A007769.P15527846274296971893

/-! ## A007769.P5654097717418029029

`A054938(A123108(2*n))+A054499(n)`
-/

namespace A007769.P5654097717418029029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054938 (A123108 (2 * n)).toNat + A054499 n

end

end A007769.P5654097717418029029

/-! ## A007769.P13222110043072938149

`A054938(A000007(n)+n)+A054499(n)`
-/

namespace A007769.P13222110043072938149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054938 (A000007 n + (n : ℤ)).toNat + A054499 n

end

end A007769.P13222110043072938149

/-! ## A007769.P4000758368939648144

`A380615(∑[n])`
-/

namespace A007769.P4000758368939648144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007769.P4000758368939648144

/-! ## A007769.P1293822205754495684

`A322176(∑[n])+A054938(A028310(n))`
-/

namespace A007769.P1293822205754495684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322176 (∑ j ∈ Finset.range (n + 1), f1 j) + A054938 (A028310 n).toNat

end

end A007769.P1293822205754495684

/-!
# A007770: Happy numbers: numbers whose trajectory under iteration of sum of squares of digits map (see A003132) includes 1.

The programs for A007770, there is no canonical definition to state claims against.
-/

/-! ## A007770.P2887182094192746564

`A356412(n)+a(n-1)` with `a(0)=1`
-/

namespace A007770.P2887182094192746564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A356412 n + a (n - 1)

end

end A007770.P2887182094192746564

/-! ## A007770.P13587100712738782229

`eq[1, A103369(n+1)]+1`
-/

namespace A007770.P13587100712738782229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007770.P13587100712738782229

/-! ## A007770.P1390509510770803473

`A028310(lt[A103369(n+1), 2]+1)`
-/

namespace A007770.P1390509510770803473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A007770.P1390509510770803473

/-! ## A007770.P4420337008475601097

`record[A000027(n+1)/A103369(n+1)]`
-/

namespace A007770.P4420337008475601097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A103369 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007770.P4420337008475601097

/-! ## A007770.P4438614055158334343

`eq[A003621(n+1), A300081(n+1)]+1`
-/

namespace A007770.P4438614055158334343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A007770.P4438614055158334343

/-! ## A007770.P6980933751570944930

`lt[8*(A031176(A003132(n))-1), A002828(n)]`
-/

namespace A007770.P6980933751570944930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A031176 (A003132 n).toNat - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007770.P6980933751570944930

/-! ## A007770.P10720253288870601237

`eq[1, A031176(n+1)]+1`
-/

namespace A007770.P10720253288870601237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007770.P10720253288870601237

/-! ## A007770.P9753983606652971171

`eq[A031176(n), A054977(n)]`
-/

namespace A007770.P9753983606652971171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007770.P9753983606652971171

/-! ## A007770.P13313850018671451958

`eq[A031176(n), A057427(n)]`
-/

namespace A007770.P13313850018671451958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007770.P13313850018671451958

/-! ## A007770.P14720181679530577372

`eq[A031176(n), A158388(n)]`
-/

namespace A007770.P14720181679530577372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007770.P14720181679530577372

/-! ## A007770.P10273793693132478075

`eq[A031176(n), A294619(n)]`
-/

namespace A007770.P10273793693132478075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007770.P10273793693132478075

/-! ## A007770.P1433320573700753630

`record[A028310(n)/A031176(n)]`
-/

namespace A007770.P1433320573700753630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A031176 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007770.P1433320573700753630

/-! ## A007770.P11453244427193943979

`eq[A031176(n), A132126(n+1)]`
-/

namespace A007770.P11453244427193943979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007770.P11453244427193943979

/-! ## A007770.P9490194891589596184

`eq[A031176(n), A267084(n+1)]`
-/

namespace A007770.P9490194891589596184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007770.P9490194891589596184

/-! ## A007770.P12296899092886704215

`lt[A031176(n)-1, A002828(n)]`
-/

namespace A007770.P12296899092886704215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007770.P12296899092886704215

/-! ## A007770.P6375238771974148902

`lt[A031176(n), log(A000216(n+1))]`
-/

namespace A007770.P6375238771974148902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A000216 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A007770.P6375238771974148902

/-! ## A007770.P17400776956603482819

`lt[A031176(n)!, A003132(2*n+1)]`
-/

namespace A007770.P17400776956603482819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A031176 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007770.P17400776956603482819

/-! ## A007770.P411768214791161935

`record[A008619(n)/A103369(A008619(n))]`
-/

namespace A007770.P411768214791161935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A103369 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007770.P411768214791161935

/-! ## A007770.P15839674196377285380

`eq[n, A028310(n*A031176(n))]`
-/

namespace A007770.P15839674196377285380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A031176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007770.P15839674196377285380

/-!
# A007772: Values of Ehrhart polynomial of dilation by 2 of Relaxed Boolean Quadric Polytope of order 3.

The programs for A007772, there is no canonical definition to state claims against.
-/

/-! ## A007772.P804507866203877709

`record[(-1)^n*∑[∑[floor((((n+1)²+1)/2)²)]]]`
-/

namespace A007772.P804507866203877709
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 + 1 : ℚ) / 2) ^ 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007772.P804507866203877709

/-! ## A007772.P5635004736534485955

`A125198(2*n)`
-/

namespace A007772.P5635004736534485955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125198 (2 * n)

end

end A007772.P5635004736534485955

/-! ## A007772.P11063566774637646846

`∏{e}[4^n, A125198(#)]`
-/

namespace A007772.P11063566774637646846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A125198 (Nat.factorization (f1 n) p)

end

end A007772.P11063566774637646846

/-!
# A007774: Numbers that are divisible by exactly 2 different primes; numbers n with omega(n) = A001221(n) = 2.

The programs for A007774, the canonical program `A007774.P15607117293274533101` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007774 has offset 1).

The definition of A007774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007774.P15077728546340762466

`eq[2, A001221(n+1)]+1`
-/

namespace A007774.P15077728546340762466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007774.P15077728546340762466

namespace A007774

/-- `eq[2, A001221(n+1)]+1` -/
def P15077728546340762466.Spec : Prop :=
  ∀ n, (P15077728546340762466.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P15799875247975388488

`eq[2, A001221(gcd(n, C(2, n)))]`
-/

namespace A007774.P15799875247975388488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007774.P15799875247975388488

namespace A007774

/-- `eq[2, A001221(gcd(n, C(2, n)))]` -/
def P15799875247975388488.Spec : Prop :=
  ∀ n, (P15799875247975388488.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P13739683180302424299

`eq[2, A001222(A007947(n+1))]+1`
-/

namespace A007774.P13739683180302424299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007774.P13739683180302424299

namespace A007774

/-- `eq[2, A001222(A007947(n+1))]+1` -/
def P13739683180302424299.Spec : Prop :=
  ∀ n, (P13739683180302424299.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P2788821682796186530

`lt[4, A163963(a(A001221(n)-1))]` with `a(0)=2, a(1)=4`
-/

namespace A007774.P2788821682796186530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  A163963 (f2 (A001221 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007774.P2788821682796186530

namespace A007774

/-- `lt[4, A163963(a(A001221(n)-1))]` -/
def P2788821682796186530.Spec : Prop :=
  ∀ n, (P2788821682796186530.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P26737643557860967

`record[n/a(A001221(n))]/2*A020639(2*(n+1))` with `a(0)=6, a(1)=2`
-/

namespace A007774.P26737643557860967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [6, 2] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2 * (A020639 (2 * (n + 1)) : ℚ)

end

end A007774.P26737643557860967

namespace A007774

/-- `record[n/a(A001221(n))]/2*A020639(2*(n+1))` -/
def P26737643557860967.Spec : Prop :=
  ∀ n, P26737643557860967.a n = (A007774 (n + 1) : ℚ)

end A007774

/-! ## A007774.P15607117293274533101

`eq[2, A259936(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A007774

/-- `eq[2, A259936(n+1)]+1` -/
def P15607117293274533101.Spec : Prop :=
  ∀ n, (P15607117293274533101.a n : ℤ) = A007774 (n + 1)

theorem P15607117293274533101.correct : P15607117293274533101.Spec := by
  intro n
  simp only [A007774, Nat.add_sub_cancel]

end A007774

/-! ## A007774.P5489950360062803608

`eq[1, A297155(n+1)]+1`
-/

namespace A007774.P5489950360062803608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007774.P5489950360062803608

namespace A007774

/-- `eq[1, A297155(n+1)]+1` -/
def P5489950360062803608.Spec : Prop :=
  ∀ n, (P5489950360062803608.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P3475878267346769155

`∩[A024619(n+1), A070915(n+1)]`
-/

namespace A007774.P3475878267346769155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007774.P3475878267346769155

namespace A007774

/-- `∩[A024619(n+1), A070915(n+1)]` -/
def P3475878267346769155.Spec : Prop :=
  ∀ n, (P3475878267346769155.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P7655864980413514459

`A165713(a(n-1))` with `a(0)=6`
-/

namespace A007774.P7655864980413514459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A165713 (a (n - 1)).toNat

end

end A007774.P7655864980413514459

namespace A007774

/-- `A165713(a(n-1))` -/
def P7655864980413514459.Spec : Prop :=
  ∀ n, P7655864980413514459.a n = A007774 (n + 1)

end A007774

/-! ## A007774.P11272633899245796738

`A020725(eq[2, A001221(n+1)])`
-/

namespace A007774.P11272633899245796738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007774.P11272633899245796738

namespace A007774

/-- `A020725(eq[2, A001221(n+1)])` -/
def P11272633899245796738.Spec : Prop :=
  ∀ n, P11272633899245796738.a n = A007774 (n + 1)

end A007774

/-! ## A007774.P16597238826748690894

`filter[n+1, A215480(#)]`
-/

namespace A007774.P16597238826748690894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j) = 1) n)

end

end A007774.P16597238826748690894

namespace A007774

/-- `filter[n+1, A215480(#)]` -/
def P16597238826748690894.Spec : Prop :=
  ∀ n, (P16597238826748690894.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P8099372715492116314

`eq[1, A079275(n+1)]+1`
-/

namespace A007774.P8099372715492116314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007774.P8099372715492116314

namespace A007774

/-- `eq[1, A079275(n+1)]+1` -/
def P8099372715492116314.Spec : Prop :=
  ∀ n, (P8099372715492116314.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P17561335089926406817

`eq[1, A081400(n+1)]+1`
-/

namespace A007774.P17561335089926406817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007774.P17561335089926406817

namespace A007774

/-- `eq[1, A081400(n+1)]+1` -/
def P17561335089926406817.Spec : Prop :=
  ∀ n, (P17561335089926406817.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P5900217255241323279

`eq[1, A215480(n+1)]+1`
-/

namespace A007774.P5900217255241323279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007774.P5900217255241323279

namespace A007774

/-- `eq[1, A215480(n+1)]+1` -/
def P5900217255241323279.Spec : Prop :=
  ∀ n, (P5900217255241323279.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P15436361739039853578

`eq[1, A376504(n+1)]+1`
-/

namespace A007774.P15436361739039853578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007774.P15436361739039853578

namespace A007774

/-- `eq[1, A376504(n+1)]+1` -/
def P15436361739039853578.Spec : Prop :=
  ∀ n, (P15436361739039853578.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P17960389297766424617

`eq[2, A007875(n+1)]+1`
-/

namespace A007774.P17960389297766424617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007774.P17960389297766424617

namespace A007774

/-- `eq[2, A007875(n+1)]+1` -/
def P17960389297766424617.Spec : Prop :=
  ∀ n, (P17960389297766424617.a n : ℤ) = A007774 (n + 1)

end A007774

/-! ## A007774.P3048884005320228107

`eq[2, A087624(n+1)]+1`
-/

namespace A007774.P3048884005320228107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007774.P3048884005320228107

namespace A007774

/-- `eq[2, A087624(n+1)]+1` -/
def P3048884005320228107.Spec : Prop :=
  ∀ n, (P3048884005320228107.a n : ℤ) = A007774 (n + 1)

end A007774

/-!
# A007775: Numbers not divisible by 2, 3 or 5.

The programs for A007775, the canonical program `A007775.P18040225213993163355` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007775 has offset 1).

The definition of A007775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007775.P18040225213993163355

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=1, a(1)=7, a(2)=11, a(3)=13, a(4)=17, a(5)=19, a(6)=23, a(7)=29, a(8)=31`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007775

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P18040225213993163355.Spec : Prop :=
  ∀ n, P18040225213993163355.a n = A007775 (n + 1)

theorem P18040225213993163355.correct : P18040225213993163355.Spec := by
  intro n
  simp only [A007775, Nat.add_sub_cancel]

end A007775

/-! ## A007775.P2504395363165467161

`record[(2*n+1)/gcd(2*n+1, 3*(n+3))]`
-/

namespace A007775.P2504395363165467161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Nat.gcd (2 * n + 1) (3 * (n + 3)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007775.P2504395363165467161

namespace A007775

/-- `record[(2*n+1)/gcd(2*n+1, 3*(n+3))]` -/
def P2504395363165467161.Spec : Prop :=
  ∀ n, P2504395363165467161.a n = (A007775 (n + 1) : ℚ)

end A007775

/-! ## A007775.P7264864975672765726

`2*floor((3*floor((10*floor((9*n+1)/8)+8)/9)+1)/2)+1`
-/

namespace A007775.P7264864975672765726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(3 * ⌊(10 * ⌊(9 * n + 1 : ℚ) / 8⌋ + 8 : ℚ) / 9⌋ + 1 : ℚ) / 2⌋ + 1

end

end A007775.P7264864975672765726

namespace A007775

/-- `2*floor((3*floor((10*floor((9*n+1)/8)+8)/9)+1)/2)+1` -/
def P7264864975672765726.Spec : Prop :=
  ∀ n, P7264864975672765726.a n = A007775 (n + 1)

end A007775

/-! ## A007775.P15666357631373822905

`A084968(n+1)/7`
-/

namespace A007775.P15666357631373822905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084968 (n + 1) : ℚ) / 7

end

end A007775.P15666357631373822905

namespace A007775

/-- `A084968(n+1)/7` -/
def P15666357631373822905.Spec : Prop :=
  ∀ n, P15666357631373822905.a n = (A007775 (n + 1) : ℚ)

theorem P15666357631373822905.correct : P15666357631373822905.Spec := by
  intro n
  simp only [A007775, Nat.add_sub_cancel, A007775.P15666357631373822905.a, A007775.P18040225213993163355.a, A084968, A084968.P14169194673112967548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007775

/-! ## A007775.P1798332159030414685

`∪[A003215(n), A070884(n)]`
-/

namespace A007775.P1798332159030414685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007775.P1798332159030414685

namespace A007775

/-- `∪[A003215(n), A070884(n)]` -/
def P1798332159030414685.Spec : Prop :=
  ∀ n, (P1798332159030414685.a n : ℤ) = A007775 (n + 1)

end A007775

/-! ## A007775.P8457240702493048821

`∪[A008349(n), A070884(n)]`
-/

namespace A007775.P8457240702493048821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007775.P8457240702493048821

namespace A007775

/-- `∪[A008349(n), A070884(n)]` -/
def P8457240702493048821.Spec : Prop :=
  ∀ n, (P8457240702493048821.a n : ℤ) = A007775 (n + 1)

end A007775

/-! ## A007775.P6186005552701015644

`∪[A008394(n), A070884(n)]`
-/

namespace A007775.P6186005552701015644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007775.P6186005552701015644

namespace A007775

/-- `∪[A008394(n), A070884(n)]` -/
def P6186005552701015644.Spec : Prop :=
  ∀ n, (P6186005552701015644.a n : ℤ) = A007775 (n + 1)

end A007775

/-! ## A007775.P7930420888989836137

`∪[A008419(n), A070884(n)]`
-/

namespace A007775.P7930420888989836137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007775.P7930420888989836137

namespace A007775

/-- `∪[A008419(n), A070884(n)]` -/
def P7930420888989836137.Spec : Prop :=
  ∀ n, (P7930420888989836137.a n : ℤ) = A007775 (n + 1)

end A007775

/-! ## A007775.P7408019528340631671

`∪[A008514(n), A070884(n)]`
-/

namespace A007775.P7408019528340631671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007775.P7408019528340631671

namespace A007775

/-- `∪[A008514(n), A070884(n)]` -/
def P7408019528340631671.Spec : Prop :=
  ∀ n, (P7408019528340631671.a n : ℤ) = A007775 (n + 1)

end A007775

/-! ## A007775.P15656510761925249826

`∪[A017177(n), A070884(n)]`
-/

namespace A007775.P15656510761925249826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007775.P15656510761925249826

namespace A007775

/-- `∪[A017177(n), A070884(n)]` -/
def P15656510761925249826.Spec : Prop :=
  ∀ n, (P15656510761925249826.a n : ℤ) = A007775 (n + 1)

end A007775

/-! ## A007775.P13129727773384575835

`∪[A070884(n), A134155(n)]`
-/

namespace A007775.P13129727773384575835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134155 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007775.P13129727773384575835

namespace A007775

/-- `∪[A070884(n), A134155(n)]` -/
def P13129727773384575835.Spec : Prop :=
  ∀ n, (P13129727773384575835.a n : ℤ) = A007775 (n + 1)

end A007775

/-! ## A007775.P15033014324919255521

`∪[A008365(n+1), A070884(n)]`
-/

namespace A007775.P15033014324919255521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007775.P15033014324919255521

namespace A007775

/-- `∪[A008365(n+1), A070884(n)]` -/
def P15033014324919255521.Spec : Prop :=
  ∀ n, (P15033014324919255521.a n : ℤ) = A007775 (n + 1)

end A007775

/-! ## A007775.P976912763964336403

`filter[A373140(n+1), A162289(#)]`
-/

namespace A007775.P976912763964336403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A007775.P976912763964336403

namespace A007775

/-- `filter[A373140(n+1), A162289(#)]` -/
def P976912763964336403.Spec : Prop :=
  ∀ n, P976912763964336403.a n = A007775 (n + 1)

end A007775

/-! ## A007775.P10209126019454365691

`record[A376318(A376318(n+1))]`
-/

namespace A007775.P10209126019454365691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376318 (A376318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007775.P10209126019454365691

namespace A007775

/-- `record[A376318(A376318(n+1))]` -/
def P10209126019454365691.Spec : Prop :=
  ∀ n, P10209126019454365691.a n = A007775 (n + 1)

end A007775

/-! ## A007775.P3819472376424292818

`filter[A007310(n+1), A011558(#)]`
-/

namespace A007775.P3819472376424292818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A007775.P3819472376424292818

namespace A007775

/-- `filter[A007310(n+1), A011558(#)]` -/
def P3819472376424292818.Spec : Prop :=
  ∀ n, P3819472376424292818.a n = A007775 (n + 1)

end A007775

/-! ## A007775.P6427747073588037009

`filter[A007310(n+1), A162289(#)]`
-/

namespace A007775.P6427747073588037009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A007775.P6427747073588037009

namespace A007775

/-- `filter[A007310(n+1), A162289(#)]` -/
def P6427747073588037009.Spec : Prop :=
  ∀ n, P6427747073588037009.a n = A007775 (n + 1)

end A007775

/-! ## A007775.P10350595397264198037

`filter[A091377(n+1), A162289(#)]`
-/

namespace A007775.P10350595397264198037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A007775.P10350595397264198037

namespace A007775

/-- `filter[A091377(n+1), A162289(#)]` -/
def P10350595397264198037.Spec : Prop :=
  ∀ n, P10350595397264198037.a n = A007775 (n + 1)

end A007775

/-! ## A007775.P5755203286098764382

`filter[A091377(n+1), A373139(#)]`
-/

namespace A007775.P5755203286098764382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A007775.P5755203286098764382

namespace A007775

/-- `filter[A091377(n+1), A373139(#)]` -/
def P5755203286098764382.Spec : Prop :=
  ∀ n, P5755203286098764382.a n = A007775 (n + 1)

end A007775

/-! ## A007775.P1759162743957914809

`filter[A374044(n+1), A162289(#)]`
-/

namespace A007775.P1759162743957914809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A007775.P1759162743957914809

namespace A007775

/-- `filter[A374044(n+1), A162289(#)]` -/
def P1759162743957914809.Spec : Prop :=
  ∀ n, P1759162743957914809.a n = A007775 (n + 1)

end A007775

/-! ## A007775.P6408160064230461586

`filter[A383288(n+1), A162289(#)]`
-/

namespace A007775.P6408160064230461586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A007775.P6408160064230461586

namespace A007775

/-- `filter[A383288(n+1), A162289(#)]` -/
def P6408160064230461586.Spec : Prop :=
  ∀ n, P6408160064230461586.a n = A007775 (n + 1)

end A007775

/-!
# A007776: Number of connected posets with n elements of height 1.

The programs for A007776, there is no canonical definition to state claims against.
-/

/-! ## A007776.P11856694573199716984

`record[A318870(n)]`
-/

namespace A007776.P11856694573199716984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007776.P11856694573199716984

/-! ## A007776.P7484655236733535676

`A318870(n+2)`
-/

namespace A007776.P7484655236733535676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318870 (n + 2)

end

end A007776.P7484655236733535676

/-! ## A007776.P12210914119959456641

`lcm(A000034(n), A318870(1-xor(n, -1)))`
-/

namespace A007776.P12210914119959456641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A318870 (1 - Int.xor (n : ℤ) (-1)).toNat)

end

end A007776.P12210914119959456641

/-! ## A007776.P11137395131959368225

`abs(A033999(n)*A318870(1-xor(n, -1)))`
-/

namespace A007776.P11137395131959368225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A318870 (1 - Int.xor (n : ℤ) (-1)).toNat|

end

end A007776.P11137395131959368225

/-! ## A007776.P81528219185306635

`A151622(n)!*A318870(1-xor(n, -1))`
-/

namespace A007776.P81528219185306635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151622 n).toNat : ℤ) * A318870 (1 - Int.xor (n : ℤ) (-1)).toNat

end

end A007776.P81528219185306635

/-!
# A007777: Number of overlap-free binary words of length n.

The programs for A007777, there is no canonical definition to state claims against.
-/

/-! ## A007777.P6577755036129755384

`∑[A086436(A000013(n)²)]`
-/

namespace A007777.P6577755036129755384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A000013 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007777.P6577755036129755384

/-! ## A007777.P15530610984809223266

`∑[A249901(A000013(n)²)]`
-/

namespace A007777.P15530610984809223266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249901 (A000013 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007777.P15530610984809223266

/-! ## A007777.P7040491196024275283

`eq[A008683(A245185(n+1)), A329585(n+1)]`
-/

namespace A007777.P7040491196024275283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A245185 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007777.P7040491196024275283

/-! ## A007777.P7996692834030862247

`∑[A010553(∏[A059964(n+1)])]`
-/

namespace A007777.P7996692834030862247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059964 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007777.P7996692834030862247

/-! ## A007777.P4221515460719812222

`∑[A265745(A000123(floor(n²/2)))]`
-/

namespace A007777.P4221515460719812222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A000123 ⌊(n ^ 2 : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007777.P4221515460719812222

/-!
# A007778: a(n) = n^(n+1).

The programs for A007778, the canonical program `A007778.P16810824566142427032` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007778 has offset 0).

The definition of A007778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)` (program `A007778.P16810824566142427032`, by `A007778.P16810824566142427032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007778.P16810824566142427032

`n^(n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007778

/-- `n^(n+1)` -/
def P16810824566142427032.Spec : Prop :=
  ∀ n, (P16810824566142427032.a n : ℤ) = A007778 n

theorem P16810824566142427032.correct : P16810824566142427032.Spec := by
  intro n
  simp only [A007778]

end A007778

/-!
# A007779: Coefficients of asymptotic expansion of Ramanujan false theta series.

The programs for A007779, there is no canonical definition to state claims against.
-/

/-! ## A007779.P10799653595485147875

`A115455(abs(1-n))+A115455(n)`
-/

namespace A007779.P10799653595485147875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115455 |1 - (n : ℤ)|.toNat + A115455 n

end

end A007779.P10799653595485147875

/-! ## A007779.P4159618772805204132

`A230980(A186758(n)+1)`
-/

namespace A007779.P4159618772805204132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A186758 n + 1).toNat

end

end A007779.P4159618772805204132

/-! ## A007779.P6010232985802365384

`A264749(A177543(n)+3)`
-/

namespace A007779.P6010232985802365384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A177543 n + 3).toNat

end

end A007779.P6010232985802365384

/-! ## A007779.P4143483116095776026

`A264749(or(3, A177543(n)))`
-/

namespace A007779.P4143483116095776026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (Int.lor 3 (A177543 n)).toNat

end

end A007779.P4143483116095776026

/-!
# A007781: a(n) = (n+1)^(n+1) - n^n for n>0, a(0) = 1.

The programs for A007781, there is no canonical definition to state claims against.
-/

/-! ## A007781.P14419178968766520838

`or(1, Δ[n^n])`
-/

namespace A007781.P14419178968766520838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A007781.P14419178968766520838

/-! ## A007781.P16196059833768272612

`Δ[lcm(n, (-n)^n)]`
-/

namespace A007781.P16196059833768272612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-(n : ℤ)) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A007781.P16196059833768272612

/-! ## A007781.P5826214729547639447

`Δ[(n^n)%(61^n)]`
-/

namespace A007781.P5826214729547639447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n % 61 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A007781.P5826214729547639447

/-! ## A007781.P6152427575122473713

`Δ[n^round(1/acot(n))]`
-/

namespace A007781.P6152427575122473713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007781.P6152427575122473713

/-! ## A007781.P7917522235354654226

`Δ[n^n]+floor(acot(n))`
-/

namespace A007781.P7917522235354654226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A007781.P7917522235354654226

/-! ## A007781.P7333303144757028792

`Δ[n^round(acot(n)+n)]`
-/

namespace A007781.P7333303144757028792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007781.P7333303144757028792

/-! ## A007781.P17187882868482650535

`Δ[n^(abs(1-n)+1)]`
-/

namespace A007781.P17187882868482650535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (n : ℤ)| + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007781.P17187882868482650535

/-! ## A007781.P10671093114764748798

`Δ[n^n]+C(2, n+2)`
-/

namespace A007781.P10671093114764748798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose 2 (n + 2) : ℤ)

end

end A007781.P10671093114764748798

/-! ## A007781.P11243340849744018161

`ceil(Δ[record[(n-2)^(n-2)]])`
-/

namespace A007781.P11243340849744018161
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A007781.P11243340849744018161

/-! ## A007781.P1360333784565206741

`(n+1)^(n+1)-n^(n%a(n-1))` with `a(0)=1`
-/

namespace A007781.P1360333784565206741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ (n + 1) : ℚ) - (n : ℚ) ^ (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ)

end

end A007781.P1360333784565206741

/-!
# A007782: Number of factors in the infinite word formed by the Kolakoski sequence A000002.

The programs for A007782, there is no canonical definition to state claims against.
-/

/-! ## A007782.P10224320947730897215

`∑[A071165(A006666(2^((n-1)%(n+1))))]`
-/

namespace A007782.P10224320947730897215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071165 (A006666 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007782.P10224320947730897215

/-! ## A007782.P81840531822608142

`∑[A071165(A006666(A011782(n)))]`
-/

namespace A007782.P81840531822608142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071165 (A006666 (A011782 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007782.P81840531822608142

/-! ## A007782.P17619802411207220242

`∑[A042946(A188511(n²))]`
-/

namespace A007782.P17619802411207220242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042946 (A188511 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007782.P17619802411207220242

/-! ## A007782.P605832429694819285

`∑[A178493(A005378(n)!)]`
-/

namespace A007782.P605832429694819285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178493 (Nat.factorial (A005378 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007782.P605832429694819285

/-! ## A007782.P17897492867933334694

`∑[A194441(∑[A322670(n)])]`
-/

namespace A007782.P17897492867933334694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322670 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194441 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007782.P17897492867933334694

/-!
# A007785: Number of sets of positive integers <= n^2 whose sum is (n^3 + n)/2.

The programs for A007785, there is no canonical definition to state claims against.
-/

/-! ## A007785.P17883977784649425459

`A191711(∑[C(n, 2)^n])`
-/

namespace A007785.P17883977784649425459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191711 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007785.P17883977784649425459

/-!
# A007786: Number of nonintersecting rook paths joining opposite corners of 4 X n board.

The programs for A007786, there is no canonical definition to state claims against.
-/

/-! ## A007786.P16793579749164382478

`A064298(A141214(n+1))`
-/

namespace A007786.P16793579749164382478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A141214 (n + 1)).toNat

end

end A007786.P16793579749164382478

/-! ## A007786.P187700562136339435

`A064298(A374004(n+1))`
-/

namespace A007786.P187700562136339435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A374004 (n + 1)).toNat

end

end A007786.P187700562136339435

/-! ## A007786.P3259577212962917947

`A064298(A027379(n+2))`
-/

namespace A007786.P3259577212962917947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A027379 (n + 2)).toNat

end

end A007786.P3259577212962917947

/-! ## A007786.P4603730194525427303

`A064298(A055998(n+2))`
-/

namespace A007786.P4603730194525427303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A055998 (n + 2)).toNat

end

end A007786.P4603730194525427303

/-! ## A007786.P4938476074988972198

`A064298(A155212(n)+5)`
-/

namespace A007786.P4938476074988972198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A155212 n + 5).toNat

end

end A007786.P4938476074988972198

/-!
# A007787: Number of nonintersecting rook paths joining opposite corners of 5 X n board.

The programs for A007787, there is no canonical definition to state claims against.
-/

/-! ## A007787.P2155876592409986895

`A064298(A374005(n+1))`
-/

namespace A007787.P2155876592409986895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A374005 (n + 1)).toNat

end

end A007787.P2155876592409986895

/-! ## A007787.P11008277035159335355

`A064298(A046691(n+3))`
-/

namespace A007787.P11008277035159335355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A046691 (n + 3)).toNat

end

end A007787.P11008277035159335355

/-! ## A007787.P7116248378631891121

`A064298(A167499(n+3))`
-/

namespace A007787.P7116248378631891121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A167499 (n + 3)).toNat

end

end A007787.P7116248378631891121

/-! ## A007787.P18233709034552176165

`A064298(eq[4, A193592(n)])`
-/

namespace A007787.P18233709034552176165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007787.P18233709034552176165

/-! ## A007787.P13958950701150415442

`A064298(Δ[A023545(n+1)])`
-/

namespace A007787.P13958950701150415442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (f1 (n + 1) - f1 n).toNat

end

end A007787.P13958950701150415442

/-!
# A007788: Number of augmented André 3-signed permutations: E.g.f. (1-sin(3*x))^(-1/3).

The programs for A007788, there is no canonical definition to state claims against.
-/

/-! ## A007788.P999504585858882707

`A385896(A000096(n+3)-3)`
-/

namespace A007788.P999504585858882707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385896 (A000096 (n + 3) - 3).toNat

end

end A007788.P999504585858882707

/-! ## A007788.P13459515502830256169

`A385896(A014616(n+1)+A014616(n+2))`
-/

namespace A007788.P13459515502830256169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385896 (A014616 (n + 1) + A014616 (n + 2)).toNat

end

end A007788.P13459515502830256169

/-!
# A007791: From a problem concerning circulant matrices and Gauss sums.

The programs for A007791, there is no canonical definition to state claims against.
-/

/-! ## A007791.P16871984184249255422

`A210850(A048855(n))^4`
-/

namespace A007791.P16871984184249255422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (A048855 n).toNat ^ 4

end

end A007791.P16871984184249255422

/-! ## A007791.P15038439636224197309

`A035232(A064278(3*n+2))^4`
-/

namespace A007791.P15038439636224197309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A064278 (3 * n + 2)).toNat ^ 4

end

end A007791.P15038439636224197309

/-! ## A007791.P15796629149081535669

`lcm(A008835(A179824(n+2)), A121361(n))`
-/

namespace A007791.P15796629149081535669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008835 (A179824 (n + 2)).toNat) (A121361 n)

end

end A007791.P15796629149081535669

/-!
# A007794: Juxtapose pairs of primes (starting at 1).

The programs for A007794, there is no canonical definition to state claims against.
-/

/-! ## A007794.P16130266760086514252

`A049852(A008578(2*n+1))`
-/

namespace A007794.P16130266760086514252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A008578 (2 * n + 1)).toNat

end

end A007794.P16130266760086514252

/-! ## A007794.P4330203882594519683

`A045533(A233583(2*n+1))%A045533(2*n+1)`
-/

namespace A007794.P4330203882594519683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045533 (A233583 (2 * n + 1)).toNat) (A045533 (2 * n + 1))

end

end A007794.P4330203882594519683

/-! ## A007794.P4526031826568065308

`A045533(A233583(2*n+1))%Δ[A209448(n)]`
-/

namespace A007794.P4526031826568065308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045533 (A233583 (2 * n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A007794.P4526031826568065308

/-!
# A007795: Juxtapose pairs of primes.

The programs for A007795, there is no canonical definition to state claims against.
-/

/-! ## A007795.P2757512705267345267

`A045533(Δ[n²])`
-/

namespace A007795.P2757512705267345267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007795.P2757512705267345267

/-! ## A007795.P7102352241392845793

`or(1, A045533(2*n+1))`
-/

namespace A007795.P7102352241392845793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045533 (2 * n + 1))

end

end A007795.P7102352241392845793

/-! ## A007795.P17114133424160092881

`record[A045533(n+1)/(-1)^n]`
-/

namespace A007795.P17114133424160092881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045533 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007795.P17114133424160092881

/-! ## A007795.P4969946941085068501

`record[A045533(A000265(n+1))]`
-/

namespace A007795.P4969946941085068501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007795.P4969946941085068501

/-! ## A007795.P15647661862915286016

`record[A045533(or(1, A116941(n)))]`
-/

namespace A007795.P15647661862915286016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (Int.lor 1 (A116941 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007795.P15647661862915286016

/-! ## A007795.P16910760505971187425

`record[A045533(abs(A076118(n+1)))]`
-/

namespace A007795.P16910760505971187425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 |A076118 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007795.P16910760505971187425

/-! ## A007795.P16870229115671209004

`A049852(A031368(n+1))`
-/

namespace A007795.P16870229115671209004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A031368 (n + 1)).toNat

end

end A007795.P16870229115671209004

/-! ## A007795.P17569278635301137195

`A049852(A000040(2*n+1))`
-/

namespace A007795.P17569278635301137195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A000040 (2 * n + 1)).toNat

end

end A007795.P17569278635301137195

/-! ## A007795.P14336307256006136874

`A049852(A008578(2*(n+1)))`
-/

namespace A007795.P14336307256006136874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A008578 (2 * (n + 1))).toNat

end

end A007795.P14336307256006136874

/-! ## A007795.P17430294324423531497

`A049852(A182986(2*(n+1)))`
-/

namespace A007795.P17430294324423531497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A182986 (2 * (n + 1))).toNat

end

end A007795.P17430294324423531497

/-! ## A007795.P16942327856820933257

`A049852(A006093(2*n+1)+1)`
-/

namespace A007795.P16942327856820933257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A006093 (2 * n + 1) + 1).toNat

end

end A007795.P16942327856820933257

/-! ## A007795.P11780302476428478828

`A049852(A007918(A006093(2*n+1)))`
-/

namespace A007795.P11780302476428478828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A007918 (A006093 (2 * n + 1)).toNat).toNat

end

end A007795.P11780302476428478828

/-! ## A007795.P14032354058181928501

`A049851(A031215(n+1))`
-/

namespace A007795.P14032354058181928501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A031215 (n + 1)).toNat

end

end A007795.P14032354058181928501

/-! ## A007795.P11744101730273968184

`A049851(A000040(2*(n+1)))`
-/

namespace A007795.P11744101730273968184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A000040 (2 * (n + 1))).toNat

end

end A007795.P11744101730273968184

/-! ## A007795.P1687806082447523671

`A049851(A006005(2*(n+1)))`
-/

namespace A007795.P1687806082447523671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A006005 (2 * (n + 1))).toNat

end

end A007795.P1687806082447523671

/-! ## A007795.P12076038553087825987

`A049851(A065091(2*n+1))`
-/

namespace A007795.P12076038553087825987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A065091 (2 * n + 1)).toNat

end

end A007795.P12076038553087825987

/-! ## A007795.P338898175224733061

`A109778(2*n+1)+A045533(2*n+1)`
-/

namespace A007795.P338898175224733061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109778 (2 * n + 1) + A045533 (2 * n + 1)

end

end A007795.P338898175224733061

/-!
# A007797: List of pairs of primes in reverse order.

The programs for A007797, there is no canonical definition to state claims against.
-/

/-! ## A007797.P9720446501007266013

`A084796(A089581(n+1))`
-/

namespace A007797.P9720446501007266013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (A089581 (n + 1)).toNat

end

end A007797.P9720446501007266013

/-! ## A007797.P259566887051831883

`A084796(A006094(Δ[n²]))`
-/

namespace A007797.P259566887051831883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (A006094 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A007797.P259566887051831883

/-! ## A007797.P2832623007658483380

`A085307(A006094(2*n+1))`
-/

namespace A007797.P2832623007658483380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085307 (A006094 (2 * n + 1)).toNat

end

end A007797.P2832623007658483380

/-! ## A007797.P12897357502468828512

`A084796(sqrt(A166329(2*n+1)))`
-/

namespace A007797.P12897357502468828512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (SequenceMachineLib.roundAway (Real.sqrt (A166329 (2 * n + 1) : ℝ))).toNat

end

end A007797.P12897357502468828512

/-! ## A007797.P14265936359350193586

`A085307(or(A000035(n), A089581(n+1)))`
-/

namespace A007797.P14265936359350193586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085307 (Int.lor (A000035 n) (A089581 (n + 1))).toNat

end

end A007797.P14265936359350193586

/-!
# A007798: Expected number of random moves in Tower of Hanoi problem with n disks starting with a randomly chosen position and ending at a position with all disks on the same peg.

The programs for A007798, the canonical program `A007798.P3646928430632063612` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007798 has offset 0).

The definition of A007798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007798.P13710066401888288771

`(1-2*3^n+5^n)/4`
-/

namespace A007798.P13710066401888288771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (2 * 3 ^ n : ℤ) + (5 ^ n : ℤ) : ℚ) / 4

end

end A007798.P13710066401888288771

namespace A007798

/-- `(1-2*3^n+5^n)/4` -/
def P13710066401888288771.Spec : Prop :=
  ∀ n, P13710066401888288771.a n = (A007798 n : ℚ)

theorem P13710066401888288771.correct : P13710066401888288771.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A007798, Nat.add_sub_cancel, A007798.P13710066401888288771.a, A007798.P3646928430632063612.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A007798, Nat.add_sub_cancel, A007798.P13710066401888288771.a, A007798.P3646928430632063612.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007798

/-! ## A007798.P3646928430632063612

`8*a(n-1)-15*a(n-2)+2` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007798

/-- `8*a(n-1)-15*a(n-2)+2` -/
def P3646928430632063612.Spec : Prop :=
  ∀ n, P3646928430632063612.a n = A007798 n

theorem P3646928430632063612.correct : P3646928430632063612.Spec := by
  intro n
  simp only [A007798]

end A007798

/-! ## A007798.P15282499570355608027

`3^(n-1)+5*a(n-1)-1` with `a(0)=0`
-/

namespace A007798.P15282499570355608027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 5 * a (n - 1) - 1

end

end A007798.P15282499570355608027

namespace A007798

/-- `3^(n-1)+5*a(n-1)-1` -/
def P15282499570355608027.Spec : Prop :=
  ∀ n, P15282499570355608027.a n = (A007798 n : ℚ)

end A007798

/-! ## A007798.P17865228840152120021

`xor(1, 5^n)/4-∑[floor(3^(n-1))]`
-/

namespace A007798.P17865228840152120021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (5 ^ n) : ℚ) / 4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A007798.P17865228840152120021

namespace A007798

/-- `xor(1, 5^n)/4-∑[floor(3^(n-1))]` -/
def P17865228840152120021.Spec : Prop :=
  ∀ n, P17865228840152120021.a n = (A007798 n : ℚ)

end A007798

/-! ## A007798.P4844558250842321677

`and(-2, 5^n)/4-∑[floor(3^(n-1))]`
-/

namespace A007798.P4844558250842321677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (5 ^ n : ℤ) : ℚ) / 4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A007798.P4844558250842321677

namespace A007798

/-- `and(-2, 5^n)/4-∑[floor(3^(n-1))]` -/
def P4844558250842321677.Spec : Prop :=
  ∀ n, P4844558250842321677.a n = (A007798 n : ℚ)

end A007798

/-! ## A007798.P8933930008291190575

`round(or(1, 5^n)/4)-∑[floor(3^(n-1))]`
-/

namespace A007798.P8933930008291190575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (5 ^ n) : ℚ) / 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007798.P8933930008291190575

namespace A007798

/-- `round(or(1, 5^n)/4)-∑[floor(3^(n-1))]` -/
def P8933930008291190575.Spec : Prop :=
  ∀ n, P8933930008291190575.a n = A007798 n

end A007798

/-! ## A007798.P1445121608061368978

`A003463(n)-∑[floor(3^(n-1))]`
-/

namespace A007798.P1445121608061368978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007798.P1445121608061368978

namespace A007798

/-- `A003463(n)-∑[floor(3^(n-1))]` -/
def P1445121608061368978.Spec : Prop :=
  ∀ n, P1445121608061368978.a n = A007798 n

end A007798

/-! ## A007798.P13193784163667294269

`∑[round(5^(n-1))]-A003462(n)`
-/

namespace A007798.P13193784163667294269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003462 n

end

end A007798.P13193784163667294269

namespace A007798

/-- `∑[round(5^(n-1))]-A003462(n)` -/
def P13193784163667294269.Spec : Prop :=
  ∀ n, P13193784163667294269.a n = A007798 n

end A007798

/-! ## A007798.P12968491683526153930

`round((5^n+2)/4)-abs(A341463(n))`
-/

namespace A007798.P12968491683526153930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ n + 2 : ℚ) / 4) - |A341463 n|

end

end A007798.P12968491683526153930

namespace A007798

/-- `round((5^n+2)/4)-abs(A341463(n))` -/
def P12968491683526153930.Spec : Prop :=
  ∀ n, P12968491683526153930.a n = A007798 n

end A007798

/-! ## A007798.P6148449329632233210

`round((5^n+2)/4)-∑[A133494(n)]`
-/

namespace A007798.P6148449329632233210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ n + 2 : ℚ) / 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007798.P6148449329632233210

namespace A007798

/-- `round((5^n+2)/4)-∑[A133494(n)]` -/
def P6148449329632233210.Spec : Prop :=
  ∀ n, P6148449329632233210.a n = A007798 n

end A007798

/-! ## A007798.P7484925840704277567

`round((5^n+2)/4)+1-A115098(n)`
-/

namespace A007798.P7484925840704277567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ n + 2 : ℚ) / 4) + 1 - A115098 n

end

end A007798.P7484925840704277567

namespace A007798

/-- `round((5^n+2)/4)+1-A115098(n)` -/
def P7484925840704277567.Spec : Prop :=
  ∀ n, P7484925840704277567.a n = A007798 n

end A007798

/-! ## A007798.P665626699616074912

`round((5^n+2)/4)-(A233656(n)-n)`
-/

namespace A007798.P665626699616074912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ n + 2 : ℚ) / 4) - (A233656 n - (n : ℤ))

end

end A007798.P665626699616074912

namespace A007798

/-- `round((5^n+2)/4)-(A233656(n)-n)` -/
def P665626699616074912.Spec : Prop :=
  ∀ n, P665626699616074912.a n = A007798 n

end A007798

/-! ## A007798.P18253374429900321901

`A005059(n)-A003463(n)`
-/

namespace A007798.P18253374429900321901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 n - A003463 n

end

end A007798.P18253374429900321901

namespace A007798

/-- `A005059(n)-A003463(n)` -/
def P18253374429900321901.Spec : Prop :=
  ∀ n, P18253374429900321901.a n = A007798 n

end A007798

/-! ## A007798.P11369350714395311664

`A047850(n)-A007051(n)`
-/

namespace A007798.P11369350714395311664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n - A007051 n

end

end A007798.P11369350714395311664

namespace A007798

/-- `A047850(n)-A007051(n)` -/
def P11369350714395311664.Spec : Prop :=
  ∀ n, P11369350714395311664.a n = A007798 n

end A007798

/-! ## A007798.P17115197094668561890

`∑[A005058(log2(A011782(n)))]`
-/

namespace A007798.P17115197094668561890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005058 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007798.P17115197094668561890

namespace A007798

/-- `∑[A005058(log2(A011782(n)))]` -/
def P17115197094668561890.Spec : Prop :=
  ∀ n, P17115197094668561890.a n = A007798 n

end A007798

/-! ## A007798.P196012950684825225

`abs(A003462(n)-A003463(n))`
-/

namespace A007798.P196012950684825225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003462 n - A003463 n|

end

end A007798.P196012950684825225

namespace A007798

/-- `abs(A003462(n)-A003463(n))` -/
def P196012950684825225.Spec : Prop :=
  ∀ n, P196012950684825225.a n = A007798 n

end A007798

/-! ## A007798.P16779037662213003354

`A005058(n)/2-A003463(n)`
-/

namespace A007798.P16779037662213003354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005058 n : ℚ) / 2 - (A003463 n : ℚ)

end

end A007798.P16779037662213003354

namespace A007798

/-- `A005058(n)/2-A003463(n)` -/
def P16779037662213003354.Spec : Prop :=
  ∀ n, P16779037662213003354.a n = (A007798 n : ℚ)

end A007798

/-! ## A007798.P14515508888834056712

`A132079(n)/2-A007051(n)`
-/

namespace A007798.P14515508888834056712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132079 n : ℚ) / 2 - (A007051 n : ℚ)

end

end A007798.P14515508888834056712

namespace A007798

/-- `A132079(n)/2-A007051(n)` -/
def P14515508888834056712.Spec : Prop :=
  ∀ n, P14515508888834056712.a n = (A007798 n : ℚ)

end A007798

/-! ## A007798.P9728993921014441217

`A047850(n)+A094374(n)-Δ[A094374(n)]`
-/

namespace A007798.P9728993921014441217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n + (A094374 n - (f1 (n + 1) - f1 n))

end

end A007798.P9728993921014441217

namespace A007798

/-- `A047850(n)+A094374(n)-Δ[A094374(n)]` -/
def P9728993921014441217.Spec : Prop :=
  ∀ n, P9728993921014441217.a n = A007798 n

end A007798

/-! ## A007798.P5654093118780242595

`∑[A005058(n)]-A005058(n)`
-/

namespace A007798.P5654093118780242595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005058 n

end

end A007798.P5654093118780242595

namespace A007798

/-- `∑[A005058(n)]-A005058(n)` -/
def P5654093118780242595.Spec : Prop :=
  ∀ n, P5654093118780242595.a n = A007798 n

end A007798

