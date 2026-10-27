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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A068900: Digit reversal of n = 11 times digit reversal of n/11.

The programs for A068900, there is no canonical definition to state claims against.
-/

/-! ## A068900.P9452757669345580784

`record[A004151(record[A059632(n+1)])]`
-/

namespace A068900.P9452757669345580784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059632 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068900.P9452757669345580784

/-! ## A068900.P10940774025669968278

`record[A004719(record[A059632(n+1)])]`
-/

namespace A068900.P10940774025669968278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059632 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068900.P10940774025669968278

/-! ## A068900.P2027854278628996122

`∩[A280149(n+1), A308237(n+1)]`
-/

namespace A068900.P2027854278628996122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068900.P2027854278628996122

/-! ## A068900.P18180295291871915392

`∩[A308237(n+1), A374365(n+1)]`
-/

namespace A068900.P18180295291871915392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068900.P18180295291871915392

/-! ## A068900.P13946782695951354661

`eq[A067159(n), A173245(n)]`
-/

namespace A068900.P13946782695951354661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067159 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068900.P13946782695951354661

/-!
# A068901: Least number that when added to the n-th prime gives a multiple of n.

The programs for A068901, the canonical program `A068901.P8285558021144733875` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068901 has offset 1).

The definition of A068901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068901.P8285558021144733875

`A068902(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068901

/-- `A068902(n+1)-A000040(n+1)` -/
def P8285558021144733875.Spec : Prop :=
  ∀ n, P8285558021144733875.a n = A068901 (n + 1)

theorem P8285558021144733875.correct : P8285558021144733875.Spec := by
  intro n
  simp only [A068901, Nat.add_sub_cancel]

end A068901

/-! ## A068901.P14633773127575240148

`n-A087611(n+1)`
-/

namespace A068901.P14633773127575240148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A087611 (n + 1)

end

end A068901.P14633773127575240148

namespace A068901

/-- `n-A087611(n+1)` -/
def P14633773127575240148.Spec : Prop :=
  ∀ n, P14633773127575240148.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P13359009332305879234

`A065521(n+1)%(n+1)`
-/

namespace A068901.P13359009332305879234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065521 (n + 1)) (n + 1 : ℤ)

end

end A068901.P13359009332305879234

namespace A068901

/-- `A065521(n+1)%(n+1)` -/
def P13359009332305879234.Spec : Prop :=
  ∀ n, P13359009332305879234.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P7552221521854628894

`A073497(n+1)%(n+1)`
-/

namespace A068901.P7552221521854628894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073497 (n + 1)) (n + 1 : ℤ)

end

end A068901.P7552221521854628894

namespace A068901

/-- `A073497(n+1)%(n+1)` -/
def P7552221521854628894.Spec : Prop :=
  ∀ n, P7552221521854628894.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P9145781891349046115

`A117495(n+1)%(n+1)`
-/

namespace A068901.P9145781891349046115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117495 (n + 1)) (n + 1 : ℤ)

end

end A068901.P9145781891349046115

namespace A068901

/-- `A117495(n+1)%(n+1)` -/
def P9145781891349046115.Spec : Prop :=
  ∀ n, P9145781891349046115.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P2776935462996434771

`A230285(n+1)%(n+1)`
-/

namespace A068901.P2776935462996434771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230285 (n + 1)) (n + 1 : ℤ)

end

end A068901.P2776935462996434771

namespace A068901

/-- `A230285(n+1)%(n+1)` -/
def P2776935462996434771.Spec : Prop :=
  ∀ n, P2776935462996434771.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P749549004163306268

`A245071(n+1)%(n+1)`
-/

namespace A068901.P749549004163306268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245071 (n + 1)) (n + 1 : ℤ)

end

end A068901.P749549004163306268

namespace A068901

/-- `A245071(n+1)%(n+1)` -/
def P749549004163306268.Spec : Prop :=
  ∀ n, P749549004163306268.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P6239113895421310841

`A294639(n+1)%(n+1)`
-/

namespace A068901.P6239113895421310841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294639 (n + 1)) (n + 1 : ℤ)

end

end A068901.P6239113895421310841

namespace A068901

/-- `A294639(n+1)%(n+1)` -/
def P6239113895421310841.Spec : Prop :=
  ∀ n, P6239113895421310841.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P5956217116778023991

`1-A028310(A004648(n+1))+n`
-/

namespace A068901.P5956217116778023991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A028310 (A004648 (n + 1)).toNat + (n : ℤ)

end

end A068901.P5956217116778023991

namespace A068901

/-- `1-A028310(A004648(n+1))+n` -/
def P5956217116778023991.Spec : Prop :=
  ∀ n, P5956217116778023991.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P11870913723487994244

`A076079(n+1)-A014689(n+1)`
-/

namespace A068901.P11870913723487994244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076079 (n + 1) - A014689 (n + 1)

end

end A068901.P11870913723487994244

namespace A068901

/-- `A076079(n+1)-A014689(n+1)` -/
def P11870913723487994244.Spec : Prop :=
  ∀ n, P11870913723487994244.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P10122277414130189960

`A087156(n+1)-A004648(n+1)`
-/

namespace A068901.P10122277414130189960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) - A004648 (n + 1)

end

end A068901.P10122277414130189960

namespace A068901

/-- `A087156(n+1)-A004648(n+1)` -/
def P10122277414130189960.Spec : Prop :=
  ∀ n, P10122277414130189960.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P5747812056495150168

`n-(A057428(n)+A004648(n+1))`
-/

namespace A068901.P5747812056495150168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A057428 n + A004648 (n + 1))

end

end A068901.P5747812056495150168

namespace A068901

/-- `n-(A057428(n)+A004648(n+1))` -/
def P5747812056495150168.Spec : Prop :=
  ∀ n, P5747812056495150168.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P7432725096027742711

`A057427(n)-A004648(n+1)+n`
-/

namespace A068901.P7432725096027742711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A004648 (n + 1) + (n : ℤ)

end

end A068901.P7432725096027742711

namespace A068901

/-- `A057427(n)-A004648(n+1)+n` -/
def P7432725096027742711.Spec : Prop :=
  ∀ n, P7432725096027742711.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P15807225995039937480

`A057428(n)*A087611(n+1)+n`
-/

namespace A068901.P15807225995039937480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A087611 (n + 1) + (n : ℤ)

end

end A068901.P15807225995039937480

namespace A068901

/-- `A057428(n)*A087611(n+1)+n` -/
def P15807225995039937480.Spec : Prop :=
  ∀ n, P15807225995039937480.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P15995759732500182208

`A076079(n+1)-A006093(n+1)+n`
-/

namespace A068901.P15995759732500182208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076079 (n + 1) - A006093 (n + 1) + (n : ℤ)

end

end A068901.P15995759732500182208

namespace A068901

/-- `A076079(n+1)-A006093(n+1)+n` -/
def P15995759732500182208.Spec : Prop :=
  ∀ n, P15995759732500182208.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P1248240185858355958

`A068902(n+1)-A095116(n+1)+n`
-/

namespace A068901.P1248240185858355958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (n + 1) - A095116 (n + 1) + (n : ℤ)

end

end A068901.P1248240185858355958

namespace A068901

/-- `A068902(n+1)-A095116(n+1)+n` -/
def P1248240185858355958.Spec : Prop :=
  ∀ n, P1248240185858355958.a n = A068901 (n + 1)

theorem P1248240185858355958.correct : P1248240185858355958.Spec := by
  intro n
  simp only [A068901, Nat.add_sub_cancel, A068901.P1248240185858355958.a, A068901.P8285558021144733875.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A068902, A068902.P18143666427131392185.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068901

/-! ## A068901.P5723452044289909892

`A090973(n+1)-A075765(n+1)+n`
-/

namespace A068901.P5723452044289909892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090973 (n + 1) - A075765 (n + 1) + (n : ℤ)

end

end A068901.P5723452044289909892

namespace A068901

/-- `A090973(n+1)-A075765(n+1)+n` -/
def P5723452044289909892.Spec : Prop :=
  ∀ n, P5723452044289909892.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P8174992072544707797

`n-record[A000010(n+1)]%(n+1)`
-/

namespace A068901.P8174992072544707797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A068901.P8174992072544707797

namespace A068901

/-- `n-record[A000010(n+1)]%(n+1)` -/
def P8174992072544707797.Spec : Prop :=
  ∀ n, P8174992072544707797.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P3597944035159268516

`(n*record[A006530(n+2)])%(n+1)`
-/

namespace A068901.P3597944035159268516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A068901.P3597944035159268516

namespace A068901

/-- `(n*record[A006530(n+2)])%(n+1)` -/
def P3597944035159268516.Spec : Prop :=
  ∀ n, P3597944035159268516.a n = A068901 (n + 1)

end A068901

/-! ## A068901.P12339204549328994845

`n-A073438(A000040(n+1))`
-/

namespace A068901.P12339204549328994845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A073438 (A000040 (n + 1)).toNat

end

end A068901.P12339204549328994845

namespace A068901

/-- `n-A073438(A000040(n+1))` -/
def P12339204549328994845.Spec : Prop :=
  ∀ n, P12339204549328994845.a n = A068901 (n + 1)

end A068901

/-!
# A068902: Least multiple of n not less than the n-th prime.

The programs for A068902, the canonical program `A068902.P18143666427131392185` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068902 has offset 1).

The definition of A068902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068902.P18143666427131392185

`(n+1)*ceil(A000040(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068902

/-- `(n+1)*ceil(A000040(n+1)/(n+1))` -/
def P18143666427131392185.Spec : Prop :=
  ∀ n, P18143666427131392185.a n = A068902 (n + 1)

theorem P18143666427131392185.correct : P18143666427131392185.Spec := by
  intro n
  simp only [A068902, Nat.add_sub_cancel]

end A068902

/-! ## A068902.P5961941588359506973

`A000040(n+1)+A068901(n+1)`
-/

namespace A068902.P5961941588359506973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A068901 (n + 1)

end

end A068902.P5961941588359506973

namespace A068902

/-- `A000040(n+1)+A068901(n+1)` -/
def P5961941588359506973.Spec : Prop :=
  ∀ n, P5961941588359506973.a n = A068902 (n + 1)

theorem P5961941588359506973.correct : P5961941588359506973.Spec := by
  intro n
  simp only [A068902, Nat.add_sub_cancel, A068902.P5961941588359506973.a, A068902.P18143666427131392185.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A068901, A068901.P8285558021144733875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068902

/-! ## A068902.P11909811108938340637

`A076079(n+1)+1+n`
-/

namespace A068902.P11909811108938340637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076079 (n + 1) + 1 + (n : ℤ)

end

end A068902.P11909811108938340637

namespace A068902

/-- `A076079(n+1)+1+n` -/
def P11909811108938340637.Spec : Prop :=
  ∀ n, P11909811108938340637.a n = A068902 (n + 1)

end A068902

/-! ## A068902.P6130036629481280057

`(n+1)*A090973(n+1)`
-/

namespace A068902.P6130036629481280057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A090973 (n + 1)

end

end A068902.P6130036629481280057

namespace A068902

/-- `(n+1)*A090973(n+1)` -/
def P6130036629481280057.Spec : Prop :=
  ∀ n, P6130036629481280057.a n = A068902 (n + 1)

end A068902

/-! ## A068902.P9280415203976123885

`(n+1)*(A076080(n+1)+1)`
-/

namespace A068902.P9280415203976123885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A076080 (n + 1) + 1)

end

end A068902.P9280415203976123885

namespace A068902

/-- `(n+1)*(A076080(n+1)+1)` -/
def P9280415203976123885.Spec : Prop :=
  ∀ n, P9280415203976123885.a n = A068902 (n + 1)

end A068902

/-! ## A068902.P11880440094285507653

`A095116(n+1)-A087611(n+1)`
-/

namespace A068902.P11880440094285507653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - A087611 (n + 1)

end

end A068902.P11880440094285507653

namespace A068902

/-- `A095116(n+1)-A087611(n+1)` -/
def P11880440094285507653.Spec : Prop :=
  ∀ n, P11880440094285507653.a n = A068902 (n + 1)

end A068902

/-! ## A068902.P2021566914749177177

`(n+1)*A014430(A079415(n+1))`
-/

namespace A068902.P2021566914749177177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014430 (A079415 (n + 1)).toNat

end

end A068902.P2021566914749177177

namespace A068902

/-- `(n+1)*A014430(A079415(n+1))` -/
def P2021566914749177177.Spec : Prop :=
  ∀ n, P2021566914749177177.a n = A068902 (n + 1)

end A068902

/-! ## A068902.P6467915119368331551

`A000040(n+1)-A087611(n+1)+n`
-/

namespace A068902.P6467915119368331551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A087611 (n + 1) + (n : ℤ)

end

end A068902.P6467915119368331551

namespace A068902

/-- `A000040(n+1)-A087611(n+1)+n` -/
def P6467915119368331551.Spec : Prop :=
  ∀ n, P6467915119368331551.a n = A068902 (n + 1)

end A068902

/-! ## A068902.P14303183966404063235

`(n+1)*floor(record[A000010(n+1)]/(n+1))+1+n`
-/

namespace A068902.P14303183966404063235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋ + 1 + (n : ℤ)

end

end A068902.P14303183966404063235

namespace A068902

/-- `(n+1)*floor(record[A000010(n+1)]/(n+1))+1+n` -/
def P14303183966404063235.Spec : Prop :=
  ∀ n, P14303183966404063235.a n = A068902 (n + 1)

end A068902

/-! ## A068902.P7215470150784678457

`(n+1)*ceil(p?[comp[n²]]/(n+1))`
-/

namespace A068902.P7215470150784678457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / (n + 1 : ℚ)⌉

end

end A068902.P7215470150784678457

namespace A068902

/-- `(n+1)*ceil(p?[comp[n²]]/(n+1))` -/
def P7215470150784678457.Spec : Prop :=
  ∀ n, P7215470150784678457.a n = A068902 (n + 1)

end A068902

/-! ## A068902.P9355193059723691556

`A068901(n+1)+p?[A068938(n+1)]`
-/

namespace A068902.P9355193059723691556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068901 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068902.P9355193059723691556

namespace A068902

/-- `A068901(n+1)+p?[A068938(n+1)]` -/
def P9355193059723691556.Spec : Prop :=
  ∀ n, P9355193059723691556.a n = A068902 (n + 1)

end A068902

/-! ## A068902.P13500928017449581666

`A068901(n+1)+p?[A068937(n+1)]`
-/

namespace A068902.P13500928017449581666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068901 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068902.P13500928017449581666

namespace A068902

/-- `A068901(n+1)+p?[A068937(n+1)]` -/
def P13500928017449581666.Spec : Prop :=
  ∀ n, P13500928017449581666.a n = A068902 (n + 1)

end A068902

/-!
# A068903: Binomial(tau(n),omega(n)), where tau(n) is the number of divisors of n (A000005) and omega the number of distinct prime factors (A001221).

The programs for A068903, the canonical program `A068903.P12295161243239988693` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068903 has offset 1).

The definition of A068903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000005(n+1), A001221(n+1))` (program `A068903.P12295161243239988693`, by `A068903.P12295161243239988693.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068903.P12295161243239988693

`C(A000005(n+1), A001221(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068903

/-- `C(A000005(n+1), A001221(n+1))` -/
def P12295161243239988693.Spec : Prop :=
  ∀ n, (P12295161243239988693.a n : ℤ) = A068903 (n + 1)

theorem P12295161243239988693.correct : P12295161243239988693.Spec := by
  intro n
  simp only [A068903, Nat.add_sub_cancel]

end A068903

/-! ## A068903.P3578390889667298736

`C(Δ[A006218(n)], A001221(n+1))`
-/

namespace A068903.P3578390889667298736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A001221 (n + 1)).toNat

end

end A068903.P3578390889667298736

namespace A068903

/-- `C(Δ[A006218(n)], A001221(n+1))` -/
def P3578390889667298736.Spec : Prop :=
  ∀ n, (P3578390889667298736.a n : ℤ) = A068903 (n + 1)

end A068903

/-! ## A068903.P15924096143355621496

`C(Δ[A054519(n)], A001221(n+1))`
-/

namespace A068903.P15924096143355621496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A001221 (n + 1)).toNat

end

end A068903.P15924096143355621496

namespace A068903

/-- `C(Δ[A054519(n)], A001221(n+1))` -/
def P15924096143355621496.Spec : Prop :=
  ∀ n, (P15924096143355621496.a n : ℤ) = A068903 (n + 1)

end A068903

/-! ## A068903.P5402715620214116187

`C(A000005(n+1), A033273(n+1))`
-/

namespace A068903.P5402715620214116187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat (A033273 (n + 1)).toNat

end

end A068903.P5402715620214116187

namespace A068903

/-- `C(A000005(n+1), A033273(n+1))` -/
def P5402715620214116187.Spec : Prop :=
  ∀ n, (P5402715620214116187.a n : ℤ) = A068903 (n + 1)

end A068903

/-! ## A068903.P615440799785631461

`C(A070824(n+1)+2, A001221(n+1))`
-/

namespace A068903.P615440799785631461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070824 (n + 1) + 2).toNat (A001221 (n + 1)).toNat

end

end A068903.P615440799785631461

namespace A068903

/-- `C(A070824(n+1)+2, A001221(n+1))` -/
def P615440799785631461.Spec : Prop :=
  ∀ n, (P615440799785631461.a n : ℤ) = A068903 (n + 1)

end A068903

/-! ## A068903.P11542813188731149756

`C(A000005(n+1), ∑{p}[n+1, A001222(#)])`
-/

namespace A068903.P11542813188731149756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat

end

end A068903.P11542813188731149756

namespace A068903

/-- `C(A000005(n+1), ∑{p}[n+1, A001222(#)])` -/
def P11542813188731149756.Spec : Prop :=
  ∀ n, (P11542813188731149756.a n : ℤ) = A068903 (n + 1)

end A068903

/-! ## A068903.P7766986332278684181

`C(A000005(n+1), A001222(∏{p}[n+1, #]))`
-/

namespace A068903.P7766986332278684181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A068903.P7766986332278684181

namespace A068903

/-- `C(A000005(n+1), A001222(∏{p}[n+1, #]))` -/
def P7766986332278684181.Spec : Prop :=
  ∀ n, (P7766986332278684181.a n : ℤ) = A068903 (n + 1)

end A068903

/-! ## A068903.P12121172170169886838

`C(A038040(n+1)/(n+1), A001221(n+1))`
-/

namespace A068903.P12121172170169886838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat (A001221 (n + 1)).toNat

end

end A068903.P12121172170169886838

namespace A068903

/-- `C(A038040(n+1)/(n+1), A001221(n+1))` -/
def P12121172170169886838.Spec : Prop :=
  ∀ n, (P12121172170169886838.a n : ℤ) = A068903 (n + 1)

end A068903

/-! ## A068903.P2415059493286104129

`C(A038040(n+1)/(n+1), ∑{p}[n+1, A001222(#)])`
-/

namespace A068903.P2415059493286104129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat

end

end A068903.P2415059493286104129

namespace A068903

/-- `C(A038040(n+1)/(n+1), ∑{p}[n+1, A001222(#)])` -/
def P2415059493286104129.Spec : Prop :=
  ∀ n, (P2415059493286104129.a n : ℤ) = A068903 (n + 1)

end A068903

/-! ## A068903.P17697695137989098892

`C(A038040(n+1)/(n+1), A001222(∏{p}[n+1, #]))`
-/

namespace A068903.P17697695137989098892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A068903.P17697695137989098892

namespace A068903

/-- `C(A038040(n+1)/(n+1), A001222(∏{p}[n+1, #]))` -/
def P17697695137989098892.Spec : Prop :=
  ∀ n, (P17697695137989098892.a n : ℤ) = A068903 (n + 1)

end A068903

/-! ## A068903.P15088841315440312356

`C(A000005(n+1), A106404(2*(n+1)))`
-/

namespace A068903.P15088841315440312356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat (A106404 (2 * (n + 1))).toNat

end

end A068903.P15088841315440312356

namespace A068903

/-- `C(A000005(n+1), A106404(2*(n+1)))` -/
def P15088841315440312356.Spec : Prop :=
  ∀ n, (P15088841315440312356.a n : ℤ) = A068903 (n + 1)

end A068903

/-! ## A068903.P5264195788255418456

`C(A000005(n+1), A087802(n+1))`
-/

namespace A068903.P5264195788255418456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat (A087802 (n + 1)).toNat

end

end A068903.P5264195788255418456

namespace A068903

/-- `C(A000005(n+1), A087802(n+1))` -/
def P5264195788255418456.Spec : Prop :=
  ∀ n, (P5264195788255418456.a n : ℤ) = A068903 (n + 1)

end A068903

/-!
# A068904: a(n) = binomial(sigma(n),tau(n)), where sigma(n) is the sum and tau(n) the number of divisors of n (A000203, A000005).

The programs for A068904, the canonical program `A068904.P11299921973537422911` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068904 has offset 1).

The definition of A068904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000203(n+1), A000005(n+1))` (program `A068904.P11299921973537422911`, by `A068904.P11299921973537422911.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068904.P11299921973537422911

`C(A000203(n+1), A000005(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068904

/-- `C(A000203(n+1), A000005(n+1))` -/
def P11299921973537422911.Spec : Prop :=
  ∀ n, (P11299921973537422911.a n : ℤ) = A068904 (n + 1)

theorem P11299921973537422911.correct : P11299921973537422911.Spec := by
  intro n
  simp only [A068904, Nat.add_sub_cancel]

end A068904

/-! ## A068904.P2272714798214094916

`C(∑{d}[n+1, #], ∏{e}[n+1, #+1])`
-/

namespace A068904.P2272714798214094916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A068904.P2272714798214094916

namespace A068904

/-- `C(∑{d}[n+1, #], ∏{e}[n+1, #+1])` -/
def P2272714798214094916.Spec : Prop :=
  ∀ n, (P2272714798214094916.a n : ℤ) = A068904 (n + 1)

end A068904

/-! ## A068904.P9973056444162518342

`C(A000203(n+1), Δ[A006218(n)])`
-/

namespace A068904.P9973056444162518342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (f1 (n + 1) - f1 n).toNat

end

end A068904.P9973056444162518342

namespace A068904

/-- `C(A000203(n+1), Δ[A006218(n)])` -/
def P9973056444162518342.Spec : Prop :=
  ∀ n, (P9973056444162518342.a n : ℤ) = A068904 (n + 1)

end A068904

/-! ## A068904.P17738357204906733481

`C(A000203(n+1), A065608(n+1))`
-/

namespace A068904.P17738357204906733481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A065608 (n + 1)).toNat

end

end A068904.P17738357204906733481

namespace A068904

/-- `C(A000203(n+1), A065608(n+1))` -/
def P17738357204906733481.Spec : Prop :=
  ∀ n, (P17738357204906733481.a n : ℤ) = A068904 (n + 1)

end A068904

/-! ## A068904.P6407290722699590724

`C(A000203(n+1), A069157(2*(n+1)))`
-/

namespace A068904.P6407290722699590724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A069157 (2 * (n + 1))).toNat

end

end A068904.P6407290722699590724

namespace A068904

/-- `C(A000203(n+1), A069157(2*(n+1)))` -/
def P6407290722699590724.Spec : Prop :=
  ∀ n, (P6407290722699590724.a n : ℤ) = A068904 (n + 1)

end A068904

/-! ## A068904.P1332703927438157989

`C(A000203(n+1), A183063(2*(n+1)))`
-/

namespace A068904.P1332703927438157989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A183063 (2 * (n + 1))).toNat

end

end A068904.P1332703927438157989

namespace A068904

/-- `C(A000203(n+1), A183063(2*(n+1)))` -/
def P1332703927438157989.Spec : Prop :=
  ∀ n, (P1332703927438157989.a n : ℤ) = A068904 (n + 1)

end A068904

/-! ## A068904.P5473461193436574548

`C(A245092(2*n+1), A000005(n+1))`
-/

namespace A068904.P5473461193436574548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245092 (2 * n + 1)).toNat (A000005 (n + 1)).toNat

end

end A068904.P5473461193436574548

namespace A068904

/-- `C(A245092(2*n+1), A000005(n+1))` -/
def P5473461193436574548.Spec : Prop :=
  ∀ n, (P5473461193436574548.a n : ℤ) = A068904 (n + 1)

end A068904

/-! ## A068904.P3383317143369711687

`C(A155085(n+1)-(n+1), A000005(n+1))`
-/

namespace A068904.P3383317143369711687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A155085 (n + 1) - (n + 1 : ℤ)).toNat (A000005 (n + 1)).toNat

end

end A068904.P3383317143369711687

namespace A068904

/-- `C(A155085(n+1)-(n+1), A000005(n+1))` -/
def P3383317143369711687.Spec : Prop :=
  ∀ n, (P3383317143369711687.a n : ℤ) = A068904 (n + 1)

theorem P3383317143369711687.correct : P3383317143369711687.Spec := by
  intro n
  simp only [A068904, Nat.add_sub_cancel, A068904.P3383317143369711687.a, A068904.P11299921973537422911.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068904

/-! ## A068904.P5500972858189177

`C(A000203(n+1), A038040(n+1)/(n+1))`
-/

namespace A068904.P5500972858189177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A068904.P5500972858189177

namespace A068904

/-- `C(A000203(n+1), A038040(n+1)/(n+1))` -/
def P5500972858189177.Spec : Prop :=
  ∀ n, (P5500972858189177.a n : ℤ) = A068904 (n + 1)

end A068904

/-! ## A068904.P8366650469249679253

`C(A064987(n+1)/(n+1), A000005(n+1))`
-/

namespace A068904.P8366650469249679253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat (A000005 (n + 1)).toNat

end

end A068904.P8366650469249679253

namespace A068904

/-- `C(A064987(n+1)/(n+1), A000005(n+1))` -/
def P8366650469249679253.Spec : Prop :=
  ∀ n, (P8366650469249679253.a n : ℤ) = A068904 (n + 1)

end A068904

/-! ## A068904.P3593438770481738134

`C(A245092(2*n+1), A038040(n+1)/(n+1))`
-/

namespace A068904.P3593438770481738134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245092 (2 * n + 1)).toNat (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A068904.P3593438770481738134

namespace A068904

/-- `C(A245092(2*n+1), A038040(n+1)/(n+1))` -/
def P3593438770481738134.Spec : Prop :=
  ∀ n, (P3593438770481738134.a n : ℤ) = A068904 (n + 1)

end A068904

/-! ## A068904.P14474238638452592883

`C(A064987(n+1)/(n+1), A038040(n+1)/(n+1))`
-/

namespace A068904.P14474238638452592883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A068904.P14474238638452592883

namespace A068904

/-- `C(A064987(n+1)/(n+1), A038040(n+1)/(n+1))` -/
def P14474238638452592883.Spec : Prop :=
  ∀ n, (P14474238638452592883.a n : ℤ) = A068904 (n + 1)

end A068904

/-! ## A068904.P10435224834304919071

`C(A245093(∑[n+1]), A000005(n+1))`
-/

namespace A068904.P10435224834304919071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245093 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat (A000005 (n + 1)).toNat

end

end A068904.P10435224834304919071

namespace A068904

/-- `C(A245093(∑[n+1]), A000005(n+1))` -/
def P10435224834304919071.Spec : Prop :=
  ∀ n, (P10435224834304919071.a n : ℤ) = A068904 (n + 1)

end A068904

/-!
# A068905: Binomial(sigma(n),omega(n)), where sigma(n) is the sum of divisors of n (A000203) and omega the number of distinct prime factors (A001221).

The programs for A068905, the canonical program `A068905.P12958930490436772461` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068905 has offset 1).

The definition of A068905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000203(n+1), A001221(n+1))` (program `A068905.P12958930490436772461`, by `A068905.P12958930490436772461.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068905.P12958930490436772461

