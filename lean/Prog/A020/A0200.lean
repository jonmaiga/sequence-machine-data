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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A020000: Expansion of 1/((1-5*x)*(1-7*x)*(1-11*x)).

The programs for A020000, the canonical program `A020000.P14070388581886057387` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020000 has offset 0).

The definition of A020000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020000.P14070388581886057387

`18*a(n-1)-77*a(n-2)+5^n` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020000

/-- `18*a(n-1)-77*a(n-2)+5^n` -/
def P14070388581886057387.Spec : Prop :=
  ∀ n, P14070388581886057387.a n = A020000 n

theorem P14070388581886057387.correct : P14070388581886057387.Spec := by
  intro n
  simp only [A020000]

end A020000

/-! ## A020000.P2311131683247530601

`5^(n+2)/12+11^(n+2)/24-7^(n+2)/8`
-/

namespace A020000.P2311131683247530601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 2) : ℚ) / 12 + (11 ^ (n + 2) : ℚ) / 24 - (7 ^ (n + 2) : ℚ) / 8

end

end A020000.P2311131683247530601

namespace A020000

/-- `5^(n+2)/12+11^(n+2)/24-7^(n+2)/8` -/
def P2311131683247530601.Spec : Prop :=
  ∀ n, P2311131683247530601.a n = (A020000 n : ℚ)

theorem P2311131683247530601.correct : P2311131683247530601.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020000, Nat.add_sub_cancel, A020000.P2311131683247530601.a, A020000.P14070388581886057387.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020000, Nat.add_sub_cancel, A020000.P2311131683247530601.a, A020000.P14070388581886057387.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020000

/-!
# A020001: Nearest integer to Gamma(n + 11/12)/Gamma(11/12).

The programs for A020001, there is no canonical definition to state claims against.
-/

/-! ## A020001.P16334932651013610091

`A114986(A210290(n+1))+A020046(n)`
-/

namespace A020001.P16334932651013610091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A210290 (n + 1)).toNat + A020046 n

end

end A020001.P16334932651013610091

/-! ## A020001.P15798983012910933477

`A020091(n)-A189723(A013988(n+1))`
-/

namespace A020001.P15798983012910933477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020091 n - A189723 (A013988 (n + 1)).toNat

end

end A020001.P15798983012910933477

/-! ## A020001.P8914088487328596983

`A020046(A028310(n))+1-A189723(A013988(n+1))`
-/

namespace A020001.P8914088487328596983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020046 (A028310 n).toNat + 1 - A189723 (A013988 (n + 1)).toNat

end

end A020001.P8914088487328596983

/-! ## A020001.P9432845147048534148

`A020046(n)+A057427(n)-A189723(A013988(n+1))`
-/

namespace A020001.P9432845147048534148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020046 n + (A057427 n - A189723 (A013988 (n + 1)).toNat)

end

end A020001.P9432845147048534148

/-! ## A020001.P2290589060757291962

`A178334(n)+A020046(n)-A189723(A013988(n+1))`
-/

namespace A020001.P2290589060757291962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020046 n - A189723 (A013988 (n + 1)).toNat

end

end A020001.P2290589060757291962

/-!
# A020002: Nearest integer to Gamma(n + 7/12)/Gamma(7/12).

The programs for A020002, there is no canonical definition to state claims against.
-/

/-! ## A020002.P8209764511540046508

`A020092(n)-A269166(A293734(n))`
-/

namespace A020002.P8209764511540046508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020092 n - A269166 (A293734 n).toNat

end

end A020002.P8209764511540046508

/-! ## A020002.P16634805201521795315

`A020047(abs(1-n)+1)+1-A269166(A293734(n))`
-/

namespace A020002.P16634805201521795315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020047 (|1 - (n : ℤ)| + 1).toNat + 1 - A269166 (A293734 n).toNat

end

end A020002.P16634805201521795315

/-! ## A020002.P10319490776303610705

`A020047(n)%A020006(n)+1-A269166(A293734(n))`
-/

namespace A020002.P10319490776303610705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020047 n) (A020006 n) + 1 - A269166 (A293734 n).toNat

end

end A020002.P10319490776303610705

/-! ## A020002.P8351401449503120046

`A020092(n)-A003849(A268929(n+1))`
-/

namespace A020002.P8351401449503120046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020092 n - A003849 (A268929 (n + 1)).toNat

end

end A020002.P8351401449503120046

/-!
# A020003: Nearest integer to Gamma(n + 5/12)/Gamma(5/12).

The programs for A020003, there is no canonical definition to state claims against.
-/

/-! ## A020003.P10612812672656138397

`A342910(A026104(n+1))+A020048(n)`
-/

namespace A020003.P10612812672656138397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (A026104 (n + 1)).toNat + A020048 n

end

end A020003.P10612812672656138397

/-! ## A020003.P1792267652217966764

`A342910(A026104(n+1))+A057428(n)+A020093(n)`
-/

namespace A020003.P1792267652217966764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (A026104 (n + 1)).toNat + (A057428 n + A020093 n)

end

end A020003.P1792267652217966764

/-! ## A020003.P10907995688579762779

`A342910(A026104(n+1))+A020093(n)-A057427(n)`
-/

namespace A020003.P10907995688579762779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (A026104 (n + 1)).toNat + (A020093 n - A057427 n)

end

end A020003.P10907995688579762779

/-! ## A020003.P9653477300983710028

`A342910(A026104(n+1))+A020093(n)-A178334(n)`
-/

namespace A020003.P9653477300983710028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (A026104 (n + 1)).toNat + (A020093 n - A178334 n)

end

end A020003.P9653477300983710028

/-! ## A020003.P18375800837382132639

`A342910(A026104(n+1))+A020093(n)-A011586(n²)`
-/

namespace A020003.P18375800837382132639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (A026104 (n + 1)).toNat + (A020093 n - A011586 (n ^ 2))

end

end A020003.P18375800837382132639

/-!
# A020004: Nearest integer to Gamma(n + 1/12)/Gamma(1/12).

The programs for A020004, there is no canonical definition to state claims against.
-/

/-! ## A020004.P16943900223442794152

`A086077(A020017(n))+A020049(n)`
-/

namespace A020004.P16943900223442794152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086077 (A020017 n).toNat + A020049 n

end

end A020004.P16943900223442794152

/-! ## A020004.P15301383622369906469

`A086077(A020044(n))+A020049(n)`
-/

namespace A020004.P15301383622369906469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086077 (A020044 n).toNat + A020049 n

end

end A020004.P15301383622369906469

/-! ## A020004.P10347828844901120597

`A091225(A020050(n))+A020049(n)`
-/

namespace A020004.P10347828844901120597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A020050 n).toNat + A020049 n

end

end A020004.P10347828844901120597

/-!
# A020005: Nearest integer to Gamma(n + 10/11)/Gamma(10/11).

The programs for A020005, there is no canonical definition to state claims against.
-/

/-! ## A020005.P11633191825038157763

`A020095(n)-A144596(A050535(n))`
-/

namespace A020005.P11633191825038157763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020095 n - A144596 (A050535 n).toNat

end

end A020005.P11633191825038157763

/-! ## A020005.P13370390564044254905

`A020095(n)-A144596(A077936(n))`
-/

namespace A020005.P13370390564044254905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020095 n - A144596 (A077936 n).toNat

end

end A020005.P13370390564044254905

/-! ## A020005.P17687635762035896864

`A057427(n)+A020050(n)-A144596(A050535(n))`
-/

namespace A020005.P17687635762035896864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020050 n - A144596 (A050535 n).toNat

end

end A020005.P17687635762035896864

/-! ## A020005.P16140762543594197822

`A057427(n)+A020050(n)-A144596(A077936(n))`
-/

namespace A020005.P16140762543594197822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020050 n - A144596 (A077936 n).toNat

end

end A020005.P16140762543594197822

/-! ## A020005.P18394861588972060801

`A020050(n)-A057428(n)-A144596(A050535(n))`
-/

namespace A020005.P18394861588972060801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020050 n - A057428 n - A144596 (A050535 n).toNat

end

end A020005.P18394861588972060801

/-!
# A020006: Nearest integer to Gamma(n + 9/11)/Gamma(9/11).

The programs for A020006, there is no canonical definition to state claims against.
-/

/-! ## A020006.P3646148337555451442

`A020096(n)-A118953(A092421(n+1))`
-/

namespace A020006.P3646148337555451442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020096 n - A118953 (A092421 (n + 1)).toNat

end

end A020006.P3646148337555451442

/-! ## A020006.P9728560010884282895

`A020051(n)-(A118953(A092421(n+1))+A057428(n))`
-/

namespace A020006.P9728560010884282895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020051 n - (A118953 (A092421 (n + 1)).toNat + A057428 n)

end

end A020006.P9728560010884282895

/-! ## A020006.P8915416244523968065

`A020051(n)+A178334(n)-A118953(A092421(n+1))`
-/

namespace A020006.P8915416244523968065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020051 n + (A178334 n - A118953 (A092421 (n + 1)).toNat)

end

end A020006.P8915416244523968065

/-! ## A020006.P9449184929466695211

`A020051(n)%A020025(n)+1-A118953(A092421(n+1))`
-/

namespace A020006.P9449184929466695211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020051 n) (A020025 n) + 1 - A118953 (A092421 (n + 1)).toNat

end

end A020006.P9449184929466695211

/-! ## A020006.P14856102278781298279

`A020096(n)-A324539(A053505(n))`
-/

namespace A020006.P14856102278781298279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020096 n - A324539 (A053505 n).toNat

end

end A020006.P14856102278781298279

/-!
# A020007: Nearest integer to Gamma(n + 8/11)/Gamma(8/11).

The programs for A020007, there is no canonical definition to state claims against.
-/

/-! ## A020007.P402188084817223742

`A020097(n)-A010060(A292154(3*n+5))`
-/

namespace A020007.P402188084817223742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020097 n - A010060 (A292154 (3 * n + 5)).toNat

end

end A020007.P402188084817223742

/-! ## A020007.P10697428348942104198

`A020097(n)-A118175(A090328(n+1))`
-/

namespace A020007.P10697428348942104198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020097 n - A118175 (A090328 (n + 1)).toNat

end

end A020007.P10697428348942104198

/-! ## A020007.P15231563184528972477

`A020097(n)-A134668(A229423(n+1))`
-/

namespace A020007.P15231563184528972477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020097 n - A134668 (A229423 (n + 1)).toNat

end

end A020007.P15231563184528972477

/-! ## A020007.P111466003025990832

`A020052(A028310(n))+1-A118175(A090328(n+1))`
-/

namespace A020007.P111466003025990832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020052 (A028310 n).toNat + 1 - A118175 (A090328 (n + 1)).toNat

end

end A020007.P111466003025990832

/-! ## A020007.P7099021728452096164

`A020052(A028310(n))+1-A134668(A229423(n+1))`
-/

namespace A020007.P7099021728452096164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020052 (A028310 n).toNat + 1 - A134668 (A229423 (n + 1)).toNat

end

end A020007.P7099021728452096164

/-!
# A020008: Nearest integer to Gamma(n + 7/11)/Gamma(7/11).

The programs for A020008, there is no canonical definition to state claims against.
-/

/-! ## A020008.P12580128361663740651

`A020098(n)-A288173(A034472(n))`
-/

namespace A020008.P12580128361663740651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020098 n - A288173 (A034472 n).toNat

end

end A020008.P12580128361663740651

/-! ## A020008.P9974982620990811578

`A020053(A028310(n))+1-A288173(A034472(n))`
-/

namespace A020008.P9974982620990811578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020053 (A028310 n).toNat + 1 - A288173 (A034472 n).toNat

end

end A020008.P9974982620990811578

/-! ## A020008.P9671757307176176972

`A020053(n)+A057427(n)-A288173(A034472(n))`
-/

namespace A020008.P9671757307176176972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020053 n + (A057427 n - A288173 (A034472 n).toNat)

end

end A020008.P9671757307176176972

/-! ## A020008.P12160861703370508729

`A020053(n)+A011620(n²)-A288173(A034472(n))`
-/

namespace A020008.P12160861703370508729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020053 n + A011620 (n ^ 2) - A288173 (A034472 n).toNat

end

end A020008.P12160861703370508729

/-! ## A020008.P4109314282501785859

`A020053(A065033(2*n))+1-A288173(A034472(n))`
-/

namespace A020008.P4109314282501785859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020053 (A065033 (2 * n)).toNat + 1 - A288173 (A034472 n).toNat

end

end A020008.P4109314282501785859

/-!
# A020009: Nearest integer to Gamma(n + 6/11)/Gamma(6/11).

The programs for A020009, there is no canonical definition to state claims against.
-/

/-! ## A020009.P10852907617249306509

`A020099(n)-A030315(A007716(n))`
-/

namespace A020009.P10852907617249306509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020099 n - A030315 (A007716 n).toNat

end

end A020009.P10852907617249306509

/-! ## A020009.P6774223274221117626

`A028310(A043545(n)+A020054(n))`
-/

namespace A020009.P6774223274221117626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A043545 n + A020054 n).toNat

end

end A020009.P6774223274221117626

/-! ## A020009.P17510645220256372003

`A028310(A020099(n)-A036987(n))`
-/

namespace A020009.P17510645220256372003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020099 n - A036987 n).toNat

end

end A020009.P17510645220256372003

/-! ## A020009.P17805686850535134830

`A020099(n)-A024360(A309845(n))`
-/

namespace A020009.P17805686850535134830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020099 n - A024360 (A309845 n).toNat

end

end A020009.P17805686850535134830

/-! ## A020009.P7476923259440987655

`A028310(A020054(n)+1-A036987(n))`
-/

namespace A020009.P7476923259440987655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020054 n + (1 - A036987 n)).toNat

end

end A020009.P7476923259440987655

/-!
# A020010: Nearest integer to Gamma(n + 5/11)/Gamma(5/11).

The programs for A020010, there is no canonical definition to state claims against.
-/

/-! ## A020010.P8601620833944251729

`A040001(A002024(n+5))+A023443(A020055(n))`
-/

namespace A020010.P8601620833944251729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A002024 (n + 5)).toNat + A023443 (A020055 n).toNat

end

end A020010.P8601620833944251729

/-! ## A020010.P9153902334832995275

`A020100(n)-A198261(A327334(2*n))`
-/

namespace A020010.P9153902334832995275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020100 n - A198261 (A327334 (2 * n)).toNat

end

end A020010.P9153902334832995275

/-! ## A020010.P9719999242621447464

`A030308(A246807(2*n+1))+A020055(n)`
-/

namespace A020010.P9719999242621447464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A246807 (2 * n + 1)).toNat + A020055 n

end

end A020010.P9719999242621447464

/-! ## A020010.P15429774895615308665

`A328248(A186311(2*n+3))+A020055(n)`
-/

namespace A020010.P15429774895615308665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A186311 (2 * n + 3)).toNat + A020055 n

end

end A020010.P15429774895615308665

/-!
# A020011: Nearest integer to Gamma(n + 4/11)/Gamma(4/11).

The programs for A020011, there is no canonical definition to state claims against.
-/

/-! ## A020011.P11103031942891615128

`A022003(A020055(n))+A020056(n)`
-/

namespace A020011.P11103031942891615128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A020055 n).toNat + A020056 n

end

end A020011.P11103031942891615128

/-! ## A020011.P17760066325345621093

`A086077(A020017(n))+A020056(n)`
-/

namespace A020011.P17760066325345621093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086077 (A020017 n).toNat + A020056 n

end

end A020011.P17760066325345621093

/-! ## A020011.P2929838340491526724

`A086077(A020044(n))+A020056(n)`
-/

namespace A020011.P2929838340491526724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086077 (A020044 n).toNat + A020056 n

end

end A020011.P2929838340491526724

/-! ## A020011.P8823954497256264744

`A122179(A121724(n))+A020056(n)`
-/

namespace A020011.P8823954497256264744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (A121724 n).toNat + A020056 n

end

end A020011.P8823954497256264744

/-! ## A020011.P11312572179402579997

`A023443(A280596(n)+A020101(n))`
-/

namespace A020011.P11312572179402579997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A280596 n + A020101 n).toNat

end

end A020011.P11312572179402579997

/-!
# A020012: Nearest integer to Gamma(n + 3/11)/Gamma(3/11).

The programs for A020012, there is no canonical definition to state claims against.
-/

/-! ## A020012.P10838482974247040756

`or(A020057(n), A059841(A110450(n)))`
-/

namespace A020012.P10838482974247040756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020057 n) (A059841 (A110450 n).toNat)

end

end A020012.P10838482974247040756

/-! ## A020012.P1395301801485351147

`A064911(A227975(n+1))+A020057(n)`
-/

namespace A020012.P1395301801485351147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A227975 (n + 1)).toNat + A020057 n

end

end A020012.P1395301801485351147

/-! ## A020012.P17221271119730969126

`A064911(A227975(n+1))+A057428(n)+A020102(n)`
-/

namespace A020012.P17221271119730969126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A227975 (n + 1)).toNat + (A057428 n + A020102 n)

end

end A020012.P17221271119730969126

/-! ## A020012.P7946972115989537986

`A064911(A227975(n+1))+A020102(n)-A057427(n)`
-/

namespace A020012.P7946972115989537986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A227975 (n + 1)).toNat + (A020102 n - A057427 n)

end

end A020012.P7946972115989537986

/-! ## A020012.P13215450649163705340

`A064911(A227975(n+1))+A020102(n)-A178334(n)`
-/

namespace A020012.P13215450649163705340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A227975 (n + 1)).toNat + (A020102 n - A178334 n)

end

end A020012.P13215450649163705340

/-!
# A020013: Nearest integer to Gamma(n + 2/11)/Gamma(2/11).

The programs for A020013, there is no canonical definition to state claims against.
-/

/-! ## A020013.P4344001729610899919

