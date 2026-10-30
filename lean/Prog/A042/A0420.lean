import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C006
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B005.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C024

/-!
# A042001: Denominators of continued fraction convergents to sqrt(523).

The programs for A042001, there is no canonical definition to state claims against.
-/

/-! ## A042001.P7208869126793912252

`A048864(A034302(3*n+5))%A135492(n+1)`
-/

namespace A042001.P7208869126793912252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048864 (A034302 (3 * n + 5)).toNat) (A135492 (n + 1))

end

end A042001.P7208869126793912252

/-!
# A042003: Denominators of continued fraction convergents to sqrt(524).

The programs for A042003, there is no canonical definition to state claims against.
-/

/-! ## A042003.P17979905645233915597

`A184413(A042281(n))`
-/

namespace A042003.P17979905645233915597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (A042281 n).toNat

end

end A042003.P17979905645233915597

/-!
# A042005: Denominators of continued fraction convergents to sqrt(525).

The programs for A042005, there is no canonical definition to state claims against.
-/

/-! ## A042005.P15427622382288227673

`A007094(A041677(n)^A321368(n+1))`
-/

namespace A042005.P15427622382288227673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A041677 n : ℚ) ^ (A321368 (n + 1) : ℤ))).toNat

end

end A042005.P15427622382288227673

/-!
# A042009: Denominators of continued fraction convergents to sqrt(527).

The programs for A042009, there is no canonical definition to state claims against.
-/

/-! ## A042009.P13079844227957655533

`A140106(A042011(n))+1`
-/

namespace A042009.P13079844227957655533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A042011 n).toNat + 1

end

end A042009.P13079844227957655533

/-!
# A042010: Numerators of continued fraction convergents to sqrt(528).

The programs for A042010, the canonical program `A042010.P10071313279877997035` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042010 has offset 0).

The definition of A042010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042010.P10071313279877997035