`C(A000203(n+1), A001221(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068905

/-- `C(A000203(n+1), A001221(n+1))` -/
def P12958930490436772461.Spec : Prop :=
  ∀ n, (P12958930490436772461.a n : ℤ) = A068905 (n + 1)

theorem P12958930490436772461.correct : P12958930490436772461.Spec := by
  intro n
  simp only [A068905, Nat.add_sub_cancel]

end A068905

/-! ## A068905.P7155855156335079190

`C(∑{d}[n+1, #], ∑{p}[n+1, gcd(n, #)])`
-/

namespace A068905.P7155855156335079190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p)

end

end A068905.P7155855156335079190

namespace A068905

/-- `C(∑{d}[n+1, #], ∑{p}[n+1, gcd(n, #)])` -/
def P7155855156335079190.Spec : Prop :=
  ∀ n, (P7155855156335079190.a n : ℤ) = A068905 (n + 1)

end A068905

/-! ## A068905.P18340933904803358104

`C(∑{d}[n+1, #], ∑{e}[∏{p}[n+1, #], #])`
-/

namespace A068905.P18340933904803358104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A068905.P18340933904803358104

namespace A068905

/-- `C(∑{d}[n+1, #], ∑{e}[∏{p}[n+1, #], #])` -/
def P18340933904803358104.Spec : Prop :=
  ∀ n, (P18340933904803358104.a n : ℤ) = A068905 (n + 1)

end A068905

/-! ## A068905.P16312576567203186981

`C(∑{d}[n+1, #], ∑{p}[n+1, #]-∑{p}[n+1, #-1])`
-/

namespace A068905.P16312576567203186981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - ∑ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)).toNat

end

end A068905.P16312576567203186981

namespace A068905

/-- `C(∑{d}[n+1, #], ∑{p}[n+1, #]-∑{p}[n+1, #-1])` -/
def P16312576567203186981.Spec : Prop :=
  ∀ n, (P16312576567203186981.a n : ℤ) = A068905 (n + 1)

end A068905

/-! ## A068905.P12125737119398606408

`C(∑{d}[n+1, #], ∑{p}[n+1, A001222(#)])`
-/

namespace A068905.P12125737119398606408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (∑ p ∈ Nat.primeFactors (f2 n), A001222 p).toNat

end

end A068905.P12125737119398606408

namespace A068905

/-- `C(∑{d}[n+1, #], ∑{p}[n+1, A001222(#)])` -/
def P12125737119398606408.Spec : Prop :=
  ∀ n, (P12125737119398606408.a n : ℤ) = A068905 (n + 1)

end A068905

/-! ## A068905.P17485774394215902864

`C(∑{d}[n+1, #], A008472(n+1)-∑{p}[n+1, #-1])`
-/

namespace A068905.P17485774394215902864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (A008472 (n + 1) - ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)).toNat

end

end A068905.P17485774394215902864

namespace A068905

/-- `C(∑{d}[n+1, #], A008472(n+1)-∑{p}[n+1, #-1])` -/
def P17485774394215902864.Spec : Prop :=
  ∀ n, (P17485774394215902864.a n : ℤ) = A068905 (n + 1)

end A068905

/-! ## A068905.P17301728775597758912

`C(A088580(n+1)-1, A001221(n+1))`
-/

namespace A068905.P17301728775597758912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A088580 (n + 1) - 1).toNat (A001221 (n + 1)).toNat

end

end A068905.P17301728775597758912

namespace A068905

/-- `C(A088580(n+1)-1, A001221(n+1))` -/
def P17301728775597758912.Spec : Prop :=
  ∀ n, (P17301728775597758912.a n : ℤ) = A068905 (n + 1)

theorem P17301728775597758912.correct : P17301728775597758912.Spec := by
  intro n
  simp only [A068905, Nat.add_sub_cancel, A068905.P17301728775597758912.a, A068905.P12958930490436772461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068905

/-! ## A068905.P12309889266235686174

`C(∑{d}[n+1, #], A001222(A007947(n+1)))`
-/

namespace A068905.P12309889266235686174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (A001222 (A007947 (n + 1)).toNat).toNat

end

end A068905.P12309889266235686174

namespace A068905

/-- `C(∑{d}[n+1, #], A001222(A007947(n+1)))` -/
def P12309889266235686174.Spec : Prop :=
  ∀ n, (P12309889266235686174.a n : ℤ) = A068905 (n + 1)

end A068905

/-! ## A068905.P10704870273228048568

`C(∑{d}[n+1, #], A001222(A034444(n+1)))`
-/

namespace A068905.P10704870273228048568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (A001222 (A034444 (n + 1)).toNat).toNat

end

end A068905.P10704870273228048568

namespace A068905

/-- `C(∑{d}[n+1, #], A001222(A034444(n+1)))` -/
def P10704870273228048568.Spec : Prop :=
  ∀ n, (P10704870273228048568.a n : ℤ) = A068905 (n + 1)

end A068905

/-! ## A068905.P8070752698707605297

`C(A000203(n+1), A001222(∏{p}[n+1, #]))`
-/

namespace A068905.P8070752698707605297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A068905.P8070752698707605297

namespace A068905

/-- `C(A000203(n+1), A001222(∏{p}[n+1, #]))` -/
def P8070752698707605297.Spec : Prop :=
  ∀ n, (P8070752698707605297.a n : ℤ) = A068905 (n + 1)

end A068905

/-! ## A068905.P1959490795741071141

`C(A155085(n+1)-(n+1), A001222(A007947(n+1)))`
-/

namespace A068905.P1959490795741071141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A155085 (n + 1) - (n + 1 : ℤ)).toNat (A001222 (A007947 (n + 1)).toNat).toNat

end

end A068905.P1959490795741071141

namespace A068905

/-- `C(A155085(n+1)-(n+1), A001222(A007947(n+1)))` -/
def P1959490795741071141.Spec : Prop :=
  ∀ n, (P1959490795741071141.a n : ℤ) = A068905 (n + 1)

end A068905

/-! ## A068905.P11949092302443096387

`C(A064987(n+1)/(n+1), A001222(A007947(n+1)))`
-/

namespace A068905.P11949092302443096387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat (A001222 (A007947 (n + 1)).toNat).toNat

end

end A068905.P11949092302443096387

namespace A068905

/-- `C(A064987(n+1)/(n+1), A001222(A007947(n+1)))` -/
def P11949092302443096387.Spec : Prop :=
  ∀ n, (P11949092302443096387.a n : ℤ) = A068905 (n + 1)

end A068905

/-!
# A068906: Square array read by ascending antidiagonals of partitions of k modulo n.

The programs for A068906, there is no canonical definition to state claims against.
-/

/-! ## A068906.P16376108706354214041

`A000041(A193592(n))%A002260(n+1)`
-/

namespace A068906.P16376108706354214041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A193592 n).toNat) (A002260 (n + 1))

end

end A068906.P16376108706354214041

/-! ## A068906.P3012458660959488318

`A000041(A193739(n))%A002260(n+1)`
-/

namespace A068906.P3012458660959488318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A193739 n).toNat) (A002260 (n + 1))

end

end A068906.P3012458660959488318

/-! ## A068906.P10301316583872148761

`A000041(A004736(n+1))%A002260(n+1)`
-/

namespace A068906.P10301316583872148761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A004736 (n + 1)).toNat) (A002260 (n + 1))

end

end A068906.P10301316583872148761

/-! ## A068906.P6369236270188690700

`A000041(A025581(n)+1)%A002260(n+1)`
-/

namespace A068906.P6369236270188690700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A025581 n + 1).toNat) (A002260 (n + 1))

end

end A068906.P6369236270188690700

/-! ## A068906.P3752029561277462880

`A027293(A000007(n)+n)%A002260(n+1)`
-/

namespace A068906.P3752029561277462880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027293 (A000007 n + (n : ℤ)).toNat) (A002260 (n + 1))

end

end A068906.P3752029561277462880

/-! ## A068906.P7836198425497276162

`A000041(sqrt(A055461(n+1)))%A002260(n+1)`
-/

namespace A068906.P7836198425497276162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat) (A002260 (n + 1))

end

end A068906.P7836198425497276162

/-! ## A068906.P16152728466149294437

`A000041(log2(A090988(n+1)))%A002260(n+1)`
-/

namespace A068906.P16152728466149294437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat) (A002260 (n + 1))

end

end A068906.P16152728466149294437

/-! ## A068906.P18343848234055107940

`A000041(log2(A130321(n))+1)%A002260(n+1)`
-/

namespace A068906.P18343848234055107940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ) + 1)).toNat) (A002260 (n + 1))

end

end A068906.P18343848234055107940

/-! ## A068906.P12454165066491646792

`A000041(log2(A130330(n)+1))%A002260(n+1)`
-/

namespace A068906.P12454165066491646792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A130330 n + 1 : ℝ))).toNat) (A002260 (n + 1))

end

end A068906.P12454165066491646792

/-! ## A068906.P14292920460614505870

`A000041(A127739(n+1)-n)%A002260(n+1)`
-/

namespace A068906.P14292920460614505870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A127739 (n + 1) - (n : ℤ)).toNat) (A002260 (n + 1))

end

end A068906.P14292920460614505870

/-! ## A068906.P15883708994249687181

`A000041(A057554(2*(n+1))+1)%A002260(n+1)`
-/

namespace A068906.P15883708994249687181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A057554 (2 * (n + 1)) + 1).toNat) (A002260 (n + 1))

end

end A068906.P15883708994249687181

/-! ## A068906.P12842927115683766909

`A000041(A002024(n+1)-A002262(n))%A002260(n+1)`
-/

namespace A068906.P12842927115683766909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A002024 (n + 1) - A002262 n).toNat) (A002260 (n + 1))

end

end A068906.P12842927115683766909

/-! ## A068906.P13325867904017662491

`A140207(A038722(n+1))%A002260(n+1)`
-/

namespace A068906.P13325867904017662491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140207 (A038722 (n + 1)).toNat) (A002260 (n + 1))

end

end A068906.P13325867904017662491

/-! ## A068906.P8561599781718522909

`A000041(A193738(A061579(n)))%A002260(n+1)`
-/

namespace A068906.P8561599781718522909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A193738 (A061579 n).toNat).toNat) (A002260 (n + 1))

end

end A068906.P8561599781718522909

/-! ## A068906.P9727684273345514196

`A027293(A080036(n))%A002260(n+1)`
-/

namespace A068906.P9727684273345514196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027293 (A080036 n).toNat) (A002260 (n + 1))

end

end A068906.P9727684273345514196

/-! ## A068906.P9353544103362896285

`A027293(A014132(n+1))%A002260(n+1)`
-/

namespace A068906.P9353544103362896285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027293 (A014132 (n + 1)).toNat) (A002260 (n + 1))

end

end A068906.P9353544103362896285

/-! ## A068906.P17547751312283816499

`A000041(A057555(2*(n+1)))%A002260(n+1)`
-/

namespace A068906.P17547751312283816499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A057555 (2 * (n + 1))).toNat) (A002260 (n + 1))

end

end A068906.P17547751312283816499

/-! ## A068906.P11908181074031530054

`A000041(A260739(A255127(n+2)))%A002260(n+1)`
-/

namespace A068906.P11908181074031530054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A260739 (A255127 (n + 2)).toNat).toNat) (A002260 (n + 1))

end

end A068906.P11908181074031530054

/-! ## A068906.P3697369812827733157

`A000041(A078898(A083221(n+2)))%A002260(n+1)`
-/

namespace A068906.P3697369812827733157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A078898 (A083221 (n + 2)).toNat).toNat) (A002260 (n + 1))

end

end A068906.P3697369812827733157

/-! ## A068906.P15545404110142310355

`A000041(A277892(A277897(n+3)))%A002260(n+1)`
-/

namespace A068906.P15545404110142310355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A277892 (A277897 (n + 3)).toNat).toNat) (A002260 (n + 1))

end

end A068906.P15545404110142310355

/-!
# A068907: Number of partitions of n modulo 3.

The programs for A068907, there is no canonical definition to state claims against.
-/

/-! ## A068907.P11897537277302209583

`A000041(n)%3`
-/

namespace A068907.P11897537277302209583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 3

end

end A068907.P11897537277302209583

/-! ## A068907.P8818698816734936065

`A010872(A000041(n))`
-/

namespace A068907.P8818698816734936065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000041 n).toNat

end

end A068907.P8818698816734936065

/-! ## A068907.P12506222798493036692

`A004088(n)%3`
-/

namespace A068907.P12506222798493036692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004088 n) 3

end

end A068907.P12506222798493036692

/-! ## A068907.P7176970230989952429

`A238191(n)%3`
-/

namespace A068907.P7176970230989952429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238191 n) 3

end

end A068907.P7176970230989952429

/-! ## A068907.P4433504339967057943

`A010872(A004088(n))`
-/

namespace A068907.P4433504339967057943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A004088 n).toNat

end

end A068907.P4433504339967057943

/-! ## A068907.P4568599645542349317

`A004089(n)%3`
-/

namespace A068907.P4568599645542349317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004089 n) 3

end

end A068907.P4568599645542349317

/-! ## A068907.P5377393863323910256

`∑[A002865(n)]%3`
-/

namespace A068907.P5377393863323910256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A068907.P5377393863323910256

/-! ## A068907.P6075037646331843874

`(A000065(n)+1)%3`
-/

namespace A068907.P6075037646331843874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n + 1) 3

end

end A068907.P6075037646331843874

/-! ## A068907.P16762304948709269378

`floor(acot(n))+∑{d}[n, A000837(#)]%3`
-/

namespace A068907.P16762304948709269378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + Int.tmod (∑ d ∈ Nat.divisors (f1 n), A000837 d) 3

end

end A068907.P16762304948709269378

/-! ## A068907.P9200459401377499839

`∑[A027336(n)-a(n-1)]%3` with `a(0)=1`
-/

namespace A068907.P9200459401377499839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A027336 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A068907.P9200459401377499839

/-! ## A068907.P8153731293785942681

`∑[∑[A026796(n+3)-a(n-1)]]%3` with `a(0)=1`
-/

namespace A068907.P8153731293785942681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A026796 (n + 3) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A068907.P8153731293785942681

/-! ## A068907.P10093720748894174190

`(A047967(n)+A000009(n))%3`
-/

namespace A068907.P10093720748894174190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047967 n + A000009 n) 3

end

end A068907.P10093720748894174190

/-! ## A068907.P7588919504365367771

`(A295341(n)+A000726(n))%3`
-/

namespace A068907.P7588919504365367771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295341 n + A000726 n) 3

end

end A068907.P7588919504365367771

/-! ## A068907.P7572266365518291004

`(A047967(n)+∑[A087897(n)])%3`
-/

namespace A068907.P7572266365518291004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047967 n + ∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A068907.P7572266365518291004

/-! ## A068907.P9736732486032517208

`(A047967(n)+A111133(n)+1)%3`
-/

namespace A068907.P9736732486032517208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047967 n + (A111133 n + 1)) 3

end

end A068907.P9736732486032517208

/-! ## A068907.P13407196973573685027

`(A139582(n)/2)%3`
-/

namespace A068907.P13407196973573685027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2)) 3

end

end A068907.P13407196973573685027

/-! ## A068907.P8137271197725518807

`A299474(n)%3`
-/

namespace A068907.P8137271197725518807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299474 n) 3

end

end A068907.P8137271197725518807

/-! ## A068907.P13103861067436992530

`abs(Δ[A000070(abs(1-n))]%3)`
-/

namespace A068907.P13103861067436992530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) 3|

end

end A068907.P13103861067436992530

/-! ## A068907.P16364078971766088953

`A280225(n)%3`
-/

namespace A068907.P16364078971766088953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280225 n) 3

end

end A068907.P16364078971766088953

/-! ## A068907.P16878245338787022920

`A035363(2*n)%3`
-/

namespace A068907.P16878245338787022920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 (2 * n)) 3

end

end A068907.P16878245338787022920

/-!
# A068908: Number of partitions of n modulo 5.

The programs for A068908, there is no canonical definition to state claims against.
-/

/-! ## A068908.P9331844235574146419

`A000041(n)%5`
-/

namespace A068908.P9331844235574146419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 5

end

end A068908.P9331844235574146419

/-! ## A068908.P14739167627000585814

`A010874(A000041(n))`
-/

namespace A068908.P14739167627000585814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A000041 n).toNat

end

end A068908.P14739167627000585814

/-! ## A068908.P1157594906185345846

`A178743(n)%5`
-/

namespace A068908.P1157594906185345846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178743 n) 5

end

end A068908.P1157594906185345846

/-! ## A068908.P1980907780836328706

`∑[A002865(n)]%5`
-/

namespace A068908.P1980907780836328706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 5

end

end A068908.P1980907780836328706

/-! ## A068908.P5156425058866725308

`(A000065(n)+1)%5`
-/

namespace A068908.P5156425058866725308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n + 1) 5

end

end A068908.P5156425058866725308

/-! ## A068908.P10358599153658650816

`∑[A085811(n+3)]%5`
-/

namespace A068908.P10358599153658650816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 5

end

end A068908.P10358599153658650816

/-! ## A068908.P4929498476414339562

`floor(1/(n+1))+∑{d}[n, A000837(#)]%5`
-/

namespace A068908.P4929498476414339562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋ + Int.tmod (∑ d ∈ Nat.divisors (f1 n), A000837 d) 5

end

end A068908.P4929498476414339562

/-! ## A068908.P14856622948590800498

`(A027193(n)+A027187(n))%5`
-/

namespace A068908.P14856622948590800498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027193 n + A027187 n) 5

end

end A068908.P14856622948590800498

/-! ## A068908.P15871800963836032918

`(A295341(n)+A000726(n))%5`
-/

namespace A068908.P15871800963836032918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295341 n + A000726 n) 5

end

end A068908.P15871800963836032918

/-! ## A068908.P650883825648754271

`(A239262(n)+A239260(n))%5`
-/

namespace A068908.P650883825648754271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239262 n + A239260 n) 5

end

end A068908.P650883825648754271

/-! ## A068908.P16054560959428822231

`(A239263(n)+A239259(n))%5`
-/

namespace A068908.P16054560959428822231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239263 n + A239259 n) 5

end

end A068908.P16054560959428822231

/-! ## A068908.P408416052735440970

`(A139582(n)/2)%5`
-/

namespace A068908.P408416052735440970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2)) 5

end

end A068908.P408416052735440970

/-! ## A068908.P14990894174718297951

`abs(Δ[A000070(abs(1-n))]%5)`
-/

namespace A068908.P14990894174718297951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) 5|

end

end A068908.P14990894174718297951

/-! ## A068908.P3144883831681948931

`A035363(2*n)%5`
-/

namespace A068908.P3144883831681948931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 (2 * n)) 5

end

end A068908.P3144883831681948931

/-! ## A068908.P17540599987328049816

`A119620(2*n)%5`
-/

namespace A068908.P17540599987328049816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119620 (2 * n)) 5

end

end A068908.P17540599987328049816

/-! ## A068908.P6104487188814194895

`sqrt(A001255(n))%5`
-/

namespace A068908.P6104487188814194895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))) 5

end

end A068908.P6104487188814194895

/-! ## A068908.P11865790206919203146

`(A143229(n)/A000070(n))%5`
-/

namespace A068908.P11865790206919203146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A143229 n : ℚ) / (A000070 n : ℚ))) 5

end

end A068908.P11865790206919203146

/-! ## A068908.P12838334855759590477

`A182821(n)%5`
-/

namespace A068908.P12838334855759590477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182821 n) 5

end

end A068908.P12838334855759590477

/-! ## A068908.P2679281681770478576

`(A332281(n)+A332280(n))%5`
-/

namespace A068908.P2679281681770478576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332281 n + A332280 n) 5

end

end A068908.P2679281681770478576

/-! ## A068908.P10836042130184956629

`A100824(2*n)%5`
-/

namespace A068908.P10836042130184956629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100824 (2 * n)) 5

end

end A068908.P10836042130184956629

/-!
# A068909: Number of partitions of n modulo 7.

The programs for A068909, there is no canonical definition to state claims against.
-/

/-! ## A068909.P3871311621478513651

`A000041(n)%7`
-/

namespace A068909.P3871311621478513651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 7

end

end A068909.P3871311621478513651

/-! ## A068909.P1037762753621306945

`A010876(A000041(n))`
-/

namespace A068909.P1037762753621306945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A000041 n).toNat

end

end A068909.P1037762753621306945

/-! ## A068909.P614171070443480945

`∑[A002865(n)]%7`
-/

namespace A068909.P614171070443480945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 7

end

end A068909.P614171070443480945

/-! ## A068909.P14506973376215857615

`(A000065(n)+1)%7`
-/

namespace A068909.P14506973376215857615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n + 1) 7

end

end A068909.P14506973376215857615

/-! ## A068909.P8407804149207247328

`∑[A085811(n+3)]%7`
-/

namespace A068909.P8407804149207247328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 7

end

end A068909.P8407804149207247328

/-! ## A068909.P828265499881410904

`(A047967(n)+A000009(n))%7`
-/

namespace A068909.P828265499881410904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047967 n + A000009 n) 7

end

end A068909.P828265499881410904

/-! ## A068909.P5596935535270081864

`(A295341(n)+A000726(n))%7`
-/

namespace A068909.P5596935535270081864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295341 n + A000726 n) 7

end

end A068909.P5596935535270081864

/-! ## A068909.P412337712489401755

`abs(Δ[A000070(abs(1-n))]%7)`
-/

namespace A068909.P412337712489401755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) 7|

end

end A068909.P412337712489401755

/-! ## A068909.P4634690335164751821

`A035363(2*n)%7`
-/

namespace A068909.P4634690335164751821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 (2 * n)) 7

end

end A068909.P4634690335164751821

/-! ## A068909.P15749435294202405183

`A119620(2*n)%7`
-/

namespace A068909.P15749435294202405183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119620 (2 * n)) 7

end

end A068909.P15749435294202405183

/-! ## A068909.P14122273090143327590

`A035444(4*n)%7`
-/

namespace A068909.P14122273090143327590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035444 (4 * n)) 7

end

end A068909.P14122273090143327590

/-! ## A068909.P14839451831239430623

`sqrt(A001255(n))%7`
-/

namespace A068909.P14839451831239430623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))) 7

end

end A068909.P14839451831239430623

/-! ## A068909.P10729856332949192084

`(A143229(n)/A000070(n))%7`
-/

namespace A068909.P10729856332949192084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A143229 n : ℚ) / (A000070 n : ℚ))) 7

end

end A068909.P10729856332949192084

/-! ## A068909.P144883938063463284

`A283077(n)%7`
-/

namespace A068909.P144883938063463284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283077 n) 7

end

end A068909.P144883938063463284

/-! ## A068909.P888127596997902033

`(A332281(n)+A332280(n))%7`
-/

namespace A068909.P888127596997902033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332281 n + A332280 n) 7

end

end A068909.P888127596997902033

/-! ## A068909.P7009943319176598198

`A100824(2*n)%7`
-/

namespace A068909.P7009943319176598198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100824 (2 * n)) 7

end

end A068909.P7009943319176598198

/-! ## A068909.P8679986376750151765

`(A325833(n)+A325832(n))%7`
-/

namespace A068909.P8679986376750151765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325833 n + A325832 n) 7

end

end A068909.P8679986376750151765

/-! ## A068909.P17298420148881664

`(A325834(n)+A325831(n))%7`
-/

namespace A068909.P17298420148881664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325834 n + A325831 n) 7

end

end A068909.P17298420148881664

/-! ## A068909.P12207567898829813656

`(A332284(n)+A332283(n))%7`
-/

namespace A068909.P12207567898829813656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332284 n + A332283 n) 7

end

end A068909.P12207567898829813656

/-! ## A068909.P1843024415510394521

`gcd(A000079(n)%4, record[A035377(n+1)])%7`
-/

namespace A068909.P1843024415510394521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A000079 n) 4) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) % 7

end

end A068909.P1843024415510394521

/-!
# A068910: a(n) is the unique k such that palindrome A068065(n) = k + reverse(k).

The programs for A068910, there is no canonical definition to state claims against.
-/

/-! ## A068910.P17695069998203526272

`lt[A118881(n), A008619(A111707(2*n+1))]`
-/

namespace A068910.P17695069998203526272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A111707 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068910.P17695069998203526272

/-! ## A068910.P12642240207518186539

`eq[n+1, A261423(A158930(n+1))]`
-/

namespace A068910.P12642240207518186539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A158930 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068910.P12642240207518186539

/-! ## A068910.P9921091768086049760

`eq[A034968(A000217(n)), A213712(n)]`
-/

namespace A068910.P9921091768086049760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068910.P9921091768086049760

/-!
# A068911: Number of n-step walks (each step +-1 starting from 0) which are never more than 2 or less than -2.

The programs for A068911, the canonical program `A068911.P11224025969434433245` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068911 has offset 0).

The definition of A068911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068911.P11224025969434433245