`A020058(n)+A011745(A020049(n))`
-/

namespace A020013.P4344001729610899919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020058 n + A011745 (A020049 n).toNat

end

end A020013.P4344001729610899919

/-! ## A020013.P11151902340996885543

`A022003(A020094(n))+A020058(n)`
-/

namespace A020013.P11151902340996885543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A020094 n).toNat + A020058 n

end

end A020013.P11151902340996885543

/-! ## A020013.P8315296811510497180

`A037910(A037922(n))+A020058(n)`
-/

namespace A020013.P8315296811510497180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037910 (A037922 n).toNat + A020058 n

end

end A020013.P8315296811510497180

/-! ## A020013.P16724056637598615292

`A336835(A001250(n))+A020058(n)`
-/

namespace A020013.P16724056637598615292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A001250 n).toNat + A020058 n

end

end A020013.P16724056637598615292

/-! ## A020013.P2785957725731369302

`A056170(A096044(n+1))+A020058(n)`
-/

namespace A020013.P2785957725731369302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A096044 (n + 1)).toNat + A020058 n

end

end A020013.P2785957725731369302

/-!
# A020014: Nearest integer to Gamma(n + 1/11)/Gamma(1/11).

The programs for A020014, there is no canonical definition to state claims against.
-/

/-! ## A020014.P18341570019929537179

`A020104(n)-A121262(A020085(n))`
-/

namespace A020014.P18341570019929537179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020104 n - A121262 (A020085 n).toNat

end

end A020014.P18341570019929537179

/-! ## A020014.P301819161568858731

`or(A020059(n), A052409(A020103(n)))`
-/

namespace A020014.P301819161568858731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020059 n) (A052409 (A020103 n).toNat)

end

end A020014.P301819161568858731

/-! ## A020014.P5493200933482309508

`A020104(n)-A010060(A056570(n))`
-/

namespace A020014.P5493200933482309508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020104 n - A010060 (A056570 n).toNat

end

end A020014.P5493200933482309508

/-!
# A020015: Nearest integer to Gamma(n + 9/10)/Gamma(9/10).

The programs for A020015, there is no canonical definition to state claims against.
-/

/-! ## A020015.P2926232093648506045

`round(A049212(n)/A011557(n))`
-/

namespace A020015.P2926232093648506045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049212 n : ℚ) / (A011557 n : ℚ))

end

end A020015.P2926232093648506045

/-! ## A020015.P6309005237836521257

`A295892(A005248(n))+A020060(n)`
-/

namespace A020015.P6309005237836521257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295892 (A005248 n).toNat + A020060 n

end

end A020015.P6309005237836521257

/-! ## A020015.P6351452430388552254

`A316343(A001906(n))+A020060(n)`
-/

namespace A020015.P6351452430388552254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316343 (A001906 n).toNat + A020060 n

end

end A020015.P6351452430388552254

/-! ## A020015.P3405502462508430624

`A020105(n)-A121262(A020105(n))`
-/

namespace A020015.P3405502462508430624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020105 n - A121262 (A020105 n).toNat

end

end A020015.P3405502462508430624

/-! ## A020015.P14677596088624317166

`A020105(n)-A129950(A020102(n))`
-/

namespace A020015.P14677596088624317166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020105 n - A129950 (A020102 n).toNat

end

end A020015.P14677596088624317166

/-!
# A020016: Nearest integer to Gamma(n + 7/10)/Gamma(7/10).

The programs for A020016, there is no canonical definition to state claims against.
-/

/-! ## A020016.P15366611365375868740

`A266716(A330641(3*n+4))+A020061(n)`
-/

namespace A020016.P15366611365375868740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266716 (A330641 (3 * n + 4)).toNat + A020061 n

end

end A020016.P15366611365375868740

/-! ## A020016.P438420230659112975

`A020061(n)+A000035(A044045(n))`
-/

namespace A020016.P438420230659112975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020061 n + A000035 (A044045 n).toNat

end

end A020016.P438420230659112975

/-! ## A020016.P2947525257339415494

`A020106(n)-A054845(A113300(n))`
-/

namespace A020016.P2947525257339415494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020106 n - A054845 (A113300 n).toNat

end

end A020016.P2947525257339415494

/-! ## A020016.P3777622494984573891

`A020061(A028310(n))+1-A054845(A113300(n))`
-/

namespace A020016.P3777622494984573891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020061 (A028310 n).toNat + 1 - A054845 (A113300 n).toNat

end

end A020016.P3777622494984573891

/-! ## A020016.P18072170461738675739

`A020106(n)+A000035(A044045(n))-A178334(n)`
-/

namespace A020016.P18072170461738675739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020106 n + (A000035 (A044045 n).toNat - A178334 n)

end

end A020016.P18072170461738675739

/-!
# A020017: Nearest integer to Gamma(n + 3/10)/Gamma(3/10).

The programs for A020017, there is no canonical definition to state claims against.
-/

/-! ## A020017.P14651061291730739790

`or(A283421(n+1)%2, A020062(n))`
-/

namespace A020017.P14651061291730739790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A283421 (n + 1)) 2) (A020062 n)

end

end A020017.P14651061291730739790

/-! ## A020017.P16177627155119386920

`or(A020062(n), A057427(A055395(n+1)))`
-/

namespace A020017.P16177627155119386920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020062 n) (A057427 (A055395 (n + 1)).toNat)

end

end A020017.P16177627155119386920

/-! ## A020017.P7839317220043192050

`or(A020062(n), A057427(A006924(n)))`
-/

namespace A020017.P7839317220043192050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020062 n) (A057427 (A006924 n).toNat)

end

end A020017.P7839317220043192050

/-! ## A020017.P5466546313144228392

`or(A020062(n), A082503(A002620(n)))`
-/

namespace A020017.P5466546313144228392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020062 n) (A082503 (A002620 n).toNat)

end

end A020017.P5466546313144228392

/-!
# A020018: Nearest integer to Gamma(n + 1/10)/Gamma(1/10).

The programs for A020018, there is no canonical definition to state claims against.
-/

/-! ## A020018.P11579100831934252184

`round(A144773(n)/A011557(n))`
-/

namespace A020018.P11579100831934252184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A144773 n : ℚ) / (A011557 n : ℚ))

end

end A020018.P11579100831934252184

/-! ## A020018.P13801572544744137330

`round(A144773(n)/A113598(n+1))`
-/

namespace A020018.P13801572544744137330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A144773 n : ℚ) / (A113598 (n + 1) : ℚ))

end

end A020018.P13801572544744137330

/-! ## A020018.P11975968213562256833

`A020063(n)+A005088(A086581(n))`
-/

namespace A020018.P11975968213562256833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020063 n + A005088 (A086581 n).toNat

end

end A020018.P11975968213562256833

/-! ## A020018.P10494472816647980686

`A005088(A086581(n))+A057428(n)+A020108(n)`
-/

namespace A020018.P10494472816647980686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (A086581 n).toNat + (A057428 n + A020108 n)

end

end A020018.P10494472816647980686

/-! ## A020018.P5420058508015344457

`A005088(A086581(n))+A020108(n)-A178334(n)`
-/

namespace A020018.P5420058508015344457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (A086581 n).toNat + (A020108 n - A178334 n)

end

end A020018.P5420058508015344457

/-!
# A020019: Nearest integer to Gamma(n + 8/9)/Gamma(8/9).

The programs for A020019, there is no canonical definition to state claims against.
-/

/-! ## A020019.P17290776092768865723

`round(A049211(n)/9^n)`
-/

namespace A020019.P17290776092768865723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049211 n : ℚ) / (9 ^ n : ℚ))

end

end A020019.P17290776092768865723

/-! ## A020019.P1394823926986159147

`A020064(n)+A000007(A020049(n))`
-/

namespace A020019.P1394823926986159147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n + A000007 (A020049 n).toNat

end

end A020019.P1394823926986159147

/-! ## A020019.P6481463859329859496

`A020064(n)+A000007(A020059(n))`
-/

namespace A020019.P6481463859329859496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n + A000007 (A020059 n).toNat

end

end A020019.P6481463859329859496

/-! ## A020019.P18107704322183896996

`A020064(n)+A000007(A020063(n))`
-/

namespace A020019.P18107704322183896996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n + A000007 (A020063 n).toNat

end

end A020019.P18107704322183896996

/-! ## A020019.P5856210926453644995

`A020064(n)+A000007(A020069(n))`
-/

namespace A020019.P5856210926453644995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n + A000007 (A020069 n).toNat

end

end A020019.P5856210926453644995

/-!
# A020020: Nearest integer to Gamma(n + 7/9)/Gamma(7/9).

The programs for A020020, there is no canonical definition to state claims against.
-/

/-! ## A020020.P7744892945357470326

`round(A147631(n+1)/A001019(n))`
-/

namespace A020020.P7744892945357470326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147631 (n + 1) : ℚ) / (A001019 n : ℚ))

end

end A020020.P7744892945357470326

/-! ## A020020.P9838875279174674904

`round(∏[A310857(2*n)]/A001019(n))`
-/

namespace A020020.P9838875279174674904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310857 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001019 n : ℚ))

end

end A020020.P9838875279174674904

/-! ## A020020.P1715710289171881425

`round(∏[A033627(3*n+1)]/A001019(n))`
-/

namespace A020020.P1715710289171881425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001019 n : ℚ))

end

end A020020.P1715710289171881425

/-! ## A020020.P12212447749064202057

`A109613(A020065(n))+char[3]`
-/

namespace A020020.P12212447749064202057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A020065 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A020020.P12212447749064202057

/-!
# A020021: Nearest integer to Gamma(n + 5/9)/Gamma(5/9).

The programs for A020021, there is no canonical definition to state claims against.
-/

/-! ## A020021.P1154324864037936399

`round(A147629(n+1)/A001019(n))`
-/

namespace A020021.P1154324864037936399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147629 (n + 1) : ℚ) / (A001019 n : ℚ))

end

end A020021.P1154324864037936399

/-! ## A020021.P9734752672510866640

`A020111(n)-A353269(A188378(n))`
-/

namespace A020021.P9734752672510866640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020111 n - A353269 (A188378 n).toNat

end

end A020021.P9734752672510866640

/-! ## A020021.P3540352099537803820

`A020111(n)-A010051(A080635(n))`
-/

namespace A020021.P3540352099537803820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020111 n - A010051 (A080635 n).toNat

end

end A020021.P3540352099537803820

/-! ## A020021.P3548189644122033411

`A020111(n)-A025426(A068111(n))`
-/

namespace A020021.P3548189644122033411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020111 n - A025426 (A068111 n).toNat

end

end A020021.P3548189644122033411

/-! ## A020021.P2450193932288135718

`A020111(n)-A252233(A020101(n))`
-/

namespace A020021.P2450193932288135718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020111 n - A252233 (A020101 n).toNat

end

end A020021.P2450193932288135718

/-!
# A020022: Nearest integer to Gamma(n + 4/9)/Gamma(4/9).

The programs for A020022, there is no canonical definition to state claims against.
-/

/-! ## A020022.P1631821453596064079

`A056563(A027941(n))+A020067(n)`
-/

namespace A020022.P1631821453596064079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 (A027941 n).toNat + A020067 n

end

end A020022.P1631821453596064079

/-! ## A020022.P18305487858407880004

`A246260(A056334(n+1)+1)+A020067(n)`
-/

namespace A020022.P18305487858407880004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (A056334 (n + 1) + 1).toNat + A020067 n

end

end A020022.P18305487858407880004

/-! ## A020022.P2983942877108424364

`A020112(n)+A057428(n)+A056563(A027941(n))`
-/

namespace A020022.P2983942877108424364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020112 n + (A057428 n + A056563 (A027941 n).toNat)

end

end A020022.P2983942877108424364

/-! ## A020022.P6773951193036356012

`A020112(n)+A056563(A027941(n))-A057427(n)`
-/

namespace A020022.P6773951193036356012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020112 n + (A056563 (A027941 n).toNat - A057427 n)

end

end A020022.P6773951193036356012

/-! ## A020022.P6831410959175575468

`A020112(n)+A056563(A027941(n))-A178334(n)`
-/

namespace A020022.P6831410959175575468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020112 n + (A056563 (A027941 n).toNat - A178334 n)

end

end A020022.P6831410959175575468

/-!
# A020023: Nearest integer to Gamma(n + 2/9)/Gamma(2/9).

The programs for A020023, there is no canonical definition to state claims against.
-/

/-! ## A020023.P313697761797082991

`round(A084949(n)/A001019(n))`
-/

namespace A020023.P313697761797082991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A084949 n : ℚ) / (A001019 n : ℚ))

end

end A020023.P313697761797082991

/-! ## A020023.P17724856590927095081

`round(A084949(n)/A133494(n+1)²)`
-/

namespace A020023.P17724856590927095081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A084949 n : ℚ) / (A133494 (n + 1) ^ 2 : ℚ))

end

end A020023.P17724856590927095081

/-! ## A020023.P11574676473684554730

`round(A084949(n)/A133494(2*n+1))`
-/

namespace A020023.P11574676473684554730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A084949 n : ℚ) / (A133494 (2 * n + 1) : ℚ))

end

end A020023.P11574676473684554730

/-! ## A020023.P8913632950168838266

`A273129(A000045(2*n))+A020068(n)`
-/

namespace A020023.P8913632950168838266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273129 (A000045 (2 * n)).toNat + A020068 n

end

end A020023.P8913632950168838266

/-! ## A020023.P1054477391936619560

`A320927(A006684(n+4))+A020068(n)`
-/

namespace A020023.P1054477391936619560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320927 (A006684 (n + 4)).toNat + A020068 n

end

end A020023.P1054477391936619560

/-!
# A020024: Nearest integer to Gamma(n + 1/9)/Gamma(1/9).

The programs for A020024, there is no canonical definition to state claims against.
-/

/-! ## A020024.P2929728990609647814

`round(A045756(n)/A001019(n))`
-/

namespace A020024.P2929728990609647814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045756 n : ℚ) / (A001019 n : ℚ))

end

end A020024.P2929728990609647814

/-! ## A020024.P14238656236323528694

`A020069(n)-A074290(A000108(n))`
-/

namespace A020024.P14238656236323528694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020069 n - A074290 (A000108 n).toNat

end

end A020024.P14238656236323528694

/-! ## A020024.P743174598167506987

`A157228(n+1)+A106608(A020069(n))`
-/

namespace A020024.P743174598167506987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (n + 1) + A106608 (A020069 n).toNat

end

end A020024.P743174598167506987

/-! ## A020024.P1156812078822167628

`A280751(A195598(n+1))+A020069(n)`
-/

namespace A020024.P1156812078822167628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280751 (A195598 (n + 1)).toNat + A020069 n

end

end A020024.P1156812078822167628

/-!
# A020025: Nearest integer to Gamma(n + 7/8)/Gamma(7/8).

The programs for A020025, there is no canonical definition to state claims against.
-/

/-! ## A020025.P6642522033056077201

`round(A049210(n)/8^n)`
-/

namespace A020025.P6642522033056077201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049210 n : ℚ) / (8 ^ n : ℚ))

end

end A020025.P6642522033056077201

/-! ## A020025.P7981002016571773755

`A229940(A002093(2*n+5))+A020070(n)`
-/

namespace A020025.P7981002016571773755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229940 (A002093 (2 * n + 5)).toNat + A020070 n

end

end A020025.P7981002016571773755

/-! ## A020025.P17919951803598978047

`A327205(A048049(3*n+4))+A020070(n)`
-/

namespace A020025.P17919951803598978047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 (A048049 (3 * n + 4)).toNat + A020070 n

end

end A020025.P17919951803598978047

/-! ## A020025.P17376714252033765392

`A340999(A020018(n))+A020070(n)`
-/

namespace A020025.P17376714252033765392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A020018 n).toNat + 204) + A020070 n

end

end A020025.P17376714252033765392

/-!
# A020026: Nearest integer to Gamma(n + 5/8)/Gamma(5/8).

The programs for A020026, there is no canonical definition to state claims against.
-/

/-! ## A020026.P7222753124931347374

`round(A147625(n+1)/8^n)`
-/

namespace A020026.P7222753124931347374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147625 (n + 1) : ℚ) / (8 ^ n : ℚ))

end

end A020026.P7222753124931347374

/-! ## A020026.P14200537187281958839

`A020071(n)+A010060(A088349(2*(n+2)))`
-/

namespace A020026.P14200537187281958839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020071 n + A010060 (A088349 (2 * (n + 2))).toNat

end

end A020026.P14200537187281958839

/-! ## A020026.P7822375743858044042

`A266719(A234844(n+1))+A020071(n)`
-/

namespace A020026.P7822375743858044042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (A234844 (n + 1)).toNat + A020071 n

end

end A020026.P7822375743858044042

/-! ## A020026.P9446463939399424062

`A266719(A234844(n+1))+A057428(n)+A020116(n)`
-/

namespace A020026.P9446463939399424062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (A234844 (n + 1)).toNat + (A057428 n + A020116 n)

end

end A020026.P9446463939399424062

/-! ## A020026.P14172591173539600550

`A266719(A234844(n+1))+A020116(n)-A266719(2*n+1)`
-/

namespace A020026.P14172591173539600550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (A234844 (n + 1)).toNat + (A020116 n - A266719 (2 * n + 1))

end

end A020026.P14172591173539600550

/-!
# A020027: Nearest integer to Gamma(n + 3/8)/Gamma(3/8).

The programs for A020027, there is no canonical definition to state claims against.
-/

/-! ## A020027.P13769187959202550167

`A266591(A153271(n))+A020072(n)`
-/

namespace A020027.P13769187959202550167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (A153271 n).toNat + A020072 n

end

end A020027.P13769187959202550167

/-! ## A020027.P17281512284061394562

`A020117(n)+A266591(A153271(n))+A057428(n)`
-/

