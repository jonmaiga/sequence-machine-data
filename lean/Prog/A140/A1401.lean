import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A140100: Start with Y(0)=0, X(1)=1, Y(1)=2. For n > 1, choose least positive integers Y(n) > X(n) such that neither Y(n) nor X(n) appear in {Y(k), 1 <= k < n} or {X(k), 1 <= k < n} and such that Y(n) - X(n) does not appear in {Y(k) - X(k), 1 <= k < n} or {Y(k) + X(k), 1 <= k < n}; sequence gives X(n) (for Y(n) see A140101).

The programs for A140100, the canonical program `A140100.P9463033727352148210` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140100 has offset 1).

The definition of A140100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140100.P18056996256225888098

`comp[A140101(n)]`
-/

namespace A140100.P18056996256225888098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140100.P18056996256225888098

namespace A140100

/-- `comp[A140101(n)]` -/
def P18056996256225888098.Spec : Prop :=
  ∀ n, (P18056996256225888098.a n : ℤ) = A140100 (n + 1)

end A140100

/-! ## A140100.P5437954529182647018

`A276796(n)+1+n`
-/

namespace A140100.P5437954529182647018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n + 1 + (n : ℤ)

end

end A140100.P5437954529182647018

namespace A140100

/-- `A276796(n)+1+n` -/
def P5437954529182647018.Spec : Prop :=
  ∀ n, P5437954529182647018.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P4605017341905741005

`∑[p?[A059832(n)]-1]`
-/

namespace A140100.P4605017341905741005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140100.P4605017341905741005

namespace A140100

/-- `∑[p?[A059832(n)]-1]` -/
def P4605017341905741005.Spec : Prop :=
  ∀ n, P4605017341905741005.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P11069035073017622599

`∑[gcd(2, A275925(n+1))]`
-/

namespace A140100.P11069035073017622599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A275925 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140100.P11069035073017622599

namespace A140100

/-- `∑[gcd(2, A275925(n+1))]` -/
def P11069035073017622599.Spec : Prop :=
  ∀ n, (P11069035073017622599.a n : ℤ) = A140100 (n + 1)

end A140100

/-! ## A140100.P4655671861182737924

`A305392(n)+a(n-1)` with `a(0)=1`
-/

namespace A140100.P4655671861182737924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305392 n + a (n - 1)

end

end A140100.P4655671861182737924

namespace A140100

/-- `A305392(n)+a(n-1)` -/
def P4655671861182737924.Spec : Prop :=
  ∀ n, P4655671861182737924.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P6227563318092842457

`∑[char[A003144(n+1)]+1]`
-/

namespace A140100.P6227563318092842457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140100.P6227563318092842457

namespace A140100

/-- `∑[char[A003144(n+1)]+1]` -/
def P6227563318092842457.Spec : Prop :=
  ∀ n, (P6227563318092842457.a n : ℤ) = A140100 (n + 1)

end A140100

/-! ## A140100.P9463033727352148210

`a(n-1)+A276793(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140100

/-- `a(n-1)+A276793(n)+1` -/
def P9463033727352148210.Spec : Prop :=
  ∀ n, P9463033727352148210.a n = A140100 (n + 1)

theorem P9463033727352148210.correct : P9463033727352148210.Spec := by
  intro n
  simp only [A140100, Nat.add_sub_cancel]

end A140100

/-! ## A140100.P4588868766281569052

`A278040(n)-A278039(n)`
-/

namespace A140100.P4588868766281569052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n - A278039 n

end

end A140100.P4588868766281569052

namespace A140100

/-- `A278040(n)-A278039(n)` -/
def P4588868766281569052.Spec : Prop :=
  ∀ n, P4588868766281569052.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P18334361081098460417

`A003144(n+1)-A276797(n)`
-/

namespace A140100.P18334361081098460417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) - A276797 n

end

end A140100.P18334361081098460417

namespace A140100

/-- `A003144(n+1)-A276797(n)` -/
def P18334361081098460417.Spec : Prop :=
  ∀ n, P18334361081098460417.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P15963304655610849547

`A278039(n)+1-A276797(n)`
-/

namespace A140100.P15963304655610849547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n + (1 - A276797 n)

end

end A140100.P15963304655610849547

namespace A140100

/-- `A278039(n)+1-A276797(n)` -/
def P15963304655610849547.Spec : Prop :=
  ∀ n, P15963304655610849547.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P11428644043177005554

`A308199(n)+1-A278039(n)`
-/

namespace A140100.P11428644043177005554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 n + (1 - A278039 n)

end

end A140100.P11428644043177005554

namespace A140100

/-- `A308199(n)+1-A278039(n)` -/
def P11428644043177005554.Spec : Prop :=
  ∀ n, P11428644043177005554.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P3266194028981572506

`A005408(n)-(n-A276796(n))`
-/

namespace A140100.P3266194028981572506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((n : ℤ) - A276796 n)

end

end A140100.P3266194028981572506

namespace A140100

/-- `A005408(n)-(n-A276796(n))` -/
def P3266194028981572506.Spec : Prop :=
  ∀ n, P3266194028981572506.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P5269315289238063561

`A276404(n+1)+A140098(n+1)`
-/

namespace A140100.P5269315289238063561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (n + 1) + A140098 (n + 1)

end

end A140100.P5269315289238063561

namespace A140100

/-- `A276404(n+1)+A140098(n+1)` -/
def P5269315289238063561.Spec : Prop :=
  ∀ n, P5269315289238063561.a n = A140100 (n + 1)

theorem P5269315289238063561.correct : P5269315289238063561.Spec := by
  intro n
  simp only [A140100, Nat.add_sub_cancel, A140100.P5269315289238063561.a, A140100.P9463033727352148210.a, A140098, A140098.P3927488538195493875.a, A276404, A276404.P12576647508726385043.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, A158919, A158919.P1966360015333059393.a, A184821, A184821.P12244193815727515257.f1, A184821.P12244193815727515257.a, A092782, A092782.P12994304615251165252.a, A317198, A317198.P16178072195932306559.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A140100

/-! ## A140100.P18358446525849059538

`A317192(n+1)+A140102(n+1)`
-/

namespace A140100.P18358446525849059538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317192 (n + 1) + A140102 (n + 1)

end

end A140100.P18358446525849059538

namespace A140100

/-- `A317192(n+1)+A140102(n+1)` -/
def P18358446525849059538.Spec : Prop :=
  ∀ n, P18358446525849059538.a n = A140100 (n + 1)

theorem P18358446525849059538.correct : P18358446525849059538.Spec := by
  intro n
  simp only [A140100, Nat.add_sub_cancel, A140100.P18358446525849059538.a, A140100.P9463033727352148210.a, A140102, A140102.P7920234187316710791.f1, A140102.P7920234187316710791.a, A276793, A276793.P6692856727762475709.a, A317192, A317192.P13018773747405505076.a, A080843, A080843.P14729485223719297457.a, A140103, A140103.P10507657659334909874.a, A092782, A092782.P12994304615251165252.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A317198, A317198.P16178072195932306559.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140100

/-! ## A140100.P18190506755675016958

`A003145(n+1)-A003144(n+1)`
-/

namespace A140100.P18190506755675016958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) - A003144 (n + 1)

end

end A140100.P18190506755675016958

namespace A140100

/-- `A003145(n+1)-A003144(n+1)` -/
def P18190506755675016958.Spec : Prop :=
  ∀ n, P18190506755675016958.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P6766007310860940779

`A140101(n+1)-A140102(n+1)`
-/

namespace A140100.P6766007310860940779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) - A140102 (n + 1)

end

end A140100.P6766007310860940779

namespace A140100

/-- `A140101(n+1)-A140102(n+1)` -/
def P6766007310860940779.Spec : Prop :=
  ∀ n, P6766007310860940779.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P14064060866939426042

`A140103(n+1)-A140101(n+1)`
-/

namespace A140100.P14064060866939426042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) - A140101 (n + 1)

end

end A140100.P14064060866939426042

namespace A140100

/-- `A140103(n+1)-A140101(n+1)` -/
def P14064060866939426042.Spec : Prop :=
  ∀ n, P14064060866939426042.a n = A140100 (n + 1)

theorem P14064060866939426042.correct : P14064060866939426042.Spec := by
  intro n
  simp only [A140100, Nat.add_sub_cancel, A140100.P14064060866939426042.a, A140100.P9463033727352148210.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A140103, A140103.P10507657659334909874.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, A092782, A092782.P12994304615251165252.a, A317198, A317198.P16178072195932306559.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140100

/-! ## A140100.P12076767173647592149

`A003145(n+1)-(A278039(n)+1)`
-/

namespace A140100.P12076767173647592149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) - (A278039 n + 1)

end

end A140100.P12076767173647592149

namespace A140100

/-- `A003145(n+1)-(A278039(n)+1)` -/
def P12076767173647592149.Spec : Prop :=
  ∀ n, P12076767173647592149.a n = A140100 (n + 1)

end A140100

/-! ## A140100.P11165974872427430718

`A278040(n)+1-A003144(n+1)`
-/

namespace A140100.P11165974872427430718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n + (1 - A003144 (n + 1))

end

end A140100.P11165974872427430718

namespace A140100

/-- `A278040(n)+1-A003144(n+1)` -/
def P11165974872427430718.Spec : Prop :=
  ∀ n, P11165974872427430718.a n = A140100 (n + 1)

end A140100

/-!
# A140101: Start with Y(0)=0, X(1)=1, Y(1)=2. For n > 1, choose least positive integers Y(n) > X(n) such that neither Y(n) nor X(n) appear in {Y(k), 1 <= k < n} or {X(k), 1 <= k < n} and such that Y(n)-X(n) does not appear in {Y(k)-X(k), 1 <= k < n} or {Y(k)+X(k), 1 <= k < n}; sequence gives Y(n) (for X(n) see A140100).

The programs for A140101, the canonical program `A140101.P15800623837645593610` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140101 has offset 0).

The definition of A140101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140101.P15800623837645593610

`comp[A140100(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A140101

/-- `comp[A140100(n+1)]` -/
def P15800623837645593610.Spec : Prop :=
  ∀ n, (P15800623837645593610.a n : ℤ) = A140101 n

theorem P15800623837645593610.correct : P15800623837645593610.Spec := by
  intro n
  simp only [A140101]

end A140101

/-! ## A140101.P13596619800985373197

`comp[A003265(n+1)+1]+n`
-/

namespace A140101.P13596619800985373197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A140101.P13596619800985373197

namespace A140101

/-- `comp[A003265(n+1)+1]+n` -/
def P13596619800985373197.Spec : Prop :=
  ∀ n, (P13596619800985373197.a n : ℤ) = A140101 n

end A140101

/-! ## A140101.P3864888985770138249

`∑[A305374(n)]-A305374(n)`
-/

namespace A140101.P3864888985770138249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A305374 n

end

end A140101.P3864888985770138249

namespace A140101

/-- `∑[A305374(n)]-A305374(n)` -/
def P3864888985770138249.Spec : Prop :=
  ∀ n, P3864888985770138249.a n = A140101 n

end A140101

/-! ## A140101.P2533598075921044195

`A140100(n+1)+A140102(n+1)-A305374(n)`
-/

namespace A140101.P2533598075921044195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) + (A140102 (n + 1) - A305374 n)

end

end A140101.P2533598075921044195

namespace A140101

/-- `A140100(n+1)+A140102(n+1)-A305374(n)` -/
def P2533598075921044195.Spec : Prop :=
  ∀ n, P2533598075921044195.a n = A140101 n

end A140101

/-! ## A140101.P17032619830356716753

`A140103(n+1)-(A305374(n)+A140100(n+1))`
-/

namespace A140101.P17032619830356716753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) - (A305374 n + A140100 (n + 1))

end

end A140101.P17032619830356716753

namespace A140101

/-- `A140103(n+1)-(A305374(n)+A140100(n+1))` -/
def P17032619830356716753.Spec : Prop :=
  ∀ n, P17032619830356716753.a n = A140101 n

theorem P17032619830356716753.correct : P17032619830356716753.Spec := by
  intro n
  simp only [A140101, Nat.add_sub_cancel, A140101.P17032619830356716753.a, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A140100, A140100.P9463033727352148210.a, A140103, A140103.P10507657659334909874.a, A305374, A305374.P17612243429191767382.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, A092782, A092782.P12994304615251165252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140101

/-! ## A140101.P1039925763629259337

`record[(n+1)*A305386(n+1)]`
-/

namespace A140101.P1039925763629259337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A305386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140101.P1039925763629259337

namespace A140101

/-- `record[(n+1)*A305386(n+1)]` -/
def P1039925763629259337.Spec : Prop :=
  ∀ n, P1039925763629259337.a n = A140101 n

end A140101

/-! ## A140101.P14654634839616788151

`A276796(record[n*A276794(n)])+n`
-/

namespace A140101.P14654634839616788151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n : ℤ)

end

end A140101.P14654634839616788151

namespace A140101

/-- `A276796(record[n*A276794(n)])+n` -/
def P14654634839616788151.Spec : Prop :=
  ∀ n, P14654634839616788151.a n = A140101 n

end A140101

/-! ## A140101.P1313270374540266171

`A276796(A305373(n))`
-/

namespace A140101.P1313270374540266171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A305373 n).toNat

end

end A140101.P1313270374540266171

namespace A140101

/-- `A276796(A305373(n))` -/
def P1313270374540266171.Spec : Prop :=
  ∀ n, P1313270374540266171.a n = A140101 n

end A140101

/-! ## A140101.P7826313582032968774

`A276796(A003146(n+1)-(n+1)-A275925(n+1))`
-/

namespace A140101.P7826313582032968774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A003146 (n + 1) - (n + 1 : ℤ) - A275925 (n + 1)).toNat

end

end A140101.P7826313582032968774

namespace A140101

/-- `A276796(A003146(n+1)-(n+1)-A275925(n+1))` -/
def P7826313582032968774.Spec : Prop :=
  ∀ n, P7826313582032968774.a n = A140101 n

end A140101

/-! ## A140101.P2834851284823721950

`A276797(record[n*A276791(n)])+n`
-/

namespace A140101.P2834851284823721950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n : ℤ)

end

end A140101.P2834851284823721950

namespace A140101

/-- `A276797(record[n*A276791(n)])+n` -/
def P2834851284823721950.Spec : Prop :=
  ∀ n, P2834851284823721950.a n = A140101 n

end A140101

/-!
# A140102: Term-by-term differences of A140101 and A140100; also, equals the complement of A140103, which is the term-by-term sums of A140101 and A140100, where A140101 is the complement of A140100.

The programs for A140102, the canonical program `A140102.P7920234187316710791` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140102 has offset 0).

The definition of A140102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140102.P7920234187316710791

`comp[A140103(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A140102

/-- `comp[A140103(n+1)]` -/
def P7920234187316710791.Spec : Prop :=
  ∀ n, (P7920234187316710791.a n : ℤ) = A140102 n

theorem P7920234187316710791.correct : P7920234187316710791.Spec := by
  intro n
  simp only [A140102]

end A140102

/-! ## A140102.P8849821959053282423

`comp[A003145(n+1)+n+1]`
-/

namespace A140102.P8849821959053282423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140102.P8849821959053282423

namespace A140102

/-- `comp[A003145(n+1)+n+1]` -/
def P8849821959053282423.Spec : Prop :=
  ∀ n, (P8849821959053282423.a n : ℤ) = A140102 n

end A140102

/-! ## A140102.P14651421300262307308

`comp[A278041(n)-A278039(n)]`
-/

namespace A140102.P14651421300262307308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n - A278039 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140102.P14651421300262307308

namespace A140102

/-- `comp[A278041(n)-A278039(n)]` -/
def P14651421300262307308.Spec : Prop :=
  ∀ n, (P14651421300262307308.a n : ℤ) = A140102 n

end A140102

/-! ## A140102.P14879490205429364813

`comp[A003146(n+1)-A003144(n+1)]`
-/

namespace A140102.P14879490205429364813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) - A003144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140102.P14879490205429364813

namespace A140102

/-- `comp[A003146(n+1)-A003144(n+1)]` -/
def P14879490205429364813.Spec : Prop :=
  ∀ n, (P14879490205429364813.a n : ℤ) = A140102 n

end A140102

/-! ## A140102.P994726643162648501

`lt[A185114(n+1), A059832(n)]`
-/

namespace A140102.P994726643162648501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140102.P994726643162648501

namespace A140102

/-- `lt[A185114(n+1), A059832(n)]` -/
def P994726643162648501.Spec : Prop :=
  ∀ n, (P994726643162648501.a n : ℤ) = A140102 n

end A140102

/-!
# A140103: Term-by-term sums of A140101 and A140100; also, equals the complement of A140102, which is the term-by-term differences of A140101 and A140100, where A140101 is the complement of A140100.

The programs for A140103, the canonical program `A140103.P10507657659334909874` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140103 has offset 1).

The definition of A140103 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140100, A140101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140103.P10507657659334909874

`A140100(n+1)+A140101(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A140103

/-- `A140100(n+1)+A140101(n+1)` -/
def P10507657659334909874.Spec : Prop :=
  ∀ n, P10507657659334909874.a n = A140103 (n + 1)

theorem P10507657659334909874.correct : P10507657659334909874.Spec := by
  intro n
  simp only [A140103, Nat.add_sub_cancel]

end A140103

/-! ## A140103.P1735666936533158606

`comp[A140102(n)]`
-/

namespace A140103.P1735666936533158606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140103.P1735666936533158606

namespace A140103

/-- `comp[A140102(n)]` -/
def P1735666936533158606.Spec : Prop :=
  ∀ n, (P1735666936533158606.a n : ℤ) = A140103 (n + 1)

end A140103

/-! ## A140103.P5638371171980760644

`A278040(n)+2+n`
-/

namespace A140103.P5638371171980760644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n + 2 + (n : ℤ)

end

end A140103.P5638371171980760644

namespace A140103

/-- `A278040(n)+2+n` -/
def P5638371171980760644.Spec : Prop :=
  ∀ n, P5638371171980760644.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P7392430468360721916

`A308199(n)+3+n`
-/

namespace A140103.P7392430468360721916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 n + 3 + (n : ℤ)

end

end A140103.P7392430468360721916

namespace A140103

/-- `A308199(n)+3+n` -/
def P7392430468360721916.Spec : Prop :=
  ∀ n, P7392430468360721916.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P17609935121987264733

`n+1+A003145(n+1)`
-/

namespace A140103.P17609935121987264733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003145 (n + 1)

end

end A140103.P17609935121987264733

namespace A140103

/-- `n+1+A003145(n+1)` -/
def P17609935121987264733.Spec : Prop :=
  ∀ n, P17609935121987264733.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P3079212474025668970

`A305394(n)+a(n-1)` with `a(0)=3`
-/

namespace A140103.P3079212474025668970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A305394 n + a (n - 1)

end

end A140103.P3079212474025668970

namespace A140103

/-- `A305394(n)+a(n-1)` -/
def P3079212474025668970.Spec : Prop :=
  ∀ n, P3079212474025668970.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P7268274637200869357

`A140102(A278040(n))+2`
-/

namespace A140103.P7268274637200869357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 (A278040 n).toNat + 2

end

end A140103.P7268274637200869357

namespace A140103

/-- `A140102(A278040(n))+2` -/
def P7268274637200869357.Spec : Prop :=
  ∀ n, P7268274637200869357.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P4415794530017464070

`A278041(n)-A278039(n)`
-/

namespace A140103.P4415794530017464070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n - A278039 n

end

end A140103.P4415794530017464070

namespace A140103

/-- `A278041(n)-A278039(n)` -/
def P4415794530017464070.Spec : Prop :=
  ∀ n, P4415794530017464070.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P4442237853415740292

`A140102(A003145(n+1))+1`
-/

namespace A140103.P4442237853415740292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 (A003145 (n + 1)).toNat + 1

end

end A140103.P4442237853415740292

namespace A140103

/-- `A140102(A003145(n+1))+1` -/
def P4442237853415740292.Spec : Prop :=
  ∀ n, P4442237853415740292.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P5806421924006785522

`A140101(n+1)+comp[A140101(n)]`
-/

namespace A140103.P5806421924006785522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A140103.P5806421924006785522

namespace A140103

/-- `A140101(n+1)+comp[A140101(n)]` -/
def P5806421924006785522.Spec : Prop :=
  ∀ n, P5806421924006785522.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P4299047349742131338

`A278039(A003144(n+1))+n+1`
-/

namespace A140103.P4299047349742131338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A003144 (n + 1)).toNat + (n + 1 : ℤ)

end

end A140103.P4299047349742131338

namespace A140103

/-- `A278039(A003144(n+1))+n+1` -/
def P4299047349742131338.Spec : Prop :=
  ∀ n, P4299047349742131338.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P5198672956201945203

`A003146(n+1)-A003144(n+1)`
-/

namespace A140103.P5198672956201945203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) - A003144 (n + 1)

end

end A140103.P5198672956201945203

namespace A140103

/-- `A003146(n+1)-A003144(n+1)` -/
def P5198672956201945203.Spec : Prop :=
  ∀ n, P5198672956201945203.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P17812542851674714854

`A003146(n+1)-(A278039(n)+1)`
-/

namespace A140103.P17812542851674714854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) - (A278039 n + 1)

end

end A140103.P17812542851674714854

namespace A140103

/-- `A003146(n+1)-(A278039(n)+1)` -/
def P17812542851674714854.Spec : Prop :=
  ∀ n, P17812542851674714854.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P16826716173924883001

`A278041(n)+1-A003144(n+1)`
-/

namespace A140103.P16826716173924883001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n + (1 - A003144 (n + 1))

end

end A140103.P16826716173924883001

namespace A140103

/-- `A278041(n)+1-A003144(n+1)` -/
def P16826716173924883001.Spec : Prop :=
  ∀ n, P16826716173924883001.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P12595326260864929379

`A319967(n+1)+1-A278039(n)`
-/

namespace A140103.P12595326260864929379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (n + 1) + (1 - A278039 n)

end

end A140103.P12595326260864929379

namespace A140103

/-- `A319967(n+1)+1-A278039(n)` -/
def P12595326260864929379.Spec : Prop :=
  ∀ n, P12595326260864929379.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P10420882173552981537

`A319972(n+1)%A319966(n+1)`
-/

namespace A140103.P10420882173552981537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319972 (n + 1)) (A319966 (n + 1))

end

end A140103.P10420882173552981537

namespace A140103

/-- `A319972(n+1)%A319966(n+1)` -/
def P10420882173552981537.Spec : Prop :=
  ∀ n, P10420882173552981537.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P11672585134043075377

`A278041(n)-eq[1, A092782(n+1)]`
-/

namespace A140103.P11672585134043075377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A140103.P11672585134043075377

namespace A140103

/-- `A278041(n)-eq[1, A092782(n+1)]` -/
def P11672585134043075377.Spec : Prop :=
  ∀ n, P11672585134043075377.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P2171727981428788736

`A319967(n+1)+2-A003144(n+1)`
-/

namespace A140103.P2171727981428788736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (n + 1) + (2 - A003144 (n + 1))

end

end A140103.P2171727981428788736

namespace A140103

/-- `A319967(n+1)+2-A003144(n+1)` -/
def P2171727981428788736.Spec : Prop :=
  ∀ n, P2171727981428788736.a n = A140103 (n + 1)

end A140103

/-! ## A140103.P13885540416554461521

`2*A140101(n+1)-A140102(n+1)`
-/

namespace A140103.P13885540416554461521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140101 (n + 1) - A140102 (n + 1)

end

end A140103.P13885540416554461521

namespace A140103

/-- `2*A140101(n+1)-A140102(n+1)` -/
def P13885540416554461521.Spec : Prop :=
  ∀ n, P13885540416554461521.a n = A140103 (n + 1)

end A140103

/-!
# A140104: A positive integer k>1 is included if neither k-1 nor k+1 have any of the same prime-factorization exponents as k has.

The programs for A140104, there is no canonical definition to state claims against.
-/

/-! ## A140104.P17988824205351586784

`A387530(n+1)+1`
-/

namespace A140104.P17988824205351586784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387530 (n + 1) + 1

end

end A140104.P17988824205351586784

/-! ## A140104.P7566138973311461219

`A020725(A387530(n+1))`
-/

namespace A140104.P7566138973311461219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A387530 (n + 1)).toNat

end

end A140104.P7566138973311461219

/-!
# A140105: Trailing zeros removed from n! in binary.

The programs for A140105, the canonical program `A140105.P12886462540237060989` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140105 has offset 0).

The definition of A140105 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140105.P12886462540237060989