`3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068911

/-- `3*a(n-2)` -/
def P11224025969434433245.Spec : Prop :=
  ∀ n, (P11224025969434433245.a n : ℤ) = A068911 n

theorem P11224025969434433245.correct : P11224025969434433245.Spec := by
  intro n
  simp only [A068911]

end A068911

/-! ## A068911.P15901244269278659129

`floor((5-(-1)^n)*3^floor(n/2)/3)`
-/

namespace A068911.P15901244269278659129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 - (-1) ^ n : ℚ) * (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) / 3⌋

end

end A068911.P15901244269278659129

namespace A068911

/-- `floor((5-(-1)^n)*3^floor(n/2)/3)` -/
def P15901244269278659129.Spec : Prop :=
  ∀ n, P15901244269278659129.a n = A068911 n

end A068911

/-! ## A068911.P13405970394006149397

`ogf((1+2x+x^2)/(1-3x^2))`
-/

namespace A068911.P13405970394006149397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, 0, -3] n

end

end A068911.P13405970394006149397

namespace A068911

/-- `ogf((1+2x+x^2)/(1-3x^2))` -/
def P13405970394006149397.Spec : Prop :=
  ∀ n, P13405970394006149397.a n = A068911 n

end A068911

/-! ## A068911.P3197305946522059640

`∏[3/a(n-1)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A068911.P3197305946522059640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A068911.P3197305946522059640

namespace A068911

/-- `∏[3/a(n-1)]` -/
def P3197305946522059640.Spec : Prop :=
  ∀ n, P3197305946522059640.a n = (A068911 n : ℚ)

end A068911

/-! ## A068911.P10759645821923563408

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A068911.P10759645821923563408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A068911.P10759645821923563408

namespace A068911

/-- `a(n-2)/(1-2/3)` -/
def P10759645821923563408.Spec : Prop :=
  ∀ n, P10759645821923563408.a n = (A068911 n : ℚ)

end A068911

/-! ## A068911.P5296914288478246487

`a(or(1, n-2))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A068911.P5296914288478246487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Int.lor 1 ((n : ℤ) - 2)).toNat + a (n - 1)

end

end A068911.P5296914288478246487

namespace A068911

/-- `a(or(1, n-2))+a(n-1)` -/
def P5296914288478246487.Spec : Prop :=
  ∀ n, (P5296914288478246487.a n : ℤ) = A068911 n

end A068911

/-! ## A068911.P16698938658225003252

`a(n-1)+a(n-a(n%2))` with `a(0)=1, a(1)=2`
-/

namespace A068911.P16698938658225003252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - a (n % 2))

end

end A068911.P16698938658225003252

namespace A068911

/-- `a(n-1)+a(n-a(n%2))` -/
def P16698938658225003252.Spec : Prop :=
  ∀ n, (P16698938658225003252.a n : ℤ) = A068911 n

end A068911

/-! ## A068911.P9814393993227034236

`a(n-1)+a(n-gcd(2, n+1))` with `a(0)=1, a(1)=2`
-/

namespace A068911.P9814393993227034236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - Nat.gcd 2 (n + 1))

end

end A068911.P9814393993227034236

namespace A068911

/-- `a(n-1)+a(n-gcd(2, n+1))` -/
def P9814393993227034236.Spec : Prop :=
  ∀ n, (P9814393993227034236.a n : ℤ) = A068911 n

end A068911

/-! ## A068911.P17224421766438696167

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A068911.P17224421766438696167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A068911.P17224421766438696167

namespace A068911

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P17224421766438696167.Spec : Prop :=
  ∀ n, (P17224421766438696167.a n : ℤ) = A068911 n

theorem P17224421766438696167.correct : P17224421766438696167.Spec := by
  intro n
  simp only [A068911, Nat.add_sub_cancel, A068911.P17224421766438696167.a, A068911.P11224025969434433245.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A068911

/-! ## A068911.P15617778780009834381

`∑[A025192(floor(n/2))]`
-/

namespace A068911.P15617778780009834381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068911.P15617778780009834381

namespace A068911

/-- `∑[A025192(floor(n/2))]` -/
def P15617778780009834381.Spec : Prop :=
  ∀ n, P15617778780009834381.a n = A068911 n

end A068911

/-! ## A068911.P12584559265210302060

`A117855(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A068911.P12584559265210302060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A117855 (n - 1) + a (n - 1)

end

end A068911.P12584559265210302060

namespace A068911

/-- `A117855(n-1)+a(n-1)` -/
def P12584559265210302060.Spec : Prop :=
  ∀ n, P12584559265210302060.a n = A068911 n

end A068911

/-! ## A068911.P17117617398166980034

`a(n-A000034(n))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A068911.P17117617398166980034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ((n : ℤ) - A000034 n).toNat + a (n - 1)

end

end A068911.P17117617398166980034

namespace A068911

/-- `a(n-A000034(n))+a(n-1)` -/
def P17117617398166980034.Spec : Prop :=
  ∀ n, (P17117617398166980034.a n : ℤ) = A068911 n

end A068911

/-! ## A068911.P17069475098191805884

`A036561(A165157(n))`
-/

namespace A068911.P17069475098191805884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A165157 n).toNat

end

end A068911.P17069475098191805884

namespace A068911

/-- `A036561(A165157(n))` -/
def P17069475098191805884.Spec : Prop :=
  ∀ n, P17069475098191805884.a n = A068911 n

end A068911

/-! ## A068911.P4674595626496687480

`A000792(A001651(n+1))`
-/

namespace A068911.P4674595626496687480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A001651 (n + 1)).toNat

end

end A068911.P4674595626496687480

namespace A068911

/-- `A000792(A001651(n+1))` -/
def P4674595626496687480.Spec : Prop :=
  ∀ n, P4674595626496687480.a n = A068911 n

end A068911

/-! ## A068911.P1876435216989154093

`A000792(A032766(n)+1)`
-/

namespace A068911.P1876435216989154093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A032766 n + 1).toNat

end

end A068911.P1876435216989154093

namespace A068911

/-- `A000792(A032766(n)+1)` -/
def P1876435216989154093.Spec : Prop :=
  ∀ n, P1876435216989154093.a n = A068911 n

end A068911

/-! ## A068911.P9582343095531821131

`A122164(A047219(n+1))`
-/

namespace A068911.P9582343095531821131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (A047219 (n + 1)).toNat

end

end A068911.P9582343095531821131

namespace A068911

/-- `A122164(A047219(n+1))` -/
def P9582343095531821131.Spec : Prop :=
  ∀ n, P9582343095531821131.a n = A068911 n

end A068911

/-! ## A068911.P65350103484918838

`A000792(A114119(n)-1)`
-/

namespace A068911.P65350103484918838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A114119 n - 1).toNat

end

end A068911.P65350103484918838

namespace A068911

/-- `A000792(A114119(n)-1)` -/
def P65350103484918838.Spec : Prop :=
  ∀ n, P65350103484918838.a n = A068911 n

end A068911

/-! ## A068911.P13213934419943047716

`A000034(n)*A074324(n)`
-/

namespace A068911.P13213934419943047716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A074324 n

end

end A068911.P13213934419943047716

namespace A068911

/-- `A000034(n)*A074324(n)` -/
def P13213934419943047716.Spec : Prop :=
  ∀ n, P13213934419943047716.a n = A068911 n

end A068911

/-! ## A068911.P9436814940686867456

`A036453(n+1)*A182522(n)`
-/

namespace A068911.P9436814940686867456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A182522 n

end

end A068911.P9436814940686867456

namespace A068911

/-- `A036453(n+1)*A182522(n)` -/
def P9436814940686867456.Spec : Prop :=
  ∀ n, P9436814940686867456.a n = A068911 n

end A068911

/-!
# A068912: Number of n step walks (each step +/ -1 starting from 0) which are never more than 3 or less than -3.

The programs for A068912, the canonical program `A068912.P9985970511912984352` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068912 has offset 0).

The definition of A068912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068912.P9985970511912984352

`4*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068912

/-- `4*a(n-2)-2*a(n-4)` -/
def P9985970511912984352.Spec : Prop :=
  ∀ n, P9985970511912984352.a n = A068912 n

theorem P9985970511912984352.correct : P9985970511912984352.Spec := by
  intro n
  simp only [A068912]

end A068912

/-! ## A068912.P4049872452778308056

`ogf((1+2x)/(1-4x^2+2x^4))`
-/

namespace A068912.P4049872452778308056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -4, 0, 2] n

end

end A068912.P4049872452778308056

namespace A068912

/-- `ogf((1+2x)/(1-4x^2+2x^4))` -/
def P4049872452778308056.Spec : Prop :=
  ∀ n, P4049872452778308056.a n = A068912 n

end A068912

/-! ## A068912.P2165620268237080025

`∑[A062112(n+1)]`
-/

namespace A068912.P2165620268237080025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068912.P2165620268237080025

namespace A068912

/-- `∑[A062112(n+1)]` -/
def P2165620268237080025.Spec : Prop :=
  ∀ n, P2165620268237080025.a n = A068912 n

end A068912

/-! ## A068912.P16687981213106046785

`A062113(n)+A062112(n-A000035(n))`
-/

namespace A068912.P16687981213106046785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 n + A062112 ((n : ℤ) - A000035 n).toNat

end

end A068912.P16687981213106046785

namespace A068912

/-- `A062113(n)+A062112(n-A000035(n))` -/
def P16687981213106046785.Spec : Prop :=
  ∀ n, P16687981213106046785.a n = A068912 n

end A068912

/-! ## A068912.P15691797200974538564

`A007068(n+1)-A062112(n*A000035(n))`
-/

namespace A068912.P15691797200974538564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (n + 1) - A062112 ((n : ℤ) * A000035 n).toNat

end

end A068912.P15691797200974538564

namespace A068912

/-- `A007068(n+1)-A062112(n*A000035(n))` -/
def P15691797200974538564.Spec : Prop :=
  ∀ n, P15691797200974538564.a n = A068912 n

end A068912

/-! ## A068912.P2955929427116214874

`∪[2*A007070(n), A007070(n)]`
-/

namespace A068912.P2955929427116214874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068912.P2955929427116214874

namespace A068912

/-- `∪[2*A007070(n), A007070(n)]` -/
def P2955929427116214874.Spec : Prop :=
  ∀ n, (P2955929427116214874.a n : ℤ) = A068912 n

end A068912

/-! ## A068912.P13956985010858734498

`A030436(n+3)-A030435(n+1)`
-/

namespace A068912.P13956985010858734498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (n + 3) - A030435 (n + 1)

end

end A068912.P13956985010858734498

namespace A068912

/-- `A030436(n+3)-A030435(n+1)` -/
def P13956985010858734498.Spec : Prop :=
  ∀ n, P13956985010858734498.a n = A068912 n

end A068912

/-! ## A068912.P17405301539034288473

`A217730(n+1)-(A062112(n+1)+A062112(n))`
-/

namespace A068912.P17405301539034288473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 (n + 1) - (A062112 (n + 1) + A062112 n)

end

end A068912.P17405301539034288473

namespace A068912

/-- `A217730(n+1)-(A062112(n+1)+A062112(n))` -/
def P17405301539034288473.Spec : Prop :=
  ∀ n, P17405301539034288473.a n = A068912 n

end A068912

/-! ## A068912.P9554298978381564142

`A068913(∑[n+3]+6)`
-/

namespace A068912.P9554298978381564142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A068912.P9554298978381564142

namespace A068912

/-- `A068913(∑[n+3]+6)` -/
def P9554298978381564142.Spec : Prop :=
  ∀ n, P9554298978381564142.a n = A068912 n

end A068912

/-! ## A068912.P9653171250634921742

`ceil(A003480(n)/A030436(n))`
-/

namespace A068912.P9653171250634921742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003480 n : ℚ) / (A030436 n : ℚ)⌉

end

end A068912.P9653171250634921742

namespace A068912

/-- `ceil(A003480(n)/A030436(n))` -/
def P9653171250634921742.Spec : Prop :=
  ∀ n, P9653171250634921742.a n = A068912 n

end A068912

/-! ## A068912.P15077328744594388106

`∑[A228405(∑[A109613(n+1)])]`
-/

namespace A068912.P15077328744594388106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068912.P15077328744594388106

namespace A068912

/-- `∑[A228405(∑[A109613(n+1)])]` -/
def P15077328744594388106.Spec : Prop :=
  ∀ n, P15077328744594388106.a n = A068912 n

end A068912

/-!
# A068913: Square array read by antidiagonals of number of k step walks (each step +-1 starting from 0) which are never more than n or less than -n.

The programs for A068913, there is no canonical definition to state claims against.
-/

/-! ## A068913.P2588992267891436197

`A257564(A112857(n)+A023532(n))`
-/

namespace A068913.P2588992267891436197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A112857 n + A023532 n).toNat

end

end A068913.P2588992267891436197

/-! ## A068913.P1497751059018963577

`A283431(A112857(n)-A023532(n))`
-/

namespace A068913.P1497751059018963577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A112857 n - A023532 n).toNat

end

end A068913.P1497751059018963577

/-! ## A068913.P9677285621441650782

`A053735(A008518(n)*A084938(n))`
-/

namespace A068913.P9677285621441650782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A008518 n * A084938 n).toNat

end

end A068913.P9677285621441650782

/-! ## A068913.P15861285905197741479

`A283431(xor(A023532(n), A112857(n)))`
-/

namespace A068913.P15861285905197741479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (Int.xor (A023532 n) (A112857 n)).toNat

end

end A068913.P15861285905197741479

/-! ## A068913.P17637687121842289557

`dr(A007089(A008518(n)*A084938(n)))`
-/

namespace A068913.P17637687121842289557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007089 (A008518 n * A084938 n).toNat)

end

end A068913.P17637687121842289557

/-!
# A068914: Square array read by antidiagonals of number of k step walks (each step +-1 starting from 0) which are never more than n or less than 0.

The programs for A068914, there is no canonical definition to state claims against.
-/

/-! ## A068914.P11875639543728294075

`A073287(or(A151811(n), A244925(n+1)))`
-/

namespace A068914.P11875639543728294075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (Int.lor (A151811 n) (A244925 (n + 1))).toNat

end

end A068914.P11875639543728294075

/-! ## A068914.P1791058572525044708

`A073289(or(A151811(n), A244925(n+1)))`
-/

namespace A068914.P1791058572525044708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (Int.lor (A151811 n) (A244925 (n + 1))).toNat

end

end A068914.P1791058572525044708

/-! ## A068914.P16393685517728061085

`A131173(or(A151811(n), A244925(n+1)))`
-/

namespace A068914.P16393685517728061085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131173 (Int.lor (A151811 n) (A244925 (n + 1))).toNat

end

end A068914.P16393685517728061085

/-! ## A068914.P4361065437403764895

`A073287(A244925(n+1)%A122485(n+1))`
-/

namespace A068914.P4361065437403764895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (Int.tmod (A244925 (n + 1)) (A122485 (n + 1))).toNat

end

end A068914.P4361065437403764895

/-! ## A068914.P9044817786667003879

`A073287(A244925(n+1)+n*A151811(n))`
-/

namespace A068914.P9044817786667003879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A244925 (n + 1) + (n : ℤ) * A151811 n).toNat

end

end A068914.P9044817786667003879

/-!
# A068915: a(n) = n if n<2; a(n) = |a(n/2)-a(n/2-1)| if n is even, and a(n) = a((n-1)/2) + a((n-1)/2+1) if n is odd.

The programs for A068915, the canonical program `A068915.P12383817215753924052` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068915 has offset 0).

The definition of A068915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068915.P12383817215753924052

`A020986(n-1)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A068915

/-- `A020986(n-1)-a(n-1)` -/
def P12383817215753924052.Spec : Prop :=
  ∀ n, P12383817215753924052.a n = A068915 n

theorem P12383817215753924052.correct : P12383817215753924052.Spec := by
  intro n
  simp only [A068915]

end A068915

/-! ## A068915.P14090741743857141541

`∑[A020985(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A068915.P14090741743857141541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A020985 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068915.P14090741743857141541

namespace A068915

/-- `∑[A020985(n-1)-a(n-1)]` -/
def P14090741743857141541.Spec : Prop :=
  ∀ n, P14090741743857141541.a n = A068915 n

end A068915

/-! ## A068915.P2428078961963147232

`A020985(2*(n-1))+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A068915.P2428078961963147232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A020985 (2 * ((n : ℤ) - 1)).toNat + a (n - 2)

end

end A068915.P2428078961963147232

namespace A068915

/-- `A020985(2*(n-1))+a(n-2)` -/
def P2428078961963147232.Spec : Prop :=
  ∀ n, P2428078961963147232.a n = A068915 n

end A068915

/-! ## A068915.P10785793570532724409

`and(A034968(n), A117078(A117877(n)))`
-/

namespace A068915.P10785793570532724409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034968 n) (A117078 (A117877 n).toNat)

end

end A068915.P10785793570532724409

namespace A068915

/-- `and(A034968(n), A117078(A117877(n)))` -/
def P10785793570532724409.Spec : Prop :=
  ∀ n, P10785793570532724409.a n = A068915 n

end A068915

/-!
# A068917: Numerators of coefficients in 1/sin(x) - 1/sinh(x) power series.

The programs for A068917, there is no canonical definition to state claims against.
-/

/-! ## A068917.P4343641738309303534

`A036280(Δ[n²])`
-/

namespace A068917.P4343641738309303534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A068917.P4343641738309303534

/-! ## A068917.P17111048844695188439

`A242032(2*n+1)-char[(8*n)²]`
-/

namespace A068917.P17111048844695188439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242032 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A068917.P17111048844695188439

/-! ## A068917.P8993703511745360571

`or(1, A036280(A005408(n)))`
-/

namespace A068917.P8993703511745360571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A036280 (A005408 n).toNat)

end

end A068917.P8993703511745360571

/-! ## A068917.P6559272107694900267

`lcm(A033999(n), A036280(A005408(n)))`
-/

namespace A068917.P6559272107694900267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A036280 (A005408 n).toNat)

end

end A068917.P6559272107694900267

/-! ## A068917.P8343514396732289605

`A033999(2*n)*A036280(A005408(n))`
-/

namespace A068917.P8343514396732289605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A036280 (A005408 n).toNat

end

end A068917.P8343514396732289605

/-!
# A068918: 

The programs for A068918, there is no canonical definition to state claims against.
-/

/-! ## A068918.P3838953693388048013

`ceil(A036281(Δ[n²])/2)`
-/

namespace A068918.P3838953693388048013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036281 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A068918.P3838953693388048013

/-! ## A068918.P393235820388243745

`A036281(2*n+1)/2`
-/

namespace A068918.P393235820388243745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036281 (2 * n + 1) : ℚ) / 2

end

end A068918.P393235820388243745

/-! ## A068918.P13392377146719491178

`A230265(2*n+1)/4`
-/

namespace A068918.P13392377146719491178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230265 (2 * n + 1) : ℚ) / 4

end

end A068918.P13392377146719491178

/-!
# A068919: Squarefree orders of non-Abelian groups.

The programs for A068919, the canonical program `A068919.P16495689797022882545` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068919 has offset 1).

The definition of A068919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4654 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068919.P15353758034456101508

`filter[A069209(n+1), A008966(#)]`
-/

namespace A068919.P15353758034456101508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A068919.P15353758034456101508

namespace A068919

/-- `filter[A069209(n+1), A008966(#)]` -/
def P15353758034456101508.Spec : Prop :=
  ∀ n, P15353758034456101508.a n = A068919 (n + 1)

end A068919

/-! ## A068919.P15939702476094530374

`filter[A069209(n+1), A354819(#)]`
-/

namespace A068919.P15939702476094530374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A068919.P15939702476094530374

namespace A068919

/-- `filter[A069209(n+1), A354819(#)]` -/
def P15939702476094530374.Spec : Prop :=
  ∀ n, P15939702476094530374.a n = A068919 (n + 1)

end A068919

/-! ## A068919.P16495689797022882545

`∩[A000469(n+1), A069209(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068919

/-- `∩[A000469(n+1), A069209(n+1)]` -/
def P16495689797022882545.Spec : Prop :=
  ∀ n, (P16495689797022882545.a n : ℤ) = A068919 (n + 1)

theorem P16495689797022882545.correct : P16495689797022882545.Spec := by
  intro n
  simp only [A068919, Nat.add_sub_cancel]

end A068919

/-! ## A068919.P5930750333796059399

`∩[A005117(n+1), A069209(n+1)]`
-/

namespace A068919.P5930750333796059399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P5930750333796059399

namespace A068919

/-- `∩[A005117(n+1), A069209(n+1)]` -/
def P5930750333796059399.Spec : Prop :=
  ∀ n, (P5930750333796059399.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P13039119395756634576

`∩[A069209(n+1), A120944(n+1)]`
-/

namespace A068919.P13039119395756634576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P13039119395756634576

namespace A068919

/-- `∩[A069209(n+1), A120944(n+1)]` -/
def P13039119395756634576.Spec : Prop :=
  ∀ n, (P13039119395756634576.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P14304056195124191604

`∩[A069209(n+1), A144338(n+1)]`
-/

namespace A068919.P14304056195124191604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P14304056195124191604

namespace A068919

/-- `∩[A069209(n+1), A144338(n+1)]` -/
def P14304056195124191604.Spec : Prop :=
  ∀ n, (P14304056195124191604.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P16002319149919945480

`∩[A069209(n+1), A167207(n+1)]`
-/

namespace A068919.P16002319149919945480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P16002319149919945480

namespace A068919

/-- `∩[A069209(n+1), A167207(n+1)]` -/
def P16002319149919945480.Spec : Prop :=
  ∀ n, (P16002319149919945480.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P2953440077923251791

`∩[A069209(n+1), A303554(n+1)]`
-/

namespace A068919.P2953440077923251791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P2953440077923251791

namespace A068919

/-- `∩[A069209(n+1), A303554(n+1)]` -/
def P2953440077923251791.Spec : Prop :=
  ∀ n, (P2953440077923251791.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P14595121690600728990

`record[A007947(A056868(n+1))]`
-/

namespace A068919.P14595121690600728990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A056868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068919.P14595121690600728990

namespace A068919

/-- `record[A007947(A056868(n+1))]` -/
def P14595121690600728990.Spec : Prop :=
  ∀ n, P14595121690600728990.a n = A068919 (n + 1)

end A068919

/-! ## A068919.P9200582393781339455

`filter[A056868(n+1), A008966(#)]`
-/

namespace A068919.P9200582393781339455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A068919.P9200582393781339455

namespace A068919

/-- `filter[A056868(n+1), A008966(#)]` -/
def P9200582393781339455.Spec : Prop :=
  ∀ n, P9200582393781339455.a n = A068919 (n + 1)

end A068919

/-! ## A068919.P15107234589451019550

`filter[A056868(n+1), A354819(#)]`
-/

namespace A068919.P15107234589451019550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A068919.P15107234589451019550

namespace A068919

/-- `filter[A056868(n+1), A354819(#)]` -/
def P15107234589451019550.Spec : Prop :=
  ∀ n, P15107234589451019550.a n = A068919 (n + 1)

end A068919

/-! ## A068919.P4548056103756960965

`∩[A000469(n+1), A056868(n+1)]`
-/

namespace A068919.P4548056103756960965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P4548056103756960965

namespace A068919

/-- `∩[A000469(n+1), A056868(n+1)]` -/
def P4548056103756960965.Spec : Prop :=
  ∀ n, (P4548056103756960965.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P10779137976482263339

`∩[A005117(n+1), A056868(n+1)]`
-/

namespace A068919.P10779137976482263339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P10779137976482263339

namespace A068919

/-- `∩[A005117(n+1), A056868(n+1)]` -/
def P10779137976482263339.Spec : Prop :=
  ∀ n, (P10779137976482263339.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P14361023552339469887

`∩[A056868(n+1), A120944(n+1)]`
-/

namespace A068919.P14361023552339469887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P14361023552339469887

namespace A068919

/-- `∩[A056868(n+1), A120944(n+1)]` -/
def P14361023552339469887.Spec : Prop :=
  ∀ n, (P14361023552339469887.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P17203251619353486487

`∩[A056868(n+1), A144338(n+1)]`
-/

namespace A068919.P17203251619353486487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P17203251619353486487

namespace A068919

/-- `∩[A056868(n+1), A144338(n+1)]` -/
def P17203251619353486487.Spec : Prop :=
  ∀ n, (P17203251619353486487.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P1459824066258756966

`∩[A056868(n+1), A167207(n+1)]`
-/

namespace A068919.P1459824066258756966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P1459824066258756966

namespace A068919

/-- `∩[A056868(n+1), A167207(n+1)]` -/
def P1459824066258756966.Spec : Prop :=
  ∀ n, (P1459824066258756966.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P8892055799703461248

`∩[A056868(n+1), A303554(n+1)]`
-/

namespace A068919.P8892055799703461248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P8892055799703461248

namespace A068919

/-- `∩[A056868(n+1), A303554(n+1)]` -/
def P8892055799703461248.Spec : Prop :=
  ∀ n, (P8892055799703461248.a n : ℤ) = A068919 (n + 1)

end A068919

/-! ## A068919.P18321541338677921493

`filter[A060652(n+1), A008966(#)]`
-/

namespace A068919.P18321541338677921493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A068919.P18321541338677921493

namespace A068919

/-- `filter[A060652(n+1), A008966(#)]` -/
def P18321541338677921493.Spec : Prop :=
  ∀ n, P18321541338677921493.a n = A068919 (n + 1)

end A068919

/-! ## A068919.P7451687584910839111

`filter[A060652(n+1), A354819(#)]`
-/

namespace A068919.P7451687584910839111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A068919.P7451687584910839111

namespace A068919

/-- `filter[A060652(n+1), A354819(#)]` -/
def P7451687584910839111.Spec : Prop :=
  ∀ n, P7451687584910839111.a n = A068919 (n + 1)

end A068919

/-! ## A068919.P12017539124709170966

`∩[A000469(n+1), A060652(n+1)]`
-/

namespace A068919.P12017539124709170966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P12017539124709170966

namespace A068919

/-- `∩[A000469(n+1), A060652(n+1)]` -/
def P12017539124709170966.Spec : Prop :=
  ∀ n, (P12017539124709170966.a n : ℤ) = A068919 (n + 1)

end A068919

/-!
# A068920: Table of t(r,s) read by antidiagonals: t(r,s) is the number of ways to tile an r X s room with 1 X 2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068920, there is no canonical definition to state claims against.
-/

/-! ## A068920.P11002887820388413630

`A257564(lcm(A099390(n+1), A204621(n)))`
-/

namespace A068920.P11002887820388413630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (Int.lcm (A099390 (n + 1)) (A204621 n))

end

end A068920.P11002887820388413630

/-! ## A068920.P7493264501809595272

`A295205(n+1)%A288578(A298063(n+1))`
-/

namespace A068920.P7493264501809595272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295205 (n + 1)) (A288578 (A298063 (n + 1)).toNat)

end

end A068920.P7493264501809595272

/-! ## A068920.P14896817936517470559

`A093997(and(A000043(n+1), A189245(n+1))²)`
-/

namespace A068920.P14896817936517470559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (Int.land (A000043 (n + 1)) (A189245 (n + 1)) ^ 2).toNat

end

end A068920.P14896817936517470559

/-! ## A068920.P10753521571903294066

`A093997(A189245(n+1)²)`
-/

namespace A068920.P10753521571903294066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (A189245 (n + 1) ^ 2).toNat

end

end A068920.P10753521571903294066

/-! ## A068920.P3351726730290622354

`A145807(A167279(n+1)+2)`
-/

namespace A068920.P3351726730290622354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145807 (A167279 (n + 1) + 2).toNat

end

end A068920.P3351726730290622354

/-!
# A068921: Number of ways to tile a 2 X n room with 1 X 2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068921, the canonical program `A068921.P14390823611597591154` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068921 has offset 0).

The definition of A068921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068921.P14390823611597591154

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068921

/-- `a(n-1)+a(n-3)` -/
def P14390823611597591154.Spec : Prop :=
  ∀ n, (P14390823611597591154.a n : ℤ) = A068921 n

theorem P14390823611597591154.correct : P14390823611597591154.Spec := by
  intro n
  simp only [A068921]

end A068921

/-! ## A068921.P16376628196715388512

`A000930(n+1)`
-/

namespace A068921.P16376628196715388512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1)

end

end A068921.P16376628196715388512

namespace A068921

/-- `A000930(n+1)` -/
def P16376628196715388512.Spec : Prop :=
  ∀ n, P16376628196715388512.a n = A068921 n

end A068921

/-! ## A068921.P12289964065991908099

`ogf((1+x^2)/(1-x-x^3))`
-/

namespace A068921.P12289964065991908099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -1, 0, -1] n

end

end A068921.P12289964065991908099

namespace A068921

/-- `ogf((1+x^2)/(1-x-x^3))` -/
def P12289964065991908099.Spec : Prop :=
  ∀ n, P12289964065991908099.a n = A068921 n

end A068921

/-! ## A068921.P6426182768231346898

`a(n-1)-floor(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A068921.P6426182768231346898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A068921.P6426182768231346898

namespace A068921

/-- `a(n-1)-floor(-a(n-3))` -/
def P6426182768231346898.Spec : Prop :=
  ∀ n, P6426182768231346898.a n = A068921 n

end A068921

/-! ## A068921.P9514049753596790056

`a(n-1)-ceil(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A068921.P9514049753596790056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A068921.P9514049753596790056

namespace A068921

/-- `a(n-1)-ceil(-a(n-3))` -/
def P9514049753596790056.Spec : Prop :=
  ∀ n, P9514049753596790056.a n = A068921 n

end A068921

/-! ## A068921.P3038408391556321414

`a(n-1)-round(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A068921.P3038408391556321414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A068921.P3038408391556321414

namespace A068921

/-- `a(n-1)-round(-a(n-3))` -/
def P3038408391556321414.Spec : Prop :=
  ∀ n, P3038408391556321414.a n = A068921 n

end A068921

/-! ## A068921.P1061842283499580071

`a(n-1)-(a(n-5)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A068921.P1061842283499580071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 2))

end

end A068921.P1061842283499580071

namespace A068921

/-- `a(n-1)-(a(n-5)-a(n-2))` -/
def P1061842283499580071.Spec : Prop :=
  ∀ n, P1061842283499580071.a n = A068921 n

end A068921

/-! ## A068921.P16645707460742698243

`A078012(n+4)`
-/

namespace A068921.P16645707460742698243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 4)

end

end A068921.P16645707460742698243

namespace A068921

/-- `A078012(n+4)` -/
def P16645707460742698243.Spec : Prop :=
  ∀ n, P16645707460742698243.a n = A068921 n

end A068921

/-! ## A068921.P11341635613363547338

`A135851(n+6)`
-/

namespace A068921.P11341635613363547338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 6)

end

end A068921.P11341635613363547338

namespace A068921

/-- `A135851(n+6)` -/
def P11341635613363547338.Spec : Prop :=
  ∀ n, P11341635613363547338.a n = A068921 n

end A068921

/-! ## A068921.P16428748182334889093

`abs(A199804(n+1))`
-/

namespace A068921.P16428748182334889093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 (n + 1)|

end

end A068921.P16428748182334889093

namespace A068921

/-- `abs(A199804(n+1))` -/
def P16428748182334889093.Spec : Prop :=
  ∀ n, P16428748182334889093.a n = A068921 n

end A068921

/-! ## A068921.P1501717044774998047

`A108104(2*(n+1))`
-/

namespace A068921.P1501717044774998047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * (n + 1))

end

end A068921.P1501717044774998047

namespace A068921

/-- `A108104(2*(n+1))` -/
def P1501717044774998047.Spec : Prop :=
  ∀ n, P1501717044774998047.a n = A068921 n

end A068921

/-! ## A068921.P594761740137086676

`A226916(2*n+9)`
-/

namespace A068921.P594761740137086676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 9)

end

end A068921.P594761740137086676

namespace A068921

/-- `A226916(2*n+9)` -/
def P594761740137086676.Spec : Prop :=
  ∀ n, P594761740137086676.a n = A068921 n

end A068921

/-! ## A068921.P603183095766981168

`ratio[A000930(n)]*A000930(n)`
-/

namespace A068921.P603183095766981168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A000930 n : ℚ)

end

end A068921.P603183095766981168

namespace A068921

/-- `ratio[A000930(n)]*A000930(n)` -/
def P603183095766981168.Spec : Prop :=
  ∀ n, P603183095766981168.a n = (A068921 n : ℚ)

end A068921

/-! ## A068921.P10774017455849916582

`A013979(n+1)+A013979(n)`
-/

namespace A068921.P10774017455849916582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 1) + A013979 n

end

end A068921.P10774017455849916582

namespace A068921

/-- `A013979(n+1)+A013979(n)` -/
def P10774017455849916582.Spec : Prop :=
  ∀ n, P10774017455849916582.a n = A068921 n

end A068921

/-! ## A068921.P11357964917495489750

`A277253(n+1)+A277252(n+1)`
-/

namespace A068921.P11357964917495489750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (n + 1) + A277252 (n + 1)

end

end A068921.P11357964917495489750

namespace A068921

/-- `A277253(n+1)+A277252(n+1)` -/
def P11357964917495489750.Spec : Prop :=
  ∀ n, P11357964917495489750.a n = A068921 n

end A068921

/-! ## A068921.P6595053162014037489

`A033999(n+1)*A199804(n+1)`
-/

namespace A068921.P6595053162014037489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A199804 (n + 1)

end

end A068921.P6595053162014037489

namespace A068921

/-- `A033999(n+1)*A199804(n+1)` -/
def P6595053162014037489.Spec : Prop :=
  ∀ n, P6595053162014037489.a n = A068921 n

end A068921

/-! ## A068921.P10499964767436322746

`A003410(n)-a(n-1)` with `a(0)=1`
-/

namespace A068921.P10499964767436322746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003410 n - a (n - 1)

end

end A068921.P10499964767436322746

namespace A068921

/-- `A003410(n)-a(n-1)` -/
def P10499964767436322746.Spec : Prop :=
  ∀ n, P10499964767436322746.a n = A068921 n

end A068921

/-! ## A068921.P14196604593171731143

`A097333(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A068921.P14196604593171731143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097333 (n + 1) - a (n - 1)

end

end A068921.P14196604593171731143

namespace A068921

/-- `A097333(n+1)-a(n-1)` -/
def P14196604593171731143.Spec : Prop :=
  ∀ n, P14196604593171731143.a n = A068921 n

end A068921

/-! ## A068921.P8542038565245989884

`2*a(n-1)-A058278(n)` with `a(0)=1`
-/

namespace A068921.P8542038565245989884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A058278 n

end

end A068921.P8542038565245989884

namespace A068921

/-- `2*a(n-1)-A058278(n)` -/
def P8542038565245989884.Spec : Prop :=
  ∀ n, P8542038565245989884.a n = A068921 n

end A068921

/-! ## A068921.P12102836340076834772

`A226275(n+1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A068921.P12102836340076834772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A226275 (n + 1) - a (n - 1)

end

end A068921.P12102836340076834772

namespace A068921

/-- `A226275(n+1)-a(n-1)` -/
def P12102836340076834772.Spec : Prop :=
  ∀ n, P12102836340076834772.a n = A068921 n

end A068921

/-!
# A068922: Number of ways to tile a 3 X 2n room with 1 X 2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068922, the canonical program `A068922.P4974104702800734513` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068922 has offset 1).

The definition of A068922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068922.P4974104702800734513

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068922

/-- `a(n-1)+a(n-2)` -/
def P4974104702800734513.Spec : Prop :=
  ∀ n, (P4974104702800734513.a n : ℤ) = A068922 (n + 1)

theorem P4974104702800734513.correct : P4974104702800734513.Spec := by
  intro n
  simp only [A068922, Nat.add_sub_cancel]

end A068922

/-! ## A068922.P1605097716716107275

`ogf((3+x-x^2)/(1-x-x^2))`
-/

namespace A068922.P1605097716716107275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -1] [1, -1, -1] n

end

end A068922.P1605097716716107275

namespace A068922

/-- `ogf((3+x-x^2)/(1-x-x^2))` -/
def P1605097716716107275.Spec : Prop :=
  ∀ n, P1605097716716107275.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P6649867589911721292

`round(ϕ*a(n-1))` with `a(0)=3, a(1)=4`
-/

namespace A068922.P6649867589911721292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A068922.P6649867589911721292

namespace A068922

/-- `round(ϕ*a(n-1))` -/
def P6649867589911721292.Spec : Prop :=
  ∀ n, P6649867589911721292.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P2512299438143930409

`round(a(n-1)/(ϕ-1))` with `a(0)=3, a(1)=4`
-/

namespace A068922.P2512299438143930409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.goldenRatio - 1))