namespace A020027.P17281512284061394562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020117 n + (A266591 (A153271 n).toNat + A057428 n)

end

end A020027.P17281512284061394562

/-! ## A020027.P12876936100461208454

`A020117(n)-A266591(A153271(n)+A057427(n))`
-/

namespace A020027.P12876936100461208454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020117 n - A266591 (A153271 n + A057427 n).toNat

end

end A020027.P12876936100461208454

/-! ## A020027.P6817714402872182524

`A020117(n)-A266591(A153271(n)-A057428(n))`
-/

namespace A020027.P6817714402872182524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020117 n - A266591 (A153271 n - A057428 n).toNat

end

end A020027.P6817714402872182524

/-! ## A020027.P5143342201916439864

`A020072(n)+A005089(A102549(n))`
-/

namespace A020027.P5143342201916439864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020072 n + A005089 (A102549 n).toNat

end

end A020027.P5143342201916439864

/-!
# A020028: Nearest integer to Gamma(n + 1/8)/Gamma(1/8).

The programs for A020028, there is no canonical definition to state claims against.
-/

/-! ## A020028.P4221939353690322565

`round(A045755(n)/A001018(n))`
-/

namespace A020028.P4221939353690322565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045755 n : ℚ) / (A001018 n : ℚ))

end

end A020028.P4221939353690322565

/-! ## A020028.P17450952706412786116

`round(A045755(n)/A000079(3*n))`
-/

namespace A020028.P17450952706412786116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045755 n : ℚ) / (A000079 (3 * n) : ℚ))

end

end A020028.P17450952706412786116

/-! ## A020028.P2091283071826321903

`A037824(A033304(n))+A020073(n)`
-/

namespace A020028.P2091283071826321903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A033304 n).toNat + A020073 n

end

end A020028.P2091283071826321903

/-! ## A020028.P15889886781442632126

`A020118(n)+A057428(n)+A037824(A033304(n))`
-/

namespace A020028.P15889886781442632126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020118 n + (A057428 n + A037824 (A033304 n).toNat)

end

end A020028.P15889886781442632126

/-! ## A020028.P8438098622771760445

`A185119(A072856(n))+A020073(n)`
-/

namespace A020028.P8438098622771760445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 (A072856 n).toNat + A020073 n

end

end A020028.P8438098622771760445

/-!
# A020029: Nearest integer to Gamma(n + 6/7)/Gamma(6/7).

The programs for A020029, there is no canonical definition to state claims against.
-/

/-! ## A020029.P18200303186421915223

`round(A049209(n)/7^n)`
-/

namespace A020029.P18200303186421915223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049209 n : ℚ) / (7 ^ n : ℚ))

end

end A020029.P18200303186421915223

/-! ## A020029.P17501839128467676013

`A121262(A020059(n))+A020074(n)`
-/

namespace A020029.P17501839128467676013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A020059 n).toNat + A020074 n

end

end A020029.P17501839128467676013

/-! ## A020029.P11944387100043587849

`A121262(A020063(n))+A020074(n)`
-/

namespace A020029.P11944387100043587849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A020063 n).toNat + A020074 n

end

end A020029.P11944387100043587849

/-! ## A020029.P1238469489676720535

`A020119(n)-A079978(A000108(n))`
-/

namespace A020029.P1238469489676720535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020119 n - A079978 (A000108 n).toNat

end

end A020029.P1238469489676720535

/-! ## A020029.P7453851942806534171

`A020119(n)-A011730(A020100(n))`
-/

namespace A020029.P7453851942806534171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020119 n - A011730 (A020100 n).toNat

end

end A020029.P7453851942806534171

/-!
# A020030: Nearest integer to Gamma(n + 5/7)/Gamma(5/7).

The programs for A020030, there is no canonical definition to state claims against.
-/

/-! ## A020030.P4661668824002205577

`round(A147585(n+1)/7^n)`
-/

namespace A020030.P4661668824002205577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147585 (n + 1) : ℚ) / (7 ^ n : ℚ))

end

end A020030.P4661668824002205577

/-! ## A020030.P1137152181044841251

`or(A000035(A020111(n)), A020075(n))`
-/

namespace A020030.P1137152181044841251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A020111 n).toNat) (A020075 n)

end

end A020030.P1137152181044841251

/-! ## A020030.P10683072722210480035

`or(A008651(A020023(n)), A020075(n))`
-/

namespace A020030.P10683072722210480035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008651 (A020023 n).toNat) (A020075 n)

end

end A020030.P10683072722210480035

/-! ## A020030.P282505135501516155

`or(A020075(n), A039963(A001040(n)))`
-/

namespace A020030.P282505135501516155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020075 n) (A039963 (A001040 n).toNat)

end

end A020030.P282505135501516155

/-! ## A020030.P4821201385486613014

`or(A000035(A059423(n)), A020075(n))`
-/

namespace A020030.P4821201385486613014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A059423 n).toNat) (A020075 n)

end

end A020030.P4821201385486613014

/-!
# A020031: Nearest integer to Gamma(n + 4/7)/Gamma(4/7).

The programs for A020031, there is no canonical definition to state claims against.
-/

/-! ## A020031.P13956032980697060039

`round(A144827(n)/7^n)`
-/

namespace A020031.P13956032980697060039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A144827 n : ℚ) / (7 ^ n : ℚ))

end

end A020031.P13956032980697060039

/-! ## A020031.P7891705771730277765

`A020076(n)+A003982(A020067(n))`
-/

namespace A020031.P7891705771730277765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020076 n + A003982 (A020067 n).toNat

end

end A020031.P7891705771730277765

/-! ## A020031.P18050053961857121454

`A003982(A020067(n))+A057428(n)+A020121(n)`
-/

namespace A020031.P18050053961857121454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A020067 n).toNat + (A057428 n + A020121 n)

end

end A020031.P18050053961857121454

/-! ## A020031.P16849247745914448719

`A003982(A020067(n))+A020121(n)-A057427(n)`
-/

namespace A020031.P16849247745914448719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A020067 n).toNat + (A020121 n - A057427 n)

end

end A020031.P16849247745914448719

/-! ## A020031.P17205383730291911875

`A003982(A020067(n))+A020121(n)-A178334(n)`
-/

namespace A020031.P17205383730291911875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A020067 n).toNat + (A020121 n - A178334 n)

end

end A020031.P17205383730291911875

/-!
# A020032: Nearest integer to Gamma(n + 3/7)/Gamma(3/7).

The programs for A020032, there is no canonical definition to state claims against.
-/

/-! ## A020032.P13923817957240017231

`round(A144739(n)/7^n)`
-/

namespace A020032.P13923817957240017231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A144739 n : ℚ) / (7 ^ n : ℚ))

end

end A020032.P13923817957240017231

/-! ## A020032.P16458981797752509729

`A020122(n)-A057078(A025587(n))`
-/

namespace A020032.P16458981797752509729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020122 n - A057078 (A025587 n).toNat

end

end A020032.P16458981797752509729

/-! ## A020032.P12536874597888389700

`A178334(n)+A020077(n)-A057078(A025587(n))`
-/

namespace A020032.P12536874597888389700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020077 n - A057078 (A025587 n).toNat

end

end A020032.P12536874597888389700

/-! ## A020032.P10393452031721904713

`A020077(n)-A057428(n)-A057078(A025587(n))`
-/

namespace A020032.P10393452031721904713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020077 n - A057428 n - A057078 (A025587 n).toNat

end

end A020032.P10393452031721904713

/-! ## A020032.P9774794489650367792

`A020122(n)-A116178(A000984(n))`
-/

namespace A020032.P9774794489650367792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020122 n - A116178 (A000984 n).toNat

end

end A020032.P9774794489650367792

/-!
# A020033: Nearest integer to Gamma(n + 2/7)/Gamma(2/7).

The programs for A020033, there is no canonical definition to state claims against.
-/

/-! ## A020033.P7623350106823064877

`round(A084947(n)/7^n)`
-/

namespace A020033.P7623350106823064877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A084947 n : ℚ) / (7 ^ n : ℚ))

end

end A020033.P7623350106823064877

/-! ## A020033.P15175192660109866453

`A025441(A367911(n+1))+A020078(n)`
-/

namespace A020033.P15175192660109866453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A367911 (n + 1)).toNat + A020078 n

end

end A020033.P15175192660109866453

/-! ## A020033.P10843838167201059674

`A117944(A118932(n))+A020078(n)`
-/

namespace A020033.P10843838167201059674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117944 (A118932 n).toNat + A020078 n

end

end A020033.P10843838167201059674

/-! ## A020033.P8073236984772010431

`A028310(A020123(n))-A093692(n+1)`
-/

namespace A020033.P8073236984772010431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020123 n).toNat - A093692 (n + 1)

end

end A020033.P8073236984772010431

/-! ## A020033.P7065244535838593894

`A020123(n)-A093692(A116018(n+1))`
-/

namespace A020033.P7065244535838593894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020123 n - A093692 (A116018 (n + 1)).toNat

end

end A020033.P7065244535838593894

/-!
# A020034: Nearest integer to Gamma(n + 1/7)/Gamma(1/7).

The programs for A020034, there is no canonical definition to state claims against.
-/

/-! ## A020034.P975102769021094274

`round(A045754(n)/7^n)`
-/

namespace A020034.P975102769021094274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045754 n : ℚ) / (7 ^ n : ℚ))

end

end A020034.P975102769021094274

/-! ## A020034.P4007275173491722609

`round(∏[7*(A004273(n)-n)+1]/A000420(n))`
-/

namespace A020034.P4007275173491722609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A004273 n - (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000420 n : ℚ))

end

end A020034.P4007275173491722609

/-! ## A020034.P4720378427094463753

`A135136(A121253(n+2))+A020079(n)`
-/

namespace A020034.P4720378427094463753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135136 (A121253 (n + 2)).toNat + A020079 n

end

end A020034.P4720378427094463753

/-! ## A020034.P13366977251438918589

`A220400(A020079(n))+A020079(n)`
-/

namespace A020034.P13366977251438918589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A020079 n).toNat + A020079 n

end

end A020034.P13366977251438918589

/-!
# A020035: Nearest integer to Gamma(n + 5/6)/Gamma(5/6).

The programs for A020035, there is no canonical definition to state claims against.
-/

/-! ## A020035.P7868353215712748934

`round(A008543(n)/A000400(n))`
-/

namespace A020035.P7868353215712748934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008543 n : ℚ) / (A000400 n : ℚ))

end

end A020035.P7868353215712748934

/-! ## A020035.P3667265026138590543

`round(A013988(∑[n]+1)/A000400(n))`
-/

namespace A020035.P3667265026138590543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A013988 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (A000400 n : ℚ))

end

end A020035.P3667265026138590543

/-! ## A020035.P7577505529072725836

`round(record[A013988(n+1)]/A000400(n))`
-/

namespace A020035.P7577505529072725836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000400 n : ℚ))

end

end A020035.P7577505529072725836

/-! ## A020035.P16002808832676516875

`A020125(n)-A341024(A084938(2*n))`
-/

namespace A020035.P16002808832676516875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020125 n - A341024 ((A084938 (2 * n)).toNat + 84)

end

end A020035.P16002808832676516875

/-! ## A020035.P17053929178841633312

`A121262(A020048(n))+A020080(n)`
-/

namespace A020035.P17053929178841633312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A020048 n).toNat + A020080 n

end

end A020035.P17053929178841633312

/-!
# A020036: Nearest integer to Gamma(n + 1/6)/Gamma(1/6).

The programs for A020036, there is no canonical definition to state claims against.
-/

/-! ## A020036.P15387278458110801851

`round(A008542(n)/A000400(n))`
-/

namespace A020036.P15387278458110801851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008542 n : ℚ) / (A000400 n : ℚ))

end

end A020036.P15387278458110801851

/-! ## A020036.P12792219201806858969

`A022003(A020063(n))+A020081(n)`
-/

namespace A020036.P12792219201806858969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A020063 n).toNat + A020081 n

end

end A020036.P12792219201806858969

/-! ## A020036.P10630855960402565321

`A022003(A020063(n))+A020126(n)-A178334(n)`
-/

namespace A020036.P10630855960402565321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A020063 n).toNat + (A020126 n - A178334 n)

end

end A020036.P10630855960402565321

/-!
# A020037: Nearest integer to Gamma(n + 4/5)/Gamma(4/5).

The programs for A020037, there is no canonical definition to state claims against.
-/

/-! ## A020037.P8604429198906284925

`round(∏[abs(1-5*n)]/5^n)`
-/

namespace A020037.P8604429198906284925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (5 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (5 ^ n : ℚ))

end

end A020037.P8604429198906284925

/-! ## A020037.P4724823854207748964

`A020127(n)-A083035(A338577(n+1))`
-/

namespace A020037.P4724823854207748964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020127 n - A083035 (A338577 (n + 1)).toNat

end

end A020037.P4724823854207748964

/-! ## A020037.P8209562717809440411

`A020127(n)-A283683(A153989(n))`
-/

namespace A020037.P8209562717809440411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020127 n - A283683 (A153989 n).toNat

end

end A020037.P8209562717809440411

/-! ## A020037.P13597243715370265576

`A020127(n)-A189706(A000707(n+1))`
-/

namespace A020037.P13597243715370265576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020127 n - A189706 (A000707 (n + 1)).toNat

end

end A020037.P13597243715370265576

/-!
# A020038: Nearest integer to Gamma(n + 3/5)/Gamma(3/5).

The programs for A020038, there is no canonical definition to state claims against.
-/

/-! ## A020038.P1410171562716971115

`round(∏[floor(abs(5*n-ϕ))]/5^n)`
-/

namespace A020038.P1410171562716971115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(5 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (5 ^ n : ℚ))

end

end A020038.P1410171562716971115

/-! ## A020038.P2662140230416579206

`A188467(A007051(n)+1)+A020083(n)`
-/

namespace A020038.P2662140230416579206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (A007051 n + 1).toNat + A020083 n

end

end A020038.P2662140230416579206

/-! ## A020038.P14865385906445235304

`A121262(A020047(n))+A020083(n)`
-/

namespace A020038.P14865385906445235304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A020047 n).toNat + A020083 n

end

end A020038.P14865385906445235304

/-! ## A020038.P16669107987496230487

`A072747(A116485(n)+A000122(n))`
-/

namespace A020038.P16669107987496230487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072747 (A116485 n + A000122 n).toNat

end

end A020038.P16669107987496230487

/-!
# A020039: Nearest integer to Gamma(n + 2/5)/Gamma(2/5).

The programs for A020039, there is no canonical definition to state claims against.
-/

/-! ## A020039.P7553368953676016300

`round(A047055(n)/5^n)`
-/

namespace A020039.P7553368953676016300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A047055 n : ℚ) / (5 ^ n : ℚ))

end

end A020039.P7553368953676016300

/-! ## A020039.P15056676419755465029

`A353673(A149584(n))+A020084(n)`
-/

namespace A020039.P15056676419755465029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353673 (A149584 n).toNat + A020084 n

end

end A020039.P15056676419755465029

/-! ## A020039.P2523150170957297559

`A373954(A202694(n+1))+A020084(n)`
-/

namespace A020039.P2523150170957297559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A202694 (n + 1)).toNat + A020084 n

end

end A020039.P2523150170957297559

/-! ## A020039.P4800508752528379906

`or(A020084(n), A228495(A020086(n)))`
-/

namespace A020039.P4800508752528379906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020084 n) (A228495 (A020086 n).toNat)

end

end A020039.P4800508752528379906

/-!
# A020040: a(n) = round( Gamma(n+1/5)/Gamma(1/5) ).

The programs for A020040, there is no canonical definition to state claims against.
-/

/-! ## A020040.P10900450819771300950

`round(A008548(n)/5^n)`
-/

namespace A020040.P10900450819771300950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008548 n : ℚ) / (5 ^ n : ℚ))

end

end A020040.P10900450819771300950

/-! ## A020040.P7940103105113889384

`round(A049385(∑[abs(1-n)])/A000351(n))`
-/

namespace A020040.P7940103105113889384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049385 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A000351 n : ℚ))

end

end A020040.P7940103105113889384

/-! ## A020040.P8946740581595174147

`round(∏[A046606(∑[n+2])]/A000351(n))`
-/

namespace A020040.P8946740581595174147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046606 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000351 n : ℚ))

end

end A020040.P8946740581595174147

/-! ## A020040.P5234373647258869996

`round(∏[record[A187307(n)]-n]/A000351(n))`
-/

namespace A020040.P5234373647258869996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000351 n : ℚ))

end

end A020040.P5234373647258869996

/-! ## A020040.P2972933479715888349

`round(A081408(A135042(n))/A000351(n))`
-/

namespace A020040.P2972933479715888349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081408 (A135042 n).toNat : ℚ) / (A000351 n : ℚ))

end

end A020040.P2972933479715888349

/-! ## A020040.P12791086858429578720

`round(∏[A081579(A000124(n))]/A000351(n))`
-/

namespace A020040.P12791086858429578720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081579 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000351 n : ℚ))

end

end A020040.P12791086858429578720

/-!
# A020041: a(n) = round( Gamma(n+3/4)/Gamma(3/4) ).

The programs for A020041, there is no canonical definition to state claims against.
-/

/-! ## A020041.P14433849800654127298

`round(∏[abs(1-4*n)]/4^n)`
-/

namespace A020041.P14433849800654127298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (4 ^ n : ℚ))

end

end A020041.P14433849800654127298

/-! ## A020041.P16429494233735404338

`A244229(A318951(n+1)+A117158(n))`
-/

namespace A020041.P16429494233735404338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244229 (A318951 (n + 1) + A117158 n).toNat

end

end A020041.P16429494233735404338

/-! ## A020041.P5077647458403556980

`A289207(A020131(n))+A281007(3*(n+1))`
-/

namespace A020041.P5077647458403556980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A020131 n).toNat + A281007 (3 * (n + 1))