`A007088(A049606(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A140105

/-- `A007088(A049606(n))` -/
def P12886462540237060989.Spec : Prop :=
  ∀ n, P12886462540237060989.a n = A140105 n

theorem P12886462540237060989.correct : P12886462540237060989.Spec := by
  intro n
  simp only [A140105]

end A140105

/-! ## A140105.P5637088783769316550

`A007088(∏[or(1, lcm(16, n)/16)])`
-/

namespace A140105.P5637088783769316550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140105.P5637088783769316550

namespace A140105

/-- `A007088(∏[or(1, lcm(16, n)/16)])` -/
def P5637088783769316550.Spec : Prop :=
  ∀ n, P5637088783769316550.a n = A140105 n

end A140105

/-! ## A140105.P168140591850670009

`A007088(gcd(n!, ∏[1-2*n]))`
-/

namespace A140105.P168140591850670009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.gcd (Nat.factorial n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A140105.P168140591850670009

namespace A140105

/-- `A007088(gcd(n!, ∏[1-2*n]))` -/
def P168140591850670009.Spec : Prop :=
  ∀ n, P168140591850670009.a n = A140105 n

end A140105

/-! ## A140105.P3352200329869622949

`A007088(n!/2^∑[∑{e}[and(n, -n), #]])`
-/

namespace A140105.P3352200329869622949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A140105.P3352200329869622949

namespace A140105

/-- `A007088(n!/2^∑[∑{e}[and(n, -n), #]])` -/
def P3352200329869622949.Spec : Prop :=
  ∀ n, P3352200329869622949.a n = A140105 n

end A140105

/-! ## A140105.P15336464033514274733

`A007088(∏[gcd(2*n, -∏[-n^(n%2)])])`
-/

namespace A140105.P15336464033514274733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ (n % 2) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (-(∏ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A140105.P15336464033514274733

namespace A140105

/-- `A007088(∏[gcd(2*n, -∏[-n^(n%2)])])` -/
def P15336464033514274733.Spec : Prop :=
  ∀ n, P15336464033514274733.a n = A140105 n

end A140105

/-!
# A140106: Number of noncongruent diagonals in a regular n-gon.

The programs for A140106, the canonical program `A140106.P2723219612803141067` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140106 has offset 1).

The definition of A140106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140106.P2723219612803141067

`floor(A129194(n)/A022998(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140106

/-- `floor(A129194(n)/A022998(n+1))` -/
def P2723219612803141067.Spec : Prop :=
  ∀ n, P2723219612803141067.a n = A140106 (n + 1)

theorem P2723219612803141067.correct : P2723219612803141067.Spec := by
  intro n
  simp only [A140106, Nat.add_sub_cancel]

end A140106

/-! ## A140106.P13457890869167315731

`∑[and(n, floor(atan(n)))]`
-/

namespace A140106.P13457890869167315731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P13457890869167315731

namespace A140106

/-- `∑[and(n, floor(atan(n)))]` -/
def P13457890869167315731.Spec : Prop :=
  ∀ n, P13457890869167315731.a n = A140106 (n + 1)

end A140106

/-! ## A140106.P2802031220440771430

`floor(abs((1-n)/2))`
-/

namespace A140106.P2802031220440771430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(1 - (n : ℤ) : ℚ) / 2|⌋

end

end A140106.P2802031220440771430

namespace A140106

/-- `floor(abs((1-n)/2))` -/
def P2802031220440771430.Spec : Prop :=
  ∀ n, P2802031220440771430.a n = A140106 (n + 1)

end A140106

/-! ## A140106.P7535111735717218172

`∑[(char[1]+n)%2]`
-/

namespace A140106.P7535111735717218172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P7535111735717218172

namespace A140106

/-- `∑[(char[1]+n)%2]` -/
def P7535111735717218172.Spec : Prop :=
  ∀ n, (P7535111735717218172.a n : ℤ) = A140106 (n + 1)

end A140106

/-! ## A140106.P8487361171139401506

`∑[n%2-char[1]]`
-/

namespace A140106.P8487361171139401506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P8487361171139401506

namespace A140106

/-- `∑[n%2-char[1]]` -/
def P8487361171139401506.Spec : Prop :=
  ∀ n, P8487361171139401506.a n = A140106 (n + 1)

end A140106

/-! ## A140106.P5463281189106829011

`∑[char[lcm(2, n)+3]]`
-/

namespace A140106.P5463281189106829011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P5463281189106829011

namespace A140106

/-- `∑[char[lcm(2, n)+3]]` -/
def P5463281189106829011.Spec : Prop :=
  ∀ n, (P5463281189106829011.a n : ℤ) = A140106 (n + 1)

end A140106

/-! ## A140106.P6673042072968354868

`∑[and(1, char[1]+n)]`
-/

namespace A140106.P6673042072968354868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P6673042072968354868

namespace A140106

/-- `∑[and(1, char[1]+n)]` -/
def P6673042072968354868.Spec : Prop :=
  ∀ n, (P6673042072968354868.a n : ℤ) = A140106 (n + 1)

end A140106

/-! ## A140106.P14084011640493317552

`∑[and(1, n)-char[1]]`
-/

namespace A140106.P14084011640493317552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P14084011640493317552

namespace A140106

/-- `∑[and(1, n)-char[1]]` -/
def P14084011640493317552.Spec : Prop :=
  ∀ n, P14084011640493317552.a n = A140106 (n + 1)

end A140106

/-! ## A140106.P3744846934275908588

`∑[char[or(1, n+2)]]`
-/

namespace A140106.P3744846934275908588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P3744846934275908588

namespace A140106

/-- `∑[char[or(1, n+2)]]` -/
def P3744846934275908588.Spec : Prop :=
  ∀ n, (P3744846934275908588.a n : ℤ) = A140106 (n + 1)

end A140106

/-! ## A140106.P1039189820643791062

`round((n-atan(n))/2)`
-/

namespace A140106.P1039189820643791062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.arctan (n : ℝ)) / 2)

end

end A140106.P1039189820643791062

namespace A140106

/-- `round((n-atan(n))/2)` -/
def P1039189820643791062.Spec : Prop :=
  ∀ n, P1039189820643791062.a n = A140106 (n + 1)

end A140106

/-! ## A140106.P7960449252988038530

`round(C(n, 2)/(n+1))`
-/

namespace A140106.P7960449252988038530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / (n + 1 : ℚ))

end

end A140106.P7960449252988038530

namespace A140106

/-- `round(C(n, 2)/(n+1))` -/
def P7960449252988038530.Spec : Prop :=
  ∀ n, P7960449252988038530.a n = A140106 (n + 1)

end A140106

/-! ## A140106.P9376868707550675829

`comp[lcm(3, n+1)]-n`
-/

namespace A140106.P9376868707550675829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A140106.P9376868707550675829

namespace A140106

/-- `comp[lcm(3, n+1)]-n` -/
def P9376868707550675829.Spec : Prop :=
  ∀ n, P9376868707550675829.a n = A140106 (n + 1)

end A140106

/-! ## A140106.P3335289309507833122

`(2*n)%comp[3*n]`
-/

namespace A140106.P3335289309507833122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A140106.P3335289309507833122

namespace A140106

/-- `(2*n)%comp[3*n]` -/
def P3335289309507833122.Spec : Prop :=
  ∀ n, (P3335289309507833122.a n : ℤ) = A140106 (n + 1)

end A140106

/-! ## A140106.P5534517301417963582

`floor(cosh(log(n+1)))-1`
-/

namespace A140106.P5534517301417963582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 1 : ℝ))⌋ - 1

end

end A140106.P5534517301417963582

namespace A140106

/-- `floor(cosh(log(n+1)))-1` -/
def P5534517301417963582.Spec : Prop :=
  ∀ n, P5534517301417963582.a n = A140106 (n + 1)

end A140106

/-! ## A140106.P8167125749220384855

`∑[∑{p}[1-n, val(#, 2)]]`
-/

namespace A140106.P8167125749220384855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, SequenceMachineLib.valuation p 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P8167125749220384855

namespace A140106

/-- `∑[∑{p}[1-n, val(#, 2)]]` -/
def P8167125749220384855.Spec : Prop :=
  ∀ n, (P8167125749220384855.a n : ℤ) = A140106 (n + 1)

end A140106

/-! ## A140106.P3981010950595721214

`∑[val(∏{p}[1-n, #], 2)]`
-/

namespace A140106.P3981010950595721214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P3981010950595721214

namespace A140106

/-- `∑[val(∏{p}[1-n, #], 2)]` -/
def P3981010950595721214.Spec : Prop :=
  ∀ n, (P3981010950595721214.a n : ℤ) = A140106 (n + 1)

end A140106

/-! ## A140106.P15213186480509536483

`∑[∑{p}[1-n, C(2, #)]]`
-/

namespace A140106.P15213186480509536483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.choose 2 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P15213186480509536483

namespace A140106

/-- `∑[∑{p}[1-n, C(2, #)]]` -/
def P15213186480509536483.Spec : Prop :=
  ∀ n, (P15213186480509536483.a n : ℤ) = A140106 (n + 1)

end A140106

/-! ## A140106.P14980512066033245681

`∑[char[record[xor(1, n+2)]]]`
-/

namespace A140106.P14980512066033245681
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P14980512066033245681

namespace A140106

/-- `∑[char[record[xor(1, n+2)]]]` -/
def P14980512066033245681.Spec : Prop :=
  ∀ n, (P14980512066033245681.a n : ℤ) = A140106 (n + 1)

end A140106

/-! ## A140106.P11593868093524614665

`∑[char[or(1, n)]-char[1]]`
-/

namespace A140106.P11593868093524614665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140106.P11593868093524614665

namespace A140106

/-- `∑[char[or(1, n)]-char[1]]` -/
def P11593868093524614665.Spec : Prop :=
  ∀ n, P11593868093524614665.a n = A140106 (n + 1)

end A140106

/-! ## A140106.P4148708689494818590

`record[n/gcd(3, n)]-n`
-/

namespace A140106.P4148708689494818590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ)

end

end A140106.P4148708689494818590

namespace A140106

/-- `record[n/gcd(3, n)]-n` -/
def P4148708689494818590.Spec : Prop :=
  ∀ n, P4148708689494818590.a n = (A140106 (n + 1) : ℚ)

end A140106

/-!
# A140107: a(n) = binomial(n+3, 3)*7^n.

The programs for A140107, the canonical program `A140107.P10115161827165814844` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140107 has offset 0).

The definition of A140107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*7^n` (program `A140107.P10115161827165814844`, by `A140107.P10115161827165814844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140107.P11137373259373355612

`7^n*C(n+3, 3)`
-/

namespace A140107.P11137373259373355612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * Nat.choose (n + 3) 3

end

end A140107.P11137373259373355612

namespace A140107

/-- `7^n*C(n+3, 3)` -/
def P11137373259373355612.Spec : Prop :=
  ∀ n, (P11137373259373355612.a n : ℤ) = A140107 n

theorem P11137373259373355612.correct : P11137373259373355612.Spec := by
  intro n
  simp only [A140107, Nat.add_sub_cancel, A140107.P11137373259373355612.a, A140107.P10115161827165814844.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140107

/-! ## A140107.P10115161827165814844

`C(n+3, 3)*7^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140107

/-- `C(n+3, 3)*7^n` -/
def P10115161827165814844.Spec : Prop :=
  ∀ n, (P10115161827165814844.a n : ℤ) = A140107 n

theorem P10115161827165814844.correct : P10115161827165814844.Spec := by
  intro n
  simp only [A140107]

end A140107

/-! ## A140107.P2203325630555844573

`7^n*∑[∑[n+1]]`
-/

namespace A140107.P2203325630555844573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140107.P2203325630555844573

namespace A140107

/-- `7^n*∑[∑[n+1]]` -/
def P2203325630555844573.Spec : Prop :=
  ∀ n, (P2203325630555844573.a n : ℤ) = A140107 n

end A140107

/-! ## A140107.P9618249047955607485

`-(7^n*∑[∑[xor(n, -1)]])`
-/

namespace A140107.P9618249047955607485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((7 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A140107.P9618249047955607485

namespace A140107

/-- `-(7^n*∑[∑[xor(n, -1)]])` -/
def P9618249047955607485.Spec : Prop :=
  ∀ n, P9618249047955607485.a n = A140107 n

end A140107

/-! ## A140107.P1541308899697672263

`ceil((2*A000292(n+1)*A000420(n)-1)/2)`
-/

namespace A140107.P1541308899697672263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (A000292 (n + 1) * A000420 n) - 1 : ℚ) / 2⌉

end

end A140107.P1541308899697672263

namespace A140107

/-- `ceil((2*A000292(n+1)*A000420(n)-1)/2)` -/
def P1541308899697672263.Spec : Prop :=
  ∀ n, P1541308899697672263.a n = A140107 n

end A140107

/-! ## A140107.P1623978013287962263

`7*(n+3)*a(n-1)/n` with `a(0)=1`
-/

namespace A140107.P1623978013287962263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (7 * (n + 3) : ℚ) * a (n - 1) / (n : ℚ)

end

end A140107.P1623978013287962263

namespace A140107

/-- `7*(n+3)*a(n-1)/n` -/
def P1623978013287962263.Spec : Prop :=
  ∀ n, P1623978013287962263.a n = (A140107 n : ℚ)

end A140107

/-! ## A140107.P6084481660621619442

`A027466(A167614(n+2))`
-/

namespace A140107.P6084481660621619442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A167614 (n + 2)).toNat

end

end A140107.P6084481660621619442

namespace A140107

/-- `A027466(A167614(n+2))` -/
def P6084481660621619442.Spec : Prop :=
  ∀ n, P6084481660621619442.a n = A140107 n

end A140107

/-! ## A140107.P8614827544814133260

`A027466(eq[3, A002262(n)])`
-/

namespace A140107.P8614827544814133260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140107.P8614827544814133260

namespace A140107

/-- `A027466(eq[3, A002262(n)])` -/
def P8614827544814133260.Spec : Prop :=
  ∀ n, P8614827544814133260.a n = A140107 n

end A140107

/-! ## A140107.P12351002212742092902

`A027466(A055998(n+1)+6)`
-/

namespace A140107.P12351002212742092902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A055998 (n + 1) + 6).toNat

end

end A140107.P12351002212742092902

namespace A140107

/-- `A027466(A055998(n+1)+6)` -/
def P12351002212742092902.Spec : Prop :=
  ∀ n, P12351002212742092902.a n = A140107 n

end A140107

/-! ## A140107.P12145889399030871848

`A027466(eq[4, A002260(n+1)])`
-/

namespace A140107.P12145889399030871848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140107.P12145889399030871848

namespace A140107

/-- `A027466(eq[4, A002260(n+1)])` -/
def P12145889399030871848.Spec : Prop :=
  ∀ n, P12145889399030871848.a n = A140107 n

end A140107

/-! ## A140107.P12148986152405349678

`A013614(∑[n+3]+n+3)`
-/

namespace A140107.P12148986152405349678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A140107.P12148986152405349678

namespace A140107

/-- `A013614(∑[n+3]+n+3)` -/
def P12148986152405349678.Spec : Prop :=
  ∀ n, P12148986152405349678.a n = A140107 n

end A140107

/-!
# A140110: Numbers n such that for all divisors of n, ratios of 2 consecutive divisors of n will always reduce to lowest terms as a ratio of consecutive integers.

The programs for A140110, there is no canonical definition to state claims against.
-/

/-! ## A140110.P11553528317827530424

`eq[n, A136180(n+1)]+1`
-/

namespace A140110.P11553528317827530424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140110.P11553528317827530424

/-! ## A140110.P5031864345525749984

`record[A000027(n+1)%(A136180(n+1)+2)]`
-/

namespace A140110.P5031864345525749984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A136180 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140110.P5031864345525749984

/-! ## A140110.P10281554737052601804

`record[A038722(A038722(n+1))%(A136180(n+1)+2)]`
-/

namespace A140110.P10281554737052601804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038722 (A038722 (n + 1)).toNat) (A136180 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140110.P10281554737052601804

/-! ## A140110.P13836661129642686158

`record[A080513(2*n)%(A136180(n+1)+2)]`
-/

namespace A140110.P13836661129642686158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080513 (2 * n)) (A136180 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140110.P13836661129642686158

/-! ## A140110.P10297435150674907116

`record[A001057(A005408(n))%(A136180(n+1)+2)]`
-/

namespace A140110.P10297435150674907116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001057 (A005408 n).toNat) (A136180 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140110.P10297435150674907116

/-!
# A140111: Primes of the form prime(x) + prime(x+1) - (prime(x+1) - prime(x))/2.

The programs for A140111, the canonical program `A140111.P4700793734949317072` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140111 has offset 1).

The definition of A140111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140111.P4700793734949317072

`p?[A065091(n+1)+A024675(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140111

/-- `p?[A065091(n+1)+A024675(n+1)]` -/
def P4700793734949317072.Spec : Prop :=
  ∀ n, P4700793734949317072.a n = A140111 (n + 1)

theorem P4700793734949317072.correct : P4700793734949317072.Spec := by
  intro n
  simp only [A140111, Nat.add_sub_cancel]

end A140111

/-! ## A140111.P15340276079844621731

`p?[A024675(n+1)+A000040(n+2)]`
-/

namespace A140111.P15340276079844621731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140111.P15340276079844621731

namespace A140111

/-- `p?[A024675(n+1)+A000040(n+2)]` -/
def P15340276079844621731.Spec : Prop :=
  ∀ n, P15340276079844621731.a n = A140111 (n + 1)

end A140111

/-! ## A140111.P14637995190762374014

`p?[A001043(n+2)-A028334(n+2)]`
-/

namespace A140111.P14637995190762374014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) - A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140111.P14637995190762374014

namespace A140111

/-- `p?[A001043(n+2)-A028334(n+2)]` -/
def P14637995190762374014.Spec : Prop :=
  ∀ n, P14637995190762374014.a n = A140111 (n + 1)

end A140111

/-! ## A140111.P15421060073888023948

`p?[A028334(n+2)+2*A065091(n+1)]`
-/

namespace A140111.P15421060073888023948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) + 2 * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140111.P15421060073888023948

namespace A140111

/-- `p?[A028334(n+2)+2*A065091(n+1)]` -/
def P15421060073888023948.Spec : Prop :=
  ∀ n, P15421060073888023948.a n = A140111 (n + 1)

end A140111

/-! ## A140111.P6177080654836642763

`p?[A028334(n+2)+2*A000040(n+2)]`
-/

namespace A140111.P6177080654836642763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) + 2 * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140111.P6177080654836642763

namespace A140111

/-- `p?[A028334(n+2)+2*A000040(n+2)]` -/
def P6177080654836642763.Spec : Prop :=
  ∀ n, P6177080654836642763.a n = A140111 (n + 1)

end A140111

/-! ## A140111.P9824983801495560608

`p?[2*A024675(n+1)-A028334(n+2)]`
-/

namespace A140111.P9824983801495560608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024675 (n + 1) - A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140111.P9824983801495560608

namespace A140111

/-- `p?[2*A024675(n+1)-A028334(n+2)]` -/
def P9824983801495560608.Spec : Prop :=
  ∀ n, P9824983801495560608.a n = A140111 (n + 1)

end A140111

/-! ## A140111.P18033001269406319497

`p?[A001043(n+1)-A004525(A001223(n+1))]`
-/

namespace A140111.P18033001269406319497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A004525 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140111.P18033001269406319497

namespace A140111

/-- `p?[A001043(n+1)-A004525(A001223(n+1))]` -/
def P18033001269406319497.Spec : Prop :=
  ∀ n, P18033001269406319497.a n = A140111 (n + 1)

end A140111

/-! ## A140111.P10208211357138992016

`p?[A024675(n+1)+p?[A005408(n)]]`
-/

namespace A140111.P10208211357138992016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140111.P10208211357138992016

namespace A140111

/-- `p?[A024675(n+1)+p?[A005408(n)]]` -/
def P10208211357138992016.Spec : Prop :=
  ∀ n, P10208211357138992016.a n = A140111 (n + 1)

end A140111

/-!
# A140112: Primes of the form prime(x) + prime(x+1) + (prime(x+1)-prime(x))/2.

The programs for A140112, the canonical program `A140112.P13939740293674947011` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140112 has offset 1).

The definition of A140112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140112.P7427294538108043324

`p?[A215848(n+1)+A024675(n+1)]`
-/

namespace A140112.P7427294538108043324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P7427294538108043324

namespace A140112

/-- `p?[A215848(n+1)+A024675(n+1)]` -/
def P7427294538108043324.Spec : Prop :=
  ∀ n, P7427294538108043324.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P13939740293674947011

`p?[A045344(n+2)+A024675(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140112

/-- `p?[A045344(n+2)+A024675(n+1)]` -/
def P13939740293674947011.Spec : Prop :=
  ∀ n, P13939740293674947011.a n = A140112 (n + 1)

theorem P13939740293674947011.correct : P13939740293674947011.Spec := by
  intro n
  simp only [A140112, Nat.add_sub_cancel]

end A140112

/-! ## A140112.P6981357526935584495

`p?[A065091(n+2)+A024675(n+1)]`
-/

namespace A140112.P6981357526935584495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P6981357526935584495

namespace A140112

/-- `p?[A065091(n+2)+A024675(n+1)]` -/
def P6981357526935584495.Spec : Prop :=
  ∀ n, P6981357526935584495.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P11597361871956928320

`p?[A024675(n+1)+A000040(n+3)]`
-/

namespace A140112.P11597361871956928320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A000040 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P11597361871956928320

namespace A140112

/-- `p?[A024675(n+1)+A000040(n+3)]` -/
def P11597361871956928320.Spec : Prop :=
  ∀ n, P11597361871956928320.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P753941956010422473

`p?[A124434(n+1)-A060325(n+2)]`
-/

namespace A140112.P753941956010422473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124434 (n + 1) - A060325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P753941956010422473

namespace A140112

/-- `p?[A124434(n+1)-A060325(n+2)]` -/
def P753941956010422473.Spec : Prop :=
  ∀ n, P753941956010422473.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P5204534730325854639

`p?[A065091(n+1)+A078444(n+1)+1]`
-/

namespace A140112.P5204534730325854639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (A078444 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P5204534730325854639

namespace A140112

/-- `p?[A065091(n+1)+A078444(n+1)+1]` -/
def P5204534730325854639.Spec : Prop :=
  ∀ n, P5204534730325854639.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P113432375949336909

`p?[A028334(n+2)+2*A024675(n+1)]`
-/

namespace A140112.P113432375949336909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) + 2 * A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P113432375949336909

namespace A140112

/-- `p?[A028334(n+2)+2*A024675(n+1)]` -/
def P113432375949336909.Spec : Prop :=
  ∀ n, P113432375949336909.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P12728227916401869039

`p?[A065091(n+1)+ceil(A001043(n+1)/2)]`
-/

namespace A140112.P12728227916401869039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + ⌈(A001043 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P12728227916401869039

namespace A140112

/-- `p?[A065091(n+1)+ceil(A001043(n+1)/2)]` -/
def P12728227916401869039.Spec : Prop :=
  ∀ n, P12728227916401869039.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P7229040335868814327

`p?[A004525(A001223(n+1))+A001043(n+1)]`
-/

namespace A140112.P7229040335868814327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001223 (n + 1)).toNat + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P7229040335868814327

namespace A140112

/-- `p?[A004525(A001223(n+1))+A001043(n+1)]` -/
def P7229040335868814327.Spec : Prop :=
  ∀ n, P7229040335868814327.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P2503283513193301174

`p?[A013634(A024675(n+1))]`
-/

namespace A140112.P2503283513193301174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A024675 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P2503283513193301174

namespace A140112

/-- `p?[A013634(A024675(n+1))]` -/
def P2503283513193301174.Spec : Prop :=
  ∀ n, P2503283513193301174.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P4430446377070713470

`p?[A013634(A072568(n+1))]`
-/

namespace A140112.P4430446377070713470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A072568 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P4430446377070713470

namespace A140112

/-- `p?[A013634(A072568(n+1))]` -/
def P4430446377070713470.Spec : Prop :=
  ∀ n, P4430446377070713470.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P9391468041082756436

`p?[A013634(A145025(n+1))]`
-/

namespace A140112.P9391468041082756436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A145025 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P9391468041082756436

namespace A140112

/-- `p?[A013634(A145025(n+1))]` -/
def P9391468041082756436.Spec : Prop :=
  ∀ n, P9391468041082756436.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P7590762172984781048

`p?[A013634(A001043(n+2)/2)]`
-/

namespace A140112.P7590762172984781048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (SequenceMachineLib.roundAway ((A001043 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P7590762172984781048

namespace A140112

/-- `p?[A013634(A001043(n+2)/2)]` -/
def P7590762172984781048.Spec : Prop :=
  ∀ n, P7590762172984781048.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P3723941568181861090

`p?[A013634(A004525(A001043(n+1)))]`
-/

namespace A140112.P3723941568181861090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A004525 (A001043 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P3723941568181861090

namespace A140112

/-- `p?[A013634(A004525(A001043(n+1)))]` -/
def P3723941568181861090.Spec : Prop :=
  ∀ n, P3723941568181861090.a n = A140112 (n + 1)

end A140112

/-! ## A140112.P9288903435796834795

`p?[A065091(n+1)-A001057(A001043(n+1))]`
-/

namespace A140112.P9288903435796834795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A001057 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P9288903435796834795

namespace A140112

/-- `p?[A065091(n+1)-A001057(A001043(n+1))]` -/
def P9288903435796834795.Spec : Prop :=
  ∀ n, P9288903435796834795.a n = A140112 (n + 1)

end A140112

/-!
# A140113: a(1)=1, a(n)=a(n-1)+n if n odd, a(n)=a(n-1)+ n^2 if n is even.

The programs for A140113, the canonical program `A140113.P3173569224508579836` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140113 has offset 1).

The definition of A140113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140113.P6829049695943691112

`∑[root(n+1, gcd(2, n))²]`
-/

namespace A140113.P6829049695943691112
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) ^ (1 / (Nat.gcd 2 n : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140113.P6829049695943691112

namespace A140113

/-- `∑[root(n+1, gcd(2, n))²]` -/
def P6829049695943691112.Spec : Prop :=
  ∀ n, P6829049695943691112.a n = (A140113 (n + 1) : ℝ)

end A140113

/-! ## A140113.P14818949308430879003

`∑[(n+1)^(n%2+1)]`
-/

namespace A140113.P14818949308430879003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140113.P14818949308430879003

namespace A140113

/-- `∑[(n+1)^(n%2+1)]` -/
def P14818949308430879003.Spec : Prop :=
  ∀ n, (P14818949308430879003.a n : ℤ) = A140113 (n + 1)

end A140113

/-! ## A140113.P7388092604938315317

`∑[(n+1)^(and(1, n)+1)]`
-/

namespace A140113.P7388092604938315317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140113.P7388092604938315317

namespace A140113

/-- `∑[(n+1)^(and(1, n)+1)]` -/
def P7388092604938315317.Spec : Prop :=
  ∀ n, (P7388092604938315317.a n : ℤ) = A140113 (n + 1)

end A140113

/-! ## A140113.P3173569224508579836

`∑[lcm(n, xor(1, n+1))+1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140113

/-- `∑[lcm(n, xor(1, n+1))+1]` -/
def P3173569224508579836.Spec : Prop :=
  ∀ n, (P3173569224508579836.a n : ℤ) = A140113 (n + 1)

theorem P3173569224508579836.correct : P3173569224508579836.Spec := by
  intro n
  simp only [A140113, Nat.add_sub_cancel]

end A140113

/-! ## A140113.P13554624264059047983

`∑[(n+1)^(or(n, -2)+3)]`
-/

namespace A140113.P13554624264059047983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.lor (n : ℤ) (-2) + 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140113.P13554624264059047983

namespace A140113

/-- `∑[(n+1)^(or(n, -2)+3)]` -/
def P13554624264059047983.Spec : Prop :=
  ∀ n, P13554624264059047983.a n = (A140113 (n + 1) : ℚ)

end A140113

/-! ## A140113.P5504293480422832534

`∑[(n+1)^(2-char[2*n])]`
-/

namespace A140113.P5504293480422832534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140113.P5504293480422832534

namespace A140113

/-- `∑[(n+1)^(2-char[2*n])]` -/
def P5504293480422832534.Spec : Prop :=
  ∀ n, P5504293480422832534.a n = (A140113 (n + 1) : ℚ)

end A140113

/-! ## A140113.P6804173793051230918

`a(n-1)+(n+1)^gcd(n-1, 2*n)` with `a(0)=1`
-/

namespace A140113.P6804173793051230918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) ^ Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)

end

end A140113.P6804173793051230918

namespace A140113

/-- `a(n-1)+(n+1)^gcd(n-1, 2*n)` -/
def P6804173793051230918.Spec : Prop :=
  ∀ n, (P6804173793051230918.a n : ℤ) = A140113 (n + 1)

end A140113

/-! ## A140113.P7261256953747649404

`A135301(n+1)+A110660(n)`
-/

namespace A140113.P7261256953747649404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135301 (n + 1) + A110660 n

end

end A140113.P7261256953747649404

namespace A140113

/-- `A135301(n+1)+A110660(n)` -/
def P7261256953747649404.Spec : Prop :=
  ∀ n, P7261256953747649404.a n = A140113 (n + 1)

end A140113

/-! ## A140113.P8935253128787725287

`A000292(n+1)-A083392(n)`
-/

namespace A140113.P8935253128787725287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A083392 n

end

end A140113.P8935253128787725287

namespace A140113

/-- `A000292(n+1)-A083392(n)` -/
def P8935253128787725287.Spec : Prop :=
  ∀ n, P8935253128787725287.a n = A140113 (n + 1)

end A140113

/-! ## A140113.P130783455824236217

`A135095(n+1)%A331433(n)`
-/

namespace A140113.P130783455824236217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135095 (n + 1)) (A331433 n)

end

end A140113.P130783455824236217

namespace A140113

/-- `A135095(n+1)%A331433(n)` -/
def P130783455824236217.Spec : Prop :=
  ∀ n, P130783455824236217.a n = A140113 (n + 1)

end A140113

/-! ## A140113.P10811354125720610388

`A171218(n+1)-A131941(A109613(n))`
-/

namespace A140113.P10811354125720610388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171218 (n + 1) - A131941 (A109613 n).toNat

end

end A140113.P10811354125720610388

namespace A140113

/-- `A171218(n+1)-A131941(A109613(n))` -/
def P10811354125720610388.Spec : Prop :=
  ∀ n, P10811354125720610388.a n = A140113 (n + 1)

end A140113

/-! ## A140113.P14816592752440008002

`A000217(n+1)+A000330(n+1)-A136047(n+1)`
-/

namespace A140113.P14816592752440008002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000330 (n + 1) - A136047 (n + 1))

end

end A140113.P14816592752440008002

namespace A140113

/-- `A000217(n+1)+A000330(n+1)-A136047(n+1)` -/
def P14816592752440008002.Spec : Prop :=
  ∀ n, P14816592752440008002.a n = A140113 (n + 1)

end A140113

/-! ## A140113.P3183820018272457984

`A065679(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A140113.P3183820018272457984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065679 (n + 1) + a (n - 1)

end

end A140113.P3183820018272457984

namespace A140113

/-- `A065679(n+1)+a(n-1)` -/
def P3183820018272457984.Spec : Prop :=
  ∀ n, P3183820018272457984.a n = A140113 (n + 1)

end A140113

/-! ## A140113.P16187990977389126231

`A000217(n+1)+A135301(n+1)-A135276(n+1)`
-/

namespace A140113.P16187990977389126231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A135301 (n + 1) - A135276 (n + 1))

end

end A140113.P16187990977389126231

namespace A140113

/-- `A000217(n+1)+A135301(n+1)-A135276(n+1)` -/
def P16187990977389126231.Spec : Prop :=
  ∀ n, P16187990977389126231.a n = A140113 (n + 1)

end A140113

/-! ## A140113.P5607019332524566049

`∑[(A004277(n)+1-n)^A176895(2*n)]-1`
-/

namespace A140113.P5607019332524566049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n + (1 - (n : ℤ)) : ℚ) ^ (A176895 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140113.P5607019332524566049

namespace A140113

/-- `∑[(A004277(n)+1-n)^A176895(2*n)]-1` -/
def P5607019332524566049.Spec : Prop :=
  ∀ n, P5607019332524566049.a n = (A140113 (n + 1) : ℚ)

end A140113

/-! ## A140113.P5235253981310855634

`A161339(A135276(n+1))`
-/

namespace A140113.P5235253981310855634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161339 (A135276 (n + 1)).toNat

end

end A140113.P5235253981310855634

namespace A140113

/-- `A161339(A135276(n+1))` -/
def P5235253981310855634.Spec : Prop :=
  ∀ n, P5235253981310855634.a n = A140113 (n + 1)

end A140113

/-!
# A140114: Number of semiprimes strictly between n^2 and (n+1)^2.

The programs for A140114, the canonical program `A140114.P8911502322678573461` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140114 has offset 0).

The definition of A140114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140114.P12455228808170924353

`Δ[A072613(round(acot(n)+n)²)]`
-/

namespace A140114.P12455228808170924353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140114.P12455228808170924353

namespace A140114

/-- `Δ[A072613(round(acot(n)+n)²)]` -/
def P12455228808170924353.Spec : Prop :=
  ∀ n, P12455228808170924353.a n = A140114 n

end A140114

/-! ## A140114.P1957341483347173149

`Δ[A072613(round(sqrt(n²+1))²)]`
-/

namespace A140114.P1957341483347173149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140114.P1957341483347173149

namespace A140114

/-- `Δ[A072613(round(sqrt(n²+1))²)]` -/
def P1957341483347173149.Spec : Prop :=
  ∀ n, P1957341483347173149.a n = A140114 n

end A140114

/-! ## A140114.P8911502322678573461

`abs(Δ[A072613(A253909(n))])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140114

/-- `abs(Δ[A072613(A253909(n))])` -/
def P8911502322678573461.Spec : Prop :=
  ∀ n, P8911502322678573461.a n = A140114 n

theorem P8911502322678573461.correct : P8911502322678573461.Spec := by
  intro n
  simp only [A140114]

end A140114

/-! ## A140114.P338752688368242264

`Δ[A072613(A253909(n))]%A080036(n)`
-/

namespace A140114.P338752688368242264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A080036 n)

end

end A140114.P338752688368242264

namespace A140114

/-- `Δ[A072613(A253909(n))]%A080036(n)` -/
def P338752688368242264.Spec : Prop :=
  ∀ n, P338752688368242264.a n = A140114 n

end A140114

/-! ## A140114.P298911994328457104

`(A000007(n)+1)*Δ[A072613(A253909(n))]`
-/

namespace A140114.P298911994328457104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * (f1 (n + 1) - f1 n)

end

end A140114.P298911994328457104

namespace A140114

/-- `(A000007(n)+1)*Δ[A072613(A253909(n))]` -/
def P298911994328457104.Spec : Prop :=
  ∀ n, P298911994328457104.a n = A140114 n

end A140114

/-! ## A140114.P14254867422986946124

`A000040(n+2)%2*Δ[A072613(A253909(n))]`
-/

namespace A140114.P14254867422986946124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * (f1 (n + 1) - f1 n)

end

end A140114.P14254867422986946124

namespace A140114

/-- `A000040(n+2)%2*Δ[A072613(A253909(n))]` -/
def P14254867422986946124.Spec : Prop :=
  ∀ n, P14254867422986946124.a n = A140114 n

end A140114

/-!
# A140117: Numbers n for which A140116(n) uses fewer symbols than A007088(n).

The programs for A140117, there is no canonical definition to state claims against.
-/

/-! ## A140117.P14253823474495696426

`lt[A037013(A096111(n)), A307544(n)]`
-/

namespace A140117.P14253823474495696426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037013 (A096111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307544 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140117.P14253823474495696426

/-! ## A140117.P3351610463717529612

`lt[A272919(A096111(n)), A153142(n)]`
-/

namespace A140117.P3351610463717529612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272919 (A096111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140117.P3351610463717529612

/-! ## A140117.P9688915599019651451

`lt[A059867(n+1), A178858(n+1)]`
-/

namespace A140117.P9688915599019651451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140117.P9688915599019651451

/-! ## A140117.P16117579738459396135

`lt[A002496(A096111(n)), A127066(n+1)]`
-/

namespace A140117.P16117579738459396135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (A096111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140117.P16117579738459396135

/-! ## A140117.P8350440230574750653

`lt[A141390(A096111(n)), A020229(n+1)]`
-/

namespace A140117.P8350440230574750653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141390 (A096111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140117.P8350440230574750653

/-!
# A140118: Extrapolation for (n + 1)-st odd prime made by fitting least-degree polynomial to first n odd primes.

The programs for A140118, there is no canonical definition to state claims against.
-/

/-! ## A140118.P17052352305761454687

`A140119(n+2)-A007442(n+2)`
-/

namespace A140118.P17052352305761454687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140119 (n + 2) - A007442 (n + 2)

end

end A140118.P17052352305761454687

/-! ## A140118.P1897077249934436356

`A140119(n+1)+A140119(n+2)-A000040(n+2)`
-/

namespace A140118.P1897077249934436356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140119 (n + 1) + (A140119 (n + 2) - A000040 (n + 2))

end

end A140118.P1897077249934436356

/-! ## A140118.P4544943597268121585

`A000040(n+3)-A379542(n+1)`
-/

namespace A140118.P4544943597268121585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A379542 (n + 1)

end

end A140118.P4544943597268121585

/-!
# A140119: Extrapolation for (n + 1)-st prime made by fitting least-degree polynomial to first n primes.

The programs for A140119, there is no canonical definition to state claims against.
-/

/-! ## A140119.P16157256365335748509

`A000040(n+2)-A007442(n+2)`
-/

namespace A140119.P16157256365335748509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A007442 (n + 2)

end

end A140119.P16157256365335748509

/-! ## A140119.P2673857483881328193

`A008578(n+3)-A007442(n+2)`
-/

namespace A140119.P2673857483881328193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3) - A007442 (n + 2)

end

end A140119.P2673857483881328193

/-! ## A140119.P9258891234825929022

`Δ[A007504(n+1)]-A007442(n+2)`
-/

namespace A140119.P9258891234825929022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007442 (n + 2)

end

end A140119.P9258891234825929022

/-! ## A140119.P7633781564543006198

`p?[A000961(n+3)]-A007442(n+2)`
-/

namespace A140119.P7633781564543006198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A007442 (n + 2)

end

end A140119.P7633781564543006198

/-! ## A140119.P18046722153048397840

`p?[A007948(n+3)]-A007442(n+2)`
-/

namespace A140119.P18046722153048397840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A007442 (n + 2)

end

end A140119.P18046722153048397840

/-! ## A140119.P146317911701118837

`∑[A001223(n+1)-Δ[A007442(n+1)]]`
-/

namespace A140119.P146317911701118837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007442 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140119.P146317911701118837

/-! ## A140119.P7486709261276370106

`p?[A328114(n)+1+n]-A007442(n+2)`
-/

namespace A140119.P7486709261276370106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A007442 (n + 2)

end

end A140119.P7486709261276370106

/-!
# A140120: Primes of the form prime(x)*prime(x+1) - (prime(x+1)-prime(x)).

The programs for A140120, there is no canonical definition to state claims against.
-/

/-! ## A140120.P13576632566520085949

`p?[A037167(n+1)+A000040(n+1)]`
-/

namespace A140120.P13576632566520085949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140120.P13576632566520085949

/-! ## A140120.P18157327856642836086

`p?[A100484(n+1)+A037165(n+1)]`
-/

namespace A140120.P18157327856642836086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A037165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140120.P18157327856642836086

/-! ## A140120.P5096454148484542199

`p?[A111071(n+1)+A093667(n+1)]`
-/

namespace A140120.P5096454148484542199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (n + 1) + A093667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140120.P5096454148484542199

/-! ## A140120.P14449561610995287315

`p?[A006094(n+1)-A001223(n+1)]`
-/

namespace A140120.P14449561610995287315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140120.P14449561610995287315

/-! ## A140120.P11133696136212462329

`p?[A123134(n+1)-A000040(n+2)]`
-/

namespace A140120.P11133696136212462329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140120.P11133696136212462329

/-!
# A140121: Primes of the form prime(x)*prime(x+1) + (prime(x+1)-prime(x)).

The programs for A140121, there is no canonical definition to state claims against.
-/

/-! ## A140121.P11506568352630745187

`A353749(A154551(n+1))+A154551(n+1)`
-/

namespace A140121.P11506568352630745187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A154551 (n + 1)).toNat + A154551 (n + 1)

end

end A140121.P11506568352630745187

/-! ## A140121.P928187849646124072

`A341529(A138170(n+1))-A138170(n+1)`
-/

namespace A140121.P928187849646124072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (A138170 (n + 1)).toNat - A138170 (n + 1)

end

end A140121.P928187849646124072

/-! ## A140121.P2506178276563578375

`p?[A006094(n+1)+A001223(n+1)]`
-/

namespace A140121.P2506178276563578375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140121.P2506178276563578375

/-! ## A140121.P2248963733342961957

`p?[A065091(n+1)+A037166(n+1)]`
-/

namespace A140121.P2248963733342961957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A037166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140121.P2248963733342961957

/-! ## A140121.P13295106940332788869

`p?[A037166(n+1)+A000040(n+2)]`
-/

namespace A140121.P13295106940332788869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140121.P13295106940332788869

/-!
# A140122: Negative of numerator of Sum_{k=1..n} (-1)^k / semiprime(k).

The programs for A140122, there is no canonical definition to state claims against.
-/

/-! ## A140122.P5900717673394465066

`A255938(∏[or(1, n)²])`
-/

namespace A140122.P5900717673394465066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A140122.P5900717673394465066

/-!
# A140123: Denominator of Sum_{k=1..n} (-1)^k / semiprime(k).

The programs for A140123, there is no canonical definition to state claims against.
-/

/-! ## A140123.P16485022965254000414

`lcm(A000984(n), A046109(A296369(n+1)))`
-/

namespace A140123.P16485022965254000414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000984 n) (A046109 (A296369 (n + 1)).toNat)

end

end A140123.P16485022965254000414

/-! ## A140123.P10045858088246554886

`A164853(n+1)/A099245(A005346(n+1))`
-/

namespace A140123.P10045858088246554886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164853 (n + 1) : ℚ) / (A099245 (A005346 (n + 1)).toNat : ℚ)

