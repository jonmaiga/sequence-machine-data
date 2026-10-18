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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
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
# A271200: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 313", based on the 5-celled von Neumann neighborhood.

The programs for A271200, there is no canonical definition to state claims against.
-/

/-! ## A271200.P2881184458306036050

`∑[A271203(abs(1-n))]`
-/

namespace A271200.P2881184458306036050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271203 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271200.P2881184458306036050

/-! ## A271200.P17958506964580559759

`A271203(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271200.P17958506964580559759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271203 (n - 1) + a (n - 1)

end

end A271200.P17958506964580559759

/-! ## A271200.P11630551902551533807

`∑[A271203(n)]+1-A271203(n)`
-/

namespace A271200.P11630551902551533807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A271203 n)

end

end A271200.P11630551902551533807

/-! ## A271200.P8645062154507853428

`Δ[A271202(n)]-A271203(n)`
-/

namespace A271200.P8645062154507853428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271203 n

end

end A271200.P8645062154507853428

/-! ## A271200.P11994974806443935091

`A271202(n+1)-(A271203(n)+A271202(n))`
-/

namespace A271200.P11994974806443935091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271202 (n + 1) - (A271203 n + A271202 n)

end

end A271200.P11994974806443935091

/-!
# A271201: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 313", based on the 5-celled von Neumann neighborhood.

The programs for A271201, there is no canonical definition to state claims against.
-/

/-! ## A271201.P15602065703380821937

`A271200(2^n-1)`
-/

namespace A271201.P15602065703380821937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271200 (2 ^ n - 1)

end

end A271201.P15602065703380821937

/-! ## A271201.P7423412504210722606

`record[A271200(A227351(n))]`
-/

namespace A271201.P7423412504210722606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271200 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271201.P7423412504210722606

/-! ## A271201.P7155204850445018903

`record[A271200(A341916(n))]`
-/

namespace A271201.P7155204850445018903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271200 (A341916 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271201.P7155204850445018903

/-! ## A271201.P2617627169597679989

`record[A271200(A243071(n+1))]`
-/

namespace A271201.P2617627169597679989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271200 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271201.P2617627169597679989

/-! ## A271201.P18216014785150324754

`record[A271200(A323243(n+1))]`
-/

namespace A271201.P18216014785150324754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271200 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271201.P18216014785150324754

/-!
# A271202: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 313", based on the 5-celled von Neumann neighborhood.

The programs for A271202, there is no canonical definition to state claims against.
-/

/-! ## A271202.P3343079364289958218

`∑[A271200(n)]`
-/

namespace A271202.P3343079364289958218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271202.P3343079364289958218

/-! ## A271202.P8817328510618849129

`∑[∑[A271203(abs(1-n))]]`
-/

namespace A271202.P8817328510618849129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271203 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271202.P8817328510618849129

/-! ## A271202.P3775871656405314247

`A271200(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271202.P3775871656405314247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271200 n + a (A023443 n).toNat

end

end A271202.P3775871656405314247

/-! ## A271202.P10011955645917652344

`a(n-1)+A271200(n)+A000007(n)` with `a(0)=1`
-/

namespace A271202.P10011955645917652344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271200 n + A000007 n)

end

end A271202.P10011955645917652344

/-! ## A271202.P5604907801294313428

`a(n-1)+A271200(n)+A035622(2*n+1)` with `a(0)=1`
-/

namespace A271202.P5604907801294313428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271200 n + A035622 (2 * n + 1))

end

end A271202.P5604907801294313428

/-!
# A271203: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 313", based on the 5-celled von Neumann neighborhood.

The programs for A271203, there is no canonical definition to state claims against.
-/

/-! ## A271203.P187969479314286778

`Δ[A271200(n)]`
-/

namespace A271203.P187969479314286778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271203.P187969479314286778

/-! ## A271203.P15569187146888465047

`A271200(n+1)-A271200(n)`
-/

namespace A271203.P15569187146888465047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271200 (n + 1) - A271200 n

end

end A271203.P15569187146888465047

/-! ## A271203.P12317453162629747085

`A271200(n+1)+A133574(A001316(n))*A271200(n)`
-/

namespace A271203.P12317453162629747085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271200 (n + 1) + A133574 (A001316 n).toNat * A271200 n

end

end A271203.P12317453162629747085

/-! ## A271203.P13015440151981297008

`A271200(n+1)+A271200(n)*A280193(A045803(n+1))`
-/

namespace A271203.P13015440151981297008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271200 (n + 1) + A271200 n * A280193 (A045803 (n + 1)).toNat

end

end A271203.P13015440151981297008

/-!
# A271207: Number of set partitions of [n] avoiding triples (t,t+1,t+2) having t+i in block b+i for some b.

The programs for A271207, there is no canonical definition to state claims against.
-/

/-! ## A271207.P5306407227987136148

`A271206(A022856(n+2))`
-/

namespace A271207.P5306407227987136148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271206 (A022856 (n + 2)).toNat

end

end A271207.P5306407227987136148

/-! ## A271207.P11160058138077635883

`A010359(n+1)-A244992(A000246(n))`
-/

namespace A271207.P11160058138077635883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010359 (n + 1) - A244992 (A000246 n).toNat

end

end A271207.P11160058138077635883

/-!
# A271208: a(n) = n^5 + n - 1.

The programs for A271208, the canonical program `A271208.P17982622482993823956` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271208 has offset 0).

The definition of A271208 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+n-1` (program `A271208.P17982622482993823956`, by `A271208.P17982622482993823956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271208.P17982622482993823956

`n^5+n-1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271208

/-- `n^5+n-1` -/
def P17982622482993823956.Spec : Prop :=
  ∀ n, P17982622482993823956.a n = A271208 n

theorem P17982622482993823956.correct : P17982622482993823956.Spec := by
  intro n
  simp only [A271208]

end A271208

/-! ## A271208.P3650072217551980559

`or(1, n-(1-n^5))`
-/

namespace A271208.P3650072217551980559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - (1 - (n ^ 5 : ℤ)))

end

end A271208.P3650072217551980559

namespace A271208

/-- `or(1, n-(1-n^5))` -/
def P3650072217551980559.Spec : Prop :=
  ∀ n, P3650072217551980559.a n = A271208 n

end A271208

/-! ## A271208.P8242806426637006870

`xor(1, n-(2-n^5))`
-/

namespace A271208.P8242806426637006870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - (2 - (n ^ 5 : ℤ)))

end

end A271208.P8242806426637006870

namespace A271208

/-- `xor(1, n-(2-n^5))` -/
def P8242806426637006870.Spec : Prop :=
  ∀ n, P8242806426637006870.a n = A271208 n

end A271208

/-! ## A271208.P2274284818535473667

`(n-(1-n^5))*abs(A020985(n))`
-/

namespace A271208.P2274284818535473667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (1 - (n ^ 5 : ℤ))) * |A020985 n|

end

end A271208.P2274284818535473667

namespace A271208

/-- `(n-(1-n^5))*abs(A020985(n))` -/
def P2274284818535473667.Spec : Prop :=
  ∀ n, P2274284818535473667.a n = A271208 n

end A271208

/-! ## A271208.P16770642273809012182

`(A011379(n)-1)*A002061(n)`
-/

namespace A271208.P16770642273809012182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011379 n - 1) * A002061 n

end

end A271208.P16770642273809012182

namespace A271208

/-- `(A011379(n)-1)*A002061(n)` -/
def P16770642273809012182.Spec : Prop :=
  ∀ n, P16770642273809012182.a n = A271208 n

end A271208

/-! ## A271208.P6296895250640208685

`(A131471(n)²-1)/A271209(n)`
-/

namespace A271208.P6296895250640208685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131471 n ^ 2 - 1 : ℚ) / (A271209 n : ℚ)

end

end A271208.P6296895250640208685

namespace A271208

/-- `(A131471(n)²-1)/A271209(n)` -/
def P6296895250640208685.Spec : Prop :=
  ∀ n, P6296895250640208685.a n = (A271208 n : ℚ)

end A271208

/-! ## A271208.P196809320281554497

`(A100019(n)-A002523(n))*A002061(n)`
-/

namespace A271208.P196809320281554497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100019 n - A002523 n) * A002061 n

end

end A271208.P196809320281554497

namespace A271208

/-- `(A100019(n)-A002523(n))*A002061(n)` -/
def P196809320281554497.Spec : Prop :=
  ∀ n, P196809320281554497.a n = A271208 n

end A271208

/-! ## A271208.P10896224024297547943

`(A061167(n)-A165747(n))*A001221(A053760(n+1))`
-/

namespace A271208.P10896224024297547943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061167 n - A165747 n) * A001221 (A053760 (n + 1)).toNat

end

end A271208.P10896224024297547943

namespace A271208

/-- `(A061167(n)-A165747(n))*A001221(A053760(n+1))` -/
def P10896224024297547943.Spec : Prop :=
  ∀ n, P10896224024297547943.a n = A271208 n

end A271208

/-! ## A271208.P647894228652278186

`(A100606(n+1)-A082044(n+1))*A002061(n)`
-/

namespace A271208.P647894228652278186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100606 (n + 1) - A082044 (n + 1)) * A002061 n

end

end A271208.P647894228652278186

namespace A271208

/-- `(A100606(n+1)-A082044(n+1))*A002061(n)` -/
def P647894228652278186.Spec : Prop :=
  ∀ n, P647894228652278186.a n = A271208 n

end A271208

/-! ## A271208.P503030337992433315

`(A061167(n)-A165747(n))*A001221(A030431(n+1))`
-/

namespace A271208.P503030337992433315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061167 n - A165747 n) * A001221 (A030431 (n + 1)).toNat

end

end A271208.P503030337992433315

namespace A271208

/-- `(A061167(n)-A165747(n))*A001221(A030431(n+1))` -/
def P503030337992433315.Spec : Prop :=
  ∀ n, P503030337992433315.a n = A271208 n

end A271208

/-! ## A271208.P8296318730740181467

`(A000584(n)-1+n)%A260290(n+1)`
-/

namespace A271208.P8296318730740181467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000584 n - 1 + (n : ℤ)) (A260290 (n + 1))

end

end A271208.P8296318730740181467

namespace A271208

/-- `(A000584(n)-1+n)%A260290(n+1)` -/
def P8296318730740181467.Spec : Prop :=
  ∀ n, P8296318730740181467.a n = A271208 n

end A271208

/-!
# A271209: a(n) = n^5 + n + 1.

The programs for A271209, the canonical program `A271209.P17200260932878343220` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271209 has offset 0).

The definition of A271209 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+n+1` (program `A271209.P17200260932878343220`, by `A271209.P17200260932878343220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271209.P17200260932878343220

`n^5+n+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271209

/-- `n^5+n+1` -/
def P17200260932878343220.Spec : Prop :=
  ∀ n, (P17200260932878343220.a n : ℤ) = A271209 n

theorem P17200260932878343220.correct : P17200260932878343220.Spec := by
  intro n
  simp only [A271209]

end A271209

/-! ## A271209.P14415185435826204436

`or(1, n-(-n)^5)`
-/

namespace A271209.P14415185435826204436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - (-(n : ℤ)) ^ 5)

end

end A271209.P14415185435826204436

namespace A271209

/-- `or(1, n-(-n)^5)` -/
def P14415185435826204436.Spec : Prop :=
  ∀ n, P14415185435826204436.a n = A271209 n

end A271209

/-! ## A271209.P17194568583451428830

`xor(1, n-(-n)^5)`
-/

namespace A271209.P17194568583451428830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - (-(n : ℤ)) ^ 5)

end

end A271209.P17194568583451428830

namespace A271209

/-- `xor(1, n-(-n)^5)` -/
def P17194568583451428830.Spec : Prop :=
  ∀ n, P17194568583451428830.a n = A271209 n

end A271209

/-! ## A271209.P2824940072075658765

`abs(2-A024003(n)+n)`
-/

namespace A271209.P2824940072075658765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A024003 n + (n : ℤ)|

end

end A271209.P2824940072075658765

namespace A271209

/-- `abs(2-A024003(n)+n)` -/
def P2824940072075658765.Spec : Prop :=
  ∀ n, P2824940072075658765.a n = A271209 n

end A271209

/-! ## A271209.P4676640559788312356

`abs(2*n+A000584(n)+1-n)`
-/

namespace A271209.P4676640559788312356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) + (A000584 n + 1) - (n : ℤ)|

end

end A271209.P4676640559788312356

namespace A271209

/-- `abs(2*n+A000584(n)+1-n)` -/
def P4676640559788312356.Spec : Prop :=
  ∀ n, P4676640559788312356.a n = A271209 n

end A271209

/-! ## A271209.P15656604529015327094

`((n-1)*n²+1)*∑[A004277(n)]`
-/

namespace A271209.P15656604529015327094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n ^ 2 : ℤ) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271209.P15656604529015327094

namespace A271209

/-- `((n-1)*n²+1)*∑[A004277(n)]` -/
def P15656604529015327094.Spec : Prop :=
  ∀ n, P15656604529015327094.a n = A271209 n

end A271209

/-! ## A271209.P13472078931502244787

`(∑[2*n]+1)*((n-1)*A000290(n)+1)`
-/

namespace A271209.P13472078931502244787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * (((n : ℤ) - 1) * A000290 n + 1)

end

end A271209.P13472078931502244787

namespace A271209

/-- `(∑[2*n]+1)*((n-1)*A000290(n)+1)` -/
def P13472078931502244787.Spec : Prop :=
  ∀ n, P13472078931502244787.a n = A271209 n

end A271209

/-! ## A271209.P11448776947557412050

`abs(((n-1)*A000578(n)+(1-n)²+n)*(n+1)+n)`
-/

namespace A271209.P11448776947557412050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n : ℤ) - 1) * A000578 n + ((1 - (n : ℤ)) ^ 2 + (n : ℤ))) * (n + 1 : ℤ) + (n : ℤ)|

end

end A271209.P11448776947557412050

namespace A271209

/-- `abs(((n-1)*A000578(n)+(1-n)²+n)*(n+1)+n)` -/
def P11448776947557412050.Spec : Prop :=
  ∀ n, P11448776947557412050.a n = A271209 n

end A271209

/-! ## A271209.P7441392362469649362

`∑[∑[A101098(A028310(n))]]`
-/

namespace A271209.P7441392362469649362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271209.P7441392362469649362

namespace A271209

/-- `∑[∑[A101098(A028310(n))]]` -/
def P7441392362469649362.Spec : Prop :=
  ∀ n, P7441392362469649362.a n = A271209 n

end A271209

/-! ## A271209.P12147168486599733949

`A002061(n+1)*A100104(n)`
-/

namespace A271209.P12147168486599733949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * A100104 n

end

end A271209.P12147168486599733949

namespace A271209

/-- `A002061(n+1)*A100104(n)` -/
def P12147168486599733949.Spec : Prop :=
  ∀ n, P12147168486599733949.a n = A271209 n

end A271209

/-! ## A271209.P3995201165871442001

`Δ[A263689(n)+∑[n]]`
-/

namespace A271209.P3995201165871442001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263689 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271209.P3995201165871442001

namespace A271209

/-- `Δ[A263689(n)+∑[n]]` -/
def P3995201165871442001.Spec : Prop :=
  ∀ n, P3995201165871442001.a n = A271209 n

end A271209

/-! ## A271209.P8641114377346133915

`(A242659(n+1)-A002061(n+1))*A002061(n+1)`
-/

namespace A271209.P8641114377346133915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A242659 (n + 1) - A002061 (n + 1)) * A002061 (n + 1)

end

end A271209.P8641114377346133915

namespace A271209

/-- `(A242659(n+1)-A002061(n+1))*A002061(n+1)` -/
def P8641114377346133915.Spec : Prop :=
  ∀ n, P8641114377346133915.a n = A271209 n

end A271209

/-! ## A271209.P9181578076091158626

`((n-1)*n²+1)*A005408(A000217(n))`
-/

namespace A271209.P9181578076091158626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n ^ 2 : ℤ) + 1) * A005408 (A000217 n).toNat

end

end A271209.P9181578076091158626

namespace A271209

/-- `((n-1)*n²+1)*A005408(A000217(n))` -/
def P9181578076091158626.Spec : Prop :=
  ∀ n, P9181578076091158626.a n = A271209 n

end A271209

/-! ## A271209.P16591538381361570168

`A005408(A000217(n))*A100104(n)`
-/