end

end A068922.P2512299438143930409

namespace A068922

/-- `round(a(n-1)/(ϕ-1))` -/
def P2512299438143930409.Spec : Prop :=
  ∀ n, P2512299438143930409.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P15558849413301353820

`a(n-1)-(char[2]-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A068922.P15558849413301353820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A068922.P15558849413301353820

namespace A068922

/-- `a(n-1)-(char[2]-a(n-2))` -/
def P15558849413301353820.Spec : Prop :=
  ∀ n, P15558849413301353820.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P17667227784363863811

`a(n-1)-floor(2/n-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A068922.P17667227784363863811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) - ⌊2 / (n : ℚ) - (a (n - 2) : ℚ)⌋

end

end A068922.P17667227784363863811

namespace A068922

/-- `a(n-1)-floor(2/n-a(n-2))` -/
def P17667227784363863811.Spec : Prop :=
  ∀ n, P17667227784363863811.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P7696453147680006896

`gcd(2, a(n-2))-(2-a(n-1)-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A068922.P7696453147680006896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  (Int.gcd 2 (a (n - 2)) : ℤ) - (2 - a (n - 1) - a (n - 2))

end

end A068922.P7696453147680006896

namespace A068922

/-- `gcd(2, a(n-2))-(2-a(n-1)-a(n-2))` -/
def P7696453147680006896.Spec : Prop :=
  ∀ n, P7696453147680006896.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P14567598399040502377

`floor(a(n-1)-floor(a(n-2)%2-a(n-2)))` with `a(0)=3, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A068922.P14567598399040502377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 2)) 2 - a (n - 2))

end

end A068922.P14567598399040502377

namespace A068922

/-- `floor(a(n-1)-floor(a(n-2)%2-a(n-2)))` -/
def P14567598399040502377.Spec : Prop :=
  ∀ n, P14567598399040502377.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P5851300774263320758

`A128588(n)+a(n-1)` with `a(0)=3`
-/

namespace A068922.P5851300774263320758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A128588 n + a (n - 1)

end

end A068922.P5851300774263320758

namespace A068922

/-- `A128588(n)+a(n-1)` -/
def P5851300774263320758.Spec : Prop :=
  ∀ n, P5851300774263320758.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P9802542155797787021

`∑[A173388(2*n+1)]+2`
-/

namespace A068922.P9802542155797787021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173388 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A068922.P9802542155797787021

namespace A068922

/-- `∑[A173388(2*n+1)]+2` -/
def P9802542155797787021.Spec : Prop :=
  ∀ n, P9802542155797787021.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P3561343622178153779

`a(n-1)+2*A000045(n)` with `a(0)=3, a(1)=4`
-/

namespace A068922.P3561343622178153779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + 2 * A000045 n

end

end A068922.P3561343622178153779

namespace A068922

/-- `a(n-1)+2*A000045(n)` -/
def P3561343622178153779.Spec : Prop :=
  ∀ n, P3561343622178153779.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P2389816960906517668

`C(2, n+2)+2*A000045(n+2)`
-/

namespace A068922.P2389816960906517668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + 2 * A000045 (n + 2)

end

end A068922.P2389816960906517668

namespace A068922

/-- `C(2, n+2)+2*A000045(n+2)` -/
def P2389816960906517668.Spec : Prop :=
  ∀ n, P2389816960906517668.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P7654816298641776644

`2*(a(n-1)-A000045(n-1))` with `a(0)=3, a(1)=4`
-/

namespace A068922.P7654816298641776644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  2 * (a (n - 1) - A000045 (n - 1))

end

end A068922.P7654816298641776644

namespace A068922

/-- `2*(a(n-1)-A000045(n-1))` -/
def P7654816298641776644.Spec : Prop :=
  ∀ n, P7654816298641776644.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P8619847709827116692

`A096748(A223134(n+1))`
-/

namespace A068922.P8619847709827116692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (A223134 (n + 1)).toNat

end

end A068922.P8619847709827116692

namespace A068922

/-- `A096748(A223134(n+1))` -/
def P8619847709827116692.Spec : Prop :=
  ∀ n, P8619847709827116692.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P12969455288302182359

`A097135(n)+A000032(n)`
-/

namespace A068922.P12969455288302182359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 n + A000032 n

end

end A068922.P12969455288302182359

namespace A068922

/-- `A097135(n)+A000032(n)` -/
def P12969455288302182359.Spec : Prop :=
  ∀ n, P12969455288302182359.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P18083525925420540187

`A054886(n)+A033322(n+1)`
-/

namespace A068922.P18083525925420540187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 n + A033322 (n + 1)

end

end A068922.P18083525925420540187

namespace A068922

/-- `A054886(n)+A033322(n+1)` -/
def P18083525925420540187.Spec : Prop :=
  ∀ n, P18083525925420540187.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P12335727088643254279

`A055389(n+1)+A055389(n)`
-/

namespace A068922.P12335727088643254279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (n + 1) + A055389 n

end

end A068922.P12335727088643254279

namespace A068922

/-- `A055389(n+1)+A055389(n)` -/
def P12335727088643254279.Spec : Prop :=
  ∀ n, P12335727088643254279.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P7881021650721661620

`A324969(n+1)+A020695(n)`
-/

namespace A068922.P7881021650721661620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) + A020695 n

end

end A068922.P7881021650721661620

namespace A068922

/-- `A324969(n+1)+A020695(n)` -/
def P7881021650721661620.Spec : Prop :=
  ∀ n, P7881021650721661620.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P12165281694144346187

`A373566(n+1)+A000045(n)`
-/

namespace A068922.P12165281694144346187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (n + 1) + A000045 n

end

end A068922.P12165281694144346187

namespace A068922

/-- `A373566(n+1)+A000045(n)` -/
def P12165281694144346187.Spec : Prop :=
  ∀ n, P12165281694144346187.a n = A068922 (n + 1)

end A068922

/-! ## A068922.P1004841973770512990

`A022087(n+1)-A006355(n)`
-/

namespace A068922.P1004841973770512990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (n + 1) - A006355 n

end

end A068922.P1004841973770512990

namespace A068922

/-- `A022087(n+1)-A006355(n)` -/
def P1004841973770512990.Spec : Prop :=
  ∀ n, P1004841973770512990.a n = A068922 (n + 1)

end A068922

/-!
# A068923: Number of ways to tile a 4 X n room with 1x2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068923, the canonical program `A068923.P4744788943475700446` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068923 has offset 1).

The definition of A068923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068923.P4744788943475700446

`a(n-3)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=4, a(3)=2, a(4)=3, a(5)=3, a(6)=3, a(7)=5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068923

/-- `a(n-3)+a(n-5)` -/
def P4744788943475700446.Spec : Prop :=
  ∀ n, (P4744788943475700446.a n : ℤ) = A068923 (n + 1)

theorem P4744788943475700446.correct : P4744788943475700446.Spec := by
  intro n
  simp only [A068923, Nat.add_sub_cancel]

end A068923

/-! ## A068923.P15559358261785089515

`A068920(A374004(n+1))`
-/

namespace A068923.P15559358261785089515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A374004 (n + 1)).toNat

end

end A068923.P15559358261785089515

namespace A068923

/-- `A068920(A374004(n+1))` -/
def P15559358261785089515.Spec : Prop :=
  ∀ n, P15559358261785089515.a n = A068923 (n + 1)

end A068923

/-! ## A068923.P13526123307332484323

`A068920(A056000(n)+7)`
-/

namespace A068923.P13526123307332484323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A056000 n + 7).toNat

end

end A068923.P13526123307332484323

namespace A068923

/-- `A068920(A056000(n)+7)` -/
def P13526123307332484323.Spec : Prop :=
  ∀ n, P13526123307332484323.a n = A068923 (n + 1)

end A068923

/-! ## A068923.P2526516562048921584

`A068920(A052905(n)+9)`
-/

namespace A068923.P2526516562048921584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A052905 n + 9).toNat

end

end A068923.P2526516562048921584

namespace A068923

/-- `A068920(A052905(n)+9)` -/
def P2526516562048921584.Spec : Prop :=
  ∀ n, P2526516562048921584.a n = A068923 (n + 1)

end A068923

/-! ## A068923.P14102941538463774410

`A068920(A167614(n+2)+1)`
-/

namespace A068923.P14102941538463774410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A167614 (n + 2) + 1).toNat

end

end A068923.P14102941538463774410

namespace A068923

/-- `A068920(A167614(n+2)+1)` -/
def P14102941538463774410.Spec : Prop :=
  ∀ n, P14102941538463774410.a n = A068923 (n + 1)

end A068923

/-!
# A068924: Number of ways to tile a 5 X 2n room with 1x2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068924, the canonical program `A068924.P2546220936895595989` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068924 has offset 1).

The definition of A068924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068924.P2546220936895595989

`a(n-2)+a(n-3)` with `a(0)=6, a(1)=3, a(2)=2, a(3)=2, a(4)=4, a(5)=4, a(6)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068924

/-- `a(n-2)+a(n-3)` -/
def P2546220936895595989.Spec : Prop :=
  ∀ n, (P2546220936895595989.a n : ℤ) = A068924 (n + 1)

theorem P2546220936895595989.correct : P2546220936895595989.Spec := by
  intro n
  simp only [A068924, Nat.add_sub_cancel]

end A068924

/-! ## A068924.P5687807460659098648

`Δ[A033662(record[A291289(n)])]`
-/

namespace A068924.P5687807460659098648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033662 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068924.P5687807460659098648

namespace A068924

/-- `Δ[A033662(record[A291289(n)])]` -/
def P5687807460659098648.Spec : Prop :=
  ∀ n, P5687807460659098648.a n = A068924 (n + 1)

end A068924

/-! ## A068924.P1048445632068846162

`A068920(A100038(n+2))`
-/

namespace A068924.P1048445632068846162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A100038 (n + 2)).toNat

end

end A068924.P1048445632068846162

namespace A068924

/-- `A068920(A100038(n+2))` -/
def P1048445632068846162.Spec : Prop :=
  ∀ n, P1048445632068846162.a n = A068924 (n + 1)

end A068924

/-! ## A068924.P11476133210624650313

`A068920(A374007(2*n+1)+1)`
-/

namespace A068924.P11476133210624650313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A374007 (2 * n + 1) + 1).toNat

end

end A068924.P11476133210624650313

namespace A068924

/-- `A068920(A374007(2*n+1)+1)` -/
def P11476133210624650313.Spec : Prop :=
  ∀ n, P11476133210624650313.a n = A068924 (n + 1)

end A068924

/-! ## A068924.P8994527598418181745

`A068920(A167614(2*(n+2))+2)`
-/

namespace A068924.P8994527598418181745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A167614 (2 * (n + 2)) + 2).toNat

end

end A068924.P8994527598418181745

namespace A068924

/-- `A068920(A167614(2*(n+2))+2)` -/
def P8994527598418181745.Spec : Prop :=
  ∀ n, P8994527598418181745.a n = A068924 (n + 1)

end A068924

/-!
# A068925: Number of ways to tile a 6 X n room with 1x2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068925, there is no canonical definition to state claims against.
-/

/-! ## A068925.P4293840066910810673

`A068920(A374007(n+1))`
-/

namespace A068925.P4293840066910810673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A374007 (n + 1)).toNat

end

end A068925.P4293840066910810673

/-! ## A068925.P11569188815842459564

`A068920(A046691(n+4)-1)`
-/

namespace A068925.P11569188815842459564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A046691 (n + 4) - 1).toNat

end

end A068925.P11569188815842459564

/-! ## A068925.P8248441832609051705

`A068920(A167487(n+4)-1)`
-/

namespace A068925.P8248441832609051705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A167487 (n + 4) - 1).toNat

end

end A068925.P8248441832609051705

/-! ## A068925.P17232461906553664005

`A068920(A167614(n+4)+3)`
-/

namespace A068925.P17232461906553664005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A167614 (n + 4) + 3).toNat

end

end A068925.P17232461906553664005

/-! ## A068925.P6777155838114795190

`A068920(A000124(n+5)+5)`
-/

namespace A068925.P6777155838114795190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (A000124 (n + 5) + 5).toNat

end

end A068925.P6777155838114795190

/-!
# A068926: Table read by antidiagonals: ti(r,s) is the number of incongruent ways to tile an r X s room with 1 X 2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068926, there is no canonical definition to state claims against.
-/

/-! ## A068926.P5997066746108490667

`∑{e}[A007482(A155998(n)), #]`
-/

namespace A068926.P5997066746108490667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 (A155998 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A068926.P5997066746108490667

/-! ## A068926.P4805508378921238932

`A087117(A270673(A155998(n)²))`
-/

namespace A068926.P4805508378921238932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A270673 (A155998 n ^ 2).toNat).toNat

end

end A068926.P4805508378921238932

/-! ## A068926.P6073492641403920980

`and(A003984(n), A309952(A119687(n)))`
-/

namespace A068926.P6073492641403920980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003984 n) (A309952 (A119687 n).toNat)

end

end A068926.P6073492641403920980

/-! ## A068926.P14867528782284324456

`and(A087061(n), A309952(A119687(n)))`
-/

namespace A068926.P14867528782284324456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087061 n) (A309952 (A119687 n).toNat)

end

end A068926.P14867528782284324456

/-! ## A068926.P11678873587379874908

`and(A309952(A119687(n)), A344835(n))`
-/

namespace A068926.P11678873587379874908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A309952 (A119687 n).toNat) (A344835 n)

end

end A068926.P11678873587379874908

/-!
# A068927: Number of incongruent ways to tile a 2 X n room with 1 X 2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068927, there is no canonical definition to state claims against.
-/

/-! ## A068927.P15150659930319885340

`A102543((n+2)%(2*n+1))`
-/

namespace A068927.P15150659930319885340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102543 ((n + 2) % (2 * n + 1))

end

end A068927.P15150659930319885340

/-! ## A068927.P206944751420655372

`A102543(A326178(n+1))`
-/

namespace A068927.P206944751420655372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102543 (A326178 (n + 1)).toNat

end

end A068927.P206944751420655372

/-! ## A068927.P11198631633625312421

`A102543(A171526(n+2))`
-/

namespace A068927.P11198631633625312421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102543 (A171526 (n + 2)).toNat

end

end A068927.P11198631633625312421

/-! ## A068927.P1421681624210824425

`A102543(A159075(n)+2+n)`
-/

namespace A068927.P1421681624210824425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102543 (A159075 n + 2 + (n : ℤ)).toNat

end

end A068927.P1421681624210824425

/-! ## A068927.P12845744495491930186

`A102543(and(2, A260196(n))+n)`
-/

namespace A068927.P12845744495491930186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102543 (Int.land 2 (A260196 n) + (n : ℤ)).toNat

end

end A068927.P12845744495491930186

/-! ## A068927.P10680702376720874520

`A102543(A008574(n)-A033627(n+1))`
-/

namespace A068927.P10680702376720874520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102543 (A008574 n - A033627 (n + 1)).toNat

end

end A068927.P10680702376720874520

/-! ## A068927.P9353501579115593989

`A068926(∑[n+1]+1)`
-/

namespace A068927.P9353501579115593989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A068927.P9353501579115593989

/-! ## A068927.P17245588364430624694

`or(A000007(n), A068926(A034856(n+1)))`
-/

namespace A068927.P17245588364430624694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A068926 (A034856 (n + 1)).toNat)

end

end A068927.P17245588364430624694

/-! ## A068927.P6513319394854465967

`A102543(A293754(n+1))`
-/

namespace A068927.P6513319394854465967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102543 (A293754 (n + 1)).toNat

end

end A068927.P6513319394854465967

/-!
# A068928: Number of incongruent ways to tile a 3 X 2n room with 1x2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068928, the canonical program `A068928.P9095793775632633845` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068928 has offset 1).

The definition of A068928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068928.P9095793775632633845