end

end A140123.P10045858088246554886

/-!
# A140124: a(n) = degree in N of the number of orbits under S_N of the set of n-tuples of partitions of {1,...,N} into n subsets.

The programs for A140124, the canonical program `A140124.P10004205325967953780` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140124 has offset 2).

The definition of A140124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140124.P10004205325967953780

`(n+2)^(n+2)-1-(n+2)*(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140124

/-- `(n+2)^(n+2)-1-(n+2)*(n+1)` -/
def P10004205325967953780.Spec : Prop :=
  ∀ n, P10004205325967953780.a n = A140124 (n + 2)

theorem P10004205325967953780.correct : P10004205325967953780.Spec := by
  intro n
  simp only [A140124, Nat.add_sub_cancel]

end A140124

/-! ## A140124.P8662493882253636995

`(n+1)²*A023811(n+2)`
-/

namespace A140124.P8662493882253636995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A023811 (n + 2)

end

end A140124.P8662493882253636995

namespace A140124

/-- `(n+1)²*A023811(n+2)` -/
def P8662493882253636995.Spec : Prop :=
  ∀ n, P8662493882253636995.a n = A140124 (n + 2)

end A140124

/-! ## A140124.P17495707174866895143

`∑[Δ[A000312(n+1)-(n+1)²]+1]`
-/

namespace A140124.P17495707174866895143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - ((n + 1) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140124.P17495707174866895143

namespace A140124

/-- `∑[Δ[A000312(n+1)-(n+1)²]+1]` -/
def P17495707174866895143.Spec : Prop :=
  ∀ n, P17495707174866895143.a n = A140124 (n + 2)

end A140124

/-! ## A140124.P3938708749871762054

`∑[abs(Δ[A002378(n)-(n+1)^(n+1)])]`
-/

namespace A140124.P3938708749871762054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - ((n + 1) ^ (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140124.P3938708749871762054

namespace A140124

/-- `∑[abs(Δ[A002378(n)-(n+1)^(n+1)])]` -/
def P3938708749871762054.Spec : Prop :=
  ∀ n, P3938708749871762054.a n = A140124 (n + 2)

end A140124

/-! ## A140124.P12398758994197479220

`record[A000312(n)-∑[A004275(n)]]`
-/

namespace A140124.P12398758994197479220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140124.P12398758994197479220

namespace A140124

/-- `record[A000312(n)-∑[A004275(n)]]` -/
def P12398758994197479220.Spec : Prop :=
  ∀ n, P12398758994197479220.a n = A140124 (n + 2)

end A140124

/-!
# A140126: Partial sums of A001912.

The programs for A140126, the canonical program `A140126.P5476469501479693611` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140126 has offset 1).

The definition of A140126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140126.P8657523526949697840

`∑[A001912(n+1)]`
-/

namespace A140126.P8657523526949697840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P8657523526949697840

namespace A140126

/-- `∑[A001912(n+1)]` -/
def P8657523526949697840.Spec : Prop :=
  ∀ n, P8657523526949697840.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P12444003913180794392

`∑[A214517(n)+a(n-1)]` with `a(0)=1`
-/

namespace A140126.P12444003913180794392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A214517 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P12444003913180794392

namespace A140126

/-- `∑[A214517(n)+a(n-1)]` -/
def P12444003913180794392.Spec : Prop :=
  ∀ n, P12444003913180794392.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P10250956901952725693

`∑[∑[ceil(A214516(n+1)/2)]]`
-/

namespace A140126.P10250956901952725693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A214516 (n + 1) : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P10250956901952725693

namespace A140126

/-- `∑[∑[ceil(A214516(n+1)/2)]]` -/
def P10250956901952725693.Spec : Prop :=
  ∀ n, P10250956901952725693.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P10419697460109603279

`∑[∑[A214517(A028310(n))]]`
-/

namespace A140126.P10419697460109603279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214517 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P10419697460109603279

namespace A140126

/-- `∑[∑[A214517(A028310(n))]]` -/
def P10419697460109603279.Spec : Prop :=
  ∀ n, P10419697460109603279.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P10607528984839279465

`∑[∑[A032742(A214516(n+1))]]`
-/

namespace A140126.P10607528984839279465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A214516 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P10607528984839279465

namespace A140126

/-- `∑[∑[A032742(A214516(n+1))]]` -/
def P10607528984839279465.Spec : Prop :=
  ∀ n, P10607528984839279465.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P1221908707207531418

`a(n-1)+A000007(C(2, n+2))*A001912(n+1)` with `a(0)=1`
-/

namespace A140126.P1221908707207531418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000007 (Nat.choose 2 (n + 2)) * A001912 (n + 1)

end

end A140126.P1221908707207531418

namespace A140126

/-- `a(n-1)+A000007(C(2, n+2))*A001912(n+1)` -/
def P1221908707207531418.Spec : Prop :=
  ∀ n, P1221908707207531418.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P9699839116868042521

`∑[A005574(n+2)/2]`
-/

namespace A140126.P9699839116868042521
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005574 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P9699839116868042521

namespace A140126

/-- `∑[A005574(n+2)/2]` -/
def P9699839116868042521.Spec : Prop :=
  ∀ n, P9699839116868042521.a n = (A140126 (n + 1) : ℚ)

end A140126

/-! ## A140126.P1868068237055997884

`∑[A059793(n+1)/4]`
-/

namespace A140126.P1868068237055997884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059793 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P1868068237055997884

namespace A140126

/-- `∑[A059793(n+1)/4]` -/
def P1868068237055997884.Spec : Prop :=
  ∀ n, P1868068237055997884.a n = (A140126 (n + 1) : ℚ)

end A140126

/-! ## A140126.P17533782780827187874

`∑[sqrt(A075408(n+2))/2]`
-/

namespace A140126.P17533782780827187874
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075408 (n + 2) : ℝ) / 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P17533782780827187874

namespace A140126

/-- `∑[sqrt(A075408(n+2))/2]` -/
def P17533782780827187874.Spec : Prop :=
  ∀ n, P17533782780827187874.a n = (A140126 (n + 1) : ℝ)

end A140126

/-! ## A140126.P5476469501479693611

`∑[ceil(A089593(n+2)/2)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A140126

/-- `∑[ceil(A089593(n+2)/2)]` -/
def P5476469501479693611.Spec : Prop :=
  ∀ n, P5476469501479693611.a n = A140126 (n + 1)

theorem P5476469501479693611.correct : P5476469501479693611.Spec := by
  intro n
  simp only [A140126, Nat.add_sub_cancel]

end A140126

/-! ## A140126.P14939146400564641106

`∑[(A090693(n+2)-1)/2]`
-/

namespace A140126.P14939146400564641106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090693 (n + 2) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P14939146400564641106

namespace A140126

/-- `∑[(A090693(n+2)-1)/2]` -/
def P14939146400564641106.Spec : Prop :=
  ∀ n, P14939146400564641106.a n = (A140126 (n + 1) : ℚ)

end A140126

/-! ## A140126.P16393777870187015401

`∑[record[A001912(A133310(n))]]`
-/

namespace A140126.P16393777870187015401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P16393777870187015401

namespace A140126

/-- `∑[record[A001912(A133310(n))]]` -/
def P16393777870187015401.Spec : Prop :=
  ∀ n, P16393777870187015401.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P4123775215066558895

`∑[record[A001912(A065648(n))]]`
-/

namespace A140126.P4123775215066558895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P4123775215066558895

namespace A140126

/-- `∑[record[A001912(A065648(n))]]` -/
def P4123775215066558895.Spec : Prop :=
  ∀ n, P4123775215066558895.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P12552626378296527646

`a(n-1)+A007814(A000040(n+1))+A001912(n+1)` with `a(0)=1`
-/

namespace A140126.P12552626378296527646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A007814 (A000040 (n + 1)).toNat + A001912 (n + 1))

end

end A140126.P12552626378296527646

namespace A140126

/-- `a(n-1)+A007814(A000040(n+1))+A001912(n+1)` -/
def P12552626378296527646.Spec : Prop :=
  ∀ n, P12552626378296527646.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P18017107493803272236

`∑[floor(sqrt(A168024(n+1))/2)]`
-/

namespace A140126.P18017107493803272236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A168024 (n + 1) : ℝ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P18017107493803272236

namespace A140126

/-- `∑[floor(sqrt(A168024(n+1))/2)]` -/
def P18017107493803272236.Spec : Prop :=
  ∀ n, P18017107493803272236.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P3773807656055666008

`∑[∑[A214517(A233583(n+1))]]`
-/

namespace A140126.P3773807656055666008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214517 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P3773807656055666008

namespace A140126

/-- `∑[∑[A214517(A233583(n+1))]]` -/
def P3773807656055666008.Spec : Prop :=
  ∀ n, P3773807656055666008.a n = A140126 (n + 1)

end A140126

/-! ## A140126.P15040590090289217442

`∑[eq[1, A053000(2*n)]]`
-/

namespace A140126.P15040590090289217442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P15040590090289217442

namespace A140126

/-- `∑[eq[1, A053000(2*n)]]` -/
def P15040590090289217442.Spec : Prop :=
  ∀ n, (P15040590090289217442.a n : ℤ) = A140126 (n + 1)

end A140126

/-! ## A140126.P1973090349384063388

`∑[eq[2, A193432(2*n)]]`
-/

namespace A140126.P1973090349384063388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P1973090349384063388

namespace A140126

/-- `∑[eq[2, A193432(2*n)]]` -/
def P1973090349384063388.Spec : Prop :=
  ∀ n, (P1973090349384063388.a n : ℤ) = A140126 (n + 1)

end A140126

/-! ## A140126.P9831765985659569420

`∑[lt[A284376(2*n), 2]]`
-/

namespace A140126.P9831765985659569420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P9831765985659569420

namespace A140126

/-- `∑[lt[A284376(2*n), 2]]` -/
def P9831765985659569420.Spec : Prop :=
  ∀ n, (P9831765985659569420.a n : ℤ) = A140126 (n + 1)

end A140126

/-! ## A140126.P16512707570390644635

`∑[record[A247339(n+2)/2]]`
-/

namespace A140126.P16512707570390644635
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247339 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140126.P16512707570390644635

namespace A140126

/-- `∑[record[A247339(n+2)/2]]` -/
def P16512707570390644635.Spec : Prop :=
  ∀ n, P16512707570390644635.a n = (A140126 (n + 1) : ℚ)

end A140126

/-!
# A140127: The first five terms are 1, after that, a(n)=a(n-1)^2-a(n-2)-a(n-3)-a(n-4)-a(n-5).

The programs for A140127, the canonical program `A140127.P2778343453003857377` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140127 has offset 1).

The definition of A140127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-2)-a(n-3)-a(n-4)-a(n-5)` (program `A140127.P2778343453003857377`, by `A140127.P2778343453003857377.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140127.P2778343453003857377

`a(n-1)²-a(n-2)-a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140127

/-- `a(n-1)²-a(n-2)-a(n-3)-a(n-4)-a(n-5)` -/
def P2778343453003857377.Spec : Prop :=
  ∀ n, P2778343453003857377.a n = A140127 (n + 1)

theorem P2778343453003857377.correct : P2778343453003857377.Spec := by
  intro n
  simp only [A140127, Nat.add_sub_cancel]

end A140127

/-!
# A140128: A positive integer k is included if d(d(k)) = d(d(k+1)), where d(k) is the number of divisors of k.

The programs for A140128, the canonical program `A140128.P9211484001941945419` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140128 has offset 1).

The definition of A140128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140128.P5018088602013603230

`eq[0, A111407(n)]`
-/

namespace A140128.P5018088602013603230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140128.P5018088602013603230

namespace A140128

/-- `eq[0, A111407(n)]` -/
def P5018088602013603230.Spec : Prop :=
  ∀ n, (P5018088602013603230.a n : ℤ) = A140128 (n + 1)

end A140128

/-! ## A140128.P5475081436816519624

`lt[Δ[A000005(A000005(n+1))]², 1]+1`
-/

namespace A140128.P5475081436816519624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A140128.P5475081436816519624

namespace A140128

/-- `lt[Δ[A000005(A000005(n+1))]², 1]+1` -/
def P5475081436816519624.Spec : Prop :=
  ∀ n, (P5475081436816519624.a n : ℤ) = A140128 (n + 1)

end A140128

/-! ## A140128.P10615275974479124289

`eq[0, Δ[A325939(A145154(n))]]`
-/

namespace A140128.P10615275974479124289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140128.P10615275974479124289

namespace A140128

/-- `eq[0, Δ[A325939(A145154(n))]]` -/
def P10615275974479124289.Spec : Prop :=
  ∀ n, (P10615275974479124289.a n : ℤ) = A140128 (n + 1)

end A140128

/-! ## A140128.P9211484001941945419

`eq[0, Δ[A010553(A000038(n)+n)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140128

/-- `eq[0, Δ[A010553(A000038(n)+n)]]` -/
def P9211484001941945419.Spec : Prop :=
  ∀ n, (P9211484001941945419.a n : ℤ) = A140128 (n + 1)

theorem P9211484001941945419.correct : P9211484001941945419.Spec := by
  intro n
  simp only [A140128, Nat.add_sub_cancel]

end A140128

/-! ## A140128.P14734132042865263746

`eq[A010553(n+2), A010553(n+1)]+1`
-/

namespace A140128.P14734132042865263746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A140128.P14734132042865263746

namespace A140128

/-- `eq[A010553(n+2), A010553(n+1)]+1` -/
def P14734132042865263746.Spec : Prop :=
  ∀ n, (P14734132042865263746.a n : ℤ) = A140128 (n + 1)

end A140128

/-! ## A140128.P16499058166839423619

`eq[A010553(n+1), A010553(A000038(n)+n)]`
-/

namespace A140128.P16499058166839423619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140128.P16499058166839423619

namespace A140128

/-- `eq[A010553(n+1), A010553(A000038(n)+n)]` -/
def P16499058166839423619.Spec : Prop :=
  ∀ n, (P16499058166839423619.a n : ℤ) = A140128 (n + 1)

end A140128

/-!
# A140129: Let c(n) = 0 if n=1, (c(floor(n/2)) + c(floor((n+1)/2)))/2 if 1 < n < 3*2^floor(log_2(n)-1), and c(n-2^floor(log_2(n))) + 1 otherwise. Then a(n) = numerator(c(n)).

The programs for A140129, there is no canonical definition to state claims against.
-/

/-! ## A140129.P4033365478979021209

`A347552(A245180(n+1))`
-/

namespace A140129.P4033365478979021209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 (A245180 (n + 1)).toNat

end

end A140129.P4033365478979021209

/-! ## A140129.P13436235802487496467

`23%A000120(A309243(n+1))`
-/

namespace A140129.P13436235802487496467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 23 (A000120 (A309243 (n + 1)).toNat)

end

end A140129.P13436235802487496467

/-! ## A140129.P2269721166277646719

`A087116(A045664(floor(n/(xor(n, n+1)+1))))`
-/

namespace A140129.P2269721166277646719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A045664 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat).toNat

end

end A140129.P2269721166277646719

/-! ## A140129.P7267440298254374996

`A000120(A008554(A161820(n+1))²)`
-/

namespace A140129.P7267440298254374996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008554 (A161820 (n + 1)).toNat ^ 2).toNat

end

end A140129.P7267440298254374996

/-! ## A140129.P12309135522527660042

`A000120(A029261(A245180(n+1))²)`
-/

namespace A140129.P12309135522527660042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A029261 (A245180 (n + 1)).toNat ^ 2).toNat

end

end A140129.P12309135522527660042

/-!
# A140130: a(n) = denominator(c(n)) where c(n) = 1 if n=1, otherwise if n < 3*2^floor(log_2(n)-1) then c(n) = (c(floor(n/2))+c(floor((n+1)/2)))/2 otherwise c(n) = c(n-2^floor(log_2(n)))+1.

The programs for A140130, the canonical program `A140130.P9803938825414643127` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140130 has offset 1).

The definition of A140130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140130.P3072286464901550606

`A082908(A030101(n+1))`
-/

namespace A140130.P3072286464901550606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A030101 (n + 1)).toNat

end

end A140130.P3072286464901550606

namespace A140130

/-- `A082908(A030101(n+1))` -/
def P3072286464901550606.Spec : Prop :=
  ∀ n, P3072286464901550606.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P9198185464238610669

`A082908(A030109(n+1))`
-/

namespace A140130.P9198185464238610669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A030109 (n + 1)).toNat

end

end A140130.P9198185464238610669

namespace A140130

/-- `A082908(A030109(n+1))` -/
def P9198185464238610669.Spec : Prop :=
  ∀ n, P9198185464238610669.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P9803938825414643127

`A082908(A035327(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140130

/-- `A082908(A035327(n+1))` -/
def P9803938825414643127.Spec : Prop :=
  ∀ n, P9803938825414643127.a n = A140130 (n + 1)

theorem P9803938825414643127.correct : P9803938825414643127.Spec := by
  intro n
  simp only [A140130, Nat.add_sub_cancel]

end A140130

/-! ## A140130.P1152593513697420017

`A082908(A261693(n+1))`
-/

namespace A140130.P1152593513697420017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A261693 (n + 1)).toNat

end

end A140130.P1152593513697420017

namespace A140130

/-- `A082908(A261693(n+1))` -/
def P1152593513697420017.Spec : Prop :=
  ∀ n, P1152593513697420017.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P13380040361288688103

`A307313(A080079(n+1))/2`
-/

namespace A140130.P13380040361288688103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307313 (A080079 (n + 1)).toNat : ℚ) / 2

end

end A140130.P13380040361288688103

namespace A140130

/-- `A307313(A080079(n+1))/2` -/
def P13380040361288688103.Spec : Prop :=
  ∀ n, P13380040361288688103.a n = (A140130 (n + 1) : ℚ)

end A140130

/-! ## A140130.P9238851877564881195

`A053644(A000265(A049773(n+1)))`
-/

namespace A140130.P9238851877564881195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A000265 (A049773 (n + 1)).toNat).toNat

end

end A140130.P9238851877564881195

namespace A140130

/-- `A053644(A000265(A049773(n+1)))` -/
def P9238851877564881195.Spec : Prop :=
  ∀ n, P9238851877564881195.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P5899213195056836026

`A011782(A070940(A080079(n+1)))`
-/

namespace A140130.P5899213195056836026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A070940 (A080079 (n + 1)).toNat).toNat

end

end A140130.P5899213195056836026

namespace A140130

/-- `A011782(A070940(A080079(n+1)))` -/
def P5899213195056836026.Spec : Prop :=
  ∀ n, P5899213195056836026.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P14191966878666971598

`A053644(A000265(A030109(n+1)+1))`
-/

namespace A140130.P14191966878666971598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A000265 (A030109 (n + 1) + 1).toNat).toNat

end

end A140130.P14191966878666971598

namespace A140130

/-- `A053644(A000265(A030109(n+1)+1))` -/
def P14191966878666971598.Spec : Prop :=
  ∀ n, P14191966878666971598.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P16305744130116081071

`A053644(A030101(A003817(n+1)-n))`
-/

namespace A140130.P16305744130116081071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A030101 (A003817 (n + 1) - (n : ℤ)).toNat).toNat

end

end A140130.P16305744130116081071

namespace A140130

/-- `A053644(A030101(A003817(n+1)-n))` -/
def P16305744130116081071.Spec : Prop :=
  ∀ n, P16305744130116081071.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P10857623395089171104

`A053644(A030101(A062383(n+1)-(n+1)))`
-/

namespace A140130.P10857623395089171104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A030101 (A062383 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A140130.P10857623395089171104

namespace A140130

/-- `A053644(A030101(A062383(n+1)-(n+1)))` -/
def P10857623395089171104.Spec : Prop :=
  ∀ n, P10857623395089171104.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P17585092368869656268

`A062383(A030109(A062383(n+1)-(n+1)))`
-/

namespace A140130.P17585092368869656268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A030109 (A062383 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A140130.P17585092368869656268

namespace A140130

/-- `A062383(A030109(A062383(n+1)-(n+1)))` -/
def P17585092368869656268.Spec : Prop :=
  ∀ n, P17585092368869656268.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P8305575159809172630

`A000010(A307313(A062383(n+1)-(n+1)))`
-/

namespace A140130.P8305575159809172630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A307313 (A062383 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A140130.P8305575159809172630

namespace A140130

/-- `A000010(A307313(A062383(n+1)-(n+1)))` -/
def P8305575159809172630.Spec : Prop :=
  ∀ n, P8305575159809172630.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P10351170798958520509

`A307313(A307313(n+1)-A000265(n+1))/2`
-/

namespace A140130.P10351170798958520509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307313 (A307313 (n + 1) - A000265 (n + 1)).toNat : ℚ) / 2

end

end A140130.P10351170798958520509

namespace A140130

/-- `A307313(A307313(n+1)-A000265(n+1))/2` -/
def P10351170798958520509.Spec : Prop :=
  ∀ n, P10351170798958520509.a n = (A140130 (n + 1) : ℚ)

end A140130

/-! ## A140130.P15614105970429456700

`A062383(A030109(A049773(A059893(A059893(n+1)))))`
-/

namespace A140130.P15614105970429456700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A030109 (A049773 (A059893 (A059893 (n + 1)).toNat).toNat).toNat).toNat

end

end A140130.P15614105970429456700

namespace A140130

/-- `A062383(A030109(A049773(A059893(A059893(n+1)))))` -/
def P15614105970429456700.Spec : Prop :=
  ∀ n, P15614105970429456700.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P2617054533762176623

`A082908(A082908(2*n)-A006257(n+1))`
-/

namespace A140130.P2617054533762176623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A082908 (2 * n) - A006257 (n + 1)).toNat

end

end A140130.P2617054533762176623

namespace A140130

/-- `A082908(A082908(2*n)-A006257(n+1))` -/
def P2617054533762176623.Spec : Prop :=
  ∀ n, P2617054533762176623.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P7423643232926119808

`A053644(A030101(A049773(A049773(2*n+1))))`
-/

namespace A140130.P7423643232926119808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A030101 (A049773 (A049773 (2 * n + 1)).toNat).toNat).toNat

end

end A140130.P7423643232926119808

namespace A140130

/-- `A053644(A030101(A049773(A049773(2*n+1))))` -/
def P7423643232926119808.Spec : Prop :=
  ∀ n, P7423643232926119808.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P16290066727508083679

`A053644(A030101(A030109(A059893(2*(n+1))+1)))`
-/

namespace A140130.P16290066727508083679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A030101 (A030109 (A059893 (2 * (n + 1)) + 1).toNat).toNat).toNat

end

end A140130.P16290066727508083679

namespace A140130

/-- `A053644(A030101(A030109(A059893(2*(n+1))+1)))` -/
def P16290066727508083679.Spec : Prop :=
  ∀ n, P16290066727508083679.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P16585009823383602869

`A082908(A115352(n))`
-/

namespace A140130.P16585009823383602869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A115352 n).toNat

end

end A140130.P16585009823383602869

namespace A140130

/-- `A082908(A115352(n))` -/
def P16585009823383602869.Spec : Prop :=
  ∀ n, P16585009823383602869.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P15840270732584802902

`A080100(A335587(A000265(n+1)))`
-/

namespace A140130.P15840270732584802902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A335587 (A000265 (n + 1)).toNat).toNat

end

end A140130.P15840270732584802902

namespace A140130

/-- `A080100(A335587(A000265(n+1)))` -/
def P15840270732584802902.Spec : Prop :=
  ∀ n, P15840270732584802902.a n = A140130 (n + 1)

end A140130

/-! ## A140130.P17360135538756646079

`A080100(A335587(n)/A006519(n+1))`
-/

namespace A140130.P17360135538756646079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (SequenceMachineLib.roundAway ((A335587 n : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A140130.P17360135538756646079

namespace A140130

/-- `A080100(A335587(n)/A006519(n+1))` -/
def P17360135538756646079.Spec : Prop :=
  ∀ n, P17360135538756646079.a n = A140130 (n + 1)

end A140130

/-!
# A140131: a(n) = a(n-1) + a(n-2) + digsum(a(n-1)) + digsum(a(n-2)), with a(0)=0 and a(1)=1.

The programs for A140131, there is no canonical definition to state claims against.
-/

/-! ## A140131.P13376178140020514976

`A185274((3-n)²)+A060354(n)`
-/

namespace A140131.P13376178140020514976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185274 ((3 - (n : ℤ)) ^ 2).toNat + A060354 n

end

end A140131.P13376178140020514976

/-! ## A140131.P12681761311621131059

`A060354(n)+A007953(A228910(n))`
-/

namespace A140131.P12681761311621131059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 n + A007953 (A228910 n).toNat

end

end A140131.P12681761311621131059

/-! ## A140131.P6214085757278609953

`A060354(n)+A025437(A276284(n))`
-/

namespace A140131.P6214085757278609953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 n + A025437 (A276284 n).toNat

end

end A140131.P6214085757278609953

/-! ## A140131.P16918668362772655901

`A309683(A014384(n))+A060354(n)`
-/

namespace A140131.P16918668362772655901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (A014384 n).toNat + A060354 n

end

end A140131.P16918668362772655901

/-!
# A140132: a(n) = Sum_digits{a(n-1)+a(n-2)+Sum_digits[a(n-1)]+Sum_digits[a(n-2)]}, with a(0)=0 and a(1)=1.

The programs for A140132, the canonical program `A140132.P10315008867334840335` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140132 has offset 0).

The definition of A140132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140132.P10315008867334840335

`dr(a(n-3)+4)+2` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140132

/-- `dr(a(n-3)+4)+2` -/
def P10315008867334840335.Spec : Prop :=
  ∀ n, (P10315008867334840335.a n : ℤ) = A140132 n

theorem P10315008867334840335.correct : P10315008867334840335.Spec := by
  intro n
  simp only [A140132]

end A140132

/-!
# A140134: a(n)=2a(n-1) but when sum of digits of 2a(n-1) is greater than 9 take a(n) = largest number < 2a(n-1) which has sum of digits = 9.

The programs for A140134, there is no canonical definition to state claims against.
-/

/-! ## A140134.P7867446969085002927

`A133024(n+2)-2^n`
-/

namespace A140134.P7867446969085002927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133024 (n + 2) - (2 ^ n : ℤ)

end

end A140134.P7867446969085002927

/-! ## A140134.P10810835884233981561

`Δ[∑[A133024(n+1)]%(2^n)]`
-/

namespace A140134.P10810835884233981561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133024 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140134.P10810835884233981561

/-! ## A140134.P12058723717374104065

`A038554(A267515(n))+1`
-/

namespace A140134.P12058723717374104065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A267515 n).toNat + 1

end

end A140134.P12058723717374104065

/-! ## A140134.P12566835068092320284

`A055034(A133024(n+2))`
-/

namespace A140134.P12566835068092320284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A133024 (n + 2)).toNat

end

end A140134.P12566835068092320284

/-! ## A140134.P16389730932370256169

`Δ[A139708(A133024(n+1))]`
-/

namespace A140134.P16389730932370256169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (A133024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140134.P16389730932370256169

/-!
# A140137: Numbers n such that A140080(n) = 1.

The programs for A140137, there is no canonical definition to state claims against.
-/

/-! ## A140137.P4995321971877369984

`lt[acot(2*a(and(n, n-1))), (n²%3)^n]` with `a(0)=2`
-/

namespace A140137.P4995321971877369984
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.acot (2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 % 3) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A140137.P4995321971877369984

/-! ## A140137.P8402844942513306081

`eq[1, A140080(n)]`
-/

namespace A140137.P8402844942513306081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140137.P8402844942513306081

/-! ## A140137.P17455014612640289888

`eq[1, A140083(2*n)]`
-/

namespace A140137.P17455014612640289888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140137.P17455014612640289888

/-! ## A140137.P14817694553602267757

`eq[1, A140083(lcm(2, n))²]`
-/

namespace A140137.P14817694553602267757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (Nat.lcm 2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140137.P14817694553602267757

/-! ## A140137.P18106975851261513896

`lt[A151774(n), n²%3]`
-/

namespace A140137.P18106975851261513896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A140137.P18106975851261513896

/-! ## A140137.P1698130884504823933

`eq[1, A140083(n+n)%3]`
-/

namespace A140137.P1698130884504823933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140083 (n + n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140137.P1698130884504823933

/-! ## A140137.P5470804044309177903

`eq[4, A140083(n+1+n)²]`
-/

namespace A140137.P5470804044309177903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140137.P5470804044309177903

/-! ## A140137.P4627046670379758034

`eq[A035536(n), A151774(n)]`
-/

namespace A140137.P4627046670379758034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140137.P4627046670379758034

/-! ## A140137.P12744827321012815491

`eq[A133851(n), A151774(n)]`
-/

namespace A140137.P12744827321012815491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140137.P12744827321012815491

/-! ## A140137.P9339554907204593267

`eq[A151774(n), A157828(n)]`
-/

namespace A140137.P9339554907204593267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140137.P9339554907204593267

/-!
# A140138: Numbers n such that A140080(n) = 2.

The programs for A140138, there is no canonical definition to state claims against.
-/

/-! ## A140138.P16765071536392776996

`lt[1, A140080(n)]`
-/

namespace A140138.P16765071536392776996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140138.P16765071536392776996

/-! ## A140138.P2732151368736491884

`lt[1, A140083(2*n)]`
-/

namespace A140138.P2732151368736491884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140138.P2732151368736491884

/-! ## A140138.P7960086058355643980

`eq[2, A140083(lcm(2, n))]`
-/

namespace A140138.P7960086058355643980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (Nat.lcm 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140138.P7960086058355643980

/-! ## A140138.P5277835255356163599

`lt[2, A140083(n+1)]/2`
-/

namespace A140138.P5277835255356163599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A140138.P5277835255356163599

/-! ## A140138.P8274263112996647152

`eq[1, A140083(2*n+1)-2]`
-/

namespace A140138.P8274263112996647152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (2 * n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140138.P8274263112996647152

/-!
# A140139: Binomial transform of [1, 1, 2, -3, 4, -5, 6, -7, ...].

The programs for A140139, the canonical program `A140139.P11120703934616369324` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140139 has offset 1).

The definition of A140139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140139.P11120703934616369324

`Δ[n²]-char[1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140139

/-- `Δ[n²]-char[1]` -/
def P11120703934616369324.Spec : Prop :=
  ∀ n, P11120703934616369324.a n = A140139 (n + 1)

theorem P11120703934616369324.correct : P11120703934616369324.Spec := by
  intro n
  simp only [A140139, Nat.add_sub_cancel]

end A140139

/-!
# A140141: Positions of second appearances of primes in A039649.

The programs for A140141, there is no canonical definition to state claims against.
-/

/-! ## A140141.P12304083303288162768

`A066659(A006005(n+1))`
-/

namespace A140141.P12304083303288162768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (A006005 (n + 1)).toNat

end

end A140141.P12304083303288162768

/-! ## A140141.P4203936425178805826

`A066659(A075643(n+2))`
-/

namespace A140141.P4203936425178805826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (A075643 (n + 2)).toNat

end

end A140141.P4203936425178805826

/-! ## A140141.P8534481464421189644

`A066659(record[A078701(n+1)])`
-/

namespace A140141.P8534481464421189644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140141.P8534481464421189644

/-! ## A140141.P1511589142274318605

`A066659(record[A006530(2*n+1)])`
-/

namespace A140141.P1511589142274318605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140141.P1511589142274318605

/-! ## A140141.P17726984231084067412

`A074987(record[A006530(2*n+1)])`
-/

namespace A140141.P17726984231084067412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140141.P17726984231084067412

/-! ## A140141.P18291231263269521589

`A066659(record[A014963(2*n+1)])`
-/

namespace A140141.P18291231263269521589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140141.P18291231263269521589

/-! ## A140141.P2540743647537598372

`A066659(record[A020639(2*n+1)])`
-/

namespace A140141.P2540743647537598372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140141.P2540743647537598372

/-! ## A140141.P522895501622203771

`A074987(record[A014963(2*n+1)])`
-/

namespace A140141.P522895501622203771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140141.P522895501622203771

/-! ## A140141.P6552807058511173561

`A074987(record[A020639(2*n+1)])`
-/

namespace A140141.P6552807058511173561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140141.P6552807058511173561

/-! ## A140141.P9282127954830093814

`A262599(record[A006530(2*n+1)])`
-/

namespace A140141.P9282127954830093814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262599 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140141.P9282127954830093814

/-! ## A140141.P10451140004817753528

`A262599(record[A014963(2*n+1)])`
-/

namespace A140141.P10451140004817753528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262599 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140141.P10451140004817753528

/-! ## A140141.P10729344581635793688

`A262599(record[A020639(2*n+1)])`
-/

namespace A140141.P10729344581635793688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262599 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140141.P10729344581635793688

/-! ## A140141.P6120880330813445842

`A066659(2*A102781(n+1)+1)`
-/

namespace A140141.P6120880330813445842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (2 * A102781 (n + 1) + 1).toNat

end

end A140141.P6120880330813445842

/-! ## A140141.P8735196450278858205

`A074987(A000265(A000040(n+1)))`
-/

namespace A140141.P8735196450278858205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (A000265 (A000040 (n + 1)).toNat).toNat

end

end A140141.P8735196450278858205

/-! ## A140141.P13969037228841509345

`A066659(A102781(n+1)+A102781(n+1)+1)`
-/

namespace A140141.P13969037228841509345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (A102781 (n + 1) + (A102781 (n + 1) + 1)).toNat

end

end A140141.P13969037228841509345

/-!
# A140142: a(1)=1, a(n)=a(n-1)+n^0 if n odd, a(n)=a(n-1)+ n^4 if n is even.

The programs for A140142, the canonical program `A140142.P11346624207998753429` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140142 has offset 1).