namespace A271209.P16591538381361570168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000217 n).toNat * A100104 n

end

end A271209.P16591538381361570168

namespace A271209

/-- `A005408(A000217(n))*A100104(n)` -/
def P16591538381361570168.Spec : Prop :=
  ∀ n, P16591538381361570168.a n = A271209 n

end A271209

/-!
# A271210: Artiads (A001583) congruent to 1 mod 50 and for which 5 is a quintic residue.

The programs for A271210, there is no canonical definition to state claims against.
-/

/-! ## A271210.P13632101457513996514

`∩[A141927(n+1), A270798(n+1)]`
-/

namespace A271210.P13632101457513996514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271210.P13632101457513996514

/-!
# A271211: Composite integers sandwiched between primes p, q with q-p = 4.

The programs for A271211, the canonical program `A271211.P10364572807976757557` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271211 has offset 1).

The definition of A271211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271211.P10364572807976757557

`eq[4, A072680(n+2)]+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A271211

/-- `eq[4, A072680(n+2)]+2` -/
def P10364572807976757557.Spec : Prop :=
  ∀ n, (P10364572807976757557.a n : ℤ) = A271211 (n + 1)

theorem P10364572807976757557.correct : P10364572807976757557.Spec := by
  intro n
  simp only [A271211, Nat.add_sub_cancel]

end A271211

/-! ## A271211.P4726347488612228927

`eq[A010135(n)², A166597(n)]`
-/

namespace A271211.P4726347488612228927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010135 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271211.P4726347488612228927

namespace A271211

/-- `eq[A010135(n)², A166597(n)]` -/
def P4726347488612228927.Spec : Prop :=
  ∀ n, (P4726347488612228927.a n : ℤ) = A271211 (n + 1)

end A271211

/-! ## A271211.P12813203075009196147

`eq[4*A292438(n), A166597(n)]`
-/

namespace A271211.P12813203075009196147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A292438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271211.P12813203075009196147

namespace A271211

/-- `eq[4*A292438(n), A166597(n)]` -/
def P12813203075009196147.Spec : Prop :=
  ∀ n, (P12813203075009196147.a n : ℤ) = A271211 (n + 1)

end A271211

/-! ## A271211.P9517546151590796665

`eq[A214306(A166597(n)+2), A292438(n)]`
-/

namespace A271211.P9517546151590796665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214306 (A166597 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271211.P9517546151590796665

namespace A271211

/-- `eq[A214306(A166597(n)+2), A292438(n)]` -/
def P9517546151590796665.Spec : Prop :=
  ∀ n, (P9517546151590796665.a n : ℤ) = A271211 (n + 1)

end A271211

/-! ## A271211.P4464855233734583344

`eq[1, A275768(n+1-(n+1)%3)]`
-/

namespace A271211.P4464855233734583344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 (n + 1 - (n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271211.P4464855233734583344

namespace A271211

/-- `eq[1, A275768(n+1-(n+1)%3)]` -/
def P4464855233734583344.Spec : Prop :=
  ∀ n, (P4464855233734583344.a n : ℤ) = A271211 (n + 1)

end A271211

/-! ## A271211.P7338211180805223351

`eq[(A055671(n)+2)², A166597(n)]`
-/

namespace A271211.P7338211180805223351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055671 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271211.P7338211180805223351

namespace A271211

/-- `eq[(A055671(n)+2)², A166597(n)]` -/
def P7338211180805223351.Spec : Prop :=
  ∀ n, (P7338211180805223351.a n : ℤ) = A271211 (n + 1)

end A271211

/-! ## A271211.P13862732231458962720

`eq[(A007918(n)%3)², A166597(n)]`
-/

namespace A271211.P13862732231458962720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 n) 3 ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271211.P13862732231458962720

namespace A271211

/-- `eq[(A007918(n)%3)², A166597(n)]` -/
def P13862732231458962720.Spec : Prop :=
  ∀ n, (P13862732231458962720.a n : ℤ) = A271211 (n + 1)

end A271211

/-! ## A271211.P7712365081150750264

`eq[4, A166597(3*A002264(n+1))]`
-/

namespace A271211.P7712365081150750264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (3 * A002264 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271211.P7712365081150750264

namespace A271211

/-- `eq[4, A166597(3*A002264(n+1))]` -/
def P7712365081150750264.Spec : Prop :=
  ∀ n, (P7712365081150750264.a n : ℤ) = A271211 (n + 1)

end A271211

/-! ## A271211.P3479412594169314275

`eq[A004492(A166597(n)+2), A055671(n)]`
-/

namespace A271211.P3479412594169314275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A166597 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271211.P3479412594169314275

namespace A271211

/-- `eq[A004492(A166597(n)+2), A055671(n)]` -/
def P3479412594169314275.Spec : Prop :=
  ∀ n, (P3479412594169314275.a n : ℤ) = A271211 (n + 1)

end A271211

/-! ## A271211.P17017810427591404790

`A000720(A088987(n+1))`
-/

namespace A271211.P17017810427591404790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088987 (n + 1)).toNat

end

end A271211.P17017810427591404790

namespace A271211

/-- `A000720(A088987(n+1))` -/
def P17017810427591404790.Spec : Prop :=
  ∀ n, P17017810427591404790.a n = A271211 (n + 1)

end A271211

/-!
# A271212: a(n) = (2n-1)*a(n-1) + 2*(n-2)*a(n-2).

The programs for A271212, the canonical program `A271212.P10722566243893381516` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271212 has offset 0).

The definition of A271212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)+2*(n-2)*a(n-2)` (program `A271212.P10722566243893381516`, by `A271212.P10722566243893381516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271212.P10722566243893381516

`(2*n-1)*a(n-1)+2*(n-2)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271212

/-- `(2*n-1)*a(n-1)+2*(n-2)*a(n-2)` -/
def P10722566243893381516.Spec : Prop :=
  ∀ n, P10722566243893381516.a n = A271212 n

theorem P10722566243893381516.correct : P10722566243893381516.Spec := by
  intro n
  simp only [A271212]

end A271212

/-! ## A271212.P8293827249984182468

`A000354((n-1)%a(n-1))+A000354(n)` with `a(0)=1`
-/

namespace A271212.P8293827249984182468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000354 (Int.tmod ((n : ℤ) - 1) (a (n - 1))).toNat + A000354 n

end

end A271212.P8293827249984182468

namespace A271212

/-- `A000354((n-1)%a(n-1))+A000354(n)` -/
def P8293827249984182468.Spec : Prop :=
  ∀ n, P8293827249984182468.a n = A271212 n

end A271212

/-! ## A271212.P13276937546329511232

`A000165(n)-A319536(A028310(n))`
-/

namespace A271212.P13276937546329511232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n - A319536 (A028310 n).toNat

end

end A271212.P13276937546329511232

namespace A271212

/-- `A000165(n)-A319536(A028310(n))` -/
def P13276937546329511232.Spec : Prop :=
  ∀ n, P13276937546329511232.a n = A271212 n

end A271212

/-! ## A271212.P14916192704453812095

`2^n*A000142(n)-A319536(A028310(n))`
-/

namespace A271212.P14916192704453812095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000142 n - A319536 (A028310 n).toNat

end

end A271212.P14916192704453812095

namespace A271212

/-- `2^n*A000142(n)-A319536(A028310(n))` -/
def P14916192704453812095.Spec : Prop :=
  ∀ n, P14916192704453812095.a n = A271212 n

end A271212

/-! ## A271212.P15012306814966307110

`A000354((n-1)*a(A033999(n)²-1))+A000354(n)` with `a(0)=1`
-/

namespace A271212.P15012306814966307110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000354 (((n : ℤ) - 1) * a (A033999 n ^ 2 - 1).toNat).toNat + A000354 n

end

end A271212.P15012306814966307110

namespace A271212

/-- `A000354((n-1)*a(A033999(n)²-1))+A000354(n)` -/
def P15012306814966307110.Spec : Prop :=
  ∀ n, P15012306814966307110.a n = A271212 n

end A271212

/-! ## A271212.P9742089513087048670

`A000354(n-a(A020639(2*(n+1))-1)+1)+A000354(n)` with `a(0)=1, a(1)=2`
-/

namespace A271212.P9742089513087048670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000354 ((n : ℤ) - a (A020639 (2 * (n + 1)) - 1).toNat + 1).toNat + A000354 n

end

end A271212.P9742089513087048670

namespace A271212

/-- `A000354(n-a(A020639(2*(n+1))-1)+1)+A000354(n)` -/
def P9742089513087048670.Spec : Prop :=
  ∀ n, P9742089513087048670.a n = A271212 n

end A271212

/-!
# A271213: a(n) = 2^(n-2) * (n! + floor(n/2)!).

The programs for A271213, there is no canonical definition to state claims against.
-/

/-! ## A271213.P12366649609824712476

`∑[A008611(A116435(n+1))]`
-/

namespace A271213.P12366649609824712476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A116435 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271213.P12366649609824712476

/-! ## A271213.P12308604780724323248

`A244989(2*A120016(n+1))`
-/

namespace A271213.P12308604780724323248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244989 (2 * A120016 (n + 1)).toNat

end

end A271213.P12308604780724323248

/-!
# A271214: Number of reduced rearrangement patterns with n blocks.

The programs for A271214, there is no canonical definition to state claims against.
-/

/-! ## A271214.P13195963142402928139

`A064317(A094707(n²))`
-/

namespace A271214.P13195963142402928139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 (A094707 (n ^ 2)).toNat

end

end A271214.P13195963142402928139

/-! ## A271214.P4350798727731261842

`A195174(3*A184942(n))`
-/

namespace A271214.P4350798727731261842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (3 * A184942 n).toNat

end

end A271214.P4350798727731261842

/-!
# A271215: Number of loop-free assembly graphs with n rigid vertices.

The programs for A271215, there is no canonical definition to state claims against.
-/

/-! ## A271215.P9298310673683308850

`A336653(n)+a(n-1)` with `a(0)=1`
-/

namespace A271215.P9298310673683308850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A336653 n + a (n - 1)

end

end A271215.P9298310673683308850

/-! ## A271215.P9064276039198756546

`(A278990(n)+A271218(n))/2`
-/

namespace A271215.P9064276039198756546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278990 n + A271218 n : ℚ) / 2

end

end A271215.P9064276039198756546

/-! ## A271215.P14698689836271449654

`A004526(A278990(n)+A271218(n))`
-/

namespace A271215.P14698689836271449654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A278990 n + A271218 n).toNat

end

end A271215.P14698689836271449654

/-!
# A271216: a(n) = 2^n * floor(n/2)!

The programs for A271216, the canonical program `A271216.P5674590348362660801` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271216 has offset 0).

The definition of A271216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271216.P5674590348362660801

`2^n*floor(n/2)!`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271216

/-- `2^n*floor(n/2)!` -/
def P5674590348362660801.Spec : Prop :=
  ∀ n, (P5674590348362660801.a n : ℤ) = A271216 n

theorem P5674590348362660801.correct : P5674590348362660801.Spec := by
  intro n
  simp only [A271216]

end A271216

/-! ## A271216.P8780074129976078484

`floor(n/2)!/2^-n`
-/

namespace A271216.P8780074129976078484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A271216.P8780074129976078484

namespace A271216

/-- `floor(n/2)!/2^-n` -/
def P8780074129976078484.Spec : Prop :=
  ∀ n, P8780074129976078484.a n = (A271216 n : ℚ)

theorem P8780074129976078484.correct : P8780074129976078484.Spec := by
  intro n
  simp only [A271216, Nat.add_sub_cancel, A271216.P8780074129976078484.a, A271216.P5674590348362660801.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A271216

/-! ## A271216.P6004129108112075808

`2^(log2(floor(n/2)!)+n)`
-/

namespace A271216.P6004129108112075808
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℝ) + (n : ℝ))

end

end A271216.P6004129108112075808

namespace A271216

/-- `2^(log2(floor(n/2)!)+n)` -/
def P6004129108112075808.Spec : Prop :=
  ∀ n, P6004129108112075808.a n = (A271216 n : ℝ)

end A271216

/-! ## A271216.P15577869027414241059

`∏[2*floor(n/a(n-1))]` with `a(0)=1`
-/

namespace A271216.P15577869027414241059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A271216.P15577869027414241059

namespace A271216

/-- `∏[2*floor(n/a(n-1))]` -/
def P15577869027414241059.Spec : Prop :=
  ∀ n, P15577869027414241059.a n = A271216 n

end A271216

/-! ## A271216.P4038370710814930405

`and(2*n, -3)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A271216.P4038370710814930405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.land (2 * n : ℤ) (-3) * a (n - 2)

end

end A271216.P4038370710814930405

namespace A271216

/-- `and(2*n, -3)*a(n-2)` -/
def P4038370710814930405.Spec : Prop :=
  ∀ n, P4038370710814930405.a n = A271216 n

end A271216

/-! ## A271216.P15643744169716124060

`4*a(n-2)*floor(n/2)` with `a(0)=1, a(1)=2`
-/

namespace A271216.P15643744169716124060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 2) * ⌊(n : ℚ) / 2⌋

end

end A271216.P15643744169716124060

namespace A271216

/-- `4*a(n-2)*floor(n/2)` -/
def P15643744169716124060.Spec : Prop :=
  ∀ n, P15643744169716124060.a n = A271216 n

end A271216

/-! ## A271216.P15067349479893877125

`2*(n-n%2)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A271216.P15067349479893877125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (((n : ℤ) - ((n % 2 : ℕ) : ℤ)) * a (n - 2))

end

end A271216.P15067349479893877125

namespace A271216

/-- `2*(n-n%2)*a(n-2)` -/
def P15067349479893877125.Spec : Prop :=
  ∀ n, P15067349479893877125.a n = A271216 n

end A271216

/-! ## A271216.P16144843356459825936

`(2*n-2*and(1, n))*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A271216.P16144843356459825936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((2 * n : ℤ) - (2 * Nat.land 1 n : ℤ)) * a (n - 2)

end

end A271216.P16144843356459825936

namespace A271216

/-- `(2*n-2*and(1, n))*a(n-2)` -/
def P16144843356459825936.Spec : Prop :=
  ∀ n, P16144843356459825936.a n = A271216 n

end A271216

/-! ## A271216.P9120816162300439025

`a(n-1)+lcm(2, 1-n)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A271216.P9120816162300439025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.lcm 2 (1 - (n : ℤ)) * a (n - 2)

end

end A271216.P9120816162300439025

namespace A271216

/-- `a(n-1)+lcm(2, 1-n)*a(n-2)` -/
def P9120816162300439025.Spec : Prop :=
  ∀ n, (P9120816162300439025.a n : ℤ) = A271216 n

end A271216

/-! ## A271216.P5520026702585971785

`2^n*A081123(n)`
-/

namespace A271216.P5520026702585971785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081123 n

end

end A271216.P5520026702585971785

namespace A271216

/-- `2^n*A081123(n)` -/
def P5520026702585971785.Spec : Prop :=
  ∀ n, P5520026702585971785.a n = A271216 n

end A271216

/-! ## A271216.P5549664285163979567

`A037223(n)*A060546(n)`
-/

namespace A271216.P5549664285163979567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 n * A060546 n

end

end A271216.P5549664285163979567

namespace A271216

/-- `A037223(n)*A060546(n)` -/
def P5549664285163979567.Spec : Prop :=
  ∀ n, P5549664285163979567.a n = A271216 n

end A271216

/-! ## A271216.P18293021129108518480

`A081123(n)*A106624(2*n)`
-/

namespace A271216.P18293021129108518480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n * A106624 (2 * n)

end

end A271216.P18293021129108518480

namespace A271216

/-- `A081123(n)*A106624(2*n)` -/
def P18293021129108518480.Spec : Prop :=
  ∀ n, P18293021129108518480.a n = A271216 n

end A271216

/-! ## A271216.P16210527500048439706

`A037223(n+1)/A081123(n+1)*A037223(n)`
-/

namespace A271216.P16210527500048439706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037223 (n + 1) : ℚ) / (A081123 (n + 1) : ℚ) * (A037223 n : ℚ)

end

end A271216.P16210527500048439706

namespace A271216

/-- `A037223(n+1)/A081123(n+1)*A037223(n)` -/
def P16210527500048439706.Spec : Prop :=
  ∀ n, P16210527500048439706.a n = (A271216 n : ℚ)

end A271216

/-!
# A271217: Number of symmetric reduced rearrangement maps.