`ogf((22+23x+22x^2-x^3)/(1-46x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042010

/-- `ogf((22+23x+22x^2-x^3)/(1-46x^2+x^4))` -/
def P10071313279877997035.Spec : Prop :=
  ∀ n, P10071313279877997035.a n = A042010 n

theorem P10071313279877997035.correct : P10071313279877997035.Spec := by
  intro n
  simp only [A042010]

end A042010

/-! ## A042010.P9147689597510253916

`gcd(2, n)*A041240(n)`
-/

namespace A042010.P9147689597510253916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041240 n

end

end A042010.P9147689597510253916

namespace A042010

/-- `gcd(2, n)*A041240(n)` -/
def P9147689597510253916.Spec : Prop :=
  ∀ n, P9147689597510253916.a n = A042010 n

end A042010

/-! ## A042010.P15011593698085275441

`A000034(n+1)*A041240(n)`
-/

namespace A042010.P15011593698085275441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041240 n

end

end A042010.P15011593698085275441

namespace A042010

/-- `A000034(n+1)*A041240(n)` -/
def P15011593698085275441.Spec : Prop :=
  ∀ n, P15011593698085275441.a n = A042010 n

end A042010

/-! ## A042010.P16631863823925477260

`(A059841(n)+1)*A041240(n)`
-/

namespace A042010.P16631863823925477260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n + 1) * A041240 n

end

end A042010.P16631863823925477260

namespace A042010

/-- `(A059841(n)+1)*A041240(n)` -/
def P16631863823925477260.Spec : Prop :=
  ∀ n, P16631863823925477260.a n = A042010 n

end A042010

/-! ## A042010.P17802385641677786684

`A040001(n+2)*A041240(n)`
-/

namespace A042010.P17802385641677786684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041240 n

end

end A042010.P17802385641677786684

namespace A042010

/-- `A040001(n+2)*A041240(n)` -/
def P17802385641677786684.Spec : Prop :=
  ∀ n, P17802385641677786684.a n = A042010 n

end A042010

/-! ## A042010.P2341737207380136179

`A041240(n)*A134451(n+2)`
-/

namespace A042010.P2341737207380136179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041240 n * A134451 (n + 2)

end

end A042010.P2341737207380136179

namespace A042010

/-- `A041240(n)*A134451(n+2)` -/
def P2341737207380136179.Spec : Prop :=
  ∀ n, P2341737207380136179.a n = A042010 n

end A042010

/-! ## A042010.P15810395950681446658

`2/A000034(n)*A041240(n)`
-/

namespace A042010.P15810395950681446658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041240 n : ℚ)

end

end A042010.P15810395950681446658

namespace A042010

/-- `2/A000034(n)*A041240(n)` -/
def P15810395950681446658.Spec : Prop :=
  ∀ n, P15810395950681446658.a n = (A042010 n : ℚ)

end A042010

/-! ## A042010.P16270843386135898178

`(A154708(n+1)-A005408(n))*A041240(n)`
-/

namespace A042010.P16270843386135898178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154708 (n + 1) - A005408 n) * A041240 n

end

end A042010.P16270843386135898178

namespace A042010

/-- `(A154708(n+1)-A005408(n))*A041240(n)` -/
def P16270843386135898178.Spec : Prop :=
  ∀ n, P16270843386135898178.a n = A042010 n

end A042010

/-! ## A042010.P16111892720298052950

`A041241(n+1)/A042011(n+1)*A041240(n)`
-/

namespace A042010.P16111892720298052950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041241 (n + 1) : ℚ) / (A042011 (n + 1) : ℚ) * (A041240 n : ℚ)

end

end A042010.P16111892720298052950

namespace A042010

/-- `A041241(n+1)/A042011(n+1)*A041240(n)` -/
def P16111892720298052950.Spec : Prop :=
  ∀ n, P16111892720298052950.a n = (A042010 n : ℚ)

end A042010

/-!
# A042011: Denominators of continued fraction convergents to sqrt(528).

The programs for A042011, the canonical program `A042011.P5938054614525699218` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042011 has offset 0).

The definition of A042011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042011.P548285073701084532

`ogf((1+x-x^2)/(1-46x^2+x^4))`
-/

namespace A042011.P548285073701084532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -46, 0, 1] n

end

end A042011.P548285073701084532

namespace A042011

/-- `ogf((1+x-x^2)/(1-46x^2+x^4))` -/
def P548285073701084532.Spec : Prop :=
  ∀ n, P548285073701084532.a n = A042011 n

end A042011

/-! ## A042011.P5938054614525699218

`46*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=45, a(3)=46`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042011

/-- `46*a(n-2)-a(n-4)` -/
def P5938054614525699218.Spec : Prop :=
  ∀ n, P5938054614525699218.a n = A042011 n

theorem P5938054614525699218.correct : P5938054614525699218.Spec := by
  intro n
  simp only [A042011]

end A042011

/-! ## A042011.P2535187165488104358

`A041241(n)/A000034(n)`
-/

namespace A042011.P2535187165488104358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041241 n : ℚ) / (A000034 n : ℚ)

end

end A042011.P2535187165488104358

namespace A042011

/-- `A041241(n)/A000034(n)` -/
def P2535187165488104358.Spec : Prop :=
  ∀ n, P2535187165488104358.a n = (A042011 n : ℚ)

end A042011

/-! ## A042011.P7076150845165363484

`A041241(n)/(A000035(n)+1)`
-/

namespace A042011.P7076150845165363484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041241 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A042011.P7076150845165363484

namespace A042011

/-- `A041241(n)/(A000035(n)+1)` -/
def P7076150845165363484.Spec : Prop :=
  ∀ n, P7076150845165363484.a n = (A042011 n : ℚ)

end A042011

/-! ## A042011.P12481103499503028934

`A041241(n)/A040001(n+1)`
-/

namespace A042011.P12481103499503028934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041241 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A042011.P12481103499503028934

namespace A042011

/-- `A041241(n)/A040001(n+1)` -/
def P12481103499503028934.Spec : Prop :=
  ∀ n, P12481103499503028934.a n = (A042011 n : ℚ)

end A042011

/-! ## A042011.P15809689961644604140

`A041241(n)/A134451(n+1)`
-/

namespace A042011.P15809689961644604140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041241 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A042011.P15809689961644604140

namespace A042011

/-- `A041241(n)/A134451(n+1)` -/
def P15809689961644604140.Spec : Prop :=
  ∀ n, P15809689961644604140.a n = (A042011 n : ℚ)

end A042011

/-! ## A042011.P9822938995553443042

`∑[A041055(A042948(n))]/A000034(n)`
-/

namespace A042011.P9822938995553443042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041055 (A042948 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A042011.P9822938995553443042

namespace A042011

/-- `∑[A041055(A042948(n))]/A000034(n)` -/
def P9822938995553443042.Spec : Prop :=
  ∀ n, P9822938995553443042.a n = (A042011 n : ℚ)

end A042011

/-! ## A042011.P14896292665998060332

`A041241(n)/A001511(A090771(n+1)+n)`
-/

namespace A042011.P14896292665998060332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041241 n : ℚ) / (A001511 (A090771 (n + 1) + (n : ℤ)).toNat : ℚ)

end

end A042011.P14896292665998060332

namespace A042011

/-- `A041241(n)/A001511(A090771(n+1)+n)` -/
def P14896292665998060332.Spec : Prop :=
  ∀ n, P14896292665998060332.a n = (A042011 n : ℚ)

end A042011

/-! ## A042011.P14360104210663538521

`A041240(n+1)/A042010(n+1)*A041241(n)`
-/

namespace A042011.P14360104210663538521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041240 (n + 1) : ℚ) / (A042010 (n + 1) : ℚ) * (A041241 n : ℚ)

end

end A042011.P14360104210663538521

namespace A042011

/-- `A041240(n+1)/A042010(n+1)*A041241(n)` -/
def P14360104210663538521.Spec : Prop :=
  ∀ n, P14360104210663538521.a n = (A042011 n : ℚ)

end A042011

/-!
# A042012: Numerators of continued fraction convergents to sqrt(530).

The programs for A042012, the canonical program `A042012.P1265698701762407594` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042012 has offset 0).

The definition of A042012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042012.P1265698701762407594

`ogf((23+x)/(1-46x-x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042012

/-- `ogf((23+x)/(1-46x-x^2))` -/
def P1265698701762407594.Spec : Prop :=
  ∀ n, P1265698701762407594.a n = A042012 n

theorem P1265698701762407594.correct : P1265698701762407594.Spec := by
  intro n
  simp only [A042012]

end A042012

/-!
# A042013: Denominators of continued fraction convergents to sqrt(530).

The programs for A042013, the canonical program `A042013.P12544524084972164989` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042013 has offset 0).

The definition of A042013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042013.P10099372986146643108

`ogf(1/(1-46x-x^2))`
-/

namespace A042013.P10099372986146643108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -46, -1] n