The definition of A140142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140142.P6371698234138206728

`∑[(n+1)^(4*n%2)]`
-/

namespace A140142.P6371698234138206728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (4 * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140142.P6371698234138206728

namespace A140142

/-- `∑[(n+1)^(4*n%2)]` -/
def P6371698234138206728.Spec : Prop :=
  ∀ n, (P6371698234138206728.a n : ℤ) = A140142 (n + 1)

end A140142

/-! ## A140142.P11346624207998753429

`∑[(lcm(2, n)-(n-1))^4]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140142

/-- `∑[(lcm(2, n)-(n-1))^4]` -/
def P11346624207998753429.Spec : Prop :=
  ∀ n, P11346624207998753429.a n = A140142 (n + 1)

theorem P11346624207998753429.correct : P11346624207998753429.Spec := by
  intro n
  simp only [A140142, Nat.add_sub_cancel]

end A140142

/-! ## A140142.P10968761038341287503

`∑[(n+1)^(4*and(1, n))]`
-/

namespace A140142.P10968761038341287503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (4 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140142.P10968761038341287503

namespace A140142

/-- `∑[(n+1)^(4*and(1, n))]` -/
def P10968761038341287503.Spec : Prop :=
  ∀ n, (P10968761038341287503.a n : ℤ) = A140142 (n + 1)

end A140142

/-! ## A140142.P10458219941077041424

`∑[((n+1)^and(1, n))^4]`
-/

namespace A140142.P10458219941077041424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.land 1 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140142.P10458219941077041424

namespace A140142

/-- `∑[((n+1)^and(1, n))^4]` -/
def P10458219941077041424.Spec : Prop :=
  ∀ n, (P10458219941077041424.a n : ℤ) = A140142 (n + 1)

end A140142

/-! ## A140142.P10447670131457219570

`∑[(n*and(1, n)+1)²²]`
-/

namespace A140142.P10447670131457219570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n * Nat.land 1 n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140142.P10447670131457219570

namespace A140142

/-- `∑[(n*and(1, n)+1)²²]` -/
def P10447670131457219570.Spec : Prop :=
  ∀ n, (P10447670131457219570.a n : ℤ) = A140142 (n + 1)

end A140142

/-! ## A140142.P17114815535491124109

`∑[C(n+1, and(1, n))²²]`
-/

namespace A140142.P17114815535491124109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) (Nat.land 1 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140142.P17114815535491124109

namespace A140142

/-- `∑[C(n+1, and(1, n))²²]` -/
def P17114815535491124109.Spec : Prop :=
  ∀ n, (P17114815535491124109.a n : ℤ) = A140142 (n + 1)

end A140142

/-! ## A140142.P15398551874347955924

`∑[C(n+1, or(1, n))²²]`
-/

namespace A140142.P15398551874347955924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) (Nat.lor 1 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140142.P15398551874347955924

namespace A140142

/-- `∑[C(n+1, or(1, n))²²]` -/
def P15398551874347955924.Spec : Prop :=
  ∀ n, (P15398551874347955924.a n : ℤ) = A140142 (n + 1)

end A140142

/-! ## A140142.P1220773550912453099

`∑[(n+1)^Δ[or(1, n)]²]`
-/

namespace A140142.P1220773550912453099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140142.P1220773550912453099

namespace A140142

/-- `∑[(n+1)^Δ[or(1, n)]²]` -/
def P1220773550912453099.Spec : Prop :=
  ∀ n, P1220773550912453099.a n = (A140142 (n + 1) : ℚ)

end A140142

/-! ## A140142.P11076471739126921087

`∑[(n*char[or(1, n)]+1)^4]`
-/

namespace A140142.P11076471739126921087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (if ∃ j, f2 j = n then 1 else 0) + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140142.P11076471739126921087

namespace A140142

/-- `∑[(n*char[or(1, n)]+1)^4]` -/
def P11076471739126921087.Spec : Prop :=
  ∀ n, (P11076471739126921087.a n : ℤ) = A140142 (n + 1)

end A140142

/-! ## A140142.P14851007699309139256

`∑[(n+1)^(1-(-1)^n)²]`
-/

namespace A140142.P14851007699309139256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((1 - (-1) ^ n) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140142.P14851007699309139256

namespace A140142

/-- `∑[(n+1)^(1-(-1)^n)²]` -/
def P14851007699309139256.Spec : Prop :=
  ∀ n, P14851007699309139256.a n = (A140142 (n + 1) : ℚ)

end A140142

/-! ## A140142.P15939680225261745116

`A140146(n+1)-A110660(n)`
-/

namespace A140142.P15939680225261745116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140146 (n + 1) - A110660 n

end

end A140142.P15939680225261745116

namespace A140142

/-- `A140146(n+1)-A110660(n)` -/
def P15939680225261745116.Spec : Prop :=
  ∀ n, P15939680225261745116.a n = A140142 (n + 1)

theorem P15939680225261745116.correct : P15939680225261745116.Spec := by
  intro n
  simp only [A140142, Nat.add_sub_cancel, A140142.P15939680225261745116.a, A140142.P11346624207998753429.f1, A140142.P11346624207998753429.a, A110660, A110660.P9226895399142348914.a, A140146, A140146.P11502840702865608134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140142

/-! ## A140142.P5993641656612906977

`A135214(n+1)+A135301(n+1)-A135095(n+1)`
-/

namespace A140142.P5993641656612906977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135214 (n + 1) + (A135301 (n + 1) - A135095 (n + 1))

end

end A140142.P5993641656612906977

namespace A140142

/-- `A135214(n+1)+A135301(n+1)-A135095(n+1)` -/
def P5993641656612906977.Spec : Prop :=
  ∀ n, P5993641656612906977.a n = A140142 (n + 1)

end A140142

/-! ## A140142.P7348715466858066116

`A135214(n+1)+A135332(n+1)-A135099(n+1)`
-/

namespace A140142.P7348715466858066116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135214 (n + 1) + (A135332 (n + 1) - A135099 (n + 1))

end

end A140142.P7348715466858066116

namespace A140142

/-- `A135214(n+1)+A135332(n+1)-A135099(n+1)` -/
def P7348715466858066116.Spec : Prop :=
  ∀ n, P7348715466858066116.a n = A140142 (n + 1)

end A140142

/-! ## A140142.P11026740640393341215

`A135276(n+1)+A140146(n+1)-A000217(n+1)`
-/

namespace A140142.P11026740640393341215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (n + 1) + (A140146 (n + 1) - A000217 (n + 1))

end

end A140142.P11026740640393341215

namespace A140142

/-- `A135276(n+1)+A140146(n+1)-A000217(n+1)` -/
def P11026740640393341215.Spec : Prop :=
  ∀ n, P11026740640393341215.a n = A140142 (n + 1)

end A140142

/-! ## A140142.P10233520143871287395

`A000538(n+1)+A135276(n+1)-A140158(n+1)`
-/

namespace A140142.P10233520143871287395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + (A135276 (n + 1) - A140158 (n + 1))

end

end A140142.P10233520143871287395

namespace A140142

/-- `A000538(n+1)+A135276(n+1)-A140158(n+1)` -/
def P10233520143871287395.Spec : Prop :=
  ∀ n, P10233520143871287395.a n = A140142 (n + 1)

end A140142

/-! ## A140142.P9463691643255233696

`A000538(n+1)+A135301(n+1)-A140159(n+1)`
-/

namespace A140142.P9463691643255233696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + (A135301 (n + 1) - A140159 (n + 1))

end

end A140142.P9463691643255233696

namespace A140142

/-- `A000538(n+1)+A135301(n+1)-A140159(n+1)` -/
def P9463691643255233696.Spec : Prop :=
  ∀ n, P9463691643255233696.a n = A140142 (n + 1)

end A140142

/-! ## A140142.P4781240315410168815

`A135276(n+1)+A140150(n+1)-A136047(n+1)`
-/

namespace A140142.P4781240315410168815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (n + 1) + (A140150 (n + 1) - A136047 (n + 1))

end

end A140142.P4781240315410168815

namespace A140142

/-- `A135276(n+1)+A140150(n+1)-A136047(n+1)` -/
def P4781240315410168815.Spec : Prop :=
  ∀ n, P4781240315410168815.a n = A140142 (n + 1)

end A140142

/-!
# A140143: a(1)=1, a(n)=a(n-1)+n^0 if n odd, a(n)=a(n-1)+ n^5 if n is even.

The programs for A140143, the canonical program `A140143.P11492231907582972927` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140143 has offset 1).

The definition of A140143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140143.P17308849772728249553

`∑[(n+1)^(5*n%2)]`
-/

namespace A140143.P17308849772728249553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (5 * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140143.P17308849772728249553

namespace A140143

/-- `∑[(n+1)^(5*n%2)]` -/
def P17308849772728249553.Spec : Prop :=
  ∀ n, (P17308849772728249553.a n : ℤ) = A140143 (n + 1)

end A140143

/-! ## A140143.P11492231907582972927

`∑[(lcm(2, n)-(n-1))^5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140143

/-- `∑[(lcm(2, n)-(n-1))^5]` -/
def P11492231907582972927.Spec : Prop :=
  ∀ n, P11492231907582972927.a n = A140143 (n + 1)

theorem P11492231907582972927.correct : P11492231907582972927.Spec := by
  intro n
  simp only [A140143, Nat.add_sub_cancel]

end A140143

/-! ## A140143.P14442112706508203847

`∑[(n*and(1, n)+1)^5]`
-/

namespace A140143.P14442112706508203847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 1 n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140143.P14442112706508203847

namespace A140143

/-- `∑[(n*and(1, n)+1)^5]` -/
def P14442112706508203847.Spec : Prop :=
  ∀ n, (P14442112706508203847.a n : ℤ) = A140143 (n + 1)

end A140143

/-! ## A140143.P6857905424147950490

`∑[((n+1)^and(1, n))^5]`
-/

namespace A140143.P6857905424147950490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.land 1 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140143.P6857905424147950490

namespace A140143

/-- `∑[((n+1)^and(1, n))^5]` -/
def P6857905424147950490.Spec : Prop :=
  ∀ n, (P6857905424147950490.a n : ℤ) = A140143 (n + 1)

end A140143

/-! ## A140143.P10098233421148090203

`∑[C(n+1, or(1, n))^5]`
-/

namespace A140143.P10098233421148090203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.lor 1 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140143.P10098233421148090203

namespace A140143

/-- `∑[C(n+1, or(1, n))^5]` -/
def P10098233421148090203.Spec : Prop :=
  ∀ n, (P10098233421148090203.a n : ℤ) = A140143 (n + 1)

end A140143

/-! ## A140143.P16666973854200449989

`∑[(C(n, a(n-1))+1)^5]` with `a(0)=1`
-/

namespace A140143.P16666973854200449989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose n (f1 (n - 1)) + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140143.P16666973854200449989

namespace A140143

/-- `∑[(C(n, a(n-1))+1)^5]` -/
def P16666973854200449989.Spec : Prop :=
  ∀ n, (P16666973854200449989.a n : ℤ) = A140143 (n + 1)

end A140143

/-! ## A140143.P9537087379602426552

`∑[(n*char[2*n+1]+1)^5]`
-/

namespace A140143.P9537087379602426552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (if ∃ j, f2 j = n then 1 else 0) + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140143.P9537087379602426552

namespace A140143

/-- `∑[(n*char[2*n+1]+1)^5]` -/
def P9537087379602426552.Spec : Prop :=
  ∀ n, (P9537087379602426552.a n : ℤ) = A140143 (n + 1)

end A140143

/-! ## A140143.P16763980905917129926

`A140147(n+1)-A110660(n)`
-/

namespace A140143.P16763980905917129926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140147 (n + 1) - A110660 n

end

end A140143.P16763980905917129926

namespace A140143

/-- `A140147(n+1)-A110660(n)` -/
def P16763980905917129926.Spec : Prop :=
  ∀ n, P16763980905917129926.a n = A140143 (n + 1)

theorem P16763980905917129926.correct : P16763980905917129926.Spec := by
  intro n
  simp only [A140143, Nat.add_sub_cancel, A140143.P16763980905917129926.a, A140143.P11492231907582972927.f1, A140143.P11492231907582972927.a, A110660, A110660.P9226895399142348914.a, A140147, A140147.P9455521243256040217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140143

/-! ## A140143.P3736210210013979102

`A135276(n+1)+A140147(n+1)-A000217(n+1)`
-/

namespace A140143.P3736210210013979102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (n + 1) + (A140147 (n + 1) - A000217 (n + 1))

end

end A140143.P3736210210013979102

namespace A140143

/-- `A135276(n+1)+A140147(n+1)-A000217(n+1)` -/
def P3736210210013979102.Spec : Prop :=
  ∀ n, P3736210210013979102.a n = A140143 (n + 1)

end A140143

/-! ## A140143.P3840089508754042823

`A000539(n+1)+A135276(n+1)-A140163(n+1)`
-/

namespace A140143.P3840089508754042823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (n + 1) + (A135276 (n + 1) - A140163 (n + 1))

end

end A140143.P3840089508754042823

namespace A140143

/-- `A000539(n+1)+A135276(n+1)-A140163(n+1)` -/
def P3840089508754042823.Spec : Prop :=
  ∀ n, P3840089508754042823.a n = A140143 (n + 1)

end A140143

/-! ## A140143.P11033116512506936643

`A135276(n+1)+A140151(n+1)-A136047(n+1)`
-/

namespace A140143.P11033116512506936643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (n + 1) + (A140151 (n + 1) - A136047 (n + 1))

end

end A140143.P11033116512506936643

namespace A140143

/-- `A135276(n+1)+A140151(n+1)-A136047(n+1)` -/
def P11033116512506936643.Spec : Prop :=
  ∀ n, P11033116512506936643.a n = A140143 (n + 1)

end A140143

/-!
# A140144: a(1)=1, a(n)=a(n-1)+n^1 if n odd, a(n)=a(n-1)+ n^0 if n is even.

The programs for A140144, the canonical program `A140144.P15060692294174994636` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140144 has offset 1).

The definition of A140144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140144.P15060692294174994636

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=6, a(4)=11`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140144

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P15060692294174994636.Spec : Prop :=
  ∀ n, P15060692294174994636.a n = A140144 (n + 1)

theorem P15060692294174994636.correct : P15060692294174994636.Spec := by
  intro n
  simp only [A140144, Nat.add_sub_cancel]

end A140144

/-! ## A140144.P7005347141175941507

`∑[C(or(1, n), n)]`
-/

namespace A140144.P7005347141175941507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140144.P7005347141175941507

namespace A140144

/-- `∑[C(or(1, n), n)]` -/
def P7005347141175941507.Spec : Prop :=
  ∀ n, (P7005347141175941507.a n : ℤ) = A140144 (n + 1)

end A140144

/-! ## A140144.P10357052634859655961

`∑[gcd(n+1, n%2)]`
-/

namespace A140144.P10357052634859655961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140144.P10357052634859655961

namespace A140144

/-- `∑[gcd(n+1, n%2)]` -/
def P10357052634859655961.Spec : Prop :=
  ∀ n, (P10357052634859655961.a n : ℤ) = A140144 (n + 1)

end A140144

/-! ## A140144.P339494552802032325

`∑[or(1, gcd(n, and(1, n)))]`
-/

namespace A140144.P339494552802032325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.gcd n (Nat.land 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140144.P339494552802032325

namespace A140144

/-- `∑[or(1, gcd(n, and(1, n)))]` -/
def P339494552802032325.Spec : Prop :=
  ∀ n, (P339494552802032325.a n : ℤ) = A140144 (n + 1)

end A140144

/-! ## A140144.P11223397821406058578

`∑[gcd(or(1, n), xor(1, n))]`
-/

namespace A140144.P11223397821406058578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.lor 1 n) (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140144.P11223397821406058578

namespace A140144

/-- `∑[gcd(or(1, n), xor(1, n))]` -/
def P11223397821406058578.Spec : Prop :=
  ∀ n, (P11223397821406058578.a n : ℤ) = A140144 (n + 1)

end A140144

/-! ## A140144.P12152886111368476523

`∑[Δ[n²]-lcm(2, n)]`
-/

namespace A140144.P12152886111368476523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140144.P12152886111368476523

namespace A140144

/-- `∑[Δ[n²]-lcm(2, n)]` -/
def P12152886111368476523.Spec : Prop :=
  ∀ n, P12152886111368476523.a n = A140144 (n + 1)

end A140144

/-! ## A140144.P6167406376508475923

`∑[n*char[2*n]+1]`
-/

namespace A140144.P6167406376508475923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140144.P6167406376508475923

namespace A140144

/-- `∑[n*char[2*n]+1]` -/
def P6167406376508475923.Spec : Prop :=
  ∀ n, (P6167406376508475923.a n : ℤ) = A140144 (n + 1)

end A140144

/-! ## A140144.P1591661344985497423

`∑[n+1]-∑[and(1, n)]²`
-/

namespace A140144.P1591661344985497423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A140144.P1591661344985497423

namespace A140144

/-- `∑[n+1]-∑[and(1, n)]²` -/
def P1591661344985497423.Spec : Prop :=
  ∀ n, P1591661344985497423.a n = A140144 (n + 1)

end A140144

/-! ## A140144.P9813544015987294796

`∑[n*(n+1)%2]+n+1`
-/

namespace A140144.P9813544015987294796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A140144.P9813544015987294796

namespace A140144

/-- `∑[n*(n+1)%2]+n+1` -/
def P9813544015987294796.Spec : Prop :=
  ∀ n, (P9813544015987294796.a n : ℤ) = A140144 (n + 1)

end A140144

/-! ## A140144.P9663289648437863608

`∑[n*and(1, n+1)]+n+1`
-/

namespace A140144.P9663289648437863608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A140144.P9663289648437863608

namespace A140144

/-- `∑[n*and(1, n+1)]+n+1` -/
def P9663289648437863608.Spec : Prop :=
  ∀ n, (P9663289648437863608.a n : ℤ) = A140144 (n + 1)

end A140144

/-! ## A140144.P12112948034735554952

`∑[n+1]-∑[(n+2)%2]²`
-/

namespace A140144.P12112948034735554952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A140144.P12112948034735554952

namespace A140144

/-- `∑[n+1]-∑[(n+2)%2]²` -/
def P12112948034735554952.Spec : Prop :=
  ∀ n, P12112948034735554952.a n = A140144 (n + 1)

end A140144

/-! ## A140144.P11602932899838740464

`∑[floor((n+1)/a(n-1))]-1` with `a(0)=2`
-/

namespace A140144.P11602932899838740464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140144.P11602932899838740464

namespace A140144

/-- `∑[floor((n+1)/a(n-1))]-1` -/
def P11602932899838740464.Spec : Prop :=
  ∀ n, P11602932899838740464.a n = A140144 (n + 1)

end A140144

/-! ## A140144.P5691878131908498540

`∑[round((n+1)/a(n-1))]-1` with `a(0)=2`
-/

namespace A140144.P5691878131908498540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140144.P5691878131908498540

namespace A140144

/-- `∑[round((n+1)/a(n-1))]-1` -/
def P5691878131908498540.Spec : Prop :=
  ∀ n, P5691878131908498540.a n = A140144 (n + 1)

end A140144

/-! ## A140144.P8551800739875443951

`∑[(-1)^n+1]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A140144.P8551800739875443951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A140144.P8551800739875443951

namespace A140144

/-- `∑[(-1)^n+1]+a(n-2)` -/
def P8551800739875443951.Spec : Prop :=
  ∀ n, P8551800739875443951.a n = A140144 (n + 1)

end A140144

/-! ## A140144.P10319207259523774560

`∑[n+1]-∑[1-a(n-1)]²` with `a(0)=0`
-/

namespace A140144.P10319207259523774560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A140144.P10319207259523774560

namespace A140144

/-- `∑[n+1]-∑[1-a(n-1)]²` -/
def P10319207259523774560.Spec : Prop :=
  ∀ n, P10319207259523774560.a n = A140144 (n + 1)

end A140144

/-! ## A140144.P2503085158213438502

`∪[(n+1)*(n+2), (n+1)²+n]`
-/

namespace A140144.P2503085158213438502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A140144.P2503085158213438502

namespace A140144

/-- `∪[(n+1)*(n+2), (n+1)²+n]` -/
def P2503085158213438502.Spec : Prop :=
  ∀ n, (P2503085158213438502.a n : ℤ) = A140144 (n + 1)

end A140144

/-! ## A140144.P1584896388190334198

`(n+1)²-∑[gcd(2*n, ∑[2*n])]`
-/

namespace A140144.P1584896388190334198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140144.P1584896388190334198

namespace A140144

/-- `(n+1)²-∑[gcd(2*n, ∑[2*n])]` -/
def P1584896388190334198.Spec : Prop :=
  ∀ n, P1584896388190334198.a n = A140144 (n + 1)

end A140144

/-! ## A140144.P15066759917968903983

`1-(n*(1-n)%2-a(n-1))` with `a(0)=1`
-/

namespace A140144.P15066759917968903983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) * Int.tmod (1 - (n : ℤ)) 2 - a (n - 1))

end

end A140144.P15066759917968903983

namespace A140144

/-- `1-(n*(1-n)%2-a(n-1))` -/
def P15066759917968903983.Spec : Prop :=
  ∀ n, P15066759917968903983.a n = A140144 (n + 1)

end A140144

/-! ## A140144.P11380167659599828458

`a(n-1)+(n+1)^and(1, n+1)` with `a(0)=1`
-/

namespace A140144.P11380167659599828458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) ^ Nat.land 1 (n + 1)

end

end A140144.P11380167659599828458

namespace A140144

/-- `a(n-1)+(n+1)^and(1, n+1)` -/
def P11380167659599828458.Spec : Prop :=
  ∀ n, (P11380167659599828458.a n : ℤ) = A140144 (n + 1)

end A140144

/-! ## A140144.P4510110381139615860

`floor((n+3)*a(n-2)/(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A140144.P4510110381139615860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(n + 3 : ℚ) * ((a (n - 2) : ℚ) / ((n : ℤ) - 1 : ℚ))⌋

end

end A140144.P4510110381139615860

namespace A140144

/-- `floor((n+3)*a(n-2)/(n-1))` -/
def P4510110381139615860.Spec : Prop :=
  ∀ n, P4510110381139615860.a n = A140144 (n + 1)

end A140144

/-!
# A140145: a(1)=1, a(n)=a(n-1)+n^1 if n odd, a(n)=a(n-1)+ n^3 if n is even.

The programs for A140145, the canonical program `A140145.P3233202726742133382` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140145 has offset 1).

The definition of A140145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140145.P1474057815448637748

`∑[(n+1)^3^(n%2)]`
-/

namespace A140145.P1474057815448637748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140145.P1474057815448637748

namespace A140145

/-- `∑[(n+1)^3^(n%2)]` -/
def P1474057815448637748.Spec : Prop :=
  ∀ n, (P1474057815448637748.a n : ℤ) = A140145 (n + 1)

end A140145

/-! ## A140145.P6996309168817956782

`∑[(n+1)^3^and(1, n)]`
-/

namespace A140145.P6996309168817956782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140145.P6996309168817956782

namespace A140145

/-- `∑[(n+1)^3^and(1, n)]` -/
def P6996309168817956782.Spec : Prop :=
  ∀ n, (P6996309168817956782.a n : ℤ) = A140145 (n + 1)

end A140145

/-! ## A140145.P4289551742425363841

`∑[(n+1)^(2-(-1)^n)]`
-/

namespace A140145.P4289551742425363841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (2 - (-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140145.P4289551742425363841

namespace A140145

/-- `∑[(n+1)^(2-(-1)^n)]` -/
def P4289551742425363841.Spec : Prop :=
  ∀ n, P4289551742425363841.a n = (A140145 (n + 1) : ℚ)

end A140145

/-! ## A140145.P3751373835673818687

`a(n-1)+(n+1)^(2-(-1)^n)` with `a(0)=1`
-/

namespace A140145.P3751373835673818687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) ^ (2 - (-1) ^ n : ℤ)

end

end A140145.P3751373835673818687

namespace A140145

/-- `a(n-1)+(n+1)^(2-(-1)^n)` -/
def P3751373835673818687.Spec : Prop :=
  ∀ n, P3751373835673818687.a n = (A140145 (n + 1) : ℚ)

end A140145

/-! ## A140145.P3233202726742133382

`A135332(n+1)+A110660(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140145

/-- `A135332(n+1)+A110660(n)` -/
def P3233202726742133382.Spec : Prop :=
  ∀ n, P3233202726742133382.a n = A140145 (n + 1)

theorem P3233202726742133382.correct : P3233202726742133382.Spec := by
  intro n
  simp only [A140145, Nat.add_sub_cancel]

end A140145

/-! ## A140145.P13103194677218878484

`A000217(n+1)+A140149(n+1)-A136047(n+1)`
-/

namespace A140145.P13103194677218878484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A140149 (n + 1) - A136047 (n + 1))

end

end A140145.P13103194677218878484

namespace A140145

/-- `A000217(n+1)+A140149(n+1)-A136047(n+1)` -/
def P13103194677218878484.Spec : Prop :=
  ∀ n, P13103194677218878484.a n = A140145 (n + 1)

theorem P13103194677218878484.correct : P13103194677218878484.Spec := by
  intro n
  simp only [A140145, Nat.add_sub_cancel, A140145.P13103194677218878484.a, A140145.P3233202726742133382.a, A000217, A000217.P10269402890581615239.a, A110660, A110660.P9226895399142348914.a, A135332, A135332.P1977559669595929591.f1, A135332.P1977559669595929591.a, A136047, A136047.P11544268220442174438.a, A140149, A140149.P6676264140885778980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A140145

/-! ## A140145.P5643562364016112609

`A135099(n+1)+A140113(n+1)-A135095(n+1)`
-/

namespace A140145.P5643562364016112609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135099 (n + 1) + (A140113 (n + 1) - A135095 (n + 1))

end

end A140145.P5643562364016112609

namespace A140145

/-- `A135099(n+1)+A140113(n+1)-A135095(n+1)` -/
def P5643562364016112609.Spec : Prop :=
  ∀ n, P5643562364016112609.a n = A140145 (n + 1)

end A140145

/-! ## A140145.P3736744612388330721

`A135332(n+1)+A140113(n+1)-A135301(n+1)`
-/

namespace A140145.P3736744612388330721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135332 (n + 1) + (A140113 (n + 1) - A135301 (n + 1))

end

end A140145.P3736744612388330721

namespace A140145

/-- `A135332(n+1)+A140113(n+1)-A135301(n+1)` -/
def P3736744612388330721.Spec : Prop :=
  ∀ n, P3736744612388330721.a n = A140145 (n + 1)

end A140145

/-! ## A140145.P1265301817402879807

`A135099(n+1)+A140144(n+1)-A140162(n+1)`
-/

namespace A140145.P1265301817402879807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135099 (n + 1) + (A140144 (n + 1) - A140162 (n + 1))

end

end A140145.P1265301817402879807

namespace A140145

/-- `A135099(n+1)+A140144(n+1)-A140162(n+1)` -/
def P1265301817402879807.Spec : Prop :=
  ∀ n, P1265301817402879807.a n = A140145 (n + 1)

end A140145

/-! ## A140145.P88362209052368322

`A000217(n+1)+A000537(n+1)-A140153(n+1)`
-/

namespace A140145.P88362209052368322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000537 (n + 1) - A140153 (n + 1))