`a(n-1)+2*a(n-2)-a(n-3)-a(n-5)-a(n-6)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=4, a(4)=5, a(5)=9, a(6)=12`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068928

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-5)-a(n-6)` -/
def P9095793775632633845.Spec : Prop :=
  ∀ n, P9095793775632633845.a n = A068928 (n + 1)

theorem P9095793775632633845.correct : P9095793775632633845.Spec := by
  intro n
  simp only [A068928, Nat.add_sub_cancel]

end A068928

/-! ## A068928.P9999175416867916252

`A001224(abs(1-n)+2)`
-/

namespace A068928.P9999175416867916252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (|1 - (n : ℤ)| + 2).toNat

end

end A068928.P9999175416867916252

namespace A068928

/-- `A001224(abs(1-n)+2)` -/
def P9999175416867916252.Spec : Prop :=
  ∀ n, P9999175416867916252.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P8171225804480984401

`floor(A001224(n+1)+acot(n))`
-/

namespace A068928.P8171225804480984401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001224 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A068928.P8171225804480984401

namespace A068928

/-- `floor(A001224(n+1)+acot(n))` -/
def P8171225804480984401.Spec : Prop :=
  ∀ n, P8171225804480984401.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P3551067712090725573

`A060312(n+1)+C(n, n²)`
-/

namespace A068928.P3551067712090725573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A068928.P3551067712090725573

namespace A068928

/-- `A060312(n+1)+C(n, n²)` -/
def P3551067712090725573.Spec : Prop :=
  ∀ n, P3551067712090725573.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P4908481271054467995

`A060312(a(2%n)+n-1)` with `a(0)=2, a(1)=2`
-/

namespace A068928.P4908481271054467995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A060312 (a (2 % n) + ((n : ℤ) - 1)).toNat

end

end A068928.P4908481271054467995

namespace A068928

/-- `A060312(a(2%n)+n-1)` -/
def P4908481271054467995.Spec : Prop :=
  ∀ n, P4908481271054467995.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P17522131605509509660

`A001224(n+1)+A000007(n)`
-/

namespace A068928.P17522131605509509660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) + A000007 n

end

end A068928.P17522131605509509660

namespace A068928

/-- `A001224(n+1)+A000007(n)` -/
def P17522131605509509660.Spec : Prop :=
  ∀ n, P17522131605509509660.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P8733677445672810562

`A001224(n+1)*A054977(n)`
-/

namespace A068928.P8733677445672810562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) * A054977 n

end

end A068928.P8733677445672810562

namespace A068928

/-- `A001224(n+1)*A054977(n)` -/
def P8733677445672810562.Spec : Prop :=
  ∀ n, P8733677445672810562.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P147611114875754596

`A060312(n+1)*A141044(n)`
-/

namespace A068928.P147611114875754596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (n + 1) * A141044 n

end

end A068928.P147611114875754596

namespace A068928

/-- `A060312(n+1)*A141044(n)` -/
def P147611114875754596.Spec : Prop :=
  ∀ n, P147611114875754596.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P13148255435353742246

`A000038(n)!*A001224(n+1)`
-/

namespace A068928.P13148255435353742246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A001224 (n + 1)

end

end A068928.P13148255435353742246

namespace A068928

/-- `A000038(n)!*A001224(n+1)` -/
def P13148255435353742246.Spec : Prop :=
  ∀ n, P13148255435353742246.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P17350837049857826552

`A001224(n+1)+A057428(n)+1`
-/

namespace A068928.P17350837049857826552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) + (A057428 n + 1)

end

end A068928.P17350837049857826552

namespace A068928

/-- `A001224(n+1)+A057428(n)+1` -/
def P17350837049857826552.Spec : Prop :=
  ∀ n, P17350837049857826552.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P11774435746337030898

`A063524(n+1)+A001224(n+1)`
-/

namespace A068928.P11774435746337030898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A001224 (n + 1)

end

end A068928.P11774435746337030898

namespace A068928

/-- `A063524(n+1)+A001224(n+1)` -/
def P11774435746337030898.Spec : Prop :=
  ∀ n, P11774435746337030898.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P11763575069412306016

`A060312(n+1)+A019590(n+1)`
-/

namespace A068928.P11763575069412306016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (n + 1) + A019590 (n + 1)

end

end A068928.P11763575069412306016

namespace A068928

/-- `A060312(n+1)+A019590(n+1)` -/
def P11763575069412306016.Spec : Prop :=
  ∀ n, P11763575069412306016.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P9972519107815890942

`A001224(n+1)-A159075(n+1)`
-/

namespace A068928.P9972519107815890942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) - A159075 (n + 1)

end

end A068928.P9972519107815890942

namespace A068928

/-- `A001224(n+1)-A159075(n+1)` -/
def P9972519107815890942.Spec : Prop :=
  ∀ n, P9972519107815890942.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P12770731849677350897

`A060312(A004280(n+1)+2-n)`
-/

namespace A068928.P12770731849677350897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A004280 (n + 1) + (2 - (n : ℤ))).toNat

end

end A068928.P12770731849677350897

namespace A068928

/-- `A060312(A004280(n+1)+2-n)` -/
def P12770731849677350897.Spec : Prop :=
  ∀ n, P12770731849677350897.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P17364212177734255948

`A001224(n+1)+A008452(n)%2`
-/

namespace A068928.P17364212177734255948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) + Int.tmod (A008452 n) 2

end

end A068928.P17364212177734255948

namespace A068928

/-- `A001224(n+1)+A008452(n)%2` -/
def P17364212177734255948.Spec : Prop :=
  ∀ n, P17364212177734255948.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P10134841423944326064

`lcm(A060312(n+1), A171624(n+2))`
-/

namespace A068928.P10134841423944326064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060312 (n + 1)) (A171624 (n + 2))

end

end A068928.P10134841423944326064

namespace A068928

/-- `lcm(A060312(n+1), A171624(n+2))` -/
def P10134841423944326064.Spec : Prop :=
  ∀ n, (P10134841423944326064.a n : ℤ) = A068928 (n + 1)

end A068928

/-! ## A068928.P4119993058100710224

`A001224(n+1)+and(1, A022144(n))`
-/

namespace A068928.P4119993058100710224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) + Int.land 1 (A022144 n)

end

end A068928.P4119993058100710224

namespace A068928

/-- `A001224(n+1)+and(1, A022144(n))` -/
def P4119993058100710224.Spec : Prop :=
  ∀ n, P4119993058100710224.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P14837178753877626212

`(A348776(n+1)-n)*A060312(n+1)`
-/

namespace A068928.P14837178753877626212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348776 (n + 1) - (n : ℤ)) * A060312 (n + 1)

end

end A068928.P14837178753877626212

namespace A068928

/-- `(A348776(n+1)-n)*A060312(n+1)` -/
def P14837178753877626212.Spec : Prop :=
  ∀ n, P14837178753877626212.a n = A068928 (n + 1)

end A068928

/-! ## A068928.P8069093025813771672

`A001224(n+1)+and(1, record[A000010(n+1)])`
-/

namespace A068928.P8069093025813771672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) + Int.land 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A068928.P8069093025813771672

namespace A068928

/-- `A001224(n+1)+and(1, record[A000010(n+1)])` -/
def P8069093025813771672.Spec : Prop :=
  ∀ n, P8069093025813771672.a n = A068928 (n + 1)

end A068928

/-!
# A068929: Number of incongruent ways to tile a 4 X n room with 1 X 2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068929, there is no canonical definition to state claims against.
-/

/-! ## A068929.P16140639597467502274

`A068926(∑[n+3]+6)`
-/

namespace A068929.P16140639597467502274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A068929.P16140639597467502274

/-! ## A068929.P11907718420091470708

`A068926(A046691(n+2))%A016950(n)`
-/

namespace A068929.P11907718420091470708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068926 (A046691 (n + 2)).toNat) (A016950 n)

end

end A068929.P11907718420091470708

/-! ## A068929.P14056240382469207259

`A068926(A167614(n+2))%A096946(n)`
-/

namespace A068929.P14056240382469207259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068926 (A167614 (n + 2)).toNat) (A096946 n)

end

end A068929.P14056240382469207259

/-! ## A068929.P12510980892002978975

`or(A000007(n), A068926(A046691(n+2)))`
-/

namespace A068929.P12510980892002978975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A068926 (A046691 (n + 2)).toNat)

end

end A068929.P12510980892002978975

/-! ## A068929.P1114686651872117879

`A033999(2*n)*A068926(A046691(n+2))`
-/

namespace A068929.P1114686651872117879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A068926 (A046691 (n + 2)).toNat

end

end A068929.P1114686651872117879

/-! ## A068929.P2696590753476696426

`A068926(A046691(n+2))*A269910(2*n)`
-/

namespace A068929.P2696590753476696426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A046691 (n + 2)).toNat * A269910 (2 * n)

end

end A068929.P2696590753476696426

/-! ## A068929.P11394070638267179493

`gcd(A055672(4*n), A068926(A046691(n+2)))`
-/

namespace A068929.P11394070638267179493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055672 (4 * n)) (A068926 (A046691 (n + 2)).toNat)

end

end A068929.P11394070638267179493

/-! ## A068929.P10151190929483756333

`A068926(A046691(n+2))+char[A234146(n+1)]`
-/

namespace A068929.P10151190929483756333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234146 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A068929.P10151190929483756333

/-! ## A068929.P15091602232699400047

`A068926(A046691(n+2))+char[A234152(n+1)]`
-/

namespace A068929.P15091602232699400047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234152 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A068929.P15091602232699400047

/-! ## A068929.P16897983315856094741

`A068926(A046691(n+2))+char[A234163(n+1)]`
-/

namespace A068929.P16897983315856094741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234163 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A068929.P16897983315856094741

/-! ## A068929.P14806892740595864904

`A014963(10*(n+1))*A068926(A046691(n+2))`
-/

namespace A068929.P14806892740595864904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A068926 (A046691 (n + 2)).toNat

end

end A068929.P14806892740595864904

/-! ## A068929.P13089766635269958346

`A068926(A046691(n+2))+(2*A004273(n))%2`
-/

namespace A068929.P13089766635269958346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A046691 (n + 2)).toNat + Int.tmod (2 * A004273 n) 2

end

end A068929.P13089766635269958346

/-! ## A068929.P10684969558509307724

`A068926(A167614(n+2))*A263025(A001316(n))`
-/

namespace A068929.P10684969558509307724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A167614 (n + 2)).toNat * A263025 (A001316 n).toNat

end

end A068929.P10684969558509307724

/-! ## A068929.P14527827489024872538

`A001222(A065047(n+1))*A068926(A046691(n+2))`
-/

namespace A068929.P14527827489024872538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065047 (n + 1)).toNat * A068926 (A046691 (n + 2)).toNat

end

end A068929.P14527827489024872538

/-! ## A068929.P4122113738127256421

`A001222(A002476(n+1))*A068926(A167614(n+2))`
-/

namespace A068929.P4122113738127256421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * A068926 (A167614 (n + 2)).toNat

end

end A068929.P4122113738127256421

/-! ## A068929.P5819322665044241729

`A068926(A046691(n+2))*A136522(A001222(n+1))`
-/

namespace A068929.P5819322665044241729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A046691 (n + 2)).toNat * A136522 (A001222 (n + 1)).toNat

end

end A068929.P5819322665044241729

/-! ## A068929.P1767512620723912339

`A068926(A046691(n+2))/A003557(A000040(n+1))`
-/

namespace A068929.P1767512620723912339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068926 (A046691 (n + 2)).toNat : ℚ) / (A003557 (A000040 (n + 1)).toNat : ℚ)

end

end A068929.P1767512620723912339

/-!
# A068930: Number of incongruent ways to tile a 5 X 2n room with 1x2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068930, there is no canonical definition to state claims against.
-/

/-! ## A068930.P13710412641515842501

`A068926(A054000(n+3)+n)`
-/

namespace A068930.P13710412641515842501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A054000 (n + 3) + (n : ℤ)).toNat

end

end A068930.P13710412641515842501

/-! ## A068930.P5939396320051220345

`A068926(A167614(2*(n+2))+1)`
-/

namespace A068930.P5939396320051220345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A167614 (2 * (n + 2)) + 1).toNat

end

end A068930.P5939396320051220345

/-! ## A068930.P6715015827182134360

`A068926(A000217(2*(n+3))-5)`
-/

namespace A068930.P6715015827182134360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A000217 (2 * (n + 3)) - 5).toNat

end

end A068930.P6715015827182134360

/-! ## A068930.P16430957920326176290

`A068926(A100038(n+2)-1)`
-/

namespace A068930.P16430957920326176290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A100038 (n + 2) - 1).toNat

end

end A068930.P16430957920326176290

/-!
# A068931: Number of incongruent ways to tile a 6 X n room with 1x2 Tatami mats. At most 3 Tatami mats may meet at a point.

The programs for A068931, there is no canonical definition to state claims against.
-/

/-! ## A068931.P5774558550933063098

`A068926(A055999(n+3))`
-/

namespace A068931.P5774558550933063098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A055999 (n + 3)).toNat

end

end A068931.P5774558550933063098

/-! ## A068931.P13703330201885744551

`A068926(A167499(n+4))`
-/

namespace A068931.P13703330201885744551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A167499 (n + 4)).toNat

end

end A068931.P13703330201885744551

/-! ## A068931.P2765347159000097950

`A068926(A000096(n+4)+6)`
-/

namespace A068931.P2765347159000097950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A000096 (n + 4) + 6).toNat

end

end A068931.P2765347159000097950

/-! ## A068931.P7931491018047401529

`A068926(A000217(n+6)-6)`
-/

namespace A068931.P7931491018047401529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (A000217 (n + 6) - 6).toNat

end

end A068931.P7931491018047401529

/-! ## A068931.P470272868454478617

`A068926(Δ[A023545(n+2)]-2)`
-/

namespace A068931.P470272868454478617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (f1 (n + 1) - f1 n - 2).toNat

end

end A068931.P470272868454478617

/-! ## A068931.P16929012774011358763

`A068926(2*n+A155212(n)+13)`
-/

namespace A068931.P16929012774011358763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 ((2 * n : ℤ) + (A155212 n + 13)).toNat

end

end A068931.P16929012774011358763

/-! ## A068931.P11249993468647417354

`A068926(2*n+A056000(n)+15)`
-/

namespace A068931.P11249993468647417354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 ((2 * n : ℤ) + (A056000 n + 15)).toNat

end

end A068931.P11249993468647417354

/-!
# A068932: Number of disconnected regular graphs with n nodes.

The programs for A068932, there is no canonical definition to state claims against.
-/

/-! ## A068932.P12325474005442091590

`A005176(n)-A005177(n)`
-/

namespace A068932.P12325474005442091590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 n - A005177 n

end

end A068932.P12325474005442091590

/-! ## A068932.P17489704428550064291

`A210713(n)+A185214(n)`
-/

namespace A068932.P17489704428550064291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 n + A185214 n

end

end A068932.P17489704428550064291

/-! ## A068932.P8560668523187785954

`A185215(n)+A210714(n)+A210713(n)`
-/

namespace A068932.P8560668523187785954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n + (A210714 n + A210713 n)

end

end A068932.P8560668523187785954

/-! ## A068932.P12414976357245822315

`A185214(n)-(A025439(n)-A210713(n))`
-/

namespace A068932.P12414976357245822315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 n - (A025439 n - A210713 n)

end

end A068932.P12414976357245822315

/-! ## A068932.P8281082015434780764

`A185214(n)-(A025443(n)-A210713(n))`
-/

namespace A068932.P8281082015434780764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 n - (A025443 n - A210713 n)

end

end A068932.P8281082015434780764

/-!
# A068933: Triangular array D(n, r) = number of disconnected r-regular graphs with n nodes, 0 <= r < n.

The programs for A068933, there is no canonical definition to state claims against.
-/

/-! ## A068933.P9882805903886824792

`A051031(n+1)-A068934(n+1)`
-/

namespace A068933.P9882805903886824792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051031 (n + 1) - A068934 (n + 1)

end

end A068933.P9882805903886824792

/-! ## A068933.P8363956637202346022

`A068934(A127739(n+1)-A004197(n))-A068934(n+1)`
-/

namespace A068933.P8363956637202346022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (A127739 (n + 1) - A004197 n).toNat - A068934 (n + 1)

end

end A068933.P8363956637202346022

/-! ## A068933.P4395859586160196426

`A068934(A004736(n+1)+n-A004197(n))-A068934(n+1)`
-/

namespace A068933.P4395859586160196426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (A004736 (n + 1) + (n : ℤ) - A004197 n).toNat - A068934 (n + 1)

end

end A068933.P4395859586160196426

/-! ## A068933.P10156138810828620545

`A109036(A136489(n)%A109128(n))-A068934(n+1)`
-/

namespace A068933.P10156138810828620545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109036 (Int.tmod (A136489 n) (A109128 n)).toNat - A068934 (n + 1)

end

end A068933.P10156138810828620545

/-! ## A068933.P18018486305834278975

`A068063(A008327(n)*A319367(n+1))-A068934(n+1)`
-/

namespace A068933.P18018486305834278975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A008327 n * A319367 (n + 1)).toNat - A068934 (n + 1)

end

end A068933.P18018486305834278975

/-!
# A068934: Triangular array C(n, r) = number of connected r-regular graphs with n nodes, 0 <= r < n.

The programs for A068934, there is no canonical definition to state claims against.
-/

/-! ## A068934.P17145347006076025597

`A051031(n+1)-A068933(n+1)`
-/

namespace A068934.P17145347006076025597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051031 (n + 1) - A068933 (n + 1)

end

end A068934.P17145347006076025597

/-! ## A068934.P8072642409958844709

`A109036(A136489(n)%A109128(n))-A068933(n+1)`
-/

namespace A068934.P8072642409958844709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109036 (Int.tmod (A136489 n) (A109128 n)).toNat - A068933 (n + 1)

end

end A068934.P8072642409958844709

/-! ## A068934.P16384825437543404996

`A068063(A008327(n)*A319367(n+1))-A068933(n+1)`
-/

namespace A068934.P16384825437543404996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A008327 n * A319367 (n + 1)).toNat - A068933 (n + 1)

end

end A068934.P16384825437543404996

/-! ## A068934.P11445121149547757351

`A068063(A008327(n)*A319372(n+1))-A068933(n+1)`
-/

namespace A068934.P11445121149547757351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A008327 n * A319372 (n + 1)).toNat - A068933 (n + 1)

end

end A068934.P11445121149547757351

/-! ## A068934.P3064623743971015266

`A089224(A324163(n+1))`
-/

namespace A068934.P3064623743971015266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089224 (A324163 (n + 1)).toNat

end

end A068934.P3064623743971015266

/-!
# A068935: Numbers having the sum of distinct prime factors less than the sum of exponents in prime factorization, A008472(n) < A001222(n).

The programs for A068935, the canonical program `A068935.P4577287346479206466` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068935 has offset 1).

The definition of A068935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068935.P4577287346479206466

`lt[A008472(n+1), A001222(n+1)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068935

/-- `lt[A008472(n+1), A001222(n+1)]+1` -/
def P4577287346479206466.Spec : Prop :=
  ∀ n, (P4577287346479206466.a n : ℤ) = A068935 (n + 1)

theorem P4577287346479206466.correct : P4577287346479206466.Spec := by
  intro n
  simp only [A068935, Nat.add_sub_cancel]

end A068935

/-! ## A068935.P908898095847269167

`lt[A055631(n+1), A046660(n+1)]+1`
-/

namespace A068935.P908898095847269167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068935.P908898095847269167

namespace A068935

/-- `lt[A055631(n+1), A046660(n+1)]+1` -/
def P908898095847269167.Spec : Prop :=
  ∀ n, (P908898095847269167.a n : ℤ) = A068935 (n + 1)

end A068935

/-! ## A068935.P9728222621514313515

`lt[A008474(n+1), A255201(n+1)]+1`
-/

namespace A068935.P9728222621514313515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068935.P9728222621514313515

namespace A068935

/-- `lt[A008474(n+1), A255201(n+1)]+1` -/
def P9728222621514313515.Spec : Prop :=
  ∀ n, (P9728222621514313515.a n : ℤ) = A068935 (n + 1)

end A068935

/-! ## A068935.P4157105053872424551

`lt[A008472(n+1), log2(A061142(n+1))]+1`
-/

namespace A068935.P4157105053872424551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A068935.P4157105053872424551

namespace A068935

/-- `lt[A008472(n+1), log2(A061142(n+1))]+1` -/
def P4157105053872424551.Spec : Prop :=
  ∀ n, (P4157105053872424551.a n : ℤ) = A068935 (n + 1)

end A068935

/-! ## A068935.P10939353631509199110

`lt[A275314(n+1), A280292(n+1)+1]+1`
-/

namespace A068935.P10939353631509199110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068935.P10939353631509199110

namespace A068935

/-- `lt[A275314(n+1), A280292(n+1)+1]+1` -/
def P10939353631509199110.Spec : Prop :=
  ∀ n, (P10939353631509199110.a n : ℤ) = A068935 (n + 1)

end A068935

/-!
# A068936: Numbers having the sum of distinct prime factors not greater than the sum of exponents in prime factorization, A008472(k) <= A001222(k).

The programs for A068936, there is no canonical definition to state claims against.
-/

/-! ## A068936.P11121229387275230108

`∪[A054411(n+1), A068935(n+1)]`
-/

namespace A068936.P11121229387275230108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068936.P11121229387275230108

/-! ## A068936.P11369116141384248942

`lt[A008472(n+1), A001222(n+1)+1]+1`
-/

namespace A068936.P11369116141384248942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068936.P11369116141384248942

/-! ## A068936.P395415250933596089

`lt[A008472(n+1), log2(A061142(n+1))+1]+1`
-/

namespace A068936.P395415250933596089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A068936.P395415250933596089

/-! ## A068936.P2805085138508463592

`lt[A075653(n+1)-(n+1), A001222(2*(n+1))]+1`
-/

namespace A068936.P2805085138508463592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068936.P2805085138508463592

/-! ## A068936.P10671432496907939803

`filter[A341645(n+1), A143222(#)]`
-/

namespace A068936.P10671432496907939803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143222 (f1 j).toNat = 1) n)

end

end A068936.P10671432496907939803

/-!
# A068937: Numbers having the sum of distinct prime factors not less than the sum of exponents in prime factorization, A008472(n)>=A001222(n).

The programs for A068937, the canonical program `A068937.P5265066105242018592` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068937 has offset 1).

The definition of A068937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068937.P5265066105242018592

`comp[A068935(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068937

/-- `comp[A068935(n+1)-1]+1` -/
def P5265066105242018592.Spec : Prop :=
  ∀ n, (P5265066105242018592.a n : ℤ) = A068937 (n + 1)

theorem P5265066105242018592.correct : P5265066105242018592.Spec := by
  intro n
  simp only [A068937, Nat.add_sub_cancel]

end A068937

/-! ## A068937.P11993409689011982882

`∪[A054411(n+1), A068938(n+1)]`
-/

namespace A068937.P11993409689011982882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068937.P11993409689011982882

namespace A068937

/-- `∪[A054411(n+1), A068938(n+1)]` -/
def P11993409689011982882.Spec : Prop :=
  ∀ n, (P11993409689011982882.a n : ℤ) = A068937 (n + 1)

end A068937

/-! ## A068937.P2939414159627196279

`comp[lt[A008472(n+1), A001222(n+1)]]+1`
-/

namespace A068937.P2939414159627196279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A068937.P2939414159627196279

namespace A068937

/-- `comp[lt[A008472(n+1), A001222(n+1)]]+1` -/
def P2939414159627196279.Spec : Prop :=
  ∀ n, (P2939414159627196279.a n : ℤ) = A068937 (n + 1)

end A068937

/-! ## A068937.P18411721553416373065

`lt[A280292(n+1), A275314(n+1)]+1`
-/

namespace A068937.P18411721553416373065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068937.P18411721553416373065

namespace A068937

/-- `lt[A280292(n+1), A275314(n+1)]+1` -/
def P18411721553416373065.Spec : Prop :=
  ∀ n, (P18411721553416373065.a n : ℤ) = A068937 (n + 1)

end A068937

/-! ## A068937.P18336376591916079225

`comp[A233583(A068935(n+1))]+1`
-/

namespace A068937.P18336376591916079225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A068935 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A068937.P18336376591916079225

namespace A068937

/-- `comp[A233583(A068935(n+1))]+1` -/
def P18336376591916079225.Spec : Prop :=
  ∀ n, (P18336376591916079225.a n : ℤ) = A068937 (n + 1)

end A068937

/-! ## A068937.P4900533739935696590

`lt[A028961(n), A006641(A102376(n))]`
-/

namespace A068937.P4900533739935696590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006641 (A102376 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068937.P4900533739935696590

namespace A068937

/-- `lt[A028961(n), A006641(A102376(n))]` -/
def P4900533739935696590.Spec : Prop :=
  ∀ n, (P4900533739935696590.a n : ℤ) = A068937 (n + 1)

end A068937

/-! ## A068937.P14877229574964171747

`record[(n+1)%A285454(A173557(n+1))]`
-/

namespace A068937.P14877229574964171747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A285454 (A173557 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068937.P14877229574964171747

namespace A068937

/-- `record[(n+1)%A285454(A173557(n+1))]` -/
def P14877229574964171747.Spec : Prop :=
  ∀ n, P14877229574964171747.a n = A068937 (n + 1)

end A068937

/-! ## A068937.P4457999726253325999

`lt[A213377(A253641(n)), A275512(n+1)]`
-/

namespace A068937.P4457999726253325999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213377 (A253641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068937.P4457999726253325999

namespace A068937

/-- `lt[A213377(A253641(n)), A275512(n+1)]` -/
def P4457999726253325999.Spec : Prop :=
  ∀ n, (P4457999726253325999.a n : ℤ) = A068937 (n + 1)

end A068937

/-! ## A068937.P4893484934908700337

`lt[A253641(n)!, A217871(n)]`
-/

namespace A068937.P4893484934908700337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A253641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068937.P4893484934908700337

namespace A068937

/-- `lt[A253641(n)!, A217871(n)]` -/
def P4893484934908700337.Spec : Prop :=
  ∀ n, (P4893484934908700337.a n : ℤ) = A068937 (n + 1)

end A068937

/-! ## A068937.P14201147034174168554

`lt[A095983(A253641(n)), A329313(n)]`
-/

namespace A068937.P14201147034174168554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095983 (A253641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068937.P14201147034174168554

namespace A068937

/-- `lt[A095983(A253641(n)), A329313(n)]` -/
def P14201147034174168554.Spec : Prop :=
  ∀ n, (P14201147034174168554.a n : ℤ) = A068937 (n + 1)

end A068937

/-!
# A068938: Numbers having the sum of distinct prime factors greater than the sum of exponents in prime factorization, A008472(n)>A001222(n).

The programs for A068938, the canonical program `A068938.P9398253078699903540` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068938 has offset 1).

The definition of A068938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068938.P12405972054708106433

`comp[A068936(n+1)-1]+1`
-/

namespace A068938.P12405972054708106433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068936 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A068938.P12405972054708106433

namespace A068938

/-- `comp[A068936(n+1)-1]+1` -/
def P12405972054708106433.Spec : Prop :=
  ∀ n, (P12405972054708106433.a n : ℤ) = A068938 (n + 1)

end A068938

/-! ## A068938.P9398253078699903540

`lt[A001222(n+1), A008472(n+1)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068938

/-- `lt[A001222(n+1), A008472(n+1)]+1` -/
def P9398253078699903540.Spec : Prop :=
  ∀ n, (P9398253078699903540.a n : ℤ) = A068938 (n + 1)

theorem P9398253078699903540.correct : P9398253078699903540.Spec := by
  intro n
  simp only [A068938, Nat.add_sub_cancel]

end A068938

/-! ## A068938.P4848002174195566363

`lt[log2(A061142(n+1)), A008472(n+1)]+1`
-/

namespace A068938.P4848002174195566363
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A068938.P4848002174195566363

namespace A068938

/-- `lt[log2(A061142(n+1)), A008472(n+1)]+1` -/
def P4848002174195566363.Spec : Prop :=
  ∀ n, (P4848002174195566363.a n : ℤ) = A068938 (n + 1)

end A068938

/-! ## A068938.P4279543526177283461

`eq[char[A068936(n+1)], A000007(n)]`
-/

namespace A068938.P4279543526177283461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068936 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A068938.P4279543526177283461

namespace A068938

/-- `eq[char[A068936(n+1)], A000007(n)]` -/
def P4279543526177283461.Spec : Prop :=
  ∀ n, (P4279543526177283461.a n : ℤ) = A068938 (n + 1)

end A068938

/-! ## A068938.P1838550139887377497

`eq[char[A068936(n+1)], A000038(n)]`
-/

namespace A068938.P1838550139887377497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068936 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A068938.P1838550139887377497

namespace A068938

/-- `eq[char[A068936(n+1)], A000038(n)]` -/
def P1838550139887377497.Spec : Prop :=
  ∀ n, (P1838550139887377497.a n : ℤ) = A068938 (n + 1)

end A068938

/-! ## A068938.P594316930413519846

`eq[char[A068936(n+1)], A036987(2*n)]`
-/

namespace A068938.P594316930413519846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068936 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A068938.P594316930413519846

namespace A068938

/-- `eq[char[A068936(n+1)], A036987(2*n)]` -/
def P594316930413519846.Spec : Prop :=
  ∀ n, (P594316930413519846.a n : ℤ) = A068938 (n + 1)

end A068938

/-! ## A068938.P17863923218460688869

`lt[A046660(n+1), A055631(n+1)]+1`
-/

namespace A068938.P17863923218460688869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068938.P17863923218460688869

namespace A068938

/-- `lt[A046660(n+1), A055631(n+1)]+1` -/
def P17863923218460688869.Spec : Prop :=
  ∀ n, (P17863923218460688869.a n : ℤ) = A068938 (n + 1)

end A068938

/-! ## A068938.P9990727609975197693

`lt[A255201(n+1), A008474(n+1)]+1`
-/

namespace A068938.P9990727609975197693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068938.P9990727609975197693

namespace A068938

/-- `lt[A255201(n+1), A008474(n+1)]+1` -/
def P9990727609975197693.Spec : Prop :=
  ∀ n, (P9990727609975197693.a n : ℤ) = A068938 (n + 1)

end A068938

/-! ## A068938.P6945767686883698637

`eq[char[A068936(n+1)], A061397(2*(n+1))]`
-/

namespace A068938.P6945767686883698637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068936 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A068938.P6945767686883698637

namespace A068938

/-- `eq[char[A068936(n+1)], A061397(2*(n+1))]` -/
def P6945767686883698637.Spec : Prop :=
  ∀ n, (P6945767686883698637.a n : ℤ) = A068938 (n + 1)

end A068938

/-! ## A068938.P2416343232906445256

`A361395(A293754(n+2))`
-/

namespace A068938.P2416343232906445256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361395 (A293754 (n + 2)).toNat

end

end A068938.P2416343232906445256

namespace A068938

/-- `A361395(A293754(n+2))` -/
def P2416343232906445256.Spec : Prop :=
  ∀ n, P2416343232906445256.a n = A068938 (n + 1)

end A068938

/-!
# A068939: a(n) = Bell(n^2), where Bell(n) are the Bell numbers, cf. A000110.

The programs for A068939, there is no canonical definition to state claims against.
-/

/-! ## A068939.P6702662894390689642

`A000110(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068939.P6702662894390689642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n ^ 2)

end

end A068939.P6702662894390689642

/-! ## A068939.P10283129056097046954

`abs(A292935(n²))`
-/

namespace A068939.P10283129056097046954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 (n ^ 2)|

end

end A068939.P10283129056097046954

/-! ## A068939.P4704552169610570335

`A188164(2*n²)`
-/

namespace A068939.P4704552169610570335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (2 * n ^ 2)

end

end A068939.P4704552169610570335

/-! ## A068939.P1957022155419179131

`A011971(C(n²+1, 2))`
-/

namespace A068939.P1957022155419179131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (Nat.choose (n ^ 2 + 1) 2)

end

end A068939.P1957022155419179131

/-! ## A068939.P17799161932515856320

`A283424(C(n, 2)*∑[2*n])`
-/

namespace A068939.P17799161932515856320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A068939.P17799161932515856320

/-!
# A068940: Maximum number of chess queens that can be placed on a 3-dimensional chessboard of order n so that no two queens attack each other.

The programs for A068940, there is no canonical definition to state claims against.
-/

/-! ## A068940.P6341082980517470086

`A039996(A046867(n+1))+A034828(n)`
-/

namespace A068940.P6341082980517470086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A046867 (n + 1)).toNat + A034828 n

end

end A068940.P6341082980517470086

/-! ## A068940.P9282221696232382560

`A084616(A084626(n))-A284606(n+1)`
-/

namespace A068940.P9282221696232382560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084616 (A084626 n).toNat - A284606 (n + 1)

end

end A068940.P9282221696232382560

/-! ## A068940.P3641878439249969776

`A351620(n+1)-A011685(A120849(n))`
-/

namespace A068940.P3641878439249969776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351620 (n + 1) - A011685 (A120849 n).toNat

end

end A068940.P3641878439249969776

/-!
# A068941: Maximum number of chess queens that can be placed on a 4-dimensional chessboard of order n so that no two attack each other.

The programs for A068941, there is no canonical definition to state claims against.
-/

/-! ## A068941.P2282389954179247323

`A006590(A320850(n+4))`
-/

namespace A068941.P2282389954179247323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (A320850 (n + 4)).toNat

end

end A068941.P2282389954179247323

/-! ## A068941.P14224999873107970640

`A347115(2*n+1)+A309479(2*n)`
-/

namespace A068941.P14224999873107970640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347115 (2 * n + 1) + A309479 (2 * n)

end

end A068941.P14224999873107970640

/-! ## A068941.P5896797904837651466

`(n^4+11*n²)/12+A000700(3*n+1)-A308680(n+1)`
-/

namespace A068941.P5896797904837651466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + 11 * n ^ 2 : ℚ) / 12 + (A000700 (3 * n + 1) - A308680 (n + 1) : ℚ)

end

end A068941.P5896797904837651466

/-!
# A068942: a(n) = Bo(n^2), n=0,1..., where Bo(n) are the ordered Bell numbers, A000670.

The programs for A068942, there is no canonical definition to state claims against.
-/

/-! ## A068942.P15418954447328574845

`A000670(n²)`
-/

namespace A068942.P15418954447328574845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n ^ 2)

end

end A068942.P15418954447328574845

/-! ## A068942.P3530703708206193510

`A052875(n²)+1`
-/

namespace A068942.P3530703708206193510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 (n ^ 2) + 1

end

end A068942.P3530703708206193510

/-! ## A068942.P3777977903993032266

`A076726(n²)/2`
-/

namespace A068942.P3777977903993032266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 (n ^ 2) : ℚ) / 2

end

end A068942.P3777977903993032266

/-! ## A068942.P14546229153520860754

`ceil(A007047(n²)/4)`
-/

namespace A068942.P14546229153520860754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007047 (n ^ 2) : ℚ) / 4⌉

end

end A068942.P14546229153520860754

/-!
# A068944: Highest power of 9 dividing A068943(n) for n>0.

The programs for A068944, there is no canonical definition to state claims against.
-/

/-! ## A068944.P17930581148216712258

`A004524(A242781(n)+A111429(n))`
-/

namespace A068944.P17930581148216712258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A242781 n + A111429 n).toNat

end

end A068944.P17930581148216712258

/-! ## A068944.P16062956217620091444

`A004526(A242781(n)+A111429(n))`
-/

namespace A068944.P16062956217620091444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A242781 n + A111429 n).toNat

end

end A068944.P16062956217620091444

/-! ## A068944.P11190189307868725701

`A004524(A330168(n)+A242781(n))`
-/

namespace A068944.P11190189307868725701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A330168 n + A242781 n).toNat

end

end A068944.P11190189307868725701

/-! ## A068944.P4473304102315597177

`A004524(or(A002265(n), A242781(n)))`
-/

namespace A068944.P4473304102315597177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor (A002265 n) (A242781 n)).toNat

end

end A068944.P4473304102315597177

/-! ## A068944.P7896327449449684807

`A004526(or(A002265(n), A242781(n)))`
-/

namespace A068944.P7896327449449684807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor (A002265 n) (A242781 n)).toNat

end

end A068944.P7896327449449684807

/-!
# A068945: Number of ones in the binary expansion of A068943(n).

The programs for A068945, there is no canonical definition to state claims against.
-/

/-! ## A068945.P9676116764358361042

`A278495(A145867(n)+n)`
-/

namespace A068945.P9676116764358361042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278495 (A145867 n + (n : ℤ)).toNat

end

end A068945.P9676116764358361042

/-! ## A068945.P18036093382264656940

`A340853(n+1)+A130348(A020078(n))`
-/

namespace A068945.P18036093382264656940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340853 (n + 1) + A130348 (A020078 n).toNat

end

end A068945.P18036093382264656940

/-! ## A068945.P1562128758348158123

`or(A052409(n+1), A130348(A020078(n)))`
-/

namespace A068945.P1562128758348158123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052409 (n + 1)) (A130348 (A020078 n).toNat)

end

end A068945.P1562128758348158123

/-!
# A068946: Number of digits in A068943.

The programs for A068946, there is no canonical definition to state claims against.
-/

/-! ## A068946.P14729525159441810250

`A008620(A150129(n)-A203611(n))`
-/

namespace A068946.P14729525159441810250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A150129 n - A203611 n).toNat

end

end A068946.P14729525159441810250

/-! ## A068946.P14872765714759195967

`A110656(A134955(n)+A109543(3*n+2))`
-/

namespace A068946.P14872765714759195967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A134955 n + A109543 (3 * n + 2)).toNat

end

end A068946.P14872765714759195967

/-! ## A068946.P15529889708237003290

`A167865(((n+1)²-(n+1))*a(n-1))-and(68, n-1)` with `a(0)=1`
-/

namespace A068946.P15529889708237003290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167865 ((((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)) * a (n - 1)).toNat - Int.land 68 ((n : ℤ) - 1)

end

end A068946.P15529889708237003290

/-!
# A068947: Square roots of A068809.

The programs for A068947, there is no canonical definition to state claims against.
-/

/-! ## A068947.P9665406726571619363

`sqrt(A068809(n+1))`
-/

namespace A068947.P9665406726571619363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A068809 (n + 1) : ℝ)

end

end A068947.P9665406726571619363

/-! ## A068947.P7993659254267862738

`root(A068809(n+1), p?[A316826(n)])`
-/

namespace A068947.P7993659254267862738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068809 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A068947.P7993659254267862738

/-! ## A068947.P8289359212753184578

`root(A068809(n+1), dr(A223234(n+1)))`
-/

namespace A068947.P8289359212753184578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068809 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A223234 (n + 1)) : ℝ))

end

end A068947.P8289359212753184578

/-! ## A068947.P9807235047623968150

`record[A067179(n+1)%A067179(n+2)]`
-/

namespace A068947.P9807235047623968150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067179 (n + 1)) (A067179 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068947.P9807235047623968150

/-! ## A068947.P417339825667796552

`root(A068809(n+1), A020639(2*(n+1)))`
-/

namespace A068947.P417339825667796552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068809 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A068947.P417339825667796552

/-! ## A068947.P9133247587578870436

`root(A068809(n+1), A001316(A001316(n)))`
-/

namespace A068947.P9133247587578870436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068809 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A068947.P9133247587578870436

/-!
# A068948: Primes in A068947.

The programs for A068948, there is no canonical definition to state claims against.
-/

/-! ## A068948.P6810794527197529257

`∩[A068947(n+1), A247980(n+1)]`
-/

namespace A068948.P6810794527197529257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068948.P6810794527197529257

/-! ## A068948.P3529314293838556542

`p?[A068947(n+1)]`
-/

namespace A068948.P3529314293838556542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068948.P3529314293838556542

/-! ## A068948.P7451161319919764958

`record[∑{p}[A068947(n+2), #]]`
-/

namespace A068948.P7451161319919764958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068947 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068948.P7451161319919764958

/-!
# A068949: Digit sums of A068809.

The programs for A068949, there is no canonical definition to state claims against.
-/

/-! ## A068949.P2387631166135461810

`∑{digits}[A068809(n+1), #]`
-/

namespace A068949.P2387631166135461810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A068949.P2387631166135461810

/-! ## A068949.P780202129872159568

`∑{digits}[A068947(n+1)², #]`
-/

namespace A068949.P780202129872159568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068947 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A068949.P780202129872159568

/-! ## A068949.P17752963178584465470

`record[∑{digits}[A068809(A291769(n)), #]]`
-/

namespace A068949.P17752963178584465470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068809 (A291769 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068949.P17752963178584465470

/-! ## A068949.P6101228457730931959

`∑{digits}[A068947(n+1)^A020639(A000132(n)), #]`
-/

namespace A068949.P6101228457730931959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068947 (n + 1) : ℚ) ^ (A020639 (A000132 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A068949.P6101228457730931959

/-! ## A068949.P5292567996708721462

`∑{digits}[A068947(A000463(2*n+1))*A068947(n+1), #]`
-/

namespace A068949.P5292567996708721462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068947 (A000463 (2 * n + 1)).toNat * A068947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A068949.P5292567996708721462

/-!
# A068950: Digital roots of A068809.

The programs for A068950, there is no canonical definition to state claims against.
-/

/-! ## A068950.P869753231863597774

`dr(A068809(n+1))`
-/

namespace A068950.P869753231863597774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A068809 (n + 1))

end

end A068950.P869753231863597774

/-! ## A068950.P4538025748134490080

`dr(A068949(n+1))`
-/

namespace A068950.P4538025748134490080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A068949 (n + 1))

end

end A068950.P4538025748134490080

/-! ## A068950.P830182377972273456

`dr(A068947(n+1)²)`
-/

namespace A068950.P830182377972273456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A068947 (n + 1) ^ 2)

end

end A068950.P830182377972273456

/-! ## A068950.P14187645178812400735

`dr(record[A068949(A020986(n))])`
-/

namespace A068950.P14187645178812400735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068949 (A020986 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A068950.P14187645178812400735

/-! ## A068950.P5727116005275891214

`dr(record[A068809(A137735(n))])`
-/

namespace A068950.P5727116005275891214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068809 (A137735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A068950.P5727116005275891214

/-! ## A068950.P6832852135034571100

`dr(A068947(n+1)^A001222(2*A006530(n+1)))`
-/

namespace A068950.P6832852135034571100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A068947 (n + 1) : ℚ) ^ (A001222 (2 * A006530 (n + 1)).toNat : ℤ)))

end

end A068950.P6832852135034571100

/-!
# A068951: Scan the primes, record digit-sum if it is itself prime.

The programs for A068951, the canonical program `A068951.P13108073047141062751` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068951 has offset 1).