end

end A020041.P5077647458403556980

/-!
# A020042: a(n) = round( Gamma(n+1/4)/Gamma(1/4) ).

The programs for A020042, there is no canonical definition to state claims against.
-/

/-! ## A020042.P6317044786943205732

`round(A007696(n)/4^n)`
-/

namespace A020042.P6317044786943205732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007696 n : ℚ) / (4 ^ n : ℚ))

end

end A020042.P6317044786943205732

/-! ## A020042.P18420823094954652112

`round(A290319(∑[n])/A000302(n))`
-/

namespace A020042.P18420823094954652112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A290319 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000302 n : ℚ))

end

end A020042.P18420823094954652112

/-! ## A020042.P1091973789288007480

`round(∏[A152204(n²-n)]/A000302(n))`
-/

namespace A020042.P1091973789288007480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000302 n : ℚ))

end

end A020042.P1091973789288007480

/-! ## A020042.P7605181880648514133

`A020132(n)-A280710(A125899(2*(n+1)))`
-/

namespace A020042.P7605181880648514133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020132 n - A280710 (A125899 (2 * (n + 1))).toNat

end

end A020042.P7605181880648514133

/-!
# A020043: a(n) = round(Gamma(n+2/3)/Gamma(2/3)).

The programs for A020043, there is no canonical definition to state claims against.
-/

/-! ## A020043.P6993676023118290153

`round(∏[abs(1-3*n)]/3^n)`
-/

namespace A020043.P6993676023118290153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (3 ^ n : ℚ))

end

end A020043.P6993676023118290153

/-! ## A020043.P13701021368138217378

`or(A010054(A020069(n)), A020088(n))`
-/

namespace A020043.P13701021368138217378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A020069 n).toNat) (A020088 n)

end

end A020043.P13701021368138217378

/-! ## A020043.P3158649797739184815

`or(A010054(A020094(n)), A020088(n))`
-/

namespace A020043.P3158649797739184815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A020094 n).toNat) (A020088 n)

end

end A020043.P3158649797739184815

/-! ## A020043.P7336240583902889789

`A000027(or(A020088(n), A053692(n)))`
-/

namespace A020043.P7336240583902889789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor (A020088 n) (A053692 n)).toNat

end

end A020043.P7336240583902889789

/-! ## A020043.P8560377069802218493

`or(A020088(n), A097806(A122367(n)))`
-/

namespace A020043.P8560377069802218493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020088 n) (A097806 (A122367 n).toNat)

end

end A020043.P8560377069802218493

/-!
# A020044: a(n) = round(Gamma(n+1/3)/Gamma(1/3)).

The programs for A020044, there is no canonical definition to state claims against.
-/

/-! ## A020044.P10837246079291874117

`round(∏[floor(abs(4*n-ϕ))-n]/3^n)`
-/

namespace A020044.P10837246079291874117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (3 ^ n : ℚ))

end

end A020044.P10837246079291874117

/-! ## A020044.P5732639362638055290

`A188432(A334578(n))+A020089(n)`
-/

namespace A020044.P5732639362638055290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A334578 n).toNat + A020089 n

end

end A020044.P5732639362638055290

/-! ## A020044.P10160176843221001704

`A020134(n)+A188432(A334578(n))+A057428(n)`
-/

namespace A020044.P10160176843221001704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020134 n + (A188432 (A334578 n).toNat + A057428 n)

end

end A020044.P10160176843221001704

/-! ## A020044.P11725961409301332265

`A020134(n)+A188432(A334578(n))-A178334(n)`
-/

namespace A020044.P11725961409301332265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020134 n + (A188432 (A334578 n).toNat - A178334 n)

end

end A020044.P11725961409301332265

/-! ## A020044.P14944698486102150315

`A188432(A334578(n))+A020134(n)-A011599(n²)`
-/

namespace A020044.P14944698486102150315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A334578 n).toNat + (A020134 n - A011599 (n ^ 2))

end

end A020044.P14944698486102150315

/-!
# A020045: Nearest integer to Gamma(n + 1/2)/Gamma(1/2).

The programs for A020045, there is no canonical definition to state claims against.
-/

/-! ## A020045.P152950703867945302

`round(∏[A004280(n+1)/2])`
-/

namespace A020045.P152950703867945302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004280 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A020045.P152950703867945302

/-! ## A020045.P10318710798162318344

`round(∏[abs(1-2*n)]/2^n)`
-/

namespace A020045.P10318710798162318344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 ^ n : ℚ))

end

end A020045.P10318710798162318344

/-! ## A020045.P2077972145205806254

`floor((A001147(n)/A011782(n)+1)/2)`
-/

namespace A020045.P2077972145205806254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A001147 n : ℚ) / (A011782 n : ℚ) + 1) / 2⌋

end

end A020045.P2077972145205806254

/-! ## A020045.P14405485597475987986

`round(A001147(n)/2^n)^A178334(n)`
-/

namespace A020045.P14405485597475987986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A001147 n : ℚ) / (2 ^ n : ℚ)) : ℚ) ^ (A178334 n : ℤ)

end

end A020045.P14405485597475987986

/-! ## A020045.P13891924764973247217

`or(round(A001147(n)/2^n), A000007(n))`
-/

namespace A020045.P13891924764973247217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A001147 n : ℚ) / (2 ^ n : ℚ))) (A000007 n)

end

end A020045.P13891924764973247217

/-!
# A020046: a(n) = floor(Gamma(n+11/12)/Gamma(11/12)).

The programs for A020046, there is no canonical definition to state claims against.
-/

/-! ## A020046.P6221161045465129417

`A020091(n)-A057427(n)`
-/

namespace A020046.P6221161045465129417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020091 n - A057427 n

end

end A020046.P6221161045465129417

/-! ## A020046.P3147714297794574222

`A020091(n)-A178334(n)`
-/

namespace A020046.P3147714297794574222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020091 n - A178334 n

end

end A020046.P3147714297794574222

/-! ## A020046.P1982249365479723198

`A020091(n)-n/A028310(n)`
-/

namespace A020046.P1982249365479723198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020091 n : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A020046.P1982249365479723198

/-! ## A020046.P8551439514532514577

`A020091(n)-char[A055266(n+1)]`
-/

namespace A020046.P8551439514532514577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055266 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020091 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020046.P8551439514532514577

/-! ## A020046.P14150748055788903236

`A020091(n)-char[A329344(n+1)]`
-/

namespace A020046.P14150748055788903236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020091 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020046.P14150748055788903236

/-! ## A020046.P6719669075466773584

`A020091(n)-char[A009998(n)]`
-/

namespace A020046.P6719669075466773584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020091 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020046.P6719669075466773584

/-!
# A020047: a(n) = floor(Gamma(n+7/12)/Gamma(7/12)).

The programs for A020047, there is no canonical definition to state claims against.
-/

/-! ## A020047.P4371776852952352980

`A020092(n)-A057427(n)`
-/

namespace A020047.P4371776852952352980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020092 n - A057427 n

end

end A020047.P4371776852952352980

/-! ## A020047.P11101490953868389000

`A020092(n)-A165476(n²)`
-/

namespace A020047.P11101490953868389000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020092 n - A165476 (n ^ 2)

end

end A020047.P11101490953868389000

/-! ## A020047.P13065182170514249653

`A020092(n)-char[A051597(n)]`
-/

namespace A020047.P13065182170514249653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020092 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020047.P13065182170514249653

/-! ## A020047.P10793608985809636027

`A020092(n)-char[A074909(n)]`
-/

namespace A020047.P10793608985809636027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020092 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020047.P10793608985809636027

/-! ## A020047.P4376018963211791207

`A020092(n)-char[A135278(n)]`
-/

namespace A020047.P4376018963211791207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020092 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020047.P4376018963211791207

/-! ## A020047.P16770996268029210747

`A020092(n)-char[A153861(n)]`
-/

namespace A020047.P16770996268029210747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020092 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020047.P16770996268029210747

/-!
# A020048: a(n) = floor(Gamma(n+5/12)/Gamma(5/12)).

The programs for A020048, there is no canonical definition to state claims against.
-/

/-! ## A020048.P10685547049283764364

`A057428(n)+A020093(n)`
-/

namespace A020048.P10685547049283764364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020093 n

end

end A020048.P10685547049283764364

/-! ## A020048.P50052489454741389

`A020093(n)-A057427(n)`
-/

namespace A020048.P50052489454741389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020093 n - A057427 n

end

end A020048.P50052489454741389

/-! ## A020048.P445813742875579975

`A020093(n)-A178334(n)`
-/

namespace A020048.P445813742875579975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020093 n - A178334 n

end

end A020048.P445813742875579975

/-! ## A020048.P9488178921222244413

`A020093(n)-char[A026736(n)]`
-/

namespace A020048.P9488178921222244413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020093 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020048.P9488178921222244413

/-! ## A020048.P3027664800438339451

`A020093(n)-char[A102541(n)]`
-/

namespace A020048.P3027664800438339451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020093 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020048.P3027664800438339451

/-! ## A020048.P11315885674010450868

`A020093(n)-char[A077609(n+1)]`
-/

namespace A020048.P11315885674010450868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020093 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020048.P11315885674010450868

/-! ## A020048.P16360698710088086141

`A020093(n)-char[A237270(n+1)]`
-/

namespace A020048.P16360698710088086141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020093 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020048.P16360698710088086141

/-!
# A020049: a(n) = floor(Gamma(n+1/12)/Gamma(1/12)).

The programs for A020049, there is no canonical definition to state claims against.
-/

/-! ## A020049.P2998899466174004627

`A020094(n)-(1-floor(acot(n)))`
-/

namespace A020049.P2998899466174004627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020094 n - (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A020049.P2998899466174004627

/-! ## A020049.P11767812811724046504

`A057428(n)+A020094(n)`
-/

namespace A020049.P11767812811724046504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020094 n

end

end A020049.P11767812811724046504

/-! ## A020049.P11259816749971745174

`A020094(n)-A057427(n)`
-/

namespace A020049.P11259816749971745174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020094 n - A057427 n

end

end A020049.P11259816749971745174

/-! ## A020049.P13333659760345916644

`A020094(n)-A178334(n)`
-/

namespace A020049.P13333659760345916644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020094 n - A178334 n

end

end A020049.P13333659760345916644

/-! ## A020049.P17231723233383839796

`A020094(n)-A165476(n²)`
-/

namespace A020049.P17231723233383839796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020094 n - A165476 (n ^ 2)

end

end A020049.P17231723233383839796

/-! ## A020049.P14894590657370286639

`A020094(n)-char[A051597(n)]`
-/

namespace A020049.P14894590657370286639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020094 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020049.P14894590657370286639

/-! ## A020049.P5057254763107664619

`A020094(n)-char[A074909(n)]`
-/

namespace A020049.P5057254763107664619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020094 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020049.P5057254763107664619

/-! ## A020049.P11783187990368833934

`A000007(n)+A020094(n)-1`
-/

namespace A020049.P11783187990368833934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A020094 n - 1)

end

end A020049.P11783187990368833934

/-! ## A020049.P4881400714317691943

`A020094(n)-A001221(A001316(n))`
-/

namespace A020049.P4881400714317691943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020094 n - A001221 (A001316 n).toNat

end

end A020049.P4881400714317691943

/-! ## A020049.P5105453672146211962

`A020094(n)-A001221(A062383(n))`
-/

namespace A020049.P5105453672146211962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020094 n - A001221 (A062383 n).toNat

end

end A020049.P5105453672146211962

/-!
# A020050: a(n) = floor(Gamma(n+10/11)/Gamma(10/11)).

The programs for A020050, there is no canonical definition to state claims against.
-/

/-! ## A020050.P13429055155691923404

`floor(acot(n))+A020095(n)-1`
-/

namespace A020050.P13429055155691923404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (A020095 n - 1)

end

end A020050.P13429055155691923404

/-! ## A020050.P5551068954387688134

`A020095(abs(1-n)+1)-1`
-/

namespace A020050.P5551068954387688134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020095 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A020050.P5551068954387688134

/-! ## A020050.P2371778847709434257

`A057428(n)+A020095(n)`
-/

namespace A020050.P2371778847709434257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020095 n

end

end A020050.P2371778847709434257

/-! ## A020050.P11275614595322946355

`abs(A020095(n)-A057427(n))`
-/

namespace A020050.P11275614595322946355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020095 n - A057427 n|

end

end A020050.P11275614595322946355

/-! ## A020050.P5473470779615606260

`abs(A020095(n)-A178334(n))`
-/

namespace A020050.P5473470779615606260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020095 n - A178334 n|

end

end A020050.P5473470779615606260

/-!
# A020051: a(n) = floor(Gamma(n+9/11)/Gamma(9/11)).

The programs for A020051, there is no canonical definition to state claims against.
-/

/-! ## A020051.P10421670561102121294

`A020096(n)-(1-floor(acot(n)))`
-/

namespace A020051.P10421670561102121294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020096 n - (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A020051.P10421670561102121294

/-! ## A020051.P10258194468902724110

`A020096(n)-A178334(n)`
-/

namespace A020051.P10258194468902724110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020096 n - A178334 n

end

end A020051.P10258194468902724110

/-! ## A020051.P12727798946047731592

`A020096(n)-char[A051597(n)]`
-/

namespace A020051.P12727798946047731592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020096 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020051.P12727798946047731592

/-! ## A020051.P413043245385272310

`A020096(n)-char[A074909(n)]`
-/

namespace A020051.P413043245385272310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020096 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020051.P413043245385272310

/-! ## A020051.P14454770317330046347

`A020096(n)-A326787(A072376(n))`
-/

namespace A020051.P14454770317330046347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020096 n - A326787 (A072376 n).toNat

end

end A020051.P14454770317330046347

/-!
# A020052: a(n) = floor(Gamma(n + 8/11)/Gamma(8/11)).

The programs for A020052, there is no canonical definition to state claims against.
-/

/-! ## A020052.P6046960186098501352

`floor(acot(n))+A020097(n)-1`
-/

namespace A020052.P6046960186098501352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (A020097 n - 1)

end

end A020052.P6046960186098501352

/-! ## A020052.P5295865541323165132

`A020097(n)-A057427(n)`
-/

namespace A020052.P5295865541323165132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020097 n - A057427 n

end

end A020052.P5295865541323165132

/-! ## A020052.P13000018357710039568

`A020097(n)-A178334(n)`
-/

namespace A020052.P13000018357710039568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020097 n - A178334 n

end

end A020052.P13000018357710039568

/-! ## A020052.P2691051659745071555

`abs(A020097(n)-A054977(n))`
-/

namespace A020052.P2691051659745071555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020097 n - A054977 n|

end

end A020052.P2691051659745071555

/-! ## A020052.P10443630447428341094

`A020097(n)-A011620(n²)`
-/

namespace A020052.P10443630447428341094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020097 n - A011620 (n ^ 2)

end

end A020052.P10443630447428341094

/-! ## A020052.P15456495731805606827

`A020097(n)-char[A051597(n)]`
-/

namespace A020052.P15456495731805606827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020097 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020052.P15456495731805606827

/-! ## A020052.P3717286310546400971

`A020097(n)-char[A074909(n)]`
-/

namespace A020052.P3717286310546400971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020097 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020052.P3717286310546400971

/-! ## A020052.P15670338403929679532

`A020097(n)-char[A116966(n)]`
-/

namespace A020052.P15670338403929679532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020097 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020052.P15670338403929679532

/-! ## A020052.P4064210884985991640

`A020097(n)-char[A135278(n)]`
-/

namespace A020052.P4064210884985991640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020097 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020052.P4064210884985991640

/-! ## A020052.P15228415431519608906

`A000007(n)+A020097(n)-1`
-/

namespace A020052.P15228415431519608906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A020097 n - 1)

end

end A020052.P15228415431519608906

/-!
# A020053: a(n) = floor(Gamma(n + 7/11)/Gamma(7/11)).

The programs for A020053, there is no canonical definition to state claims against.
-/

/-! ## A020053.P5089821199151043015

`A020098(n)-A057427(n)`
-/

namespace A020053.P5089821199151043015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020098 n - A057427 n

end

end A020053.P5089821199151043015

/-! ## A020053.P8998231850460043266

`abs(A020098(n)-A054977(n))`
-/

namespace A020053.P8998231850460043266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020098 n - A054977 n|

end

end A020053.P8998231850460043266

/-! ## A020053.P17019466366877195046

`A020098(n)-char[A051597(n)]`
-/

namespace A020053.P17019466366877195046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020098 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020053.P17019466366877195046

/-! ## A020053.P17350857201250689768

`A020098(n)-char[A074909(n)]`
-/

namespace A020053.P17350857201250689768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020098 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020053.P17350857201250689768

/-! ## A020053.P1996352898545706230

`A020098(n)-char[A135278(n)]`
-/

namespace A020053.P1996352898545706230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020098 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020053.P1996352898545706230

/-!
# A020054: a(n) = floor(Gamma(n+6/11)/Gamma(6/11)).

The programs for A020054, there is no canonical definition to state claims against.
-/

/-! ## A020054.P15848721363288960117

`A020099(n)-(1-floor(acot(n)))`
-/

namespace A020054.P15848721363288960117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020099 n - (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A020054.P15848721363288960117

/-! ## A020054.P15353414258244707734

`A020099(n)-A057427(n)`
-/

namespace A020054.P15353414258244707734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020099 n - A057427 n

end

end A020054.P15353414258244707734

/-! ## A020054.P15892356254969352710

`A020099(n)-A178334(n)`
-/

namespace A020054.P15892356254969352710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020099 n - A178334 n

end

end A020054.P15892356254969352710

/-! ## A020054.P1153453061534507927

`A020099(n)-char[A008287(n)]`
-/

namespace A020054.P1153453061534507927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020099 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020054.P1153453061534507927

/-! ## A020054.P8846516690854580913

`A000007(n)+A020099(n)-1`
-/

namespace A020054.P8846516690854580913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A020099 n - 1)