end

end A140145.P88362209052368322

namespace A140145

/-- `A000217(n+1)+A000537(n+1)-A140153(n+1)` -/
def P88362209052368322.Spec : Prop :=
  ∀ n, P88362209052368322.a n = A140145 (n + 1)

end A140145

/-! ## A140145.P3142484326887824944

`A000217(n+1)+A135332(n+1)-A135276(n+1)`
-/

namespace A140145.P3142484326887824944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A135332 (n + 1) - A135276 (n + 1))

end

end A140145.P3142484326887824944

namespace A140145

/-- `A000217(n+1)+A135332(n+1)-A135276(n+1)` -/
def P3142484326887824944.Spec : Prop :=
  ∀ n, P3142484326887824944.a n = A140145 (n + 1)

end A140145

/-!
# A140146: a(1)=1, a(n)=a(n-1)+n^1 if n odd, a(n)=a(n-1)+ n^4 if n is even.

The programs for A140146, the canonical program `A140146.P11502840702865608134` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140146 has offset 1).

The definition of A140146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140146.P12948386336009894439

`∑[(n+1)^4^(n%2)]`
-/

namespace A140146.P12948386336009894439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140146.P12948386336009894439

namespace A140146

/-- `∑[(n+1)^4^(n%2)]` -/
def P12948386336009894439.Spec : Prop :=
  ∀ n, (P12948386336009894439.a n : ℤ) = A140146 (n + 1)

end A140146

/-! ## A140146.P199558389284076733

`∑[(n+1)^4^and(1, n)]`
-/

namespace A140146.P199558389284076733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140146.P199558389284076733

namespace A140146

/-- `∑[(n+1)^4^and(1, n)]` -/
def P199558389284076733.Spec : Prop :=
  ∀ n, (P199558389284076733.a n : ℤ) = A140146 (n + 1)

end A140146

/-! ## A140146.P562692069847041198

`∑[((n+1)^ratio[gcd(2, n)])²]`
-/

namespace A140146.P562692069847041198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) ^ ((f2 (n + 1) : ℚ) / (f2 n : ℚ) : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140146.P562692069847041198

namespace A140146

/-- `∑[((n+1)^ratio[gcd(2, n)])²]` -/
def P562692069847041198.Spec : Prop :=
  ∀ n, P562692069847041198.a n = (A140146 (n + 1) : ℝ)

end A140146

/-! ## A140146.P17718697467069857018

`∑[(n+1)^gcd(4, (n+1)^3)]`
-/

namespace A140146.P17718697467069857018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 4 ((n + 1) ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140146.P17718697467069857018

namespace A140146

/-- `∑[(n+1)^gcd(4, (n+1)^3)]` -/
def P17718697467069857018.Spec : Prop :=
  ∀ n, (P17718697467069857018.a n : ℤ) = A140146 (n + 1)

end A140146

/-! ## A140146.P12154344001471732699

`∑[(n+1)^or(n+1, -2)²]`
-/

namespace A140146.P12154344001471732699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.lor (n + 1 : ℤ) (-2) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140146.P12154344001471732699

namespace A140146

/-- `∑[(n+1)^or(n+1, -2)²]` -/
def P12154344001471732699.Spec : Prop :=
  ∀ n, P12154344001471732699.a n = (A140146 (n + 1) : ℚ)

end A140146

/-! ## A140146.P4504823973167694785

`∑[(n+1)^(2-char[2*n])²]`
-/

namespace A140146.P4504823973167694785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140146.P4504823973167694785

namespace A140146

/-- `∑[(n+1)^(2-char[2*n])²]` -/
def P4504823973167694785.Spec : Prop :=
  ∀ n, P4504823973167694785.a n = (A140146 (n + 1) : ℚ)

end A140146

/-! ## A140146.P11502840702865608134

`A140142(n+1)+A110660(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140146

/-- `A140142(n+1)+A110660(n)` -/
def P11502840702865608134.Spec : Prop :=
  ∀ n, P11502840702865608134.a n = A140146 (n + 1)

theorem P11502840702865608134.correct : P11502840702865608134.Spec := by
  intro n
  simp only [A140146, Nat.add_sub_cancel]

end A140146

/-! ## A140146.P14258881310179559870

`A000217(n+1)+A140150(n+1)-A136047(n+1)`
-/

namespace A140146.P14258881310179559870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A140150 (n + 1) - A136047 (n + 1))

end

end A140146.P14258881310179559870

namespace A140146

/-- `A000217(n+1)+A140150(n+1)-A136047(n+1)` -/
def P14258881310179559870.Spec : Prop :=
  ∀ n, P14258881310179559870.a n = A140146 (n + 1)

theorem P14258881310179559870.correct : P14258881310179559870.Spec := by
  intro n
  simp only [A140146, Nat.add_sub_cancel, A140146.P14258881310179559870.a, A140146.P11502840702865608134.a, A000217, A000217.P10269402890581615239.a, A110660, A110660.P9226895399142348914.a, A136047, A136047.P11544268220442174438.a, A140142, A140142.P11346624207998753429.f1, A140142.P11346624207998753429.a, A140150, A140150.P5080303164108488707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A140146

/-! ## A140146.P13174316627363107555

`A135214(n+1)+A140113(n+1)-A135095(n+1)`
-/

namespace A140146.P13174316627363107555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135214 (n + 1) + (A140113 (n + 1) - A135095 (n + 1))

end

end A140146.P13174316627363107555

namespace A140146

/-- `A135214(n+1)+A140113(n+1)-A135095(n+1)` -/
def P13174316627363107555.Spec : Prop :=
  ∀ n, P13174316627363107555.a n = A140146 (n + 1)

end A140146

/-! ## A140146.P7884922708745001376

`A140113(n+1)+A140155(n+1)-A140154(n+1)`
-/

namespace A140146.P7884922708745001376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140113 (n + 1) + (A140155 (n + 1) - A140154 (n + 1))

end

end A140146.P7884922708745001376

namespace A140146

/-- `A140113(n+1)+A140155(n+1)-A140154(n+1)` -/
def P7884922708745001376.Spec : Prop :=
  ∀ n, P7884922708745001376.a n = A140146 (n + 1)

end A140146

/-! ## A140146.P4784154900302928315

`A000217(n+1)+A000538(n+1)-A140158(n+1)`
-/

namespace A140146.P4784154900302928315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000538 (n + 1) - A140158 (n + 1))

end

end A140146.P4784154900302928315

namespace A140146

/-- `A000217(n+1)+A000538(n+1)-A140158(n+1)` -/
def P4784154900302928315.Spec : Prop :=
  ∀ n, P4784154900302928315.a n = A140146 (n + 1)

end A140146

/-! ## A140146.P9025644335809531961

`A000217(n+1)+A140142(n+1)-A135276(n+1)`
-/

namespace A140146.P9025644335809531961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A140142 (n + 1) - A135276 (n + 1))

end

end A140146.P9025644335809531961

namespace A140146

/-- `A000217(n+1)+A140142(n+1)-A135276(n+1)` -/
def P9025644335809531961.Spec : Prop :=
  ∀ n, P9025644335809531961.a n = A140146 (n + 1)

end A140146

/-!
# A140147: a(1)=1, a(n)=a(n-1)+n^1 if n odd, a(n)=a(n-1)+ n^5 if n is even.

The programs for A140147, the canonical program `A140147.P9455521243256040217` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140147 has offset 1).

The definition of A140147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140147.P13290000344158732874

`∑[(n+1)^5^(n%2)]`
-/

namespace A140147.P13290000344158732874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140147.P13290000344158732874

namespace A140147

/-- `∑[(n+1)^5^(n%2)]` -/
def P13290000344158732874.Spec : Prop :=
  ∀ n, (P13290000344158732874.a n : ℤ) = A140147 (n + 1)

end A140147

/-! ## A140147.P14801718151424338196

`∑[(n+1)^5^and(1, n)]`
-/

namespace A140147.P14801718151424338196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140147.P14801718151424338196

namespace A140147

/-- `∑[(n+1)^5^and(1, n)]` -/
def P14801718151424338196.Spec : Prop :=
  ∀ n, (P14801718151424338196.a n : ℤ) = A140147 (n + 1)

end A140147

/-! ## A140147.P2577293045361870243

`∑[(n+1)^(Δ[xor(1, n)]+2)]`
-/

namespace A140147.P2577293045361870243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140147.P2577293045361870243

namespace A140147

/-- `∑[(n+1)^(Δ[xor(1, n)]+2)]` -/
def P2577293045361870243.Spec : Prop :=
  ∀ n, P2577293045361870243.a n = (A140147 (n + 1) : ℚ)

end A140147

/-! ## A140147.P4481712958952257284

`∑[(n+1)^5^(2-gcd(2, n))]`
-/

namespace A140147.P4481712958952257284
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((5 : ℚ) ^ (2 - (Nat.gcd 2 n : ℤ) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140147.P4481712958952257284

namespace A140147

/-- `∑[(n+1)^5^(2-gcd(2, n))]` -/
def P4481712958952257284.Spec : Prop :=
  ∀ n, P4481712958952257284.a n = (A140147 (n + 1) : ℝ)

end A140147

/-! ## A140147.P9246249348869448645

`∑[(n+1)^(3-2*(-1)^n)]`
-/

namespace A140147.P9246249348869448645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (3 - 2 * (-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140147.P9246249348869448645

namespace A140147

/-- `∑[(n+1)^(3-2*(-1)^n)]` -/
def P9246249348869448645.Spec : Prop :=
  ∀ n, P9246249348869448645.a n = (A140147 (n + 1) : ℚ)

end A140147

/-! ## A140147.P9455521243256040217

`A140143(n+1)+A110660(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140147

/-- `A140143(n+1)+A110660(n)` -/
def P9455521243256040217.Spec : Prop :=
  ∀ n, P9455521243256040217.a n = A140147 (n + 1)

theorem P9455521243256040217.correct : P9455521243256040217.Spec := by
  intro n
  simp only [A140147, Nat.add_sub_cancel]

end A140147

/-! ## A140147.P64229089901290235

`A000217(n+1)+A140151(n+1)-A136047(n+1)`
-/

namespace A140147.P64229089901290235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A140151 (n + 1) - A136047 (n + 1))

end

end A140147.P64229089901290235

namespace A140147

/-- `A000217(n+1)+A140151(n+1)-A136047(n+1)` -/
def P64229089901290235.Spec : Prop :=
  ∀ n, P64229089901290235.a n = A140147 (n + 1)

theorem P64229089901290235.correct : P64229089901290235.Spec := by
  intro n
  simp only [A140147, Nat.add_sub_cancel, A140147.P64229089901290235.a, A140147.P9455521243256040217.a, A000217, A000217.P10269402890581615239.a, A110660, A110660.P9226895399142348914.a, A136047, A136047.P11544268220442174438.a, A140143, A140143.P11492231907582972927.f1, A140143.P11492231907582972927.a, A140151, A140151.P653801514374288644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A140147

/-! ## A140147.P13933138458933790756

`A000217(n+1)+A000539(n+1)-A140163(n+1)`
-/

namespace A140147.P13933138458933790756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000539 (n + 1) - A140163 (n + 1))

end

end A140147.P13933138458933790756

namespace A140147

/-- `A000217(n+1)+A000539(n+1)-A140163(n+1)` -/
def P13933138458933790756.Spec : Prop :=
  ∀ n, P13933138458933790756.a n = A140147 (n + 1)

end A140147

/-! ## A140147.P8917936633969196894

`A000217(n+1)+A140143(n+1)-A135276(n+1)`
-/

namespace A140147.P8917936633969196894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A140143 (n + 1) - A135276 (n + 1))

end

end A140147.P8917936633969196894

namespace A140147

/-- `A000217(n+1)+A140143(n+1)-A135276(n+1)` -/
def P8917936633969196894.Spec : Prop :=
  ∀ n, P8917936633969196894.a n = A140147 (n + 1)

end A140147

/-!
# A140148: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^0 if n is even.

The programs for A140148, the canonical program `A140148.P18316389487958549082` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140148 has offset 1).

The definition of A140148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140148.P18316389487958549082

`((n+1)^3+(n+1)%2*3*(n+1)²+(2+(n+1)%2*3)*(n+1)-(n+1)%2*3)/6`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140148

/-- `((n+1)^3+(n+1)%2*3*(n+1)²+(2+(n+1)%2*3)*(n+1)-(n+1)%2*3)/6` -/
def P18316389487958549082.Spec : Prop :=
  ∀ n, P18316389487958549082.a n = (A140148 (n + 1) : ℚ)

end A140148

/-! ## A140148.P15799878393430614352

`∑[C(or(1, n), n)²]`
-/

namespace A140148.P15799878393430614352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140148.P15799878393430614352

namespace A140148

/-- `∑[C(or(1, n), n)²]` -/
def P15799878393430614352.Spec : Prop :=
  ∀ n, (P15799878393430614352.a n : ℤ) = A140148 (n + 1)

end A140148

/-! ## A140148.P2367585530197833322

`∑[C(or(1, n), n)^2]`
-/

namespace A140148.P2367585530197833322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140148.P2367585530197833322

namespace A140148

/-- `∑[C(or(1, n), n)^2]` -/
def P2367585530197833322.Spec : Prop :=
  ∀ n, (P2367585530197833322.a n : ℤ) = A140148 (n + 1)

end A140148

/-! ## A140148.P212072589628169151

`∑[or(n, (-1)^n)²]`
-/