The definition of A068951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068951.P13108073047141062751

`∑{digits}[A046704(n+1), #]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068951

/-- `∑{digits}[A046704(n+1), #]` -/
def P13108073047141062751.Spec : Prop :=
  ∀ n, (P13108073047141062751.a n : ℤ) = A068951 (n + 1)

theorem P13108073047141062751.correct : P13108073047141062751.Spec := by
  intro n
  simp only [A068951, Nat.add_sub_cancel]

end A068951

/-! ## A068951.P16114499549471631515

`p?[A007605(n+1)]`
-/

namespace A068951.P16114499549471631515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068951.P16114499549471631515

namespace A068951

/-- `p?[A007605(n+1)]` -/
def P16114499549471631515.Spec : Prop :=
  ∀ n, P16114499549471631515.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P14580014717773812375

`p?[∑{digits}[A000040(n+1), #]]`
-/

namespace A068951.P14580014717773812375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068951.P14580014717773812375

namespace A068951

/-- `p?[∑{digits}[A000040(n+1), #]]` -/
def P14580014717773812375.Spec : Prop :=
  ∀ n, (P14580014717773812375.a n : ℤ) = A068951 (n + 1)

end A068951

/-! ## A068951.P4387997607802938486

`A007605(A075177(n+1))`
-/

namespace A068951.P4387997607802938486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (A075177 (n + 1)).toNat

end

end A068951.P4387997607802938486

namespace A068951

/-- `A007605(A075177(n+1))` -/
def P4387997607802938486.Spec : Prop :=
  ∀ n, P4387997607802938486.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P14751737942599824456

`filter[A007605(n+1), A010051(#)]`
-/

namespace A068951.P14751737942599824456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068951.P14751737942599824456

namespace A068951

/-- `filter[A007605(n+1), A010051(#)]` -/
def P14751737942599824456.Spec : Prop :=
  ∀ n, P14751737942599824456.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P4079979351219702982

`filter[A007605(n+1), A080339(#)]`
-/

namespace A068951.P4079979351219702982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A068951.P4079979351219702982

namespace A068951

/-- `filter[A007605(n+1), A080339(#)]` -/
def P4079979351219702982.Spec : Prop :=
  ∀ n, P4079979351219702982.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P11155845215497066828

`filter[A007605(n+1), A252233(#)]`
-/

namespace A068951.P11155845215497066828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A068951.P11155845215497066828

namespace A068951

/-- `filter[A007605(n+1), A252233(#)]` -/
def P11155845215497066828.Spec : Prop :=
  ∀ n, P11155845215497066828.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P12315586951206362569

`filter[A007605(n+1), A335909(#)]`
-/

namespace A068951.P12315586951206362569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A335909 (f1 j).toNat = 1) n)

end

end A068951.P12315586951206362569

namespace A068951

/-- `filter[A007605(n+1), A335909(#)]` -/
def P12315586951206362569.Spec : Prop :=
  ∀ n, P12315586951206362569.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P3903206542742672275

`filter[A007605(n+1), A353499(#)]`
-/

namespace A068951.P3903206542742672275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A068951.P3903206542742672275

namespace A068951

/-- `filter[A007605(n+1), A353499(#)]` -/
def P3903206542742672275.Spec : Prop :=
  ∀ n, P3903206542742672275.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P16742105917940625100

`filter[A007605(n+1), A359372(#)]`
-/

namespace A068951.P16742105917940625100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A068951.P16742105917940625100

namespace A068951

/-- `filter[A007605(n+1), A359372(#)]` -/
def P16742105917940625100.Spec : Prop :=
  ∀ n, P16742105917940625100.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P18300826822227960951

`filter[A007605(n+1), A374130(#)]`
-/

namespace A068951.P18300826822227960951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A068951.P18300826822227960951

namespace A068951

/-- `filter[A007605(n+1), A374130(#)]` -/
def P18300826822227960951.Spec : Prop :=
  ∀ n, P18300826822227960951.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P2104271155937413925

`filter[A007605(n+1), A374466(#)]`
-/

namespace A068951.P2104271155937413925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A068951.P2104271155937413925

namespace A068951

/-- `filter[A007605(n+1), A374466(#)]` -/
def P2104271155937413925.Spec : Prop :=
  ∀ n, P2104271155937413925.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P391855264791460881

`p?[A065073(n+1)-A000040(n+1)]`
-/

namespace A068951.P391855264791460881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068951.P391855264791460881

namespace A068951

/-- `p?[A065073(n+1)-A000040(n+1)]` -/
def P391855264791460881.Spec : Prop :=
  ∀ n, P391855264791460881.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P1663659042919094697

`p?[A000040(n+1)-A068395(n+1)]`
-/

namespace A068951.P1663659042919094697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A068395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068951.P1663659042919094697

namespace A068951

/-- `p?[A000040(n+1)-A068395(n+1)]` -/
def P1663659042919094697.Spec : Prop :=
  ∀ n, P1663659042919094697.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P13192831301729988309

`p?[Δ[A051351(n)]]`
-/

namespace A068951.P13192831301729988309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068951.P13192831301729988309

namespace A068951

/-- `p?[Δ[A051351(n)]]` -/
def P13192831301729988309.Spec : Prop :=
  ∀ n, P13192831301729988309.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P964848890459548854

`p?[∑{digits}[A008578(n+1), #]]`
-/

namespace A068951.P964848890459548854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068951.P964848890459548854

namespace A068951

/-- `p?[∑{digits}[A008578(n+1), #]]` -/
def P964848890459548854.Spec : Prop :=
  ∀ n, (P964848890459548854.a n : ℤ) = A068951 (n + 1)

end A068951

/-! ## A068951.P17539508341415368281

`p?[∑{digits}[record[A006530(n+1)], #]]`
-/

namespace A068951.P17539508341415368281
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068951.P17539508341415368281

namespace A068951

/-- `p?[∑{digits}[record[A006530(n+1)], #]]` -/
def P17539508341415368281.Spec : Prop :=
  ∀ n, (P17539508341415368281.a n : ℤ) = A068951 (n + 1)

end A068951

/-! ## A068951.P18155372532413994563

`p?[∑{digits}[record[A020639(n+1)], #]]`
-/

namespace A068951.P18155372532413994563
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068951.P18155372532413994563

namespace A068951

/-- `p?[∑{digits}[record[A020639(n+1)], #]]` -/
def P18155372532413994563.Spec : Prop :=
  ∀ n, (P18155372532413994563.a n : ℤ) = A068951 (n + 1)

end A068951

/-! ## A068951.P260895797228147837

`p?[A071785(n+1)]`
-/

namespace A068951.P260895797228147837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068951.P260895797228147837

namespace A068951

/-- `p?[A071785(n+1)]` -/
def P260895797228147837.Spec : Prop :=
  ∀ n, P260895797228147837.a n = A068951 (n + 1)

end A068951

/-! ## A068951.P676127610969587945

`A007953(A046704(n+1))`
-/

namespace A068951.P676127610969587945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A046704 (n + 1)).toNat

end

end A068951.P676127610969587945

namespace A068951

/-- `A007953(A046704(n+1))` -/
def P676127610969587945.Spec : Prop :=
  ∀ n, P676127610969587945.a n = A068951 (n + 1)

end A068951

/-!
# A068953: Number of bases B (2 <= B <= n) such that every digit of n in base B is 0 or 1.

The programs for A068953, there is no canonical definition to state claims against.
-/

/-! ## A068953.P6629586905622163136

`A073855(lcm(A000217(n), A179016(n)))`
-/

namespace A068953.P6629586905622163136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (Int.lcm (A000217 n) (A179016 n))

end

end A068953.P6629586905622163136

/-! ## A068953.P1990925602946257247

`A073855(A003056(n)*A344604(n))`
-/

namespace A068953.P1990925602946257247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A003056 n * A344604 n).toNat

end

end A068953.P1990925602946257247

/-! ## A068953.P18024414738323970953

`A055640(or(A004273(n), A288919(n+1)))`
-/

namespace A068953.P18024414738323970953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.lor (A004273 n) (A288919 (n + 1))).toNat

end

end A068953.P18024414738323970953

/-! ## A068953.P9930604787595891541

`A109301(A324588(n+1)+A048105(n+1))`
-/

namespace A068953.P9930604787595891541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109301 (A324588 (n + 1) + A048105 (n + 1)).toNat

end

end A068953.P9930604787595891541

/-! ## A068953.P13099959373272892330

`A275850(A004885(n+1)*A312023(2*n+1))`
-/

namespace A068953.P13099959373272892330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 (A004885 (n + 1) * A312023 (2 * n + 1)).toNat

end

end A068953.P13099959373272892330

/-!
# A068955: Greatest prime factor of n^n - (n-1)^(n-1).

The programs for A068955, there is no canonical definition to state claims against.
-/

/-! ## A068955.P1433791004081702278

`A006530(A007781(n+1))`
-/

namespace A068955.P1433791004081702278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007781 (n + 1)).toNat

end

end A068955.P1433791004081702278

/-!
# A068956: Number of distinct prime factors of n^n - (n-1)^(n-1).

The programs for A068956, there is no canonical definition to state claims against.
-/

/-! ## A068956.P11483110370558984197

`A237420(A007904(n))+A099072(A068957(n+2))`
-/

namespace A068956.P11483110370558984197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A007904 n).toNat + A099072 (A068957 (n + 2)).toNat

end

end A068956.P11483110370558984197

/-! ## A068956.P7462049156087082804

`A032741(A059665(n+1))*A099072(A068957(n+2))`
-/

namespace A068956.P7462049156087082804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A059665 (n + 1)).toNat * A099072 (A068957 (n + 2)).toNat

end

end A068956.P7462049156087082804

/-! ## A068956.P3021077277402485067

`A000188(A213049(n+1))*A099072(A068957(n+2))`
-/

namespace A068956.P3021077277402485067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A213049 (n + 1)).toNat * A099072 (A068957 (n + 2)).toNat

end

end A068956.P3021077277402485067

/-! ## A068956.P8016256841250589178

`A099072(A068957(n+2)%A100028(n+1))`
-/

namespace A068956.P8016256841250589178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099072 (Int.tmod (A068957 (n + 2)) (A100028 (n + 1))).toNat

end

end A068956.P8016256841250589178

/-! ## A068956.P6632747368962785338

`A099072(A068957(n+2)+A129947(n+1)²)`
-/

namespace A068956.P6632747368962785338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099072 (A068957 (n + 2) + A129947 (n + 1) ^ 2).toNat

end

end A068956.P6632747368962785338

/-!
# A068957: Number of prime divisors of n^n - (n-1)^(n-1), counted with multiplicity.

The programs for A068957, there is no canonical definition to state claims against.
-/

/-! ## A068957.P6011085434818697362

`A160014(n)+∑{e}[A000108(n), log2(#)]`
-/

namespace A068957.P6011085434818697362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160014 n : ℝ) + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Real.logb 2 (Nat.factorization (f1 n).natAbs p : ℝ)

end

end A068957.P6011085434818697362

/-! ## A068957.P9008599898455032174

`A246028(n)*A323023(A305733(n+1))`
-/

namespace A068957.P9008599898455032174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246028 n * A323023 (A305733 (n + 1)).toNat

end

end A068957.P9008599898455032174

/-! ## A068957.P10688575145675824934

`gcd(A004524(A289529(n)), A091869(n+1))`
-/

namespace A068957.P10688575145675824934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004524 (A289529 n).toNat) (A091869 (n + 1))

end

end A068957.P10688575145675824934

/-!
# A068958: Smallest value of k such that p | (10^k + 1), where p is the n-th prime; or 0 if no such k exists.

The programs for A068958, there is no canonical definition to state claims against.
-/

/-! ## A068958.P342690264319788271

`A240665(n+4)`
-/

namespace A068958.P342690264319788271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240665 (n + 4)

end

end A068958.P342690264319788271

/-! ## A068958.P2138498403189757400

`A000217(A002371(n+4))%A002371(n+4)`
-/

namespace A068958.P2138498403189757400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A002371 (n + 4)).toNat) (A002371 (n + 4))

end

end A068958.P2138498403189757400

/-! ## A068958.P6552745566387093518

`A069531(p?[2*n+7])`
-/

namespace A068958.P6552745566387093518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A068958.P6552745566387093518

/-! ## A068958.P10728939233169988916

`A069531(A004139(n+2))`
-/

namespace A068958.P10728939233169988916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A004139 (n + 2)).toNat

end

end A068958.P10728939233169988916

/-! ## A068958.P18181667422883795468

`A069531(A215848(n+2))`
-/

namespace A068958.P18181667422883795468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A215848 (n + 2)).toNat

end

end A068958.P18181667422883795468

/-! ## A068958.P14709392402727304827

`A142150(A172372(n+2))`
-/

namespace A068958.P14709392402727304827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A172372 (n + 2)).toNat

end

end A068958.P14709392402727304827

/-! ## A068958.P16684508790875456996

`A069531(A000040(n+4))`
-/

namespace A068958.P16684508790875456996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A000040 (n + 4)).toNat

end

end A068958.P16684508790875456996

/-! ## A068958.P11123460665882342795

`A069531(A090417(n+1))`
-/

namespace A068958.P11123460665882342795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A090417 (n + 1)).toNat

end

end A068958.P11123460665882342795

/-! ## A068958.P7121525013261777052

`A069531(A173135(n+2))`
-/

namespace A068958.P7121525013261777052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A173135 (n + 2)).toNat

end

end A068958.P7121525013261777052

/-!
# A068961: Powers of 2 with exactly two 2's in their decimal digits.

The programs for A068961, there is no canonical definition to state claims against.
-/

/-! ## A068961.P187200212496552936

`A000079(eq[2, A065710(n)])`
-/

namespace A068961.P187200212496552936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068961.P187200212496552936

/-! ## A068961.P10466457529762651195

`A171449(eq[2, A065710(n)])`
-/

namespace A068961.P10466457529762651195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068961.P10466457529762651195

/-!
# A068962: Number of successive terms of A028356 that add to n; or length of n-th term of A028355.

The programs for A068962, there is no canonical definition to state claims against.
-/

/-! ## A068962.P6511333056967539069

`∑{digits}[A028355(n+1), A005708(#)]`
-/

namespace A068962.P6511333056967539069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005708 x).sum

end

end A068962.P6511333056967539069

/-! ## A068962.P17135059512538751314

`∑{digits}[A028355(n+1), A008284(#)]`
-/

namespace A068962.P17135059512538751314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008284 x).sum

end

end A068962.P17135059512538751314

/-! ## A068962.P16530003916575378041

`∑{digits}[A028355(n+1), A065941(#)]`
-/

namespace A068962.P16530003916575378041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A065941 x).sum

end

end A068962.P16530003916575378041

/-! ## A068962.P244824152708593724

`∑{digits}[A028355(n+1), A071031(#)]`
-/

namespace A068962.P244824152708593724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A071031 x).sum

end

end A068962.P244824152708593724

/-! ## A068962.P8998646123861862758

`∑{digits}[A028355(n+1), A082870(#)]`
-/

namespace A068962.P8998646123861862758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A082870 x).sum

end

end A068962.P8998646123861862758

/-! ## A068962.P16828837179207425343

`∑{digits}[A028355(n+1), A118383(#)]`
-/

namespace A068962.P16828837179207425343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A118383 x).sum

end

end A068962.P16828837179207425343

/-! ## A068962.P15088707114004046675

`∑{digits}[A028355(n+1), A225416(#)]`
-/

namespace A068962.P15088707114004046675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A225416 x).sum

end

end A068962.P15088707114004046675

/-! ## A068962.P13299149841767087952

`∑{digits}[A028355(n+1), gcd(2, A003215(#))]`
-/

namespace A068962.P13299149841767087952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.gcd 2 (A003215 x)).sum

end

end A068962.P13299149841767087952

/-! ## A068962.P7636204553402905785

`∑{digits}[A028355(n+1), #/A028355(#)]`
-/

namespace A068962.P7636204553402905785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028355 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) / (A028355 x : ℚ)).sum

end

end A068962.P7636204553402905785

/-! ## A068962.P2265832955240023663

`∑{digits}[A028355(n+1), A000010(A000010(#))]`
-/

namespace A068962.P2265832955240023663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000010 (A000010 x).toNat).sum

end

end A068962.P2265832955240023663

/-!
# A068963: a(n) = Sum_{d|n} phi(d^3).

The programs for A068963, the canonical program `A068963.P12991928728115657832` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068963 has offset 1).

The definition of A068963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068963.P12991928728115657832

`∑{d}[n+1, A053191(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068963

/-- `∑{d}[n+1, A053191(#)]` -/
def P12991928728115657832.Spec : Prop :=
  ∀ n, P12991928728115657832.a n = A068963 (n + 1)

theorem P12991928728115657832.correct : P12991928728115657832.Spec := by
  intro n
  simp only [A068963, Nat.add_sub_cancel]

end A068963

/-! ## A068963.P7436576081154670546

`2*A056789(n+1)-1`
-/

namespace A068963.P7436576081154670546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056789 (n + 1) - 1

end

end A068963.P7436576081154670546

namespace A068963

/-- `2*A056789(n+1)-1` -/
def P7436576081154670546.Spec : Prop :=
  ∀ n, P7436576081154670546.a n = A068963 (n + 1)

end A068963

/-! ## A068963.P9265250977095841218

`∑{d}[n+1, #*A002618(#)]`
-/

namespace A068963.P9265250977095841218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A002618 d

end

end A068963.P9265250977095841218

namespace A068963

/-- `∑{d}[n+1, #*A002618(#)]` -/
def P9265250977095841218.Spec : Prop :=
  ∀ n, P9265250977095841218.a n = A068963 (n + 1)

end A068963

/-! ## A068963.P11683712554406358630

`∑{d}[n+1, #²*A000010(#)]`
-/

namespace A068963.P11683712554406358630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A000010 d

end

end A068963.P11683712554406358630

namespace A068963

/-- `∑{d}[n+1, #²*A000010(#)]` -/
def P11683712554406358630.Spec : Prop :=
  ∀ n, P11683712554406358630.a n = A068963 (n + 1)

end A068963

/-! ## A068963.P15900794368183528265

`2*∑{d}[n+1, #*A023896(#)]-1`
-/

namespace A068963.P15900794368183528265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A023896 d) - 1

end

end A068963.P15900794368183528265

namespace A068963

/-- `2*∑{d}[n+1, #*A023896(#)]-1` -/
def P15900794368183528265.Spec : Prop :=
  ∀ n, P15900794368183528265.a n = A068963 (n + 1)

end A068963

/-! ## A068963.P477502564603722292

`∑{d}[n+1, A000578(#)*A046970((n+1)/#)]`
-/

namespace A068963.P477502564603722292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 d * A046970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068963.P477502564603722292

namespace A068963

/-- `∑{d}[n+1, A000578(#)*A046970((n+1)/#)]` -/
def P477502564603722292.Spec : Prop :=
  ∀ n, P477502564603722292.a n = A068963 (n + 1)

end A068963

/-! ## A068963.P1309841069954554881

`∑{d}[n+1, A001158(#)*A334657((n+1)/#)]`
-/

namespace A068963.P1309841069954554881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068963.P1309841069954554881

namespace A068963

/-- `∑{d}[n+1, A001158(#)*A334657((n+1)/#)]` -/
def P1309841069954554881.Spec : Prop :=
  ∀ n, P1309841069954554881.a n = A068963 (n + 1)

end A068963

/-! ## A068963.P369578828204374291

`∑{d}[n+1, A053822(#)*A321140((n+1)/#)]`
-/

namespace A068963.P369578828204374291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A321140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068963.P369578828204374291

namespace A068963

/-- `∑{d}[n+1, A053822(#)*A321140((n+1)/#)]` -/
def P369578828204374291.Spec : Prop :=
  ∀ n, P369578828204374291.a n = A068963 (n + 1)

end A068963

/-! ## A068963.P18026100881115664951

`∑{d}[n+1, A057660(#)*A349469((n+1)/#)]`
-/

namespace A068963.P18026100881115664951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A349469 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068963.P18026100881115664951

namespace A068963

/-- `∑{d}[n+1, A057660(#)*A349469((n+1)/#)]` -/
def P18026100881115664951.Spec : Prop :=
  ∀ n, P18026100881115664951.a n = A068963 (n + 1)

end A068963

/-! ## A068963.P15404372968092055877

`∑{d}[n+1, A051000(#)*A361987((n+1)/#)]`
-/

namespace A068963.P15404372968092055877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051000 d * A361987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068963.P15404372968092055877

namespace A068963

/-- `∑{d}[n+1, A051000(#)*A361987((n+1)/#)]` -/
def P15404372968092055877.Spec : Prop :=
  ∀ n, P15404372968092055877.a n = A068963 (n + 1)

end A068963

/-! ## A068963.P16880082714381872137

`∑{d}[n+1, A328259(#)*A351654((n+1)/#)]`
-/

namespace A068963.P16880082714381872137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328259 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068963.P16880082714381872137

namespace A068963

/-- `∑{d}[n+1, A328259(#)*A351654((n+1)/#)]` -/
def P16880082714381872137.Spec : Prop :=
  ∀ n, P16880082714381872137.a n = A068963 (n + 1)

end A068963

/-!
# A068964: Numbers that define integer Heronian triangles [prime(a(n)), prime(a(n)+1), A068965(n)] with area A068966(n).

The programs for A068964, there is no canonical definition to state claims against.
-/

/-! ## A068964.P14912215695613349279

`A061395(A068966(n+1)/A001223(2*n+1))`
-/

namespace A068964.P14912215695613349279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A068966 (n + 1) : ℚ) / (A001223 (2 * n + 1) : ℚ))).toNat