end

end A020054.P8846516690854580913

/-! ## A020054.P18033095389285870695

`A020099(n)-A043545(2*n)`
-/

namespace A020054.P18033095389285870695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020099 n - A043545 (2 * n)

end

end A020054.P18033095389285870695

/-! ## A020054.P4482577616181368324

`A020099(n)-n/A028310(n)`
-/

namespace A020054.P4482577616181368324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020099 n : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A020054.P4482577616181368324

/-! ## A020054.P7791370780130690057

`abs(A000038(n)!-A020099(n))`
-/

namespace A020054.P7791370780130690057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (A000038 n).toNat : ℤ) - A020099 n|

end

end A020054.P7791370780130690057

/-! ## A020054.P11115896284753415509

`A020099(n)-A002262(A000124(n))`
-/

namespace A020054.P11115896284753415509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020099 n - A002262 (A000124 n).toNat

end

end A020054.P11115896284753415509

/-! ## A020054.P16504223049318612967

`A020099(n)-A288132(A250120(n))`
-/

namespace A020054.P16504223049318612967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020099 n - A288132 (A250120 n).toNat

end

end A020054.P16504223049318612967

/-!
# A020055: a(n) = floor(Gamma(n+5/11)/Gamma(5/11)).

The programs for A020055, there is no canonical definition to state claims against.
-/

/-! ## A020055.P8228549137487079295

`A057428(n)+A020100(n)`
-/

namespace A020055.P8228549137487079295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020100 n

end

end A020055.P8228549137487079295

/-! ## A020055.P1361252465464659965

`A020100(n)-A057427(n)`
-/

namespace A020055.P1361252465464659965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020100 n - A057427 n

end

end A020055.P1361252465464659965

/-! ## A020055.P2129324448887740280

`A020100(n)-A178334(n)`
-/

namespace A020055.P2129324448887740280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020100 n - A178334 n

end

end A020055.P2129324448887740280

/-! ## A020055.P8624789877028710049

`A020100(n)-A141169(∑[n]+1)`
-/

namespace A020055.P8624789877028710049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020100 n - A141169 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A020055.P8624789877028710049

/-! ## A020055.P712467178785132736

`A020100(n)-char[A038388(n+1)]`
-/

namespace A020055.P712467178785132736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020100 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020055.P712467178785132736

/-! ## A020055.P12898525870995497297

`A020100(n)-A002262(A000124(n))`
-/

namespace A020055.P12898525870995497297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020100 n - A002262 (A000124 n).toNat

end

end A020055.P12898525870995497297

/-! ## A020055.P8690488996889710489

`A020100(n)-A020100(a(A044941(n+1)))` with `a(0)=1`
-/

namespace A020055.P8690488996889710489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020100 n - A020100 (a (A044941 (n + 1)).toNat).toNat

end

end A020055.P8690488996889710489

/-!
# A020056: a(n) = floor(Gamma(n+4/11)/Gamma(4/11)).

The programs for A020056, there is no canonical definition to state claims against.
-/

/-! ## A020056.P4144740641966533086

`A020101(n)-A178334(n)`
-/

namespace A020056.P4144740641966533086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020101 n - A178334 n

end

end A020056.P4144740641966533086

/-! ## A020056.P9510667500778809469

`A020101(n)-char[A065648(n)]`
-/

namespace A020056.P9510667500778809469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020101 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020056.P9510667500778809469

/-! ## A020056.P9422943273267220609

`A020101(n)-char[A242112(n)]`
-/

namespace A020056.P9422943273267220609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020101 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020056.P9422943273267220609

/-! ## A020056.P5289895454793024893

`A020101(n)-A019430(2*n)`
-/

namespace A020056.P5289895454793024893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020101 n - A019430 (2 * n)

end

end A020056.P5289895454793024893

/-! ## A020056.P12671230125743966197

`A020101(n)-A002262(A000124(n))`
-/

namespace A020056.P12671230125743966197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020101 n - A002262 (A000124 n).toNat

end

end A020056.P12671230125743966197

/-! ## A020056.P3447322632922486486

`A020101(n)-A056926(A019430(n))`
-/

namespace A020056.P3447322632922486486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020101 n - A056926 (A019430 n).toNat

end

end A020056.P3447322632922486486

/-! ## A020056.P6833286452270370302

`A020101(n)-A019430(A005843(n))²`
-/

namespace A020056.P6833286452270370302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020101 n - A019430 (A005843 n).toNat ^ 2

end

end A020056.P6833286452270370302

/-!
# A020057: a(n) = floor(Gamma(n+3/11)/Gamma(3/11)).

The programs for A020057, there is no canonical definition to state claims against.
-/

/-! ## A020057.P5559307125589879492

`A020102(n)-ceil(sin(n)²)`
-/

namespace A020057.P5559307125589879492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020102 n - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A020057.P5559307125589879492

/-! ## A020057.P14610257878916083425

`A057428(n)+A020102(n)`
-/

namespace A020057.P14610257878916083425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020102 n

end

end A020057.P14610257878916083425

/-! ## A020057.P6118683547638557419

`A020102(n)-A057427(n)`
-/

namespace A020057.P6118683547638557419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020102 n - A057427 n

end

end A020057.P6118683547638557419

/-! ## A020057.P8351965226697483509

`A020102(n)-A178334(n)`
-/

namespace A020057.P8351965226697483509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020102 n - A178334 n

end

end A020057.P8351965226697483509

/-! ## A020057.P17191466274063928729

`A000007(n)+A020102(n)-1`
-/

namespace A020057.P17191466274063928729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A020102 n - 1)

end

end A020057.P17191466274063928729

/-! ## A020057.P9723262141516217540

`abs(A014963(4*n+2)-A020102(n))`
-/

namespace A020057.P9723262141516217540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014963 (4 * n + 2) - A020102 n|

end

end A020057.P9723262141516217540

/-! ## A020057.P4774637484453805345

`A020102(n)-A001222(A006005(n+1))`
-/

namespace A020057.P4774637484453805345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020102 n - A001222 (A006005 (n + 1)).toNat

end

end A020057.P4774637484453805345

/-! ## A020057.P8883581385415590307

`A020102(n)-A000007(A000007(n)*A020102(n))`
-/

namespace A020057.P8883581385415590307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020102 n - A000007 (A000007 n * A020102 n).toNat

end

end A020057.P8883581385415590307

/-! ## A020057.P1803510485181703480

`A020102(n)-A000007(A000007(n)/A020102(n))`
-/

namespace A020057.P1803510485181703480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020102 n - A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A020102 n : ℚ))).toNat

end

end A020057.P1803510485181703480

/-!
# A020058: a(n) = floor(Gamma(n+2/11)/Gamma(2/11)).

The programs for A020058, there is no canonical definition to state claims against.
-/

/-! ## A020058.P2124983011823891932

`A020103(n)-ceil(sin(n)²)`
-/

namespace A020058.P2124983011823891932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020103 n - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A020058.P2124983011823891932

/-! ## A020058.P15390635602715168489

`A020103(n)-A057427(n)`
-/

namespace A020058.P15390635602715168489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020103 n - A057427 n

end

end A020058.P15390635602715168489

/-! ## A020058.P4435114389651892978

`A020103(n)-A178334(n)`
-/

namespace A020058.P4435114389651892978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020103 n - A178334 n

end

end A020058.P4435114389651892978

/-! ## A020058.P13712143651981177040

`A020103(n)-A019425(2*n)`
-/

namespace A020058.P13712143651981177040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020103 n - A019425 (2 * n)

end

end A020058.P13712143651981177040

/-! ## A020058.P16695466816199255212

`abs(A000038(n)!-A020103(n))`
-/

namespace A020058.P16695466816199255212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (A000038 n).toNat : ℤ) - A020103 n|

end

end A020058.P16695466816199255212

/-! ## A020058.P10405987035836981999

`A020103(n)-char[A064989(n+1)]`
-/

namespace A020058.P10405987035836981999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020103 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020058.P10405987035836981999

/-! ## A020058.P13430222895306686861

`A020103(n)-A019425(A004275(n))²`
-/

namespace A020058.P13430222895306686861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020103 n - A019425 (A004275 n).toNat ^ 2

end

end A020058.P13430222895306686861

/-! ## A020058.P1933953955065272548

`A020103(n)-A019425(A005843(n))²`
-/

namespace A020058.P1933953955065272548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020103 n - A019425 (A005843 n).toNat ^ 2

end

end A020058.P1933953955065272548

/-! ## A020058.P9928267951436315938

`A020103(n)-A019425(A019425(n))²`
-/

namespace A020058.P9928267951436315938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020103 n - A019425 (A019425 n).toNat ^ 2

end

end A020058.P9928267951436315938

/-!
# A020059: a(n) = floor(Gamma(n+1/11) / Gamma(1/11)).

The programs for A020059, there is no canonical definition to state claims against.
-/

/-! ## A020059.P15499219323378627281

`A020104(n)-A178334(n)`
-/

namespace A020059.P15499219323378627281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020104 n - A178334 n

end

end A020059.P15499219323378627281

/-! ## A020059.P9473118580558751226

`A020104(n)-char[A098550(n+1)]`
-/

namespace A020059.P9473118580558751226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020104 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020059.P9473118580558751226

/-! ## A020059.P2178102711744861888

`A020104(n)-A002262(A000124(n))`
-/

namespace A020059.P2178102711744861888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020104 n - A002262 (A000124 n).toNat

end

end A020059.P2178102711744861888

/-! ## A020059.P5190774483721812980

`A020104(n)-A001221(A034444(n+1))`
-/

namespace A020059.P5190774483721812980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020104 n - A001221 (A034444 (n + 1)).toNat

end

end A020059.P5190774483721812980

/-! ## A020059.P5375687341666141095

`A020104(n)-A000035(A105562(n+1))`
-/

namespace A020059.P5375687341666141095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020104 n - A000035 (A105562 (n + 1)).toNat

end

end A020059.P5375687341666141095

/-!
# A020060: a(n) = floor( Gamma(n+9/10)/Gamma(9/10) ).

The programs for A020060, there is no canonical definition to state claims against.
-/

/-! ## A020060.P2581613055247751565

`A057428(n)+A020105(n)`
-/

namespace A020060.P2581613055247751565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020105 n

end

end A020060.P2581613055247751565

/-! ## A020060.P6806141494381407991

`A000007(n)+A020105(n)-1`
-/

namespace A020060.P6806141494381407991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A020105 n - 1)

end

end A020060.P6806141494381407991

/-! ## A020060.P14674786306559781466

`A020105(n)+A151878(n)-1`
-/

namespace A020060.P14674786306559781466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020105 n + (A151878 n - 1)

end

end A020060.P14674786306559781466

/-! ## A020060.P15994328520211690552

`A020105(n)-a(A000038(n))` with `a(0)=1`
-/

namespace A020060.P15994328520211690552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020105 n - a (A000038 n).toNat

end

end A020060.P15994328520211690552

/-! ## A020060.P17566763783534591631

`A023443(A151878(n))+A020105(n)`
-/

namespace A020060.P17566763783534591631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A151878 n).toNat + A020105 n

end

end A020060.P17566763783534591631

/-! ## A020060.P3577916181978026885

`A000007(n)+A020105(n)+A001478(n+1)+n`
-/

namespace A020060.P3577916181978026885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A020105 n + A001478 (n + 1) + (n : ℤ))

end

end A020060.P3577916181978026885

/-!
# A020061: Integer part of Gamma(n+7/10)/Gamma(7/10).

The programs for A020061, there is no canonical definition to state claims against.
-/

/-! ## A020061.P2050148422335018266

`A020106(n)-A057427(n)`
-/

namespace A020061.P2050148422335018266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020106 n - A057427 n

end

end A020061.P2050148422335018266

/-! ## A020061.P6800368129080181223

`A020106(n)-A178334(n)`
-/

namespace A020061.P6800368129080181223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020106 n - A178334 n

end

end A020061.P6800368129080181223

/-! ## A020061.P7168733167710203395

`A020106(n)-char[A145111(n)]`
-/

namespace A020061.P7168733167710203395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020106 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020061.P7168733167710203395

/-! ## A020061.P2185993663216271481

`A020106(n)-A261226(A000120(n))`
-/

namespace A020061.P2185993663216271481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020106 n - A261226 (A000120 n).toNat

end

end A020061.P2185993663216271481

/-! ## A020061.P8148627538423544523

`A020106(n)-A010051(A073482(n+1))`
-/

namespace A020061.P8148627538423544523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020106 n - A010051 (A073482 (n + 1)).toNat

end

end A020061.P8148627538423544523

/-!
# A020062: Integer part of Gamma(n+3/10)/Gamma(3/10).

The programs for A020062, there is no canonical definition to state claims against.
-/

/-! ## A020062.P3240163472084173653

`floor(A020107(n)-atan(atan(n)))`
-/

namespace A020062.P3240163472084173653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020107 n : ℝ) - Real.arctan (Real.arctan (n : ℝ))⌋

end

end A020062.P3240163472084173653

/-! ## A020062.P12591654844571176643

`A057428(n)+A020107(n)`
-/

namespace A020062.P12591654844571176643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020107 n

end

end A020062.P12591654844571176643

/-! ## A020062.P14110135379742210055

`A020107(n)-char[A000174(n)]`
-/

namespace A020062.P14110135379742210055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020107 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020062.P14110135379742210055

/-! ## A020062.P6182476370727706094

`A020107(n)-char[A145111(n)]`
-/

namespace A020062.P6182476370727706094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020107 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020062.P6182476370727706094

/-!
# A020063: Integer part of Gamma(n+1/10)/Gamma(1/10).

The programs for A020063, there is no canonical definition to state claims against.
-/

/-! ## A020063.P4237307564412038100

`A057428(n)+A020108(n)`
-/

namespace A020063.P4237307564412038100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020108 n

end

end A020063.P4237307564412038100

/-! ## A020063.P4345268356267113785

`A020108(n)-A178334(n)`
-/

namespace A020063.P4345268356267113785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020108 n - A178334 n

end

end A020063.P4345268356267113785

/-! ## A020063.P10224279489561032590

`A020108(n)-char[A007318(n)]`
-/

namespace A020063.P10224279489561032590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020108 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020063.P10224279489561032590

/-! ## A020063.P12750605374758771279

`A020108(n)-char[A052938(n)]`
-/

namespace A020063.P12750605374758771279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020108 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020063.P12750605374758771279

/-! ## A020063.P17473538279598978678

`A020108(n)-A001248(n+1)%2`
-/

namespace A020063.P17473538279598978678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020108 n - Int.tmod (A001248 (n + 1)) 2

end

end A020063.P17473538279598978678

/-!
# A020064: Integer part of Gamma(n+8/9)/Gamma(8/9).

The programs for A020064, there is no canonical definition to state claims against.
-/

/-! ## A020064.P12596377477108961454

`A020109(n)-C(n, C(n, n²))`
-/

namespace A020064.P12596377477108961454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020109 n - (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ)

end

end A020064.P12596377477108961454

/-! ## A020064.P12994975389098034367

`A020109(n)-A057427(n)`
-/

namespace A020064.P12994975389098034367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020109 n - A057427 n

end

end A020064.P12994975389098034367

/-! ## A020064.P3120826054358360599

`A020109(n)-char[A309559(n)]`
-/

namespace A020064.P3120826054358360599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020109 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020064.P3120826054358360599

/-! ## A020064.P9400670880739419209

`A020109(n)-char[A027750(n+1)]`
-/

namespace A020064.P9400670880739419209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020109 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020064.P9400670880739419209

/-! ## A020064.P16754534809265406321

`A020109(n)-A352607(C(A005378(n), n+1))`
-/

namespace A020064.P16754534809265406321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020109 n - A352607 (Nat.choose (A005378 n).toNat (n + 1))

end

end A020064.P16754534809265406321

/-! ## A020064.P14867694698021600673

`A020109(n)-char[A008279(n)]`
-/

namespace A020064.P14867694698021600673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020109 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020064.P14867694698021600673

/-!
# A020065: Integer part of Gamma(n+7/9)/Gamma(7/9).

The programs for A020065, there is no canonical definition to state claims against.
-/

/-! ## A020065.P11666600131025425662

`floor(acot(n))+A020110(n)-1`
-/

namespace A020065.P11666600131025425662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (A020110 n - 1)

end

end A020065.P11666600131025425662

/-! ## A020065.P9714428168567046608

`A057428(n)+A020110(n)`
-/

namespace A020065.P9714428168567046608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020110 n

end

end A020065.P9714428168567046608

/-! ## A020065.P5374233288022570246

`A020110(n)-A057427(n)`
-/

namespace A020065.P5374233288022570246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020110 n - A057427 n

end

end A020065.P5374233288022570246

/-! ## A020065.P16501838152646442817

`A020110(n)-A178334(n)`
-/

namespace A020065.P16501838152646442817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020110 n - A178334 n

end

end A020065.P16501838152646442817

/-! ## A020065.P2531208500585993767

`A020110(n)-A011620(n²)`
-/

namespace A020065.P2531208500585993767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020110 n - A011620 (n ^ 2)

end

end A020065.P2531208500585993767

/-! ## A020065.P5642793285637160897

`A020110(n)-char[A007306(n)]`
-/

namespace A020065.P5642793285637160897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020110 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020065.P5642793285637160897

/-! ## A020065.P12455016373597090772

`A020110(n)-ceil(n/A008364(n+1))`
-/

namespace A020065.P12455016373597090772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020110 n - ⌈(n : ℚ) / (A008364 (n + 1) : ℚ)⌉

end

end A020065.P12455016373597090772

/-!
# A020066: Integer part of Gamma(n+5/9)/Gamma(5/9).

The programs for A020066, there is no canonical definition to state claims against.
-/

/-! ## A020066.P1330759461228795721