The programs for A271217, there is no canonical definition to state claims against.
-/

/-! ## A271217.P8529765201068970651

`A351006(or(gcd(n, n%2)+1, A236559(n)))`
-/

namespace A271217.P8529765201068970651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (Int.lor (Nat.gcd n (n % 2) + 1 : ℤ) (A236559 n)).toNat

end

end A271217.P8529765201068970651

/-! ## A271217.P13438761250038151418

`A351006(or(A141310(n), A236559(n)))`
-/

namespace A271217.P13438761250038151418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (Int.lor (A141310 n) (A236559 n)).toNat

end

end A271217.P13438761250038151418

/-! ## A271217.P16782478576851628208

`A351006(or(A007947(n+1), A236559(n)))`
-/

namespace A271217.P16782478576851628208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (Int.lor (A007947 (n + 1)) (A236559 n)).toNat

end

end A271217.P16782478576851628208

/-!
# A271218: Number of symmetric linked diagrams with n links and no simple link.

The programs for A271218, there is no canonical definition to state claims against.
-/

/-! ## A271218.P13279766396794485197

`2*A271215(n)-A278990(n)`
-/

namespace A271218.P13279766396794485197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271215 n - A278990 n

end

end A271218.P13279766396794485197

/-! ## A271218.P8514273025869630153

`Δ[A264749(A276852(n))]`
-/

namespace A271218.P8514273025869630153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A276852 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271218.P8514273025869630153

/-! ## A271218.P12936237760666818432

`A357627(A202592(n))+A253829(n)`
-/

namespace A271218.P12936237760666818432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357627 (A202592 n).toNat + A253829 n

end

end A271218.P12936237760666818432

/-!
# A271220: Concatenate sum of digits of previous term and product of digits of previous term, starting with 6.

The programs for A271220, there is no canonical definition to state claims against.
-/

/-! ## A271220.P15518896420776663814

`A380873(a(n-1))` with `a(0)=6`
-/

namespace A271220.P15518896420776663814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A380873 (a (n - 1)).toNat

end

end A271220.P15518896420776663814

/-!
# A271221: Smallest Fermat pseudoprime k to all bases b = 2, 3, 4, ..., n.

The programs for A271221, there is no canonical definition to state claims against.
-/

/-! ## A271221.P14241668017440272939

`A083876(A001462(n+1))`
-/

namespace A271221.P14241668017440272939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (A001462 (n + 1)).toNat

end

end A271221.P14241668017440272939

/-! ## A271221.P17586976731909856325

`A083876(A055086(n+1))`
-/

namespace A271221.P17586976731909856325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (A055086 (n + 1)).toNat

end

end A271221.P17586976731909856325

/-! ## A271221.P5831945558956548542

`A083876(A069924(n+1))`
-/

namespace A271221.P5831945558956548542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (A069924 (n + 1)).toNat

end

end A271221.P5831945558956548542

/-! ## A271221.P15968940895072681928

`A083876(A085089(n+1))`
-/

namespace A271221.P15968940895072681928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (A085089 (n + 1)).toNat

end

end A271221.P15968940895072681928

/-! ## A271221.P2405762161404900605

`A083876(A228720(n+1))`
-/

namespace A271221.P2405762161404900605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (A228720 (n + 1)).toNat

end

end A271221.P2405762161404900605

/-!
# A271222: One of the two successive approximations up to 3^n for the 3-adic integer sqrt(-2). These are the numbers congruent to 2 mod 3 (except for the initial 0).

The programs for A271222, there is no canonical definition to state claims against.
-/

/-! ## A271222.P9754318752482148584

`(2*A309476(n))%A000244(n)`
-/

namespace A271222.P9754318752482148584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A309476 n) (A000244 n)

end

end A271222.P9754318752482148584

/-! ## A271222.P16395671250864053201

`A000244(n)-A268924(A028310(n))`
-/

namespace A271222.P16395671250864053201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A268924 (A028310 n).toNat

end

end A271222.P16395671250864053201

/-! ## A271222.P11062757474308284751

`A000244(n)-A268924(A000007(n)+n)`
-/

namespace A271222.P11062757474308284751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A268924 (A000007 n + (n : ℤ)).toNat

end

end A271222.P11062757474308284751

/-! ## A271222.P1277377394594497393

`A309476(n)+A309477(n)-A268924(n)`
-/

namespace A271222.P1277377394594497393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309476 n + (A309477 n - A268924 n)

end

end A271222.P1277377394594497393

/-! ## A271222.P13073499290993192227

`A000244(n)-A000007(n)-A268924(n)`
-/

namespace A271222.P13073499290993192227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A000007 n - A268924 n

end

end A271222.P13073499290993192227

/-!
# A271223: Digits of one of the two 3-adic integers sqrt(-2).

The programs for A271223, there is no canonical definition to state claims against.
-/

/-! ## A271223.P3815300181096690412

`A054977(n)+1-A271224(n)`
-/

namespace A271223.P3815300181096690412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (1 - A271224 n)

end

end A271223.P3815300181096690412

/-! ## A271223.P9557935156069257604

`A309474(n)+A309475(n)-A271224(n)`
-/

namespace A271223.P9557935156069257604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309474 n + (A309475 n - A271224 n)

end

end A271223.P9557935156069257604

/-! ## A271223.P5591238603907136428

`A271224(A271224(n)+A047769(a(n-1)+1))` with `a(0)=1`
-/

namespace A271223.P5591238603907136428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271224 (A271224 n + A047769 (a (n - 1) + 1).toNat).toNat

end

end A271223.P5591238603907136428

/-! ## A271223.P13299211304530564013

`A005843(A263489(a(n-1)+2))-A271224(n)` with `a(0)=1`
-/

namespace A271223.P13299211304530564013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (A263489 (a (n - 1) + 2).toNat).toNat - A271224 n

end

end A271223.P13299211304530564013

/-! ## A271223.P10803043859304576614

`A271224(A271224(n)/A263489(a(n-1)+2))` with `a(0)=1`
-/

namespace A271223.P10803043859304576614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271224 (SequenceMachineLib.roundAway ((A271224 n : ℚ) / (A263489 (a (n - 1) + 2).toNat : ℚ))).toNat

end

end A271223.P10803043859304576614

/-! ## A271223.P6551074454060458755

`A020639(A000040(n+1)+1)-A271224(n)`
-/

namespace A271223.P6551074454060458755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) + 1).toNat - A271224 n

end

end A271223.P6551074454060458755

/-! ## A271223.P15786213386234358045

`p?[A321097(n)-7]-A271224(n)`
-/

namespace A271223.P15786213386234358045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321097 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271224 n

end

end A271223.P15786213386234358045

/-! ## A271223.P14531957123556231385

`A178815(n+1)-A271224(n)`
-/

namespace A271223.P14531957123556231385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1) - A271224 n

end

end A271223.P14531957123556231385

/-!
# A271224: Digits of one of the two 3-adic integers sqrt(-2). Here the sequence with first digit 2.

The programs for A271224, there is no canonical definition to state claims against.
-/

/-! ## A271224.P8691500050258798069

`a(A271223(n))` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A271224.P8691500050258798069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n a =>
  a (A271223 n).toNat

end

end A271224.P8691500050258798069

/-! ## A271224.P4515259735370911833

`A028310(n)+2-A271223(n)-n`
-/

namespace A271224.P4515259735370911833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 2 - A271223 n - (n : ℤ)

end

end A271224.P4515259735370911833

/-! ## A271224.P4349369008260306271

`C(A167865(n), n)+2-A271223(n)`
-/

namespace A271224.P4349369008260306271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A167865 n).toNat n + 2 : ℤ) - A271223 n

end

end A271224.P4349369008260306271

/-! ## A271224.P12975005214958135530

`A309474(n)+A309475(n)-A271223(n)`
-/

namespace A271224.P12975005214958135530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309474 n + (A309475 n - A271223 n)

end

end A271224.P12975005214958135530

/-! ## A271224.P3459191716517047613

`A020639(A008864(n+1))-A271223(n)`
-/

namespace A271224.P3459191716517047613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008864 (n + 1)).toNat - A271223 n

end

end A271224.P3459191716517047613

/-! ## A271224.P14306881979460698160

`A020639(A000040(n+1)+1)-A271223(n)`
-/

namespace A271224.P14306881979460698160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) + 1).toNat - A271223 n

end

end A271224.P14306881979460698160

/-! ## A271224.P5525056832985416575

`p?[3-A034460(n+1)]-A271223(n)`
-/

namespace A271224.P5525056832985416575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A034460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271223 n

end

end A271224.P5525056832985416575

/-! ## A271224.P10853326236082409193

`A000034(A004277(n))+1-A271223(n)`
-/

namespace A271224.P10853326236082409193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004277 n).toNat + (1 - A271223 n)

end

end A271224.P10853326236082409193

/-! ## A271224.P8695000280114939163

`Δ[A271222(n)]/3^n`
-/

namespace A271224.P8695000280114939163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271222 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (3 ^ n : ℚ)

end

end A271224.P8695000280114939163

/-! ## A271224.P10002584464550640934

`A178815(n+1)-A271223(n)`
-/

namespace A271224.P10002584464550640934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1) - A271223 n

end

end A271224.P10002584464550640934

/-!
# A271225: a(n) = (A268924(n)^2 + 2)/3^n, n >= 0.

The programs for A271225, there is no canonical definition to state claims against.
-/

/-! ## A271225.P12968053835301098144

`(A268924(n)²+2)/3^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271225.P12968053835301098144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268924 n ^ 2 + 2 : ℚ) / (3 ^ n : ℚ)

end

end A271225.P12968053835301098144

/-! ## A271225.P8910584795707045998

`A268924(n)+A271226(n)-A271222(n)`
-/

namespace A271225.P8910584795707045998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268924 n + (A271226 n - A271222 n)

end

end A271225.P8910584795707045998

/-!
# A271226: a(n) = (A271222(n)^2 + 2)/3^n, n >= 0.

The programs for A271226, there is no canonical definition to state claims against.
-/

/-! ## A271226.P13682095130084177903

`(A271222(n)²+2)/3^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271226.P13682095130084177903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271222 n ^ 2 + 2 : ℚ) / (3 ^ n : ℚ)

end

end A271226.P13682095130084177903

/-! ## A271226.P985966607748038280

`A271222(n)+A271225(n)-A268924(n)`
-/

namespace A271226.P985966607748038280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271222 n + (A271225 n - A268924 n)

end

end A271226.P985966607748038280

/-!
# A271227: Number of solutions to y^2 == x^3 + 17 (mod p) as p runs through the primes.

The programs for A271227, there is no canonical definition to state claims against.
-/

/-! ## A271227.P17846278142036477977

`Δ[A007504(n)]-A271228(n+1)`
-/

namespace A271227.P17846278142036477977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271228 (n + 1)

end

end A271227.P17846278142036477977

/-! ## A271227.P6162232421922673056

`A000040(n+1)-A271228(n+1)`
-/

namespace A271227.P6162232421922673056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A271228 (n + 1)

end

end A271227.P6162232421922673056

/-! ## A271227.P17286075170149541137

`p?[A074946(n+1)]-A271228(n+1)`
-/

namespace A271227.P17286075170149541137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271228 (n + 1)

end

end A271227.P17286075170149541137

/-! ## A271227.P17929440976938997999

`p?[A085790(n+1)]-A271228(n+1)`
-/

namespace A271227.P17929440976938997999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271228 (n + 1)

end

end A271227.P17929440976938997999

/-! ## A271227.P10414753470147233118

`p?[A060872(n+1)]-A271228(n+1)`
-/

namespace A271227.P10414753470147233118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271228 (n + 1)

end

end A271227.P10414753470147233118

/-! ## A271227.P15770384612653201978

`p?[A133223(n+1)]-A271228(n+1)`
-/

namespace A271227.P15770384612653201978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271228 (n + 1)

end

end A271227.P15770384612653201978

/-! ## A271227.P9787292507268462406

`p?[A097362(n+1)]-A271228(n+1)`
-/

namespace A271227.P9787292507268462406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271228 (n + 1)

end

end A271227.P9787292507268462406

/-! ## A271227.P5496999204424916887

`p?[A255408(n+1)+1]-A271228(n+1)`
-/

namespace A271227.P5496999204424916887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271228 (n + 1)

end

end A271227.P5496999204424916887

/-! ## A271227.P2059537128429595056

`p?[A255408(n+1)]-A271228(n+1)`
-/

namespace A271227.P2059537128429595056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271228 (n + 1)

end

end A271227.P2059537128429595056

/-!
# A271228: P-defects p - N(p) of the elliptic curve y^2 = x^3 + 17 for primes p, where N(p) is the number of solutions modulo prime p.

The programs for A271228, there is no canonical definition to state claims against.
-/

/-! ## A271228.P18393880818584807703

`A000040(n+1)-A271227(n+1)`
-/

namespace A271228.P18393880818584807703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A271227 (n + 1)

end

end A271228.P18393880818584807703

/-! ## A271228.P6794713435357450838

`p?[A000961(n+1)]-A271227(n+1)`
-/

namespace A271228.P6794713435357450838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271227 (n + 1)

end

end A271228.P6794713435357450838

/-! ## A271228.P7289526005560344003

`p?[A260442(n)]-A271227(n+1)`
-/

namespace A271228.P7289526005560344003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271227 (n + 1)

end

end A271228.P7289526005560344003

/-! ## A271228.P134504115804240726

`p?[(n+1)*A295657(n+1)]-A271227(n+1)`
-/

namespace A271228.P134504115804240726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A295657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271227 (n + 1)

end

end A271228.P134504115804240726

/-! ## A271228.P13716872288610113692

`p?[A000037(n+1)]-A271227(n+1)`
-/

namespace A271228.P13716872288610113692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271227 (n + 1)

end

end A271228.P13716872288610113692

/-! ## A271228.P3954682247688676448

`p?[A014681(n)]-A271227(n+1)`
-/

namespace A271228.P3954682247688676448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271227 (n + 1)

end

end A271228.P3954682247688676448

/-!
# A271229: Number of solutions of the congruence y^2 == x^3 + x^2 + x (mod p) as p runs through the primes.

The programs for A271229, there is no canonical definition to state claims against.
-/

/-! ## A271229.P13845324977401656733

`Δ[A007504(n)]-A271230(n+1)`
-/

namespace A271229.P13845324977401656733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271230 (n + 1)

end

end A271229.P13845324977401656733

/-! ## A271229.P12166356353612158727

`A000040(n+1)-A271230(n+1)`
-/

namespace A271229.P12166356353612158727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A271230 (n + 1)

end

end A271229.P12166356353612158727

/-! ## A271229.P12438443679351236273

`A008578(n+2)-A271230(n+1)`
-/

namespace A271229.P12438443679351236273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A271230 (n + 1)

end

end A271229.P12438443679351236273

/-! ## A271229.P6377553469630046809

`p?[A163753(n+1)]-A271230(n+1)`
-/

namespace A271229.P6377553469630046809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271230 (n + 1)

end

end A271229.P6377553469630046809

/-! ## A271229.P220861047372553285

`A000040(n+1)-A271231(A008578(n+2))`
-/

namespace A271229.P220861047372553285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A271231 (A008578 (n + 2)).toNat

end

end A271229.P220861047372553285

/-! ## A271229.P3314976454792822592

`A182986(n+2)-A271231(A182986(n+2))`
-/

namespace A271229.P3314976454792822592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A271231 (A182986 (n + 2)).toNat

end

end A271229.P3314976454792822592

/-! ## A271229.P15632258133151365343

`p?[A142150(n)]-A271230(n+1)`
-/

namespace A271229.P15632258133151365343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A271230 (n + 1)

end

end A271229.P15632258133151365343

/-!
# A271230: P-defects p - N(p) of the congruence y^2 == x^3 + x^2 + x (mod p) for primes p, where N(p) is the number of solutions.

The programs for A271230, there is no canonical definition to state claims against.
-/

/-! ## A271230.P11561088740091501802

`A000040(n+1)-A271229(n+1)`
-/

namespace A271230.P11561088740091501802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A271229 (n + 1)

end

end A271230.P11561088740091501802

/-! ## A271230.P18270585576120376345

`A271231(A000040(n+1))`
-/

namespace A271230.P18270585576120376345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (A000040 (n + 1)).toNat

end

end A271230.P18270585576120376345

/-! ## A271230.P18281243258864987696