namespace A140148.P212072589628169151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((-1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140148.P212072589628169151

namespace A140148

/-- `∑[or(n, (-1)^n)²]` -/
def P212072589628169151.Spec : Prop :=
  ∀ n, P212072589628169151.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P2965551647152371589

`∑[gcd(n+1, n%2)²]`
-/

namespace A140148.P2965551647152371589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140148.P2965551647152371589

namespace A140148

/-- `∑[gcd(n+1, n%2)²]` -/
def P2965551647152371589.Spec : Prop :=
  ∀ n, (P2965551647152371589.a n : ℤ) = A140148 (n + 1)

end A140148

/-! ## A140148.P9853189822046272792

`∑[gcd((n+1)², and(1, n))]`
-/

namespace A140148.P9853189822046272792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ 2) (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140148.P9853189822046272792

namespace A140148

/-- `∑[gcd((n+1)², and(1, n))]` -/
def P9853189822046272792.Spec : Prop :=
  ∀ n, (P9853189822046272792.a n : ℤ) = A140148 (n + 1)

end A140148

/-! ## A140148.P1480349003320117325

`∑[(lcm(2, n)-Δ[n²])²]`
-/

namespace A140148.P1480349003320117325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140148.P1480349003320117325

namespace A140148

/-- `∑[(lcm(2, n)-Δ[n²])²]` -/
def P1480349003320117325.Spec : Prop :=
  ∀ n, P1480349003320117325.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P16528342511317922451

`∑[(n+1)^and(2, gcd(2, n))]`
-/

namespace A140148.P16528342511317922451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 2 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140148.P16528342511317922451

namespace A140148

/-- `∑[(n+1)^and(2, gcd(2, n))]` -/
def P16528342511317922451.Spec : Prop :=
  ∀ n, (P16528342511317922451.a n : ℤ) = A140148 (n + 1)

end A140148

/-! ## A140148.P6891642967359949345

`∑[(n*char[2*n]+1)²]`
-/

namespace A140148.P6891642967359949345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (if ∃ j, f2 j = n then 1 else 0) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140148.P6891642967359949345

namespace A140148

/-- `∑[(n*char[2*n]+1)²]` -/
def P6891642967359949345.Spec : Prop :=
  ∀ n, (P6891642967359949345.a n : ℤ) = A140148 (n + 1)

end A140148

/-! ## A140148.P10518313345703392152

`∑[(C(n, a(n-1))+1)²]-1` with `a(0)=2`
-/

namespace A140148.P10518313345703392152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  (Nat.choose n (f1 (n - 1)) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A140148.P10518313345703392152

namespace A140148

/-- `∑[(C(n, a(n-1))+1)²]-1` -/
def P10518313345703392152.Spec : Prop :=
  ∀ n, P10518313345703392152.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P16844969213397029056

`∑[ceil((n+1)/a(n-1))²]-1` with `a(0)=2`
-/

namespace A140148.P16844969213397029056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌈(n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140148.P16844969213397029056

namespace A140148

/-- `∑[ceil((n+1)/a(n-1))²]-1` -/
def P16844969213397029056.Spec : Prop :=
  ∀ n, P16844969213397029056.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P4947879534637624873

`∑[floor((n+1)²/a(n-1))]-2` with `a(0)=3`
-/

namespace A140148.P4947879534637624873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌊((n + 1) ^ 2 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A140148.P4947879534637624873

namespace A140148

/-- `∑[floor((n+1)²/a(n-1))]-2` -/
def P4947879534637624873.Spec : Prop :=
  ∀ n, P4947879534637624873.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P5786439663080235913

`a(n-1)+(n+1)^((-1)^n+1)` with `a(0)=1`
-/

namespace A140148.P5786439663080235913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) ^ ((-1) ^ n + 1 : ℤ)

end

end A140148.P5786439663080235913

namespace A140148

/-- `a(n-1)+(n+1)^((-1)^n+1)` -/
def P5786439663080235913.Spec : Prop :=
  ∀ n, P5786439663080235913.a n = (A140148 (n + 1) : ℚ)

end A140148

/-! ## A140148.P17121960702004886226

`∑[floor((n+1)*(n+1)/a(n-1))]-2` with `a(0)=3`
-/

namespace A140148.P17121960702004886226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌊(n + 1 : ℚ) * ((n + 1 : ℚ) / (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A140148.P17121960702004886226

namespace A140148

/-- `∑[floor((n+1)*(n+1)/a(n-1))]-2` -/
def P17121960702004886226.Spec : Prop :=
  ∀ n, P17121960702004886226.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P1471423279860759519

`∑[char[2*n]*A005563(n)+2]-(n+1)`
-/

namespace A140148.P1471423279860759519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A005563 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A140148.P1471423279860759519

namespace A140148

/-- `∑[char[2*n]*A005563(n)+2]-(n+1)` -/
def P1471423279860759519.Spec : Prop :=
  ∀ n, P1471423279860759519.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P986238202414217485

`A212748(n)-A266074(n)`
-/

namespace A140148.P986238202414217485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212748 n - A266074 n

end

end A140148.P986238202414217485

namespace A140148

/-- `A212748(n)-A266074(n)` -/
def P986238202414217485.Spec : Prop :=
  ∀ n, P986238202414217485.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P12018683926320238417

`A145066(n+1)-A135301(n+1)`
-/

namespace A140148.P12018683926320238417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145066 (n + 1) - A135301 (n + 1)

end

end A140148.P12018683926320238417

namespace A140148

/-- `A145066(n+1)-A135301(n+1)` -/
def P12018683926320238417.Spec : Prop :=
  ∀ n, P12018683926320238417.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P12785654000561963598

`A168380(n+1)-A176889(n+1)`
-/

namespace A140148.P12785654000561963598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 1) - A176889 (n + 1)

end

end A140148.P12785654000561963598

namespace A140148

/-- `A168380(n+1)-A176889(n+1)` -/
def P12785654000561963598.Spec : Prop :=
  ∀ n, P12785654000561963598.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P14058613002239799052

`A084570(A059841(n)+n)-A059841(n)`
-/

namespace A140148.P14058613002239799052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084570 (A059841 n + (n : ℤ)).toNat - A059841 n

end

end A140148.P14058613002239799052

namespace A140148

/-- `A084570(A059841(n)+n)-A059841(n)` -/
def P14058613002239799052.Spec : Prop :=
  ∀ n, P14058613002239799052.a n = A140148 (n + 1)

end A140148

/-! ## A140148.P17821401699312513555

`A005900(n+1)-A050442(n+1)`
-/

namespace A140148.P17821401699312513555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (n + 1) - A050442 (n + 1)

end

end A140148.P17821401699312513555

namespace A140148

/-- `A005900(n+1)-A050442(n+1)` -/
def P17821401699312513555.Spec : Prop :=
  ∀ n, P17821401699312513555.a n = A140148 (n + 1)

end A140148

/-!
# A140149: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^3 if n is even.

The programs for A140149, the canonical program `A140149.P6676264140885778980` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140149 has offset 1).

The definition of A140149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140149.P10640483994521744962

`∑[(n+1)^(n%2+2)]`
-/

namespace A140149.P10640483994521744962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n % 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140149.P10640483994521744962

namespace A140149

/-- `∑[(n+1)^(n%2+2)]` -/
def P10640483994521744962.Spec : Prop :=
  ∀ n, (P10640483994521744962.a n : ℤ) = A140149 (n + 1)

end A140149

/-! ## A140149.P13818297771983463505

`∑[(n+1)^(4-gcd(2, n))]`
-/

namespace A140149.P13818297771983463505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (4 - (Nat.gcd 2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140149.P13818297771983463505

namespace A140149

/-- `∑[(n+1)^(4-gcd(2, n))]` -/
def P13818297771983463505.Spec : Prop :=
  ∀ n, P13818297771983463505.a n = (A140149 (n + 1) : ℚ)

end A140149

/-! ## A140149.P2783553744526669897

`∑[(n+1)^(and(1, n)+2)]`
-/

namespace A140149.P2783553744526669897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (Nat.land 1 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140149.P2783553744526669897

namespace A140149

/-- `∑[(n+1)^(and(1, n)+2)]` -/
def P2783553744526669897.Spec : Prop :=
  ∀ n, (P2783553744526669897.a n : ℤ) = A140149 (n + 1)

end A140149

/-! ## A140149.P1162916279866058750

`∑[(n+1)^(3-char[2*n])]`
-/

namespace A140149.P1162916279866058750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (3 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140149.P1162916279866058750

namespace A140149

/-- `∑[(n+1)^(3-char[2*n])]` -/
def P1162916279866058750.Spec : Prop :=
  ∀ n, P1162916279866058750.a n = (A140149 (n + 1) : ℚ)

end A140149

/-! ## A140149.P6676264140885778980

`A136047(n+1)+A140145(n+1)-A000217(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A140149

/-- `A136047(n+1)+A140145(n+1)-A000217(n+1)` -/
def P6676264140885778980.Spec : Prop :=
  ∀ n, P6676264140885778980.a n = A140149 (n + 1)

theorem P6676264140885778980.correct : P6676264140885778980.Spec := by
  intro n
  simp only [A140149, Nat.add_sub_cancel]

end A140149

/-! ## A140149.P8407803156963443856

`A000330(n+1)+A140145(n+1)-A140113(n+1)`
-/

namespace A140149.P8407803156963443856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A140145 (n + 1) - A140113 (n + 1))

end

end A140149.P8407803156963443856

namespace A140149

/-- `A000330(n+1)+A140145(n+1)-A140113(n+1)` -/
def P8407803156963443856.Spec : Prop :=
  ∀ n, P8407803156963443856.a n = A140149 (n + 1)

end A140149

/-! ## A140149.P249964112372368239

`A000330(n+1)+A000537(n+1)-A140154(n+1)`
-/

namespace A140149.P249964112372368239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A000537 (n + 1) - A140154 (n + 1))

end

end A140149.P249964112372368239

namespace A140149

/-- `A000330(n+1)+A000537(n+1)-A140154(n+1)` -/
def P249964112372368239.Spec : Prop :=
  ∀ n, P249964112372368239.a n = A140149 (n + 1)

end A140149

/-! ## A140149.P5983030258744252908

`A000537(n+1)+A136047(n+1)-A140153(n+1)`
-/

namespace A140149.P5983030258744252908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A136047 (n + 1) - A140153 (n + 1))

end

end A140149.P5983030258744252908

namespace A140149

/-- `A000537(n+1)+A136047(n+1)-A140153(n+1)` -/
def P5983030258744252908.Spec : Prop :=
  ∀ n, P5983030258744252908.a n = A140149 (n + 1)

end A140149

/-! ## A140149.P6084699719145119730

`A135332(n+1)+A136047(n+1)-A135276(n+1)`
-/

namespace A140149.P6084699719145119730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135332 (n + 1) + (A136047 (n + 1) - A135276 (n + 1))

end

end A140149.P6084699719145119730

namespace A140149

/-- `A135332(n+1)+A136047(n+1)-A135276(n+1)` -/
def P6084699719145119730.Spec : Prop :=
  ∀ n, P6084699719145119730.a n = A140149 (n + 1)

end A140149

/-!
# A140150: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^4 if n is even.

The programs for A140150, the canonical program `A140150.P5080303164108488707` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140150 has offset 1).

The definition of A140150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140150.P9711811788747644621

`∑[(n+1)^(4/gcd(2, n))]`
-/

namespace A140150.P9711811788747644621
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (4 / (Nat.gcd 2 n : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140150.P9711811788747644621

namespace A140150

/-- `∑[(n+1)^(4/gcd(2, n))]` -/
def P9711811788747644621.Spec : Prop :=
  ∀ n, P9711811788747644621.a n = (A140150 (n + 1) : ℝ)

end A140150

/-! ## A140150.P10861112904799801685

`∑[(n+1)^(3-(-1)^n)]`
-/

namespace A140150.P10861112904799801685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (3 - (-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140150.P10861112904799801685

namespace A140150

/-- `∑[(n+1)^(3-(-1)^n)]` -/
def P10861112904799801685.Spec : Prop :=
  ∀ n, P10861112904799801685.a n = (A140150 (n + 1) : ℚ)

end A140150

/-! ## A140150.P7286920045925944591

`a(n-1)+(n+1)^(3-(-1)^n)` with `a(0)=1`
-/

namespace A140150.P7286920045925944591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) ^ (3 - (-1) ^ n : ℤ)

end

end A140150.P7286920045925944591

namespace A140150

/-- `a(n-1)+(n+1)^(3-(-1)^n)` -/
def P7286920045925944591.Spec : Prop :=
  ∀ n, P7286920045925944591.a n = (A140150 (n + 1) : ℚ)

end A140150

/-! ## A140150.P5080303164108488707

`A136047(n+1)+A140146(n+1)-A000217(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A140150

/-- `A136047(n+1)+A140146(n+1)-A000217(n+1)` -/
def P5080303164108488707.Spec : Prop :=
  ∀ n, P5080303164108488707.a n = A140150 (n + 1)

theorem P5080303164108488707.correct : P5080303164108488707.Spec := by
  intro n
  simp only [A140150, Nat.add_sub_cancel]

end A140150

/-! ## A140150.P12728071594145655395

`A000330(n+1)+A000538(n+1)-A140159(n+1)`
-/

namespace A140150.P12728071594145655395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A000538 (n + 1) - A140159 (n + 1))

end

end A140150.P12728071594145655395

namespace A140150

/-- `A000330(n+1)+A000538(n+1)-A140159(n+1)` -/
def P12728071594145655395.Spec : Prop :=
  ∀ n, P12728071594145655395.a n = A140150 (n + 1)

end A140150

/-! ## A140150.P11768091333404119295

`A000538(n+1)+A136047(n+1)-A140158(n+1)`
-/

namespace A140150.P11768091333404119295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + (A136047 (n + 1) - A140158 (n + 1))

end

end A140150.P11768091333404119295

namespace A140150

/-- `A000538(n+1)+A136047(n+1)-A140158(n+1)` -/
def P11768091333404119295.Spec : Prop :=
  ∀ n, P11768091333404119295.a n = A140150 (n + 1)

end A140150

/-! ## A140150.P3206893475686500325

`A000538(n+1)+A140148(n+1)-A140157(n+1)`
-/

namespace A140150.P3206893475686500325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + (A140148 (n + 1) - A140157 (n + 1))

end

end A140150.P3206893475686500325

namespace A140150

/-- `A000538(n+1)+A140148(n+1)-A140157(n+1)` -/
def P3206893475686500325.Spec : Prop :=
  ∀ n, P3206893475686500325.a n = A140150 (n + 1)

end A140150

/-! ## A140150.P4972606658483101975

`A136047(n+1)+A140142(n+1)-A135276(n+1)`
-/

namespace A140150.P4972606658483101975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140142 (n + 1) - A135276 (n + 1))

end

end A140150.P4972606658483101975

namespace A140150

/-- `A136047(n+1)+A140142(n+1)-A135276(n+1)` -/
def P4972606658483101975.Spec : Prop :=
  ∀ n, P4972606658483101975.a n = A140150 (n + 1)

end A140150

/-!
# A140151: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^5 if n is even.

The programs for A140151, the canonical program `A140151.P653801514374288644` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140151 has offset 1).

The definition of A140151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140151.P1986549518856764807

`∑[(n+1)^(6-gcd(2, n)²)]`
-/

namespace A140151.P1986549518856764807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (6 - (Nat.gcd 2 n ^ 2 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140151.P1986549518856764807

namespace A140151

/-- `∑[(n+1)^(6-gcd(2, n)²)]` -/
def P1986549518856764807.Spec : Prop :=
  ∀ n, P1986549518856764807.a n = (A140151 (n + 1) : ℚ)

end A140151

/-! ## A140151.P661545102795788759

`∑[(n+1)^(3*n%2+2)]`
-/

namespace A140151.P661545102795788759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (3 * (n % 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140151.P661545102795788759

namespace A140151

/-- `∑[(n+1)^(3*n%2+2)]` -/
def P661545102795788759.Spec : Prop :=
  ∀ n, (P661545102795788759.a n : ℤ) = A140151 (n + 1)

end A140151

/-! ## A140151.P4889947386815248758

`∑[(n+1)^∑[-a(n-1)]]` with `a(0)=2, a(1)=3`
-/

namespace A140151.P4889947386815248758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140151.P4889947386815248758

namespace A140151

/-- `∑[(n+1)^∑[-a(n-1)]]` -/
def P4889947386815248758.Spec : Prop :=
  ∀ n, P4889947386815248758.a n = (A140151 (n + 1) : ℚ)

end A140151

/-! ## A140151.P13384559495396105894

`∑[((n+1)^(3-2^(-1)^n))²]`
-/

namespace A140151.P13384559495396105894
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) ^ (3 - (2 : ℚ) ^ ((-1) ^ n : ℤ) : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140151.P13384559495396105894

namespace A140151

/-- `∑[((n+1)^(3-2^(-1)^n))²]` -/
def P13384559495396105894.Spec : Prop :=
  ∀ n, P13384559495396105894.a n = (A140151 (n + 1) : ℝ)

end A140151

/-! ## A140151.P653801514374288644

`A136047(n+1)+A140147(n+1)-A000217(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A140151

/-- `A136047(n+1)+A140147(n+1)-A000217(n+1)` -/
def P653801514374288644.Spec : Prop :=
  ∀ n, P653801514374288644.a n = A140151 (n + 1)

theorem P653801514374288644.correct : P653801514374288644.Spec := by
  intro n
  simp only [A140151, Nat.add_sub_cancel]

end A140151

/-! ## A140151.P18276573277603731821

`A000330(n+1)+A000539(n+1)-A135095(n+1)`
-/

namespace A140151.P18276573277603731821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A000539 (n + 1) - A135095 (n + 1))

end

end A140151.P18276573277603731821

namespace A140151

/-- `A000330(n+1)+A000539(n+1)-A135095(n+1)` -/
def P18276573277603731821.Spec : Prop :=
  ∀ n, P18276573277603731821.a n = A140151 (n + 1)

end A140151

/-! ## A140151.P12906633430776364388

`A000539(n+1)+A136047(n+1)-A140163(n+1)`
-/

namespace A140151.P12906633430776364388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (n + 1) + (A136047 (n + 1) - A140163 (n + 1))

end

end A140151.P12906633430776364388

namespace A140151

/-- `A000539(n+1)+A136047(n+1)-A140163(n+1)` -/
def P12906633430776364388.Spec : Prop :=
  ∀ n, P12906633430776364388.a n = A140151 (n + 1)

end A140151

/-! ## A140151.P18132809890693781202

`A136047(n+1)+A140143(n+1)-A135276(n+1)`
-/

namespace A140151.P18132809890693781202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140143 (n + 1) - A135276 (n + 1))

end

end A140151.P18132809890693781202

namespace A140151

/-- `A136047(n+1)+A140143(n+1)-A135276(n+1)` -/
def P18132809890693781202.Spec : Prop :=
  ∀ n, P18132809890693781202.a n = A140151 (n + 1)

end A140151

/-!
# A140152: a(1)=1, a(n)=a(n-1)+n^3 if n odd, a(n)=a(n-1)+ n^0 if n is even.

The programs for A140152, the canonical program `A140152.P10400256010041708560` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140152 has offset 1).

The definition of A140152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140152.P10400256010041708560

`∑[C(or(1, n), n)^3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140152

/-- `∑[C(or(1, n), n)^3]` -/
def P10400256010041708560.Spec : Prop :=
  ∀ n, (P10400256010041708560.a n : ℤ) = A140152 (n + 1)

theorem P10400256010041708560.correct : P10400256010041708560.Spec := by
  intro n
  simp only [A140152, Nat.add_sub_cancel]

end A140152

/-! ## A140152.P12628635255502859660

`∑[gcd((n+1)^3, n%2)]`
-/

namespace A140152.P12628635255502859660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ 3) (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140152.P12628635255502859660

namespace A140152

/-- `∑[gcd((n+1)^3, n%2)]` -/
def P12628635255502859660.Spec : Prop :=
  ∀ n, (P12628635255502859660.a n : ℤ) = A140152 (n + 1)

end A140152

/-! ## A140152.P13805031613867714783

`∑[gcd(n+1, and(1, n))^3]`
-/

namespace A140152.P13805031613867714783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.land 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140152.P13805031613867714783

namespace A140152

/-- `∑[gcd(n+1, and(1, n))^3]` -/
def P13805031613867714783.Spec : Prop :=
  ∀ n, (P13805031613867714783.a n : ℤ) = A140152 (n + 1)

end A140152

/-! ## A140152.P16813544882818607572

`∑[(n+1)^xor(1, gcd(2, n))]`
-/

namespace A140152.P16813544882818607572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.xor 1 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140152.P16813544882818607572

namespace A140152

/-- `∑[(n+1)^xor(1, gcd(2, n))]` -/
def P16813544882818607572.Spec : Prop :=
  ∀ n, (P16813544882818607572.a n : ℤ) = A140152 (n + 1)

end A140152

/-! ## A140152.P1416287288632741245

`∑[(n+1)^(3*char[2*n])]`
-/

namespace A140152.P1416287288632741245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (3 * (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140152.P1416287288632741245

namespace A140152

/-- `∑[(n+1)^(3*char[2*n])]` -/
def P1416287288632741245.Spec : Prop :=
  ∀ n, (P1416287288632741245.a n : ℤ) = A140152 (n + 1)

end A140152

/-! ## A140152.P5897710915454697322

`a(n-1)+(1-(-1)^(n+1))/2*(n+1)^3+(1+(-1)^(n+1))/2` with `a(0)=1`
-/

namespace A140152.P5897710915454697322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - (-1) ^ (n + 1) : ℚ) / 2 * ((n + 1) ^ 3 : ℚ) + (1 + (-1) ^ (n + 1) : ℚ) / 2

end

end A140152.P5897710915454697322

namespace A140152

/-- `a(n-1)+(1-(-1)^(n+1))/2*(n+1)^3+(1+(-1)^(n+1))/2` -/
def P5897710915454697322.Spec : Prop :=
  ∀ n, P5897710915454697322.a n = (A140152 (n + 1) : ℚ)

end A140152

/-!
# A140153: a(1)=1, a(n) = a(n-1) + n^3 if n odd, a(n) = a(n-1) + n^1 if n is even.

The programs for A140153, the canonical program `A140153.P5823755770130082904` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140153 has offset 1).

The definition of A140153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140153.P5823755770130082904

`a(n-1)+(1-(-1)^(n+1))/2*(n+1)^3+(1+(-1)^(n+1))/2*(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140153

/-- `a(n-1)+(1-(-1)^(n+1))/2*(n+1)^3+(1+(-1)^(n+1))/2*(n+1)` -/
def P5823755770130082904.Spec : Prop :=
  ∀ n, P5823755770130082904.a n = (A140153 (n + 1) : ℚ)

end A140153

/-! ## A140153.P14860763415375835235

`∑[(n+1)^gcd(3, n%2)]`
-/

namespace A140153.P14860763415375835235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 3 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140153.P14860763415375835235

namespace A140153

/-- `∑[(n+1)^gcd(3, n%2)]` -/
def P14860763415375835235.Spec : Prop :=
  ∀ n, (P14860763415375835235.a n : ℤ) = A140153 (n + 1)

end A140153

/-! ## A140153.P17172091388419430834

`∑[(n+1)^or(1, gcd(2, n))]`
-/

namespace A140153.P17172091388419430834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.lor 1 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140153.P17172091388419430834

namespace A140153

/-- `∑[(n+1)^or(1, gcd(2, n))]` -/
def P17172091388419430834.Spec : Prop :=
  ∀ n, (P17172091388419430834.a n : ℤ) = A140153 (n + 1)

end A140153

/-! ## A140153.P8800416961738917836

`∑[(n+1)^((-1)^n+2)]`
-/

namespace A140153.P8800416961738917836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((-1) ^ n + 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140153.P8800416961738917836

namespace A140153

/-- `∑[(n+1)^((-1)^n+2)]` -/
def P8800416961738917836.Spec : Prop :=
  ∀ n, P8800416961738917836.a n = (A140153 (n + 1) : ℚ)

end A140153

/-! ## A140153.P18359214381554639642

`a(n-1)+(n+1)^((-1)^n+2)` with `a(0)=1`
-/

namespace A140153.P18359214381554639642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) ^ ((-1) ^ n + 2 : ℤ)

end

end A140153.P18359214381554639642

namespace A140153

/-- `a(n-1)+(n+1)^((-1)^n+2)` -/
def P18359214381554639642.Spec : Prop :=
  ∀ n, P18359214381554639642.a n = (A140153 (n + 1) : ℚ)

end A140153

/-! ## A140153.P6610756642048310946

`A136047(n+1)+A140154(n+1)-A000330(n+1)`
-/

namespace A140153.P6610756642048310946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140154 (n + 1) - A000330 (n + 1))

end

end A140153.P6610756642048310946

namespace A140153

/-- `A136047(n+1)+A140154(n+1)-A000330(n+1)` -/
def P6610756642048310946.Spec : Prop :=
  ∀ n, P6610756642048310946.a n = A140153 (n + 1)

end A140153

/-! ## A140153.P7192882223184571242

`floor(∑[(n+1)^Δ[A014601(n)]])`
-/

namespace A140153.P7192882223184571242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A140153.P7192882223184571242

namespace A140153

/-- `floor(∑[(n+1)^Δ[A014601(n)]])` -/
def P7192882223184571242.Spec : Prop :=
  ∀ n, P7192882223184571242.a n = A140153 (n + 1)

end A140153

/-! ## A140153.P13810579526983550604

`A000217(n+1)+A000537(n+1)-A140145(n+1)`
-/

namespace A140153.P13810579526983550604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000537 (n + 1) - A140145 (n + 1))

end

end A140153.P13810579526983550604

namespace A140153

/-- `A000217(n+1)+A000537(n+1)-A140145(n+1)` -/
def P13810579526983550604.Spec : Prop :=
  ∀ n, P13810579526983550604.a n = A140153 (n + 1)

end A140153

/-! ## A140153.P5264730617137953757

`A000537(n+1)+A136047(n+1)-A140149(n+1)`
-/

namespace A140153.P5264730617137953757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A136047 (n + 1) - A140149 (n + 1))

end

end A140153.P5264730617137953757

namespace A140153

/-- `A000537(n+1)+A136047(n+1)-A140149(n+1)` -/
def P5264730617137953757.Spec : Prop :=
  ∀ n, P5264730617137953757.a n = A140153 (n + 1)

end A140153

/-! ## A140153.P15936111585572898366

`A140152(n+1)+A004526(n+1)*A004526(n+1)`
-/

namespace A140153.P15936111585572898366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140152 (n + 1) + A004526 (n + 1) * A004526 (n + 1)

end

end A140153.P15936111585572898366

namespace A140153

/-- `A140152(n+1)+A004526(n+1)*A004526(n+1)` -/
def P15936111585572898366.Spec : Prop :=
  ∀ n, P15936111585572898366.a n = A140153 (n + 1)

end A140153

/-! ## A140153.P12029012074281103315

`A001105(A001057(n+1)²)-A001057(n+1)`
-/

namespace A140153.P12029012074281103315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A001057 (n + 1) ^ 2).toNat - A001057 (n + 1)

end

end A140153.P12029012074281103315

namespace A140153

/-- `A001105(A001057(n+1)²)-A001057(n+1)` -/
def P12029012074281103315.Spec : Prop :=
  ∀ n, P12029012074281103315.a n = A140153 (n + 1)

end A140153

/-!
# A140154: a(1)=1, a(n) = a(n-1) + n^3 if n odd, a(n) = a(n-1) + n^2 if n is even.

The programs for A140154, the canonical program `A140154.P13905650035908148403` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140154 has offset 1).

The definition of A140154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140154.P13905650035908148403

`a(n-1)+(1-(-1)^(n+1))/2*(n+1)^3+(1+(-1)^(n+1))/2*(n+1)²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140154

/-- `a(n-1)+(1-(-1)^(n+1))/2*(n+1)^3+(1+(-1)^(n+1))/2*(n+1)²` -/
def P13905650035908148403.Spec : Prop :=
  ∀ n, P13905650035908148403.a n = (A140154 (n + 1) : ℚ)

end A140154

/-! ## A140154.P12640090165850271404

`∑[(n+1)^(gcd(2, n)+1)]`
-/

namespace A140154.P12640090165850271404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (Nat.gcd 2 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140154.P12640090165850271404

namespace A140154

/-- `∑[(n+1)^(gcd(2, n)+1)]` -/
def P12640090165850271404.Spec : Prop :=
  ∀ n, (P12640090165850271404.a n : ℤ) = A140154 (n + 1)

end A140154

/-! ## A140154.P2215972692576382454

`∑[(n+1)^(3-n%2)]`
-/

namespace A140154.P2215972692576382454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (3 - ((n % 2 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140154.P2215972692576382454

namespace A140154

/-- `∑[(n+1)^(3-n%2)]` -/
def P2215972692576382454.Spec : Prop :=
  ∀ n, P2215972692576382454.a n = (A140154 (n + 1) : ℚ)

end A140154

/-! ## A140154.P15372872655335591897

`∑[(n+1)^(3-and(1, n))]`
-/

namespace A140154.P15372872655335591897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (3 - (Nat.land 1 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140154.P15372872655335591897

namespace A140154

/-- `∑[(n+1)^(3-and(1, n))]` -/
def P15372872655335591897.Spec : Prop :=
  ∀ n, P15372872655335591897.a n = (A140154 (n + 1) : ℚ)

end A140154

/-! ## A140154.P294441155141539022

`∑[(n+1)^xor(3, and(1, n))]`
-/

namespace A140154.P294441155141539022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.xor 3 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140154.P294441155141539022

namespace A140154

/-- `∑[(n+1)^xor(3, and(1, n))]` -/
def P294441155141539022.Spec : Prop :=
  ∀ n, (P294441155141539022.a n : ℤ) = A140154 (n + 1)

end A140154

/-! ## A140154.P10655816906696921089

`∑[(n+1)^∑{d}[n, C(2, #)]]`
-/

namespace A140154.P10655816906696921089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ d ∈ Nat.divisors (f2 n), Nat.choose 2 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140154.P10655816906696921089

namespace A140154

/-- `∑[(n+1)^∑{d}[n, C(2, #)]]` -/
def P10655816906696921089.Spec : Prop :=
  ∀ n, (P10655816906696921089.a n : ℤ) = A140154 (n + 1)

end A140154

/-! ## A140154.P12096710626467397197

`∑[∏{d}[n, (n+1)^C(2, #)]]`
-/

namespace A140154.P12096710626467397197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (n + 1) ^ Nat.choose 2 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140154.P12096710626467397197

namespace A140154

/-- `∑[∏{d}[n, (n+1)^C(2, #)]]` -/
def P12096710626467397197.Spec : Prop :=
  ∀ n, (P12096710626467397197.a n : ℤ) = A140154 (n + 1)

end A140154

/-! ## A140154.P14323643313219397953

`∑[(n+1)^(char[2*n]+2)]`
-/

namespace A140154.P14323643313219397953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ ((if ∃ j, f2 j = n then 1 else 0) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140154.P14323643313219397953

namespace A140154

/-- `∑[(n+1)^(char[2*n]+2)]` -/
def P14323643313219397953.Spec : Prop :=
  ∀ n, (P14323643313219397953.a n : ℤ) = A140154 (n + 1)

end A140154

/-! ## A140154.P10444108233271025267

`A000330(n+1)+A140153(n+1)-A136047(n+1)`
-/

namespace A140154.P10444108233271025267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A140153 (n + 1) - A136047 (n + 1))

end

end A140154.P10444108233271025267

namespace A140154

/-- `A000330(n+1)+A140153(n+1)-A136047(n+1)` -/
def P10444108233271025267.Spec : Prop :=
  ∀ n, P10444108233271025267.a n = A140154 (n + 1)

end A140154

/-! ## A140154.P9981678753276813723

`A135095(n+1)+A140155(n+1)-A135214(n+1)`
-/

namespace A140154.P9981678753276813723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135095 (n + 1) + (A140155 (n + 1) - A135214 (n + 1))

end

end A140154.P9981678753276813723

namespace A140154

/-- `A135095(n+1)+A140155(n+1)-A135214(n+1)` -/
def P9981678753276813723.Spec : Prop :=
  ∀ n, P9981678753276813723.a n = A140154 (n + 1)

end A140154

/-! ## A140154.P13934832194276131726

`A000330(n+1)+A000537(n+1)-A140149(n+1)`
-/

namespace A140154.P13934832194276131726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A000537 (n + 1) - A140149 (n + 1))

end

end A140154.P13934832194276131726

namespace A140154

/-- `A000330(n+1)+A000537(n+1)-A140149(n+1)` -/
def P13934832194276131726.Spec : Prop :=
  ∀ n, P13934832194276131726.a n = A140154 (n + 1)

end A140154

/-! ## A140154.P2044665505755100105

`A001296(n+1)+A001296(n+1)-A140149(n+1)`
-/

namespace A140154.P2044665505755100105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) + (A001296 (n + 1) - A140149 (n + 1))

end

end A140154.P2044665505755100105

namespace A140154

/-- `A001296(n+1)+A001296(n+1)-A140149(n+1)` -/
def P2044665505755100105.Spec : Prop :=
  ∀ n, P2044665505755100105.a n = A140154 (n + 1)

end A140154

/-! ## A140154.P11499825433765502593

`A000537(n+1)+A140113(n+1)-A140145(n+1)`
-/

namespace A140154.P11499825433765502593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A140113 (n + 1) - A140145 (n + 1))

end

end A140154.P11499825433765502593

namespace A140154

/-- `A000537(n+1)+A140113(n+1)-A140145(n+1)` -/
def P11499825433765502593.Spec : Prop :=
  ∀ n, P11499825433765502593.a n = A140154 (n + 1)

end A140154

/-!
# A140155: a(1)=1, a(n)=a(n-1)+n^3 if n odd, a(n)=a(n-1)+ n^4 if n is even.

The programs for A140155, the canonical program `A140155.P4670589055520076883` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140155 has offset 1).

The definition of A140155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140155.P4670589055520076883

`∑[(n+1)^(n%2+3)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140155

/-- `∑[(n+1)^(n%2+3)]` -/
def P4670589055520076883.Spec : Prop :=
  ∀ n, (P4670589055520076883.a n : ℤ) = A140155 (n + 1)

theorem P4670589055520076883.correct : P4670589055520076883.Spec := by
  intro n
  simp only [A140155, Nat.add_sub_cancel]

end A140155

/-! ## A140155.P14084270942122960745

`∑[(n+1)^(5-gcd(2, n))]`
-/

namespace A140155.P14084270942122960745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (5 - (Nat.gcd 2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140155.P14084270942122960745

namespace A140155

/-- `∑[(n+1)^(5-gcd(2, n))]` -/
def P14084270942122960745.Spec : Prop :=
  ∀ n, P14084270942122960745.a n = (A140155 (n + 1) : ℚ)

end A140155

/-! ## A140155.P5438783900260938864

`∑[(n+1)^(and(1, n)+3)]`
-/

namespace A140155.P5438783900260938864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (Nat.land 1 n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140155.P5438783900260938864

namespace A140155

/-- `∑[(n+1)^(and(1, n)+3)]` -/
def P5438783900260938864.Spec : Prop :=
  ∀ n, (P5438783900260938864.a n : ℤ) = A140155 (n + 1)

theorem P5438783900260938864.correct : P5438783900260938864.Spec := by
  intro n
  simp only [A140155, Nat.add_sub_cancel, A140155.P5438783900260938864.f1, A140155.P5438783900260938864.a, A140155.P4670589055520076883.f1, A140155.P4670589055520076883.a, SequenceMachineLib.memo_apply]
  try simp

end A140155

/-! ## A140155.P68592345694571515

`∑[(n+1)^(4-∑[(-1)^n])]`
-/

namespace A140155.P68592345694571515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (4 - ∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140155.P68592345694571515

namespace A140155

/-- `∑[(n+1)^(4-∑[(-1)^n])]` -/
def P68592345694571515.Spec : Prop :=
  ∀ n, P68592345694571515.a n = (A140155 (n + 1) : ℚ)

end A140155

/-! ## A140155.P9343267255942602345

`A000537(n+1)+A000538(n+1)-A140160(n+1)`
-/

namespace A140155.P9343267255942602345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A000538 (n + 1) - A140160 (n + 1))

end

end A140155.P9343267255942602345

namespace A140155

/-- `A000537(n+1)+A000538(n+1)-A140160(n+1)` -/
def P9343267255942602345.Spec : Prop :=
  ∀ n, P9343267255942602345.a n = A140155 (n + 1)

end A140155

/-!
# A140156: a(1)=1, a(n) = a(n-1) + n^3 if n odd, a(n) = a(n-1) + n^5 if n is even.

The programs for A140156, the canonical program `A140156.P9934868189419082312` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140156 has offset 1).

The definition of A140156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140156.P17683260602703291888

`∑[(n+1)^(4-(-1)^n)]`
-/

namespace A140156.P17683260602703291888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (4 - (-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140156.P17683260602703291888

namespace A140156

/-- `∑[(n+1)^(4-(-1)^n)]` -/
def P17683260602703291888.Spec : Prop :=
  ∀ n, P17683260602703291888.a n = (A140156 (n + 1) : ℚ)

end A140156

/-! ## A140156.P9934868189419082312

`A140143(n+1)+A140152(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140156

/-- `A140143(n+1)+A140152(n+1)-(n+1)` -/
def P9934868189419082312.Spec : Prop :=
  ∀ n, P9934868189419082312.a n = A140156 (n + 1)

theorem P9934868189419082312.correct : P9934868189419082312.Spec := by
  intro n
  simp only [A140156, Nat.add_sub_cancel]

end A140156

/-! ## A140156.P12753507792155922073

`A140147(n+1)+A140152(n+1)-A140144(n+1)`
-/

namespace A140156.P12753507792155922073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140147 (n + 1) + (A140152 (n + 1) - A140144 (n + 1))

end

end A140156.P12753507792155922073

namespace A140156

/-- `A140147(n+1)+A140152(n+1)-A140144(n+1)` -/
def P12753507792155922073.Spec : Prop :=
  ∀ n, P12753507792155922073.a n = A140156 (n + 1)

end A140156

/-! ## A140156.P14765818785766599543

`A140151(n+1)+A140152(n+1)-A140148(n+1)`
-/

namespace A140156.P14765818785766599543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140151 (n + 1) + (A140152 (n + 1) - A140148 (n + 1))

end

end A140156.P14765818785766599543

namespace A140156

/-- `A140151(n+1)+A140152(n+1)-A140148(n+1)` -/
def P14765818785766599543.Spec : Prop :=
  ∀ n, P14765818785766599543.a n = A140156 (n + 1)

end A140156

/-! ## A140156.P9164953467681332332

`A140152(n+1)+A140161(n+1)-A140157(n+1)`
-/

namespace A140156.P9164953467681332332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140152 (n + 1) + (A140161 (n + 1) - A140157 (n + 1))

end

end A140156.P9164953467681332332

namespace A140156

/-- `A140152(n+1)+A140161(n+1)-A140157(n+1)` -/
def P9164953467681332332.Spec : Prop :=
  ∀ n, P9164953467681332332.a n = A140156 (n + 1)

end A140156

/-! ## A140156.P18110285839909384681

`A000537(n+1)+A000539(n+1)-A135099(n+1)`
-/

namespace A140156.P18110285839909384681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A000539 (n + 1) - A135099 (n + 1))

end

end A140156.P18110285839909384681

namespace A140156

/-- `A000537(n+1)+A000539(n+1)-A135099(n+1)` -/
def P18110285839909384681.Spec : Prop :=
  ∀ n, P18110285839909384681.a n = A140156 (n + 1)

end A140156

/-!
# A140157: a(1)=1, a(n) = a(n-1) + n^4 if n odd, a(n) = a(n-1) + n^0 if n is even.

The programs for A140157, the canonical program `A140157.P15880976712911008048` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140157 has offset 1).

The definition of A140157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140157.P15880976712911008048

`∑[C(or(1, n), n)²²]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140157

/-- `∑[C(or(1, n), n)²²]` -/
def P15880976712911008048.Spec : Prop :=
  ∀ n, (P15880976712911008048.a n : ℤ) = A140157 (n + 1)

theorem P15880976712911008048.correct : P15880976712911008048.Spec := by
  intro n
  simp only [A140157, Nat.add_sub_cancel]

end A140157

/-! ## A140157.P6025385807022871216

`∑[gcd((n+1)^4, n%2)]`
-/

namespace A140157.P6025385807022871216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ 4) (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140157.P6025385807022871216

namespace A140157

/-- `∑[gcd((n+1)^4, n%2)]` -/
def P6025385807022871216.Spec : Prop :=
  ∀ n, (P6025385807022871216.a n : ℤ) = A140157 (n + 1)

end A140157

/-! ## A140157.P2937814582062198405

`∑[gcd(n+1, and(1, n))²²]`
-/

namespace A140157.P2937814582062198405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (Nat.land 1 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140157.P2937814582062198405

namespace A140157

/-- `∑[gcd(n+1, and(1, n))²²]` -/
def P2937814582062198405.Spec : Prop :=
  ∀ n, (P2937814582062198405.a n : ℤ) = A140157 (n + 1)

end A140157

/-! ## A140157.P11577770348645518961

`∑[(n*char[2*n]+1)²²]`
-/

namespace A140157.P11577770348645518961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n * (if ∃ j, f2 j = n then 1 else 0) + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140157.P11577770348645518961

namespace A140157

/-- `∑[(n*char[2*n]+1)²²]` -/
def P11577770348645518961.Spec : Prop :=
  ∀ n, (P11577770348645518961.a n : ℤ) = A140157 (n + 1)

end A140157

/-! ## A140157.P11755911813392010262

`∑[(A022998(n)-n+1)²²]^A052409(A175067(n+1))`
-/

namespace A140157.P11755911813392010262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A022998 n - (n : ℤ) + 1) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A052409 (A175067 (n + 1)).toNat : ℤ)

end

end A140157.P11755911813392010262

namespace A140157

/-- `∑[(A022998(n)-n+1)²²]^A052409(A175067(n+1))` -/
def P11755911813392010262.Spec : Prop :=
  ∀ n, P11755911813392010262.a n = (A140157 (n + 1) : ℚ)

end A140157

/-! ## A140157.P11859165841093760081

`∑[(A022998(n)+1-n)²²]^A052409(n²+1)`
-/

namespace A140157.P11859165841093760081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A022998 n + (1 - (n : ℤ))) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ)

end

end A140157.P11859165841093760081

namespace A140157

/-- `∑[(A022998(n)+1-n)²²]^A052409(n²+1)` -/
def P11859165841093760081.Spec : Prop :=
  ∀ n, P11859165841093760081.a n = (A140157 (n + 1) : ℚ)

end A140157

/-!
# A140158: a(1)=1, a(n) = a(n-1) + n^4 if n odd, a(n) = a(n-1) + n^1 if n is even.

The programs for A140158, the canonical program `A140158.P8893262957230173320` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140158 has offset 1).

The definition of A140158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140158.P5448588997075668976

`∑[(n+1)^gcd(2, n)²]`
-/

namespace A140158.P5448588997075668976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 2 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140158.P5448588997075668976

namespace A140158

/-- `∑[(n+1)^gcd(2, n)²]` -/
def P5448588997075668976.Spec : Prop :=
  ∀ n, (P5448588997075668976.a n : ℤ) = A140158 (n + 1)

end A140158

/-! ## A140158.P15078032853383276773

`∑[(n+1)^gcd(4, n^3)]`
-/

namespace A140158.P15078032853383276773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 4 (n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140158.P15078032853383276773

namespace A140158

/-- `∑[(n+1)^gcd(4, n^3)]` -/
def P15078032853383276773.Spec : Prop :=
  ∀ n, (P15078032853383276773.a n : ℤ) = A140158 (n + 1)

end A140158

/-! ## A140158.P15417187679191523129

`∑[(n+1)^or(n, -2)²]`
-/

namespace A140158.P15417187679191523129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.lor (n : ℤ) (-2) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140158.P15417187679191523129

namespace A140158

/-- `∑[(n+1)^or(n, -2)²]` -/
def P15417187679191523129.Spec : Prop :=
  ∀ n, P15417187679191523129.a n = (A140158 (n + 1) : ℚ)

end A140158

/-! ## A140158.P13016355609423596991

`∑[(n+1)^(2-n%2)²]`
-/

namespace A140158.P13016355609423596991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((2 - ((n % 2 : ℕ) : ℤ)) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140158.P13016355609423596991

namespace A140158

/-- `∑[(n+1)^(2-n%2)²]` -/
def P13016355609423596991.Spec : Prop :=
  ∀ n, P13016355609423596991.a n = (A140158 (n + 1) : ℚ)

end A140158

/-! ## A140158.P9965574301913202339

`∑[(n+1)^(and(1, n)-2)²]`
-/

namespace A140158.P9965574301913202339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (((Nat.land 1 n : ℤ) - 2) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140158.P9965574301913202339

namespace A140158

/-- `∑[(n+1)^(and(1, n)-2)²]` -/
def P9965574301913202339.Spec : Prop :=
  ∀ n, P9965574301913202339.a n = (A140158 (n + 1) : ℚ)

end A140158

/-! ## A140158.P7679235649670810963

`∑[((n+1)^2^(-1)^n)²]`
-/

namespace A140158.P7679235649670810963
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) ^ ((2 : ℚ) ^ ((-1) ^ n : ℤ) : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140158.P7679235649670810963

namespace A140158

/-- `∑[((n+1)^2^(-1)^n)²]` -/
def P7679235649670810963.Spec : Prop :=
  ∀ n, P7679235649670810963.a n = (A140158 (n + 1) : ℝ)

end A140158

/-! ## A140158.P8893262957230173320

`A140157(n+1)+(n-A004526(n))²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140158

/-- `A140157(n+1)+(n-A004526(n))²` -/
def P8893262957230173320.Spec : Prop :=
  ∀ n, P8893262957230173320.a n = A140158 (n + 1)

theorem P8893262957230173320.correct : P8893262957230173320.Spec := by
  intro n
  simp only [A140158, Nat.add_sub_cancel]

end A140158

/-! ## A140158.P4886231648758595282

`A136047(n+1)+A140159(n+1)-A000330(n+1)`
-/

namespace A140158.P4886231648758595282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140159 (n + 1) - A000330 (n + 1))

end

end A140158.P4886231648758595282

namespace A140158

/-- `A136047(n+1)+A140159(n+1)-A000330(n+1)` -/
def P4886231648758595282.Spec : Prop :=
  ∀ n, P4886231648758595282.a n = A140158 (n + 1)

theorem P4886231648758595282.correct : P4886231648758595282.Spec := by
  intro n
  simp only [A140158, Nat.add_sub_cancel, A140158.P4886231648758595282.a, A140158.P8893262957230173320.a, A000330, A000330.P6574240937923917945.a, A004526, A004526.P10084182425416171735.a, A136047, A136047.P11544268220442174438.a, A140157, A140157.P15880976712911008048.f1, A140157.P15880976712911008048.a, A140159, A140159.P985911684354668683.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A140158

/-! ## A140158.P4512373407755514191

`A140157(n+1)+A004526(n+1)²`
-/

namespace A140158.P4512373407755514191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140157 (n + 1) + A004526 (n + 1) ^ 2

end

end A140158.P4512373407755514191

namespace A140158

/-- `A140157(n+1)+A004526(n+1)²` -/
def P4512373407755514191.Spec : Prop :=
  ∀ n, P4512373407755514191.a n = A140158 (n + 1)

end A140158

/-! ## A140158.P8370849456119405227

`A000217(n+1)+A000538(n+1)-A140146(n+1)`
-/

namespace A140158.P8370849456119405227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000538 (n + 1) - A140146 (n + 1))

end

end A140158.P8370849456119405227

namespace A140158

/-- `A000217(n+1)+A000538(n+1)-A140146(n+1)` -/
def P8370849456119405227.Spec : Prop :=
  ∀ n, P8370849456119405227.a n = A140158 (n + 1)

end A140158

/-! ## A140158.P10443931808370004142

`A000538(n+1)+A135276(n+1)-A140142(n+1)`
-/

namespace A140158.P10443931808370004142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + (A135276 (n + 1) - A140142 (n + 1))

end

end A140158.P10443931808370004142

namespace A140158

/-- `A000538(n+1)+A135276(n+1)-A140142(n+1)` -/
def P10443931808370004142.Spec : Prop :=
  ∀ n, P10443931808370004142.a n = A140158 (n + 1)

end A140158

/-! ## A140158.P13748710462383270038

`A000538(n+1)+A136047(n+1)-A140150(n+1)`
-/

namespace A140158.P13748710462383270038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + (A136047 (n + 1) - A140150 (n + 1))

end

end A140158.P13748710462383270038

namespace A140158

/-- `A000538(n+1)+A136047(n+1)-A140150(n+1)` -/
def P13748710462383270038.Spec : Prop :=
  ∀ n, P13748710462383270038.a n = A140158 (n + 1)

end A140158

/-!
# A140159: a(1)=1, a(n) = a(n-1) + n^4 if n odd, a(n) = a(n-1) + n^2 if n is even.

The programs for A140159, the canonical program `A140159.P985911684354668683` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140159 has offset 1).

The definition of A140159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140159.P10217278224388945200

`∑[((n+1)^gcd(2, n))²]`
-/

namespace A140159.P10217278224388945200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.gcd 2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140159.P10217278224388945200

namespace A140159

/-- `∑[((n+1)^gcd(2, n))²]` -/
def P10217278224388945200.Spec : Prop :=
  ∀ n, (P10217278224388945200.a n : ℤ) = A140159 (n + 1)

end A140159

/-! ## A140159.P13681530302057108275

`∑[(n+1)^gcd(4, 2*n)]`
-/

namespace A140159.P13681530302057108275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 4 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140159.P13681530302057108275

namespace A140159

/-- `∑[(n+1)^gcd(4, 2*n)]` -/
def P13681530302057108275.Spec : Prop :=
  ∀ n, (P13681530302057108275.a n : ℤ) = A140159 (n + 1)

end A140159

/-! ## A140159.P9824272565786224271

`∑[(n+1)^((-1)^n+3)]`
-/

namespace A140159.P9824272565786224271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((-1) ^ n + 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140159.P9824272565786224271

namespace A140159

/-- `∑[(n+1)^((-1)^n+3)]` -/
def P9824272565786224271.Spec : Prop :=
  ∀ n, P9824272565786224271.a n = (A140159 (n + 1) : ℚ)

end A140159

/-! ## A140159.P13662612682464755109

`a(n-1)+(n+1)^((-1)^n+3)` with `a(0)=1`
-/

namespace A140159.P13662612682464755109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) ^ ((-1) ^ n + 3 : ℤ)

end

end A140159.P13662612682464755109

namespace A140159

/-- `a(n-1)+(n+1)^((-1)^n+3)` -/
def P13662612682464755109.Spec : Prop :=
  ∀ n, P13662612682464755109.a n = (A140159 (n + 1) : ℚ)

end A140159

/-! ## A140159.P985911684354668683

`A000330(n+1)+A140158(n+1)-A136047(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A140159

/-- `A000330(n+1)+A140158(n+1)-A136047(n+1)` -/
def P985911684354668683.Spec : Prop :=
  ∀ n, P985911684354668683.a n = A140159 (n + 1)

theorem P985911684354668683.correct : P985911684354668683.Spec := by
  intro n
  simp only [A140159, Nat.add_sub_cancel]

end A140159

/-! ## A140159.P10754915555834019975

`A000330(n+1)+A000538(n+1)-A140150(n+1)`
-/

namespace A140159.P10754915555834019975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A000538 (n + 1) - A140150 (n + 1))

end

end A140159.P10754915555834019975

namespace A140159

/-- `A000330(n+1)+A000538(n+1)-A140150(n+1)` -/
def P10754915555834019975.Spec : Prop :=
  ∀ n, P10754915555834019975.a n = A140159 (n + 1)

end A140159

/-!
# A140160: a(1)=1, a(n) = a(n-1) + n^4 if n odd, a(n) = a(n-1) + n^3 if n is even.

The programs for A140160, the canonical program `A140160.P16315244074411020373` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140160 has offset 1).

The definition of A140160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140160.P16315244074411020373

`∑[(n+1)^(gcd(2, n)+2)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140160

/-- `∑[(n+1)^(gcd(2, n)+2)]` -/
def P16315244074411020373.Spec : Prop :=
  ∀ n, (P16315244074411020373.a n : ℤ) = A140160 (n + 1)

theorem P16315244074411020373.correct : P16315244074411020373.Spec := by
  intro n
  simp only [A140160, Nat.add_sub_cancel]

end A140160

/-! ## A140160.P5715207331873467661

`∑[(n+1)^(4-n%2)]`
-/

namespace A140160.P5715207331873467661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (4 - ((n % 2 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140160.P5715207331873467661

namespace A140160

/-- `∑[(n+1)^(4-n%2)]` -/
def P5715207331873467661.Spec : Prop :=
  ∀ n, P5715207331873467661.a n = (A140160 (n + 1) : ℚ)

end A140160

/-! ## A140160.P2657340726031644456

`∑[(n+1)^(4-and(1, n))]`
-/

namespace A140160.P2657340726031644456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (4 - (Nat.land 1 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140160.P2657340726031644456

namespace A140160

/-- `∑[(n+1)^(4-and(1, n))]` -/
def P2657340726031644456.Spec : Prop :=
  ∀ n, P2657340726031644456.a n = (A140160 (n + 1) : ℚ)

end A140160

/-! ## A140160.P13298249937504798441

`∑[(n+1)^(char[2*n]+3)]`
-/

namespace A140160.P13298249937504798441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ ((if ∃ j, f2 j = n then 1 else 0) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140160.P13298249937504798441

namespace A140160

/-- `∑[(n+1)^(char[2*n]+3)]` -/
def P13298249937504798441.Spec : Prop :=
  ∀ n, (P13298249937504798441.a n : ℤ) = A140160 (n + 1)

end A140160

/-! ## A140160.P12807662351580612843

`A000537(n+1)+A000538(n+1)-A140155(n+1)`
-/

namespace A140160.P12807662351580612843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A000538 (n + 1) - A140155 (n + 1))

end

end A140160.P12807662351580612843

namespace A140160

/-- `A000537(n+1)+A000538(n+1)-A140155(n+1)` -/
def P12807662351580612843.Spec : Prop :=
  ∀ n, P12807662351580612843.a n = A140160 (n + 1)

end A140160

/-! ## A140160.P5432663890855542788

`A000538(n+1)+A140149(n+1)-A140150(n+1)`
-/

namespace A140160.P5432663890855542788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + (A140149 (n + 1) - A140150 (n + 1))

end

end A140160.P5432663890855542788

namespace A140160

/-- `A000538(n+1)+A140149(n+1)-A140150(n+1)` -/
def P5432663890855542788.Spec : Prop :=
  ∀ n, P5432663890855542788.a n = A140160 (n + 1)

end A140160

/-!
# A140161: a(1)=1, a(n) = a(n-1) + n^4 if n odd, a(n) = a(n-1) + n^5 if n is even.

The programs for A140161, the canonical program `A140161.P2837166639429545870` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140161 has offset 1).

The definition of A140161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140161.P2837166639429545870

`∑[(n+1)^(n%2+4)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140161

/-- `∑[(n+1)^(n%2+4)]` -/
def P2837166639429545870.Spec : Prop :=
  ∀ n, (P2837166639429545870.a n : ℤ) = A140161 (n + 1)

theorem P2837166639429545870.correct : P2837166639429545870.Spec := by
  intro n
  simp only [A140161, Nat.add_sub_cancel]

end A140161

/-! ## A140161.P16651472028686643902

`∑[(n+1)^(6-gcd(2, n))]`
-/

namespace A140161.P16651472028686643902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (6 - (Nat.gcd 2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140161.P16651472028686643902

namespace A140161

/-- `∑[(n+1)^(6-gcd(2, n))]` -/
def P16651472028686643902.Spec : Prop :=
  ∀ n, P16651472028686643902.a n = (A140161 (n + 1) : ℚ)

end A140161

/-! ## A140161.P15090532337772633754

`∑[(n+1)^(and(1, n)+4)]`
-/

namespace A140161.P15090532337772633754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (Nat.land 1 n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140161.P15090532337772633754

namespace A140161

/-- `∑[(n+1)^(and(1, n)+4)]` -/
def P15090532337772633754.Spec : Prop :=
  ∀ n, (P15090532337772633754.a n : ℤ) = A140161 (n + 1)

theorem P15090532337772633754.correct : P15090532337772633754.Spec := by
  intro n
  simp only [A140161, Nat.add_sub_cancel, A140161.P15090532337772633754.f1, A140161.P15090532337772633754.a, A140161.P2837166639429545870.f1, A140161.P2837166639429545870.a, SequenceMachineLib.memo_apply]
  try simp

end A140161

/-! ## A140161.P5024215814340680388

`∑[(n+1)^(5-∑[(-1)^n])]`
-/

namespace A140161.P5024215814340680388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (5 - ∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140161.P5024215814340680388

namespace A140161

/-- `∑[(n+1)^(5-∑[(-1)^n])]` -/
def P5024215814340680388.Spec : Prop :=
  ∀ n, P5024215814340680388.a n = (A140161 (n + 1) : ℚ)

end A140161

/-! ## A140161.P15757016604794773429

`A000538(n+1)+A000539(n+1)-A135214(n+1)`
-/

namespace A140161.P15757016604794773429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + (A000539 (n + 1) - A135214 (n + 1))

end

end A140161.P15757016604794773429

namespace A140161

/-- `A000538(n+1)+A000539(n+1)-A135214(n+1)` -/
def P15757016604794773429.Spec : Prop :=
  ∀ n, P15757016604794773429.a n = A140161 (n + 1)

end A140161

/-!
# A140162: a(1)=1, a(n) = a(n-1) + n^5 if n odd, a(n) = a(n-1) + n^0 if n is even.

The programs for A140162, the canonical program `A140162.P6678336647341969321` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140162 has offset 1).

The definition of A140162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140162.P6678336647341969321

`∑[gcd((n+1)^5, n%2)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140162

/-- `∑[gcd((n+1)^5, n%2)]` -/
def P6678336647341969321.Spec : Prop :=
  ∀ n, (P6678336647341969321.a n : ℤ) = A140162 (n + 1)

theorem P6678336647341969321.correct : P6678336647341969321.Spec := by
  intro n
  simp only [A140162, Nat.add_sub_cancel]

end A140162

/-! ## A140162.P3900004947999070600

`∑[(n+1)^∑[5*(-1)^n]]`
-/

namespace A140162.P3900004947999070600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140162.P3900004947999070600

namespace A140162

/-- `∑[(n+1)^∑[5*(-1)^n]]` -/
def P3900004947999070600.Spec : Prop :=
  ∀ n, P3900004947999070600.a n = (A140162 (n + 1) : ℚ)

end A140162

/-! ## A140162.P15548807210875086471

`abs(∑[C(or(1, n), n)^5]-1)+1`
-/

namespace A140162.P15548807210875086471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1| + 1

end

end A140162.P15548807210875086471

namespace A140162

/-- `abs(∑[C(or(1, n), n)^5]-1)+1` -/
def P15548807210875086471.Spec : Prop :=
  ∀ n, P15548807210875086471.a n = A140162 (n + 1)

end A140162

/-! ## A140162.P17380877914162709184

`∑[floor((n+1)^(5/a(n-1)))]-1` with `a(0)=2, a(1)=1`
-/

namespace A140162.P17380877914162709184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  ⌊(n + 1 : ℝ) ^ (5 / (f1 (n - 1) : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140162.P17380877914162709184

namespace A140162

/-- `∑[floor((n+1)^(5/a(n-1)))]-1` -/
def P17380877914162709184.Spec : Prop :=
  ∀ n, P17380877914162709184.a n = A140162 (n + 1)

end A140162

/-! ## A140162.P10565684064509991418

`A135095(n+1)+A135370(n+2)-A136047(n+2)`
-/

namespace A140162.P10565684064509991418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135095 (n + 1) + (A135370 (n + 2) - A136047 (n + 2))

end

end A140162.P10565684064509991418

namespace A140162

/-- `A135095(n+1)+A135370(n+2)-A136047(n+2)` -/
def P10565684064509991418.Spec : Prop :=
  ∀ n, P10565684064509991418.a n = A140162 (n + 1)

end A140162

/-!
# A140163: a(1)=1, a(n) = a(n-1) + n^5 if n odd, a(n) = a(n-1) + n if n is even.

The programs for A140163, the canonical program `A140163.P3928435907292493701` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140163 has offset 1).

The definition of A140163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140163.P820410072551059472

`∑[(n+1)^gcd(5, n%2)]`
-/

namespace A140163.P820410072551059472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 5 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140163.P820410072551059472

namespace A140163

/-- `∑[(n+1)^gcd(5, n%2)]` -/
def P820410072551059472.Spec : Prop :=
  ∀ n, (P820410072551059472.a n : ℤ) = A140163 (n + 1)

end A140163

/-! ## A140163.P3337187626226265787

`∑[(n+1)^5^∑[(-1)^n]]`
-/

namespace A140163.P3337187626226265787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140163.P3337187626226265787

namespace A140163

/-- `∑[(n+1)^5^∑[(-1)^n]]` -/
def P3337187626226265787.Spec : Prop :=
  ∀ n, P3337187626226265787.a n = (A140163 (n + 1) : ℝ)

end A140163

/-! ## A140163.P3928435907292493701

`A135095(n+1)+A136047(n+1)-A000330(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140163

/-- `A135095(n+1)+A136047(n+1)-A000330(n+1)` -/
def P3928435907292493701.Spec : Prop :=
  ∀ n, P3928435907292493701.a n = A140163 (n + 1)

theorem P3928435907292493701.correct : P3928435907292493701.Spec := by
  intro n
  simp only [A140163, Nat.add_sub_cancel]

end A140163

/-! ## A140163.P9236651432580874632

`A000217(n+1)+A000539(n+1)-A140147(n+1)`
-/

namespace A140163.P9236651432580874632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000539 (n + 1) - A140147 (n + 1))

end

end A140163.P9236651432580874632

namespace A140163

/-- `A000217(n+1)+A000539(n+1)-A140147(n+1)` -/
def P9236651432580874632.Spec : Prop :=
  ∀ n, P9236651432580874632.a n = A140163 (n + 1)

end A140163

/-! ## A140163.P17613885143364180645

`A000539(n+1)+A135276(n+1)-A140143(n+1)`
-/

namespace A140163.P17613885143364180645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (n + 1) + (A135276 (n + 1) - A140143 (n + 1))

end

end A140163.P17613885143364180645

namespace A140163

/-- `A000539(n+1)+A135276(n+1)-A140143(n+1)` -/
def P17613885143364180645.Spec : Prop :=
  ∀ n, P17613885143364180645.a n = A140163 (n + 1)

end A140163

/-! ## A140163.P14494867436360861545

`A000539(n+1)+A136047(n+1)-A140151(n+1)`
-/

namespace A140163.P14494867436360861545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (n + 1) + (A136047 (n + 1) - A140151 (n + 1))

end

end A140163.P14494867436360861545

namespace A140163

/-- `A000539(n+1)+A136047(n+1)-A140151(n+1)` -/
def P14494867436360861545.Spec : Prop :=
  ∀ n, P14494867436360861545.a n = A140163 (n + 1)

end A140163

/-! ## A140163.P10530600736586061358

`A135095(n+1)+A135276(n+1)-A135301(n+1)`
-/

namespace A140163.P10530600736586061358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135095 (n + 1) + (A135276 (n + 1) - A135301 (n + 1))

end

end A140163.P10530600736586061358

namespace A140163

/-- `A135095(n+1)+A135276(n+1)-A135301(n+1)` -/
def P10530600736586061358.Spec : Prop :=
  ∀ n, P10530600736586061358.a n = A140163 (n + 1)

end A140163

/-! ## A140163.P13823655501738262679

`A135099(n+1)+A135276(n+1)-A135332(n+1)`
-/

namespace A140163.P13823655501738262679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135099 (n + 1) + (A135276 (n + 1) - A135332 (n + 1))

end

end A140163.P13823655501738262679

namespace A140163

/-- `A135099(n+1)+A135276(n+1)-A135332(n+1)` -/
def P13823655501738262679.Spec : Prop :=
  ∀ n, P13823655501738262679.a n = A140163 (n + 1)

end A140163

/-!
# A140164: Binomial transform of [1, 1, 1, 1, -1, -1, 5, -11, 19, -29, 41, ...].

The programs for A140164, the canonical program `A140164.P6807154561923301251` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140164 has offset 1).

The definition of A140164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140164.P6807154561923301251

`6+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140164

/-- `6+a(n-1)` -/
def P6807154561923301251.Spec : Prop :=
  ∀ n, (P6807154561923301251.a n : ℤ) = A140164 (n + 1)

theorem P6807154561923301251.correct : P6807154561923301251.Spec := by
  intro n
  simp only [A140164, Nat.add_sub_cancel]

end A140164

/-!
# A140165: a(n) = -a(n-1) + 3*a(n-2), starting a(1)=1, a(2)=2.

The programs for A140165, the canonical program `A140165.P15759146862510106229` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140165 has offset 1).

The definition of A140165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)+3*a(n-2)` (program `A140165.P15759146862510106229`, by `A140165.P15759146862510106229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140165.P15759146862510106229

`-a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140165

/-- `-a(n-1)+3*a(n-2)` -/
def P15759146862510106229.Spec : Prop :=
  ∀ n, P15759146862510106229.a n = A140165 (n + 1)

theorem P15759146862510106229.correct : P15759146862510106229.Spec := by
  intro n
  simp only [A140165, Nat.add_sub_cancel]

end A140165

/-! ## A140165.P9244394233831637620

`ogf((1+3x)/(1+x-3x^2))`
-/

namespace A140165.P9244394233831637620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 1, -3] n

end

end A140165.P9244394233831637620

namespace A140165

/-- `ogf((1+3x)/(1+x-3x^2))` -/
def P9244394233831637620.Spec : Prop :=
  ∀ n, P9244394233831637620.a n = A140165 (n + 1)

end A140165

/-! ## A140165.P8816908195448578993

`3*a(n-2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A140165.P8816908195448578993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 2) - a (n - 1)

end

end A140165.P8816908195448578993

namespace A140165

/-- `3*a(n-2)-a(n-1)` -/
def P8816908195448578993.Spec : Prop :=
  ∀ n, P8816908195448578993.a n = A140165 (n + 1)

end A140165

/-! ## A140165.P10462529125738992898

`a(n-2)/(1-2/3)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A140165.P10462529125738992898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3) - a (n - 1)

end

end A140165.P10462529125738992898

namespace A140165

/-- `a(n-2)/(1-2/3)-a(n-1)` -/
def P10462529125738992898.Spec : Prop :=
  ∀ n, P10462529125738992898.a n = (A140165 (n + 1) : ℚ)

end A140165

/-! ## A140165.P4999555569690360250

`a(n-2)+a(n-2)+a(n-2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A140165.P4999555569690360250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) - a (n - 1)))

end

end A140165.P4999555569690360250

namespace A140165

/-- `a(n-2)+a(n-2)+a(n-2)-a(n-1)` -/
def P4999555569690360250.Spec : Prop :=
  ∀ n, P4999555569690360250.a n = A140165 (n + 1)

end A140165

/-! ## A140165.P7268185001935106391

`a(n-2)-(a(n-1)-a(n-2)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A140165.P7268185001935106391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 2) - a (n - 2))

end

end A140165.P7268185001935106391

namespace A140165

/-- `a(n-2)-(a(n-1)-a(n-2)-a(n-2))` -/
def P7268185001935106391.Spec : Prop :=
  ∀ n, P7268185001935106391.a n = A140165 (n + 1)

end A140165

/-! ## A140165.P16730200678681539105

`∑[A182228(n)]+1`
-/

namespace A140165.P16730200678681539105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A140165.P16730200678681539105

namespace A140165

/-- `∑[A182228(n)]+1` -/
def P16730200678681539105.Spec : Prop :=
  ∀ n, P16730200678681539105.a n = A140165 (n + 1)

end A140165

/-! ## A140165.P11598566022328224967

`a(n-1)-A140167(n)` with `a(0)=1`
-/

namespace A140165.P11598566022328224967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A140167 n

end

end A140165.P11598566022328224967

namespace A140165

/-- `a(n-1)-A140167(n)` -/
def P11598566022328224967.Spec : Prop :=
  ∀ n, P11598566022328224967.a n = A140165 (n + 1)

end A140165

/-! ## A140165.P5330515190993779522

`A140167(n+1)+1-∑[A140167(n+1)]`
-/

namespace A140165.P5330515190993779522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140167 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140165.P5330515190993779522

namespace A140165

/-- `A140167(n+1)+1-∑[A140167(n+1)]` -/
def P5330515190993779522.Spec : Prop :=
  ∀ n, P5330515190993779522.a n = A140165 (n + 1)

end A140165

/-! ## A140165.P1874488803519943955

`2*A182228(n+1)-A140167(n+2)`
-/

namespace A140165.P1874488803519943955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182228 (n + 1) - A140167 (n + 2)

end

end A140165.P1874488803519943955

namespace A140165

/-- `2*A182228(n+1)-A140167(n+2)` -/
def P1874488803519943955.Spec : Prop :=
  ∀ n, P1874488803519943955.a n = A140165 (n + 1)

end A140165

/-! ## A140165.P3134665534564926510

`A182228(n+1)-(A140167(n+1)+A140167(n+2))`
-/

namespace A140165.P3134665534564926510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 (n + 1) - (A140167 (n + 1) + A140167 (n + 2))

end

end A140165.P3134665534564926510

namespace A140165

/-- `A182228(n+1)-(A140167(n+1)+A140167(n+2))` -/
def P3134665534564926510.Spec : Prop :=
  ∀ n, P3134665534564926510.a n = A140165 (n + 1)

end A140165

/-!
# A140166: Triangle read by rows, iterates of X * [1,0,0,0,...]; where X = an infinite bidiagonal matrix with [1,-2,1,-2,1,...] in the main diagonal, [1,1,1,...] in the subdiagonal and the rest zeros.

The programs for A140166, there is no canonical definition to state claims against.
-/

/-! ## A140166.P14933978884837138019

`A015109(n)%A262095(A299288(n+1))`
-/

namespace A140166.P14933978884837138019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015109 n) (A262095 (A299288 (n + 1)).toNat)

end

end A140166.P14933978884837138019

/-!
# A140167: a(n) = (-1)*a(n-1) + 3*a(n-2) with a(1)=-1 and a(2)=1.

The programs for A140167, the canonical program `A140167.P5487309893553693771` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140167 has offset 1).

The definition of A140167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-1*a(n-1)+3*a(n-2)` (program `A140167.P5487309893553693771`, by `A140167.P5487309893553693771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140167.P5487309893553693771

`-1*a(n-1)+3*a(n-2)` with `a(0)=-1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140167

/-- `-1*a(n-1)+3*a(n-2)` -/
def P5487309893553693771.Spec : Prop :=
  ∀ n, P5487309893553693771.a n = A140167 (n + 1)

theorem P5487309893553693771.correct : P5487309893553693771.Spec := by
  intro n
  simp only [A140167, Nat.add_sub_cancel]

end A140167

/-! ## A140167.P10646731209052173332

`(-1)^(n+1)*A006130(n)`
-/

namespace A140167.P10646731209052173332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A006130 n

end

end A140167.P10646731209052173332

namespace A140167

/-- `(-1)^(n+1)*A006130(n)` -/
def P10646731209052173332.Spec : Prop :=
  ∀ n, P10646731209052173332.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P14655893504171033348

`ogf(-1/(1+x-3x^2))`
-/

namespace A140167.P14655893504171033348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1] [1, 1, -3] n

end

end A140167.P14655893504171033348

namespace A140167

/-- `ogf(-1/(1+x-3x^2))` -/
def P14655893504171033348.Spec : Prop :=
  ∀ n, P14655893504171033348.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P2757133063435425270

`3*a(n-2)-a(n-1)` with `a(0)=-1, a(1)=1`
-/

namespace A140167.P2757133063435425270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  3 * a (n - 2) - a (n - 1)

end

end A140167.P2757133063435425270

namespace A140167

/-- `3*a(n-2)-a(n-1)` -/
def P2757133063435425270.Spec : Prop :=
  ∀ n, P2757133063435425270.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P11239146528306086970

`a(n-2)+a(n-2)+a(n-2)-a(n-1)` with `a(0)=-1, a(1)=1`
-/

namespace A140167.P11239146528306086970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) - a (n - 1)))

end

end A140167.P11239146528306086970

namespace A140167

/-- `a(n-2)+a(n-2)+a(n-2)-a(n-1)` -/
def P11239146528306086970.Spec : Prop :=
  ∀ n, P11239146528306086970.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P17323849843618759373

`a(n-2)-(a(n-1)-a(n-2)-a(n-2))` with `a(0)=-1, a(1)=1`
-/

namespace A140167.P17323849843618759373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 2) - a (n - 2))

end

end A140167.P17323849843618759373

namespace A140167

/-- `a(n-2)-(a(n-1)-a(n-2)-a(n-2))` -/
def P17323849843618759373.Spec : Prop :=
  ∀ n, P17323849843618759373.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P6391748524205912938

`-A182228(n+1)`
-/

namespace A140167.P6391748524205912938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A182228 (n + 1)

end

end A140167.P6391748524205912938

namespace A140167

/-- `-A182228(n+1)` -/
def P6391748524205912938.Spec : Prop :=
  ∀ n, P6391748524205912938.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P13487239479028710662

`∑[-Δ[A182228(n)]]`
-/

namespace A140167.P13487239479028710662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140167.P13487239479028710662

namespace A140167

/-- `∑[-Δ[A182228(n)]]` -/
def P13487239479028710662.Spec : Prop :=
  ∀ n, P13487239479028710662.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P999965532539512352

`Δ[-A140165(n+1)]`
-/

namespace A140167.P999965532539512352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A140165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140167.P999965532539512352

namespace A140167

/-- `Δ[-A140165(n+1)]` -/
def P999965532539512352.Spec : Prop :=
  ∀ n, P999965532539512352.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P9859546072967258881

`∑[A152167(n+1)/3]`
-/

namespace A140167.P9859546072967258881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152167 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140167.P9859546072967258881

namespace A140167

/-- `∑[A152167(n+1)/3]` -/
def P9859546072967258881.Spec : Prop :=
  ∀ n, P9859546072967258881.a n = (A140167 (n + 1) : ℚ)

end A140167

/-! ## A140167.P2934104714030317169

`∑[A182228(n)-A182228(n+1)]`
-/

namespace A140167.P2934104714030317169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 n - A182228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140167.P2934104714030317169

namespace A140167

/-- `∑[A182228(n)-A182228(n+1)]` -/
def P2934104714030317169.Spec : Prop :=
  ∀ n, P2934104714030317169.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P3326112451037540777

`A000007(n+1)-A182228(n+1)`
-/

namespace A140167.P3326112451037540777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A182228 (n + 1)

end

end A140167.P3326112451037540777

namespace A140167

/-- `A000007(n+1)-A182228(n+1)` -/
def P3326112451037540777.Spec : Prop :=
  ∀ n, P3326112451037540777.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P2426939571359596477

`A140165(n+1)-A140165(n+2)`
-/

namespace A140167.P2426939571359596477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (n + 1) - A140165 (n + 2)

end

end A140167.P2426939571359596477

namespace A140167

/-- `A140165(n+1)-A140165(n+2)` -/
def P2426939571359596477.Spec : Prop :=
  ∀ n, P2426939571359596477.a n = A140167 (n + 1)

end A140167

/-! ## A140167.P14950277492616751935

`A006130(n)/(A008346(n+1)-A000045(n+1))`
-/

namespace A140167.P14950277492616751935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006130 n : ℚ) / (A008346 (n + 1) - A000045 (n + 1) : ℚ)

end

end A140167.P14950277492616751935

namespace A140167

/-- `A006130(n)/(A008346(n+1)-A000045(n+1))` -/
def P14950277492616751935.Spec : Prop :=
  ∀ n, P14950277492616751935.a n = (A140167 (n + 1) : ℚ)

end A140167

/-! ## A140167.P4421050247179129004

`A182228(2*n+1)-(A182228(n+1)+A006130(2*n))`
-/

namespace A140167.P4421050247179129004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 (2 * n + 1) - (A182228 (n + 1) + A006130 (2 * n))

end

end A140167.P4421050247179129004

namespace A140167

/-- `A182228(2*n+1)-(A182228(n+1)+A006130(2*n))` -/
def P4421050247179129004.Spec : Prop :=
  ∀ n, P4421050247179129004.a n = A140167 (n + 1)

end A140167

/-!
# A140168: Triangle read by rows, iterates of X * [1,0,0,0,...]; where X = an infinite bidiagonal matrix with [2, -1, 2, -1, 2, ...] in the main diagonal, [1, 1, 1, ...] in the subdiagonal and rest zeros.

The programs for A140168, there is no canonical definition to state claims against.
-/

/-! ## A140168.P3517597267597718361

`A091918(n)+A056594(A038273(n))`
-/

namespace A140168.P3517597267597718361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n + A056594 (A038273 n).toNat

end

end A140168.P3517597267597718361

/-! ## A140168.P13114429147855138727

`A091918(n)-A016389(A080249(n))`
-/

namespace A140168.P13114429147855138727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n - A016389 (A080249 n).toNat

end

end A140168.P13114429147855138727

/-! ## A140168.P2102621182602712995

`gcd(A035061(A022166(n)), A225117(n))`
-/

namespace A140168.P2102621182602712995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035061 (A022166 n).toNat) (A225117 n)

end

end A140168.P2102621182602712995

/-! ## A140168.P10724093142893734575

`or(A001222(A022182(n)), A117352(n))`
-/

namespace A140168.P10724093142893734575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A022182 n).toNat) (A117352 n)

end

end A140168.P10724093142893734575

/-! ## A140168.P13125372745318707009

`or(A068009(n), A289623(A255915(n)))`
-/

namespace A140168.P13125372745318707009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068009 n) (A289623 (A255915 n).toNat)

end

end A140168.P13125372745318707009

/-!
# A140172: Powerful happy numbers; if a prime p divides n then p^2 must also divide n and also n must have trajectory under iteration of sum of squares of digits map includes 1.

The programs for A140172, there is no canonical definition to state claims against.
-/

/-! ## A140172.P9273589273250960184

`∩[A001694(n+1), A007770(n+1)]`
-/

namespace A140172.P9273589273250960184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140172.P9273589273250960184

/-! ## A140172.P7227244120062376949

`∩[A007770(n+1), A224866(n+1)-1]`
-/

namespace A140172.P7227244120062376949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140172.P7227244120062376949

/-! ## A140172.P5387920554924485033

`∩[∪[(n+1)², A320966(n+1)], A007770(n+1)]`
-/

namespace A140172.P5387920554924485033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A140172.P5387920554924485033

/-! ## A140172.P17345414630818392510

`∩[A007770(n+1), A369429(n+1)*A369430(n+1)]`
-/

namespace A140172.P17345414630818392510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369429 (n + 1) * A369430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140172.P17345414630818392510

/-!
# A140174: Numbers k such that k = pi(k)*(sum of the digits of k).

The programs for A140174, there is no canonical definition to state claims against.
-/

/-! ## A140174.P1661893501846842709

`A000041(A331820(n+1))*A069038(n)`
-/

namespace A140174.P1661893501846842709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A331820 (n + 1)).toNat * A069038 n

end

end A140174.P1661893501846842709

/-!
# A140176: Half the number of n X n symmetric binary matrices with adjacent rows differing in at most one position.

The programs for A140176, there is no canonical definition to state claims against.
-/

/-! ## A140176.P860152206360019266

`∑[A234300(A050168(n)²)]`
-/

namespace A140176.P860152206360019266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A050168 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140176.P860152206360019266

/-! ## A140176.P5047449682768282400

`A102681(A201950(n))+A052996(n)`
-/

namespace A140176.P5047449682768282400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A201950 n).toNat + A052996 n

end

end A140176.P5047449682768282400

/-! ## A140176.P2378932957221598647

`A056980(A355866(n))+A052996(n)`
-/

namespace A140176.P2378932957221598647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (A355866 n).toNat + A052996 n

end

end A140176.P2378932957221598647

/-! ## A140176.P11967064560875634683

`A188010(A293326(n)^A048766(n))`
-/

namespace A140176.P11967064560875634683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (SequenceMachineLib.roundAway ((A293326 n : ℚ) ^ (A048766 n : ℤ))).toNat

end

end A140176.P11967064560875634683

/-!
# A140177: Half the number of n X n symmetric binary matrices with adjacent rows differing in at most two positions.

The programs for A140177, there is no canonical definition to state claims against.
-/

/-! ## A140177.P7462197340998223425

`A063717(A192620(n)+A033717(n))`
-/

namespace A140177.P7462197340998223425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063717 (A192620 n + A033717 n).toNat

end

end A140177.P7462197340998223425

/-!
# A140180: A number n is included if the smallest prime that is congruent to 1 (mod n) is <= the smallest prime that is congruent to -1 (mod n).

The programs for A140180, there is no canonical definition to state claims against.
-/

/-! ## A140180.P3675092417713985491

`comp[A140181(n+1)%A000124(n)]`
-/

namespace A140180.P3675092417713985491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140181 (n + 1)) (A000124 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140180.P3675092417713985491

/-! ## A140180.P4367550242105625090

`record[gcd(n+1, A000010(A093868(n+1)))]`
-/

namespace A140180.P4367550242105625090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (A093868 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140180.P4367550242105625090

/-! ## A140180.P12401437822019802172

`comp[A140181(n+2)%A140147(n+1)]`
-/

namespace A140180.P12401437822019802172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140181 (n + 2)) (A140147 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140180.P12401437822019802172

/-! ## A140180.P11750484307556937048

`eq[A034694(n+1), A093868(n+1)]+1`
-/

namespace A140180.P11750484307556937048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A140180.P11750484307556937048

/-! ## A140180.P6487816448025156472

`lt[A034693(n+1), A053989(n+1)]+1`
-/

namespace A140180.P6487816448025156472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A140180.P6487816448025156472

/-! ## A140180.P10201389740125479437

`lt[A034693(n+1), A200996(n+1)]+1`
-/

namespace A140180.P10201389740125479437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A140180.P10201389740125479437

/-! ## A140180.P18270060757679707894

`lt[ceil(A034694(n+1)/(n+2)), A200996(n+1)]+1`
-/

namespace A140180.P18270060757679707894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034694 (n + 1) : ℚ) / (n + 2 : ℚ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A140180.P18270060757679707894

/-!
# A140181: A number n is included if the smallest prime that is congruent to 1 (mod n) is >= the smallest prime that is congruent to -1 (mod n).

The programs for A140181, there is no canonical definition to state claims against.
-/

/-! ## A140181.P8363486493007928165

`record[A093868(n+1)%(n+1)+1]`
-/

namespace A140181.P8363486493007928165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093868 (n + 1)) (n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140181.P8363486493007928165

/-! ## A140181.P17406237939369232941

`eq[A038700(n+1), A093868(n+1)]+1`
-/

namespace A140181.P17406237939369232941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A140181.P17406237939369232941

/-! ## A140181.P7072726554295550299

`comp[(eq[A034694(n+1), A093868(n+1)]+1)%A140162(n+1)]`
-/

namespace A140181.P7072726554295550299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1 : ℤ) (A140162 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140181.P7072726554295550299

/-! ## A140181.P6092656195299856921

`comp[A140180(n+1)%A140162(n+1)]`
-/

namespace A140181.P6092656195299856921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140180 (n + 1)) (A140162 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140181.P6092656195299856921

/-! ## A140181.P16056414530760810071

`comp[A140180(n+2)%A140160(n+1)]`
-/

namespace A140181.P16056414530760810071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140180 (n + 2)) (A140160 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140181.P16056414530760810071

/-! ## A140181.P5622960638504979446

`record[gcd(n+1, A001615(A093868(n+1)))]`
-/

namespace A140181.P5622960638504979446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001615 (A093868 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140181.P5622960638504979446

/-!
# A140182: Binomial transform of an infinite bidiagonal matrix with (1,3,1,3,1,3,...) in the main diagonal, (1,1,1,...) in the subdiagonal, the rest zeros.

The programs for A140182, there is no canonical definition to state claims against.
-/

/-! ## A140182.P15977256216734420773

`A206735(n+1)+A124846(n)`
-/

namespace A140182.P15977256216734420773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A124846 n

end

end A140182.P15977256216734420773

/-! ## A140182.P15172702252542458920

`A135278(n)+2*A162590(A061579(n))`
-/

namespace A140182.P15172702252542458920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + 2 * A162590 (A061579 n).toNat

end

end A140182.P15172702252542458920

/-! ## A140182.P7520859299381992611

`A135278(n)+A028326(n)*A060510(n)`
-/

namespace A140182.P7520859299381992611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A028326 n * A060510 n

end

end A140182.P7520859299381992611

/-! ## A140182.P2089055823726264285

`A124732(n+1)-Δ[A162590(A061579(n))]`
-/

namespace A140182.P2089055823726264285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162590 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124732 (n + 1) - (f1 (n + 1) - f1 n)

end

end A140182.P2089055823726264285

/-! ## A140182.P13847623767544526854

`A029635(A014132(n+1))-A130595(A061579(n))`
-/

namespace A140182.P13847623767544526854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A014132 (n + 1)).toNat - A130595 (A061579 n).toNat

end

end A140182.P13847623767544526854

/-!
# A140184: a(n) = 2*a(n-1) + 16*a(n-2) + 16*a(n-3) for n>3 with a(1)=1, a(2)=14, a(3)=60.

The programs for A140184, the canonical program `A140184.P12280301123222463705` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140184 has offset 1).

The definition of A140184 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+16*a(n-2)+16*a(n-3)` (program `A140184.P12280301123222463705`, by `A140184.P12280301123222463705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140184.P12280301123222463705

`2*a(n-1)+16*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=14, a(2)=60`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140184

/-- `2*a(n-1)+16*a(n-2)+16*a(n-3)` -/
def P12280301123222463705.Spec : Prop :=
  ∀ n, (P12280301123222463705.a n : ℤ) = A140184 (n + 1)

theorem P12280301123222463705.correct : P12280301123222463705.Spec := by
  intro n
  simp only [A140184, Nat.add_sub_cancel]

end A140184

/-! ## A140184.P4462624448045679560

`(A180222(n+3)+(-2)^(n+1))/2`
-/

namespace A140184.P4462624448045679560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180222 (n + 3) + (-2) ^ (n + 1) : ℚ) / 2