`A057428(n)+A020111(n)`
-/

namespace A020066.P1330759461228795721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020111 n

end

end A020066.P1330759461228795721

/-! ## A020066.P5288491807942558568

`A020111(n)-A057427(n)`
-/

namespace A020066.P5288491807942558568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020111 n - A057427 n

end

end A020066.P5288491807942558568

/-! ## A020066.P4963556246055513383

`A020111(n)-A178334(n)`
-/

namespace A020066.P4963556246055513383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020111 n - A178334 n

end

end A020066.P4963556246055513383

/-! ## A020066.P17824426185314180764

`A020111(n)-char[A007306(n)]`
-/

namespace A020066.P17824426185314180764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020111 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020066.P17824426185314180764

/-! ## A020066.P3717726048741823709

`A020111(n)-A340607(A000040(n+1))`
-/

namespace A020066.P3717726048741823709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020111 n - A340607 (A000040 (n + 1)).toNat

end

end A020066.P3717726048741823709

/-!
# A020067: Integer part of Gamma(n+4/9)/Gamma(4/9).

The programs for A020067, there is no canonical definition to state claims against.
-/

/-! ## A020067.P16801580193139110099

`A020112(n)-ceil(sin(n)²)`
-/

namespace A020067.P16801580193139110099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020112 n - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A020067.P16801580193139110099

/-! ## A020067.P13574991501819309989

`A057428(n)+A020112(n)`
-/

namespace A020067.P13574991501819309989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020112 n

end

end A020067.P13574991501819309989

/-! ## A020067.P10510129741732785087

`A020112(n)-A057427(n)`
-/

namespace A020067.P10510129741732785087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020112 n - A057427 n

end

end A020067.P10510129741732785087

/-! ## A020067.P15054324487371563966

`A020112(n)-A178334(n)`
-/

namespace A020067.P15054324487371563966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020112 n - A178334 n

end

end A020067.P15054324487371563966

/-! ## A020067.P12996896911105056513

`A020112(n)-char[A007306(n)]`
-/

namespace A020067.P12996896911105056513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020112 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020067.P12996896911105056513

/-!
# A020068: a(n) = floor( Gamma(n+2/9) / Gamma(2/9) ).

The programs for A020068, there is no canonical definition to state claims against.
-/

/-! ## A020068.P13916641768354132369

`A057428(n)+A020113(n)`
-/

namespace A020068.P13916641768354132369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020113 n

end

end A020068.P13916641768354132369

/-! ## A020068.P18280752297561051885

`A020113(n)-A057427(n)`
-/

namespace A020068.P18280752297561051885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020113 n - A057427 n

end

end A020068.P18280752297561051885

/-! ## A020068.P1845098701996051875

`A020113(n)-char[A007306(n)]`
-/

namespace A020068.P1845098701996051875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020113 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020068.P1845098701996051875

/-! ## A020068.P9459902473427609877

`A020113(n)-char[A007318(n)]`
-/

namespace A020068.P9459902473427609877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020113 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020068.P9459902473427609877

/-! ## A020068.P8505838647344644258

`A020113(n)-A000035(A006530(n²+2))`
-/

namespace A020068.P8505838647344644258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020113 n - A000035 (A006530 (n ^ 2 + 2)).toNat

end

end A020068.P8505838647344644258

/-! ## A020068.P9962233090027262418

`A020113(n)-A000035(record[A006530(n+2)])`
-/

namespace A020068.P9962233090027262418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020113 n - A000035 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020068.P9962233090027262418

/-!
# A020069: Integer part of Gamma(n+1/9)/Gamma(1/9).

The programs for A020069, there is no canonical definition to state claims against.
-/

/-! ## A020069.P323521695959572234

`A057428(n)+A020114(n)`
-/

namespace A020069.P323521695959572234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020114 n

end

end A020069.P323521695959572234

/-! ## A020069.P8244092406046494681

`A020114(n)-A057427(n)`
-/

namespace A020069.P8244092406046494681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020114 n - A057427 n

end

end A020069.P8244092406046494681

/-! ## A020069.P14446541415047254272

`A020114(n)-A178334(n)`
-/

namespace A020069.P14446541415047254272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020114 n - A178334 n

end

end A020069.P14446541415047254272

/-! ## A020069.P16789890395932620156

`A020114(n)-char[A007306(n)]`
-/

namespace A020069.P16789890395932620156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020114 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020069.P16789890395932620156

/-! ## A020069.P17351541749112509251

`A020114(n)-A001221(A001316(n))`
-/

namespace A020069.P17351541749112509251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020114 n - A001221 (A001316 n).toNat

end

end A020069.P17351541749112509251

/-!
# A020070: a(n) = floor( Gamma(n+7/8)/Gamma(7/8) ).

The programs for A020070, there is no canonical definition to state claims against.
-/

/-! ## A020070.P12120449146449546451

`A020115(n)+floor(acot(n))-1`
-/

namespace A020070.P12120449146449546451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020115 n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A020070.P12120449146449546451

/-! ## A020070.P3062325934627193270

`A057428(n)+A020115(n)`
-/

namespace A020070.P3062325934627193270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020115 n

end

end A020070.P3062325934627193270

/-! ## A020070.P15814237855018942210

`A020115(n)-A057427(n)`
-/

namespace A020070.P15814237855018942210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020115 n - A057427 n

end

end A020070.P15814237855018942210

/-! ## A020070.P16798184914929660069

`A020115(n)-char[A028920(n)]`
-/

namespace A020070.P16798184914929660069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020115 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020070.P16798184914929660069

/-! ## A020070.P8269597698911734166

`A020115(n)-char[A052938(n)]`
-/

namespace A020070.P8269597698911734166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020115 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020070.P8269597698911734166

/-! ## A020070.P17946678765652585726

`A020115(n)-char[A054582(n)]`
-/

namespace A020070.P17946678765652585726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020115 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020070.P17946678765652585726

/-! ## A020070.P17634803162605185824

`A020115(n)-char[A112778(n+2)]`
-/

namespace A020070.P17634803162605185824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112778 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020115 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020070.P17634803162605185824

/-! ## A020070.P2120328548141528977

`A020115(n)-A001221(A001316(n))`
-/

namespace A020070.P2120328548141528977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020115 n - A001221 (A001316 n).toNat

end

end A020070.P2120328548141528977

/-!
# A020071: a(n) = floor( Gamma(n+5/8)/Gamma(5/8) ).

The programs for A020071, there is no canonical definition to state claims against.
-/

/-! ## A020071.P13592092899715509328

`A020116(n)+floor(acot(n))-1`
-/

namespace A020071.P13592092899715509328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020116 n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A020071.P13592092899715509328

/-! ## A020071.P3622589783183400540

`A057428(n)+A020116(n)`
-/

namespace A020071.P3622589783183400540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020116 n

end

end A020071.P3622589783183400540

/-! ## A020071.P2286887416140947747

`A020116(n)-char[A054582(n)]`
-/

namespace A020071.P2286887416140947747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020116 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020071.P2286887416140947747

/-! ## A020071.P10415927878597593456

`A020116(n)-char[A330439(n)]`
-/

namespace A020071.P10415927878597593456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330439 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020116 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020071.P10415927878597593456

/-! ## A020071.P3766731445206243832

`A020116(n)-A266719(2*n+1)`
-/

namespace A020071.P3766731445206243832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020116 n - A266719 (2 * n + 1)

end

end A020071.P3766731445206243832

/-! ## A020071.P14190043381455708329

`A020116(n)-A001221(A001316(n))`
-/

namespace A020071.P14190043381455708329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020116 n - A001221 (A001316 n).toNat

end

end A020071.P14190043381455708329

/-! ## A020071.P13670896723396827435

`A020116(n)-A001221(A034444(n+1))`
-/

namespace A020071.P13670896723396827435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020116 n - A001221 (A034444 (n + 1)).toNat

end

end A020071.P13670896723396827435

/-!
# A020072: a(n) = floor( Gamma(n+3/8)/Gamma(3/8) ).

The programs for A020072, there is no canonical definition to state claims against.
-/

/-! ## A020072.P5340194257522782268

`A057428(n)+A020117(n)`
-/

namespace A020072.P5340194257522782268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020117 n

end

end A020072.P5340194257522782268

/-! ## A020072.P5775042507327201136

`A020117(n)-A057427(n)`
-/

namespace A020072.P5775042507327201136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020117 n - A057427 n

end

end A020072.P5775042507327201136

/-! ## A020072.P13664375633708425319

`A020117(n)-A178334(n)`
-/

namespace A020072.P13664375633708425319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020117 n - A178334 n

end

end A020072.P13664375633708425319

/-! ## A020072.P1537801863201134719

`A020117(n)-char[A052938(n)]`
-/

namespace A020072.P1537801863201134719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020117 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020072.P1537801863201134719

/-! ## A020072.P11284474471506265089

`A000007(n)+A020117(n)-1`
-/

namespace A020072.P11284474471506265089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A020117 n - 1)

end

end A020072.P11284474471506265089

/-! ## A020072.P29918073570601450

`A020117(n)-A001221(A001316(n))`
-/

namespace A020072.P29918073570601450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020117 n - A001221 (A001316 n).toNat

end

end A020072.P29918073570601450

/-!
# A020073: a(n) = floor( Gamma(n+1/8)/Gamma(1/8) ).

The programs for A020073, there is no canonical definition to state claims against.
-/

/-! ## A020073.P8845587381724086201

`A057428(n)+A020118(n)`
-/

namespace A020073.P8845587381724086201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020118 n

end

end A020073.P8845587381724086201

/-! ## A020073.P12967321532050182756

`A020118(n)-char[A007318(n)]`
-/

namespace A020073.P12967321532050182756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020118 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020073.P12967321532050182756

/-! ## A020073.P7876837802955315633

`A020118(n)-char[A112778(n+2)]`
-/

namespace A020073.P7876837802955315633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112778 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020118 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020073.P7876837802955315633

/-! ## A020073.P10414760922695526387

`A020118(n)-A001221(A001316(n))`
-/

namespace A020073.P10414760922695526387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020118 n - A001221 (A001316 n).toNat

end

end A020073.P10414760922695526387

/-! ## A020073.P1175562092202334150

`A020118(n)-A157230(A000040(n+1))`
-/

namespace A020073.P1175562092202334150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020118 n - A157230 (A000040 (n + 1)).toNat

end

end A020073.P1175562092202334150

/-!
# A020074: a(n) = floor( Gamma(n+6/7)/Gamma(6/7) ).

The programs for A020074, there is no canonical definition to state claims against.
-/

/-! ## A020074.P6467767570980079045

`A057428(n)+A020119(n)`
-/

namespace A020074.P6467767570980079045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020119 n

end

end A020074.P6467767570980079045

/-! ## A020074.P14170967106833328396

`A020119(n)-A057427(n)`
-/

namespace A020074.P14170967106833328396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020119 n - A057427 n

end

end A020074.P14170967106833328396

/-! ## A020074.P7670440114047971556

`A020119(n)-A178334(n)`
-/

namespace A020074.P7670440114047971556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020119 n - A178334 n

end

end A020074.P7670440114047971556

/-! ## A020074.P15272640319236119492

`A020119(n)-char[A007318(n)]`
-/

namespace A020074.P15272640319236119492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020119 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020074.P15272640319236119492

/-! ## A020074.P3956042934293102345

`A020119(n)-char[A064989(n+1)]`
-/

namespace A020074.P3956042934293102345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020119 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020074.P3956042934293102345

/-! ## A020074.P9487297205641647969

`A020119(n)-A304465(A027746(n+1))`
-/

namespace A020074.P9487297205641647969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020119 n - A304465 (A027746 (n + 1)).toNat

end

end A020074.P9487297205641647969

/-! ## A020074.P8161927888838668771

`A020119(n)-A079978(A004277(3*n))`
-/

namespace A020074.P8161927888838668771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020119 n - A079978 (A004277 (3 * n)).toNat

end

end A020074.P8161927888838668771

/-!
# A020075: a(n) = floor( Gamma(n+5/7)/Gamma(5/7) ).

The programs for A020075, there is no canonical definition to state claims against.
-/

/-! ## A020075.P8837934689184358103

`A057428(n)+A020120(n)`
-/

namespace A020075.P8837934689184358103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020120 n

end

end A020075.P8837934689184358103

/-! ## A020075.P9684944690530231645

`A020120(n)-A057427(n)`
-/

namespace A020075.P9684944690530231645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020120 n - A057427 n

end

end A020075.P9684944690530231645

/-! ## A020075.P4242291049156068574

`A020120(n)-A178334(n)`
-/

namespace A020075.P4242291049156068574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020120 n - A178334 n

end

end A020075.P4242291049156068574

/-! ## A020075.P14988494946325011396

`A020120(n)-char[A007318(n)]`
-/

namespace A020075.P14988494946325011396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020120 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020075.P14988494946325011396

/-! ## A020075.P9424086585169237363

`A020120(n)-and(1, A015525(n))`
-/

namespace A020075.P9424086585169237363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020120 n - Int.land 1 (A015525 n)

end

end A020075.P9424086585169237363

/-! ## A020075.P11934255930807188629

`A020120(n)-A055396(A278238(n+1))`
-/

namespace A020075.P11934255930807188629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020120 n - A055396 (A278238 (n + 1)).toNat

end

end A020075.P11934255930807188629

/-!
# A020076: a(n) = floor( Gamma(n+4/7)/Gamma(4/7) ).

The programs for A020076, there is no canonical definition to state claims against.
-/

/-! ## A020076.P6967998709814313035

`A057428(n)+A020121(n)`
-/

namespace A020076.P6967998709814313035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020121 n

end

end A020076.P6967998709814313035

/-! ## A020076.P15921277184561573413

`A020121(n)-A057427(n)`
-/

namespace A020076.P15921277184561573413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020121 n - A057427 n

end

end A020076.P15921277184561573413

/-! ## A020076.P5413018884267986365

`A020121(n)-A178334(n)`
-/

namespace A020076.P5413018884267986365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020121 n - A178334 n

end

end A020076.P5413018884267986365

/-! ## A020076.P18230777673699815451

`A020121(n)-char[A007318(n)]`
-/

namespace A020076.P18230777673699815451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020121 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020076.P18230777673699815451

/-! ## A020076.P464435602907636527

`A020121(n)-A319703(A000040(n+1))`
-/

namespace A020076.P464435602907636527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020121 n - A319703 (A000040 (n + 1)).toNat

end

end A020076.P464435602907636527

/-!
# A020077: a(n) = floor( Gamma(n+3/7)/Gamma(3/7) ).

The programs for A020077, there is no canonical definition to state claims against.
-/

/-! ## A020077.P5034507164067886287

`A057428(n)+A020122(n)`
-/

namespace A020077.P5034507164067886287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020122 n

end

end A020077.P5034507164067886287

/-! ## A020077.P10063234134685213425

`A020122(n)-A057427(n)`
-/

namespace A020077.P10063234134685213425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020122 n - A057427 n

end

end A020077.P10063234134685213425

/-! ## A020077.P10298811438971409748

`A020122(n)-A178334(n)`
-/

namespace A020077.P10298811438971409748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020122 n - A178334 n

end

end A020077.P10298811438971409748

/-! ## A020077.P17764787811660921975

`A020122(n)-n/A028310(n)`
-/

namespace A020077.P17764787811660921975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020122 n : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A020077.P17764787811660921975

/-! ## A020077.P15721789730785263936

`A020122(n)-A001222(A027748(n+1))`
-/

namespace A020077.P15721789730785263936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020122 n - A001222 (A027748 (n + 1)).toNat

end

end A020077.P15721789730785263936

/-!
# A020078: a(n) = floor( Gamma(n+2/7)/Gamma(2/7) ).

The programs for A020078, there is no canonical definition to state claims against.
-/

/-! ## A020078.P5757779276204632319

`A057428(n)+A020123(n)`
-/

namespace A020078.P5757779276204632319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020123 n

end

end A020078.P5757779276204632319

/-! ## A020078.P665206420961233701

`A020123(n)-A057427(n)`
-/

namespace A020078.P665206420961233701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020123 n - A057427 n

end

end A020078.P665206420961233701

/-! ## A020078.P236687732462519271

`A020123(n)-A178334(n)`
-/

namespace A020078.P236687732462519271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020123 n - A178334 n

end

end A020078.P236687732462519271

/-! ## A020078.P16423884175188849581

`A020123(n)-abs(A011599(n))`
-/

namespace A020078.P16423884175188849581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020123 n - |A011599 n|

end

end A020078.P16423884175188849581

/-! ## A020078.P13704103691314182605

`A020123(n)-A011599(n²)`
-/

namespace A020078.P13704103691314182605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020123 n - A011599 (n ^ 2)

end

end A020078.P13704103691314182605

/-! ## A020078.P3147517438168022482

`A020123(n)-char[A007318(n)]`
-/

namespace A020078.P3147517438168022482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020123 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020078.P3147517438168022482

/-! ## A020078.P9782362967281247153

`A020123(n)-n/A028310(n)`
-/

namespace A020078.P9782362967281247153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020123 n : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A020078.P9782362967281247153

/-! ## A020078.P9756946094388459405

`A020123(n)-char[A328389(n)]`
-/

namespace A020078.P9756946094388459405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020123 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020078.P9756946094388459405

/-!
# A020079: a(n) = floor( Gamma(n+1/7)/Gamma(1/7) ).

The programs for A020079, there is no canonical definition to state claims against.
-/

/-! ## A020079.P13623725311854683290

`A057428(n)+A020124(n)`
-/

namespace A020079.P13623725311854683290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020124 n

end

end A020079.P13623725311854683290

/-! ## A020079.P5415278873872587513

`A020124(n)-A057427(n)`
-/

namespace A020079.P5415278873872587513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020124 n - A057427 n

end

end A020079.P5415278873872587513