`A271231(A171577(n+1))`
-/

namespace A271230.P18281243258864987696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (A171577 (n + 1)).toNat

end

end A271230.P18281243258864987696

/-! ## A271230.P10501848253431689279

`A271231(A008578(n+2))`
-/

namespace A271230.P10501848253431689279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (A008578 (n + 2)).toNat

end

end A271230.P10501848253431689279

/-! ## A271230.P10464847076948389019

`A271231(A182986(n+2))`
-/

namespace A271230.P10464847076948389019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (A182986 (n + 2)).toNat

end

end A271230.P10464847076948389019

/-! ## A271230.P14848134416321535598

`A271231(record[A006530(n+2)])`
-/

namespace A271230.P14848134416321535598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271230.P14848134416321535598

/-! ## A271230.P13007571097933421060

`A271231(record[A014963(n+2)])`
-/

namespace A271230.P13007571097933421060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271230.P13007571097933421060

/-! ## A271230.P113290406490723702

`A271231(record[A020639(n+2)])`
-/

namespace A271230.P113290406490723702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271230.P113290406490723702

/-! ## A271230.P4124203846054471141

`A271231(A001748(n+1))`
-/

namespace A271230.P4124203846054471141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (A001748 (n + 1)).toNat

end

end A271230.P4124203846054471141

/-! ## A271230.P9371731690058655171

`A271231(A112773(n+2))`
-/

namespace A271230.P9371731690058655171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (A112773 (n + 2)).toNat

end

end A271230.P9371731690058655171

/-!
# A271231: Expansion of the modular cusp form ( eta(q^4) * eta(q^12) )^4 / ( eta(q^2) * eta(q^6) * eta(q^8) * eta(q^24) ), where eta is Dedekind's eta function.

The programs for A271231, there is no canonical definition to state claims against.
-/

/-! ## A271231.P9592042422126688456

`∑{d}[n+1, A063524(#-1)*A159819((n+1)/#-1)]`
-/

namespace A271231.P9592042422126688456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A159819 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A271231.P9592042422126688456

/-! ## A271231.P15650585947486091763

`A000035(n)*A159819(A004524(n))`
-/

namespace A271231.P15650585947486091763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A159819 (A004524 n).toNat

end

end A271231.P15650585947486091763

/-! ## A271231.P5299763949684887918

`A000035(n)*A159819(A004526(n))`
-/

namespace A271231.P5299763949684887918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A159819 (A004526 n).toNat

end

end A271231.P5299763949684887918

/-! ## A271231.P8494646594904948564

`A000035(n)*A159819(A028242(n))`
-/

namespace A271231.P8494646594904948564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A159819 (A028242 n).toNat

end

end A271231.P8494646594904948564

/-! ## A271231.P7366401571811950354

`A000035(n)*A159819(A123108(n))`
-/

namespace A271231.P7366401571811950354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A159819 (A123108 n).toNat

end

end A271231.P7366401571811950354

/-! ## A271231.P1273772915556206602

`A000035(n)*A159819(A279119(n+1))`
-/

namespace A271231.P1273772915556206602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A159819 (A279119 (n + 1)).toNat

end

end A271231.P1273772915556206602

/-! ## A271231.P1470400597321141955

`A159819(A032766(n))%Δ[A101881(n)]`
-/

namespace A271231.P1470400597321141955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159819 (A032766 n).toNat) (f1 (n + 1) - f1 n)

end

end A271231.P1470400597321141955

/-!
# A271232: Composite integers sandwiched between primes p, q with q-p = 6.

The programs for A271232, there is no canonical definition to state claims against.
-/

/-! ## A271232.P4816454724076136374

`eq[7, A030664(n)%12]`
-/

namespace A271232.P4816454724076136374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030664 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271232.P4816454724076136374

/-! ## A271232.P16744279029807503042

`eq[6, A072680(n+2)]+2`
-/

namespace A271232.P16744279029807503042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A271232.P16744279029807503042

/-! ## A271232.P15056617223842110318

`eq[6, A049087(A030664(n))]`
-/

namespace A271232.P15056617223842110318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (A030664 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271232.P15056617223842110318

/-! ## A271232.P500516502464536193

`eq[6, A072680(A233583(n+1))]`
-/

namespace A271232.P500516502464536193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271232.P500516502464536193

/-! ## A271232.P8213426386329516516

`A057544(eq[6, A072680(n+2)])`
-/

namespace A271232.P8213426386329516516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271232.P8213426386329516516

/-! ## A271232.P18155615071517372614

`A171463(eq[6, A072680(n+2)])`
-/

namespace A271232.P18155615071517372614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271232.P18155615071517372614

/-! ## A271232.P557222842228404296

`A243427(eq[6, A072680(n+2)])`
-/

namespace A271232.P557222842228404296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271232.P557222842228404296

/-! ## A271232.P14467196226937376602

`eq[6, A007918(n)-A136548(n+1)]`
-/

namespace A271232.P14467196226937376602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - A136548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271232.P14467196226937376602

/-! ## A271232.P10327768159442563342

`eq[A040006(A007920(n)), A166597(n)]`
-/

namespace A271232.P10327768159442563342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A007920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271232.P10327768159442563342

/-! ## A271232.P1469208347673414351

`eq[A004492(A166597(n)), A055671(n)]`
-/

namespace A271232.P1469208347673414351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A166597 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271232.P1469208347673414351

/-!
# A271233: Composite integers sandwiched between primes p, q with q-p = 8.

The programs for A271233, there is no canonical definition to state claims against.
-/

/-! ## A271233.P1590383628630822118

`eq[8, A072680(A233583(n+1))]`
-/

namespace A271233.P1590383628630822118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271233.P1590383628630822118

/-!
# A271234: 2^(p-1) modulo p^3, where p = prime(n).

The programs for A271234, there is no canonical definition to state claims against.
-/

/-! ## A271234.P12998790119521080204

`A000079(A006093(n+1))%A030078(n+1)`
-/

namespace A271234.P12998790119521080204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A006093 (n + 1)).toNat) (A030078 (n + 1))

end

end A271234.P12998790119521080204

/-! ## A271234.P404405564399007415

`A011782(A000040(n+1))%A030078(n+1)`
-/

namespace A271234.P404405564399007415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (A000040 (n + 1)).toNat) (A030078 (n + 1))

end

end A271234.P404405564399007415

/-! ## A271234.P17753000273967177718

`A166444(A008864(n+1))%A030078(n+1)`
-/

namespace A271234.P17753000273967177718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166444 (A008864 (n + 1)).toNat) (A030078 (n + 1))

end

end A271234.P17753000273967177718

/-! ## A271234.P3430035306818127682

`A131577(A008578(n+2))%A030078(n+1)`
-/

namespace A271234.P3430035306818127682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (A008578 (n + 2)).toNat) (A030078 (n + 1))

end

end A271234.P3430035306818127682

/-! ## A271234.P11989265201223206605

`A000079(record[A000010(n+1)])%A030078(n+1)`
-/

namespace A271234.P11989265201223206605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A030078 (n + 1))

end

end A271234.P11989265201223206605

/-!
# A271235: G.f. equals the square root of P(4*x), where P(x) is the g.f. of the partition numbers (A000041).

The programs for A271235, there is no canonical definition to state claims against.
-/

/-! ## A271235.P11860140496102611637

`A001316(n)*A061159(n)`
-/

namespace A271235.P11860140496102611637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A061159 n

end

end A271235.P11860140496102611637

/-! ## A271235.P3792516119889359961

`sqrt(A102376(n))*A061159(n)`
-/

namespace A271235.P3792516119889359961
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 n : ℝ) * (A061159 n : ℝ)

end

end A271235.P3792516119889359961

/-! ## A271235.P6848765635017960760

`A000079(A000120(n))*A061159(n)`
-/

namespace A271235.P6848765635017960760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n).toNat * A061159 n

end

end A271235.P6848765635017960760

/-! ## A271235.P2856105816462193482

`A061142(A332815(n))*A061159(n)`
-/

namespace A271235.P2856105816462193482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A332815 n).toNat * A061159 n

end

end A271235.P2856105816462193482

/-! ## A271235.P12191717671563564916

`lcm(A001316(A005843(n)), A061159(n))`
-/

namespace A271235.P12191717671563564916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A005843 n).toNat) (A061159 n)

end

end A271235.P12191717671563564916

/-! ## A271235.P16240972793968917269

`A000005(A019565(n))*A061159(n)`
-/

namespace A271235.P16240972793968917269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 n).toNat * A061159 n

end

end A271235.P16240972793968917269

/-!
# A271236: G.f.: Product_{k>=1} 1/(1 - (9*x)^k)^(1/3).

The programs for A271236, there is no canonical definition to state claims against.
-/

/-! ## A271236.P16121847379999155739

`A061160(n)*A125824(n)`
-/

namespace A271236.P16121847379999155739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061160 n * A125824 n

end

end A271236.P16121847379999155739

/-! ## A271236.P11354116909233589221

`A017913(A230641(n))*A061160(n)`
-/

namespace A271236.P11354116909233589221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A230641 n).toNat * A061160 n

end

end A271236.P11354116909233589221

/-! ## A271236.P27583940065563674

`lcm(A061160(A028310(n)), A125824(n))`
-/

namespace A271236.P27583940065563674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061160 (A028310 n).toNat) (A125824 n)

end

end A271236.P27583940065563674

/-!
# A271237: Number of ordered ways to write n as u^3 + 2*v^3 + 3*x^3 + 4*y^3 + 5*z^3, where u, v, x, y and z are nonnegative integers.

The programs for A271237, there is no canonical definition to state claims against.
-/

/-! ## A271237.P803021839217297223

`A342749(or(A025581(n), A313145(n)))`
-/

namespace A271237.P803021839217297223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342749 (Int.lor (A025581 n) (A313145 n)).toNat

end

end A271237.P803021839217297223

/-!
# A271240: Number of nXnXn triangular 0..2 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all different.

The programs for A271240, there is no canonical definition to state claims against.
-/

/-! ## A271240.P10133884751906904998

`A271246(∑[n+2])`
-/

namespace A271240.P10133884751906904998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271240.P10133884751906904998

/-!
# A271241: Number of n X n X n triangular 0..3 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2 X 2 X 2 triangle having values all different.

The programs for A271241, there is no canonical definition to state claims against.
-/

/-! ## A271241.P5668049962011195066

`A271246(∑[n+3]+1)`
-/

namespace A271241.P5668049962011195066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271241.P5668049962011195066

/-!
# A271242: Number of nXnXn triangular 0..4 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all different.

The programs for A271242, there is no canonical definition to state claims against.
-/

/-! ## A271242.P2768859226323868175

`A271246(A141214(n+1))`
-/

namespace A271242.P2768859226323868175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (A141214 (n + 1)).toNat

end

end A271242.P2768859226323868175

/-! ## A271242.P15609485360505440908

`A271246(A155212(n)+5)`
-/

namespace A271242.P15609485360505440908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (A155212 n + 5).toNat

end

end A271242.P15609485360505440908

/-! ## A271242.P9004705586091956218

`A271246(eq[2, A152157(n)])`
-/

namespace A271242.P9004705586091956218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271242.P9004705586091956218

/-! ## A271242.P6255950167760177440

`A271246(eq[3, A193592(n)])`
-/

namespace A271242.P6255950167760177440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271242.P6255950167760177440

/-! ## A271242.P3306867547350969241

`A271246(A052905(n+1)+2)`
-/

namespace A271242.P3306867547350969241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (A052905 (n + 1) + 2).toNat

end

end A271242.P3306867547350969241

/-!
# A271243: Number of nXnXn triangular 0..5 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all different.

The programs for A271243, there is no canonical definition to state claims against.
-/

/-! ## A271243.P12501545550054610098

`A271246(eq[3, A152157(n)])`
-/

namespace A271243.P12501545550054610098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271243.P12501545550054610098

/-! ## A271243.P10955235714799686595

`A271246(eq[4, A193592(n)])`
-/

namespace A271243.P10955235714799686595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271243.P10955235714799686595

/-! ## A271243.P14511176239813377730

`A271246(eq[4, A049286(n+1)])`
-/

namespace A271243.P14511176239813377730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271243.P14511176239813377730

/-! ## A271243.P6729747717955979202

`A271246(eq[5, A200370(n+1)])`
-/

namespace A271243.P6729747717955979202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271243.P6729747717955979202

/-! ## A271243.P12134465076386104567

`A271246(eq[6, A185782(n+1)])`
-/

namespace A271243.P12134465076386104567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271243.P12134465076386104567

/-!
# A271244: Number of nXnXn triangular 0..6 arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all different.

The programs for A271244, there is no canonical definition to state claims against.
-/

/-! ## A271244.P16471115559636401006

`A271246(A052905(n+3))`
-/

namespace A271244.P16471115559636401006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (A052905 (n + 3)).toNat

end

end A271244.P16471115559636401006

/-! ## A271244.P2983925391252472468

`A271246(eq[3, A219347(n)])`
-/

namespace A271244.P2983925391252472468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271244.P2983925391252472468

/-! ## A271244.P15201622403688089835

`A271246(eq[5, A152157(n)])`
-/

namespace A271244.P15201622403688089835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271244.P15201622403688089835

/-! ## A271244.P1121755819861001362

`A271246(eq[5, A193592(n)])`
-/

namespace A271244.P1121755819861001362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271244.P1121755819861001362

/-!
# A271246: T(n,k)=Number of nXnXn triangular 0..k arrays with new values introduced in sequential zero-upwards order and exactly one inverted 2x2x2 triangle having values all different.

The programs for A271246, there is no canonical definition to state claims against.
-/

/-! ## A271246.P8445079835223940834

`A382076(A276999(n+1))`
-/

namespace A271246.P8445079835223940834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382076 (A276999 (n + 1)).toNat

end

end A271246.P8445079835223940834

/-! ## A271246.P1083007420856973025

`A037901(A156888(n))^3`
-/

namespace A271246.P1083007420856973025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037901 (A156888 n).toNat ^ 3

end

end A271246.P1083007420856973025

/-! ## A271246.P11488556771765813738

`A256505(A008370(n))^3`
-/

namespace A271246.P11488556771765813738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256505 (A008370 n).toNat ^ 3

end

end A271246.P11488556771765813738

/-! ## A271246.P4201959488772611575

`A151755(A120919(n))^3`
-/

namespace A271246.P4201959488772611575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (A120919 n).toNat ^ 3

end

end A271246.P4201959488772611575

/-! ## A271246.P9308919601456171666

`A371737(A145080(n))^3`
-/

namespace A271246.P9308919601456171666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371737 (A145080 n).toNat ^ 3

end

end A271246.P9308919601456171666

/-!
# A271248: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 315", based on the 5-celled von Neumann neighborhood.

The programs for A271248, there is no canonical definition to state claims against.
-/

/-! ## A271248.P429388289377013724

`∑[A266206(n)]`
-/

namespace A271248.P429388289377013724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271248.P429388289377013724

/-! ## A271248.P18022599173227443647