end

end A042013.P10099372986146643108

namespace A042013

/-- `ogf(1/(1-46x-x^2))` -/
def P10099372986146643108.Spec : Prop :=
  ∀ n, P10099372986146643108.a n = A042013 n

end A042013

/-! ## A042013.P12544524084972164989

`46*a(n-1)+a(n-2)` with `a(0)=1, a(1)=46`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042013

/-- `46*a(n-1)+a(n-2)` -/
def P12544524084972164989.Spec : Prop :=
  ∀ n, (P12544524084972164989.a n : ℤ) = A042013 n

theorem P12544524084972164989.correct : P12544524084972164989.Spec := by
  intro n
  simp only [A042013]

end A042013

/-! ## A042013.P14324920505174100373

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=46`
-/

namespace A042013.P14324920505174100373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 46] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042013.P14324920505174100373

namespace A042013

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P14324920505174100373.Spec : Prop :=
  ∀ n, P14324920505174100373.a n = (A042013 n : ℚ)

end A042013

/-! ## A042013.P16256013620506473332

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=46`
-/

namespace A042013.P16256013620506473332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 46] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042013.P16256013620506473332

namespace A042013

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P16256013620506473332.Spec : Prop :=
  ∀ n, P16256013620506473332.a n = A042013 n

end A042013

/-!
# A042014: Numerators of continued fraction convergents to sqrt(531).