end

end A140184.P4462624448045679560

namespace A140184

/-- `(A180222(n+3)+(-2)^(n+1))/2` -/
def P4462624448045679560.Spec : Prop :=
  ∀ n, P4462624448045679560.a n = (A140184 (n + 1) : ℚ)

end A140184

/-!
# A140185: Number of connected groupoids (categories all of whose morphisms are invertible) with n morphisms.

The programs for A140185, there is no canonical definition to state claims against.
-/

/-! ## A140185.P5203842270729473141

`A018343(or(char[n²], A000001(n)))`
-/

namespace A140185.P5203842270729473141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018343 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000001 n)).toNat

end

end A140185.P5203842270729473141

/-! ## A140185.P6017733417986539495

`A036557(A001222(A166974(n²)))`
-/

namespace A140185.P6017733417986539495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A001222 (A166974 (n ^ 2)).toNat).toNat

end

end A140185.P6017733417986539495

/-! ## A140185.P13217198782351753939

`gcd(A156040(A034008(n)), A321717(n))`
-/

namespace A140185.P13217198782351753939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156040 (A034008 n).toNat) (A321717 n)

end

end A140185.P13217198782351753939

/-! ## A140185.P7472798816340425513

`A124648(or(A000001(n), A010052(n)))`
-/

namespace A140185.P7472798816340425513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124648 (Int.lor (A000001 n) (A010052 n)).toNat