`A266206(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271248.P18022599173227443647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266206 n + a (A023443 n).toNat

end

end A271248.P18022599173227443647

/-! ## A271248.P14762659574814720027

`∑[∑[A271249(n)]+1-A271249(n)]`
-/

namespace A271248.P14762659574814720027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271249 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271249 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271248.P14762659574814720027

/-! ## A271248.P7158284493092815196

`A266206(n)+a(A005408(n)-n-2)` with `a(0)=1`
-/

namespace A271248.P7158284493092815196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266206 n + a (A005408 n - (n : ℤ) - 2).toNat

end

end A271248.P7158284493092815196

/-! ## A271248.P9801645062392626960

`A266206(n%A001358(n))+a(n-1)` with `a(0)=1`
-/

namespace A271248.P9801645062392626960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266206 (Int.tmod (n : ℤ) (A001358 n)).toNat + a (n - 1)

end

end A271248.P9801645062392626960

/-! ## A271248.P182674235751856598

`A266206(n)+A007318(C(n, 2))*a(n-1)` with `a(0)=1`
-/

namespace A271248.P182674235751856598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266206 n + A007318 (Nat.choose n 2) * a (n - 1)

end

end A271248.P182674235751856598

/-!
# A271249: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 315", based on the 5-celled von Neumann neighborhood.

The programs for A271249, there is no canonical definition to state claims against.
-/

/-! ## A271249.P10495654663267854611

`Δ[A266206(n)]`
-/

namespace A271249.P10495654663267854611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271249.P10495654663267854611

/-! ## A271249.P6001034006571807347

`A266206(n+1)-A266206(n)`
-/

namespace A271249.P6001034006571807347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266206 (n + 1) - A266206 n

end

end A271249.P6001034006571807347

/-! ## A271249.P7893590983411700334

`A271167(n)+and(4, A271165(2*n))`
-/

namespace A271249.P7893590983411700334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271167 n + Int.land 4 (A271165 (2 * n))

end

end A271249.P7893590983411700334

/-! ## A271249.P16462775196165828730

`A271167(n)+A123056(A011815(n))`
-/

namespace A271249.P16462775196165828730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271167 n + A123056 (A011815 n).toNat

end

end A271249.P16462775196165828730

/-!
# A271250: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A271250, there is no canonical definition to state claims against.
-/

/-! ## A271250.P11120346994235373547

`A271253(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271250.P11120346994235373547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271253 (n - 1) + a (n - 1)

end

end A271250.P11120346994235373547

/-! ## A271250.P18276959872170217719

`Δ[A271252(n)]-A271253(n)`
-/

namespace A271250.P18276959872170217719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271253 n

end

end A271250.P18276959872170217719

/-! ## A271250.P747399796939736959

`A271252(n+1)-(A271253(n)+A271252(n))`
-/

namespace A271250.P747399796939736959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271252 (n + 1) - (A271253 n + A271252 n)

end

end A271250.P747399796939736959

/-! ## A271250.P18088276010715534023

`(2*n+3)²-Δ[A272740(n)]`
-/

namespace A271250.P18088276010715534023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A271250.P18088276010715534023

/-! ## A271250.P7100555841433669482

`(2*n+3)²-A272738(n+1)`
-/

namespace A271250.P7100555841433669482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272738 (n + 1)

end

end A271250.P7100555841433669482

/-!
# A271251: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A271251, there is no canonical definition to state claims against.
-/

/-! ## A271251.P8772762914711924755

`A271250(2^n-1)`
-/

namespace A271251.P8772762914711924755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271250 (2 ^ n - 1)

end

end A271251.P8772762914711924755

/-! ## A271251.P15019441263123706881

`A271250(A000225(n))+char[19]`
-/

namespace A271251.P15019441263123706881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271250 (A000225 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271251.P15019441263123706881

/-! ## A271251.P11323808619978789047

`record[A271250(n)/A000265(n+1)]`
-/

namespace A271251.P11323808619978789047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271250 n : ℚ) / (A000265 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271251.P11323808619978789047

/-! ## A271251.P13941723262310608330

`A326683(n)+A271250(A000225(n))`
-/

namespace A271251.P13941723262310608330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A271250 (A000225 n).toNat

end

end A271251.P13941723262310608330

/-! ## A271251.P15157300068420300809

`A007318(∑[n])*A271250(A000225(n))`
-/

namespace A271251.P15157300068420300809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A271250 (A000225 n).toNat

end

end A271251.P15157300068420300809

/-!
# A271252: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A271252, there is no canonical definition to state claims against.
-/

/-! ## A271252.P4042682564561942379

`∑[A271250(n)]`
-/

namespace A271252.P4042682564561942379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271252.P4042682564561942379

/-! ## A271252.P13004333094416342969

`a(n-1)+A054977(n)*A271250(n)` with `a(0)=1`
-/

namespace A271252.P13004333094416342969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A054977 n * A271250 n

end

end A271252.P13004333094416342969

/-! ## A271252.P10926729094459233786

`∑[∑[A271253(n)]+1-A271253(n)]`
-/

namespace A271252.P10926729094459233786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271253 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271252.P10926729094459233786

/-! ## A271252.P5481364199271117881

`∑[(2*n+3)²-Δ[A272740(n)]]`
-/

namespace A271252.P5481364199271117881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272740 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271252.P5481364199271117881

/-! ## A271252.P12490219832618775197

`∑[(2*n+3)²-A272738(n+1)]`
-/

namespace A271252.P12490219832618775197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271252.P12490219832618775197

/-!
# A271253: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A271253, there is no canonical definition to state claims against.
-/

/-! ## A271253.P12591814381985869644

`Δ[A271250(n)]`
-/

namespace A271253.P12591814381985869644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271253.P12591814381985869644

/-! ## A271253.P13788242761557409554

`A271250(n+1)-A271250(n)`
-/

namespace A271253.P13788242761557409554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271250 (n + 1) - A271250 n

end

end A271253.P13788242761557409554

/-! ## A271253.P15461657113810844049

`Δ[A271252(n)]-((2*n+3)²-Δ[A272740(n)])`
-/

namespace A271253.P15461657113810844049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (((2 * n + 3) ^ 2 : ℤ) - (f2 (n + 1) - f2 n))

end

end A271253.P15461657113810844049

/-! ## A271253.P3723728698483866756

`Δ[(2*n+3)²-Δ[A272740(n)]]`
-/

namespace A271253.P3723728698483866756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272740 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271253.P3723728698483866756

/-! ## A271253.P6481218159351211874

`A022144(n+2)-A272741(n+1)`
-/

namespace A271253.P6481218159351211874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (n + 2) - A272741 (n + 1)

end

end A271253.P6481218159351211874

/-! ## A271253.P14737680635379484232

`Δ[(2*n+3)²-A272738(n+1)]`
-/

namespace A271253.P14737680635379484232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271253.P14737680635379484232

/-!
# A271254: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 323", based on the 5-celled von Neumann neighborhood.

The programs for A271254, the canonical program `A271254.P11090294633181622773` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271254 has offset 0).

The definition of A271254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271254.P11090294633181622773

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=36, a(3)=188, a(4)=876`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271254

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P11090294633181622773.Spec : Prop :=
  ∀ n, P11090294633181622773.a n = A271254 n

theorem P11090294633181622773.correct : P11090294633181622773.Spec := by
  intro n
  simp only [A271254]

end A271254

/-! ## A271254.P13529238334518905341

`A270084(n)+char[1]`
-/

namespace A271254.P13529238334518905341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270084 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271254.P13529238334518905341

namespace A271254

/-- `A270084(n)+char[1]` -/
def P13529238334518905341.Spec : Prop :=
  ∀ n, P13529238334518905341.a n = A271254 n

end A271254

/-! ## A271254.P16783698281242822863

`xor(A063524(n), A270084(n))`
-/

namespace A271254.P16783698281242822863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A270084 n)

end

end A271254.P16783698281242822863

namespace A271254

/-- `xor(A063524(n), A270084(n))` -/
def P16783698281242822863.Spec : Prop :=
  ∀ n, P16783698281242822863.a n = A271254 n

end A271254

/-! ## A271254.P10807832553532904013

`or(A270084(n), A270087(2*n))`
-/

namespace A271254.P10807832553532904013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A270084 n) (A270087 (2 * n))

end

end A271254.P10807832553532904013

namespace A271254

/-- `or(A270084(n), A270087(2*n))` -/
def P10807832553532904013.Spec : Prop :=
  ∀ n, P10807832553532904013.a n = A271254 n

end A271254

/-! ## A271254.P13063168616724353926

`xor(A000035(A002088(n)), A270084(n))`
-/

namespace A271254.P13063168616724353926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A002088 n).toNat) (A270084 n)

end

end A271254.P13063168616724353926

namespace A271254

/-- `xor(A000035(A002088(n)), A270084(n))` -/
def P13063168616724353926.Spec : Prop :=
  ∀ n, P13063168616724353926.a n = A271254 n

end A271254

/-! ## A271254.P7449612642099569545

`xor(A000035(A270082(n)), A270084(n))`
-/

namespace A271254.P7449612642099569545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A270082 n).toNat) (A270084 n)

end

end A271254.P7449612642099569545

namespace A271254

/-- `xor(A000035(A270082(n)), A270084(n))` -/
def P7449612642099569545.Spec : Prop :=
  ∀ n, P7449612642099569545.a n = A271254 n

end A271254

/-! ## A271254.P8729839681961008368

`xor(A098108(A335834(n)), A270084(n))`
-/

namespace A271254.P8729839681961008368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098108 (A335834 n).toNat) (A270084 n)

end

end A271254.P8729839681961008368

namespace A271254

/-- `xor(A098108(A335834(n)), A270084(n))` -/
def P8729839681961008368.Spec : Prop :=
  ∀ n, P8729839681961008368.a n = A271254 n

end A271254

/-! ## A271254.P12114322486850669976

`xor(A010051(A058054(n+2)), A270084(n))`
-/

namespace A271254.P12114322486850669976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A058054 (n + 2)).toNat) (A270084 n)

end

end A271254.P12114322486850669976

namespace A271254

/-- `xor(A010051(A058054(n+2)), A270084(n))` -/
def P12114322486850669976.Spec : Prop :=
  ∀ n, P12114322486850669976.a n = A271254 n

end A271254

/-! ## A271254.P1162223844799103794

`A270569(n)+A270084(n)-A269782(n)`
-/

namespace A271254.P1162223844799103794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 n + (A270084 n - A269782 n)

end

end A271254.P1162223844799103794

namespace A271254

/-- `A270569(n)+A270084(n)-A269782(n)` -/
def P1162223844799103794.Spec : Prop :=
  ∀ n, P1162223844799103794.a n = A271254 n

end A271254

/-! ## A271254.P11794772768361865719

`or(A000007(C(n, 2)), A270084(n))`
-/

namespace A271254.P11794772768361865719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (Nat.choose n 2)) (A270084 n)

end

end A271254.P11794772768361865719

namespace A271254

/-- `or(A000007(C(n, 2)), A270084(n))` -/
def P11794772768361865719.Spec : Prop :=
  ∀ n, P11794772768361865719.a n = A271254 n

end A271254

/-!
# A271255: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 323", based on the 5-celled von Neumann neighborhood.

The programs for A271255, there is no canonical definition to state claims against.
-/

/-! ## A271255.P2730466885460682693

`∑[A269782(char[1]+n)]`
-/

namespace A271255.P2730466885460682693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271255.P2730466885460682693

/-! ## A271255.P15344667522631603783

`∑[or(char[1], A269782(n))]`
-/

namespace A271255.P15344667522631603783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) (A269782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271255.P15344667522631603783

/-! ## A271255.P14886121636550703059

`A270085(n)+A057427(n)`
-/

namespace A271255.P14886121636550703059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270085 n + A057427 n

end

end A271255.P14886121636550703059

/-! ## A271255.P307135538958093303

`A270085(n)-A057428(n)`
-/

namespace A271255.P307135538958093303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270085 n - A057428 n

end

end A271255.P307135538958093303

/-! ## A271255.P13433766566816763806

`A270085(n)%A001287(n)+1`
-/

namespace A271255.P13433766566816763806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270085 n) (A001287 (n + 10)) + 1

end

end A271255.P13433766566816763806

/-! ## A271255.P561249221387166733

`∑[A269782(n)]+1-A000007(n)`
-/

namespace A271255.P561249221387166733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000007 n)

end

end A271255.P561249221387166733

/-! ## A271255.P15051698027509176184

`A270085(n)+char[A000463(n+1)]`
-/

namespace A271255.P15051698027509176184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270085 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A271255.P15051698027509176184

/-! ## A271255.P15884296266434565641

`A270085(n)+A000040(n+1)%2`
-/

namespace A271255.P15884296266434565641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270085 n + Int.tmod (A000040 (n + 1)) 2

end

end A271255.P15884296266434565641

/-! ## A271255.P7121771598836315653

`A270085(n)+A045349(n+1)%2`
-/

namespace A271255.P7121771598836315653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270085 n + Int.tmod (A045349 (n + 1)) 2

end

end A271255.P7121771598836315653

/-! ## A271255.P4134202451818091245

`round(A270085(n)+n/A270428(n+1))`
-/

namespace A271255.P4134202451818091245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A270085 n : ℚ) + (n : ℚ) / (A270428 (n + 1) : ℚ))

end

end A271255.P4134202451818091245

/-! ## A271255.P2725104536067725196

`A270085(n)+A107286(A107286(n))`
-/

namespace A271255.P2725104536067725196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270085 n + A107286 (A107286 n).toNat

end

end A271255.P2725104536067725196

/-! ## A271255.P16287360374752850716

`A270085(n)+A001221(A000015(n+1))`
-/

namespace A271255.P16287360374752850716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270085 n + A001221 (A000015 (n + 1)).toNat

end

end A271255.P16287360374752850716

/-! ## A271255.P165857387906431315

`A270085(n)+A001221(A000961(n+1))`
-/

namespace A271255.P165857387906431315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270085 n + A001221 (A000961 (n + 1)).toNat

end

end A271255.P165857387906431315

/-! ## A271255.P2704671863755237848

`A270085(n)+A001065(A020639(n+1))`
-/

namespace A271255.P2704671863755237848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270085 n + A001065 (A020639 (n + 1)).toNat

end

end A271255.P2704671863755237848

/-! ## A271255.P17450926468968226867

`A270085(n)+A271256(n+1)/A270086(n+1)`
-/

namespace A271255.P17450926468968226867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270085 n : ℚ) + (A271256 (n + 1) : ℚ) / (A270086 (n + 1) : ℚ)

end

end A271255.P17450926468968226867

/-! ## A271255.P1500380727964295127

`A065475(A065475(n+1))+A270085(n)-A065475(n+1)`
-/

namespace A271255.P1500380727964295127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A065475 (n + 1)).toNat + (A270085 n - A065475 (n + 1))

end

end A271255.P1500380727964295127

/-! ## A271255.P11920677296625645514

`∑[A270569(n)]`
-/

namespace A271255.P11920677296625645514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271255.P11920677296625645514

/-!
# A271256: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 323", based on the 5-celled von Neumann neighborhood.

The programs for A271256, there is no canonical definition to state claims against.
-/

/-! ## A271256.P5207385389453153942

`Δ[A269782(A254667(n))]`
-/

namespace A271256.P5207385389453153942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 (A254667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271256.P5207385389453153942

/-! ## A271256.P11248461689714705362

`Δ[or(A209229(n), A269782(n))]`
-/

namespace A271256.P11248461689714705362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 n) (A269782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271256.P11248461689714705362

/-! ## A271256.P400922758520857469

`Δ[or(A266591(n), A269782(n))]`
-/

namespace A271256.P400922758520857469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266591 n) (A269782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271256.P400922758520857469

/-! ## A271256.P13197521654656258015

`Δ[or(A010051(n+1), A269782(n))]`
-/

namespace A271256.P13197521654656258015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A269782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271256.P13197521654656258015

/-! ## A271256.P16047266494952175166

`Δ[A269782(n)+A098108(A335834(n))]`
-/

namespace A271256.P16047266494952175166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n + A098108 (A335834 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271256.P16047266494952175166

/-! ## A271256.P1189515405728625750

`A270086(n)+A154955(n+1)`
-/

namespace A271256.P1189515405728625750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 n + A154955 (n + 1)

end

end A271256.P1189515405728625750

/-! ## A271256.P9963604828426805775

`A270086(n)+A167407(C(2, n+1))`
-/

namespace A271256.P9963604828426805775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 n + A167407 (Nat.choose 2 (n + 1))

end

end A271256.P9963604828426805775

/-! ## A271256.P7644852303501738205

`A270086(n)+A008683(A004166(n))`
-/

namespace A271256.P7644852303501738205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 n + A008683 (A004166 n).toNat

end

end A271256.P7644852303501738205

/-! ## A271256.P1576332774457992281

`A270086(n)+A008683(A062383(n))`
-/

namespace A271256.P1576332774457992281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 n + A008683 (A062383 n).toNat

end

end A271256.P1576332774457992281

/-! ## A271256.P10871622076473278835

`A270086(n)+A132013(A003817(n))`
-/

namespace A271256.P10871622076473278835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 n + A132013 (A003817 n).toNat

end

end A271256.P10871622076473278835

/-! ## A271256.P14703146957912853369

`A270086(n)-A008683(2*A004166(n))`
-/

namespace A271256.P14703146957912853369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 n - A008683 (2 * A004166 n).toNat

end

end A271256.P14703146957912853369

/-! ## A271256.P6806388231099571891

`Δ[A270569(n)]`
-/

namespace A271256.P6806388231099571891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271256.P6806388231099571891

/-! ## A271256.P11155167673110500335

`A270569(n+1)-A270569(n)`
-/

namespace A271256.P11155167673110500335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 (n + 1) - A270569 n

end

end A271256.P11155167673110500335

/-! ## A271256.P1637578874908597398

`(ratio[A270569(n)]-1)*A269782(n)`
-/

namespace A271256.P1637578874908597398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1) * (A269782 n : ℚ)

end

end A271256.P1637578874908597398

/-! ## A271256.P4439174994313358621

`A270086(n)+A004174(n)%2`
-/

namespace A271256.P4439174994313358621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 n + Int.tmod (A004174 n) 2

end

end A271256.P4439174994313358621

/-! ## A271256.P9085523244330359714

`A270086(n)-A103452(A000124(n))`
-/

namespace A271256.P9085523244330359714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 n - A103452 (A000124 n).toNat

end

end A271256.P9085523244330359714

/-!
# A271257: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 324", based on the 5-celled von Neumann neighborhood.

The programs for A271257, there is no canonical definition to state claims against.
-/

/-! ## A271257.P15598495868163822301

`∑[A246316(n)]`
-/

namespace A271257.P15598495868163822301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271257.P15598495868163822301

/-! ## A271257.P200785300015892339

`∑[∑[A271258(abs(1-n))]]`
-/

namespace A271257.P200785300015892339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271258 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271257.P200785300015892339

/-! ## A271257.P12057252301858253294

`A246316(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271257.P12057252301858253294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A246316 n + a (A023443 n).toNat

end

end A271257.P12057252301858253294

/-! ## A271257.P13461441795009299434

`a(n-1)+A057427(n)*A246316(n)` with `a(0)=1`
-/

namespace A271257.P13461441795009299434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A246316 n

end

end A271257.P13461441795009299434

/-! ## A271257.P5836131453919422691

`a(n-1)+A246316(n)%A135453(n)` with `a(0)=1`
-/

namespace A271257.P5836131453919422691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A246316 n) (A135453 n)

end

end A271257.P5836131453919422691

/-! ## A271257.P5135999797747541105

`∑[(2*n+3)²-A273602(n+1)]`
-/

namespace A271257.P5135999797747541105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271257.P5135999797747541105

/-!
# A271258: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 324", based on the 5-celled von Neumann neighborhood.

The programs for A271258, there is no canonical definition to state claims against.
-/

/-! ## A271258.P5781068157580380141

`Δ[A246316(n)]`
-/

namespace A271258.P5781068157580380141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271258.P5781068157580380141

/-! ## A271258.P18233729786631519696

`A246316(n+1)-A246316(n)`
-/

namespace A271258.P18233729786631519696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246316 (n + 1) - A246316 n

end

end A271258.P18233729786631519696

/-! ## A271258.P8362953428368250871

`Δ[(2*n+3)²-A273602(n+1)]`
-/

namespace A271258.P8362953428368250871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271258.P8362953428368250871

/-! ## A271258.P5158571640031013076

`Δ[A016754(n+1)%A273602(n+1)]`
-/

namespace A271258.P5158571640031013076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 (n + 1)) (A273602 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271258.P5158571640031013076

/-! ## A271258.P16911742663779026419

`8*(n+2)-A273605(n+1)`
-/

namespace A271258.P16911742663779026419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A273605 (n + 1)

end

end A271258.P16911742663779026419

/-! ## A271258.P1004195856501716719

`A008574(n+1)+A008574(n+3)-A273605(n+1)`
-/

namespace A271258.P1004195856501716719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) + (A008574 (n + 3) - A273605 (n + 1))