The programs for A042014, there is no canonical definition to state claims against.
-/

/-! ## A042014.P9601082012834974055

`A041102(3*n+2)`
-/

namespace A042014.P9601082012834974055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041102 (3 * n + 2)

end

end A042014.P9601082012834974055

/-! ## A042014.P4364799263549255504

`record[A041102(A004483(n))]`
-/

namespace A042014.P4364799263549255504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041102 (A004483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042014.P4364799263549255504

/-! ## A042014.P9085763909034842267

`or(A000038(n), A041102(A016789(n)))`
-/

namespace A042014.P9085763909034842267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A041102 (A016789 n).toNat)

end

end A042014.P9085763909034842267

/-! ## A042014.P10776728743471726357

`or(A041102(A016789(n)), A055641(n))`
-/

namespace A042014.P10776728743471726357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A041102 (A016789 n).toNat) (A055641 n)

end

end A042014.P10776728743471726357

/-! ## A042014.P13361292576630143456

`A041102(A016789(n))/A007318(C(2, n))`
-/

namespace A042014.P13361292576630143456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041102 (A016789 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A042014.P13361292576630143456

/-!
# A042015: Denominators of continued fraction convergents to sqrt(531).

The programs for A042015, there is no canonical definition to state claims against.
-/

/-! ## A042015.P15335693239230427363

`A041103(3*n+2)/3`
-/

namespace A042015.P15335693239230427363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041103 (3 * n + 2) : ℚ) / 3

end

end A042015.P15335693239230427363

/-!
# A042025: Denominators of continued fraction convergents to sqrt(536).

The programs for A042025, there is no canonical definition to state claims against.
-/

/-! ## A042025.P10569805440537082972

`A288531(A077326(n))+A011586(n)`
-/

namespace A042025.P10569805440537082972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288531 (A077326 n).toNat + A011586 n

end

end A042025.P10569805440537082972

/-!
# A042031: Denominators of continued fraction convergents to sqrt(539).

The programs for A042031, there is no canonical definition to state claims against.
-/

/-! ## A042031.P11729954164976462640

`A304002(A304001(n))+A000285(n)`
-/

namespace A042031.P11729954164976462640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304002 (A304001 n).toNat + A000285 n

end

end A042031.P11729954164976462640

/-!
# A042035: Denominators of continued fraction convergents to sqrt(541).

The programs for A042035, there is no canonical definition to state claims against.
-/

/-! ## A042035.P8035803885825213540

`∑[A242363(A078558(n+1))]`
-/

namespace A042035.P8035803885825213540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242363 (A078558 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042035.P8035803885825213540

/-!
# A042039: Denominators of continued fraction convergents to sqrt(543).

The programs for A042039, there is no canonical definition to state claims against.
-/

/-! ## A042039.P13279422329962812696

`A300230(A141716(n))-A004526(n)`
-/

namespace A042039.P13279422329962812696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300230 (A141716 n).toNat - A004526 n

end

end A042039.P13279422329962812696

/-!
# A042049: Denominators of continued fraction convergents to sqrt(548).

The programs for A042049, there is no canonical definition to state claims against.
-/

/-! ## A042049.P18004240834535393074

`A070106(A042048(n))`
-/

namespace A042049.P18004240834535393074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A042048 n).toNat

end

end A042049.P18004240834535393074

/-!
# A042056: Numerators of continued fraction convergents to sqrt(552).

The programs for A042056, the canonical program `A042056.P11987107935283362844` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042056 has offset 0).

The definition of A042056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042056.P11987107935283362844