end

end A140185.P7472798816340425513

/-! ## A140185.P15404051602771805144

`A072411(∏{d}[A072619(n), #])`
-/

namespace A140185.P15404051602771805144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A140185.P15404051602771805144

/-!
# A140186: Number of connected groupoids (categories all of whose morphisms are invertible) with n more morphisms than objects.

The programs for A140186, there is no canonical definition to state claims against.
-/

/-! ## A140186.P9548759481599050246

`A027746(A276531(n)+A091867(n))`
-/

namespace A140186.P9548759481599050246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (A276531 n + A091867 n).toNat

end

end A140186.P9548759481599050246

/-! ## A140186.P2349866551960395084

`A082065(A080257(n+1)+A000081(n))`
-/

namespace A140186.P2349866551960395084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082065 (A080257 (n + 1) + A000081 n).toNat

end

end A140186.P2349866551960395084

/-! ## A140186.P14424901471238451928

`A333766(A321738(2*n+1)+A144163(n+1))`
-/

namespace A140186.P14424901471238451928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A321738 (2 * n + 1) + A144163 (n + 1)).toNat

end

end A140186.P14424901471238451928

/-! ## A140186.P6754573376813005507

`A351352(2*(n+4))+A348327(A001358(n+2))`
-/

namespace A140186.P6754573376813005507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351352 (2 * (n + 4)) + A348327 (A001358 (n + 2)).toNat

end

end A140186.P6754573376813005507

/-!
# A140187: Number of connected groupoids (categories all of whose morphisms are invertible) with n times as many morphisms as objects.

The programs for A140187, there is no canonical definition to state claims against.
-/

/-! ## A140187.P16635601397109366435

`∑{d}[n, A000001(#)]+1`
-/

namespace A140187.P16635601397109366435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000001 d + 1

end

end A140187.P16635601397109366435

/-! ## A140187.P10680110548701443768

`1-A001489(∑{d}[n, A000001(#)])`
-/

namespace A140187.P10680110548701443768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (∑ d ∈ Nat.divisors (f1 n), A000001 d).toNat

end

end A140187.P10680110548701443768

/-! ## A140187.P16273672325201501298

`A008619(2*∑{d}[n, A000001(#)])`
-/

namespace A140187.P16273672325201501298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (∑ d ∈ Nat.divisors (f1 n), A000001 d)).toNat

end

end A140187.P16273672325201501298

/-! ## A140187.P17017084662728223088

`A028242(2*∑{d}[n, A000001(#)])`
-/

namespace A140187.P17017084662728223088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * (∑ d ∈ Nat.divisors (f1 n), A000001 d)).toNat

end

end A140187.P17017084662728223088

/-! ## A140187.P16033346944574824343

`A029579(2*∑{d}[n, A000001(#)])`
-/

namespace A140187.P16033346944574824343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * (∑ d ∈ Nat.divisors (f1 n), A000001 d)).toNat

end

end A140187.P16033346944574824343

/-! ## A140187.P3817438251338196329

`A052938(2*∑{d}[n, A000001(#)])`
-/

namespace A140187.P3817438251338196329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * (∑ d ∈ Nat.divisors (f1 n), A000001 d)).toNat

end

end A140187.P3817438251338196329

/-! ## A140187.P7164548548344725720

`A008611(3*∑{d}[n, A000001(#)])`
-/

namespace A140187.P7164548548344725720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * (∑ d ∈ Nat.divisors (f1 n), A000001 d)).toNat

end

end A140187.P7164548548344725720

/-! ## A140187.P2090128129561027052

`A008620(3*∑{d}[n, A000001(#)])`
-/

namespace A140187.P2090128129561027052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * (∑ d ∈ Nat.divisors (f1 n), A000001 d)).toNat

end

end A140187.P2090128129561027052

/-! ## A140187.P16000882176318970324

`2-(char[A004483(n)]-∑{d}[n, A000001(#)])`
-/

namespace A140187.P16000882176318970324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), A000001 d)

end

end A140187.P16000882176318970324

/-!
# A140188: Table read by rows: T(n,k) is the number of groupoids (categories all of whose morphisms are invertible) with n morphisms and k objects.

The programs for A140188, there is no canonical definition to state claims against.
-/

/-! ## A140188.P15756403976843703618

`or(A066855(n+1), A266659(A325864(n)))`
-/

namespace A140188.P15756403976843703618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066855 (n + 1)) (A266659 (A325864 n).toNat)

end

end A140188.P15756403976843703618

/-! ## A140188.P13779573893523777431

`or(A066855(n+1), A285972(A289249(n)))`
-/

namespace A140188.P13779573893523777431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066855 (n + 1)) (A285972 (A289249 n).toNat)

end

end A140188.P13779573893523777431

/-! ## A140188.P2918663335675889702

`or(A066855(n+1), A266659(A201061(n+1)))`
-/

namespace A140188.P2918663335675889702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066855 (n + 1)) (A266659 (A201061 (n + 1)).toNat)

end

end A140188.P2918663335675889702

/-!
# A140189: Number of groupoids (categories all of whose morphisms are invertible) with n morphisms.

The programs for A140189, there is no canonical definition to state claims against.
-/

/-! ## A140189.P6947819579271960649

`A071626(A080871(n)+∏{e}[A300902(n+1)/(n+1), #+1])`
-/

namespace A140189.P6947819579271960649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300902 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A080871 n + ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1) : ℕ) : ℤ)).toNat

end

end A140189.P6947819579271960649

/-! ## A140189.P687172206443027117

`A268128(n)+A110654(A057574(n))`
-/

namespace A140189.P687172206443027117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268128 n + A110654 (A057574 n).toNat

end

end A140189.P687172206443027117

/-! ## A140189.P7485975024006149925

`A285972(A061129(n))+A091070(n)`
-/

namespace A140189.P7485975024006149925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (A061129 n).toNat + A091070 n

end

end A140189.P7485975024006149925

/-! ## A140189.P13940923864542122247

`A307409(A007838(n))+A238863(n)`
-/

namespace A140189.P13940923864542122247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (A007838 n).toNat + A238863 n

end

end A140189.P13940923864542122247

/-!
# A140190: a(n) is the number of groupoids (categories all of whose morphisms are invertible) with m morphisms and m-n objects for any m>=2n.

The programs for A140190, there is no canonical definition to state claims against.
-/

/-! ## A140190.P2801147611715956031

`A116939(A114696(n))-A269303(n+1)`
-/

namespace A140190.P2801147611715956031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A114696 n).toNat - A269303 (n + 1)

end

end A140190.P2801147611715956031

/-! ## A140190.P8832730104565281453

`A133137(floor(sqrt(A258347(n))))`
-/

namespace A140190.P8832730104565281453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (Int.sqrt (A258347 n)).toNat

end

end A140190.P8832730104565281453

/-! ## A140190.P13745908117057053279

`A335126(A282239(n+1))-2`
-/

namespace A140190.P13745908117057053279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335126 (A282239 (n + 1)).toNat - 2

end

end A140190.P13745908117057053279

/-! ## A140190.P12295118747495163976

`A335524(A274174(n)+A095699(n))`
-/

namespace A140190.P12295118747495163976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (A274174 n + A095699 n).toNat

end

end A140190.P12295118747495163976

/-! ## A140190.P4633326010105750829

`A000196(or(A070275(n+1), A291000(n)))`
-/

namespace A140190.P4633326010105750829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A070275 (n + 1)) (A291000 n)).toNat

end

end A140190.P4633326010105750829

/-!
# A140191: Fix e = 3; a(n) gives number of multiples ke (0 <= k <= n/e) which are children of n.

The programs for A140191, the canonical program `A140191.P1113677549070139326` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140191 has offset 0).

The definition of A140191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140191.P1113677549070139326

`A008611(A001316(n)-(n+1)%3)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140191

/-- `A008611(A001316(n)-(n+1)%3)` -/
def P1113677549070139326.Spec : Prop :=
  ∀ n, P1113677549070139326.a n = A140191 n

theorem P1113677549070139326.correct : P1113677549070139326.Spec := by
  intro n
  simp only [A140191]

end A140191

/-! ## A140191.P5519807805160884896

`A008611(A001316(n)-(1-round(sin(n%6))))`
-/

namespace A140191.P5519807805160884896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A001316 n - (1 - SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ)))).toNat

end

end A140191.P5519807805160884896

namespace A140191

/-- `A008611(A001316(n)-(1-round(sin(n%6))))` -/
def P5519807805160884896.Spec : Prop :=
  ∀ n, P5519807805160884896.a n = A140191 n

end A140191

/-! ## A140191.P7250374888874160813

`A008611(A001316(n)+1-Δ[A004773(2*n)])`
-/

namespace A140191.P7250374888874160813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A001316 n + 1 - (f1 (n + 1) - f1 n)).toNat

end

end A140191.P7250374888874160813

namespace A140191

/-- `A008611(A001316(n)+1-Δ[A004773(2*n)])` -/
def P7250374888874160813.Spec : Prop :=
  ∀ n, P7250374888874160813.a n = A140191 n

end A140191

/-! ## A140191.P15765421575551791906

`A008611(A102283(n)+A073138(n)/A080100(n))`
-/

namespace A140191.P15765421575551791906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((A102283 n : ℚ) + (A073138 n : ℚ) / (A080100 n : ℚ))).toNat

end

end A140191.P15765421575551791906

namespace A140191

/-- `A008611(A102283(n)+A073138(n)/A080100(n))` -/
def P15765421575551791906.Spec : Prop :=
  ∀ n, P15765421575551791906.a n = A140191 n

end A140191

/-! ## A140191.P2569966628981879837

`A008611(A073138(n)/A080100(n)-A102283(n))`
-/

namespace A140191.P2569966628981879837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((A073138 n : ℚ) / (A080100 n : ℚ) - (A102283 n : ℚ))).toNat

end

end A140191.P2569966628981879837

namespace A140191

/-- `A008611(A073138(n)/A080100(n)-A102283(n))` -/
def P2569966628981879837.Spec : Prop :=
  ∀ n, P2569966628981879837.a n = A140191 n

end A140191

/-! ## A140191.P8286195310585976202

`A140193(2*n)`
-/

namespace A140191.P8286195310585976202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140193 (2 * n)

end

end A140191.P8286195310585976202

namespace A140191

/-- `A140193(2*n)` -/
def P8286195310585976202.Spec : Prop :=
  ∀ n, P8286195310585976202.a n = A140191 n

end A140191

/-! ## A140191.P9422412064630398177

`A140193(n+1+n)%A000037(n+1)`
-/

namespace A140191.P9422412064630398177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140193 (n + 1 + n)) (A000037 (n + 1))

end

end A140191.P9422412064630398177

namespace A140191

/-- `A140193(n+1+n)%A000037(n+1)` -/
def P9422412064630398177.Spec : Prop :=
  ∀ n, P9422412064630398177.a n = A140191 n

end A140191

/-! ## A140191.P4011853939302827259

`A140193(A008574(n))+A066568(A000120(n))`
-/

namespace A140191.P4011853939302827259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140193 (A008574 n).toNat + A066568 (A000120 n).toNat

end

end A140191.P4011853939302827259

namespace A140191

/-- `A140193(A008574(n))+A066568(A000120(n))` -/
def P4011853939302827259.Spec : Prop :=
  ∀ n, P4011853939302827259.a n = A140191 n

end A140191

/-! ## A140191.P15983816008142953081

`A008611(A001316(n)-A321104(n))`
-/

namespace A140191.P15983816008142953081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A001316 n - A321104 n).toNat

end

end A140191.P15983816008142953081

namespace A140191

/-- `A008611(A001316(n)-A321104(n))` -/
def P15983816008142953081.Spec : Prop :=
  ∀ n, P15983816008142953081.a n = A140191 n

end A140191

/-! ## A140191.P4448216007382221336

`A353352(A019565(n))`
-/

namespace A140191.P4448216007382221336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353352 (A019565 n).toNat

end

end A140191.P4448216007382221336

namespace A140191

/-- `A353352(A019565(n))` -/
def P4448216007382221336.Spec : Prop :=
  ∀ n, P4448216007382221336.a n = A140191 n

end A140191

/-!
# A140192: Same as A140191 except here e=5.

The programs for A140192, there is no canonical definition to state claims against.
-/

/-! ## A140192.P16195725270689814397

`A069288(A038889(n+1)*A255485(n))`
-/

namespace A140192.P16195725270689814397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A038889 (n + 1) * A255485 n).toNat

end

end A140192.P16195725270689814397

/-! ## A140192.P13463326722500743409

`A323437(A055229(n+1)*A255485(n))`
-/

namespace A140192.P13463326722500743409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 (A055229 (n + 1) * A255485 n).toNat

end

end A140192.P13463326722500743409

/-! ## A140192.P13141712227973383088

`A323437(A255485(n)*A323437(n+1))`
-/

namespace A140192.P13141712227973383088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 (A255485 n * A323437 (n + 1)).toNat

end

end A140192.P13141712227973383088

/-! ## A140192.P7018551893993505010

`A323437(lcm(A255485(n), A353352(n+1)))`
-/

namespace A140192.P7018551893993505010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 (Int.lcm (A255485 n) (A353352 (n + 1)))

end

end A140192.P7018551893993505010

/-! ## A140192.P9939627737835494186

`A069288(A221717(2*n+3)*A255485(n))`
-/

namespace A140192.P9939627737835494186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A221717 (2 * n + 3) * A255485 n).toNat

end

end A140192.P9939627737835494186

/-!
# A140193: Same as A140191 except here e=6.

The programs for A140193, the canonical program `A140193.P1932437245816314854` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140193 has offset 0).

The definition of A140193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140193.P1932437245816314854

`A140191(and(n, -2))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140193

/-- `A140191(and(n, -2))` -/
def P1932437245816314854.Spec : Prop :=
  ∀ n, P1932437245816314854.a n = A140193 n

theorem P1932437245816314854.correct : P1932437245816314854.Spec := by
  intro n
  simp only [A140193]

end A140193

/-! ## A140193.P2647767676026150071

`A140191(floor(n/2))`
-/

namespace A140193.P2647767676026150071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140191 ⌊(n : ℚ) / 2⌋.toNat

end

end A140193.P2647767676026150071

namespace A140193

/-- `A140191(floor(n/2))` -/
def P2647767676026150071.Spec : Prop :=
  ∀ n, P2647767676026150071.a n = A140193 n

end A140193

/-! ## A140193.P16591834099206112256

`A140191(A123108(n))%(n+5)`
-/

namespace A140193.P16591834099206112256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140191 (A123108 n).toNat) (n + 5 : ℤ)

end

end A140193.P16591834099206112256

namespace A140193

/-- `A140191(A123108(n))%(n+5)` -/
def P16591834099206112256.Spec : Prop :=
  ∀ n, P16591834099206112256.a n = A140193 n

end A140193

/-! ## A140193.P6923233626983713623

`gcd(A000038(n), A140191(A029578(n)))`
-/

namespace A140193.P6923233626983713623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A140191 (A029578 n).toNat)

end

end A140193.P6923233626983713623

namespace A140193

/-- `gcd(A000038(n), A140191(A029578(n)))` -/
def P6923233626983713623.Spec : Prop :=
  ∀ n, (P6923233626983713623.a n : ℤ) = A140193 n

end A140193

/-! ## A140193.P17854222003721041070

`or(A000007(n), A140191(A123108(n)))`
-/

namespace A140193.P17854222003721041070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A140191 (A123108 n).toNat)

end

end A140193.P17854222003721041070

namespace A140193

/-- `or(A000007(n), A140191(A123108(n)))` -/
def P17854222003721041070.Spec : Prop :=
  ∀ n, P17854222003721041070.a n = A140193 n

end A140193

/-!
# A140194: Same as A140191 except here e=7.

The programs for A140194, there is no canonical definition to state claims against.
-/

/-! ## A140194.P1031428526511950522

`A368843(n)+A096744(A356302(n))`
-/

namespace A140194.P1031428526511950522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 n + A096744 (A356302 n).toNat

end

end A140194.P1031428526511950522

/-! ## A140194.P8215124505746061870

`A368843(n)+A131027(A144315(n+1))`
-/

namespace A140194.P8215124505746061870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 n + A131027 (A144315 (n + 1)).toNat

end

end A140194.P8215124505746061870

/-! ## A140194.P2030786637270175164

`A368843(n)+A088705(A210338(n+1))`
-/

namespace A140194.P2030786637270175164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 n + A088705 (A210338 (n + 1)).toNat

end

end A140194.P2030786637270175164

/-! ## A140194.P9579955964760997784

`A368843(n)+A361338(A047916(n+1))`
-/

namespace A140194.P9579955964760997784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 n + A361338 (A047916 (n + 1)).toNat

end

end A140194.P9579955964760997784

/-! ## A140194.P15367124004245640481

`A368843(n)+A010051(A262730(n+3))`
-/

namespace A140194.P15367124004245640481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 n + A010051 (A262730 (n + 3)).toNat

end

end A140194.P15367124004245640481

/-!
# A140195: Same as A140191 except here e=9.

The programs for A140195, there is no canonical definition to state claims against.
-/

/-! ## A140195.P13113652264210050965

`A127973(and(n, A008590(n)))`
-/

namespace A140195.P13113652264210050965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127973 (Int.land (n : ℤ) (A008590 n)).toNat

end

end A140195.P13113652264210050965

/-! ## A140195.P15123386621528801942

`A334968(and(2*n, A008590(2*n)))`
-/

namespace A140195.P15123386621528801942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 (Int.land (2 * n : ℤ) (A008590 (2 * n))).toNat

end

end A140195.P15123386621528801942

/-! ## A140195.P17249477698122092788

`A343856(A310264(and(n, 8*n)))`
-/

namespace A140195.P17249477698122092788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343856 (A310264 (Nat.land n (8 * n))).toNat

end

end A140195.P17249477698122092788

/-! ## A140195.P11481368631780752853

`gcd(A193175(n+1), A306860(n))`
-/

namespace A140195.P11481368631780752853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193175 (n + 1)) (A306860 n)

end

end A140195.P11481368631780752853

/-! ## A140195.P15198928337556375812

`gcd(A249937(n), A292563(n))`
-/

namespace A140195.P15198928337556375812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A249937 n) (A292563 n)

end

end A140195.P15198928337556375812

/-!
# A140196: Number of symmetric binary n X n matrices with every 1 adjacent horizontally (and vertically) to some 0.

The programs for A140196, there is no canonical definition to state claims against.
-/

/-! ## A140196.P17854719914741912179

`A240977(C(A293077(n+1), n))`
-/

namespace A140196.P17854719914741912179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 (Nat.choose (A293077 (n + 1)).toNat n)

end

end A140196.P17854719914741912179

/-!
# A140197: A137576((k-1)/2) for composite numbers k from A141229.

The programs for A140197, there is no canonical definition to state claims against.
-/

/-! ## A140197.P4038233670480723093

`3*A140198(n+1)+1`
-/

namespace A140197.P4038233670480723093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A140198 (n + 1) + 1

end

end A140197.P4038233670480723093

/-! ## A140197.P7438482685973366095

`A059986(A001122(n+1)-1)+1`
-/

namespace A140197.P7438482685973366095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 (A001122 (n + 1) - 1).toNat + 1

end

end A140197.P7438482685973366095

/-! ## A140197.P12374379341645284787

`3*A053191(p?[A001122(n+1)])+1`
-/

namespace A140197.P12374379341645284787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053191 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A140197.P12374379341645284787

/-!
# A140198: A002326((k-1)/2) for composite numbers k from A141229.

The programs for A140198, there is no canonical definition to state claims against.
-/

/-! ## A140198.P2247058017221948675

`A045991(A001122(n+1))`
-/

namespace A140198.P2247058017221948675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A001122 (n + 1)).toNat

end

end A140198.P2247058017221948675

/-! ## A140198.P17379947773896770075

`A135177(A072190(n+1))`
-/

namespace A140198.P17379947773896770075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (A072190 (n + 1)).toNat

end

end A140198.P17379947773896770075

/-! ## A140198.P14725149806683254739

`A045991(A050229(n+3))`
-/

namespace A140198.P14725149806683254739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A050229 (n + 3)).toNat

end

end A140198.P14725149806683254739

/-! ## A140198.P4810439006696222208

`A053191(p?[A001122(n+1)])`
-/

namespace A140198.P4810439006696222208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140198.P4810439006696222208

/-! ## A140198.P7408504400157554610

`A045991(p?[A139099(n+1)])`
-/

namespace A140198.P7408504400157554610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140198.P7408504400157554610

/-!
# A140199: a(n) = the number of pairs of (not necessarily distinct) positive integers j and k where j <= n and k <= n such that k+j is prime.

The programs for A140199, the canonical program `A140199.P1511912442749279269` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140199 has offset 1).

The definition of A140199 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140199.P1511912442749279269

`A071917(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140199

/-- `A071917(n+1)+1` -/
def P1511912442749279269.Spec : Prop :=
  ∀ n, P1511912442749279269.a n = A140199 (n + 1)

theorem P1511912442749279269.correct : P1511912442749279269.Spec := by
  intro n
  simp only [A140199, Nat.add_sub_cancel]

end A140199

/-! ## A140199.P15600924895052663246

`∑[∑[C(n, ∑{p}[n+1, C(#, n)])]-∑[floor(atan(∑{e}[2*n+1, #]))]]`
-/

namespace A140199.P15600924895052663246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p : ℕ) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140199.P15600924895052663246

namespace A140199

/-- `∑[∑[C(n, ∑{p}[n+1, C(#, n)])]-∑[floor(atan(∑{e}[2*n+1, #]))]]` -/
def P15600924895052663246.Spec : Prop :=
  ∀ n, P15600924895052663246.a n = A140199 (n + 1)

end A140199

/-! ## A140199.P17966477350311234815

`∑[∑[C(2*n+1, ∏{d}[2*n+1, #])]-∑[C(C(2, ∑{e}[n+1, #]), 2)]]`
-/

namespace A140199.P17966477350311234815
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f3 n), d)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140199.P17966477350311234815

namespace A140199

/-- `∑[∑[C(2*n+1, ∏{d}[2*n+1, #])]-∑[C(C(2, ∑{e}[n+1, #]), 2)]]` -/
def P17966477350311234815.Spec : Prop :=
  ∀ n, P17966477350311234815.a n = A140199 (n + 1)

end A140199

/-! ## A140199.P3559600211280673042

`∑[A108954(n+1)]`
-/

namespace A140199.P3559600211280673042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140199.P3559600211280673042

namespace A140199

/-- `∑[A108954(n+1)]` -/
def P3559600211280673042.Spec : Prop :=
  ∀ n, P3559600211280673042.a n = A140199 (n + 1)

end A140199

/-! ## A140199.P13121832602797192696

`∑[A083415(∑[n]+2)]`
-/

namespace A140199.P13121832602797192696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140199.P13121832602797192696

namespace A140199

/-- `∑[A083415(∑[n]+2)]` -/
def P13121832602797192696.Spec : Prop :=
  ∀ n, P13121832602797192696.a n = A140199 (n + 1)

end A140199

/-! ## A140199.P4598153184392315204

`ceil(A292918(n+1)/2)`
-/

namespace A140199.P4598153184392315204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292918 (n + 1) : ℚ) / 2⌉

end

end A140199.P4598153184392315204

namespace A140199

/-- `ceil(A292918(n+1)/2)` -/
def P4598153184392315204.Spec : Prop :=
  ∀ n, P4598153184392315204.a n = A140199 (n + 1)

end A140199

/-! ## A140199.P17663833593932972575

`∑[A060715(n+1)]+1`
-/

namespace A140199.P17663833593932972575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A140199.P17663833593932972575

namespace A140199

/-- `∑[A060715(n+1)]+1` -/
def P17663833593932972575.Spec : Prop :=
  ∀ n, P17663833593932972575.a n = A140199 (n + 1)

end A140199

/-! ## A140199.P10257731451396647816

`∑[A056171(2*(n+1))]`
-/

namespace A140199.P10257731451396647816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140199.P10257731451396647816

namespace A140199

/-- `∑[A056171(2*(n+1))]` -/
def P10257731451396647816.Spec : Prop :=
  ∀ n, P10257731451396647816.a n = A140199 (n + 1)

end A140199

/-! ## A140199.P2002302448919767936

`A069879(n+1)/2+1`
-/

namespace A140199.P2002302448919767936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069879 (n + 1) : ℚ) / 2 + 1

end

end A140199.P2002302448919767936

namespace A140199

/-- `A069879(n+1)/2+1` -/
def P2002302448919767936.Spec : Prop :=
  ∀ n, P2002302448919767936.a n = (A140199 (n + 1) : ℚ)

theorem P2002302448919767936.correct : P2002302448919767936.Spec := by
  intro n
  simp only [A140199, Nat.add_sub_cancel, A140199.P2002302448919767936.a, A140199.P1511912442749279269.a, A069879, A069879.P15875305375985047542.a, A071917, A071917.P7587842749427961361.f1, A071917.P7587842749427961361.a, A060715, A060715.P10581007485109841961.f1, A060715.P10581007485109841961.a, A010051, A010051.P15078252821583414300.a, A099801, A099801.P5638060238408130792.f1, A099801.P5638060238408130792.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A101808, A101808.P11599829099457824818.f2, A101808.P11599829099457824818.f1, A101808.P11599829099457824818.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A140199

/-! ## A140199.P5748596881571361604

`∑[log2(A056672(2*(n+1)))]`
-/

namespace A140199.P5748596881571361604
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A056672 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140199.P5748596881571361604

namespace A140199

/-- `∑[log2(A056672(2*(n+1)))]` -/
def P5748596881571361604.Spec : Prop :=
  ∀ n, P5748596881571361604.a n = (A140199 (n + 1) : ℝ)

end A140199