end

end A271258.P1004195856501716719

/-!
# A271259: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A271259, there is no canonical definition to state claims against.
-/

/-! ## A271259.P15323483320710897802

`A271262(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271259.P15323483320710897802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271262 (n - 1) + a (n - 1)

end

end A271259.P15323483320710897802

/-! ## A271259.P6381434651790478656

`Δ[A271261(n)]-A271262(n)`
-/

namespace A271259.P6381434651790478656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271262 n

end

end A271259.P6381434651790478656

/-! ## A271259.P2933995298156693581

`A271261(n+1)-(A271262(n)+A271261(n))`
-/

namespace A271259.P2933995298156693581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271261 (n + 1) - (A271262 n + A271261 n)

end

end A271259.P2933995298156693581

/-! ## A271259.P17965916202826878167

`(2*n+3)²-Δ[A273297(n)]`
-/

namespace A271259.P17965916202826878167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A271259.P17965916202826878167

/-! ## A271259.P13547671424070260909

`∑[8*(n+1)-A273298(n)]`
-/

namespace A271259.P13547671424070260909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - A273298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271259.P13547671424070260909

/-! ## A271259.P9951362752174493345

`Δ[A273316(n)]-∑[A273298(n)]`
-/

namespace A271259.P9951362752174493345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A271259.P9951362752174493345

/-! ## A271259.P5777573605363659061

`∑[A004771(n)+1-A273298(n)]`
-/

namespace A271259.P5777573605363659061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (1 - A273298 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271259.P5777573605363659061

/-! ## A271259.P17583343832580197057

`(2*n+3)²-A273295(n+1)`
-/

namespace A271259.P17583343832580197057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273295 (n + 1)

end

end A271259.P17583343832580197057

/-!
# A271260: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A271260, there is no canonical definition to state claims against.
-/

/-! ## A271260.P15318631020180349121

`A271259(2^n-1)`
-/

namespace A271260.P15318631020180349121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271259 (2 ^ n - 1)

end

end A271260.P15318631020180349121

/-! ## A271260.P8248732449434971433

`record[A271259(A255067(n))]`
-/

namespace A271260.P8248732449434971433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271259 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271260.P8248732449434971433

/-! ## A271260.P16072354522737382676

`record[A271259(A243071(n+1))]`
-/

namespace A271260.P16072354522737382676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271259 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271260.P16072354522737382676

/-! ## A271260.P16461354806055103745

`record[A271259(A286556(n+1))]`
-/

namespace A271260.P16461354806055103745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271259 (A286556 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271260.P16461354806055103745

/-! ## A271260.P4133409951328971229

`record[A036987(n)*A271259(n)]`
-/

namespace A271260.P4133409951328971229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A271259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271260.P4133409951328971229

/-!
# A271261: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A271261, there is no canonical definition to state claims against.
-/

/-! ## A271261.P1850210836687298215

`∑[∑[A271262(n)]+1-A271262(n)]`
-/

namespace A271261.P1850210836687298215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271262 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271261.P1850210836687298215

/-! ## A271261.P1825374453784818855

`∑[A271259(n)]`
-/

namespace A271261.P1825374453784818855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271261.P1825374453784818855

/-! ## A271261.P11502158236217443461

`a(n-1)+A271259(n)%A010002(n)` with `a(0)=1`
-/

namespace A271261.P11502158236217443461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271259 n) (A010002 n)

end

end A271261.P11502158236217443461

/-! ## A271261.P3783760725000946548

`Δ[A006324(n+1)]-A273297(n+1)`
-/

namespace A271261.P3783760725000946548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273297 (n + 1)

end

end A271261.P3783760725000946548

/-! ## A271261.P3615523927746816034

`∑[∑[A004771(n)+1-A273298(n)]]`
-/

namespace A271261.P3615523927746816034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (1 - A273298 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271261.P3615523927746816034

/-!
# A271262: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A271262, there is no canonical definition to state claims against.
-/

/-! ## A271262.P13383998267845828381

`Δ[A271259(n)]`
-/

namespace A271262.P13383998267845828381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271262.P13383998267845828381

/-! ## A271262.P13973522539071646380

`A271259(n+1)-A271259(n)`
-/

namespace A271262.P13973522539071646380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271259 (n + 1) - A271259 n

end

end A271262.P13973522539071646380

/-! ## A271262.P15432454590869946784

`8*(n+2)-A273298(n+1)`
-/

namespace A271262.P15432454590869946784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A273298 (n + 1)

end

end A271262.P15432454590869946784

/-! ## A271262.P733709917027491648

`A004771(n+1)+1-A273298(n+1)`
-/

namespace A271262.P733709917027491648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (n + 1) + (1 - A273298 (n + 1))

end

end A271262.P733709917027491648

/-! ## A271262.P12856559340790050268

`A273295(n+1)+∑[8-A273298(n+1)]`
-/

namespace A271262.P12856559340790050268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A273298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273295 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271262.P12856559340790050268

/-!
# A271266: a(n) = Product_{k=1..n} (k^2 + 21).

The programs for A271266, there is no canonical definition to state claims against.
-/

/-! ## A271266.P7939996502780938663

`(n²+21)*a(n-1)` with `a(0)=1`
-/

namespace A271266.P7939996502780938663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 2 + 21) * a (n - 1)

end

end A271266.P7939996502780938663

/-! ## A271266.P3224358355476999058

`∏[A241851(n)]/21`
-/

namespace A271266.P3224358355476999058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241851 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 21

end

end A271266.P3224358355476999058

/-! ## A271266.P16428496925828343324

`∏[A241851(n)^A178334(n)]`
-/

namespace A271266.P16428496925828343324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241851 n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A271266.P16428496925828343324

/-! ## A271266.P10870285002761987152

`∏[A241851(n)%A102439(n)]`
-/

namespace A271266.P10870285002761987152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241851 n) (A102439 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A271266.P10870285002761987152

/-! ## A271266.P7705147805886062520

`∏[gcd(A000038(n), A241851(n))]`
-/

namespace A271266.P7705147805886062520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A241851 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A271266.P7705147805886062520

/-!
# A271267: Even numbers k such that k + 2 divides k^k + 2.

The programs for A271267, there is no canonical definition to state claims against.
-/

/-! ## A271267.P13908157131725288700

`filter[A252606(n+1), A120325(#)]`
-/

namespace A271267.P13908157131725288700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A271267.P13908157131725288700

/-! ## A271267.P2100757428161361954

`filter[A252606(n+1), A121262(#)]`
-/

namespace A271267.P2100757428161361954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A271267.P2100757428161361954

/-! ## A271267.P17199380243885415761

`filter[A252606(n+1), A229062(#)]`
-/

namespace A271267.P17199380243885415761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A271267.P17199380243885415761

/-!
# A271270: Number of set partitions of [n] such that for each pair of consecutive blocks (b,b+1) at least one pair of consecutive numbers (i,i+1) exists with i member of b and i+1 member of b+1.

The programs for A271270, there is no canonical definition to state claims against.
-/

/-! ## A271270.P16488971706130809156

`A000110(n)-A271271(n)`
-/

namespace A271270.P16488971706130809156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A271271 n

end

end A271270.P16488971706130809156

/-! ## A271270.P4514199729549435032

`abs(A292935(n))-A271271(n)`
-/

namespace A271270.P4514199729549435032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A271271 n

end

end A271270.P4514199729549435032

/-! ## A271270.P17504712781249652262

`A011971(∑[n])-A271271(n)`
-/

namespace A271270.P17504712781249652262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A271271 n

end

end A271270.P17504712781249652262

/-! ## A271270.P5641347408645426151

`A033306(∑[n])-A271271(n)`
-/

namespace A271270.P5641347408645426151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 (∑ j ∈ Finset.range (n + 1), f1 j) - A271271 n

end

end A271270.P5641347408645426151

/-! ## A271270.P11160970776718212468

`Δ[A005001(n)]-A271271(n)`
-/

namespace A271270.P11160970776718212468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271271 n

end

end A271270.P11160970776718212468

/-!
# A271271: Number of set partitions of [n] such that at least one pair of consecutive blocks (b,b+1) exists having no pair of consecutive numbers (i,i+1) with i member of b and i+1 member of b+1.

The programs for A271271, there is no canonical definition to state claims against.
-/

/-! ## A271271.P17029007252195041714

`A000110(n)-A271270(n)`
-/

namespace A271271.P17029007252195041714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A271270 n

end

end A271271.P17029007252195041714

/-! ## A271271.P4056477964570223768

`abs(A292935(n))-A271270(n)`
-/

namespace A271271.P4056477964570223768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A271270 n

end

end A271271.P4056477964570223768

/-! ## A271271.P12571205418308101640

`Δ[A005001(n)]-A271270(n)`
-/

namespace A271271.P12571205418308101640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271270 n

end

end A271271.P12571205418308101640

/-! ## A271271.P2377540562130060327

`A095149(A000096(n))-A271270(n)`
-/

namespace A271271.P2377540562130060327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A000096 n).toNat - A271270 n

end

end A271271.P2377540562130060327

/-! ## A271271.P15823875018245371137

`A000108(n)+A016098(n)-A271270(n)`
-/

namespace A271271.P15823875018245371137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A016098 n - A271270 n)

end

end A271271.P15823875018245371137

/-!
# A271272: Number of set partitions of [n] into m blocks such that for each pair of distinct cyclically consecutive blocks (b,c) = (b,(b mod m)+1) at least one pair of numbers (i,j) = (i,(i mod n)+1) exists with i member of b and j member of c.

The programs for A271272, there is no canonical definition to state claims against.
-/

/-! ## A271272.P12952718729544698422

`A000110(n)-A271273(n)`
-/

namespace A271272.P12952718729544698422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A271273 n

end

end A271272.P12952718729544698422

/-! ## A271272.P7874768723314525808

`abs(A292935(n))-A271273(n)`
-/

namespace A271272.P7874768723314525808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A271273 n

end

end A271272.P7874768723314525808

/-! ## A271272.P6562263576671344467

`Δ[A005001(n)]-A271273(n)`
-/

namespace A271272.P6562263576671344467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271273 n

end

end A271272.P6562263576671344467

/-! ## A271272.P4136515899858682218

`ceil(A186021(n)/2-A271273(n))`
-/

namespace A271272.P4136515899858682218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186021 n : ℚ) / 2 - (A271273 n : ℚ)⌉

end

end A271272.P4136515899858682218

/-! ## A271272.P17596978028691281451

`A000108(n)+A016098(n)-A271273(n)`
-/

namespace A271272.P17596978028691281451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A016098 n - A271273 n)

end

end A271272.P17596978028691281451

/-!
# A271273: Number of set partitions of [n] into m blocks such that at least one pair of distinct cyclically consecutive blocks (b,c) = (b,(b mod m)+1) exists having no pair of numbers (i,j) = (i,(i mod n)+1) with i member of b and j member of c.

The programs for A271273, there is no canonical definition to state claims against.
-/

/-! ## A271273.P13115577244629181348

`A000110(n)-A271272(n)`
-/

namespace A271273.P13115577244629181348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A271272 n

end

end A271273.P13115577244629181348

/-! ## A271273.P16075278314257733262

`abs(A292935(n))-A271272(n)`
-/

namespace A271273.P16075278314257733262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A271272 n

end

end A271273.P16075278314257733262

/-! ## A271273.P8074731342241348586

`A095149(∑[n])-A271272(n)`
-/

namespace A271273.P8074731342241348586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - A271272 n

end

end A271273.P8074731342241348586

/-! ## A271273.P3273905801045791840

`A108087(∑[n])-A271272(n)`
-/

namespace A271273.P3273905801045791840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - A271272 n

end

end A271273.P3273905801045791840

/-! ## A271273.P8382244554170598109

`A259691(∑[n])-A271272(n)`
-/

namespace A271273.P8382244554170598109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 (∑ j ∈ Finset.range (n + 1), f1 j) - A271272 n

end

end A271273.P8382244554170598109

/-!
# A271274: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 329", based on the 5-celled von Neumann neighborhood.

The programs for A271274, there is no canonical definition to state claims against.
-/

/-! ## A271274.P15654073452024652025

`A265689(2^n-1)`
-/

namespace A271274.P15654073452024652025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265689 (2 ^ n - 1)

end

end A271274.P15654073452024652025

/-! ## A271274.P14334206297735402341

`record[gcd(A035327(n), A265689(n))]`
-/

namespace A271274.P14334206297735402341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035327 n) (A265689 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271274.P14334206297735402341

/-! ## A271274.P13407535684373843135

`A265689(A000225(n))+C(n, 64)`
-/

namespace A271274.P13407535684373843135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265689 (A000225 n).toNat + (Nat.choose n 64 : ℤ)

end

end A271274.P13407535684373843135

/-! ## A271274.P4707317241670194304

`or(A000007(n), A265689(A000225(n)))`
-/

namespace A271274.P4707317241670194304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A265689 (A000225 n).toNat)

end

end A271274.P4707317241670194304

/-! ## A271274.P5871022104899394635

`A265689(A000225(n))+A000007(n+1)`
-/