`ogf((23+47x+23x^2-x^3)/(1-94x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042056

/-- `ogf((23+47x+23x^2-x^3)/(1-94x^2+x^4))` -/
def P11987107935283362844.Spec : Prop :=
  ∀ n, P11987107935283362844.a n = A042056 n

theorem P11987107935283362844.correct : P11987107935283362844.Spec := by
  intro n
  simp only [A042056]

end A042056

/-!
# A042057: Denominators of continued fraction convergents to sqrt(552).

The programs for A042057, the canonical program `A042057.P10314496583342700959` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042057 has offset 0).

The definition of A042057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042057.P12218843994278924920

`ogf((1+2x-x^2)/(1-94x^2+x^4))`
-/

namespace A042057.P12218843994278924920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -94, 0, 1] n

end

end A042057.P12218843994278924920

namespace A042057

/-- `ogf((1+2x-x^2)/(1-94x^2+x^4))` -/
def P12218843994278924920.Spec : Prop :=
  ∀ n, P12218843994278924920.a n = A042057 n

end A042057

/-! ## A042057.P10314496583342700959

`94*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=93, a(3)=188`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042057

/-- `94*a(n-2)-a(n-4)` -/
def P10314496583342700959.Spec : Prop :=
  ∀ n, P10314496583342700959.a n = A042057 n

theorem P10314496583342700959.correct : P10314496583342700959.Spec := by
  intro n
  simp only [A042057]

end A042057

/-! ## A042057.P18424198874740395008

`∑[A041253(A042948(n))]`
-/

namespace A042057.P18424198874740395008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041253 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042057.P18424198874740395008

namespace A042057

/-- `∑[A041253(A042948(n))]` -/
def P18424198874740395008.Spec : Prop :=
  ∀ n, P18424198874740395008.a n = A042057 n

end A042057

/-! ## A042057.P1757670340757764745

`∑[A041253(record[A003816(n)])]`
-/

namespace A042057.P1757670340757764745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041253 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042057.P1757670340757764745

namespace A042057

/-- `∑[A041253(record[A003816(n)])]` -/
def P1757670340757764745.Spec : Prop :=
  ∀ n, P1757670340757764745.a n = A042057 n

end A042057

/-! ## A042057.P8216380239788557761

`∑[A041253(A047238(n+1)-n)]`
-/

namespace A042057.P8216380239788557761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041253 (A047238 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042057.P8216380239788557761

namespace A042057

/-- `∑[A041253(A047238(n+1)-n)]` -/
def P8216380239788557761.Spec : Prop :=
  ∀ n, P8216380239788557761.a n = A042057 n

end A042057

/-!
# A042064: Numerators of continued fraction convergents to sqrt(556).

The programs for A042064, there is no canonical definition to state claims against.
-/

/-! ## A042064.P10810665408377261958

`A274399(A041974(n))`
-/

namespace A042064.P10810665408377261958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (A041974 n).toNat

end

end A042064.P10810665408377261958

/-!
# A042066: Numerators of continued fraction convergents to sqrt(557).

The programs for A042066, there is no canonical definition to state claims against.
-/

/-! ## A042066.P15649283373928880334

`a(n-2)+a(n-1)*A040533(n)` with `a(0)=23, a(1)=24`
-/

namespace A042066.P15649283373928880334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [23, 24] fun n a =>
  a (n - 2) + a (n - 1) * A040533 n

end

end A042066.P15649283373928880334

/-!
# A042067: Denominators of continued fraction convergents to sqrt(557).

The programs for A042067, there is no canonical definition to state claims against.
-/

/-! ## A042067.P6630510607029565461

`a(n-2)+a(n-1)*A040533(n)` with `a(0)=1, a(1)=1`
-/

namespace A042067.P6630510607029565461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040533 n

end

end A042067.P6630510607029565461

/-! ## A042067.P15412596085219602127

`2*A088472(A041019(n))-A041019(n)`
-/

namespace A042067.P15412596085219602127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088472 (A041019 n).toNat - A041019 n

end

end A042067.P15412596085219602127

/-!
# A042068: Numerators of continued fraction convergents to sqrt(558).

The programs for A042068, there is no canonical definition to state claims against.
-/

/-! ## A042068.P1045351601443681147

`A022393(∑[(3*7^n)^∑{digits}[n, floor(#/6)]])`
-/

namespace A042068.P1045351601443681147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 7 ^ n : ℚ) ^ (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022393 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A042068.P1045351601443681147

/-!
# A042069: Denominators of continued fraction convergents to sqrt(558).

The programs for A042069, there is no canonical definition to state claims against.
-/

/-! ## A042069.P2212107949539280986

`a(n-2)+a(n-1)*A062378(A183112(n))` with `a(0)=1, a(1)=1`
-/

namespace A042069.P2212107949539280986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A062378 (A183112 n).toNat

end

end A042069.P2212107949539280986

/-!
# A042071: Denominators of continued fraction convergents to sqrt(559).

The programs for A042071, there is no canonical definition to state claims against.
-/

/-! ## A042071.P6373310891053192021

`A230769(A036250(n))`
-/

namespace A042071.P6373310891053192021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230769 (A036250 n).toNat

end

end A042071.P6373310891053192021

/-!
# A042073: Denominators of continued fraction convergents to sqrt(560).

The programs for A042073, there is no canonical definition to state claims against.
-/

/-! ## A042073.P8123035536066044010

`A004525(A042369(n)+A041813(n))`
-/

namespace A042073.P8123035536066044010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042369 n + A041813 n).toNat

end

end A042073.P8123035536066044010

/-! ## A042073.P9505278038279810470

`A004526(A042369(n)+A041813(n))`
-/

namespace A042073.P9505278038279810470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042369 n + A041813 n).toNat

end

end A042073.P9505278038279810470

/-! ## A042073.P12007975905977211231

`A004525(A042701(n)+A041589(n))`
-/

namespace A042073.P12007975905977211231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042701 n + A041589 n).toNat

end

end A042073.P12007975905977211231

/-!
# A042075: Denominators of continued fraction convergents to sqrt(561).

The programs for A042075, there is no canonical definition to state claims against.
-/

/-! ## A042075.P11184027026511397047

`A127006(A029970(n+4)-2)`
-/

namespace A042075.P11184027026511397047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127006 (A029970 (n + 4) - 2).toNat

end

end A042075.P11184027026511397047

/-! ## A042075.P9750047100556089029

`filter[A127006(n+1), A079559(#)]`
-/

namespace A042075.P9750047100556089029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079559 (f1 j).toNat = 1) n)