end

end A068964.P14912215695613349279

/-! ## A068964.P13884284636134484972

`A061395(A068966(n+1)/A054541(2*(n+1)))`
-/

namespace A068964.P13884284636134484972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A068966 (n + 1) : ℚ) / (A054541 (2 * (n + 1)) : ℚ))).toNat

end

end A068964.P13884284636134484972

/-! ## A068964.P15544213617986582746

`A061395(A068966(n+1)/2)`
-/

namespace A068964.P15544213617986582746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A068966 (n + 1) : ℚ) / 2)).toNat

end

end A068964.P15544213617986582746

/-!
# A068965: Sides of integer Heronian triangles [prime(A068964(n)), prime(A068964(n)+1), a(n)] with area A068966(n).

The programs for A068965, there is no canonical definition to state claims against.
-/

/-! ## A068965.P8758508318291206175

`A098764(A068964(n+1))`
-/

namespace A068965.P8758508318291206175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (A068964 (n + 1)).toNat

end

end A068965.P8758508318291206175

/-!
# A068970: a(n) = Sum_{d|n} phi(d^4).

The programs for A068970, the canonical program `A068970.P18166395650473303981` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068970 has offset 1).

The definition of A068970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068970.P7791291055810171416

`∑{d}[n+1, A189393(#)]`
-/

namespace A068970.P7791291055810171416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d

end

end A068970.P7791291055810171416

namespace A068970

/-- `∑{d}[n+1, A189393(#)]` -/
def P7791291055810171416.Spec : Prop :=
  ∀ n, P7791291055810171416.a n = A068970 (n + 1)

end A068970

/-! ## A068970.P18166395650473303981

`∑{d}[n+1, #*A053191(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068970

/-- `∑{d}[n+1, #*A053191(#)]` -/
def P18166395650473303981.Spec : Prop :=
  ∀ n, P18166395650473303981.a n = A068970 (n + 1)

theorem P18166395650473303981.correct : P18166395650473303981.Spec := by
  intro n
  simp only [A068970, Nat.add_sub_cancel]

end A068970

/-! ## A068970.P4008175013434846259

`∑{d}[n+1, #^3*A000010(#)]`
-/

namespace A068970.P4008175013434846259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 3 : ℤ) * A000010 d

end

end A068970.P4008175013434846259

namespace A068970

/-- `∑{d}[n+1, #^3*A000010(#)]` -/
def P4008175013434846259.Spec : Prop :=
  ∀ n, P4008175013434846259.a n = A068970 (n + 1)

end A068970

/-! ## A068970.P16760143193839809822

`∑{d}[n+1, A000010(#)*A000578(#)]`
-/

namespace A068970.P16760143193839809822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000578 d

end

end A068970.P16760143193839809822

namespace A068970

/-- `∑{d}[n+1, A000010(#)*A000578(#)]` -/
def P16760143193839809822.Spec : Prop :=
  ∀ n, P16760143193839809822.a n = A068970 (n + 1)

end A068970

/-! ## A068970.P12968878425028585970

`∑{d}[n+1, A001159(#)*A334659((n+1)/#)]`
-/

namespace A068970.P12968878425028585970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068970.P12968878425028585970

namespace A068970

/-- `∑{d}[n+1, A001159(#)*A334659((n+1)/#)]` -/
def P12968878425028585970.Spec : Prop :=
  ∀ n, P12968878425028585970.a n = A068970 (n + 1)

end A068970

/-! ## A068970.P11972750146954629813

`∑{d}[n+1, A000583(#)*A063453((n+1)/#)]`
-/

namespace A068970.P11972750146954629813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000583 d * A063453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068970.P11972750146954629813

namespace A068970

/-- `∑{d}[n+1, A000583(#)*A063453((n+1)/#)]` -/
def P11972750146954629813.Spec : Prop :=
  ∀ n, P11972750146954629813.a n = A068970 (n + 1)

end A068970

/-! ## A068970.P8035906302903073517

`∑{d}[n+1, A002618(#²)]`
-/

namespace A068970.P8035906302903073517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 (d ^ 2)

end

end A068970.P8035906302903073517

namespace A068970

/-- `∑{d}[n+1, A002618(#²)]` -/
def P8035906302903073517.Spec : Prop :=
  ∀ n, P8035906302903073517.a n = A068970 (n + 1)

end A068970

/-!
# A068971: Multipliers resulting from A068664.

The programs for A068971, there is no canonical definition to state claims against.
-/

/-! ## A068971.P5794707184616538237

`A068664(n+2)/A068664(n+1)`
-/

namespace A068971.P5794707184616538237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068664 (n + 2) : ℚ) / (A068664 (n + 1) : ℚ)

end

end A068971.P5794707184616538237

/-! ## A068971.P11419216709124713018

`ratio[A068664(n+1)]`
-/

namespace A068971.P11419216709124713018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068664 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068971.P11419216709124713018

/-! ## A068971.P16831470189491700414

`floor(ratio[A068664(A291769(n))])`
-/

namespace A068971.P16831470189491700414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068664 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A068971.P16831470189491700414

/-! ## A068971.P10624787455037977664

`ratio[record[A068664(A051340(n))]]`
-/

namespace A068971.P10624787455037977664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068664 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068971.P10624787455037977664

/-! ## A068971.P16356549124959839890

`ratio[record[A068664(A143182(n))]]`
-/

namespace A068971.P16356549124959839890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068664 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068971.P16356549124959839890

/-!
# A068972: Multipliers resulting from A068665.

The programs for A068972, there is no canonical definition to state claims against.
-/

/-! ## A068972.P9080382181300769546

`ratio[A068665(n+1)]`
-/

namespace A068972.P9080382181300769546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068665 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068972.P9080382181300769546

/-! ## A068972.P6090004646628001360

`floor(ratio[A068665(A291769(n))])`
-/

namespace A068972.P6090004646628001360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068665 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A068972.P6090004646628001360

/-! ## A068972.P11461050979979330629

`ratio[record[A068665(A051340(n))]]`
-/

namespace A068972.P11461050979979330629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068665 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068972.P11461050979979330629

/-! ## A068972.P8256679158206817409

`ratio[record[A068665(A143182(n))]]`
-/

namespace A068972.P8256679158206817409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068665 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068972.P8256679158206817409

/-! ## A068972.P253151029180437105

`ratio[record[A068665(A193592(n))]]`
-/

namespace A068972.P253151029180437105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068665 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068972.P253151029180437105

/-!
# A068973: Multipliers resulting from A068666.

The programs for A068973, there is no canonical definition to state claims against.
-/

/-! ## A068973.P15204405783531309583

`A068666(n+2)/A068666(n+1)`
-/

namespace A068973.P15204405783531309583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068666 (n + 2) : ℚ) / (A068666 (n + 1) : ℚ)

end

end A068973.P15204405783531309583

/-! ## A068973.P9415593588316906158

`ratio[A068666(n+1)]`
-/

namespace A068973.P9415593588316906158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068666 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068973.P9415593588316906158

/-! ## A068973.P9966636123486423774

`floor(ratio[A068666(A291769(n))])`
-/

namespace A068973.P9966636123486423774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068666 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A068973.P9966636123486423774

/-! ## A068973.P14450876340843410260

`ratio[record[A068666(A051340(n))]]`
-/

namespace A068973.P14450876340843410260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068666 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068973.P14450876340843410260

/-!
# A068974: Multipliers resulting from A068667.

The programs for A068974, there is no canonical definition to state claims against.
-/

/-! ## A068974.P5671663870456920882

`A068667(n+2)/A068667(n+1)`
-/

namespace A068974.P5671663870456920882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068667 (n + 2) : ℚ) / (A068667 (n + 1) : ℚ)

end

end A068974.P5671663870456920882

/-! ## A068974.P1490857999934520158

`ratio[A068667(n+1)]`
-/

namespace A068974.P1490857999934520158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068667 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068974.P1490857999934520158

/-! ## A068974.P10531085726560095570

`A068971(n+4)+char[1]`
-/

namespace A068974.P10531085726560095570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068971 (n + 4) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A068974.P10531085726560095570

/-! ## A068974.P12832035567417523777

`floor(ratio[A068667(A291769(n))])`
-/

namespace A068974.P12832035567417523777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068667 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A068974.P12832035567417523777

/-! ## A068974.P17540843519012893463

`ratio[record[A068667(A051340(n))]]`
-/

namespace A068974.P17540843519012893463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068667 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A068974.P17540843519012893463

/-!
# A068976: a(n) = Sum_{d | n} d/core(d) where core(x) is the smallest number such that x*core(x) is a square.

The programs for A068976, the canonical program `A068976.P7287247804472711725` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068976 has offset 1).

The definition of A068976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068976.P7287247804472711725

`∑{d}[n+1, gcd(#, (n+1)/#)²]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068976

/-- `∑{d}[n+1, gcd(#, (n+1)/#)²]` -/
def P7287247804472711725.Spec : Prop :=
  ∀ n, (P7287247804472711725.a n : ℤ) = A068976 (n + 1)

theorem P7287247804472711725.correct : P7287247804472711725.Spec := by
  intro n
  simp only [A068976, Nat.add_sub_cancel]

end A068976

/-! ## A068976.P17329680661979197136

`∑{d}[n+1, A008833(#)]`
-/

namespace A068976.P17329680661979197136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d

end

end A068976.P17329680661979197136

namespace A068976

/-- `∑{d}[n+1, A008833(#)]` -/
def P17329680661979197136.Spec : Prop :=
  ∀ n, P17329680661979197136.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P14484743792997843897

`∑{d}[n+1, A000188(#)²]`
-/

namespace A068976.P14484743792997843897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000188 d ^ 2

end

end A068976.P14484743792997843897

namespace A068976

/-- `∑{d}[n+1, A000188(#)²]` -/
def P14484743792997843897.Spec : Prop :=
  ∀ n, P14484743792997843897.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P15683241805282306200

`∑{d}[n+1, A336642(#)+1]`
-/

namespace A068976.P15683241805282306200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A336642 d + 1)

end

end A068976.P15683241805282306200

namespace A068976

/-- `∑{d}[n+1, A336642(#)+1]` -/
def P15683241805282306200.Spec : Prop :=
  ∀ n, P15683241805282306200.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P11789484871384417333

`∑{d}[n+1, #/A007913(#)]`
-/

namespace A068976.P11789484871384417333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A007913 d : ℚ)

end

end A068976.P11789484871384417333

namespace A068976

/-- `∑{d}[n+1, #/A007913(#)]` -/
def P11789484871384417333.Spec : Prop :=
  ∀ n, P11789484871384417333.a n = (A068976 (n + 1) : ℚ)

end A068976

/-! ## A068976.P1880076215421768207

`∑{d}[n+1, A008966(#)*A035316((n+1)/#)]`
-/

namespace A068976.P1880076215421768207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068976.P1880076215421768207

namespace A068976

/-- `∑{d}[n+1, A008966(#)*A035316((n+1)/#)]` -/
def P1880076215421768207.Spec : Prop :=
  ∀ n, P1880076215421768207.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P8969599796398091938

`∑{d}[n+1, A000188(#)*A055210((n+1)/#)]`
-/

namespace A068976.P8969599796398091938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000188 d * A055210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068976.P8969599796398091938

namespace A068976

/-- `∑{d}[n+1, A000188(#)*A055210((n+1)/#)]` -/
def P8969599796398091938.Spec : Prop :=
  ∀ n, P8969599796398091938.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P7303521336436085171

`∑{d}[n+1, A001615(#)*A061020((n+1)/#)]`
-/

namespace A068976.P7303521336436085171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068976.P7303521336436085171

namespace A068976

/-- `∑{d}[n+1, A001615(#)*A061020((n+1)/#)]` -/
def P7303521336436085171.Spec : Prop :=
  ∀ n, P7303521336436085171.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P14508601048972428062

`∑{d}[n+1, A060648(#)*A061019((n+1)/#)]`
-/

namespace A068976.P14508601048972428062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068976.P14508601048972428062

namespace A068976

/-- `∑{d}[n+1, A060648(#)*A061019((n+1)/#)]` -/
def P14508601048972428062.Spec : Prop :=
  ∀ n, P14508601048972428062.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P1007422110185020063

`∑{d}[n+1, A060724(#)*A158523((n+1)/#)]`
-/

namespace A068976.P1007422110185020063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068976.P1007422110185020063

namespace A068976

/-- `∑{d}[n+1, A060724(#)*A158523((n+1)/#)]` -/
def P1007422110185020063.Spec : Prop :=
  ∀ n, P1007422110185020063.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P5502865261693758353

`∑{d}[n+1, A008835(#)*A335324((n+1)/#)]`
-/

namespace A068976.P5502865261693758353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008835 d * A335324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068976.P5502865261693758353

namespace A068976

/-- `∑{d}[n+1, A008835(#)*A335324((n+1)/#)]` -/
def P5502865261693758353.Spec : Prop :=
  ∀ n, P5502865261693758353.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P12209333164778425716

`∑{d}[n+1, A048691(#)*A358272((n+1)/#)]`
-/

namespace A068976.P12209333164778425716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068976.P12209333164778425716

namespace A068976

/-- `∑{d}[n+1, A048691(#)*A358272((n+1)/#)]` -/
def P12209333164778425716.Spec : Prop :=
  ∀ n, P12209333164778425716.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P1866313841524295053

`∑{d}[n+1, A069290(#)*A380162((n+1)/#)]`
-/

namespace A068976.P1866313841524295053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069290 d * A380162 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068976.P1866313841524295053

namespace A068976

/-- `∑{d}[n+1, A069290(#)*A380162((n+1)/#)]` -/
def P1866313841524295053.Spec : Prop :=
  ∀ n, P1866313841524295053.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P1996943620881085830

`∑{d}[n+1, A271102(#)*A383795((n+1)/#)]`
-/

namespace A068976.P1996943620881085830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A383795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068976.P1996943620881085830

namespace A068976

/-- `∑{d}[n+1, A271102(#)*A383795((n+1)/#)]` -/
def P1996943620881085830.Spec : Prop :=
  ∀ n, P1996943620881085830.a n = A068976 (n + 1)

end A068976

/-! ## A068976.P16686113967796644933

`∑{d}[n+1, A298473(#)*A365649((n+1)/#)]`
-/

namespace A068976.P16686113967796644933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A298473 d * A365649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068976.P16686113967796644933

namespace A068976

/-- `∑{d}[n+1, A298473(#)*A365649((n+1)/#)]` -/
def P16686113967796644933.Spec : Prop :=
  ∀ n, P16686113967796644933.a n = A068976 (n + 1)

end A068976

/-!
# A068977: Numbers k such that Sum_{d|k} d/tau(d) is an integer, where tau(x) = A000005(x).

The programs for A068977, there is no canonical definition to state claims against.
-/

/-! ## A068977.P1099909791514127618

`eq[1, A324504(n+1)]+1`
-/

namespace A068977.P1099909791514127618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068977.P1099909791514127618

/-! ## A068977.P2171761814151197109

`record[(n+1)/A324504(A000027(n+1))²]`
-/

namespace A068977.P2171761814151197109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A324504 (A000027 (n + 1)).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068977.P2171761814151197109

/-! ## A068977.P10710525802309834098

`record[A052410(n+1)/A324504(n+1)²]`
-/

namespace A068977.P10710525802309834098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 1) : ℚ) / (A324504 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068977.P10710525802309834098

/-! ## A068977.P12483857785513801398

`record[(1-A001489(n))/A324504(n+1)²]`
-/

namespace A068977.P12483857785513801398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n : ℚ) / (A324504 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068977.P12483857785513801398

/-! ## A068977.P8502309680335198750

`eq[A019425(n), A324504(A028310(n))]`
-/

namespace A068977.P8502309680335198750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324504 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068977.P8502309680335198750

/-! ## A068977.P9224287534831938282

`record[A008619(2*n)/A324504(n+1)²]`
-/

namespace A068977.P9224287534831938282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A324504 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068977.P9224287534831938282

/-! ## A068977.P4241178549227465097

`record[A065260(n+1)/A000040(A324504(n+1))]`
-/

namespace A068977.P4241178549227465097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065260 (n + 1) : ℚ) / (A000040 (A324504 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068977.P4241178549227465097

/-!
# A068978: Numbers k such that Sum_{d|k} tau(d)/d is an integer, where tau(x) = A000005(x).

The programs for A068978, there is no canonical definition to state claims against.
-/

/-! ## A068978.P10469830218672672081

`lt[n, gcd(n+1, A007429(n+1))]+1`
-/

namespace A068978.P10469830218672672081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007429 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068978.P10469830218672672081

/-! ## A068978.P13136497819439778285

`eq[1, A276737(n+1)]+1`
-/

namespace A068978.P13136497819439778285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068978.P13136497819439778285

/-!
# A068980: Number of partitions of n into nonzero tetrahedral numbers.

The programs for A068980, there is no canonical definition to state claims against.
-/

/-! ## A068980.P5118363479105101624

`A000008(A007966(floor((n/2)²)))`
-/

namespace A068980.P5118363479105101624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 (A007966 ⌊((n : ℚ) / 2) ^ 2⌋.toNat).toNat

end

end A068980.P5118363479105101624

/-! ## A068980.P8487852351013234078

`A001302(floor(n/2)%A141214(n))`
-/

namespace A068980.P8487852351013234078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001302 (Int.tmod ⌊(n : ℚ) / 2⌋ (A141214 n)).toNat

end

end A068980.P8487852351013234078

/-! ## A068980.P12154693987384075298

`A057537(floor(n/2))%A141214(n)`
-/

namespace A068980.P12154693987384075298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057537 ⌊(n : ℚ) / 2⌋.toNat) (A141214 n)

end

end A068980.P12154693987384075298

/-! ## A068980.P9835354809867903544

`A001302(floor(n/2))%A014224(n+1)`
-/

namespace A068980.P9835354809867903544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001302 ⌊(n : ℚ) / 2⌋.toNat) (A014224 (n + 1))

end

end A068980.P9835354809867903544

/-!
# A068981: Arithmetic derivative of n*prime(n).

The programs for A068981, the canonical program `A068981.P17257054354611065176` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068981 has offset 1).

The definition of A068981 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068981.P4407315851853877689

`n+1+A000040(n+1)*A003415(n+1)`
-/

namespace A068981.P4407315851853877689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000040 (n + 1) * A003415 (n + 1)

end

end A068981.P4407315851853877689

namespace A068981

/-- `n+1+A000040(n+1)*A003415(n+1)` -/
def P4407315851853877689.Spec : Prop :=
  ∀ n, P4407315851853877689.a n = A068981 (n + 1)

end A068981

/-! ## A068981.P17257054354611065176