/-! ## A020079.P13978239396081668805

`A020124(n)-A178334(n)`
-/

namespace A020079.P13978239396081668805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020124 n - A178334 n

end

end A020079.P13978239396081668805

/-! ## A020079.P3768967512748982381

`A020124(n)-char[A007318(n)]`
-/

namespace A020079.P3768967512748982381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020124 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020079.P3768967512748982381

/-! ## A020079.P13298380095511444626

`A020124(n)-char[A032742(n+1)]`
-/

namespace A020079.P13298380095511444626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020124 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020079.P13298380095511444626

/-! ## A020079.P17893673854862409438

`A020124(n)-char[A057028(n+1)]`
-/

namespace A020079.P17893673854862409438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020124 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020079.P17893673854862409438

/-!
# A020080: a(n) = floor( Gamma(n + 5/6)/Gamma(5/6) ).

The programs for A020080, there is no canonical definition to state claims against.
-/

/-! ## A020080.P15319900882053666197

`A057428(n)+A020125(n)`
-/

namespace A020080.P15319900882053666197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020125 n

end

end A020080.P15319900882053666197

/-! ## A020080.P18139411358778099097

`A020125(n)-A178334(n)`
-/

namespace A020080.P18139411358778099097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020125 n - A178334 n

end

end A020080.P18139411358778099097

/-! ## A020080.P1299995635551183402

`A020125(n)-char[A007318(n)]`
-/

namespace A020080.P1299995635551183402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020125 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020080.P1299995635551183402

/-! ## A020080.P16606533422508528969

`A020125(n)-char[A286145(n+1)]`
-/

namespace A020080.P16606533422508528969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020125 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020080.P16606533422508528969

/-! ## A020080.P5101339980424414204

`A020125(n)-char[A324933(n+1)]`
-/

namespace A020080.P5101339980424414204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324933 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020125 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020080.P5101339980424414204

/-! ## A020080.P12578679475932816349

`A020125(n)-A189723(A008458(n))`
-/

namespace A020080.P12578679475932816349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020125 n - A189723 (A008458 n).toNat

end

end A020080.P12578679475932816349

/-! ## A020080.P17420877498252787462

`A020125(n)-A001221(A027748(n+1))`
-/

namespace A020080.P17420877498252787462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020125 n - A001221 (A027748 (n + 1)).toNat

end

end A020080.P17420877498252787462

/-!
# A020081: a(n) = floor( Gamma(n + 1/6)/Gamma(1/6) ).

The programs for A020081, there is no canonical definition to state claims against.
-/

/-! ## A020081.P16334563675955125516

`A057428(n)+A020126(n)`
-/

namespace A020081.P16334563675955125516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020126 n

end

end A020081.P16334563675955125516

/-! ## A020081.P15607492803153750522

`A020126(n)-A178334(n)`
-/

namespace A020081.P15607492803153750522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020126 n - A178334 n

end

end A020081.P15607492803153750522

/-! ## A020081.P1144291379050684172

`A020126(n)-char[A007318(n)]`
-/

namespace A020081.P1144291379050684172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020081.P1144291379050684172

/-! ## A020081.P2750497685196186082

`A000007(n)+A020126(n)-1`
-/

namespace A020081.P2750497685196186082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A020126 n - 1)

end

end A020081.P2750497685196186082

/-! ## A020081.P4662800234491625948

`A020126(n)-A000007(A000007(n)*A020126(n))`
-/

namespace A020081.P4662800234491625948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020126 n - A000007 (A000007 n * A020126 n).toNat

end

end A020081.P4662800234491625948

/-! ## A020081.P6007645522748143692

`A020126(n)-A000007(A000007(n)/A020126(n))`
-/

namespace A020081.P6007645522748143692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020126 n - A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A020126 n : ℚ))).toNat

end

end A020081.P6007645522748143692

/-! ## A020081.P13936093099109554642

`floor(A008542(n)/A000400(n))`
-/

namespace A020081.P13936093099109554642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008542 n : ℚ) / (A000400 n : ℚ)⌋

end

end A020081.P13936093099109554642

/-!
# A020082: a(n) = floor( Gamma(n + 4/5)/Gamma(4/5) ).

The programs for A020082, there is no canonical definition to state claims against.
-/

/-! ## A020082.P9059319921405448974

`A057428(n)+A020127(n)`
-/

namespace A020082.P9059319921405448974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020127 n

end

end A020082.P9059319921405448974

/-! ## A020082.P5234774338878838461

`A020127(n)-A178334(n)`
-/

namespace A020082.P5234774338878838461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020127 n - A178334 n

end

end A020082.P5234774338878838461

/-! ## A020082.P12383174212672665120

`A020127(n)-abs(A011599(n))`
-/

namespace A020082.P12383174212672665120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020127 n - |A011599 n|

end

end A020082.P12383174212672665120

/-! ## A020082.P16931702981051832740

`A020127(n)-A011599(n²)`
-/

namespace A020082.P16931702981051832740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020127 n - A011599 (n ^ 2)

end

end A020082.P16931702981051832740

/-! ## A020082.P5013186246901183762

`A020127(n)-char[A007318(n)]`
-/

namespace A020082.P5013186246901183762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020127 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020082.P5013186246901183762

/-!
# A020083: a(n) = floor( Gamma(n + 3/5)/Gamma(3/5) ).

The programs for A020083, there is no canonical definition to state claims against.
-/

/-! ## A020083.P605400543246418335

`A057428(n)+A020128(n)`
-/

namespace A020083.P605400543246418335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020128 n

end

end A020083.P605400543246418335

/-! ## A020083.P17237467848298496042

`A020128(n)-char[A051597(n)]`
-/

namespace A020083.P17237467848298496042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020128 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020083.P17237467848298496042

/-! ## A020083.P442724383276198351

`A020128(n)-char[A153861(n)]`
-/

namespace A020083.P442724383276198351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020128 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020083.P442724383276198351

/-! ## A020083.P3665770240695602671

`A000007(n)+A020128(n)-1`
-/

namespace A020083.P3665770240695602671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A020128 n - 1)

end

end A020083.P3665770240695602671

/-! ## A020083.P11097165607404455032

`A020128(n)+A151933(n)-1`
-/

namespace A020083.P11097165607404455032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020128 n + (A151933 n - 1)

end

end A020083.P11097165607404455032

/-! ## A020083.P5446948361143457401

`A020128(n)-n/A028310(n)`
-/

namespace A020083.P5446948361143457401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020128 n : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A020083.P5446948361143457401

/-! ## A020083.P8933217190897714848

`A020128(n)-char[A065187(n+1)]`
-/

namespace A020083.P8933217190897714848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065187 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020128 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020083.P8933217190897714848

/-! ## A020083.P1823058754937394731

`A020128(n)-A000040(n+1)%2`
-/

namespace A020083.P1823058754937394731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020128 n - Int.tmod (A000040 (n + 1)) 2

end

end A020083.P1823058754937394731

/-! ## A020083.P2767139465690379589

`A020128(n)-(gcd(2, A049116(n+1))-1)`
-/

namespace A020083.P2767139465690379589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020128 n - ((Int.gcd 2 (A049116 (n + 1)) : ℤ) - 1)

end

end A020083.P2767139465690379589

/-! ## A020083.P17737149772665463447

`A020128(n)-A151933(A151933(n))`
-/

namespace A020083.P17737149772665463447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020128 n - A151933 (A151933 n).toNat

end

end A020083.P17737149772665463447

/-!
# A020084: a(n) = floor( Gamma(n + 2/5)/Gamma(2/5) ).

The programs for A020084, there is no canonical definition to state claims against.
-/

/-! ## A020084.P320056440281015665

`A057428(n)+A020129(n)`
-/

namespace A020084.P320056440281015665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020129 n

end

end A020084.P320056440281015665

/-! ## A020084.P3896423623195228387

`A020129(n)-A057427(n)`
-/

namespace A020084.P3896423623195228387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020129 n - A057427 n

end

end A020084.P3896423623195228387

/-! ## A020084.P4532034382620367619

`A020129(n)-A178334(n)`
-/

namespace A020084.P4532034382620367619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020129 n - A178334 n

end

end A020084.P4532034382620367619

/-! ## A020084.P13680157055443174239

`A000007(n)+A020129(n)-1`
-/

namespace A020084.P13680157055443174239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A020129 n - 1)

end

end A020084.P13680157055443174239

/-! ## A020084.P9101872096612445316

`A020129(n)-A000007(A000007(n)*A020129(n))`
-/

namespace A020084.P9101872096612445316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020129 n - A000007 (A000007 n * A020129 n).toNat

end

end A020084.P9101872096612445316

/-! ## A020084.P13500307729133060367

`A020129(n)-A000007(A000007(n)/A020129(n))`
-/

namespace A020084.P13500307729133060367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020129 n - A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A020129 n : ℚ))).toNat

end

end A020084.P13500307729133060367

/-!
# A020085: a(n) = floor( Gamma(n + 1/5)/Gamma(1/5) ).

The programs for A020085, there is no canonical definition to state claims against.
-/

/-! ## A020085.P6976808983936051102

`A057428(n)+A020130(n)`
-/

namespace A020085.P6976808983936051102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020130 n

end

end A020085.P6976808983936051102

/-! ## A020085.P14708838040649865908

`A020130(n)-A057427(n)`
-/

namespace A020085.P14708838040649865908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020130 n - A057427 n

end

end A020085.P14708838040649865908

/-! ## A020085.P11951299985873043250

`A020130(n)-A178334(n)`
-/

namespace A020085.P11951299985873043250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020130 n - A178334 n

end

end A020085.P11951299985873043250

/-! ## A020085.P16230082089072773569

`A020130(n)-abs(A062157(n))`
-/

namespace A020085.P16230082089072773569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020130 n - |A062157 n|

end

end A020085.P16230082089072773569

/-! ## A020085.P370474474913450748

`A062157(2*n)+A020130(n)`
-/

namespace A020085.P370474474913450748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n) + A020130 n

end

end A020085.P370474474913450748

/-!
# A020086: a(n) = floor( Gamma(n + 3/4)/Gamma(3/4) ).

The programs for A020086, there is no canonical definition to state claims against.
-/

/-! ## A020086.P2055000595663277676

`A057428(n)+A020131(n)`
-/

namespace A020086.P2055000595663277676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020131 n

end

end A020086.P2055000595663277676

/-! ## A020086.P9985728719574252219

`A020131(n)-A057427(n)`
-/

namespace A020086.P9985728719574252219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020131 n - A057427 n

end

end A020086.P9985728719574252219

/-! ## A020086.P14350319958117041567

`A020131(n)-A178334(n)`
-/

namespace A020086.P14350319958117041567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020131 n - A178334 n

end

end A020086.P14350319958117041567

/-! ## A020086.P3463635697698523306

`A020131(n)-char[A007318(n)]`
-/

namespace A020086.P3463635697698523306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020131 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020086.P3463635697698523306

/-! ## A020086.P3388284612523053295

`A020131(n)-A185114(A009894(n))`
-/

namespace A020086.P3388284612523053295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020131 n - A185114 (A009894 n).toNat

end

end A020086.P3388284612523053295

/-!
# A020087: a(n) = floor( Gamma(n + 1/4)/Gamma(1/4) ).

The programs for A020087, there is no canonical definition to state claims against.
-/

/-! ## A020087.P4033084299302680923

`A020132(n)-A057427(n)`
-/

namespace A020087.P4033084299302680923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020132 n - A057427 n

end

end A020087.P4033084299302680923

/-! ## A020087.P2979290860997761659

`A020132(n)-A178334(n)`
-/

namespace A020087.P2979290860997761659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020132 n - A178334 n

end

end A020087.P2979290860997761659

/-! ## A020087.P17521342283062733731

`A020132(n)-abs(A011599(n))`
-/

namespace A020087.P17521342283062733731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020132 n - |A011599 n|

end

end A020087.P17521342283062733731

/-! ## A020087.P10073070027242111938

`A020132(n)-A011599(n²)`
-/

namespace A020087.P10073070027242111938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020132 n - A011599 (n ^ 2)

end

end A020087.P10073070027242111938

/-! ## A020087.P14654693931650086807

`A020132(n)-char[A007306(n)]`
-/

namespace A020087.P14654693931650086807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020132 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020087.P14654693931650086807

/-! ## A020087.P12719941658153890264

`A020132(n)-char[A007318(n)]`
-/

namespace A020087.P12719941658153890264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020132 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020087.P12719941658153890264

/-! ## A020087.P13545365586798944744

`A020132(n)-char[A087559(n+1)]`
-/

namespace A020087.P13545365586798944744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087559 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020132 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020087.P13545365586798944744

/-! ## A020087.P11887297322536601971

`A020132(n)+1-A036453(n+1)`
-/

namespace A020087.P11887297322536601971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020132 n + (1 - A036453 (n + 1))

end

end A020087.P11887297322536601971

/-! ## A020087.P12731253031424893954

`floor(A007696(n)/A000302(n))`
-/

namespace A020087.P12731253031424893954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007696 n : ℚ) / (A000302 n : ℚ)⌋

end

end A020087.P12731253031424893954

/-!
# A020088: a(n) = floor(Gamma(n + 2/3)/Gamma(2/3)).

The programs for A020088, there is no canonical definition to state claims against.
-/

/-! ## A020088.P16800777790431228024

`A020133(n)+floor(acot(n))-1`
-/

namespace A020088.P16800777790431228024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020133 n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A020088.P16800777790431228024

/-! ## A020088.P13291181696966561949

`A057428(n)+A020133(n)`
-/

namespace A020088.P13291181696966561949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020133 n

end

end A020088.P13291181696966561949

/-! ## A020088.P10124256600221370828

`A020133(n)-A057427(n)`
-/

namespace A020088.P10124256600221370828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020133 n - A057427 n

end

end A020088.P10124256600221370828

/-! ## A020088.P5259013348266379547

`A020133(n)-A178334(n)`
-/

namespace A020088.P5259013348266379547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020133 n - A178334 n

end

end A020088.P5259013348266379547

/-! ## A020088.P619449416373656106

`A020133(n)+1-A036453(n+1)`
-/

namespace A020088.P619449416373656106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020133 n + (1 - A036453 (n + 1))

end

end A020088.P619449416373656106

/-! ## A020088.P1804009085561142661

`floor(A008544(n)/3^n)`
-/

namespace A020088.P1804009085561142661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008544 n : ℚ) / (3 ^ n : ℚ)⌋

end

end A020088.P1804009085561142661

/-!
# A020089: Integer part of Gamma(n + 1/3)/Gamma(1/3).

The programs for A020089, there is no canonical definition to state claims against.
-/

/-! ## A020089.P3779293472250875664

`A057428(n)+A020134(n)`
-/

namespace A020089.P3779293472250875664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A020134 n

end

end A020089.P3779293472250875664

/-! ## A020089.P5887801365946468320

`A020134(n)-A178334(n)`
-/

namespace A020089.P5887801365946468320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020134 n - A178334 n

end

end A020089.P5887801365946468320

/-! ## A020089.P15175182328246964166

`A020134(n)-abs(A011599(n))`
-/

namespace A020089.P15175182328246964166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020134 n - |A011599 n|

end

end A020089.P15175182328246964166

/-! ## A020089.P16243490931095015660

`A020134(n)-A011599(n²)`
-/

namespace A020089.P16243490931095015660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020134 n - A011599 (n ^ 2)

end

end A020089.P16243490931095015660

/-! ## A020089.P9882795748474195478

`A020134(n)-char[A007318(n)]`
-/

namespace A020089.P9882795748474195478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020134 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020089.P9882795748474195478

/-! ## A020089.P1078586516808863855

`A020134(n)-char[A328395(n)]`
-/

namespace A020089.P1078586516808863855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328395 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020134 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020089.P1078586516808863855

/-! ## A020089.P11023376171913893677

`A020134(n)-char[A328389(n)]`
-/

namespace A020089.P11023376171913893677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020134 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020089.P11023376171913893677

/-! ## A020089.P6398809530516274218

`floor(A007559(n)/A000244(n))`
-/

namespace A020089.P6398809530516274218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007559 n : ℚ) / (A000244 n : ℚ)⌋

end

end A020089.P6398809530516274218

/-! ## A020089.P10207625256160282518

`floor(A047657(n)/A000400(n))`
-/

namespace A020089.P10207625256160282518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047657 n : ℚ) / (A000400 n : ℚ)⌋

end

end A020089.P10207625256160282518

/-!
# A020090: Integer part of Gamma(n+1/2)/Gamma(1/2).

The programs for A020090, there is no canonical definition to state claims against.
-/

/-! ## A020090.P18440596904452142998

`A020135(n)-ceil(sin(n)²)`
-/

namespace A020090.P18440596904452142998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020135 n - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A020090.P18440596904452142998

/-! ## A020090.P15438110438874362801

`A020135(n)-A057427(n)`
-/

namespace A020090.P15438110438874362801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020135 n - A057427 n

end

end A020090.P15438110438874362801

/-! ## A020090.P2915826855363196179

`A020135(n)-char[A019554(n+1)]`
-/

namespace A020090.P2915826855363196179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020135 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020090.P2915826855363196179

/-! ## A020090.P17657913073216030251

`A020135(n)-A055640(∑{e}[n+1, #])`
-/

namespace A020090.P17657913073216030251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020135 n - A055640 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A020090.P17657913073216030251

/-! ## A020090.P17922705747450373934

`A020135(n)-A095960(A008578(n+1))`
-/

namespace A020090.P17922705747450373934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020135 n - A095960 (A008578 (n + 1)).toNat

end

end A020090.P17922705747450373934

/-! ## A020090.P2313589991463095284

`A020135(n)-A073089(A214516(n+1)²)`
-/

namespace A020090.P2313589991463095284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020135 n - A073089 (A214516 (n + 1) ^ 2).toNat

end

end A020090.P2313589991463095284