namespace A271274.P5871022104899394635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265689 (A000225 n).toNat + A000007 (n + 1)

end

end A271274.P5871022104899394635

/-!
# A271275: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 329", based on the 5-celled von Neumann neighborhood.

The programs for A271275, there is no canonical definition to state claims against.
-/

/-! ## A271275.P17119816388319088615

`∑[A265689(n)]`
-/

namespace A271275.P17119816388319088615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271275.P17119816388319088615

/-! ## A271275.P14084063533411714731

`a(n-1)+A265689(n)+A000007(n)` with `a(0)=1`
-/

namespace A271275.P14084063533411714731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A265689 n + A000007 n)

end

end A271275.P14084063533411714731

/-! ## A271275.P9957113785575347859

`A265689(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A271275.P9957113785575347859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265689 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A271275.P9957113785575347859

/-! ## A271275.P209962195674712238

`a(n-1)+A265689(n)%A005901(n)` with `a(0)=1`
-/

namespace A271275.P209962195674712238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A265689 n) (A005901 n)

end

end A271275.P209962195674712238

/-! ## A271275.P6423117369986160220

`∑[∑[A271276(abs(1-n))]]`
-/

namespace A271275.P6423117369986160220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271276 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271275.P6423117369986160220

/-! ## A271275.P12363845723342338019

`A265689(n)+a(n-1)%A146213(n+4)` with `a(0)=1`
-/

namespace A271275.P12363845723342338019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265689 n + Int.tmod (a (n - 1)) (A146213 (n + 4))

end

end A271275.P12363845723342338019

/-!
# A271276: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 329", based on the 5-celled von Neumann neighborhood.

The programs for A271276, there is no canonical definition to state claims against.
-/

/-! ## A271276.P6822814495911249239

`Δ[A265689(n)]`
-/

namespace A271276.P6822814495911249239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271276.P6822814495911249239

/-! ## A271276.P15552033998219407854

`A265689(n+1)-A265689(n)`
-/

namespace A271276.P15552033998219407854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265689 (n + 1) - A265689 n

end

end A271276.P15552033998219407854

/-! ## A271276.P18121448014265675577

`A265689(n+1)+A265689(n)/A033999(2*n+3)`
-/

namespace A271276.P18121448014265675577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265689 (n + 1) : ℚ) + (A265689 n : ℚ) / (A033999 (2 * n + 3) : ℚ)

end

end A271276.P18121448014265675577

/-! ## A271276.P6087719052436999919

`A265689(n+1)+A001489(A265689(n)+1)+1`
-/

namespace A271276.P6087719052436999919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265689 (n + 1) + (A001489 (A265689 n + 1).toNat + 1)

end

end A271276.P6087719052436999919

/-!
# A271277: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A271277, there is no canonical definition to state claims against.
-/

/-! ## A271277.P6029168046623280867

`∑[A271280(abs(1-n))]+1`
-/

namespace A271277.P6029168046623280867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271280 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271277.P6029168046623280867

/-! ## A271277.P2289731165127461408

`A271280(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271277.P2289731165127461408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271280 (n - 1) + a (n - 1)

end

end A271277.P2289731165127461408

/-! ## A271277.P13612219898738079567

`Δ[A271279(n)]-A271280(n)`
-/

namespace A271277.P13612219898738079567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271280 n

end

end A271277.P13612219898738079567

/-! ## A271277.P11039164444125152263

`∑[A271280(n-a(A000038(n)))]` with `a(0)=1`
-/

namespace A271277.P11039164444125152263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271280 ((n : ℤ) - f1 (A000038 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271277.P11039164444125152263

/-! ## A271277.P6750724674420640320

`A271279(n+1)-(A271280(n)+A271279(n))`
-/

namespace A271277.P6750724674420640320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271279 (n + 1) - (A271280 n + A271279 n)

end

end A271277.P6750724674420640320

/-!
# A271278: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A271278, there is no canonical definition to state claims against.
-/

/-! ## A271278.P2818272921159635022

`A271277(2^n-1)`
-/

namespace A271278.P2818272921159635022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271277 (2 ^ n - 1)

end

end A271278.P2818272921159635022

/-! ## A271278.P10416960587440391795

`record[A271277(A006068(n))]`
-/

namespace A271278.P10416960587440391795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271277 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271278.P10416960587440391795

/-! ## A271278.P4508122032049419488

`record[A271277(A181062(n+1))]`
-/

namespace A271278.P4508122032049419488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271277 (A181062 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271278.P4508122032049419488

/-! ## A271278.P2199559335553933202

`record[A271277(A243071(n+1))]`
-/

namespace A271278.P2199559335553933202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271277 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271278.P2199559335553933202

/-! ## A271278.P9021840016567352558

`record[A271277(A323243(n+1))]`
-/

namespace A271278.P9021840016567352558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271277 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271278.P9021840016567352558

/-!
# A271279: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A271279, there is no canonical definition to state claims against.
-/

/-! ## A271279.P6518970120186429692

`∑[∑[A271280(n)]+1-A271280(n)]`
-/

namespace A271279.P6518970120186429692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271280 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271280 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271279.P6518970120186429692

/-! ## A271279.P13481810783786548535

`∑[A271277(n)]`
-/

namespace A271279.P13481810783786548535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271279.P13481810783786548535

/-! ## A271279.P2323510114000022980

`A271277(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271279.P2323510114000022980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271277 n + a (A023443 n).toNat

end

end A271279.P2323510114000022980

/-! ## A271279.P14924035564207489863

`a(n-1)+A271277(n)+A000038(n)` with `a(0)=1`
-/

namespace A271279.P14924035564207489863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271277 n + A000038 n)

end

end A271279.P14924035564207489863

/-! ## A271279.P5847727732272729681

`A271277(n)-(A000038(n)*A028310(n)-a(n-1))` with `a(0)=1`
-/

namespace A271279.P5847727732272729681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271277 n - (A000038 n * A028310 n - a (n - 1))

end

end A271279.P5847727732272729681

/-! ## A271279.P13206139339268546041

`A000027(A271277(n)+a(n-1))` with `a(0)=1`
-/

namespace A271279.P13206139339268546041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A271277 n + a (n - 1)).toNat

end

end A271279.P13206139339268546041

/-!
# A271280: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A271280, there is no canonical definition to state claims against.
-/

/-! ## A271280.P12396257974343069838

`Δ[A271277(n)]`
-/

namespace A271280.P12396257974343069838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271280.P12396257974343069838

/-! ## A271280.P10015797116695156941

`A271277(n+1)-A271277(n)`
-/

namespace A271280.P10015797116695156941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271277 (n + 1) - A271277 n

end

end A271280.P10015797116695156941

/-! ## A271280.P14259882090739802746

`A271277(n+1)+A001478(A271277(n)+1)+1`
-/

namespace A271280.P14259882090739802746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271277 (n + 1) + (A001478 (A271277 n + 1).toNat + 1)

end

end A271280.P14259882090739802746

/-!
# A271281: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A271281, there is no canonical definition to state claims against.
-/

/-! ## A271281.P12126373810350180301

`A271284(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271281.P12126373810350180301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271284 (n - 1) + a (n - 1)

end

end A271281.P12126373810350180301

/-! ## A271281.P8299409510477911909

`Δ[A271283(n)]-A271284(n)`
-/

namespace A271281.P8299409510477911909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271284 n

end

end A271281.P8299409510477911909

/-! ## A271281.P14621754898623562861

`A271283(n+1)-(A271284(n)+A271283(n))`
-/

namespace A271281.P14621754898623562861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271283 (n + 1) - (A271284 n + A271283 n)

end

end A271281.P14621754898623562861

/-! ## A271281.P9607415415155704469

`(2*n+3)²-A272943(n+1)`
-/

namespace A271281.P9607415415155704469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272943 (n + 1)

end

end A271281.P9607415415155704469

/-! ## A271281.P7117022296214786576

`A000217(2*(n+1))+A000217(2*n+3)-A272943(n+1)`
-/

namespace A271281.P7117022296214786576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (n + 1)) + (A000217 (2 * n + 3) - A272943 (n + 1))

end

end A271281.P7117022296214786576

/-! ## A271281.P274306138881009543

`∑[Δ[A016754(n)]-A272946(n)]`
-/

namespace A271281.P274306138881009543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A272946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271281.P274306138881009543

/-! ## A271281.P1206235003405464306

`∑[A004771(n)+1-A272946(n)]`
-/

namespace A271281.P1206235003405464306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (1 - A272946 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271281.P1206235003405464306

/-! ## A271281.P14517807579258648342

`∑[A017137(n)+2-A272946(n)]`
-/

namespace A271281.P14517807579258648342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n + (2 - A272946 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271281.P14517807579258648342

/-! ## A271281.P8720539773905250927

`∑[A052938(A106839(n))-A272946(n)]`
-/

namespace A271281.P8720539773905250927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A106839 n).toNat - A272946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271281.P8720539773905250927

/-!
# A271282: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A271282, there is no canonical definition to state claims against.
-/

/-! ## A271282.P1119028045925086716

`A271281(2^n-1)`
-/

namespace A271282.P1119028045925086716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271281 (2 ^ n - 1)

end

end A271282.P1119028045925086716

/-! ## A271282.P6874737120931894006

`and(-1, A271281(A000225(n)))`
-/

namespace A271282.P6874737120931894006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A271281 (A000225 n).toNat)

end

end A271282.P6874737120931894006

/-! ## A271282.P13931851948395776061

`record[A271281(A059268(n)-1)]`
-/

namespace A271282.P13931851948395776061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271281 (A059268 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271282.P13931851948395776061

/-! ## A271282.P16795653524890143814

`record[gcd(A025480(n), A271281(n))]`
-/

namespace A271282.P16795653524890143814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025480 n) (A271281 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271282.P16795653524890143814

/-! ## A271282.P2763685607099659325

`record[root(A271281(n), A001227(n+1))]`
-/

namespace A271282.P2763685607099659325
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A271281 n : ℝ) ^ (1 / (A001227 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271282.P2763685607099659325

/-!
# A271283: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A271283, there is no canonical definition to state claims against.
-/

/-! ## A271283.P2495631273129405303

`∑[A271284(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271283.P2495631273129405303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271284 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271283.P2495631273129405303

/-! ## A271283.P7113637156443856211

`∑[∑[A271284(n)]+1-A271284(n)]`
-/

namespace A271283.P7113637156443856211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271284 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271283.P7113637156443856211

/-! ## A271283.P2931427774563614435

`∑[A271281(n)]`
-/

namespace A271283.P2931427774563614435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271283.P2931427774563614435

/-! ## A271283.P6859020537896658119

`A271281(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271283.P6859020537896658119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271281 n + a (A023443 n).toNat

end

end A271283.P6859020537896658119

/-! ## A271283.P5069370880640128990

`a(n-1)+A057427(n)*A271281(n)` with `a(0)=1`
-/

namespace A271283.P5069370880640128990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A271281 n

end

end A271283.P5069370880640128990

/-! ## A271283.P144764053830682889

`∑[(2*n+3)²-A272943(n+1)]`
-/

namespace A271283.P144764053830682889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271283.P144764053830682889

/-! ## A271283.P16271285069063554978

`∑[∑[A004771(n)+1-A272946(n)]]`
-/

namespace A271283.P16271285069063554978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (1 - A272946 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271283.P16271285069063554978

/-! ## A271283.P3247805680175890934

`∑[∑[A017137(n)+2-A272946(n)]]`
-/

namespace A271283.P3247805680175890934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n + 2 - A272946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271283.P3247805680175890934

/-!
# A271284: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A271284, there is no canonical definition to state claims against.
-/

/-! ## A271284.P13899254308441264989

`Δ[A271281(n)]`
-/

namespace A271284.P13899254308441264989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271284.P13899254308441264989

/-! ## A271284.P15336822458016429293

`A271281(n+1)-A271281(n)`
-/

namespace A271284.P15336822458016429293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271281 (n + 1) - A271281 n

end

end A271284.P15336822458016429293

/-! ## A271284.P4045306055620728097

`8*(n+2)-A272946(n+1)`
-/

namespace A271284.P4045306055620728097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A272946 (n + 1)

end

end A271284.P4045306055620728097

/-! ## A271284.P16320894734724109105

`A004771(n+1)+1-A272946(n+1)`
-/

namespace A271284.P16320894734724109105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (n + 1) + (1 - A272946 (n + 1))

end

end A271284.P16320894734724109105

/-! ## A271284.P5374797994507684326

`A017137(n+1)+2-A272946(n+1)`
-/

namespace A271284.P5374797994507684326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 (n + 1) + (2 - A272946 (n + 1))

end

end A271284.P5374797994507684326

/-! ## A271284.P193023576472531898

`A272943(n+1)+∑[8-A272946(n+1)]`
-/

namespace A271284.P193023576472531898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A272946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272943 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271284.P193023576472531898

/-!
# A271285: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 337", based on the 5-celled von Neumann neighborhood.

The programs for A271285, there is no canonical definition to state claims against.
-/

/-! ## A271285.P12309260149801171689

`∑[A271288(abs(1-n))]`
-/

namespace A271285.P12309260149801171689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271288 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271285.P12309260149801171689

/-! ## A271285.P16239698169466914823

`A271288(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271285.P16239698169466914823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271288 (n - 1) + a (n - 1)

end

end A271285.P16239698169466914823

/-! ## A271285.P15429116674774142584

`A272416(A004442(n))-Δ[A272416(n)]`
-/

namespace A271285.P15429116674774142584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 (A004442 n).toNat - (f1 (n + 1) - f1 n)

end

end A271285.P15429116674774142584

/-! ## A271285.P2194633932998972731

`A272416(A004442(n))-A272419(n)`
-/

namespace A271285.P2194633932998972731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 (A004442 n).toNat - A272419 n

end

end A271285.P2194633932998972731

/-! ## A271285.P1494553166738319867

`Δ[A271287(n)]-A271288(n)`
-/

namespace A271285.P1494553166738319867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271288 n

end

end A271285.P1494553166738319867

/-! ## A271285.P17000092588302621649

`A271287(n+1)-(A271288(n)+A271287(n))`
-/

namespace A271285.P17000092588302621649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271287 (n + 1) - (A271288 n + A271287 n)

end

end A271285.P17000092588302621649

/-!
# A271286: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 337", based on the 5-celled von Neumann neighborhood.

The programs for A271286, the canonical program `A271286.P466430080262577780` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271286 has offset 0).

The definition of A271286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271286.P466430080262577780

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=40, a(3)=200`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A271286

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P466430080262577780.Spec : Prop :=
  ∀ n, P466430080262577780.a n = A271286 n

theorem P466430080262577780.correct : P466430080262577780.Spec := by
  intro n
  simp only [A271286]

end A271286

/-! ## A271286.P2245083503378830574

`4*xor(2, a(n-1)+2^n)` with `a(0)=1`
-/

namespace A271286.P2245083503378830574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * Nat.xor 2 (a (n - 1) + 2 ^ n)

end

end A271286.P2245083503378830574

namespace A271286

/-- `4*xor(2, a(n-1)+2^n)` -/
def P2245083503378830574.Spec : Prop :=
  ∀ n, (P2245083503378830574.a n : ℤ) = A271286 n

end A271286

/-! ## A271286.P8257274791788857418

`A272586(n)-char[1]`
-/

namespace A271286.P8257274791788857418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272586 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271286.P8257274791788857418

namespace A271286

/-- `A272586(n)-char[1]` -/
def P8257274791788857418.Spec : Prop :=
  ∀ n, P8257274791788857418.a n = A271286 n

end A271286

/-! ## A271286.P8052149997317216249

`4*(a(n-1)+A016116(2*n)+2)` with `a(0)=1, a(1)=4`
-/

namespace A271286.P8052149997317216249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (a (n - 1) + (A016116 (2 * n) + 2))

end

end A271286.P8052149997317216249

namespace A271286

/-- `4*(a(n-1)+A016116(2*n)+2)` -/
def P8052149997317216249.Spec : Prop :=
  ∀ n, P8052149997317216249.a n = A271286 n

end A271286

/-! ## A271286.P922627479622314070

`A269911(n)-A002450(n)`
-/

namespace A271286.P922627479622314070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269911 n - A002450 n

end

end A271286.P922627479622314070

namespace A271286

/-- `A269911(n)-A002450(n)` -/
def P922627479622314070.Spec : Prop :=
  ∀ n, P922627479622314070.a n = A271286 n

end A271286

/-! ## A271286.P376597349281147818

`xor(A063524(n), A272586(n))`
-/

namespace A271286.P376597349281147818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A272586 n)

end

end A271286.P376597349281147818

namespace A271286

/-- `xor(A063524(n), A272586(n))` -/
def P376597349281147818.Spec : Prop :=
  ∀ n, P376597349281147818.a n = A271286 n

end A271286

/-! ## A271286.P1040853331578646207

`and(-A000034(n), A272586(n))`
-/

namespace A271286.P1040853331578646207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A272586 n)

end

end A271286.P1040853331578646207

namespace A271286

/-- `and(-A000034(n), A272586(n))` -/
def P1040853331578646207.Spec : Prop :=
  ∀ n, P1040853331578646207.a n = A271286 n

end A271286

/-! ## A271286.P14433107380052745909

`and(-A001285(n), A272586(n))`
-/

namespace A271286.P14433107380052745909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A001285 n) (A272586 n)

end

end A271286.P14433107380052745909

namespace A271286

/-- `and(-A001285(n), A272586(n))` -/
def P14433107380052745909.Spec : Prop :=
  ∀ n, P14433107380052745909.a n = A271286 n

end A271286

/-! ## A271286.P592823735470828827

`2*A267816(n)-A047849(n)`
-/

namespace A271286.P592823735470828827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267816 n - A047849 n

end

end A271286.P592823735470828827

namespace A271286

/-- `2*A267816(n)-A047849(n)` -/
def P592823735470828827.Spec : Prop :=
  ∀ n, P592823735470828827.a n = A271286 n

end A271286

/-! ## A271286.P11887701371237355624

`and(-A006337(n+1), A272586(n))`
-/

namespace A271286.P11887701371237355624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A006337 (n + 1)) (A272586 n)

end

end A271286.P11887701371237355624

namespace A271286

/-- `and(-A006337(n+1), A272586(n))` -/
def P11887701371237355624.Spec : Prop :=
  ∀ n, P11887701371237355624.a n = A271286 n

end A271286

/-! ## A271286.P15944961971705800523

`A272581(n)+A272586(n)-A272585(n)`
-/

namespace A271286.P15944961971705800523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n + (A272586 n - A272585 n)

end

end A271286.P15944961971705800523

namespace A271286

/-- `A272581(n)+A272586(n)-A272585(n)` -/
def P15944961971705800523.Spec : Prop :=
  ∀ n, P15944961971705800523.a n = A271286 n

end A271286

/-! ## A271286.P1243230060996242632

`and(A272586(n), A308567(A308567(n+1)²))`
-/

namespace A271286.P1243230060996242632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A272586 n) (A308567 (A308567 (n + 1) ^ 2).toNat)

end

end A271286.P1243230060996242632

namespace A271286

/-- `and(A272586(n), A308567(A308567(n+1)²))` -/
def P1243230060996242632.Spec : Prop :=
  ∀ n, P1243230060996242632.a n = A271286 n

end A271286

/-!
# A271287: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 337", based on the 5-celled von Neumann neighborhood.

The programs for A271287, there is no canonical definition to state claims against.
-/

/-! ## A271287.P9026261523065445158

`∑[A271285(n)]`
-/

namespace A271287.P9026261523065445158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271287.P9026261523065445158

/-! ## A271287.P13202289442995946334

`∑[∑[A271288(abs(1-n))]]`
-/

namespace A271287.P13202289442995946334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271288 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271287.P13202289442995946334

/-! ## A271287.P17895597860971048456

`∑[A271288(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271287.P17895597860971048456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271288 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271287.P17895597860971048456

/-! ## A271287.P14975028976599320844

`A271285(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271287.P14975028976599320844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271285 n + a (A023443 n).toNat

end

end A271287.P14975028976599320844

/-! ## A271287.P11563053644000092400

`a(n-1)+A271285(n)%A017152(n)` with `a(0)=1`
-/

namespace A271287.P11563053644000092400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271285 n) (A017152 n)

end

end A271287.P11563053644000092400

/-!
# A271288: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 337", based on the 5-celled von Neumann neighborhood.

The programs for A271288, there is no canonical definition to state claims against.
-/

/-! ## A271288.P14673229340184558614

`Δ[A272416(A004442(n))-Δ[A272416(n)]]`
-/

namespace A271288.P14673229340184558614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 (A004442 n).toNat - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271288.P14673229340184558614

/-! ## A271288.P3177441771180631048

`Δ[A271285(n)]`
-/

namespace A271288.P3177441771180631048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271288.P3177441771180631048

/-! ## A271288.P4578766215643181181

`A271285(n+1)-A271285(n)`
-/

namespace A271288.P4578766215643181181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271285 (n + 1) - A271285 n

end

end A271288.P4578766215643181181

/-! ## A271288.P13597104464135494302

`Δ[A272416(A004442(n))-A272419(n)]`
-/

namespace A271288.P13597104464135494302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 (A004442 n).toNat - A272419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271288.P13597104464135494302

/-!
# A271289: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 339", based on the 5-celled von Neumann neighborhood.

The programs for A271289, there is no canonical definition to state claims against.
-/

/-! ## A271289.P1718152364889746435

`∑[A271292(abs(1-n))]+1`
-/

namespace A271289.P1718152364889746435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271292 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A271289.P1718152364889746435

/-! ## A271289.P15394982720766231649

`A271292(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271289.P15394982720766231649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271292 (n - 1) + a (n - 1)

end

end A271289.P15394982720766231649

/-! ## A271289.P14775941585894810231

`A000035(2*n)+∑[A271292(n)]+1-A271292(n)`
-/

namespace A271289.P14775941585894810231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A271292 n))

end

end A271289.P14775941585894810231

/-! ## A271289.P16670016063758731427

`Δ[A271291(n)]-A271292(n)`
-/

namespace A271289.P16670016063758731427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271292 n

end

end A271289.P16670016063758731427

/-! ## A271289.P18351867732872843642

`A271291(n+1)-(A271292(n)+A271291(n))`
-/

namespace A271289.P18351867732872843642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271291 (n + 1) - (A271292 n + A271291 n)

end

end A271289.P18351867732872843642

/-!
# A271290: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 339", based on the 5-celled von Neumann neighborhood.

The programs for A271290, there is no canonical definition to state claims against.
-/

/-! ## A271290.P17223644758275944935

`A271289(2^n-1)`
-/

namespace A271290.P17223644758275944935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271289 (2 ^ n - 1)

end

end A271290.P17223644758275944935

/-! ## A271290.P12014294403010233489

`record[A271289(A173787(n))]`
-/

namespace A271290.P12014294403010233489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271289 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271290.P12014294403010233489

/-! ## A271290.P4076669881316293076

`record[A271289(A181062(n+1))]`
-/

namespace A271290.P4076669881316293076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271289 (A181062 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271290.P4076669881316293076

/-! ## A271290.P13454176066471605371

`record[A271289(A324573(n+1))]`
-/

namespace A271290.P13454176066471605371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271289 (A324573 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271290.P13454176066471605371

/-! ## A271290.P8275118051287095635

`record[A271289(A059268(n)-1)]`
-/

namespace A271290.P8275118051287095635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271289 (A059268 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271290.P8275118051287095635

/-!
# A271291: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 339", based on the 5-celled von Neumann neighborhood.

The programs for A271291, there is no canonical definition to state claims against.
-/

/-! ## A271291.P116754403074181204

`∑[A271289(n)]`
-/

namespace A271291.P116754403074181204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271291.P116754403074181204

/-! ## A271291.P12368037380561365659

`∑[∑[A271292(abs(1-n))]+1]`
-/

namespace A271291.P12368037380561365659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271292 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271291.P12368037380561365659

/-! ## A271291.P11543411456043995781

`A271289(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271291.P11543411456043995781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271289 n + a (A023443 n).toNat

end

end A271291.P11543411456043995781

/-! ## A271291.P10888965369568053267

`A271289(A123108(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A271291.P10888965369568053267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271289 (A123108 (2 * n)).toNat + a (n - 1)

end

end A271291.P10888965369568053267

/-! ## A271291.P7943892680641314536

`A271289(n)+a(n+1-A020639(A001316(n)))` with `a(0)=1`
-/

namespace A271291.P7943892680641314536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271289 n + a ((n + 1 : ℤ) - A020639 (A001316 n).toNat).toNat

end

end A271291.P7943892680641314536

/-! ## A271291.P7542139161314850547

`A271289(n)+a(n-1)+1-A008975(A000096(n))` with `a(0)=1`
-/

namespace A271291.P7542139161314850547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271289 n + (a (n - 1) + 1) - A008975 (A000096 n).toNat

end

end A271291.P7542139161314850547

/-! ## A271291.P12740560291946599702

`A000027(A271289(n)+a(n-1))` with `a(0)=1`
-/

namespace A271291.P12740560291946599702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A271289 n + a (n - 1)).toNat

end

end A271291.P12740560291946599702

/-! ## A271291.P13907058669495523341

`(A271289(n)+a(n-1))%A099370(n)` with `a(0)=1`
-/

namespace A271291.P13907058669495523341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A271289 n + a (n - 1)) (A099370 n)

end

end A271291.P13907058669495523341

/-!
# A271292: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 339", based on the 5-celled von Neumann neighborhood.

The programs for A271292, there is no canonical definition to state claims against.
-/

/-! ## A271292.P12543322471438610113

`Δ[A271289(n)]`
-/

namespace A271292.P12543322471438610113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271292.P12543322471438610113

/-! ## A271292.P604082994265200488

`A271289(n+1)-A271289(n)`
-/

namespace A271292.P604082994265200488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271289 (n + 1) - A271289 n

end

end A271292.P604082994265200488

/-!
# A271293: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 345", based on the 5-celled von Neumann neighborhood.

The programs for A271293, there is no canonical definition to state claims against.
-/

/-! ## A271293.P655855136449988513

`∑[A271296(abs(1-n))]`
-/

namespace A271293.P655855136449988513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271296 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271293.P655855136449988513

/-! ## A271293.P9048841939250399164

`A271296(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271293.P9048841939250399164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271296 (n - 1) + a (n - 1)

end

end A271293.P9048841939250399164

/-! ## A271293.P13142072648701754663

`Δ[A271295(n)]-A271296(n)`
-/

namespace A271293.P13142072648701754663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271296 n

end

end A271293.P13142072648701754663

/-! ## A271293.P1709957836937367201

`A271295(n+1)-(A271296(n)+A271295(n))`
-/

namespace A271293.P1709957836937367201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271295 (n + 1) - (A271296 n + A271295 n)

end

end A271293.P1709957836937367201

/-! ## A271293.P9300834616970486988

`A271296(n-1)--a(n-1)%A000244(n)` with `a(0)=1`
-/

namespace A271293.P9300834616970486988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271296 (n - 1) - Int.tmod (-a (n - 1)) (A000244 n)

end

end A271293.P9300834616970486988

/-!
# A271294: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 345", based on the 5-celled von Neumann neighborhood.

The programs for A271294, there is no canonical definition to state claims against.
-/

/-! ## A271294.P15963637722233414225

`A271293(2^n-1)`
-/

namespace A271294.P15963637722233414225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271293 (2 ^ n - 1)

end

end A271294.P15963637722233414225

/-! ## A271294.P8000428603182056806

`record[A271293(A038573(n))]`
-/

namespace A271294.P8000428603182056806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271293 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271294.P8000428603182056806

/-! ## A271294.P16405868141188678625

`record[A271293(A153154(n))]`
-/

namespace A271294.P16405868141188678625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271293 (A153154 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271294.P16405868141188678625

/-! ## A271294.P15826107227296910925

`record[A271293(A227351(n))]`
-/

namespace A271294.P15826107227296910925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271293 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271294.P15826107227296910925

/-! ## A271294.P4015284866677001431

`record[A271293(A243071(n+1))]`
-/

namespace A271294.P4015284866677001431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271293 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271294.P4015284866677001431

/-!
# A271295: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 345", based on the 5-celled von Neumann neighborhood.

The programs for A271295, there is no canonical definition to state claims against.
-/

/-! ## A271295.P15663763595114560989

`∑[∑[A271296(abs(1-n))]]`
-/

namespace A271295.P15663763595114560989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271296 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271295.P15663763595114560989

/-! ## A271295.P12724434835602839075

`∑[A271296(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271295.P12724434835602839075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271296 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271295.P12724434835602839075

/-! ## A271295.P11567301518659633820

`∑[A271293(n)]`
-/

namespace A271295.P11567301518659633820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271295.P11567301518659633820

/-! ## A271295.P17729870861758525753

`A271293(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271295.P17729870861758525753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271293 n + a (A023443 n).toNat

end

end A271295.P17729870861758525753

/-! ## A271295.P2796763346141678829

`A271293(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A271295.P2796763346141678829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271293 n + a (A028310 n - 1).toNat

end

end A271295.P2796763346141678829

/-!
# A271296: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 345", based on the 5-celled von Neumann neighborhood.

The programs for A271296, there is no canonical definition to state claims against.
-/

/-! ## A271296.P6236779615170875288

`Δ[A271293(n)]`
-/

namespace A271296.P6236779615170875288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271296.P6236779615170875288

/-! ## A271296.P7568037528267259784

`A271293(n+1)-A271293(n)`
-/

namespace A271296.P7568037528267259784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271293 (n + 1) - A271293 n

end

end A271296.P7568037528267259784

/-!
# A271297: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A271297, there is no canonical definition to state claims against.
-/

/-! ## A271297.P9775058098625534881

`A271300(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271297.P9775058098625534881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271300 (n - 1) + a (n - 1)

end

end A271297.P9775058098625534881

/-! ## A271297.P7997071813498718840

`∑[A271300(n-ceil(n/(n+1)))]-3`
-/

namespace A271297.P7997071813498718840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271300 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A271297.P7997071813498718840

/-! ## A271297.P7302889758987800386

`A271300(n-1)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A271297.P7302889758987800386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271300 (n - 1) - (A000007 n - a (n - 1))

end

end A271297.P7302889758987800386

/-! ## A271297.P10238302107392604209

`Δ[A271299(n)]-A271300(n)`
-/

namespace A271297.P10238302107392604209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271300 n

end

end A271297.P10238302107392604209

/-! ## A271297.P3511435638942589002

`A271299(n+1)-(A271300(n)+A271299(n))`
-/

namespace A271297.P3511435638942589002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271299 (n + 1) - (A271300 n + A271299 n)

end

end A271297.P3511435638942589002

/-!
# A271298: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A271298, there is no canonical definition to state claims against.
-/

/-! ## A271298.P4243113154289150165

`A271297(2^n-1)`
-/

namespace A271298.P4243113154289150165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271297 (2 ^ n - 1)

end

end A271298.P4243113154289150165

/-! ## A271298.P1310531299443047498

`record[A271297(A227351(n))]`
-/

namespace A271298.P1310531299443047498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271297 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271298.P1310531299443047498

/-! ## A271298.P4525610163186939908

`record[A271297(A255067(n))]`
-/

namespace A271298.P4525610163186939908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271297 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271298.P4525610163186939908

/-! ## A271298.P14888886355195547353

`record[A271297(abs(A065620(n)))]`
-/

namespace A271298.P14888886355195547353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271297 |A065620 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271298.P14888886355195547353

/-! ## A271298.P8816463412792065916

`record[A271297(A226038(n+1))]`
-/

namespace A271298.P8816463412792065916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271297 (A226038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271298.P8816463412792065916

/-!
# A271299: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A271299, there is no canonical definition to state claims against.
-/

/-! ## A271299.P487973010024566465

`∑[A271297(n)]`
-/

namespace A271299.P487973010024566465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271299.P487973010024566465

/-! ## A271299.P15015826109240373659

`A271297(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A271299.P15015826109240373659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271297 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A271299.P15015826109240373659

/-! ## A271299.P8733571405328157776

`a(n-1)+A271297(n)+A000038(n)` with `a(0)=1`
-/

namespace A271299.P8733571405328157776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271297 n + A000038 n)

end

end A271299.P8733571405328157776

/-! ## A271299.P1824955482225389699

`a(n-1)+A057427(n)*A271297(n)` with `a(0)=1`
-/

namespace A271299.P1824955482225389699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A271297 n

end

end A271299.P1824955482225389699

/-! ## A271299.P14437070454692443711

`∑[A271300(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271299.P14437070454692443711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271300 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271299.P14437070454692443711