`A003415(A033286(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A068981

/-- `A003415(A033286(n+1))` -/
def P17257054354611065176.Spec : Prop :=
  ∀ n, P17257054354611065176.a n = A068981 (n + 1)

theorem P17257054354611065176.correct : P17257054354611065176.Spec := by
  intro n
  simp only [A068981, Nat.add_sub_cancel]

end A068981

/-! ## A068981.P17823088316542477604

`A003415((n+1)*A000040(n+1))`
-/

namespace A068981.P17823088316542477604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

end

end A068981.P17823088316542477604

namespace A068981

/-- `A003415((n+1)*A000040(n+1))` -/
def P17823088316542477604.Spec : Prop :=
  ∀ n, P17823088316542477604.a n = A068981 (n + 1)

end A068981

/-! ## A068981.P13190924485307234999

`A328099((n+1)*A000040(n+1))`
-/

namespace A068981.P13190924485307234999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

end

end A068981.P13190924485307234999

namespace A068981

/-- `A328099((n+1)*A000040(n+1))` -/
def P13190924485307234999.Spec : Prop :=
  ∀ n, P13190924485307234999.a n = A068981 (n + 1)

end A068981

/-! ## A068981.P4294271223648627005

`A328099((n+1)*A008578(n+2))`
-/

namespace A068981.P4294271223648627005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 ((n + 1 : ℤ) * A008578 (n + 2)).toNat

end

end A068981.P4294271223648627005

namespace A068981

/-- `A328099((n+1)*A008578(n+2))` -/
def P4294271223648627005.Spec : Prop :=
  ∀ n, P4294271223648627005.a n = A068981 (n + 1)

end A068981

/-! ## A068981.P11525382109794584226

`A328099(lcm(xor(n, -1), A000040(n+1)))`
-/

namespace A068981.P11525382109794584226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (Int.lcm (Int.xor (n : ℤ) (-1)) (A000040 (n + 1)))

end

end A068981.P11525382109794584226

namespace A068981

/-- `A328099(lcm(xor(n, -1), A000040(n+1)))` -/
def P11525382109794584226.Spec : Prop :=
  ∀ n, P11525382109794584226.a n = A068981 (n + 1)

end A068981

/-!
# A068983: a(n) = Sum_{k=0..n} (k^k-k!).

The programs for A068983, the canonical program `A068983.P5879960668105085223` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068983 has offset 1).

The definition of A068983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068983.P5879960668105085223

`A062970(n+1)-A003422(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068983

/-- `A062970(n+1)-A003422(n+2)` -/
def P5879960668105085223.Spec : Prop :=
  ∀ n, P5879960668105085223.a n = A068983 (n + 1)

theorem P5879960668105085223.correct : P5879960668105085223.Spec := by
  intro n
  simp only [A068983, Nat.add_sub_cancel]

end A068983

/-! ## A068983.P16635012044057611803

`∑[(n+1)^(n+1)-(n+1)!]`
-/

namespace A068983.P16635012044057611803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - (Nat.factorial (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068983.P16635012044057611803

namespace A068983

/-- `∑[(n+1)^(n+1)-(n+1)!]` -/
def P16635012044057611803.Spec : Prop :=
  ∀ n, P16635012044057611803.a n = A068983 (n + 1)

end A068983

/-! ## A068983.P7920344736892293800

`∑[(n+1)^(n+1)-∏[n+1]]`
-/

namespace A068983.P7920344736892293800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068983.P7920344736892293800

namespace A068983

/-- `∑[(n+1)^(n+1)-∏[n+1]]` -/
def P7920344736892293800.Spec : Prop :=
  ∀ n, P7920344736892293800.a n = A068983 (n + 1)

end A068983

/-! ## A068983.P6088650124435854443

`∑[(n+1)^(n+1)]-∑[(n+1)*a(n-1)]` with `a(0)=1`
-/

namespace A068983.P6088650124435854443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1) * f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A068983.P6088650124435854443

namespace A068983

/-- `∑[(n+1)^(n+1)]-∑[(n+1)*a(n-1)]` -/
def P6088650124435854443.Spec : Prop :=
  ∀ n, P6088650124435854443.a n = A068983 (n + 1)

end A068983

/-! ## A068983.P15369624221430048338

`∑[A000312(n+1)]-∑[(n+1)!]`
-/

namespace A068983.P15369624221430048338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A068983.P15369624221430048338

namespace A068983

/-- `∑[A000312(n+1)]-∑[(n+1)!]` -/
def P15369624221430048338.Spec : Prop :=
  ∀ n, P15369624221430048338.a n = A068983 (n + 1)

end A068983

/-! ## A068983.P12682523539889406504

`∑[A000312(n+1)]-A007489(n+1)`
-/

namespace A068983.P12682523539889406504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007489 (n + 1)

end

end A068983.P12682523539889406504

namespace A068983

/-- `∑[A000312(n+1)]-A007489(n+1)` -/
def P12682523539889406504.Spec : Prop :=
  ∀ n, P12682523539889406504.a n = A068983 (n + 1)

end A068983

/-!
# A068984: a(n) = Sum_{d|n} d*tau(d)^2.

The programs for A068984, the canonical program `A068984.P5244751518024861276` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068984 has offset 1).

The definition of A068984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068984.P11187657108437532028

`∑{d}[n+1, #*A035116(#)]`
-/

namespace A068984.P11187657108437532028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A035116 d

end

end A068984.P11187657108437532028

namespace A068984

/-- `∑{d}[n+1, #*A035116(#)]` -/
def P11187657108437532028.Spec : Prop :=
  ∀ n, P11187657108437532028.a n = A068984 (n + 1)

end A068984

/-! ## A068984.P3913925788532137687

`∑{d}[n+1, #*A000005(#)²]`
-/

namespace A068984.P3913925788532137687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 d ^ 2

end

end A068984.P3913925788532137687

namespace A068984

/-- `∑{d}[n+1, #*A000005(#)²]` -/
def P3913925788532137687.Spec : Prop :=
  ∀ n, P3913925788532137687.a n = A068984 (n + 1)

end A068984

/-! ## A068984.P1918534901301108211

`∑{d}[n+1, #*A064950((n+1)/#)]`
-/

namespace A068984.P1918534901301108211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A064950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068984.P1918534901301108211

namespace A068984

/-- `∑{d}[n+1, #*A064950((n+1)/#)]` -/
def P1918534901301108211.Spec : Prop :=
  ∀ n, P1918534901301108211.a n = A068984 (n + 1)

end A068984

/-! ## A068984.P5244751518024861276

`∑{d}[n+1, A034718(#)*A048250((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068984

/-- `∑{d}[n+1, A034718(#)*A048250((n+1)/#)]` -/
def P5244751518024861276.Spec : Prop :=
  ∀ n, P5244751518024861276.a n = A068984 (n + 1)

theorem P5244751518024861276.correct : P5244751518024861276.Spec := by
  intro n
  simp only [A068984, Nat.add_sub_cancel]

end A068984

/-! ## A068984.P11166752264467330014

`∑{d}[n+1, A034761(#)*A078439((n+1)/#)]`
-/

namespace A068984.P11166752264467330014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068984.P11166752264467330014

namespace A068984

/-- `∑{d}[n+1, A034761(#)*A078439((n+1)/#)]` -/
def P11166752264467330014.Spec : Prop :=
  ∀ n, P11166752264467330014.a n = A068984 (n + 1)

end A068984

/-! ## A068984.P8968513107481841281

`∑{d}[n+1, A007913(#)*A360430((n+1)/#)]`
-/

namespace A068984.P8968513107481841281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007913 d * A360430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068984.P8968513107481841281

namespace A068984

/-- `∑{d}[n+1, A007913(#)*A360430((n+1)/#)]` -/
def P8968513107481841281.Spec : Prop :=
  ∀ n, P8968513107481841281.a n = A068984 (n + 1)

end A068984

/-! ## A068984.P5184844041902371241

`∑{d}[n+1, A038040(#)*A357938((n+1)/#)]`
-/

namespace A068984.P5184844041902371241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068984.P5184844041902371241

namespace A068984

/-- `∑{d}[n+1, A038040(#)*A357938((n+1)/#)]` -/
def P5184844041902371241.Spec : Prop :=
  ∀ n, P5184844041902371241.a n = A068984 (n + 1)

end A068984

/-! ## A068984.P4222684051911936789

`∑{d}[n+1, A327251(#)*A332618((n+1)/#)]`
-/

namespace A068984.P4222684051911936789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327251 d * A332618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068984.P4222684051911936789

namespace A068984

/-- `∑{d}[n+1, A327251(#)*A332618((n+1)/#)]` -/
def P4222684051911936789.Spec : Prop :=
  ∀ n, P4222684051911936789.a n = A068984 (n + 1)

end A068984

/-! ## A068984.P3119707623801864023

`∑{d}[n+1, A319132(#)*A390258((n+1)/#)]`
-/

namespace A068984.P3119707623801864023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319132 d * A390258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068984.P3119707623801864023

namespace A068984

/-- `∑{d}[n+1, A319132(#)*A390258((n+1)/#)]` -/
def P3119707623801864023.Spec : Prop :=
  ∀ n, P3119707623801864023.a n = A068984 (n + 1)

end A068984

/-!
# A068985: Decimal expansion of 1/e.

The programs for A068985, there is no canonical definition to state claims against.
-/

/-! ## A068985.P10326612625966794303

`9-A068996(n)`
-/

namespace A068985.P10326612625966794303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A068996 n

end

end A068985.P10326612625966794303

/-! ## A068985.P14741315579704868982

`A138361(n)+a(n-1)` with `a(0)=3`
-/

namespace A068985.P14741315579704868982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A138361 n + a (n - 1)

end

end A068985.P14741315579704868982

/-! ## A068985.P985318102682698432

`∑[A138361(abs(1-n)+1)]+2`
-/

namespace A068985.P985318102682698432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A068985.P985318102682698432

/-! ## A068985.P10171196237570023451

`∑[A138361(A028310(n))]`
-/

namespace A068985.P10171196237570023451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068985.P10171196237570023451

/-! ## A068985.P16696205440592346369

`∑[A138361(A000007(n)+n)]`
-/

namespace A068985.P16696205440592346369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068985.P16696205440592346369

/-! ## A068985.P4460913791851913851

`∑[A138361(A008486(n)-A005843(n))]`
-/

namespace A068985.P4460913791851913851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A008486 n - A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068985.P4460913791851913851

/-! ## A068985.P12549166193788603056

`∑[A138361(A008619(A058992(n+1)))]`
-/

namespace A068985.P12549166193788603056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A008619 (A058992 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068985.P12549166193788603056

/-! ## A068985.P819909966280339111

`∑[A138361(A008619(A004273(n)))]`
-/

namespace A068985.P819909966280339111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068985.P819909966280339111

/-! ## A068985.P8719208303624066766

`∑[A138361(A065033(2*n))]`
-/

namespace A068985.P8719208303624066766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068985.P8719208303624066766

/-! ## A068985.P3613018007206535328

`∑[A138361(A123108(2*n))]`
-/

namespace A068985.P3613018007206535328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068985.P3613018007206535328

/-! ## A068985.P18314677008053771101

`∑[A138361(A008683((n+1)*(n+1))+n)]`
-/

namespace A068985.P18314677008053771101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A008683 ((n + 1) * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068985.P18314677008053771101

/-! ## A068985.P12504201587557882599

`∑[A138361(A077028(A000124(n)))]`
-/

namespace A068985.P12504201587557882599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A077028 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068985.P12504201587557882599

/-! ## A068985.P3501955167858701646

`A095712(A000124(n+1))`
-/

namespace A068985.P3501955167858701646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095712 (A000124 (n + 1)).toNat

end

end A068985.P3501955167858701646

/-! ## A068985.P10110654616110692677

`A095712(A316671(n+2))`
-/

namespace A068985.P10110654616110692677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095712 (A316671 (n + 2)).toNat

end

end A068985.P10110654616110692677

/-! ## A068985.P8828596607558992516

`A095712(A167614(n+1)-1)`
-/

namespace A068985.P8828596607558992516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095712 (A167614 (n + 1) - 1).toNat

end

end A068985.P8828596607558992516

/-! ## A068985.P3391287293689360158

`A095712(A167614(n+2))`
-/

namespace A068985.P3391287293689360158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095712 (A167614 (n + 2)).toNat

end

end A068985.P3391287293689360158

/-! ## A068985.P8558440687223508774

`A095712(A085931(n+1))`
-/

namespace A068985.P8558440687223508774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095712 (A085931 (n + 1)).toNat

end

end A068985.P8558440687223508774

/-!
# A068987: a(n) is the first position in the digit sequence 3,1,4,1,5,9,.... of Pi where the pattern "1,2,...,n" occurs (where position of the initial 3 is 1).

The programs for A068987, there is no canonical definition to state claims against.
-/

/-! ## A068987.P355099918025203291

`A121280(n+1)+1`
-/

namespace A068987.P355099918025203291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121280 (n + 1) + 1

end

end A068987.P355099918025203291

/-!
# A068989: Squares which when reversed are primes (ignore leading zeros).

The programs for A068989, there is no canonical definition to state claims against.
-/

/-! ## A068989.P15644369051317447470

`A059007(n+1)²`
-/

namespace A068989.P15644369051317447470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1) ^ 2

end

end A068989.P15644369051317447470

/-! ## A068989.P11335360285111166075

`A059007(n+1)^A063867(ceil(2/(n+1)))`
-/

namespace A068989.P11335360285111166075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059007 (n + 1) : ℚ) ^ (A063867 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A068989.P11335360285111166075

/-! ## A068989.P7223773148430939571

`A059007(n+1)^A100008(2^val(n+1, 2))`
-/

namespace A068989.P7223773148430939571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059007 (n + 1) : ℚ) ^ (A100008 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℤ)

end

end A068989.P7223773148430939571

/-! ## A068989.P12010656671045900427

`A059007(A000027(n+1))*A059007(n+1)`
-/

namespace A068989.P12010656671045900427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (A000027 (n + 1)).toNat * A059007 (n + 1)

end

end A068989.P12010656671045900427

/-! ## A068989.P11701984281535529294

`A059007(A328399(2*n))*A059007(n+1)`
-/

namespace A068989.P11701984281535529294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (A328399 (2 * n)).toNat * A059007 (n + 1)

end

end A068989.P11701984281535529294

/-! ## A068989.P11079206581533452697

`A059007(A008620(3*n))*A059007(n+1)`
-/

namespace A068989.P11079206581533452697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (A008620 (3 * n)).toNat * A059007 (n + 1)

end

end A068989.P11079206581533452697

/-! ## A068989.P9731924778833102325

`A059007(n+1)^A020639(A074832(n+1)+1)`
-/

namespace A068989.P9731924778833102325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059007 (n + 1) : ℚ) ^ (A020639 (A074832 (n + 1) + 1).toNat : ℤ)

end

end A068989.P9731924778833102325

/-! ## A068989.P132315627593712812

`A002522(A059007(n+1))-gcd(n, A002522(n))`
-/

namespace A068989.P132315627593712812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A059007 (n + 1)).toNat - (Int.gcd (n : ℤ) (A002522 n) : ℤ)

end

end A068989.P132315627593712812

/-! ## A068989.P11127080290114382698

`A059007(n+1)^A000005(A087765(n+1))`
-/

namespace A068989.P11127080290114382698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059007 (n + 1) : ℚ) ^ (A000005 (A087765 (n + 1)).toNat : ℤ)

end

end A068989.P11127080290114382698

/-! ## A068989.P16489421860776919951

`A059007(n+1)^A000005(A058999(n+1))`
-/

namespace A068989.P16489421860776919951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059007 (n + 1) : ℚ) ^ (A000005 (A058999 (n + 1)).toNat : ℤ)

end

end A068989.P16489421860776919951

/-! ## A068989.P10268873876554233677

`∩[n², A088112(n+1)]`
-/

namespace A068989.P10268873876554233677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068989.P10268873876554233677

/-! ## A068989.P15001922031837889709

`∩[A088112(n+1), A135556(n+1)]`
-/

namespace A068989.P15001922031837889709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068989.P15001922031837889709

/-! ## A068989.P7271679214107743289

`∩[A088112(n+1), A214937(n+1)]`
-/

namespace A068989.P7271679214107743289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068989.P7271679214107743289

/-! ## A068989.P10508132284177003499

`∩[A088112(n+1), A319388(n+1)]`
-/

namespace A068989.P10508132284177003499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068989.P10508132284177003499

/-! ## A068989.P11630234110621077989

`∩[A088112(n+1), A347535(n+1)]`
-/

namespace A068989.P11630234110621077989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068989.P11630234110621077989

/-! ## A068989.P15784849794498083072

`∩[A088112(n+1), A363284(n+1)]`
-/

namespace A068989.P15784849794498083072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068989.P15784849794498083072

/-! ## A068989.P16272095445107290164

`∩[A088112(n+1), A213011(n+1)]`
-/

namespace A068989.P16272095445107290164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068989.P16272095445107290164

/-! ## A068989.P5656206813540650019

`∩[A088112(n+1), A272266(n+1)]`
-/

namespace A068989.P5656206813540650019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068989.P5656206813540650019

/-!
# A068990: Primes which remain prime after each digit is increased by 2.

The programs for A068990, there is no canonical definition to state claims against.
-/

/-! ## A068990.P8412206926483353830

`record[A300817(∑[A080431(n+1)])]`
-/

namespace A068990.P8412206926483353830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080431 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068990.P8412206926483353830

/-!
# A068992: Composite numbers k such that Sum_{d|k} sigma(d)/tau(d) is an integer.

The programs for A068992, there is no canonical definition to state claims against.
-/

/-! ## A068992.P6712871394678489532

`eq[C(A020639(n+1), n)+1, A324500(n+1)]+1`
-/

namespace A068992.P6712871394678489532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068992.P6712871394678489532

/-! ## A068992.P12791821739970398149

`eq[A000040(A070824(n+1)+1)%2, A324500(n+1)]+1`
-/

namespace A068992.P12791821739970398149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A070824 (n + 1) + 1).toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068992.P12791821739970398149

/-! ## A068992.P1934355051450365950

`filter[A306639(n+1), A066247(#)]`
-/

namespace A068992.P1934355051450365950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A068992.P1934355051450365950

/-! ## A068992.P8472639029376673713

`filter[A306639(n+1), A174898(#)]`
-/

namespace A068992.P8472639029376673713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A068992.P8472639029376673713

/-! ## A068992.P6833488035882800707

`filter[A306639(n+1), A202238(#)]`
-/

namespace A068992.P6833488035882800707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A068992.P6833488035882800707

/-!
# A068993: Numbers k such that A062799(k) = 4.

The programs for A068993, the canonical program `A068993.P18255477048502972126` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068993 has offset 1).

The definition of A068993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068993.P2339810330011654589

`∪[A006881(n+1), A030514(n+1)]`
-/

namespace A068993.P2339810330011654589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068993.P2339810330011654589

namespace A068993

/-- `∪[A006881(n+1), A030514(n+1)]` -/
def P2339810330011654589.Spec : Prop :=
  ∀ n, (P2339810330011654589.a n : ℤ) = A068993 (n + 1)

end A068993

/-! ## A068993.P527418357735161130

`∪[A001248(n+1)², A006881(n+1)]`
-/

namespace A068993.P527418357735161130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068993.P527418357735161130

namespace A068993

/-- `∪[A001248(n+1)², A006881(n+1)]` -/
def P527418357735161130.Spec : Prop :=
  ∀ n, (P527418357735161130.a n : ℤ) = A068993 (n + 1)

end A068993

/-! ## A068993.P6448083462126405065

`∪[A000040(n+1)²², A006881(n+1)]`
-/

namespace A068993.P6448083462126405065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068993.P6448083462126405065

namespace A068993

/-- `∪[A000040(n+1)²², A006881(n+1)]` -/
def P6448083462126405065.Spec : Prop :=
  ∀ n, (P6448083462126405065.a n : ℤ) = A068993 (n + 1)

end A068993

/-! ## A068993.P1482272847256921023

`∪[A006881(n+1), A030475(n+1)²²]`
-/

namespace A068993.P1482272847256921023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030475 (n + 1) ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068993.P1482272847256921023

namespace A068993

/-- `∪[A006881(n+1), A030475(n+1)²²]` -/
def P1482272847256921023.Spec : Prop :=
  ∀ n, (P1482272847256921023.a n : ℤ) = A068993 (n + 1)

end A068993

/-! ## A068993.P17239949620761963711

`eq[A077462(n), A161857(A077462(n)+2)]`
-/

namespace A068993.P17239949620761963711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161857 (A077462 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068993.P17239949620761963711

namespace A068993

/-- `eq[A077462(n), A161857(A077462(n)+2)]` -/
def P17239949620761963711.Spec : Prop :=
  ∀ n, (P17239949620761963711.a n : ℤ) = A068993 (n + 1)

end A068993

/-! ## A068993.P12524884635225467285

`filter[A332269(n+1), A065043(#)]`
-/

namespace A068993.P12524884635225467285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A068993.P12524884635225467285

namespace A068993

/-- `filter[A332269(n+1), A065043(#)]` -/
def P12524884635225467285.Spec : Prop :=
  ∀ n, P12524884635225467285.a n = A068993 (n + 1)

end A068993

/-! ## A068993.P18255477048502972126

`filter[A332269(n+1), A353519(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A068993

/-- `filter[A332269(n+1), A353519(#)]` -/
def P18255477048502972126.Spec : Prop :=
  ∀ n, P18255477048502972126.a n = A068993 (n + 1)

theorem P18255477048502972126.correct : P18255477048502972126.Spec := by
  intro n
  simp only [A068993, Nat.add_sub_cancel]

end A068993

/-! ## A068993.P6429834434757437407

`filter[A332269(n+1), A355823(#)]`
-/

namespace A068993.P6429834434757437407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A068993.P6429834434757437407

namespace A068993

/-- `filter[A332269(n+1), A355823(#)]` -/
def P6429834434757437407.Spec : Prop :=
  ∀ n, P6429834434757437407.a n = A068993 (n + 1)

end A068993

/-! ## A068993.P14576869567762088435

`filter[A332269(n+1), A355825(#)]`
-/

namespace A068993.P14576869567762088435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A068993.P14576869567762088435

namespace A068993

/-- `filter[A332269(n+1), A355825(#)]` -/
def P14576869567762088435.Spec : Prop :=
  ∀ n, P14576869567762088435.a n = A068993 (n + 1)

end A068993

/-! ## A068993.P15810009627845982123

`filter[A332269(n+1), A369255(#)]`
-/

namespace A068993.P15810009627845982123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A068993.P15810009627845982123

namespace A068993

/-- `filter[A332269(n+1), A369255(#)]` -/
def P15810009627845982123.Spec : Prop :=
  ∀ n, P15810009627845982123.a n = A068993 (n + 1)

end A068993

/-! ## A068993.P7969575604173718850

`filter[A332269(n+1), A378215(#)]`
-/

namespace A068993.P7969575604173718850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378215 (f1 j).toNat = 1) n)

end

end A068993.P7969575604173718850

namespace A068993

/-- `filter[A332269(n+1), A378215(#)]` -/
def P7969575604173718850.Spec : Prop :=
  ∀ n, P7969575604173718850.a n = A068993 (n + 1)

end A068993

/-! ## A068993.P10384555066005032370

`filter[A346041(n+1), A378215(#)]`
-/

namespace A068993.P10384555066005032370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378215 (f1 j).toNat = 1) n)

end

end A068993.P10384555066005032370

namespace A068993

/-- `filter[A346041(n+1), A378215(#)]` -/
def P10384555066005032370.Spec : Prop :=
  ∀ n, P10384555066005032370.a n = A068993 (n + 1)

end A068993

/-! ## A068993.P3388480654341390277

`∩[A085155(n+1), A332269(n+1)]`
-/

namespace A068993.P3388480654341390277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068993.P3388480654341390277

namespace A068993

/-- `∩[A085155(n+1), A332269(n+1)]` -/
def P3388480654341390277.Spec : Prop :=
  ∀ n, (P3388480654341390277.a n : ℤ) = A068993 (n + 1)

end A068993

/-! ## A068993.P13001870536370833973

`filter[A354144(n+3), A378215(#)]`
-/

namespace A068993.P13001870536370833973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378215 (f1 j).toNat = 1) n)

end

end A068993.P13001870536370833973

namespace A068993

/-- `filter[A354144(n+3), A378215(#)]` -/
def P13001870536370833973.Spec : Prop :=
  ∀ n, P13001870536370833973.a n = A068993 (n + 1)

end A068993

/-! ## A068993.P16239829856939623239

`∩[A028260(n+1), A332269(n+1)]`
-/

namespace A068993.P16239829856939623239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068993.P16239829856939623239

namespace A068993

/-- `∩[A028260(n+1), A332269(n+1)]` -/
def P16239829856939623239.Spec : Prop :=
  ∀ n, (P16239829856939623239.a n : ℤ) = A068993 (n + 1)

end A068993

/-! ## A068993.P14115123191402297102

`filter[A332269(n+1), A174898(#)]`
-/

namespace A068993.P14115123191402297102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A068993.P14115123191402297102

namespace A068993

/-- `filter[A332269(n+1), A174898(#)]` -/
def P14115123191402297102.Spec : Prop :=
  ∀ n, P14115123191402297102.a n = A068993 (n + 1)

end A068993

/-! ## A068993.P2806368099770414823

`∩[A210490(n+1), A332269(n+1)]`
-/

namespace A068993.P2806368099770414823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068993.P2806368099770414823

namespace A068993

/-- `∩[A210490(n+1), A332269(n+1)]` -/
def P2806368099770414823.Spec : Prop :=
  ∀ n, (P2806368099770414823.a n : ℤ) = A068993 (n + 1)

end A068993

/-! ## A068993.P3631394854585684719

`∩[A233182(n+1), A332269(n+1)]`
-/

namespace A068993.P3631394854585684719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068993.P3631394854585684719

namespace A068993

/-- `∩[A233182(n+1), A332269(n+1)]` -/
def P3631394854585684719.Spec : Prop :=
  ∀ n, (P3631394854585684719.a n : ℤ) = A068993 (n + 1)

end A068993

/-! ## A068993.P1596530528852192477

`∩[A336592(n+1), A332269(n+1)]`
-/

namespace A068993.P1596530528852192477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068993.P1596530528852192477

namespace A068993

/-- `∩[A336592(n+1), A332269(n+1)]` -/
def P1596530528852192477.Spec : Prop :=
  ∀ n, (P1596530528852192477.a n : ℤ) = A068993 (n + 1)

end A068993

/-! ## A068993.P15606665109104577624

`∩[A007412(n+1), A332269(n+1)]`
-/

namespace A068993.P15606665109104577624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068993.P15606665109104577624

namespace A068993

/-- `∩[A007412(n+1), A332269(n+1)]` -/
def P15606665109104577624.Spec : Prop :=
  ∀ n, (P15606665109104577624.a n : ℤ) = A068993 (n + 1)

end A068993

/-!
# A068994: Powers of 2 with all even digits.

The programs for A068994, there is no canonical definition to state claims against.
-/

/-! ## A068994.P744253315501507052

`2^round(∑[sqrt(n!)])`
-/

namespace A068994.P744253315501507052
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.factorial n : ℝ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A068994.P744253315501507052

/-!
# A068995: Integer parts of the square roots of the schizophrenic numbers (A014824).

The programs for A068995, the canonical program `A068995.P18313009583338607265` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068995 has offset 1).

The definition of A068995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068995.P18313009583338607265

`floor(sqrt(10)^(n+2)/9)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068995

/-- `floor(sqrt(10)^(n+2)/9)` -/
def P18313009583338607265.Spec : Prop :=
  ∀ n, P18313009583338607265.a n = A068995 (n + 1)

theorem P18313009583338607265.correct : P18313009583338607265.Spec := by
  intro n
  simp only [A068995, Nat.add_sub_cancel]

end A068995

/-! ## A068995.P1300508911220476593

`record[floor(10^(A002262(n)/2+1)/9)]`
-/

namespace A068995.P1300508911220476593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((A002262 n : ℚ) / 2 + 1 : ℝ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068995.P1300508911220476593

namespace A068995

/-- `record[floor(10^(A002262(n)/2+1)/9)]` -/
def P1300508911220476593.Spec : Prop :=
  ∀ n, P1300508911220476593.a n = A068995 (n + 1)

end A068995

/-! ## A068995.P5738846757475546601

`floor(sqrt(A014824(n+1)))+and(2, n²)`
-/

namespace A068995.P5738846757475546601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A014824 (n + 1)) + (Nat.land 2 (n ^ 2) : ℤ)

end

end A068995.P5738846757475546601

namespace A068995

/-- `floor(sqrt(A014824(n+1)))+and(2, n²)` -/
def P5738846757475546601.Spec : Prop :=
  ∀ n, P5738846757475546601.a n = A068995 (n + 1)

end A068995

/-! ## A068995.P1794220879124670932

`ceil(∑[A000042(n+1)+2]^(1/2))-1`
-/

namespace A068995.P1794220879124670932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌉ - 1

end

end A068995.P1794220879124670932

namespace A068995

/-- `ceil(∑[A000042(n+1)+2]^(1/2))-1` -/
def P1794220879124670932.Spec : Prop :=
  ∀ n, P1794220879124670932.a n = A068995 (n + 1)

end A068995

/-! ## A068995.P5341299804493666763

`ceil(sqrt(A000042(n+2))/3)-1`
-/

namespace A068995.P5341299804493666763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000042 (n + 2) : ℝ) / 3⌉ - 1

end

end A068995.P5341299804493666763

namespace A068995

/-- `ceil(sqrt(A000042(n+2))/3)-1` -/
def P5341299804493666763.Spec : Prop :=
  ∀ n, P5341299804493666763.a n = A068995 (n + 1)

end A068995

/-!
# A068996: Decimal expansion of 1 - 1/e.

The programs for A068996, there is no canonical definition to state claims against.
-/

/-! ## A068996.P2180813852182881933

`9-A068985(n)`
-/

namespace A068996.P2180813852182881933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A068985 n

end

end A068996.P2180813852182881933

/-! ## A068996.P7434380183209987978

`a(n-1)-A138361(n)` with `a(0)=6`
-/

namespace A068996.P7434380183209987978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) - A138361 n

end

end A068996.P7434380183209987978

/-! ## A068996.P11070927016196562304

`9-abs(∑[A138361(abs(1-n)+1)]+2)`
-/

namespace A068996.P11070927016196562304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - |∑ j ∈ Finset.range (n + 1), f1 j + 2|

end

end A068996.P11070927016196562304

/-! ## A068996.P16394182557733312750

`9-∑[A138361(A028310(n))]`
-/

namespace A068996.P16394182557733312750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068996.P16394182557733312750

/-! ## A068996.P9274403546158699705

`9-∑[A138361(A000007(n)+n)]`
-/

namespace A068996.P9274403546158699705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068996.P9274403546158699705

/-! ## A068996.P274508647881287410

`9-∑[A138361(A065033(2*n))]`
-/

namespace A068996.P274508647881287410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068996.P274508647881287410

/-! ## A068996.P6766786175816036195

`9-∑[A138361(A008683((n+1)*(n+1))+n)]`
-/

namespace A068996.P6766786175816036195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138361 (A008683 ((n + 1) * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068996.P6766786175816036195

/-!
# A068997: Numbers k such that Sum_{d|k} d*mu(d) divides k.

The programs for A068997, there is no canonical definition to state claims against.
-/

/-! ## A068997.P17369973131141562796

`eq[A126864(n+1), A173557(n+1)]+1`
-/

namespace A068997.P17369973131141562796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068997.P17369973131141562796

/-! ## A068997.P14955568270046900838

`record[gcd(n+1, (n+1)%A023900(n+1))]`
-/

namespace A068997.P14955568270046900838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A023900 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068997.P14955568270046900838

/-! ## A068997.P12771874124375008302

`eq[1, A295127(n+1)²]+1`
-/

namespace A068997.P12771874124375008302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295127 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068997.P12771874124375008302

/-! ## A068997.P7795163353115142663

`record[gcd(A006370(2*(n+1)), A077666(n+1))]`
-/

namespace A068997.P7795163353115142663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006370 (2 * (n + 1))) (A077666 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068997.P7795163353115142663

/-!
# A068998: Numbers m such that the concatenation of the prime factors of m (in increasing order and ignoring multiplicity) is prime.

The programs for A068998, there is no canonical definition to state claims against.
-/

/-! ## A068998.P8597004901264825500

`eq[1, ∑{e}[A084317(∏{p}[n, #]), #]]`
-/

namespace A068998.P8597004901264825500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (∏ p ∈ Nat.primeFactors (f4 n), p)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068998.P8597004901264825500

/-! ## A068998.P4122130711831431279

`eq[1, ∑{e}[A084317(n+1), #]]+1`
-/

namespace A068998.P4122130711831431279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068998.P4122130711831431279

/-! ## A068998.P15756714678169462021

`eq[1, A054024(A037276(∏{p}[n, #]))]`
-/

namespace A068998.P15756714678169462021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A037276 (∏ p ∈ Nat.primeFactors (f3 n), p)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068998.P15756714678169462021

/-! ## A068998.P18201717560654104079

`lt[A343156(n+2), 2]+2`
-/

namespace A068998.P18201717560654104079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343156 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A068998.P18201717560654104079

/-! ## A068998.P16614013835214381694

`∪[A000040(n+1), A209799(n+1)]`
-/

namespace A068998.P16614013835214381694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068998.P16614013835214381694

/-! ## A068998.P9461923336542490381

`∪[A000430(n+1), A209799(n+1)]`
-/

namespace A068998.P9461923336542490381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068998.P9461923336542490381

/-! ## A068998.P1761633643772052885

`∪[A009087(n+1), A209799(n+1)]`
-/

namespace A068998.P1761633643772052885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068998.P1761633643772052885

/-! ## A068998.P9395961000844117645

`∪[A049551(n+1), A209799(n+1)]`
-/

namespace A068998.P9395961000844117645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068998.P9395961000844117645

/-! ## A068998.P4454196384587262789

`∪[A050376(n+1), A209799(n+1)]`
-/

namespace A068998.P4454196384587262789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068998.P4454196384587262789

/-! ## A068998.P15121236261161597394

`∪[A051948(n+1), A209799(n+1)]`
-/

namespace A068998.P15121236261161597394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068998.P15121236261161597394

/-! ## A068998.P9326902325596156059

`∪[A057448(n+1), A209799(n+1)]`
-/

namespace A068998.P9326902325596156059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068998.P9326902325596156059

/-!
# A068999: Numbers k such that k = (sum of distinct prime factors of k)*(product of distinct prime factors of k).

The programs for A068999, there is no canonical definition to state claims against.
-/

/-! ## A068999.P4197724797167345548

`A020725(eq[A003557(n+1), A008472(n+1)])`
-/

namespace A068999.P4197724797167345548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068999.P4197724797167345548

/-! ## A068999.P3086921832228240787

`A020725(eq[A003557(n+1), A105221(n+1)])`
-/

namespace A068999.P3086921832228240787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068999.P3086921832228240787

/-! ## A068999.P14670658820505020013

`A247078(n+1)-A325336(A325301(2*(n+1)))`
-/

namespace A068999.P14670658820505020013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247078 (n + 1) - A325336 (A325301 (2 * (n + 1))).toNat

end

end A068999.P14670658820505020013

/-! ## A068999.P12280323891684966042

`∩[A085924(n), A349931(n+1)]`
-/

namespace A068999.P12280323891684966042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068999.P12280323891684966042