end

end A042075.P9750047100556089029

/-! ## A042075.P15693141951978209027

`filter[A127006(n+1), A131218(#)]`
-/

namespace A042075.P15693141951978209027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131218 (f1 j).toNat = 1) n)

end

end A042075.P15693141951978209027

/-!
# A042079: Denominators of continued fraction convergents to sqrt(563).

The programs for A042079, there is no canonical definition to state claims against.
-/

/-! ## A042079.P16338058664645384200

`A187493(a(n-1))-n` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A042079.P16338058664645384200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A187493 ((a (n - 1)).toNat + 31) - (n : ℤ)

end

end A042079.P16338058664645384200

/-!
# A042080: Numerators of continued fraction convergents to sqrt(564).

The programs for A042080, there is no canonical definition to state claims against.
-/

/-! ## A042080.P7297041777151116445

`A004277(A042088(n))-A042092(n)`
-/

namespace A042080.P7297041777151116445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042088 n).toNat - A042092 n

end

end A042080.P7297041777151116445

/-!
# A042081: Denominators of continued fraction convergents to sqrt(564).

The programs for A042081, the canonical program `A042081.P11255694292900634675` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042081 has offset 0).

The definition of A042081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042081.P11255694292900634675

`190*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=187, a(5)=191, a(6)=569, a(7)=760`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042081

/-- `190*a(n-4)-a(n-8)` -/
def P11255694292900634675.Spec : Prop :=
  ∀ n, P11255694292900634675.a n = A042081 n

theorem P11255694292900634675.correct : P11255694292900634675.Spec := by
  intro n
  simp only [A042081]

end A042081

/-! ## A042081.P13873055401873389416

`A001281(A042485(n)+A041741(n))`
-/

namespace A042081.P13873055401873389416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042485 n + A041741 n).toNat

end

end A042081.P13873055401873389416

namespace A042081

/-- `A001281(A042485(n)+A041741(n))` -/
def P13873055401873389416.Spec : Prop :=
  ∀ n, P13873055401873389416.a n = A042081 n

end A042081

/-! ## A042081.P16824342240047164370

`A004525(A042485(n)+A041741(n))`
-/