/-! ## A020090.P9026145659853873987

`A020135(n)-A073089(2*A214516(n+1))`
-/

namespace A020090.P9026145659853873987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020135 n - A073089 (2 * A214516 (n + 1)).toNat

end

end A020090.P9026145659853873987

/-! ## A020090.P13498471956297521984

`A020135(n)-A073089(A214516(n+1)+A214516(n+1))`
-/

namespace A020090.P13498471956297521984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020135 n - A073089 (A214516 (n + 1) + A214516 (n + 1)).toNat

end

end A020090.P13498471956297521984

/-! ## A020090.P7447734672433826636

`floor(∏[abs(1-2*n)]/2^n)`
-/

namespace A020090.P7447734672433826636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 ^ n : ℚ)⌋

end

end A020090.P7447734672433826636

/-! ## A020090.P3855113377907562430

`A020135(n)-A000035(A244609(n))`
-/

namespace A020090.P3855113377907562430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020135 n - A000035 (A244609 n).toNat

end

end A020090.P3855113377907562430

/-!
# A020091: Ceiling of Gamma(n + 11/12)/Gamma(11/12).

The programs for A020091, there is no canonical definition to state claims against.
-/

/-! ## A020091.P17092452148601161397

`A020046(A028310(n))+1`
-/

namespace A020091.P17092452148601161397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020046 (A028310 n).toNat + 1

end

end A020091.P17092452148601161397

/-! ## A020091.P9939395622935176552

`A057427(n)+A020046(n)`
-/

namespace A020091.P9939395622935176552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020046 n

end

end A020091.P9939395622935176552

/-! ## A020091.P16331030827502726874

`A178334(n)+A020046(n)`
-/

namespace A020091.P16331030827502726874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020046 n

end

end A020091.P16331030827502726874

/-! ## A020091.P4115881661934537153

`A020046(n)+char[A007318(n)]`
-/

namespace A020091.P4115881661934537153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020046 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020091.P4115881661934537153

/-! ## A020091.P8392108902749159980

`A020046(n)+char[A002260(n+1)]`
-/

namespace A020091.P8392108902749159980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020046 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020091.P8392108902749159980

/-! ## A020091.P6770816618779792748

`A020046(n)+A000045(n²%(n+1))`
-/

namespace A020091.P6770816618779792748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020046 n + A000045 (n ^ 2 % (n + 1))

end

end A020091.P6770816618779792748

/-! ## A020091.P13452902478654954025

`A020046(n)+A001222(A039634(n+1))`
-/

namespace A020091.P13452902478654954025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020046 n + A001222 (A039634 (n + 1)).toNat

end

end A020091.P13452902478654954025

/-! ## A020091.P5579667453088752161

`A020046(A049084(2*(n+1)))+A020046(n)`
-/

namespace A020091.P5579667453088752161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020046 (A049084 (2 * (n + 1))).toNat + A020046 n

end

end A020091.P5579667453088752161

/-! ## A020091.P16627930669151872080

`A020046(n)+char[A009998(n)]`
-/

namespace A020091.P16627930669151872080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020046 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020091.P16627930669151872080

/-!
# A020092: Ceiling of Gamma(n+7/12)/Gamma(7/12).

The programs for A020092, there is no canonical definition to state claims against.
-/

/-! ## A020092.P4760790910114508121

`A020047(A028310(n))+1`
-/

namespace A020092.P4760790910114508121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020047 (A028310 n).toNat + 1

end

end A020092.P4760790910114508121

/-! ## A020092.P13215091702584122467

`A020047(n)+char[A145111(n)]`
-/

namespace A020092.P13215091702584122467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020047 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020092.P13215091702584122467

/-! ## A020092.P17106416563823736361

`A020047(A233583(n+1))+1`
-/

namespace A020092.P17106416563823736361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020047 (A233583 (n + 1)).toNat + 1

end

end A020092.P17106416563823736361

/-! ## A020092.P15797972530186979660

`A020047(n)+char[A002260(n+1)]`
-/

namespace A020092.P15797972530186979660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020047 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020092.P15797972530186979660

/-! ## A020092.P7253780748090387049

`A020047(n)+char[A286157(n+1)]`
-/

namespace A020092.P7253780748090387049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286157 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020047 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020092.P7253780748090387049

/-! ## A020092.P7151893042786892718

`A020047(n)+gcd(n, A020500(n+1))`
-/

namespace A020092.P7151893042786892718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020047 n + (Int.gcd (n : ℤ) (A020500 (n + 1)) : ℤ)

end

end A020092.P7151893042786892718

/-! ## A020092.P3715593025963354697

`A156684(Δ[A219529(n)])+A020047(n)`
-/

namespace A020092.P3715593025963354697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (f1 (n + 1) - f1 n).toNat + A020047 n

end

end A020092.P3715593025963354697

/-! ## A020092.P15311416982067056479

`A020047(n)+A001221(A053585(n+1))`
-/

namespace A020092.P15311416982067056479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020047 n + A001221 (A053585 (n + 1)).toNat

end

end A020092.P15311416982067056479

/-! ## A020092.P13933395687405171280

`A020047(n)+A133263(n)-A000124(n)`
-/

namespace A020092.P13933395687405171280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020047 n + (A133263 n - A000124 n)

end

end A020092.P13933395687405171280

/-!
# A020093: Ceiling of Gamma(n+5/12)/Gamma(5/12).

The programs for A020093, there is no canonical definition to state claims against.
-/

/-! ## A020093.P4255247714160569210

`A020048(round(sqrt(n²+1)))+1`
-/

namespace A020093.P4255247714160569210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020048 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A020093.P4255247714160569210

/-! ## A020093.P1399844972541049902

`A057427(n)+A020048(n)`
-/

namespace A020093.P1399844972541049902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020048 n

end

end A020093.P1399844972541049902

/-! ## A020093.P6877854787540493920

`A178334(n)+A020048(n)`
-/

namespace A020093.P6877854787540493920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020048 n

end

end A020093.P6877854787540493920

/-! ## A020093.P11047798187241655274

`A020048(n)+1-A000007(n)`
-/

namespace A020093.P11047798187241655274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020048 n + 1 - A000007 n

end

end A020093.P11047798187241655274

/-! ## A020093.P17198051000617573468

`A020048(n)%A020005(n)+1`
-/

namespace A020093.P17198051000617573468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020048 n) (A020005 n) + 1

end

end A020093.P17198051000617573468

/-! ## A020093.P14548841348660620839

`A240201(∑{p}[n+1, gcd(n, #)])+A020048(n)`
-/

namespace A020093.P14548841348660620839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240201 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) + A020048 n

end

end A020093.P14548841348660620839

/-! ## A020093.P892591669414081267

`A020639(A005897(n))+A020048(n)-1`
-/

namespace A020093.P892591669414081267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005897 n).toNat + (A020048 n - 1)

end

end A020093.P892591669414081267

/-!
# A020094: Ceiling of Gamma(n+1/12)/Gamma(1/12).

The programs for A020094, there is no canonical definition to state claims against.
-/

/-! ## A020094.P2520800981654545052

`A020049(n)+abs(A062157(n))`
-/

namespace A020094.P2520800981654545052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020049 n + |A062157 n|

end

end A020094.P2520800981654545052

/-! ## A020094.P2232610066410556538

`A020049(n)+A011620(n²)`
-/

namespace A020094.P2232610066410556538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020049 n + A011620 (n ^ 2)

end

end A020094.P2232610066410556538

/-! ## A020094.P6395624648917354261

`A020049(n)+char[A007318(n)]`
-/

namespace A020094.P6395624648917354261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020049 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020094.P6395624648917354261

/-! ## A020094.P11047350033349961439

`A020049(A000007(n)+n)+1`
-/

namespace A020094.P11047350033349961439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020049 (A000007 n + (n : ℤ)).toNat + 1

end

end A020094.P11047350033349961439

/-! ## A020094.P2659062566764309019

`A020049(n)-A062157(2*n)`
-/

namespace A020094.P2659062566764309019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020049 n - A062157 (2 * n)

end

end A020094.P2659062566764309019

/-! ## A020094.P15474588293965136463

`A020049(n)+char[A002260(n+1)]`
-/

namespace A020094.P15474588293965136463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020049 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020094.P15474588293965136463

/-! ## A020094.P11618679476718763311

`A020049(n)+A000035(A000040(n+1))`
-/

namespace A020094.P11618679476718763311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020049 n + A000035 (A000040 (n + 1)).toNat

end

end A020094.P11618679476718763311

/-! ## A020094.P4074578432088259928

`A020049(n)+A003415(A006530(n+1))`
-/

namespace A020094.P4074578432088259928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020049 n + A003415 (A006530 (n + 1)).toNat

end

end A020094.P4074578432088259928

/-!
# A020095: Ceiling of Gamma(n+10/11)/Gamma(10/11).

The programs for A020095, there is no canonical definition to state claims against.
-/

/-! ## A020095.P16556066335199683647

`A057427(n)+A020050(n)`
-/

namespace A020095.P16556066335199683647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020050 n

end

end A020095.P16556066335199683647

/-! ## A020095.P1748292162197782428

`A020050(n)-A057428(n)`
-/

namespace A020095.P1748292162197782428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020050 n - A057428 n

end

end A020095.P1748292162197782428

/-! ## A020095.P11966375627646519076

`A020050(n)+A011620(n²)`
-/

namespace A020095.P11966375627646519076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020050 n + A011620 (n ^ 2)

end

end A020095.P11966375627646519076

/-! ## A020095.P17277779039274338908

`A020050(n)+char[A344180(n)]`
-/

namespace A020095.P17277779039274338908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020050 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020095.P17277779039274338908

/-! ## A020095.P18021965336979824079

`A020050(n)+char[A054576(n+1)]`
-/

namespace A020095.P18021965336979824079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020050 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020095.P18021965336979824079

/-! ## A020095.P4976529584366380225

`A074206(A107286(n))+A020050(n)`
-/

namespace A020095.P4976529584366380225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A107286 n).toNat + A020050 n

end

end A020095.P4976529584366380225

/-! ## A020095.P2660917202345315842

`A023645(Δ[A007504(n)])+A020050(n)`
-/

namespace A020095.P2660917202345315842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (f1 (n + 1) - f1 n).toNat + A020050 n

end

end A020095.P2660917202345315842

/-! ## A020095.P4356178043439014837

`A023645(A000040(n+1))+A020050(n)`
-/

namespace A020095.P4356178043439014837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A000040 (n + 1)).toNat + A020050 n

end

end A020095.P4356178043439014837

/-!
# A020096: Ceiling of Gamma(n + 9/11)/Gamma(9/11).

The programs for A020096, there is no canonical definition to state claims against.
-/

/-! ## A020096.P3316156139187446367

`A178334(n)+A020051(n)`
-/

namespace A020096.P3316156139187446367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020051 n

end

end A020096.P3316156139187446367

/-! ## A020096.P3314098222241735623

`A020051(n)-A057428(n)`
-/

namespace A020096.P3314098222241735623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020051 n - A057428 n

end

end A020096.P3314098222241735623

/-! ## A020096.P8970384267027304710

`A020051(n)+char[A007318(n)]`
-/

namespace A020096.P8970384267027304710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020051 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020096.P8970384267027304710

/-! ## A020096.P4867279620318722161

`A020051(n)+char[A154958(n)]`
-/

namespace A020096.P4867279620318722161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020051 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020096.P4867279620318722161

/-! ## A020096.P4465145005752404281

`A020051(n)+A002262(A000124(n))`
-/

namespace A020096.P4465145005752404281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020051 n + A002262 (A000124 n).toNat

end

end A020096.P4465145005752404281

/-!
# A020097: Ceiling of Gamma(n+8/11)/Gamma(8/11).

The programs for A020097, there is no canonical definition to state claims against.
-/

/-! ## A020097.P743667077682402021

`A020052(A028310(n))+1`
-/

namespace A020097.P743667077682402021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020052 (A028310 n).toNat + 1

end

end A020097.P743667077682402021

/-! ## A020097.P15347606673441297051

`A057427(n)+A020052(n)`
-/

namespace A020097.P15347606673441297051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020052 n

end

end A020097.P15347606673441297051

/-! ## A020097.P15014089348353585627

`A178334(n)+A020052(n)`
-/

namespace A020097.P15014089348353585627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020052 n

end

end A020097.P15014089348353585627

/-! ## A020097.P8538953705986272952

`A020052(n)+A011620(n²)`
-/

namespace A020097.P8538953705986272952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020052 n + A011620 (n ^ 2)

end

end A020097.P8538953705986272952

/-! ## A020097.P13917055780327642472

`A020052(n)+char[A116966(n)]`
-/

namespace A020097.P13917055780327642472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020052 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020097.P13917055780327642472

/-! ## A020097.P873518053254440357

`A020052(A000007(n)+n)+1`
-/

namespace A020097.P873518053254440357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020052 (A000007 n + (n : ℤ)).toNat + 1

end

end A020097.P873518053254440357

/-! ## A020097.P15549338730978428283

`A020052(n)+char[A002260(n+1)]`
-/

namespace A020097.P15549338730978428283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020052 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020097.P15549338730978428283

/-! ## A020097.P16142889322115883153

`A020052(n)+A001222(A008578(n+1))`
-/

namespace A020097.P16142889322115883153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020052 n + A001222 (A008578 (n + 1)).toNat

end

end A020097.P16142889322115883153

/-! ## A020097.P1141304090702495738

`A098108(gcd(n, A040079(n+1)))+A020052(n)`
-/

namespace A020097.P1141304090702495738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (Int.gcd (n : ℤ) (A040079 (n + 1))) + A020052 n

end

end A020097.P1141304090702495738

/-!
# A020098: Ceiling of Gamma(n+7/11)/Gamma(7/11).

The programs for A020098, there is no canonical definition to state claims against.
-/

/-! ## A020098.P13555097311764941143

`A020053(A028310(n))+1`
-/

namespace A020098.P13555097311764941143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020053 (A028310 n).toNat + 1

end

end A020098.P13555097311764941143

/-! ## A020098.P14802100947977862062

`A057427(n)+A020053(n)`
-/

namespace A020098.P14802100947977862062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020053 n

end

end A020098.P14802100947977862062

/-! ## A020098.P5856492615186149652

`A020053(n)+A011620(n²)`
-/

namespace A020098.P5856492615186149652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020053 n + A011620 (n ^ 2)

end

end A020098.P5856492615186149652

/-! ## A020098.P9346329794475337106

`A020053(A065033(2*n))+1`
-/

namespace A020098.P9346329794475337106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020053 (A065033 (2 * n)).toNat + 1

end

end A020098.P9346329794475337106

/-! ## A020098.P11647012969977767218

`A020053(A000007(n)+n)+1`
-/

namespace A020098.P11647012969977767218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020053 (A000007 n + (n : ℤ)).toNat + 1

end

end A020098.P11647012969977767218

/-! ## A020098.P1807048348595153528

`1-(A000007(n)-A020053(n))`
-/

namespace A020098.P1807048348595153528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 n - A020053 n)

end

end A020098.P1807048348595153528

/-! ## A020098.P633988135182986835

`A020053(n)+char[A056023(n+1)]`
-/

namespace A020098.P633988135182986835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020053 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020098.P633988135182986835

/-! ## A020098.P7173210357063406633

`A020053(n)+A001221(A001316(n))`
-/

namespace A020098.P7173210357063406633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020053 n + A001221 (A001316 n).toNat

end

end A020098.P7173210357063406633

/-! ## A020098.P14991583535289717214

`A074206(A107286(n))+A020053(n)`
-/

namespace A020098.P14991583535289717214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A107286 n).toNat + A020053 n

end

end A020098.P14991583535289717214

/-!
# A020099: Ceiling of Gamma(n+6/11)/Gamma(6/11).

The programs for A020099, there is no canonical definition to state claims against.
-/

/-! ## A020099.P3937952461719169839

`A020054(A028310(n))+1`
-/

namespace A020099.P3937952461719169839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020054 (A028310 n).toNat + 1

end

end A020099.P3937952461719169839

/-! ## A020099.P8041103383471984288

`A057427(n)+A020054(n)`
-/

namespace A020099.P8041103383471984288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020054 n

end

end A020099.P8041103383471984288

/-! ## A020099.P10539742184852574115

`A020054(n)+A011620(n²)`
-/

namespace A020099.P10539742184852574115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020054 n + A011620 (n ^ 2)

end

end A020099.P10539742184852574115

/-! ## A020099.P12936833166321230916

`A020054(A000007(n)+n)+1`
-/

namespace A020099.P12936833166321230916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020054 (A000007 n + (n : ℤ)).toNat + 1

end

end A020099.P12936833166321230916

/-! ## A020099.P536287357633506901

`A020054(n)-(A000007(n)-1)`
-/

namespace A020099.P536287357633506901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020054 n - (A000007 n - 1)

end

end A020099.P536287357633506901

/-! ## A020099.P13820351388302323390

`A043545(2*n)+A020054(n)`
-/

namespace A020099.P13820351388302323390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (2 * n) + A020054 n

end

end A020099.P13820351388302323390

/-! ## A020099.P8776816596878783939

`A020054(n)+char[A002260(n+1)]`
-/

namespace A020099.P8776816596878783939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020054 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020099.P8776816596878783939

/-! ## A020099.P6431506241269607958

`A020054(n)+char[A003991(n+1)]`
-/

namespace A020099.P6431506241269607958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020054 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020099.P6431506241269607958

/-! ## A020099.P10919224457672018717

`A020054(n)+char[A038722(n+1)]`
-/

namespace A020099.P10919224457672018717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020054 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020099.P10919224457672018717

/-! ## A020099.P10077801815731975160

`A074206(A107286(n))+A020054(n)`
-/

namespace A020099.P10077801815731975160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A107286 n).toNat + A020054 n

end

end A020099.P10077801815731975160