namespace A042081.P16824342240047164370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042485 n + A041741 n).toNat

end

end A042081.P16824342240047164370

namespace A042081

/-- `A004525(A042485(n)+A041741(n))` -/
def P16824342240047164370.Spec : Prop :=
  ∀ n, P16824342240047164370.a n = A042081 n

end A042081

/-!
# A042083: Denominators of continued fraction convergents to sqrt(565).

The programs for A042083, there is no canonical definition to state claims against.
-/

/-! ## A042083.P17404086297960335763

`A079000(A193917(2^n))`
-/

namespace A042083.P17404086297960335763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A193917 (2 ^ n)).toNat

end

end A042083.P17404086297960335763

/-!
# A042089: Denominators of continued fraction convergents to sqrt(568).

The programs for A042089, there is no canonical definition to state claims against.
-/

/-! ## A042089.P4754650045050756090

`A004525(A042387(n)+A041827(n))`
-/

namespace A042089.P4754650045050756090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042387 n + A041827 n).toNat

end

end A042089.P4754650045050756090

/-! ## A042089.P8918164239792776485

`A004526(A042387(n)+A041827(n))`
-/

namespace A042089.P8918164239792776485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042387 n + A041827 n).toNat

end

end A042089.P8918164239792776485

/-! ## A042089.P9483374410267149907

`A004525(A042721(n)+A041601(n))`
-/

namespace A042089.P9483374410267149907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042721 n + A041601 n).toNat

end

end A042089.P9483374410267149907

/-!
# A042091: Denominators of continued fraction convergents to sqrt(569).

The programs for A042091, there is no canonical definition to state claims against.
-/

/-! ## A042091.P4470514574714506424

`A397517(n)+A142150(A397514(n))`
-/

namespace A042091.P4470514574714506424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397517 n + A142150 (A397514 n).toNat

end

end A042091.P4470514574714506424

/-!
# A042092: Numerators of continued fraction convergents to sqrt(570).

The programs for A042092, there is no canonical definition to state claims against.
-/

/-! ## A042092.P4496033066701664842

`A004277(A042088(n))-A042080(n)`
-/

namespace A042092.P4496033066701664842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042088 n).toNat - A042080 n

end

end A042092.P4496033066701664842

/-!
# A042093: Denominators of continued fraction convergents to sqrt(570).

The programs for A042093, there is no canonical definition to state claims against.
-/

/-! ## A042093.P15008141600302932397

`A001281(A042499(n)+A041751(n))`
-/

namespace A042093.P15008141600302932397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042499 n + A041751 n).toNat

end

end A042093.P15008141600302932397

/-! ## A042093.P13058656110476433061

`A004525(A042499(n)+A041751(n))`
-/

namespace A042093.P13058656110476433061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042499 n + A041751 n).toNat

end

end A042093.P13058656110476433061

/-! ## A042093.P12654457729738148614

`A004526(A042499(n)+A041751(n))`
-/

namespace A042093.P12654457729738148614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042499 n + A041751 n).toNat

end

end A042093.P12654457729738148614

/-!
# A042096: Numerators of continued fraction convergents to sqrt(572).

The programs for A042096, there is no canonical definition to state claims against.
-/

/-! ## A042096.P11852160128374107277

`A004277(A042092(n))-A042080(n)`
-/

namespace A042096.P11852160128374107277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042092 n).toNat - A042080 n

end

end A042096.P11852160128374107277

/-!
# A042097: Denominators of continued fraction convergents to sqrt(572).

The programs for A042097, there is no canonical definition to state claims against.
-/

/-! ## A042097.P8770871327618031647

`A004525(A042101(n))`
-/

namespace A042097.P8770871327618031647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042101 n).toNat

end

end A042097.P8770871327618031647

/-!
# A042099: Denominators of continued fraction convergents to sqrt(573).

The programs for A042099, there is no canonical definition to state claims against.
-/

/-! ## A042099.P2138003792141793325

`A004396(A042101(n))`
-/

namespace A042099.P2138003792141793325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A042101 n).toNat

end

end A042099.P2138003792141793325

