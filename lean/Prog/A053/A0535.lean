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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A053500: Number of degree-n permutations of order dividing 10.

The programs for A053500, there is no canonical definition to state claims against.
-/

/-! ## A053500.P5639778355520485913

`A008307(A167499(n+7)+5)`
-/

namespace A053500.P5639778355520485913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167499 (n + 7) + 5).toNat

end

end A053500.P5639778355520485913

/-! ## A053500.P9627565623769226690

`A008307(A161680(n+10)-(n-1))`
-/

namespace A053500.P9627565623769226690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A161680 (n + 10) - ((n : ℤ) - 1)).toNat

end

end A053500.P9627565623769226690

/-! ## A053500.P14721121864379711834

`A214724(n^A291149(n))`
-/

namespace A053500.P14721121864379711834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214724 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A291149 n : ℤ))).toNat

end

end A053500.P14721121864379711834

/-! ## A053500.P14093239439170075384

`A214724(lcm(n, A189006(n)²))`
-/

namespace A053500.P14093239439170075384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214724 (Int.lcm (n : ℤ) (A189006 n ^ 2))

end

end A053500.P14093239439170075384

/-! ## A053500.P803764581387362208

`A214724(n)^A214709(A005179(n+1))`
-/

namespace A053500.P803764581387362208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214724 n : ℚ) ^ (A214709 (A005179 (n + 1)).toNat : ℤ)

end

end A053500.P803764581387362208

/-!
# A053501: Number of degree-n permutations of order dividing 11.

The programs for A053501, there is no canonical definition to state claims against.
-/

/-! ## A053501.P7753263148129624723

`A153761(round(acot(n)+n))+1`
-/

namespace A053501.P7753263148129624723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153761 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A053501.P7753263148129624723

/-! ## A053501.P8773218846793585746

`A153761(A028310(n))+1`
-/

namespace A053501.P8773218846793585746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153761 (A028310 n).toNat + 1

end

end A053501.P8773218846793585746

/-! ## A053501.P661994362645200669

`A153761(A065033(2*n))+1`
-/

namespace A053501.P661994362645200669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153761 (A065033 (2 * n)).toNat + 1

end

end A053501.P661994362645200669

/-! ## A053501.P13627130685244956177

`A008307(A167499(n+8)+6)`
-/

namespace A053501.P13627130685244956177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167499 (n + 8) + 6).toNat

end

end A053501.P13627130685244956177

/-! ## A053501.P14282862532672774546

`A008307(A167614(n+8)+8)`
-/

namespace A053501.P14282862532672774546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167614 (n + 8) + 8).toNat

end

end A053501.P14282862532672774546

/-! ## A053501.P10279602471460413783

`A008307(A000124(n+9)+10)`
-/

namespace A053501.P10279602471460413783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A000124 (n + 9) + 10).toNat

end

end A053501.P10279602471460413783

/-!
# A053502: Number of degree-n permutations of order dividing 12.

The programs for A053502, there is no canonical definition to state claims against.
-/

/-! ## A053502.P12564708192086734110

`A326242(n)+A326241(n)`
-/

namespace A053502.P12564708192086734110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326242 n + A326241 n

end

end A053502.P12564708192086734110

/-! ## A053502.P1672005875036544894

`A326241(n)-A260196(n)*A326242(n)`
-/

namespace A053502.P1672005875036544894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326241 n - A260196 n * A326242 n

end

end A053502.P1672005875036544894

/-! ## A053502.P17463802070627323620

`A008307(A166136(n+9)+6)`
-/

namespace A053502.P17463802070627323620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A166136 (n + 9) + 6).toNat

end

end A053502.P17463802070627323620

/-! ## A053502.P1204145649929023850

`A053504(n)-A029575(A062003(n))`
-/

namespace A053502.P1204145649929023850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053504 n - A029575 (A062003 n).toNat

end

end A053502.P1204145649929023850

/-! ## A053502.P15366092778153468614

`A053504(n)-A053390(A001333(n))*A061140(n)`
-/

namespace A053502.P15366092778153468614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053504 n - A053390 (A001333 n).toNat * A061140 n

end

end A053502.P15366092778153468614

/-!
# A053503: 

The programs for A053503, there is no canonical definition to state claims against.
-/

/-! ## A053503.P16756077688306139215

`A061126(round(acot(n)+n))+A053498(n)`
-/

namespace A053503.P16756077688306139215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061126 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A053498 n

end

end A053503.P16756077688306139215

/-! ## A053503.P18393194368219946113

`A061126(A028310(n))+A053498(n)`
-/

namespace A053503.P18393194368219946113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061126 (A028310 n).toNat + A053498 n

end

end A053503.P18393194368219946113

/-!
# A053504: Number of degree-n permutations of order dividing 24.

The programs for A053504, there is no canonical definition to state claims against.
-/

/-! ## A053504.P9957178454029280033

`A053502(n)+A029575(A062003(n))`
-/

namespace A053504.P9957178454029280033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053502 n + A029575 (A062003 n).toNat

end

end A053504.P9957178454029280033

/-! ## A053504.P9417639378983343972

`A053502(n)+A053390(A001333(n))*A061140(n)`
-/

namespace A053504.P9417639378983343972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053502 n + A053390 (A001333 n).toNat * A061140 n

end

end A053504.P9417639378983343972

/-! ## A053504.P13042837771546027467

`A053502(n)+A061140(n)*A320278(A140335(n+1))`
-/

namespace A053504.P13042837771546027467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053502 n + A061140 n * A320278 (A140335 (n + 1)).toNat

end

end A053504.P13042837771546027467

/-! ## A053504.P14261389353327205514

`A053502(n)+A005361(A052924(n))*A061140(n)`
-/

namespace A053504.P14261389353327205514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053502 n + A005361 (A052924 n).toNat * A061140 n

end

end A053504.P14261389353327205514

/-! ## A053504.P12059273936728533164

`A053502(n)+A003842(A259378(n+1))*A061140(n)`
-/

namespace A053504.P12059273936728533164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053502 n + A003842 (A259378 (n + 1)).toNat * A061140 n

end

end A053504.P12059273936728533164

/-!
# A053505: Number of degree-n permutations of order dividing 30.

The programs for A053505, there is no canonical definition to state claims against.
-/

/-! ## A053505.P11088334581031622906

`A000027(A070947(n)-A029571(n))`
-/

namespace A053505.P11088334581031622906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A070947 n - A029571 n).toNat

end

end A053505.P11088334581031622906

/-! ## A053505.P5578951136198335225

`A070947(A046469(n))-A029571(n)`
-/

namespace A053505.P5578951136198335225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070947 (A046469 n).toNat - A029571 n

end

end A053505.P5578951136198335225

/-! ## A053505.P16559851225420592051

`A070947(n)-A029571(A087036(n))`
-/

namespace A053505.P16559851225420592051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070947 n - A029571 (A087036 n).toNat

end

end A053505.P16559851225420592051

/-! ## A053505.P10423887273715087107

`A070947(A004882(n+1))-A029571(n)`
-/

namespace A053505.P10423887273715087107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070947 (A004882 (n + 1)).toNat - A029571 n

end

end A053505.P10423887273715087107

/-! ## A053505.P10517997206744994857

`A029572(n)+A000027(A053502(n))-A029571(n)`
-/

namespace A053505.P10517997206744994857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029572 n + A000027 (A053502 n).toNat - A029571 n

end

end A053505.P10517997206744994857

/-!
# A053506: a(n) = (n-1)*n^(n-2).

The programs for A053506, the canonical program `A053506.P15678968672179565484` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053506 has offset 1).

The definition of A053506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053506.P15678968672179565484

`n*(n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053506

/-- `n*(n+1)^(n-1)` -/
def P15678968672179565484.Spec : Prop :=
  ∀ n, P15678968672179565484.a n = (A053506 (n + 1) : ℚ)

end A053506

/-! ## A053506.P2565460229715021499

`lcm(n, (n+1)^(n-1))`
-/

namespace A053506.P2565460229715021499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A053506.P2565460229715021499

namespace A053506

/-- `lcm(n, (n+1)^(n-1))` -/
def P2565460229715021499.Spec : Prop :=
  ∀ n, (P2565460229715021499.a n : ℤ) = A053506 (n + 1)

end A053506

/-! ## A053506.P10031703689746291116

`round(n*(or(1, 2*n)-n)^(n-1))`
-/

namespace A053506.P10031703689746291116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((Nat.lor 1 (2 * n) : ℤ) - (n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A053506.P10031703689746291116

namespace A053506

/-- `round(n*(or(1, 2*n)-n)^(n-1))` -/
def P10031703689746291116.Spec : Prop :=
  ∀ n, P10031703689746291116.a n = A053506 (n + 1)

end A053506

/-! ## A053506.P1951395679774095216

`A055861(n)+char[1]`
-/

namespace A053506.P1951395679774095216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055861 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A053506.P1951395679774095216

namespace A053506

/-- `A055861(n)+char[1]` -/
def P1951395679774095216.Spec : Prop :=
  ∀ n, P1951395679774095216.a n = A053506 (n + 1)

end A053506

/-! ## A053506.P4455975941935007329

`A206855(n+1)/2`
-/

namespace A053506.P4455975941935007329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206855 (n + 1) : ℚ) / 2

end

end A053506.P4455975941935007329

namespace A053506

/-- `A206855(n+1)/2` -/
def P4455975941935007329.Spec : Prop :=
  ∀ n, P4455975941935007329.a n = (A053506 (n + 1) : ℚ)

end A053506

/-! ## A053506.P3868552061168008006

`n*A003308(n+1)/2`
-/

namespace A053506.P3868552061168008006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A003308 (n + 1) : ℚ) / 2

end

end A053506.P3868552061168008006

namespace A053506

/-- `n*A003308(n+1)/2` -/
def P3868552061168008006.Spec : Prop :=
  ∀ n, P3868552061168008006.a n = (A053506 (n + 1) : ℚ)

end A053506

/-! ## A053506.P3770037174374212962

`A089945(n)-(n+1)^n`
-/

namespace A053506.P3770037174374212962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089945 n - ((n + 1) ^ n : ℤ)

end

end A053506.P3770037174374212962

namespace A053506

/-- `A089945(n)-(n+1)^n` -/
def P3770037174374212962.Spec : Prop :=
  ∀ n, P3770037174374212962.a n = A053506 (n + 1)

end A053506

/-! ## A053506.P13275736980099779237

`A055861(n*a(ceil(acot(n))))` with `a(0)=0, a(1)=1`
-/

namespace A053506.P13275736980099779237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A055861 ((n : ℤ) * a ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat).toNat

end

end A053506.P13275736980099779237

namespace A053506

/-- `A055861(n*a(ceil(acot(n))))` -/
def P13275736980099779237.Spec : Prop :=
  ∀ n, P13275736980099779237.a n = A053506 (n + 1)

end A053506

/-! ## A053506.P3904842339788069550

`(n+1)^n-Δ[A173249(n)]`
-/

namespace A053506.P3904842339788069550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A053506.P3904842339788069550

namespace A053506

/-- `(n+1)^n-Δ[A173249(n)]` -/
def P3904842339788069550.Spec : Prop :=
  ∀ n, P3904842339788069550.a n = A053506 (n + 1)

end A053506

/-! ## A053506.P6398807333640747454

`(n+1)^n-A000272(n+1)`
-/

namespace A053506.P6398807333640747454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - A000272 (n + 1)

end

end A053506.P6398807333640747454

namespace A053506

/-- `(n+1)^n-A000272(n+1)` -/
def P6398807333640747454.Spec : Prop :=
  ∀ n, P6398807333640747454.a n = A053506 (n + 1)

end A053506

/-!
# A053507: a(n) = binomial(n-1,2)*n^(n-3).

The programs for A053507, the canonical program `A053507.P5538552702493627726` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053507 has offset 1).

The definition of A053507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053507.P5538552702493627726

`C(n, 2)*(n+1)^(n-2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053507

/-- `C(n, 2)*(n+1)^(n-2)` -/
def P5538552702493627726.Spec : Prop :=
  ∀ n, P5538552702493627726.a n = (A053507 (n + 1) : ℚ)

end A053507

/-! ## A053507.P8566716802161259297

`(∑[n]-n)*(n+1)^(n-2)`
-/

namespace A053507.P8566716802161259297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A053507.P8566716802161259297

namespace A053507

/-- `(∑[n]-n)*(n+1)^(n-2)` -/
def P8566716802161259297.Spec : Prop :=
  ∀ n, P8566716802161259297.a n = (A053507 (n + 1) : ℚ)

end A053507

/-! ## A053507.P13826034380750738772

`A144207(∑[n+2])`
-/

namespace A053507.P13826034380750738772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053507.P13826034380750738772

namespace A053507

/-- `A144207(∑[n+2])` -/
def P13826034380750738772.Spec : Prop :=
  ∀ n, P13826034380750738772.a n = A053507 (n + 1)

end A053507

/-! ## A053507.P3354399913010238235

`A081130(A056220(n+1))`
-/

namespace A053507.P3354399913010238235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081130 (A056220 (n + 1)).toNat

end

end A053507.P3354399913010238235

namespace A053507

/-- `A081130(A056220(n+1))` -/
def P3354399913010238235.Spec : Prop :=
  ∀ n, P3354399913010238235.a n = A053507 (n + 1)

end A053507

/-! ## A053507.P1578237080138134371

`A081130(A004273((n+1)²))`
-/

namespace A053507.P1578237080138134371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081130 (A004273 ((n + 1) ^ 2)).toNat

end

end A053507.P1578237080138134371

namespace A053507

/-- `A081130(A004273((n+1)²))` -/
def P1578237080138134371.Spec : Prop :=
  ∀ n, P1578237080138134371.a n = A053507 (n + 1)

end A053507

/-!
# A053508: a(n) = binomial(n-1,3)*n^(n-4).

The programs for A053508, the canonical program `A053508.P15110467573037274044` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053508 has offset 1).

The definition of A053508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053508.P15110467573037274044

`C(n, 3)*(n+1)^(n-3)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053508

/-- `C(n, 3)*(n+1)^(n-3)` -/
def P15110467573037274044.Spec : Prop :=
  ∀ n, P15110467573037274044.a n = (A053508 (n + 1) : ℚ)

end A053508

/-! ## A053508.P636551964074438849

`(n+1)^(n-3)*Δ[A000332(n)]`
-/

namespace A053508.P636551964074438849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A053508.P636551964074438849

namespace A053508

/-- `(n+1)^(n-3)*Δ[A000332(n)]` -/
def P636551964074438849.Spec : Prop :=
  ∀ n, P636551964074438849.a n = (A053508 (n + 1) : ℚ)

end A053508

/-! ## A053508.P4880900843858555480

`A049323(A060577(n))*A289207(n)`
-/

namespace A053508.P4880900843858555480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049323 (A060577 n).toNat * A289207 n

end

end A053508.P4880900843858555480

namespace A053508

/-- `A049323(A060577(n))*A289207(n)` -/
def P4880900843858555480.Spec : Prop :=
  ∀ n, P4880900843858555480.a n = A053508 (n + 1)

end A053508

/-! ## A053508.P9779388704414351479

`A144209(∑[n+2])/3`
-/

namespace A053508.P9779388704414351479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144209 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A053508.P9779388704414351479

namespace A053508

/-- `A144209(∑[n+2])/3` -/
def P9779388704414351479.Spec : Prop :=
  ∀ n, P9779388704414351479.a n = (A053508 (n + 1) : ℚ)

end A053508

/-!
# A053509: a(n) = binomial(n-1,4)*n^(n-5).

The programs for A053509, the canonical program `A053509.P9328011824106558257` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053509 has offset 1).

The definition of A053509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053509.P9328011824106558257

`C(n, 4)*(n+1)^(n-4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053509

/-- `C(n, 4)*(n+1)^(n-4)` -/
def P9328011824106558257.Spec : Prop :=
  ∀ n, P9328011824106558257.a n = (A053509 (n + 1) : ℚ)

end A053509

/-! ## A053509.P11453733950213215687

`(n+1)^(n-4)*A000332(n)`
-/

namespace A053509.P11453733950213215687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (A000332 n : ℚ)

end

end A053509.P11453733950213215687

namespace A053509

/-- `(n+1)^(n-4)*A000332(n)` -/
def P11453733950213215687.Spec : Prop :=
  ∀ n, P11453733950213215687.a n = (A053509 (n + 1) : ℚ)

end A053509

/-! ## A053509.P3258481400308503127

`A352363(record[A226048(n)])`
-/

namespace A053509.P3258481400308503127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053509.P3258481400308503127

namespace A053509

/-- `A352363(record[A226048(n)])` -/
def P3258481400308503127.Spec : Prop :=
  ∀ n, P3258481400308503127.a n = A053509 (n + 1)

end A053509

/-!
# A053510: Decimal expansion of log(Pi).

The programs for A053510, there is no canonical definition to state claims against.
-/

/-! ## A053510.P13615075206086966722

`abs(Δ[A099540(abs(1-n)+1)])`
-/

namespace A053510.P13615075206086966722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099540 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053510.P13615075206086966722

/-! ## A053510.P2124814501421261682

`Δ[A099540(A057428(a(n-1))+n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A053510.P2124814501421261682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A099540 (A057428 (f1 (n - 1)).toNat + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053510.P2124814501421261682

/-!
# A053512: Half the number of non-self-intersecting paths from one corner of an n X n grid to the opposite corner.

The programs for A053512, there is no canonical definition to state claims against.
-/

/-! ## A053512.P16729591340999996390

`A007764(n+2)/2`
-/

namespace A053512.P16729591340999996390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007764 (n + 2) : ℚ) / 2

end

end A053512.P16729591340999996390

/-! ## A053512.P8401743564037431576

`Δ[∑[A064297(∑[n+1])]/2]`
-/

namespace A053512.P8401743564037431576
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064297 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053512.P8401743564037431576

/-! ## A053512.P1514868821009853649

`A064298(A001844(n+1))/2`
-/

namespace A053512.P1514868821009853649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064298 (A001844 (n + 1)).toNat : ℚ) / 2

end

end A053512.P1514868821009853649

/-! ## A053512.P13174451183491929449

`A064297(A000217(n+2))/2`
-/

namespace A053512.P13174451183491929449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064297 (A000217 (n + 2)).toNat : ℚ) / 2

end

end A053512.P13174451183491929449

/-! ## A053512.P16860589692543017159

`A064297(record[A038722(n+2)])/2`
-/

namespace A053512.P16860589692543017159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064297 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A053512.P16860589692543017159

/-!
# A053518: Numerators of successive convergents to continued fraction 1+2/(3+3/(4+4/(5+5/(6+6/(7+7/(8+8/(9+9/10+...))))))).

The programs for A053518, there is no canonical definition to state claims against.
-/

/-! ## A053518.P12659790461630014160

`A053520(n)-A053519(n)`
-/

namespace A053518.P12659790461630014160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053520 n - A053519 n

end

end A053518.P12659790461630014160

/-! ## A053518.P1121334372324886342

`(2*A103816(n+4))%A053557(n+4)`
-/

namespace A053518.P1121334372324886342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A103816 (n + 4)) (A053557 (n + 4))

end

end A053518.P1121334372324886342

/-! ## A053518.P859299370770417012

`A053520(n)+A053519(n)*A057428(n+1)`
-/

namespace A053518.P859299370770417012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053520 n + A053519 n * A057428 (n + 1)

end

end A053518.P859299370770417012

/-! ## A053518.P2652273334833621283

`A053557(n+4)-A053519(n)-A053519(n)`
-/

namespace A053518.P2652273334833621283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053557 (n + 4) - A053519 n - A053519 n

end

end A053518.P2652273334833621283

/-! ## A053518.P2433111518202226218

`A053520(n)-(A053557(n+4)-A053520(n))`
-/

namespace A053518.P2433111518202226218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053520 n - (A053557 (n + 4) - A053520 n)

end

end A053518.P2433111518202226218

/-!
# A053519: Denominators of successive convergents to continued fraction 1+2/(3+3/(4+4/(5+5/(6+6/(7+7/(8+8/(9+9/10+...))))))).

The programs for A053519, there is no canonical definition to state claims against.
-/

/-! ## A053519.P2924727110979300972

`A053520(n)-A053518(n)`
-/

namespace A053519.P2924727110979300972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053520 n - A053518 n

end

end A053519.P2924727110979300972

/-! ## A053519.P788902493097832615

`A053557(n+4)-A053520(n)`
-/

namespace A053519.P788902493097832615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053557 (n + 4) - A053520 n

end

end A053519.P788902493097832615

/-! ## A053519.P4856926478013723685

`2*A053557(n+4)-A103816(n+4)`
-/

namespace A053519.P4856926478013723685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053557 (n + 4) - A103816 (n + 4)

end

end A053519.P4856926478013723685

/-! ## A053519.P3131926647589584924

`A053557(A028310(n)+4)%A053520(n)`
-/

namespace A053519.P3131926647589584924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053557 (A028310 n + 4).toNat) (A053520 n)

end

end A053519.P3131926647589584924

/-! ## A053519.P5687404161634549550

`A053557(n+4)%(A053520(n)/A138330(n+1))`
-/

namespace A053519.P5687404161634549550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053557 (n + 4)) (SequenceMachineLib.roundAway ((A053520 n : ℚ) / (A138330 (n + 1) : ℚ)))

end

end A053519.P5687404161634549550

/-!
# A053520: Denominators of successive convergents to continued fraction 1/(2+2/(3+3/(4+4/(5+5/(6+6/(7+7/(8+8/9+...))))))).

The programs for A053520, there is no canonical definition to state claims against.
-/

/-! ## A053520.P15327660564272980021

`A053519(n)+A053518(n)`
-/

namespace A053520.P15327660564272980021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053519 n + A053518 n

end

end A053520.P15327660564272980021

/-! ## A053520.P17840257671978786017

`A053557(n+4)-A053519(n)`
-/

namespace A053520.P17840257671978786017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053557 (n + 4) - A053519 n

end

end A053520.P17840257671978786017

/-! ## A053520.P6937624383529544104

`A103816(n+4)-A053557(n+4)`
-/

namespace A053520.P6937624383529544104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103816 (n + 4) - A053557 (n + 4)

end

end A053520.P6937624383529544104

/-! ## A053520.P265917056129728605

`A053519(n)+(2*A103816(n+4))%A053557(n+4)`
-/

namespace A053520.P265917056129728605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053519 n + Int.tmod (2 * A103816 (n + 4)) (A053557 (n + 4))

end

end A053520.P265917056129728605

/-! ## A053520.P5429529519817691710

`(A103816(n+4)%A354402(n+3))%A053557(n+4)`
-/

namespace A053520.P5429529519817691710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A103816 (n + 4)) (A354402 (n + 3))) (A053557 (n + 4))

end

end A053520.P5429529519817691710

/-!
# A053521: a(n) = floor(A*a(n-1) + B*a(n-2) + C)/p^r, where p^r is the highest power of p dividing floor(A*a(n-1) + B*a(n-2) + C), A=1.0001, B=1.0001, C=1, p=2.

The programs for A053521, there is no canonical definition to state claims against.
-/

/-! ## A053521.P1167037455688429549

`A026741(ceil(A001595(n)/A184348(n+1)))`
-/

namespace A053521.P1167037455688429549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ⌈(A001595 n : ℚ) / (A184348 (n + 1) : ℚ)⌉.toNat

end

end A053521.P1167037455688429549

/-! ## A053521.P16408859446580450152

`A040026(ceil(A001595(n)/A184348(n+1)))`
-/

namespace A053521.P16408859446580450152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040026 ⌈(A001595 n : ℚ) / (A184348 (n + 1) : ℚ)⌉.toNat

end

end A053521.P16408859446580450152

/-! ## A053521.P692159291535737992

`A026741(ceil(A001595(n)/A240228(n+1)))`
-/

namespace A053521.P692159291535737992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ⌈(A001595 n : ℚ) / (A240228 (n + 1) : ℚ)⌉.toNat

end

end A053521.P692159291535737992

/-! ## A053521.P11153744139115025066

`A040026(ceil(A001595(n)/A240228(n+1)))`
-/

namespace A053521.P11153744139115025066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040026 ⌈(A001595 n : ℚ) / (A240228 (n + 1) : ℚ)⌉.toNat

end

end A053521.P11153744139115025066

/-! ## A053521.P6456926376827913283

`A106609(ceil(A001595(n)/A184348(n+1)))`
-/

namespace A053521.P6456926376827913283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 ⌈(A001595 n : ℚ) / (A184348 (n + 1) : ℚ)⌉.toNat

end

end A053521.P6456926376827913283

/-!
# A053522: a(n)=[A*a(n-1)+B*a(n-2)+C]/p^r, where p^r is the highest power of p dividing [A*a(n-1)+B*a(n-2)+C], A=1.0001, B=1.0001, C=1.5, p=2.

The programs for A053522, there is no canonical definition to state claims against.
-/

/-! ## A053522.P10198232573351194972

`A001595(n)%A038690(A206262(n+1))`
-/

namespace A053522.P10198232573351194972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001595 n) (A038690 (A206262 (n + 1)).toNat)

end

end A053522.P10198232573351194972

/-! ## A053522.P4440549913924507146

`A053521(n+1)%A038690(A206262(n+1))`
-/

namespace A053522.P4440549913924507146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053521 (n + 1)) (A038690 (A206262 (n + 1)).toNat)

end

end A053522.P4440549913924507146

/-! ## A053522.P12582160140868350120

`A005408(A000071(n+1))%A038690(A206262(n+1))`
-/

namespace A053522.P12582160140868350120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A000071 (n + 1)).toNat) (A038690 (A206262 (n + 1)).toNat)

end

end A053522.P12582160140868350120

/-!
# A053523: a(n)=[A*a(n-1)+B*a(n-2)+C]/p^r, where p^r is the highest power of p dividing [A*a(n-1)+B*a(n-2)+C], A=1.0001, B=1.0001, C=1.9, p=2.

The programs for A053523, there is no canonical definition to state claims against.
-/

/-! ## A053523.P3533419782383257536

`A001595(n)%A108631(A000040(n+1))`
-/

namespace A053523.P3533419782383257536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001595 n) (A108631 (A000040 (n + 1)).toNat)

end

end A053523.P3533419782383257536

/-!
# A053524: a(n) = (6^n - (-2)^n)/8.

The programs for A053524, the canonical program `A053524.P16837170121231480652` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053524 has offset 0).

The definition of A053524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n-(-2)^n)/8` (program `A053524.P17580115354424933414`, by `A053524.P17580115354424933414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053524.P6831842684867998642

`2^(n-3)*(3^n-(-1)^n)`
-/

namespace A053524.P6831842684867998642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * ((3 ^ n : ℤ) - (-1) ^ n : ℚ)

end

end A053524.P6831842684867998642

namespace A053524

/-- `2^(n-3)*(3^n-(-1)^n)` -/
def P6831842684867998642.Spec : Prop :=
  ∀ n, P6831842684867998642.a n = (A053524 n : ℚ)

end A053524

/-! ## A053524.P16837170121231480652

`4*a(n-1)+12*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053524

/-- `4*a(n-1)+12*a(n-2)` -/
def P16837170121231480652.Spec : Prop :=
  ∀ n, (P16837170121231480652.a n : ℤ) = A053524 n

theorem P16837170121231480652.correct : P16837170121231480652.Spec := by
  intro n
  simp only [A053524]

end A053524

/-! ## A053524.P17580115354424933414

`(6^n-(-2)^n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053524.P17580115354424933414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) - (-2) ^ n : ℚ) / 8

end

end A053524.P17580115354424933414

namespace A053524

/-- `(6^n-(-2)^n)/8` -/
def P17580115354424933414.Spec : Prop :=
  ∀ n, P17580115354424933414.a n = (A053524 n : ℚ)

theorem P17580115354424933414.correct : P17580115354424933414.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053524, Nat.add_sub_cancel, A053524.P17580115354424933414.a, A053524.P16837170121231480652.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053524, Nat.add_sub_cancel, A053524.P17580115354424933414.a, A053524.P16837170121231480652.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A053524

/-! ## A053524.P5058849568201554937

`ogf(x/(1-4x-12x^2))`
-/

namespace A053524.P5058849568201554937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, -12] n

end

end A053524.P5058849568201554937

namespace A053524

/-- `ogf(x/(1-4x-12x^2))` -/
def P5058849568201554937.Spec : Prop :=
  ∀ n, P5058849568201554937.a n = A053524 n

end A053524

/-! ## A053524.P1473642071292103308

`6^(n-1)-2*a(n-1)` with `a(0)=0`
-/

namespace A053524.P1473642071292103308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2 * a (n - 1)

end

end A053524.P1473642071292103308

namespace A053524

/-- `6^(n-1)-2*a(n-1)` -/
def P1473642071292103308.Spec : Prop :=
  ∀ n, P1473642071292103308.a n = (A053524 n : ℚ)

end A053524

/-! ## A053524.P14008758450332931092

`Δ[A091056(n)]`
-/

namespace A053524.P14008758450332931092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053524.P14008758450332931092

namespace A053524

/-- `Δ[A091056(n)]` -/
def P14008758450332931092.Spec : Prop :=
  ∀ n, P14008758450332931092.a n = A053524 n

end A053524

/-! ## A053524.P17713251053273321268

`abs(2^(n-1)*A014983(n))`
-/

namespace A053524.P17713251053273321268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A014983 n : ℚ)|

end

end A053524.P17713251053273321268

namespace A053524

/-- `abs(2^(n-1)*A014983(n))` -/
def P17713251053273321268.Spec : Prop :=
  ∀ n, P17713251053273321268.a n = (A053524 n : ℚ)

end A053524

/-! ## A053524.P8386721449824243190

`A091056(n)+A091055(n)`
-/

namespace A053524.P8386721449824243190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091056 n + A091055 n

end

end A053524.P8386721449824243190

namespace A053524

/-- `A091056(n)+A091055(n)` -/
def P8386721449824243190.Spec : Prop :=
  ∀ n, P8386721449824243190.a n = A053524 n

end A053524

/-! ## A053524.P2673714687599279

`abs(A015518(n)*A123344(n))`
-/

namespace A053524.P2673714687599279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015518 n * A123344 n|

end

end A053524.P2673714687599279

namespace A053524

/-- `abs(A015518(n)*A123344(n))` -/
def P2673714687599279.Spec : Prop :=
  ∀ n, P2673714687599279.a n = A053524 n

end A053524

/-! ## A053524.P414466687538489610

`A091056(n+1)-A091056(n)`
-/

namespace A053524.P414466687538489610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091056 (n + 1) - A091056 n

end

end A053524.P414466687538489610

namespace A053524

/-- `A091056(n+1)-A091056(n)` -/
def P414466687538489610.Spec : Prop :=
  ∀ n, P414466687538489610.a n = A053524 n

end A053524

/-!
# A053525: Expansion of e.g.f.: (1-x)/(2-exp(x)).

The programs for A053525, there is no canonical definition to state claims against.
-/

/-! ## A053525.P15057251303619877907

`A000670(n)-A052882(n)`
-/

namespace A053525.P15057251303619877907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A052882 n

end

end A053525.P15057251303619877907

/-! ## A053525.P2358149816403357708

`A122101(∑[n])-A052882(n)`
-/

namespace A053525.P2358149816403357708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A052882 n

end

end A053525.P2358149816403357708

/-! ## A053525.P6251514280039907181

`A154921(∑[n])-A052882(n)`
-/

namespace A053525.P6251514280039907181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - A052882 n

end

end A053525.P6251514280039907181

/-! ## A053525.P504050852022633614

`A052875(n)+1-A052882(n)`
-/

namespace A053525.P504050852022633614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + (1 - A052882 n)

end

end A053525.P504050852022633614

/-! ## A053525.P17250087768729190329

`ceil(A000629(n)/2)-A052882(n)`
-/

namespace A053525.P17250087768729190329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000629 n : ℚ) / 2⌉ - A052882 n

end

end A053525.P17250087768729190329

/-! ## A053525.P15955310193319270125

`ceil(A007047(n)/4)-A052882(n)`
-/

namespace A053525.P15955310193319270125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007047 n : ℚ) / 4⌉ - A052882 n

end

end A053525.P15955310193319270125

/-! ## A053525.P7425319857455091402

`A000670(n)-n*A122101(C(n, 2))`
-/

namespace A053525.P7425319857455091402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - (n : ℤ) * A122101 (Nat.choose n 2)

end

end A053525.P7425319857455091402

/-! ## A053525.P7812285383581499366

`A000670(n)-n*A154921(C(n, 2))`
-/

namespace A053525.P7812285383581499366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - (n : ℤ) * A154921 (Nat.choose n 2)

end

end A053525.P7812285383581499366

/-! ## A053525.P14451711112272591885

`A226513(A000096(n))-A052882(n)`
-/

namespace A053525.P14451711112272591885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A000096 n).toNat - A052882 n

end

end A053525.P14451711112272591885

/-! ## A053525.P16172292186920653283

`A327868(A004273(n))-A052882(n)`
-/

namespace A053525.P16172292186920653283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (A004273 n).toNat - A052882 n

end

end A053525.P16172292186920653283

/-!
# A053526: Number of bipartite graphs with 3 edges on nodes {1..n}.

The programs for A053526, the canonical program `A053526.P841037365841277915` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053526 has offset 0).

The definition of A053526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053526.P841037365841277915

`C(n, 4)*(n²+3*n+4)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053526

/-- `C(n, 4)*(n²+3*n+4)/2` -/
def P841037365841277915.Spec : Prop :=
  ∀ n, P841037365841277915.a n = (A053526 n : ℚ)

end A053526

/-! ## A053526.P4508512196154114567

`(n-3)*(n-2)*(n-1)*n*(n²+3*n+4)/48`
-/

namespace A053526.P4508512196154114567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3) * ((n : ℤ) - 2) * ((n : ℤ) - 1) * (n : ℤ) * (n ^ 2 + 3 * n + 4 : ℤ) : ℚ) / 48

end

end A053526.P4508512196154114567

namespace A053526

/-- `(n-3)*(n-2)*(n-1)*n*(n²+3*n+4)/48` -/
def P4508512196154114567.Spec : Prop :=
  ∀ n, P4508512196154114567.a n = (A053526 n : ℚ)

end A053526

/-! ## A053526.P926981938235496227

`16*C(n, 4)+30*C(n, 5)+15*C(n, 6)`
-/

namespace A053526.P926981938235496227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * Nat.choose n 4 + 30 * Nat.choose n 5 + 15 * Nat.choose n 6

end

end A053526.P926981938235496227

namespace A053526

/-- `16*C(n, 4)+30*C(n, 5)+15*C(n, 6)` -/
def P926981938235496227.Spec : Prop :=
  ∀ n, (P926981938235496227.a n : ℤ) = A053526 n

end A053526

/-! ## A053526.P2198759862935485056

`abs((n-∑[A050407(n)])*A134869(n+1))`
-/

namespace A053526.P2198759862935485056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) * A134869 (n + 1)|

end

end A053526.P2198759862935485056

namespace A053526

/-- `abs((n-∑[A050407(n)])*A134869(n+1))` -/
def P2198759862935485056.Spec : Prop :=
  ∀ n, P2198759862935485056.a n = A053526 n

end A053526

/-! ## A053526.P7782774019482008560

`A000332(n)+A000332(n)*A253145(n)`
-/

namespace A053526.P7782774019482008560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + A000332 n * A253145 n

end

end A053526.P7782774019482008560

namespace A053526

/-- `A000332(n)+A000332(n)*A253145(n)` -/
def P7782774019482008560.Spec : Prop :=
  ∀ n, P7782774019482008560.a n = A053526 n

end A053526

/-! ## A053526.P12009614511009107515

`A000332(n)+A000217(n+1)*A000332(n)`
-/

namespace A053526.P12009614511009107515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + A000217 (n + 1) * A000332 n

end

end A053526.P12009614511009107515

namespace A053526

/-- `A000332(n)+A000217(n+1)*A000332(n)` -/
def P12009614511009107515.Spec : Prop :=
  ∀ n, P12009614511009107515.a n = A053526 n

end A053526

/-! ## A053526.P675402509600516602

`A000332(n)*A133263(n+1)-A000332(n)`
-/

namespace A053526.P675402509600516602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n * A133263 (n + 1) - A000332 n

end

end A053526.P675402509600516602

namespace A053526

/-- `A000332(n)*A133263(n+1)-A000332(n)` -/
def P675402509600516602.Spec : Prop :=
  ∀ n, P675402509600516602.a n = A053526 n

end A053526

/-! ## A053526.P7017214708693935927

`A000332(n+1)*A161680(n)-A117662(n)`
-/

namespace A053526.P7017214708693935927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) * A161680 n - A117662 n

end

end A053526.P7017214708693935927

namespace A053526

/-- `A000332(n+1)*A161680(n)-A117662(n)` -/
def P7017214708693935927.Spec : Prop :=
  ∀ n, P7017214708693935927.a n = A053526 n

end A053526

/-! ## A053526.P2113167832555436426

`A093566(n+1)+A000332(n)-A000332(n+1)`
-/

namespace A053526.P2113167832555436426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (n + 1) + (A000332 n - A000332 (n + 1))

end

end A053526.P2113167832555436426

namespace A053526

/-- `A093566(n+1)+A000332(n)-A000332(n+1)` -/
def P2113167832555436426.Spec : Prop :=
  ∀ n, P2113167832555436426.a n = A053526 n

end A053526

/-! ## A053526.P16695614076482953333

`A000332(n)+A000332(n+1)*A167544(n+5)`
-/

namespace A053526.P16695614076482953333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + A000332 (n + 1) * A167544 (n + 5)

end

end A053526.P16695614076482953333

namespace A053526

/-- `A000332(n)+A000332(n+1)*A167544(n+5)` -/
def P16695614076482953333.Spec : Prop :=
  ∀ n, P16695614076482953333.a n = A053526 n

end A053526

/-!
# A053527: Number of bipartite graphs with 4 edges on nodes {1..n}.

The programs for A053527, the canonical program `A053527.P1217293750911527235` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053527 has offset 0).

The definition of A053527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053527.P1217293750911527235

`C(n, 4)*(n+2)*(n^3-5*n-36)/16`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053527

/-- `C(n, 4)*(n+2)*(n^3-5*n-36)/16` -/
def P1217293750911527235.Spec : Prop :=
  ∀ n, P1217293750911527235.a n = (A053527 n : ℚ)

end A053527

/-! ## A053527.P9469780955472174897

`(n-3)*(n-2)*(n-1)*n*(n+2)*(n^3-5*n-36)/384`
-/

namespace A053527.P9469780955472174897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3) * ((n : ℤ) - 2) * ((n : ℤ) - 1) * (n : ℤ) * (n + 2 : ℤ) * ((n ^ 3 : ℤ) - (5 * n : ℤ) - 36) : ℚ) / 384

end

end A053527.P9469780955472174897

namespace A053527

/-- `(n-3)*(n-2)*(n-1)*n*(n+2)*(n^3-5*n-36)/384` -/
def P9469780955472174897.Spec : Prop :=
  ∀ n, P9469780955472174897.a n = (A053527 n : ℚ)

end A053527

/-! ## A053527.P5762633726773875915

`A025444(abs(∑{d}[n+1, #]-A322498(n))+1)`
-/

namespace A053527.P5762633726773875915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (|((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A322498 n| + 1).toNat

end

end A053527.P5762633726773875915

namespace A053527

/-- `A025444(abs(∑{d}[n+1, #]-A322498(n))+1)` -/
def P5762633726773875915.Spec : Prop :=
  ∀ n, P5762633726773875915.a n = A053527 n

end A053527

/-!
# A053528: Number of bipartite graphs with 5 edges on nodes {1..n}.

The programs for A053528, the canonical program `A053528.P5013786695847046820` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053528 has offset 0).

The definition of A053528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053528.P5013786695847046820

`C(n, 5)*(n^5+5*n^4+5*n^3-85*n²-374*n-960)/32`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053528

/-- `C(n, 5)*(n^5+5*n^4+5*n^3-85*n²-374*n-960)/32` -/
def P5013786695847046820.Spec : Prop :=
  ∀ n, P5013786695847046820.a n = (A053528 n : ℚ)

end A053528

/-! ## A053528.P10317220922212165829

`(lt[ceil((n-3)/4), A343068(n+1)]-n)²*∑[n]`
-/

namespace A053528.P10317220922212165829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 3 : ℚ) / 4⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343068 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A053528.P10317220922212165829

namespace A053528

/-- `(lt[ceil((n-3)/4), A343068(n+1)]-n)²*∑[n]` -/
def P10317220922212165829.Spec : Prop :=
  ∀ n, P10317220922212165829.a n = A053528 n

end A053528

/-! ## A053528.P2947852546988744843

`A000096(n)*A055998(A184993(n))`
-/

namespace A053528.P2947852546988744843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n * A055998 (A184993 n).toNat

end

end A053528.P2947852546988744843

namespace A053528

/-- `A000096(n)*A055998(A184993(n))` -/
def P2947852546988744843.Spec : Prop :=
  ∀ n, P2947852546988744843.a n = A053528 n

end A053528

/-!
# A053529: a(n) = n! * number of partitions of n.

The programs for A053529, there is no canonical definition to state claims against.
-/

/-! ## A053529.P5965560071345567343

`A234937(∑[n])`
-/

namespace A053529.P5965560071345567343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053529.P5965560071345567343

/-! ## A053529.P12732468111205778148

`n!*A000041(n)`
-/

namespace A053529.P12732468111205778148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000041 n

end

end A053529.P12732468111205778148

/-! ## A053529.P9794678011153161867

`n!*∑[A002865(n)]`
-/

namespace A053529.P9794678011153161867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053529.P9794678011153161867

/-! ## A053529.P10800420340409731561

`n!*A238343(∑[n])`
-/

namespace A053529.P10800420340409731561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A238343 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053529.P10800420340409731561

/-! ## A053529.P11158975172828075638

`A293301(∑[n+2]-1)`
-/

namespace A053529.P11158975172828075638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293301 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A053529.P11158975172828075638

/-! ## A053529.P7771276233689798331

`n!*A119620(2*n)`
-/

namespace A053529.P7771276233689798331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A119620 (2 * n)

end

end A053529.P7771276233689798331

/-! ## A053529.P9506995116222584112

`A000041(n)*A000142(n)`
-/

namespace A053529.P9506995116222584112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000142 n

end

end A053529.P9506995116222584112

/-! ## A053529.P7360745077759883535

`Δ[A003422(n)]*A000041(n)`
-/

namespace A053529.P7360745077759883535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000041 n

end

end A053529.P7360745077759883535

/-! ## A053529.P16507272395441745002

`A000041(n)*∏[A028310(n)]`
-/

namespace A053529.P16507272395441745002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A053529.P16507272395441745002

/-!
# A053530: Expansion of e.g.f.: exp(-x - x^2/2 + x*exp(x)).

The programs for A053530, there is no canonical definition to state claims against.
-/

/-! ## A053530.P18236484162213069255

`abs(record[A165795(A062514(n+1))])`
-/

namespace A053530.P18236484162213069255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (A062514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A053530.P18236484162213069255

/-! ## A053530.P9691063862831049681

`A354006(∑[A133755(2^n+2^n+4^n+n)])`
-/

namespace A053530.P9691063862831049681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 (2 ^ n + (2 ^ n + 4 ^ n) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053530.P9691063862831049681

/-! ## A053530.P3374815138900976071

`A194090(n+1)-A127266(A001206(n))`
-/

namespace A053530.P3374815138900976071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194090 (n + 1) - A127266 (A001206 n).toNat

end

end A053530.P3374815138900976071

/-!
# A053532: Expansion of e.g.f.: (1-x)^(-1/2)*exp(-x/2 -x^2/4 -x^3/6).

The programs for A053532, there is no canonical definition to state claims against.
-/

/-! ## A053532.P2984966735696035923

`A194161(A047865(n)+1)`
-/

namespace A053532.P2984966735696035923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194161 (A047865 n + 1).toNat

end

end A053532.P2984966735696035923

/-! ## A053532.P8212382856985483674

`A131728(2*A047865(n))`
-/

namespace A053532.P8212382856985483674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (2 * A047865 n).toNat

end

end A053532.P8212382856985483674

/-! ## A053532.P8031530655299413760

`A131730(2*A047865(n))`
-/

namespace A053532.P8031530655299413760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (2 * A047865 n).toNat

end

end A053532.P8031530655299413760

/-! ## A053532.P5257251309208529219

`A131728(2*A355285(n))`
-/

namespace A053532.P5257251309208529219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (2 * A355285 n).toNat

end

end A053532.P5257251309208529219

/-!
# A053533: Expansion of e.g.f.: (1-x)^(-1/2)*exp(-x/2 -x^2/4 -x^3/6 -x^4/8).

The programs for A053533, there is no canonical definition to state claims against.
-/

/-! ## A053533.P17758145036501391684

`A001710(A033999(a(n-1)+29)+n)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A053533.P17758145036501391684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A001710 (A033999 (a (n - 1) + 29).toNat + (n : ℤ)).toNat

end

end A053533.P17758145036501391684

/-! ## A053533.P16282646149962566164

`A273943(A017899(n)*A273695(n))`
-/

namespace A053533.P16282646149962566164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A017899 n * A273695 n).toNat

end

end A053533.P16282646149962566164

/-! ## A053533.P11972613806461629038

`A273943(A185325(n)*A273695(n))`
-/

namespace A053533.P11972613806461629038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A185325 n * A273695 n).toNat

end

end A053533.P11972613806461629038

/-! ## A053533.P3404894005290911611

`A273943(lcm(A017899(n), A273695(n)))`
-/

namespace A053533.P3404894005290911611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm (A017899 n) (A273695 n))

end

end A053533.P3404894005290911611

/-! ## A053533.P12265168322329126886

`A017899(n)*A065033(A104150(n))`
-/

namespace A053533.P12265168322329126886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n * A065033 (A104150 n).toNat

end

end A053533.P12265168322329126886

/-!
# A053534: Triangle T(n,k) giving number of pairwise non-isomorphic (i.e., unlabeled) matroids of rank k on n points (n >= 0, 0 <= k <= n).

The programs for A053534, there is no canonical definition to state claims against.
-/

/-! ## A053534.P13906667136774861875

`A347520(A028657(n)+A011744(n))`
-/

namespace A053534.P13906667136774861875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A028657 n + A011744 n).toNat

end

end A053534.P13906667136774861875

/-! ## A053534.P14089138898029691862

`A343380(A094526(n))+A028657(n)`
-/

namespace A053534.P14089138898029691862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A094526 n).toNat + A028657 n

end

end A053534.P14089138898029691862

/-! ## A053534.P9852490413987287791

`A343380(A094526(n))+A331995(A086617(n))`
-/

namespace A053534.P9852490413987287791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A094526 n).toNat + A331995 (A086617 n).toNat

end

end A053534.P9852490413987287791

/-! ## A053534.P6843580974881175126

`A347520(A028657(n)%A213300(n+3))`
-/

namespace A053534.P6843580974881175126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (Int.tmod (A028657 n) (A213300 (n + 3))).toNat

end

end A053534.P6843580974881175126

/-! ## A053534.P11446087814399103605

`A180493(A028657(n))`
-/

namespace A053534.P11446087814399103605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (A028657 n).toNat

end

end A053534.P11446087814399103605

/-!
# A053535: Expansion of 1/((1+3*x)*(1-9*x)).

The programs for A053535, the canonical program `A053535.P3138845531490569157` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053535 has offset 0).

The definition of A053535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x-27x^2))` (program `A053535.P3138845531490569157`, by `A053535.P3138845531490569157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053535.P3138845531490569157

`ogf(1/(1-6x-27x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053535

/-- `ogf(1/(1-6x-27x^2))` -/
def P3138845531490569157.Spec : Prop :=
  ∀ n, P3138845531490569157.a n = A053535 n

theorem P3138845531490569157.correct : P3138845531490569157.Spec := by
  intro n
  simp only [A053535]

end A053535

/-! ## A053535.P7139845402054119901

`6*a(n-1)+27*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A053535.P7139845402054119901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  6 * a (n - 1) + 27 * a (n - 2)

end

end A053535.P7139845402054119901

namespace A053535

/-- `6*a(n-1)+27*a(n-2)` -/
def P7139845402054119901.Spec : Prop :=
  ∀ n, (P7139845402054119901.a n : ℤ) = A053535 n

end A053535

/-! ## A053535.P13160777016515242858

`3^n/4*(3^(n+1)+(-1)^n)`
-/

namespace A053535.P13160777016515242858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 4 * ((3 ^ (n + 1) : ℤ) + (-1) ^ n : ℚ)

end

end A053535.P13160777016515242858

namespace A053535

/-- `3^n/4*(3^(n+1)+(-1)^n)` -/
def P13160777016515242858.Spec : Prop :=
  ∀ n, P13160777016515242858.a n = (A053535 n : ℚ)

end A053535

/-! ## A053535.P18405122517260947258

`lcm(3^n, ∑[(-3)^n])`
-/

namespace A053535.P18405122517260947258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053535.P18405122517260947258

namespace A053535

/-- `lcm(3^n, ∑[(-3)^n])` -/
def P18405122517260947258.Spec : Prop :=
  ∀ n, (P18405122517260947258.a n : ℤ) = A053535 n

end A053535

/-! ## A053535.P144352674698134126

`9^n-3*a(n-1)` with `a(0)=1`
-/

namespace A053535.P144352674698134126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 ^ n : ℤ) - 3 * a (n - 1)

end

end A053535.P144352674698134126

namespace A053535

/-- `9^n-3*a(n-1)` -/
def P144352674698134126.Spec : Prop :=
  ∀ n, P144352674698134126.a n = A053535 n

end A053535

/-! ## A053535.P16955644033814205977

`A318609(2*(n+1))/4`
-/

namespace A053535.P16955644033814205977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318609 (2 * (n + 1)) : ℚ) / 4

end

end A053535.P16955644033814205977

namespace A053535

/-- `A318609(2*(n+1))/4` -/
def P16955644033814205977.Spec : Prop :=
  ∀ n, P16955644033814205977.a n = (A053535 n : ℚ)

end A053535

/-! ## A053535.P3785667261786165568

`A318610(2*(n+1))/4`
-/

namespace A053535.P3785667261786165568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318610 (2 * (n + 1)) : ℚ) / 4

end

end A053535.P3785667261786165568

namespace A053535

/-- `A318610(2*(n+1))/4` -/
def P3785667261786165568.Spec : Prop :=
  ∀ n, P3785667261786165568.a n = (A053535 n : ℚ)

end A053535

/-! ## A053535.P12354833463649648774

`A001019(n)-a(n-1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A053535.P12354833463649648774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001019 n - a (n - 1) - a (n - 1) - a (n - 1)

end

end A053535.P12354833463649648774

namespace A053535

/-- `A001019(n)-a(n-1)-a(n-1)-a(n-1)` -/
def P12354833463649648774.Spec : Prop :=
  ∀ n, P12354833463649648774.a n = A053535 n

end A053535

/-! ## A053535.P15006005677584584647

`A084567(n)+A080926(2*n)`
-/

namespace A053535.P15006005677584584647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 n + A080926 (2 * n)

end

end A053535.P15006005677584584647

namespace A053535

/-- `A084567(n)+A080926(2*n)` -/
def P15006005677584584647.Spec : Prop :=
  ∀ n, P15006005677584584647.a n = A053535 n

end A053535

/-! ## A053535.P14004289458002806611

`A014983(Δ[n²])-A014983(n)`
-/

namespace A053535.P14004289458002806611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A014983 n

end

end A053535.P14004289458002806611

namespace A053535

/-- `A014983(Δ[n²])-A014983(n)` -/
def P14004289458002806611.Spec : Prop :=
  ∀ n, P14004289458002806611.a n = A053535 n

end A053535

/-! ## A053535.P4400315750451058150

`A084222(Δ[n²])-A084222(n)`
-/

namespace A053535.P4400315750451058150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A084222 n

end

end A053535.P4400315750451058150

namespace A053535

/-- `A084222(Δ[n²])-A084222(n)` -/
def P4400315750451058150.Spec : Prop :=
  ∀ n, P4400315750451058150.a n = A053535 n

end A053535

/-! ## A053535.P14500833249438962533

`A084567(n)-A084567(Δ[n²])`
-/

namespace A053535.P14500833249438962533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 n - A084567 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053535.P14500833249438962533

namespace A053535

/-- `A084567(n)-A084567(Δ[n²])` -/
def P14500833249438962533.Spec : Prop :=
  ∀ n, P14500833249438962533.a n = A053535 n

end A053535

/-! ## A053535.P8716981587704524309

`record[A084222(n+1)]-A084222(n)`
-/

namespace A053535.P8716981587704524309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A084222 n

end

end A053535.P8716981587704524309

namespace A053535

/-- `record[A084222(n+1)]-A084222(n)` -/
def P8716981587704524309.Spec : Prop :=
  ∀ n, P8716981587704524309.a n = A053535 n

end A053535

/-! ## A053535.P11566115071070630570

`A084567(n)+A054878(2*n+1)`
-/

namespace A053535.P11566115071070630570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 n + A054878 (2 * n + 1)

end

end A053535.P11566115071070630570

namespace A053535

/-- `A084567(n)+A054878(2*n+1)` -/
def P11566115071070630570.Spec : Prop :=
  ∀ n, P11566115071070630570.a n = A053535 n

end A053535

/-! ## A053535.P828487513228547951

`A122983(2*n+1)-A014983(n)`
-/

namespace A053535.P828487513228547951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 (2 * n + 1) - A014983 n

end

end A053535.P828487513228547951

namespace A053535

/-- `A122983(2*n+1)-A014983(n)` -/
def P828487513228547951.Spec : Prop :=
  ∀ n, P828487513228547951.a n = A053535 n

end A053535

/-! ## A053535.P17290384710237486466

`A084567(n)+abs(A084567(2*n+1))`
-/

namespace A053535.P17290384710237486466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 n + |A084567 (2 * n + 1)|

end

end A053535.P17290384710237486466

namespace A053535

/-- `A084567(n)+abs(A084567(2*n+1))` -/
def P17290384710237486466.Spec : Prop :=
  ∀ n, P17290384710237486466.a n = A053535 n

end A053535

/-! ## A053535.P8302281180052366890

`abs(A014983(2*n+1)-A014983(n))`
-/

namespace A053535.P8302281180052366890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014983 (2 * n + 1) - A014983 n|

end

end A053535.P8302281180052366890

namespace A053535

/-- `abs(A014983(2*n+1)-A014983(n))` -/
def P8302281180052366890.Spec : Prop :=
  ∀ n, P8302281180052366890.a n = A053535 n

end A053535

/-! ## A053535.P6785702216026152680

`abs(A084222(2*n+1)-A084222(n))`
-/

namespace A053535.P6785702216026152680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084222 (2 * n + 1) - A084222 n|

end

end A053535.P6785702216026152680

namespace A053535

/-- `abs(A084222(2*n+1)-A084222(n))` -/
def P6785702216026152680.Spec : Prop :=
  ∀ n, P6785702216026152680.a n = A053535 n

end A053535

/-!
# A053536: Expansion of 1/((1+4*x)*(1-12*x)).

The programs for A053536, the canonical program `A053536.P9851455125622284050` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053536 has offset 0).

The definition of A053536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x-48x^2))` (program `A053536.P9851455125622284050`, by `A053536.P9851455125622284050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053536.P9851455125622284050

`ogf(1/(1-8x-48x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053536

/-- `ogf(1/(1-8x-48x^2))` -/
def P9851455125622284050.Spec : Prop :=
  ∀ n, P9851455125622284050.a n = A053536 n

theorem P9851455125622284050.correct : P9851455125622284050.Spec := by
  intro n
  simp only [A053536]

end A053536

/-! ## A053536.P12548072010830457029

`8*a(n-1)+48*a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A053536.P12548072010830457029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  8 * a (n - 1) + 48 * a (n - 2)

end

end A053536.P12548072010830457029

namespace A053536

/-- `8*a(n-1)+48*a(n-2)` -/
def P12548072010830457029.Spec : Prop :=
  ∀ n, (P12548072010830457029.a n : ℤ) = A053536 n

end A053536

/-! ## A053536.P7709301675754455705

`4^n/4*(3^(n+1)+(-1)^n)`
-/

namespace A053536.P7709301675754455705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 4 * ((3 ^ (n + 1) : ℤ) + (-1) ^ n : ℚ)

end

end A053536.P7709301675754455705

namespace A053536

/-- `4^n/4*(3^(n+1)+(-1)^n)` -/
def P7709301675754455705.Spec : Prop :=
  ∀ n, P7709301675754455705.a n = (A053536 n : ℚ)

end A053536

/-! ## A053536.P8127931822544004360

`12^n-4*a(n-1)` with `a(0)=1`
-/

namespace A053536.P8127931822544004360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (12 ^ n : ℤ) - 4 * a (n - 1)

end

end A053536.P8127931822544004360

namespace A053536

/-- `12^n-4*a(n-1)` -/
def P8127931822544004360.Spec : Prop :=
  ∀ n, P8127931822544004360.a n = A053536 n

end A053536

/-! ## A053536.P18193938557092894635

`abs(4^n*A014983(n+1))`
-/

namespace A053536.P18193938557092894635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) * A014983 (n + 1)|

end

end A053536.P18193938557092894635

namespace A053536

/-- `abs(4^n*A014983(n+1))` -/
def P18193938557092894635.Spec : Prop :=
  ∀ n, P18193938557092894635.a n = A053536 n

end A053536

/-! ## A053536.P16534362468990269467

`xor(12*a(n-1), A000079(n)²)` with `a(0)=1`
-/

namespace A053536.P16534362468990269467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (12 * a (n - 1)) (A000079 n ^ 2)

end

end A053536.P16534362468990269467

namespace A053536

/-- `xor(12*a(n-1), A000079(n)²)` -/
def P16534362468990269467.Spec : Prop :=
  ∀ n, P16534362468990269467.a n = A053536 n

end A053536

/-! ## A053536.P17219377228003665445

`xor(12*a(n-1), ∑[A002001(n)])` with `a(0)=1`
-/

namespace A053536.P17219377228003665445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (12 * a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053536.P17219377228003665445

namespace A053536

/-- `xor(12*a(n-1), ∑[A002001(n)])` -/
def P17219377228003665445.Spec : Prop :=
  ∀ n, P17219377228003665445.a n = A053536 n

end A053536

/-! ## A053536.P3571799182470474699

`xor(12*a(n-1), A000079(2*n))` with `a(0)=1`
-/

namespace A053536.P3571799182470474699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (12 * a (n - 1)) (A000079 (2 * n))

end

end A053536.P3571799182470474699

namespace A053536

/-- `xor(12*a(n-1), A000079(2*n))` -/
def P3571799182470474699.Spec : Prop :=
  ∀ n, P3571799182470474699.a n = A053536 n

end A053536

/-! ## A053536.P12473492863415948835

`A262710(n)-A084567(n+1)*A262710(n)`
-/

namespace A053536.P12473492863415948835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262710 n - A084567 (n + 1) * A262710 n

end

end A053536.P12473492863415948835

namespace A053536

/-- `A262710(n)-A084567(n+1)*A262710(n)` -/
def P12473492863415948835.Spec : Prop :=
  ∀ n, P12473492863415948835.a n = A053536 n

end A053536

/-! ## A053536.P3925629330791961910

`A053524(n+1)²/A015518(n+1)`
-/

namespace A053536.P3925629330791961910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053524 (n + 1) ^ 2 : ℚ) / (A015518 (n + 1) : ℚ)

end

end A053536.P3925629330791961910

namespace A053536

/-- `A053524(n+1)²/A015518(n+1)` -/
def P3925629330791961910.Spec : Prop :=
  ∀ n, P3925629330791961910.a n = (A053536 n : ℚ)

end A053536

/-!
# A053537: Expansion of 1/((1+5*x)*(1-15*x)).

The programs for A053537, the canonical program `A053537.P5730100175236072048` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053537 has offset 0).

The definition of A053537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x-75x^2))` (program `A053537.P5730100175236072048`, by `A053537.P5730100175236072048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053537.P5730100175236072048

`ogf(1/(1-10x-75x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053537

/-- `ogf(1/(1-10x-75x^2))` -/
def P5730100175236072048.Spec : Prop :=
  ∀ n, P5730100175236072048.a n = A053537 n

theorem P5730100175236072048.correct : P5730100175236072048.Spec := by
  intro n
  simp only [A053537]

end A053537

/-! ## A053537.P4723396050385246829

`10*a(n-1)+75*a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A053537.P4723396050385246829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  10 * a (n - 1) + 75 * a (n - 2)

end

end A053537.P4723396050385246829

namespace A053537

/-- `10*a(n-1)+75*a(n-2)` -/
def P4723396050385246829.Spec : Prop :=
  ∀ n, (P4723396050385246829.a n : ℤ) = A053537 n

end A053537

/-! ## A053537.P3509390825801906699

`5^n/4*(3^(n+1)+(-1)^n)`
-/

namespace A053537.P3509390825801906699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) / 4 * ((3 ^ (n + 1) : ℤ) + (-1) ^ n : ℚ)

end

end A053537.P3509390825801906699

namespace A053537

/-- `5^n/4*(3^(n+1)+(-1)^n)` -/
def P3509390825801906699.Spec : Prop :=
  ∀ n, P3509390825801906699.a n = (A053537 n : ℚ)

end A053537

/-! ## A053537.P13145588887850507794

`15^n-5*a(n-1)` with `a(0)=1`
-/

namespace A053537.P13145588887850507794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (15 ^ n : ℤ) - 5 * a (n - 1)

end

end A053537.P13145588887850507794

namespace A053537

/-- `15^n-5*a(n-1)` -/
def P13145588887850507794.Spec : Prop :=
  ∀ n, P13145588887850507794.a n = A053537 n

end A053537

/-! ## A053537.P10403755614228900024

`A015518(n+1)+A015518(n+1)*A024049(n)`
-/

namespace A053537.P10403755614228900024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) + A015518 (n + 1) * A024049 n

end

end A053537.P10403755614228900024

namespace A053537

/-- `A015518(n+1)+A015518(n+1)*A024049(n)` -/
def P10403755614228900024.Spec : Prop :=
  ∀ n, P10403755614228900024.a n = A053537 n

end A053537

/-!
# A053538: Triangle: a(n,m) = ways to place p balls in n slots with m in the rightmost p slots, 0<=p<=n, 0<=m<=n, summed over p, a(n,m)= Sum_{k=0..n} binomial(k,m)*binomial(n-k,k-m), (see program line).

The programs for A053538, there is no canonical definition to state claims against.
-/

/-! ## A053538.P11201634848047672755

`A210596(n+1)/A059268(n)`
-/

namespace A053538.P11201634848047672755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210596 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A053538.P11201634848047672755

/-! ## A053538.P4882888353004531839

`(A207611(n+1)+A105422(n))/2`
-/

namespace A053538.P4882888353004531839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207611 (n + 1) + A105422 n : ℚ) / 2

end

end A053538.P4882888353004531839

/-! ## A053538.P1979142342279287456

`A210596(n+1)/A000079(A002262(n))`
-/

namespace A053538.P1979142342279287456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210596 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A053538.P1979142342279287456

/-! ## A053538.P1784267717749777610

`A210596(n+1)/A011782(A002260(n+1))`
-/

namespace A053538.P1784267717749777610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210596 (n + 1) : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A053538.P1784267717749777610

/-! ## A053538.P1597452663847272227

`A210552(A056943(n+1)+1)`
-/

namespace A053538.P1597452663847272227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210552 (A056943 (n + 1) + 1).toNat

end

end A053538.P1597452663847272227

/-! ## A053538.P17031297082827154296

`A208342(A038722(n+1))`
-/

namespace A053538.P17031297082827154296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208342 (A038722 (n + 1)).toNat

end

end A053538.P17031297082827154296

/-! ## A053538.P7870469574487512595

`A208342(A061579(n)+1)`
-/

namespace A053538.P7870469574487512595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208342 (A061579 n + 1).toNat

end

end A053538.P7870469574487512595

/-! ## A053538.P16605951804266729115

`A210596(n+1)/A130321(A061579(n))`
-/

namespace A053538.P16605951804266729115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210596 (n + 1) : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A053538.P16605951804266729115

/-! ## A053538.P11622423075727803416

`A210596(n+1)/A130321(A286147(n))`
-/

namespace A053538.P11622423075727803416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210596 (n + 1) : ℚ) / (A130321 (A286147 n).toNat : ℚ)

end

end A053538.P11622423075727803416

/-! ## A053538.P11517348238181086951

`A105422(n)+A026741(A207611(n+1)-A105422(n))`
-/

namespace A053538.P11517348238181086951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n + A026741 (A207611 (n + 1) - A105422 n).toNat

end

end A053538.P11517348238181086951

/-! ## A053538.P13492058913123559407

`A026741(A207611(n+1)+A105422(n))`
-/

namespace A053538.P13492058913123559407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A207611 (n + 1) + A105422 n).toNat

end

end A053538.P13492058913123559407

/-! ## A053538.P3561517923155580569

`A110654(A207611(n+1)+A105422(n))`
-/

namespace A053538.P3561517923155580569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A207611 (n + 1) + A105422 n).toNat

end

end A053538.P3561517923155580569

/-! ## A053538.P16713960392154855381

`A123108(A207611(n+1)+A105422(n))`
-/

namespace A053538.P16713960392154855381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A207611 (n + 1) + A105422 n).toNat

end

end A053538.P16713960392154855381

/-!
# A053539: a(n) = n*8^(n-1).

The programs for A053539, the canonical program `A053539.P12297489494819513465` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053539 has offset 0).

The definition of A053539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053539.P5720990224919375969

`n*8^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053539.P5720990224919375969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A053539.P5720990224919375969

namespace A053539

/-- `n*8^(n-1)` -/
def P5720990224919375969.Spec : Prop :=
  ∀ n, P5720990224919375969.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P12297489494819513465

`16*a(n-1)-64*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053539

/-- `16*a(n-1)-64*a(n-2)` -/
def P12297489494819513465.Spec : Prop :=
  ∀ n, P12297489494819513465.a n = A053539 n

theorem P12297489494819513465.correct : P12297489494819513465.Spec := by
  intro n
  simp only [A053539]

end A053539

/-! ## A053539.P2612927806243763507

`A081108(n)-8^n`
-/

namespace A053539.P2612927806243763507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081108 n - (8 ^ n : ℤ)

end

end A053539.P2612927806243763507

namespace A053539

/-- `A081108(n)-8^n` -/
def P2612927806243763507.Spec : Prop :=
  ∀ n, P2612927806243763507.a n = A053539 n

end A053539

/-! ## A053539.P3144358196403846597

`A000079(n)*A002697(n)/2`
-/

namespace A053539.P3144358196403846597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A002697 n : ℚ) / 2

end

end A053539.P3144358196403846597

namespace A053539

/-- `A000079(n)*A002697(n)/2` -/
def P3144358196403846597.Spec : Prop :=
  ∀ n, P3144358196403846597.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P9550110152784935141

`n*A034008(A008486(n))/2`
-/

namespace A053539.P9550110152784935141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A034008 (A008486 n).toNat : ℚ) / 2

end

end A053539.P9550110152784935141

namespace A053539

/-- `n*A034008(A008486(n))/2` -/
def P9550110152784935141.Spec : Prop :=
  ∀ n, P9550110152784935141.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P6742587921465998510

`n*A034008(A008585(n))/2`
-/

namespace A053539.P6742587921465998510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A034008 (A008585 n).toNat : ℚ) / 2

end

end A053539.P6742587921465998510

namespace A053539

/-- `n*A034008(A008585(n))/2` -/
def P6742587921465998510.Spec : Prop :=
  ∀ n, P6742587921465998510.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P2636900658882935223

`abs(record[A235789(n)]*A011782(n))`
-/

namespace A053539.P2636900658882935223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A011782 n|

end

end A053539.P2636900658882935223

namespace A053539

/-- `abs(record[A235789(n)]*A011782(n))` -/
def P2636900658882935223.Spec : Prop :=
  ∀ n, P2636900658882935223.a n = A053539 n

end A053539

/-! ## A053539.P10005214198684375780

`abs(record[A235789(n)]*A131577(n))`
-/

namespace A053539.P10005214198684375780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A131577 n|

end

end A053539.P10005214198684375780

namespace A053539

/-- `abs(record[A235789(n)]*A131577(n))` -/
def P10005214198684375780.Spec : Prop :=
  ∀ n, P10005214198684375780.a n = A053539 n

end A053539

/-! ## A053539.P12517812528958886547

`A011782(n)²*A036289(n)/2`
-/

namespace A053539.P12517812528958886547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n ^ 2 * A036289 n : ℚ) / 2

end

end A053539.P12517812528958886547

namespace A053539

/-- `A011782(n)²*A036289(n)/2` -/
def P12517812528958886547.Spec : Prop :=
  ∀ n, P12517812528958886547.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P372077930928603461

`floor(n/8*A017929(A005843(n)))`
-/

namespace A053539.P372077930928603461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8 * (A017929 (A005843 n).toNat : ℚ)⌋

end

end A053539.P372077930928603461

namespace A053539

/-- `floor(n/8*A017929(A005843(n)))` -/
def P372077930928603461.Spec : Prop :=
  ∀ n, P372077930928603461.a n = A053539 n

end A053539

/-! ## A053539.P11920068023495902629

`abs(record[-A168150(n)]*A011782(n))`
-/

namespace A053539.P11920068023495902629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A011782 n|

end

end A053539.P11920068023495902629

namespace A053539

/-- `abs(record[-A168150(n)]*A011782(n))` -/
def P11920068023495902629.Spec : Prop :=
  ∀ n, P11920068023495902629.a n = A053539 n

end A053539

/-! ## A053539.P3907089574042226785

`abs(record[-A168150(n)]*A131577(n))`
-/

namespace A053539.P3907089574042226785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A131577 n|

end

end A053539.P3907089574042226785

namespace A053539

/-- `abs(record[-A168150(n)]*A131577(n))` -/
def P3907089574042226785.Spec : Prop :=
  ∀ n, P3907089574042226785.a n = A053539 n

end A053539

/-! ## A053539.P2244776631286912608

`A011782(n+1)*A049610(2*n)/2`
-/

namespace A053539.P2244776631286912608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) * A049610 (2 * n) : ℚ) / 2

end

end A053539.P2244776631286912608

namespace A053539

/-- `A011782(n+1)*A049610(2*n)/2` -/
def P2244776631286912608.Spec : Prop :=
  ∀ n, P2244776631286912608.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P12323739150114435174

`A034008(n+1)*A057711(2*n)/2`
-/

namespace A053539.P12323739150114435174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034008 (n + 1) * A057711 (2 * n) : ℚ) / 2

end

end A053539.P12323739150114435174

namespace A053539

/-- `A034008(n+1)*A057711(2*n)/2` -/
def P12323739150114435174.Spec : Prop :=
  ∀ n, P12323739150114435174.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P17312013568572239259

`A011782(2*n)*A097067(n+1)/2`
-/

namespace A053539.P17312013568572239259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n) * A097067 (n + 1) : ℚ) / 2

end

end A053539.P17312013568572239259

namespace A053539

/-- `A011782(2*n)*A097067(n+1)/2` -/
def P17312013568572239259.Spec : Prop :=
  ∀ n, P17312013568572239259.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P12233050638021278169

`A034008(2*n)*A097064(n+1)/2`
-/

namespace A053539.P12233050638021278169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034008 (2 * n) * A097064 (n + 1) : ℚ) / 2

end

end A053539.P12233050638021278169

namespace A053539

/-- `A034008(2*n)*A097064(n+1)/2` -/
def P12233050638021278169.Spec : Prop :=
  ∀ n, P12233050638021278169.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P625866747278711478

`A011782(2*n)*A139756(n+1)/2`
-/

namespace A053539.P625866747278711478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n) * A139756 (n + 1) : ℚ) / 2

end

end A053539.P625866747278711478

namespace A053539

/-- `A011782(2*n)*A139756(n+1)/2` -/
def P625866747278711478.Spec : Prop :=
  ∀ n, P625866747278711478.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P8224992050536079537

`A057711(2*n)*A166444(n+1)/2`
-/

namespace A053539.P8224992050536079537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057711 (2 * n) * A166444 (n + 1) : ℚ) / 2

end

end A053539.P8224992050536079537

namespace A053539

/-- `A057711(2*n)*A166444(n+1)/2` -/
def P8224992050536079537.Spec : Prop :=
  ∀ n, P8224992050536079537.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P12693046239892732707

`A097067(n+1)*A131577(2*n)/2`
-/

namespace A053539.P12693046239892732707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097067 (n + 1) * A131577 (2 * n) : ℚ) / 2

end

end A053539.P12693046239892732707

namespace A053539

/-- `A097067(n+1)*A131577(2*n)/2` -/
def P12693046239892732707.Spec : Prop :=
  ∀ n, P12693046239892732707.a n = (A053539 n : ℚ)

end A053539

/-! ## A053539.P10120378644747120288

`A131577(2*n)*A139756(n+1)/2`
-/

namespace A053539.P10120378644747120288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (2 * n) * A139756 (n + 1) : ℚ) / 2

end

end A053539.P10120378644747120288

namespace A053539

/-- `A131577(2*n)*A139756(n+1)/2` -/
def P10120378644747120288.Spec : Prop :=
  ∀ n, P10120378644747120288.a n = (A053539 n : ℚ)

end A053539

/-!
# A053540: a(n) = n*9^(n-1).

The programs for A053540, the canonical program `A053540.P12933739383401930550` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053540 has offset 1).

The definition of A053540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*9^n` (program `A053540.P12933739383401930550`, by `A053540.P12933739383401930550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053540.P12933739383401930550

`(n+1)*9^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053540

/-- `(n+1)*9^n` -/
def P12933739383401930550.Spec : Prop :=
  ∀ n, (P12933739383401930550.a n : ℤ) = A053540 (n + 1)

theorem P12933739383401930550.correct : P12933739383401930550.Spec := by
  intro n
  simp only [A053540, Nat.add_sub_cancel]

end A053540

/-! ## A053540.P5633829671924574300

`18*a(n-1)-81*a(n-2)` with `a(0)=1, a(1)=18`
-/

namespace A053540.P5633829671924574300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  18 * a (n - 1) - 81 * a (n - 2)

end

end A053540.P5633829671924574300

namespace A053540

/-- `18*a(n-1)-81*a(n-2)` -/
def P5633829671924574300.Spec : Prop :=
  ∀ n, P5633829671924574300.a n = A053540 (n + 1)

theorem P5633829671924574300.correct : P5633829671924574300.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053540, Nat.add_sub_cancel, A053540.P5633829671924574300.a, A053540.P12933739383401930550.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053540, Nat.add_sub_cancel, A053540.P5633829671924574300.a, A053540.P12933739383401930550.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A053540

/-! ## A053540.P8733333246102325636

`A024101(n)+A064747(n)`
-/

namespace A053540.P8733333246102325636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024101 n + A064747 n

end

end A053540.P8733333246102325636

namespace A053540

/-- `A024101(n)+A064747(n)` -/
def P8733333246102325636.Spec : Prop :=
  ∀ n, P8733333246102325636.a n = A053540 (n + 1)

end A053540

/-! ## A053540.P12702829060166351830

`abs(9^n*xor(n, -1))`
-/

namespace A053540.P12702829060166351830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) * Int.xor (n : ℤ) (-1)|

end

end A053540.P12702829060166351830

namespace A053540

/-- `abs(9^n*xor(n, -1))` -/
def P12702829060166351830.Spec : Prop :=
  ∀ n, P12702829060166351830.a n = A053540 (n + 1)

end A053540

/-! ## A053540.P13429841410325686487

`-(9^n*xor(n, -1))`
-/

namespace A053540.P13429841410325686487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((9 ^ n : ℤ) * Int.xor (n : ℤ) (-1))

end

end A053540.P13429841410325686487

namespace A053540

/-- `-(9^n*xor(n, -1))` -/
def P13429841410325686487.Spec : Prop :=
  ∀ n, P13429841410325686487.a n = A053540 (n + 1)

end A053540

/-! ## A053540.P16683424227475463862

`9^n/tan(acot(n+1))`
-/

namespace A053540.P16683424227475463862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A053540.P16683424227475463862

namespace A053540

/-- `9^n/tan(acot(n+1))` -/
def P16683424227475463862.Spec : Prop :=
  ∀ n, P16683424227475463862.a n = (A053540 (n + 1) : ℝ)

end A053540

/-! ## A053540.P227417721258173047

`9^n/cot(atan(n+1))`
-/

namespace A053540.P227417721258173047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A053540.P227417721258173047

namespace A053540

/-- `9^n/cot(atan(n+1))` -/
def P227417721258173047.Spec : Prop :=
  ∀ n, P227417721258173047.a n = (A053540 (n + 1) : ℝ)

end A053540

/-! ## A053540.P8064766487540982073

`∑[A081044(n)]`
-/

namespace A053540.P8064766487540982073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053540.P8064766487540982073

namespace A053540

/-- `∑[A081044(n)]` -/
def P8064766487540982073.Spec : Prop :=
  ∀ n, P8064766487540982073.a n = A053540 (n + 1)

end A053540

/-! ## A053540.P5161748215552525018

`A288834(Δ[n²])/2`
-/

namespace A053540.P5161748215552525018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288834 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A053540.P5161748215552525018

namespace A053540

/-- `A288834(Δ[n²])/2` -/
def P5161748215552525018.Spec : Prop :=
  ∀ n, P5161748215552525018.a n = (A053540 (n + 1) : ℚ)

end A053540

/-! ## A053540.P9713904359966640539

`A027261(2*n+1)/4`
-/

namespace A053540.P9713904359966640539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027261 (2 * n + 1) : ℚ) / 4

end

end A053540.P9713904359966640539

namespace A053540

/-- `A027261(2*n+1)/4` -/
def P9713904359966640539.Spec : Prop :=
  ∀ n, P9713904359966640539.a n = (A053540 (n + 1) : ℚ)

end A053540

/-! ## A053540.P17181151457488367728

`A159715(2*(n+1))/4`
-/

namespace A053540.P17181151457488367728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159715 (2 * (n + 1)) : ℚ) / 4

end

end A053540.P17181151457488367728

namespace A053540

/-- `A159715(2*(n+1))/4` -/
def P17181151457488367728.Spec : Prop :=
  ∀ n, P17181151457488367728.a n = (A053540 (n + 1) : ℚ)

end A053540

/-! ## A053540.P13906341832008818898

`A124810(2*n+3)/3`
-/

namespace A053540.P13906341832008818898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124810 (2 * n + 3) : ℚ) / 3

end

end A053540.P13906341832008818898

namespace A053540

/-- `A124810(2*n+3)/3` -/
def P13906341832008818898.Spec : Prop :=
  ∀ n, P13906341832008818898.a n = (A053540 (n + 1) : ℚ)

end A053540

/-! ## A053540.P4323551197837693137

`floor(A288834(2*n+1)/2)`
-/

namespace A053540.P4323551197837693137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288834 (2 * n + 1) : ℚ) / 2⌋

end

end A053540.P4323551197837693137

namespace A053540

/-- `floor(A288834(2*n+1)/2)` -/
def P4323551197837693137.Spec : Prop :=
  ∀ n, P4323551197837693137.a n = A053540 (n + 1)

end A053540

/-! ## A053540.P2350381273732754537

`A229472(2*n+3)-(n+1)`
-/

namespace A053540.P2350381273732754537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229472 (2 * n + 3) - (n + 1 : ℤ)

end

end A053540.P2350381273732754537

namespace A053540

/-- `A229472(2*n+3)-(n+1)` -/
def P2350381273732754537.Spec : Prop :=
  ∀ n, P2350381273732754537.a n = A053540 (n + 1)

end A053540

/-! ## A053540.P9045257697222812896

`(n+1)*A008776(2*n)/2`
-/

namespace A053540.P9045257697222812896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A008776 (2 * n) : ℚ) / 2

end

end A053540.P9045257697222812896

namespace A053540

/-- `(n+1)*A008776(2*n)/2` -/
def P9045257697222812896.Spec : Prop :=
  ∀ n, P9045257697222812896.a n = (A053540 (n + 1) : ℚ)

end A053540

/-! ## A053540.P2048002582010634612

`lcm(n+1, (n+1)*A001019(n))`
-/

namespace A053540.P2048002582010634612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) * A001019 n)

end

end A053540.P2048002582010634612

namespace A053540

/-- `lcm(n+1, (n+1)*A001019(n))` -/
def P2048002582010634612.Spec : Prop :=
  ∀ n, (P2048002582010634612.a n : ℤ) = A053540 (n + 1)

end A053540

/-! ## A053540.P6442807539780025559

`A158749(n)+A001019(n)`
-/

namespace A053540.P6442807539780025559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158749 n + A001019 n

end

end A053540.P6442807539780025559

namespace A053540

/-- `A158749(n)+A001019(n)` -/
def P6442807539780025559.Spec : Prop :=
  ∀ n, P6442807539780025559.a n = A053540 (n + 1)

end A053540

/-! ## A053540.P3756012167010847143

`A158749(n)+A000244(n)²`
-/

namespace A053540.P3756012167010847143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158749 n + A000244 n ^ 2

end

end A053540.P3756012167010847143

namespace A053540

/-- `A158749(n)+A000244(n)²` -/
def P3756012167010847143.Spec : Prop :=
  ∀ n, P3756012167010847143.a n = A053540 (n + 1)

end A053540

/-! ## A053540.P6875197145245540876

`A158749(n)+A000244(2*n)`
-/

namespace A053540.P6875197145245540876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158749 n + A000244 (2 * n)

end

end A053540.P6875197145245540876

namespace A053540

/-- `A158749(n)+A000244(2*n)` -/
def P6875197145245540876.Spec : Prop :=
  ∀ n, P6875197145245540876.a n = A053540 (n + 1)

end A053540

/-! ## A053540.P11834840012081822428

`A027471(2*(n+1))-A158749(n)`
-/

namespace A053540.P11834840012081822428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (2 * (n + 1)) - A158749 n

end

end A053540.P11834840012081822428

namespace A053540

/-- `A027471(2*(n+1))-A158749(n)` -/
def P11834840012081822428.Spec : Prop :=
  ∀ n, P11834840012081822428.a n = A053540 (n + 1)

end A053540

/-!
# A053541: a(n) = n*10^(n-1).

The programs for A053541, the canonical program `A053541.P11218500027747377237` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053541 has offset 1).

The definition of A053541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*10^n` (program `A053541.P11218500027747377237`, by `A053541.P11218500027747377237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053541.P11218500027747377237

`(n+1)*10^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053541

/-- `(n+1)*10^n` -/
def P11218500027747377237.Spec : Prop :=
  ∀ n, (P11218500027747377237.a n : ℤ) = A053541 (n + 1)

theorem P11218500027747377237.correct : P11218500027747377237.Spec := by
  intro n
  simp only [A053541, Nat.add_sub_cancel]

end A053541

/-! ## A053541.P479828257525802767

`A002283(n)+A064748(n)`
-/

namespace A053541.P479828257525802767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + A064748 n

end

end A053541.P479828257525802767

namespace A053541

/-- `A002283(n)+A064748(n)` -/
def P479828257525802767.Spec : Prop :=
  ∀ n, P479828257525802767.a n = A053541 (n + 1)

end A053541

/-! ## A053541.P2344729797562279262

`20*a(n-1)-100*a(n-2)` with `a(0)=1, a(1)=20`
-/

namespace A053541.P2344729797562279262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  20 * a (n - 1) - 100 * a (n - 2)

end

end A053541.P2344729797562279262

namespace A053541

/-- `20*a(n-1)-100*a(n-2)` -/
def P2344729797562279262.Spec : Prop :=
  ∀ n, P2344729797562279262.a n = A053541 (n + 1)

theorem P2344729797562279262.correct : P2344729797562279262.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053541, Nat.add_sub_cancel, A053541.P2344729797562279262.a, A053541.P11218500027747377237.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053541, Nat.add_sub_cancel, A053541.P2344729797562279262.a, A053541.P11218500027747377237.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A053541

/-! ## A053541.P7165613184515741601

`abs(10^n*xor(n, -1))`
-/

namespace A053541.P7165613184515741601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) * Int.xor (n : ℤ) (-1)|

end

end A053541.P7165613184515741601

namespace A053541

/-- `abs(10^n*xor(n, -1))` -/
def P7165613184515741601.Spec : Prop :=
  ∀ n, P7165613184515741601.a n = A053541 (n + 1)

end A053541

/-! ## A053541.P3904476423431045361

`-(10^n*xor(n, -1))`
-/

namespace A053541.P3904476423431045361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((10 ^ n : ℤ) * Int.xor (n : ℤ) (-1))

end

end A053541.P3904476423431045361

namespace A053541

/-- `-(10^n*xor(n, -1))` -/
def P3904476423431045361.Spec : Prop :=
  ∀ n, P3904476423431045361.a n = A053541 (n + 1)

end A053541

/-! ## A053541.P11457154156784796868

`10^n/tan(acot(n+1))`
-/

namespace A053541.P11457154156784796868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A053541.P11457154156784796868

namespace A053541

/-- `10^n/tan(acot(n+1))` -/
def P11457154156784796868.Spec : Prop :=
  ∀ n, P11457154156784796868.a n = (A053541 (n + 1) : ℝ)

end A053541

/-! ## A053541.P4401740647265130173

`10^n/cot(atan(n+1))`
-/

namespace A053541.P4401740647265130173
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A053541.P4401740647265130173

namespace A053541

/-- `10^n/cot(atan(n+1))` -/
def P4401740647265130173.Spec : Prop :=
  ∀ n, P4401740647265130173.a n = (A053541 (n + 1) : ℝ)

end A053541

/-! ## A053541.P17451971697406912768

`∑[A081045(n)]`
-/

namespace A053541.P17451971697406912768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053541.P17451971697406912768

namespace A053541

/-- `∑[A081045(n)]` -/
def P17451971697406912768.Spec : Prop :=
  ∀ n, P17451971697406912768.a n = A053541 (n + 1)

end A053541

/-! ## A053541.P17881843926862212910

`∑[∑[A255381(n)]]`
-/

namespace A053541.P17881843926862212910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255381 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053541.P17881843926862212910

namespace A053541

/-- `∑[∑[A255381(n)]]` -/
def P17881843926862212910.Spec : Prop :=
  ∀ n, P17881843926862212910.a n = A053541 (n + 1)

end A053541

/-! ## A053541.P9987936015407963565

`∑[abs(Δ[A094797(n)])]`
-/

namespace A053541.P9987936015407963565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094797 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053541.P9987936015407963565

namespace A053541

/-- `∑[abs(Δ[A094797(n)])]` -/
def P9987936015407963565.Spec : Prop :=
  ∀ n, P9987936015407963565.a n = A053541 (n + 1)

end A053541

/-!
# A053542: Distance from n-th composite number (A002808) to next prime.

The programs for A053542, the canonical program `A053542.P1380259865153201069` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053542 has offset 1).

The definition of A053542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053542.P1380259865153201069

`A065890(A073169(n+1))-n`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053542

/-- `A065890(A073169(n+1))-n` -/
def P1380259865153201069.Spec : Prop :=
  ∀ n, P1380259865153201069.a n = A053542 (n + 1)

theorem P1380259865153201069.correct : P1380259865153201069.Spec := by
  intro n
  simp only [A053542, Nat.add_sub_cancel]

end A053542

/-! ## A053542.P1568194006560294052

`A162177(A002808(n+1)-n)-n`
-/

namespace A053542.P1568194006560294052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (A002808 (n + 1) - (n : ℤ)).toNat - (n : ℤ)

end

end A053542.P1568194006560294052

namespace A053542

/-- `A162177(A002808(n+1)-n)-n` -/
def P1568194006560294052.Spec : Prop :=
  ∀ n, P1568194006560294052.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P701723968902382442

`A151800(A072668(n+1))-comp[A351078(n)]`
-/

namespace A053542.P701723968902382442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A072668 (n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A053542.P701723968902382442

namespace A053542

/-- `A151800(A072668(n+1))-comp[A351078(n)]` -/
def P701723968902382442.Spec : Prop :=
  ∀ n, P701723968902382442.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P1304297435298254520

`A000040(A073169(n+1))-A002808(n+1)`
-/

namespace A053542.P1304297435298254520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A073169 (n + 1)).toNat - A002808 (n + 1)

end

end A053542.P1304297435298254520

namespace A053542

/-- `A000040(A073169(n+1))-A002808(n+1)` -/
def P1304297435298254520.Spec : Prop :=
  ∀ n, P1304297435298254520.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P14924650526448774766

`A151800(A018252(n+2))-A018252(n+2)`
-/

namespace A053542.P14924650526448774766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A018252 (n + 2)).toNat - A018252 (n + 2)

end

end A053542.P14924650526448774766

namespace A053542

/-- `A151800(A018252(n+2))-A018252(n+2)` -/
def P14924650526448774766.Spec : Prop :=
  ∀ n, P14924650526448774766.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P10159672598819483538

`A151800(A072668(n+1))-lt[1, A107463(n)]`
-/

namespace A053542.P10159672598819483538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A072668 (n + 1)).toNat - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A053542.P10159672598819483538

namespace A053542

/-- `A151800(A072668(n+1))-lt[1, A107463(n)]` -/
def P10159672598819483538.Spec : Prop :=
  ∀ n, P10159672598819483538.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P7050059375498464542

`A151800(lt[0, A082023(n)])%A018252(n+2)`
-/

namespace A053542.P7050059375498464542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A018252 (n + 2))

end

end A053542.P7050059375498464542

namespace A053542

/-- `A151800(lt[0, A082023(n)])%A018252(n+2)` -/
def P7050059375498464542.Spec : Prop :=
  ∀ n, P7050059375498464542.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P12826227157126102520

`A008578(A002808(n+1)-n)-A002808(n+1)`
-/

namespace A053542.P12826227157126102520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A002808 (n + 1) - (n : ℤ)).toNat - A002808 (n + 1)

end

end A053542.P12826227157126102520

namespace A053542

/-- `A008578(A002808(n+1)-n)-A002808(n+1)` -/
def P12826227157126102520.Spec : Prop :=
  ∀ n, P12826227157126102520.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P3531047269113129641

`A006093(A072668(n+1)-n)-A072668(n+1)`
-/

namespace A053542.P3531047269113129641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A072668 (n + 1) - (n : ℤ)).toNat - A072668 (n + 1)

end

end A053542.P3531047269113129641

namespace A053542

/-- `A006093(A072668(n+1)-n)-A072668(n+1)` -/
def P3531047269113129641.Spec : Prop :=
  ∀ n, P3531047269113129641.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P3405948278203652067

`A182986(A002808(n+1)-n)-A002808(n+1)`
-/

namespace A053542.P3405948278203652067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A002808 (n + 1) - (n : ℤ)).toNat - A002808 (n + 1)

end

end A053542.P3405948278203652067

namespace A053542

/-- `A182986(A002808(n+1)-n)-A002808(n+1)` -/
def P3405948278203652067.Spec : Prop :=
  ∀ n, P3405948278203652067.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P12202961712925288600

`A000040(A018252(n+2)-(n+1))-A018252(n+2)`
-/

namespace A053542.P12202961712925288600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 2) - (n + 1 : ℤ)).toNat - A018252 (n + 2)

end

end A053542.P12202961712925288600

namespace A053542

/-- `A000040(A018252(n+2)-(n+1))-A018252(n+2)` -/
def P12202961712925288600.Spec : Prop :=
  ∀ n, P12202961712925288600.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P2938997389619882774

`A007920(Δ[A053767(n)])`
-/

namespace A053542.P2938997389619882774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (f1 (n + 1) - f1 n).toNat

end

end A053542.P2938997389619882774

namespace A053542

/-- `A007920(Δ[A053767(n)])` -/
def P2938997389619882774.Spec : Prop :=
  ∀ n, P2938997389619882774.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P15849086234117929176

`A007920(A002808(n+1))`
-/

namespace A053542.P15849086234117929176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A002808 (n + 1)).toNat

end

end A053542.P15849086234117929176

namespace A053542

/-- `A007920(A002808(n+1))` -/
def P15849086234117929176.Spec : Prop :=
  ∀ n, P15849086234117929176.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P4521225467605363500

`A007920(A056653(n+1))`
-/

namespace A053542.P4521225467605363500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A056653 (n + 1)).toNat

end

end A053542.P4521225467605363500

namespace A053542

/-- `A007920(A056653(n+1))` -/
def P4521225467605363500.Spec : Prop :=
  ∀ n, P4521225467605363500.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P8745231252344647088

`A007920(A018252(n+2))`
-/

namespace A053542.P8745231252344647088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A018252 (n + 2)).toNat

end

end A053542.P8745231252344647088

namespace A053542

/-- `A007920(A018252(n+2))` -/
def P8745231252344647088.Spec : Prop :=
  ∀ n, P8745231252344647088.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P18024139408982927991

`A007920(lt[0, A082023(n)])`
-/

namespace A053542.P18024139408982927991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053542.P18024139408982927991

namespace A053542

/-- `A007920(lt[0, A082023(n)])` -/
def P18024139408982927991.Spec : Prop :=
  ∀ n, P18024139408982927991.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P6582162245440667142

`A007920(lt[1, A032741(n)])`
-/

namespace A053542.P6582162245440667142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053542.P6582162245440667142

namespace A053542

/-- `A007920(lt[1, A032741(n)])` -/
def P6582162245440667142.Spec : Prop :=
  ∀ n, P6582162245440667142.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P10685782429573352375

`A007920(lt[1, A072491(n)])`
-/

namespace A053542.P10685782429573352375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053542.P10685782429573352375

namespace A053542

/-- `A007920(lt[1, A072491(n)])` -/
def P10685782429573352375.Spec : Prop :=
  ∀ n, P10685782429573352375.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P15637746506175229975

`A007920(lt[1, A078898(n)])`
-/

namespace A053542.P15637746506175229975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053542.P15637746506175229975

namespace A053542

/-- `A007920(lt[1, A078898(n)])` -/
def P15637746506175229975.Spec : Prop :=
  ∀ n, P15637746506175229975.a n = A053542 (n + 1)

end A053542

/-! ## A053542.P14352281931761870962

`A007920(lt[1, A284289(n)])`
-/

namespace A053542.P14352281931761870962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053542.P14352281931761870962

namespace A053542

/-- `A007920(lt[1, A284289(n)])` -/
def P14352281931761870962.Spec : Prop :=
  ∀ n, P14352281931761870962.a n = A053542 (n + 1)

end A053542

/-!
# A053543: Distance to closest prime in sequence of composites.

The programs for A053543, the canonical program `A053543.P1984958881594801594` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053543 has offset 1).

The definition of A053543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053543.P1984958881594801594

`A051699(Δ[A053767(n)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A053543

/-- `A051699(Δ[A053767(n)])` -/
def P1984958881594801594.Spec : Prop :=
  ∀ n, P1984958881594801594.a n = A053543 (n + 1)

theorem P1984958881594801594.correct : P1984958881594801594.Spec := by
  intro n
  simp only [A053543, Nat.add_sub_cancel]

end A053543

/-! ## A053543.P13046972378930145683

`A051700(Δ[A053767(n)])`
-/

namespace A053543.P13046972378930145683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (n + 1) - f1 n).toNat

end

end A053543.P13046972378930145683

namespace A053543

/-- `A051700(Δ[A053767(n)])` -/
def P13046972378930145683.Spec : Prop :=
  ∀ n, P13046972378930145683.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P3444870992908100460

`A051699(comp[A351078(n)])`
-/

namespace A053543.P3444870992908100460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A053543.P3444870992908100460

namespace A053543

/-- `A051699(comp[A351078(n)])` -/
def P3444870992908100460.Spec : Prop :=
  ∀ n, P3444870992908100460.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P15250888533767253427

`A051699(A002808(n+1))`
-/

namespace A053543.P15250888533767253427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A002808 (n + 1)).toNat

end

end A053543.P15250888533767253427

namespace A053543

/-- `A051699(A002808(n+1))` -/
def P15250888533767253427.Spec : Prop :=
  ∀ n, P15250888533767253427.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P67351250691231430

`A051699(A056653(n+1))`
-/

namespace A053543.P67351250691231430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A056653 (n + 1)).toNat

end

end A053543.P67351250691231430

namespace A053543

/-- `A051699(A056653(n+1))` -/
def P67351250691231430.Spec : Prop :=
  ∀ n, P67351250691231430.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P10770459082580387923

`A051699(A018252(n+2))`
-/

namespace A053543.P10770459082580387923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A018252 (n + 2)).toNat

end

end A053543.P10770459082580387923

namespace A053543

/-- `A051699(A018252(n+2))` -/
def P10770459082580387923.Spec : Prop :=
  ∀ n, P10770459082580387923.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P8628210100821531695

`A051700(A065090(n+3))`
-/

namespace A053543.P8628210100821531695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A065090 (n + 3)).toNat

end

end A053543.P8628210100821531695

namespace A053543

/-- `A051700(A065090(n+3))` -/
def P8628210100821531695.Spec : Prop :=
  ∀ n, P8628210100821531695.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P16886732019130798248

`A051699(A141468(n+3))`
-/

namespace A053543.P16886732019130798248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A141468 (n + 3)).toNat

end

end A053543.P16886732019130798248

namespace A053543

/-- `A051699(A141468(n+3))` -/
def P16886732019130798248.Spec : Prop :=
  ∀ n, P16886732019130798248.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P11475729642909034290

`A051699(lt[1, A032741(n)])`
-/

namespace A053543.P11475729642909034290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053543.P11475729642909034290

namespace A053543

/-- `A051699(lt[1, A032741(n)])` -/
def P11475729642909034290.Spec : Prop :=
  ∀ n, P11475729642909034290.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P2113634273383971067

`Δ[A072926(A018252(n+1))]`
-/

namespace A053543.P2113634273383971067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072926 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053543.P2113634273383971067

namespace A053543

/-- `Δ[A072926(A018252(n+1))]` -/
def P2113634273383971067.Spec : Prop :=
  ∀ n, P2113634273383971067.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P7274519820480345346

`A051699(comp[A158611(n+1)])`
-/

namespace A053543.P7274519820480345346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A053543.P7274519820480345346

namespace A053543

/-- `A051699(comp[A158611(n+1)])` -/
def P7274519820480345346.Spec : Prop :=
  ∀ n, P7274519820480345346.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P9157182012773307018

`A051699(lt[1, n*A007920(n)])`
-/

namespace A053543.P9157182012773307018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053543.P9157182012773307018

namespace A053543

/-- `A051699(lt[1, n*A007920(n)])` -/
def P9157182012773307018.Spec : Prop :=
  ∀ n, P9157182012773307018.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P10390838710743052851

`A051699(lt[1, n*A051699(n)])`
-/

namespace A053543.P10390838710743052851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053543.P10390838710743052851

namespace A053543

/-- `A051699(lt[1, n*A051699(n)])` -/
def P10390838710743052851.Spec : Prop :=
  ∀ n, P10390838710743052851.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P5420570435442654957

`A051700(lt[2, A000005(n+1)]+1)`
-/

namespace A053543.P5420570435442654957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A053543.P5420570435442654957

namespace A053543

/-- `A051700(lt[2, A000005(n+1)]+1)` -/
def P5420570435442654957.Spec : Prop :=
  ∀ n, P5420570435442654957.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P8128066741146220491

`A051699(lt[A006530(n+1), n]+1)`
-/

namespace A053543.P8128066741146220491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053543.P8128066741146220491

namespace A053543

/-- `A051699(lt[A006530(n+1), n]+1)` -/
def P8128066741146220491.Spec : Prop :=
  ∀ n, P8128066741146220491.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P12830261040938766601

`A051700(lt[A006530(n+1), n]+1)`
-/

namespace A053543.P12830261040938766601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053543.P12830261040938766601

namespace A053543

/-- `A051700(lt[A006530(n+1), n]+1)` -/
def P12830261040938766601.Spec : Prop :=
  ∀ n, P12830261040938766601.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P10627909303546401419

`A051700(lt[A020639(n+1), n]+1)`
-/

namespace A053543.P10627909303546401419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053543.P10627909303546401419

namespace A053543

/-- `A051700(lt[A020639(n+1), n]+1)` -/
def P10627909303546401419.Spec : Prop :=
  ∀ n, P10627909303546401419.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P14643322682101318706

`A051700(A018252(n+2)%(2*n+3))`
-/

namespace A053543.P14643322682101318706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (Int.tmod (A018252 (n + 2)) (2 * n + 3 : ℤ)).toNat

end

end A053543.P14643322682101318706

namespace A053543

/-- `A051700(A018252(n+2)%(2*n+3))` -/
def P14643322682101318706.Spec : Prop :=
  ∀ n, P14643322682101318706.a n = A053543 (n + 1)

end A053543

/-! ## A053543.P4038461606172637842

`A051699(A053767(n+1)-A053767(n))`
-/

namespace A053543.P4038461606172637842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A053767 (n + 1) - A053767 n).toNat

end

end A053543.P4038461606172637842

namespace A053543

/-- `A051699(A053767(n+1)-A053767(n))` -/
def P4038461606172637842.Spec : Prop :=
  ∀ n, P4038461606172637842.a n = A053543 (n + 1)

theorem P4038461606172637842.correct : P4038461606172637842.Spec := by
  intro n
  simp only [A053543, Nat.add_sub_cancel, A053543.P4038461606172637842.a, A053543.P1984958881594801594.f1, A053543.P1984958881594801594.a, SequenceMachineLib.memo_apply]

end A053543

/-! ## A053543.P8539635616145778483

`A051700(A053767(n+1)-A053767(n))`
-/

namespace A053543.P8539635616145778483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A053767 (n + 1) - A053767 n).toNat

end

end A053543.P8539635616145778483

namespace A053543

/-- `A051700(A053767(n+1)-A053767(n))` -/
def P8539635616145778483.Spec : Prop :=
  ∀ n, P8539635616145778483.a n = A053543 (n + 1)

end A053543

/-!
# A053544: A052999 / 18.

The programs for A053544, there is no canonical definition to state claims against.
-/

/-! ## A053544.P557948241500319171

`A052999(n+1)/18`
-/

namespace A053544.P557948241500319171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052999 (n + 1) : ℚ) / 18

end

end A053544.P557948241500319171

/-! ## A053544.P6426648406230980738

`A106619(A052999(n+1))`
-/

namespace A053544.P6426648406230980738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A052999 (n + 1)).toNat

end

end A053544.P6426648406230980738

/-!
# A053545: Comparisons needed for Batcher's sorting algorithm applied to 2^n items.

The programs for A053545, the canonical program `A053545.P15367347179364352092` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053545 has offset 0).

The definition of A053545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053545.P15367347179364352092

`2^(n-2)*(n²-n+4)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053545

/-- `2^(n-2)*(n²-n+4)-1` -/
def P15367347179364352092.Spec : Prop :=
  ∀ n, P15367347179364352092.a n = (A053545 n : ℚ)

end A053545

/-! ## A053545.P7994822997431231030

`A196508(n)/4`
-/

namespace A053545.P7994822997431231030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196508 n : ℚ) / 4

end

end A053545.P7994822997431231030

namespace A053545

/-- `A196508(n)/4` -/
def P7994822997431231030.Spec : Prop :=
  ∀ n, P7994822997431231030.a n = (A053545 n : ℚ)

end A053545

/-! ## A053545.P14907070757261758590

`abs(2^(n-1)*C(n, 2)+2^n-1)`
-/

namespace A053545.P14907070757261758590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose n 2 : ℚ) + ((2 ^ n : ℤ) - 1 : ℚ)|

end

end A053545.P14907070757261758590

namespace A053545

/-- `abs(2^(n-1)*C(n, 2)+2^n-1)` -/
def P14907070757261758590.Spec : Prop :=
  ∀ n, P14907070757261758590.a n = (A053545 n : ℚ)

end A053545

/-! ## A053545.P5308359763317431325

`floor(2^(n-1)*C(n, 2)+2^n-1)`
-/

namespace A053545.P5308359763317431325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose n 2 : ℚ) + ((2 ^ n : ℤ) - 1 : ℚ)⌋

end

end A053545.P5308359763317431325

namespace A053545

/-- `floor(2^(n-1)*C(n, 2)+2^n-1)` -/
def P5308359763317431325.Spec : Prop :=
  ∀ n, P5308359763317431325.a n = A053545 n

end A053545

/-! ## A053545.P16602664252848540670

`ceil(2^(n-1)*C(n, 2)+2^n-1)`
-/

namespace A053545.P16602664252848540670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose n 2 : ℚ) + ((2 ^ n : ℤ) - 1 : ℚ)⌉

end

end A053545.P16602664252848540670

namespace A053545

/-- `ceil(2^(n-1)*C(n, 2)+2^n-1)` -/
def P16602664252848540670.Spec : Prop :=
  ∀ n, P16602664252848540670.a n = A053545 n

end A053545

/-! ## A053545.P3603923010522827979

`abs(A053730(n)-1)`
-/

namespace A053545.P3603923010522827979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053730 n - 1|

end

end A053545.P3603923010522827979

namespace A053545

/-- `abs(A053730(n)-1)` -/
def P3603923010522827979.Spec : Prop :=
  ∀ n, P3603923010522827979.a n = A053545 n

end A053545

/-! ## A053545.P817987286000553040

`abs(3*n*2^(n-1)+1-A001793(n+1))`
-/

namespace A053545.P817987286000553040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |3 * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1 - (A001793 (n + 1) : ℚ)|

end

end A053545.P817987286000553040

namespace A053545

/-- `abs(3*n*2^(n-1)+1-A001793(n+1))` -/
def P817987286000553040.Spec : Prop :=
  ∀ n, P817987286000553040.a n = (A053545 n : ℚ)

end A053545

/-! ## A053545.P6454439951939809714

`∑[A072863(n)-A045623(n)]`
-/

namespace A053545.P6454439951939809714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n - A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053545.P6454439951939809714

namespace A053545

/-- `∑[A072863(n)-A045623(n)]` -/
def P6454439951939809714.Spec : Prop :=
  ∀ n, P6454439951939809714.a n = A053545 n

end A053545

/-! ## A053545.P3977137530105337958

`A356888(n+1)%A048506(n)`
-/

namespace A053545.P3977137530105337958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356888 (n + 1)) (A048506 n)

end

end A053545.P3977137530105337958

namespace A053545

/-- `A356888(n+1)%A048506(n)` -/
def P3977137530105337958.Spec : Prop :=
  ∀ n, P3977137530105337958.a n = A053545 n

end A053545

/-! ## A053545.P2953244064567060246

`(A000225(n)+∑[A001788(n)])/2`
-/

namespace A053545.P2953244064567060246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000225 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A053545.P2953244064567060246

namespace A053545

/-- `(A000225(n)+∑[A001788(n)])/2` -/
def P2953244064567060246.Spec : Prop :=
  ∀ n, P2953244064567060246.a n = (A053545 n : ℚ)

end A053545

/-! ## A053545.P18169993322093604268

`∑[A007466(n+1)]%A007466(n+1)`
-/

namespace A053545.P18169993322093604268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A007466 (n + 1))

end

end A053545.P18169993322093604268

namespace A053545

/-- `∑[A007466(n+1)]%A007466(n+1)` -/
def P18169993322093604268.Spec : Prop :=
  ∀ n, P18169993322093604268.a n = A053545 n

end A053545

/-! ## A053545.P17370858326865777963

`∑[(∑[n]+1)*A155559(n)]/4`
-/

namespace A053545.P17370858326865777963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) * A155559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A053545.P17370858326865777963

namespace A053545

/-- `∑[(∑[n]+1)*A155559(n)]/4` -/
def P17370858326865777963.Spec : Prop :=
  ∀ n, P17370858326865777963.a n = (A053545 n : ℚ)

end A053545

/-! ## A053545.P11401907935890223600

`floor((∑[(A000217(n)+1)*2^n]+1)/4)`
-/

namespace A053545.P11401907935890223600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 4⌋

end

end A053545.P11401907935890223600

namespace A053545

/-- `floor((∑[(A000217(n)+1)*2^n]+1)/4)` -/
def P11401907935890223600.Spec : Prop :=
  ∀ n, P11401907935890223600.a n = A053545 n

end A053545

/-!
# A053548: Number of ternary Lyndon words of length n with trace 0 and subtrace 0 over GF(3).

The programs for A053548, there is no canonical definition to state claims against.
-/

/-! ## A053548.P12003274868132500900

`A046209(n+1)-(A053561(n+1)+A053560(n+1))`
-/

namespace A053548.P12003274868132500900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046209 (n + 1) - (A053561 (n + 1) + A053560 (n + 1))

end

end A053548.P12003274868132500900

/-!
# A053549: Number of labeled rooted connected graphs.

The programs for A053549, there is no canonical definition to state claims against.
-/

/-! ## A053549.P627759630160059670

`n*A001187(n)`
-/

namespace A053549.P627759630160059670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001187 n

end

end A053549.P627759630160059670

/-! ## A053549.P16721207522087543336

`lcm(n, A177777(A028310(n)))`
-/

namespace A053549.P16721207522087543336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A177777 (A028310 n).toNat)

end

end A053549.P16721207522087543336

/-! ## A053549.P11388795765907852914

`n*A223894(A028310(∑[n]))`
-/

namespace A053549.P11388795765907852914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A223894 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A053549.P11388795765907852914

/-! ## A053549.P11269235309665958741

`n*A143543(A152947(n+1))`
-/

namespace A053549.P11269235309665958741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A143543 (A152947 (n + 1)).toNat

end

end A053549.P11269235309665958741

/-! ## A053549.P2285051114945875461

`n*A223894(A179865(n+1))`
-/

namespace A053549.P2285051114945875461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A223894 (A179865 (n + 1)).toNat

end

end A053549.P2285051114945875461

/-!
# A053552: E.g.f. is obtained by reversion of e.g.f. for A053549.

The programs for A053552, there is no canonical definition to state claims against.
-/

/-! ## A053552.P16627380872923519150

`A029635(A106162(n))*A106193(n)`
-/

namespace A053552.P16627380872923519150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A106162 n).toNat * A106193 n

end

end A053552.P16627380872923519150

/-!
# A053553: Extreme points of set of n X n symmetric substochastic matrices.

The programs for A053553, there is no canonical definition to state claims against.
-/

/-! ## A053553.P3065119194790905120

`floor(sqrt(A263082(∑[n^n])))`
-/

namespace A053553.P3065119194790905120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A263082 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A053553.P3065119194790905120

/-! ## A053553.P7001101571300974621

`∑[A198456(a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A053553.P7001101571300974621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A198456 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053553.P7001101571300974621

/-!
# A053556: Denominator of Sum_{k=0..n} (-1)^k/k!.

The programs for A053556, there is no canonical definition to state claims against.
-/

/-! ## A053556.P1051902926892661873

`A103816(n)+A053557(n)`
-/

namespace A053556.P1051902926892661873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103816 n + A053557 n

end

end A053556.P1051902926892661873

/-! ## A053556.P11242284679124681630

`A053557(n)-A057428(n)*A103816(n)`
-/

namespace A053556.P11242284679124681630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053557 n - A057428 n * A103816 n

end

end A053556.P11242284679124681630

/-! ## A053556.P639688206621162136

`n!/gcd(A001120(n), A133942(n))`
-/

namespace A053556.P639688206621162136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (A001120 n) (A133942 n) : ℚ)

end

end A053556.P639688206621162136

/-! ## A053556.P1753892853749213937

`A000142(n)/gcd(A000142(n), A000166(n))`
-/

namespace A053556.P1753892853749213937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A000166 n) : ℚ)

end

end A053556.P1753892853749213937

/-! ## A053556.P7850974931605290138

`A000142(n)/gcd(A002467(n), A182386(n))`
-/

namespace A053556.P7850974931605290138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A002467 n) (A182386 n) : ℚ)

end

end A053556.P7850974931605290138

/-! ## A053556.P11078069439138073393

`A000142(n)/gcd(A001563(n), A110149(n))`
-/

namespace A053556.P11078069439138073393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A001563 n) (A110149 n) : ℚ)

end

end A053556.P11078069439138073393

/-!
# A053557: Numerator of Sum_{k=0..n} (-1)^k/k!.

The programs for A053557, there is no canonical definition to state claims against.
-/

/-! ## A053557.P1575735098489399171

`A053556(n)-A103816(n)`
-/

namespace A053557.P1575735098489399171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053556 n - A103816 n

end

end A053557.P1575735098489399171

/-! ## A053557.P17014597990988685165

`A000166(n)/gcd(A000166(n), A002467(n))`
-/

namespace A053557.P17014597990988685165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 n : ℚ) / (Int.gcd (A000166 n) (A002467 n) : ℚ)

end

end A053557.P17014597990988685165

/-! ## A053557.P11953081900959871052

`A000166(n)/A000142(n)*A053556(n)`
-/

namespace A053557.P11953081900959871052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 n : ℚ) / (A000142 n : ℚ) * (A053556 n : ℚ)

end

end A053557.P11953081900959871052

/-! ## A053557.P16715858128964964560

`A053556(n)/A133942(n)*A182386(n)`
-/

namespace A053557.P16715858128964964560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053556 n : ℚ) / (A133942 n : ℚ) * (A182386 n : ℚ)

end

end A053557.P16715858128964964560

/-! ## A053557.P12208199076913976037

`A000166(n)/gcd(A000142(n), A001120(n))`
-/

namespace A053557.P12208199076913976037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 n : ℚ) / (Int.gcd (A000142 n) (A001120 n) : ℚ)

end

end A053557.P12208199076913976037

/-! ## A053557.P1906728555547594230

`A000166(n)/gcd(A052849(n), A110043(n))`
-/

namespace A053557.P1906728555547594230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 n : ℚ) / (Int.gcd (A052849 n) (A110043 n) : ℚ)

end

end A053557.P1906728555547594230

/-! ## A053557.P10076230087887841517

`A000166(n)/gcd(A098558(n), A182386(n))`
-/

namespace A053557.P10076230087887841517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 n : ℚ) / (Int.gcd (A098558 n) (A182386 n) : ℚ)

end

end A053557.P10076230087887841517

/-!
# A053558: 

The programs for A053558, there is no canonical definition to state claims against.
-/

/-! ## A053558.P2806055412562587153

`A111875(A109166(n+1))`
-/

namespace A053558.P2806055412562587153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111875 (A109166 (n + 1)).toNat

end

end A053558.P2806055412562587153

/-!
# A053560: Number of ternary Lyndon words of length n with trace 0 and subtrace 1 over GF(3).

The programs for A053560, there is no canonical definition to state claims against.
-/

/-! ## A053560.P2553549463760632984

`A046209(n+1)-(A053561(n+1)+A053548(n+1))`
-/

namespace A053560.P2553549463760632984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046209 (n + 1) - (A053561 (n + 1) + A053548 (n + 1))

end

end A053560.P2553549463760632984

/-!
# A053561: Number of ternary Lyndon words of length n with trace 0 and subtrace 2 over GF(3).

The programs for A053561, there is no canonical definition to state claims against.
-/

/-! ## A053561.P7232112711971691020

`A046209(n+1)-(A053560(n+1)+A053548(n+1))`
-/

namespace A053561.P7232112711971691020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046209 (n + 1) - (A053560 (n + 1) + A053548 (n + 1))

end

end A053561.P7232112711971691020

/-! ## A053561.P15762570260567484537

`floor(A073949(n+1)%A229926(3*(n+1))/(n+1))`
-/

namespace A053561.P15762570260567484537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A073949 (n + 1)) (A229926 (3 * (n + 1))) : ℚ) / (n + 1 : ℚ)⌋

end

end A053561.P15762570260567484537

/-!
# A053562: Number of ternary Lyndon words of length n with trace 1 and subtrace 0 over GF(3). Same as the number of ternary Lyndon words of length n with trace 2 and subtrace 0 over GF(3).

The programs for A053562, there is no canonical definition to state claims against.
-/

/-! ## A053562.P10802013228986836793

`A046211(n+1)-(A053564(n+1)+A053563(n+1))`
-/

namespace A053562.P10802013228986836793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046211 (n + 1) - (A053564 (n + 1) + A053563 (n + 1))

end

end A053562.P10802013228986836793

/-! ## A053562.P10328335894228437508

`A046155(or(n+1, A350906(n)))`
-/

namespace A053562.P10328335894228437508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.lor (n + 1 : ℤ) (A350906 n)).toNat

end

end A053562.P10328335894228437508

/-! ## A053562.P7920105347230377751

`A046155(A350906(n)+A321324(n))`
-/

namespace A053562.P7920105347230377751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A350906 n + A321324 n).toNat

end

end A053562.P7920105347230377751

/-! ## A053562.P1011870808229160838

`A046155(A350906(n)+A046155(n)²)`
-/

namespace A053562.P1011870808229160838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A350906 n + A046155 n ^ 2).toNat

end

end A053562.P1011870808229160838

/-! ## A053562.P9276149340172412746

`A046155(A350906(n)+A329633(n+1))`
-/

namespace A053562.P9276149340172412746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A350906 n + A329633 (n + 1)).toNat

end

end A053562.P9276149340172412746

/-!
# A053563: Number of ternary Lyndon words of length n with trace 1 and subtrace 1 over GF(3). Same as the number of ternary Lyndon words of length n with trace 2 and subtrace 1 over GF(3).

The programs for A053563, there is no canonical definition to state claims against.
-/

/-! ## A053563.P11265881401006477293

`A046211(n+1)-(A053564(n+1)+A053562(n+1))`
-/

namespace A053563.P11265881401006477293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046211 (n + 1) - (A053564 (n + 1) + A053562 (n + 1))

end

end A053563.P11265881401006477293

/-!
# A053564: Number of ternary Lyndon words of length n with trace 1 and subtrace 2 over GF(3). Same as the number of ternary Lyndon words of length n with trace 2 and subtrace 2 over GF(3).

The programs for A053564, there is no canonical definition to state claims against.
-/

/-! ## A053564.P18319331439177514445

`A046211(n+1)-(A053563(n+1)+A053562(n+1))`
-/

namespace A053564.P18319331439177514445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046211 (n + 1) - (A053563 (n + 1) + A053562 (n + 1))

end

end A053564.P18319331439177514445

/-! ## A053564.P11459634848226741212

`A165190(2*(A132335(n)-A065220(n)))`
-/

namespace A053564.P11459634848226741212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (2 * (A132335 n - A065220 n)).toNat

end

end A053564.P11459634848226741212

/-!
# A053565: a(n) = 2^(n-1)*(3*n-4).

The programs for A053565, the canonical program `A053565.P12410230277436198160` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053565 has offset 0).

The definition of A053565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053565.P5702844830243339766

`2^(n-1)*(3*n-4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053565.P5702844830243339766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 * n : ℤ) - 4 : ℚ)

end

end A053565.P5702844830243339766

namespace A053565

/-- `2^(n-1)*(3*n-4)` -/
def P5702844830243339766.Spec : Prop :=
  ∀ n, P5702844830243339766.a n = (A053565 n : ℚ)

end A053565

/-! ## A053565.P12410230277436198160

`4*a(n-1)-4*a(n-2)` with `a(0)=-2, a(1)=-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053565

/-- `4*a(n-1)-4*a(n-2)` -/
def P12410230277436198160.Spec : Prop :=
  ∀ n, P12410230277436198160.a n = A053565 n

theorem P12410230277436198160.correct : P12410230277436198160.Spec := by
  intro n
  simp only [A053565]

end A053565

/-! ## A053565.P14069103564727594990

`ogf((-2+7x)/(1-4x+4x^2))`
-/

namespace A053565.P14069103564727594990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 7] [1, -4, 4] n

end

end A053565.P14069103564727594990

namespace A053565

/-- `ogf((-2+7x)/(1-4x+4x^2))` -/
def P14069103564727594990.Spec : Prop :=
  ∀ n, P14069103564727594990.a n = A053565 n

end A053565

/-! ## A053565.P10878325238897494083

`(a(n-1)-a(n-2))/(1/2)²` with `a(0)=-2, a(1)=-1`
-/

namespace A053565.P10878325238897494083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-2, -1] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A053565.P10878325238897494083

namespace A053565

/-- `(a(n-1)-a(n-2))/(1/2)²` -/
def P10878325238897494083.Spec : Prop :=
  ∀ n, P10878325238897494083.a n = (A053565 n : ℚ)

end A053565

/-! ## A053565.P17840014966904014279

`A048496(n)-3`
-/

namespace A053565.P17840014966904014279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048496 n - 3

end

end A053565.P17840014966904014279

namespace A053565

/-- `A048496(n)-3` -/
def P17840014966904014279.Spec : Prop :=
  ∀ n, P17840014966904014279.a n = A053565 n

end A053565

/-! ## A053565.P5427394175048531959

`A066373(n+2)-2^(n+2)`
-/

namespace A053565.P5427394175048531959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066373 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A053565.P5427394175048531959

namespace A053565

/-- `A066373(n+2)-2^(n+2)` -/
def P5427394175048531959.Spec : Prop :=
  ∀ n, P5427394175048531959.a n = A053565 n

end A053565

/-! ## A053565.P5717296381886266365

`A084860(n+2)-2^(n+3)`
-/

namespace A053565.P5717296381886266365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084860 (n + 2) - (2 ^ (n + 3) : ℤ)

end

end A053565.P5717296381886266365

namespace A053565

/-- `A084860(n+2)-2^(n+3)` -/
def P5717296381886266365.Spec : Prop :=
  ∀ n, P5717296381886266365.a n = A053565 n

end A053565

/-! ## A053565.P18169394088622378343

`A048474(n)-A048578(n)`
-/

namespace A053565.P18169394088622378343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048474 n - A048578 n

end

end A053565.P18169394088622378343

namespace A053565

/-- `A048474(n)-A048578(n)` -/
def P18169394088622378343.Spec : Prop :=
  ∀ n, P18169394088622378343.a n = A053565 n

end A053565

/-! ## A053565.P10116268912165628356

`A036542(n)-A132753(n)`
-/

namespace A053565.P10116268912165628356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036542 n - A132753 n

end

end A053565.P10116268912165628356

namespace A053565

/-- `A036542(n)-A132753(n)` -/
def P10116268912165628356.Spec : Prop :=
  ∀ n, P10116268912165628356.a n = A053565 n

end A053565

/-! ## A053565.P13154385183317319440

`A167667(n)-A198633(n)`
-/

namespace A053565.P13154385183317319440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167667 n - A198633 n

end

end A053565.P13154385183317319440

namespace A053565

/-- `A167667(n)-A198633(n)` -/
def P13154385183317319440.Spec : Prop :=
  ∀ n, P13154385183317319440.a n = A053565 n

end A053565

/-! ## A053565.P10379537664242034684

`A048474(n)-A000051(n+1)`
-/

namespace A053565.P10379537664242034684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048474 n - A000051 (n + 1)

end

end A053565.P10379537664242034684

namespace A053565

/-- `A048474(n)-A000051(n+1)` -/
def P10379537664242034684.Spec : Prop :=
  ∀ n, P10379537664242034684.a n = A053565 n

end A053565

/-! ## A053565.P6440711210056617231

`A053220(n+1)-A007283(n)`
-/

namespace A053565.P6440711210056617231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1) - A007283 n

end

end A053565.P6440711210056617231

namespace A053565

/-- `A053220(n+1)-A007283(n)` -/
def P6440711210056617231.Spec : Prop :=
  ∀ n, P6440711210056617231.a n = A053565 n

end A053565

/-! ## A053565.P17506712788546430835

`A036289(n)-A172160(n+1)`
-/

namespace A053565.P17506712788546430835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n - A172160 (n + 1)

end

end A053565.P17506712788546430835

namespace A053565

/-- `A036289(n)-A172160(n+1)` -/
def P17506712788546430835.Spec : Prop :=
  ∀ n, P17506712788546430835.a n = A053565 n

end A053565

/-! ## A053565.P12750639165429409302

`A001792(n)-A172160(n+2)`
-/

namespace A053565.P12750639165429409302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A172160 (n + 2)

end

end A053565.P12750639165429409302

namespace A053565

/-- `A001792(n)-A172160(n+2)` -/
def P12750639165429409302.Spec : Prop :=
  ∀ n, P12750639165429409302.a n = A053565 n

end A053565

/-! ## A053565.P1982187859380634781

`A048474(n)-(A126646(n)+2)`
-/

namespace A053565.P1982187859380634781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048474 n - (A126646 n + 2)

end

end A053565.P1982187859380634781

namespace A053565

/-- `A048474(n)-(A126646(n)+2)` -/
def P1982187859380634781.Spec : Prop :=
  ∀ n, P1982187859380634781.a n = A053565 n

end A053565

/-! ## A053565.P3427627759681295659

`A053220(n+1)-A003945(n+1)`
-/

namespace A053565.P3427627759681295659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1) - A003945 (n + 1)

end

end A053565.P3427627759681295659

namespace A053565

/-- `A053220(n+1)-A003945(n+1)` -/
def P3427627759681295659.Spec : Prop :=
  ∀ n, P3427627759681295659.a n = A053565 n

end A053565

/-! ## A053565.P16410552468163875474

`A053220(n+1)-(A033484(n)+2)`
-/

namespace A053565.P16410552468163875474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1) - (A033484 n + 2)

end

end A053565.P16410552468163875474

namespace A053565

/-- `A053220(n+1)-(A033484(n)+2)` -/
def P16410552468163875474.Spec : Prop :=
  ∀ n, P16410552468163875474.a n = A053565 n

end A053565

/-! ## A053565.P205789436363933074

`A339252(n+1)-A003945(n+2)`
-/

namespace A053565.P205789436363933074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 (n + 1) - A003945 (n + 2)

end

end A053565.P205789436363933074

namespace A053565

/-- `A339252(n+1)-A003945(n+2)` -/
def P205789436363933074.Spec : Prop :=
  ∀ n, P205789436363933074.a n = A053565 n

end A053565

/-! ## A053565.P17968725134947757275

`A053220(n+1)-3*A000079(n)`
-/

namespace A053565.P17968725134947757275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1) - 3 * A000079 n

end

end A053565.P17968725134947757275

namespace A053565

/-- `A053220(n+1)-3*A000079(n)` -/
def P17968725134947757275.Spec : Prop :=
  ∀ n, P17968725134947757275.a n = A053565 n

end A053565

/-! ## A053565.P7456408923507359044

`A001787(n)+(n-2)*A000079(n)`
-/

namespace A053565.P7456408923507359044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + ((n : ℤ) - 2) * A000079 n

end

end A053565.P7456408923507359044

namespace A053565

/-- `A001787(n)+(n-2)*A000079(n)` -/
def P7456408923507359044.Spec : Prop :=
  ∀ n, P7456408923507359044.a n = A053565 n

end A053565

/-!
# A053566: Expansion of (11*x-2)/(1-3*x)^2.

The programs for A053566, the canonical program `A053566.P18074975381820001089` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053566 has offset 0).

The definition of A053566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-2+11x)/(1-6x+9x^2))` (program `A053566.P18074975381820001089`, by `A053566.P18074975381820001089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053566.P18074975381820001089

`ogf((-2+11x)/(1-6x+9x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053566

/-- `ogf((-2+11x)/(1-6x+9x^2))` -/
def P18074975381820001089.Spec : Prop :=
  ∀ n, P18074975381820001089.a n = A053566 n

theorem P18074975381820001089.correct : P18074975381820001089.Spec := by
  intro n
  simp only [A053566]

end A053566

/-! ## A053566.P17488217547352328610

`3^(n-1)*(5*n-6)`
-/

namespace A053566.P17488217547352328610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((5 * n : ℤ) - 6 : ℚ)

end

end A053566.P17488217547352328610

namespace A053566

/-- `3^(n-1)*(5*n-6)` -/
def P17488217547352328610.Spec : Prop :=
  ∀ n, P17488217547352328610.a n = (A053566 n : ℚ)

end A053566

/-! ## A053566.P18086591831653372296

`6*a(n-1)-9*a(n-2)` with `a(0)=-2, a(1)=-1`
-/

namespace A053566.P18086591831653372296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, -1] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A053566.P18086591831653372296

namespace A053566

/-- `6*a(n-1)-9*a(n-2)` -/
def P18086591831653372296.Spec : Prop :=
  ∀ n, P18086591831653372296.a n = A053566 n

end A053566

/-! ## A053566.P9495894621242567601

`5*A027471(n+1)-A008776(n)`
-/

namespace A053566.P9495894621242567601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A027471 (n + 1) - A008776 n

end

end A053566.P9495894621242567601

namespace A053566

/-- `5*A027471(n+1)-A008776(n)` -/
def P9495894621242567601.Spec : Prop :=
  ∀ n, P9495894621242567601.a n = A053566 n

end A053566

/-! ## A053566.P14316198427242497978

`n*A083658(2*n+1)-A038754(2*n+1)`
-/

namespace A053566.P14316198427242497978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A083658 (2 * n + 1) - A038754 (2 * n + 1)

end

end A053566.P14316198427242497978

namespace A053566

/-- `n*A083658(2*n+1)-A038754(2*n+1)` -/
def P14316198427242497978.Spec : Prop :=
  ∀ n, P14316198427242497978.a n = A053566 n

end A053566

/-! ## A053566.P835309222846637849

`A036290(n)+A081038(n)-A000244(n+1)`
-/

namespace A053566.P835309222846637849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n + (A081038 n - A000244 (n + 1))

end

end A053566.P835309222846637849

namespace A053566

/-- `A036290(n)+A081038(n)-A000244(n+1)` -/
def P835309222846637849.Spec : Prop :=
  ∀ n, P835309222846637849.a n = A053566 n

end A053566

/-! ## A053566.P16928716652458709790

`9*A027471(n+1)-2*A081038(n)`
-/

namespace A053566.P16928716652458709790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A027471 (n + 1) - 2 * A081038 n

end

end A053566.P16928716652458709790

namespace A053566

/-- `9*A027471(n+1)-2*A081038(n)` -/
def P16928716652458709790.Spec : Prop :=
  ∀ n, P16928716652458709790.a n = A053566 n

end A053566

/-! ## A053566.P9907335854017890904

`A036290(n+1)-(A006234(n+3)+A006234(n+4))`
-/

namespace A053566.P9907335854017890904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (n + 1) - (A006234 (n + 3) + A006234 (n + 4))

end

end A053566.P9907335854017890904

namespace A053566

/-- `A036290(n+1)-(A006234(n+3)+A006234(n+4))` -/
def P9907335854017890904.Spec : Prop :=
  ∀ n, P9907335854017890904.a n = A053566 n

end A053566

/-!
# A053567: Stirling numbers of first kind, s(n+5, n).

The programs for A053567, the canonical program `A053567.P17055788566024609301` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053567 has offset 1).

The definition of A053567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053567.P17055788566024609301

`(-1)^(n+1)*C(n+6, 6)*C(n+6, 2)*(3*(n+1)²+23*(n+1)+38)/8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053567

/-- `(-1)^(n+1)*C(n+6, 6)*C(n+6, 2)*(3*(n+1)²+23*(n+1)+38)/8` -/
def P17055788566024609301.Spec : Prop :=
  ∀ n, P17055788566024609301.a n = (A053567 (n + 1) : ℚ)

end A053567

/-! ## A053567.P13627184791109252665

`A008276(A167499(n+4)+1)*A033999(n)`
-/

namespace A053567.P13627184791109252665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A167499 (n + 4) + 1).toNat * A033999 n

end

end A053567.P13627184791109252665

namespace A053567

/-- `A008276(A167499(n+4)+1)*A033999(n)` -/
def P13627184791109252665.Spec : Prop :=
  ∀ n, P13627184791109252665.a n = A053567 (n + 1)

end A053567

/-! ## A053567.P6447384841635010224

`A008276(A167487(n+4)-1)/A033999(n)`
-/

namespace A053567.P6447384841635010224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008276 (A167487 (n + 4) - 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A053567.P6447384841635010224

namespace A053567

/-- `A008276(A167487(n+4)-1)/A033999(n)` -/
def P6447384841635010224.Spec : Prop :=
  ∀ n, P6447384841635010224.a n = (A053567 (n + 1) : ℚ)

end A053567

/-! ## A053567.P15117305174649704188

`A008276(A167614(n+4)+3)/A033999(n)`
-/

namespace A053567.P15117305174649704188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008276 (A167614 (n + 4) + 3).toNat : ℚ) / (A033999 n : ℚ)

end

end A053567.P15117305174649704188

namespace A053567

/-- `A008276(A167614(n+4)+3)/A033999(n)` -/
def P15117305174649704188.Spec : Prop :=
  ∀ n, P15117305174649704188.a n = (A053567 (n + 1) : ℚ)

end A053567

/-! ## A053567.P11017385539896693137

`A008276(A000124(n+5)+5)*A033999(n)`
-/

namespace A053567.P11017385539896693137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A000124 (n + 5) + 5).toNat * A033999 n

end

end A053567.P11017385539896693137

namespace A053567

/-- `A008276(A000124(n+5)+5)*A033999(n)` -/
def P11017385539896693137.Spec : Prop :=
  ∀ n, P11017385539896693137.a n = A053567 (n + 1)

end A053567

/-! ## A053567.P9339526217166759284

`A033999(n)*A048994(A055999(n+4))`
-/

namespace A053567.P9339526217166759284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A048994 (A055999 (n + 4)).toNat

end

end A053567.P9339526217166759284

namespace A053567

/-- `A033999(n)*A048994(A055999(n+4))` -/
def P9339526217166759284.Spec : Prop :=
  ∀ n, P9339526217166759284.a n = A053567 (n + 1)

end A053567

/-! ## A053567.P6566219469507028462

`A033999(n)*A048994(A027379(n+5)-3)`
-/

namespace A053567.P6566219469507028462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A048994 (A027379 (n + 5) - 3).toNat

end

end A053567.P6566219469507028462

namespace A053567

/-- `A033999(n)*A048994(A027379(n+5)-3)` -/
def P6566219469507028462.Spec : Prop :=
  ∀ n, P6566219469507028462.a n = A053567 (n + 1)

end A053567

/-!
# A053568: Totients of nontotient numbers.

The programs for A053568, the canonical program `A053568.P694929640187653470` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053568 has offset 1).

The definition of A053568 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053568.P694929640187653470

`A000010(A007617(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A053568

/-- `A000010(A007617(n+1))` -/
def P694929640187653470.Spec : Prop :=
  ∀ n, P694929640187653470.a n = A053568 (n + 1)

theorem P694929640187653470.correct : P694929640187653470.Spec := by
  intro n
  simp only [A053568, Nat.add_sub_cancel]

end A053568

/-! ## A053568.P2254626895999893553

`A000010(eq[0, A323169(n+1)]+1)`
-/

namespace A053568.P2254626895999893553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053568.P2254626895999893553

namespace A053568

/-- `A000010(eq[0, A323169(n+1)]+1)` -/
def P2254626895999893553.Spec : Prop :=
  ∀ n, P2254626895999893553.a n = A053568 (n + 1)

end A053568

/-! ## A053568.P9532056748660571310

`A000010(lt[A323169(n+1), 1]+1)`
-/

namespace A053568.P9532056748660571310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053568.P9532056748660571310

namespace A053568

/-- `A000010(lt[A323169(n+1), 1]+1)` -/
def P9532056748660571310.Spec : Prop :=
  ∀ n, P9532056748660571310.a n = A053568 (n + 1)

end A053568

/-! ## A053568.P8644967219480474091

`A000010(comp[A000010(n+1)-1]+1)`
-/

namespace A053568.P8644967219480474091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A053568.P8644967219480474091

namespace A053568

/-- `A000010(comp[A000010(n+1)-1]+1)` -/
def P8644967219480474091.Spec : Prop :=
  ∀ n, P8644967219480474091.a n = A053568 (n + 1)

end A053568

/-! ## A053568.P7796835468445760820

`A000010(comp[A000010(n+1)%(n+1)])`
-/

namespace A053568.P7796835468445760820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A053568.P7796835468445760820

namespace A053568

/-- `A000010(comp[A000010(n+1)%(n+1)])` -/
def P7796835468445760820.Spec : Prop :=
  ∀ n, P7796835468445760820.a n = A053568 (n + 1)

end A053568

/-! ## A053568.P12296335745973160175

`A000010(lt[A049283(n+1), 1]+1)`
-/

namespace A053568.P12296335745973160175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053568.P12296335745973160175

namespace A053568

/-- `A000010(lt[A049283(n+1), 1]+1)` -/
def P12296335745973160175.Spec : Prop :=
  ∀ n, P12296335745973160175.a n = A053568 (n + 1)

end A053568

/-! ## A053568.P9397668296784596562

`A039649(lt[A319048(n+1), n+1]+1)-1`
-/

namespace A053568.P9397668296784596562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 1

end

end A053568.P9397668296784596562

namespace A053568

/-- `A039649(lt[A319048(n+1), n+1]+1)-1` -/
def P9397668296784596562.Spec : Prop :=
  ∀ n, P9397668296784596562.a n = A053568 (n + 1)

end A053568

/-! ## A053568.P13163621764035853404

`A225530(A007617(n+1))%A022887(n+1)`
-/

namespace A053568.P13163621764035853404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225530 (A007617 (n + 1)).toNat) (A022887 (n + 1))

end

end A053568.P13163621764035853404

namespace A053568

/-- `A225530(A007617(n+1))%A022887(n+1)` -/
def P13163621764035853404.Spec : Prop :=
  ∀ n, P13163621764035853404.a n = A053568 (n + 1)

end A053568

/-! ## A053568.P3191160034328526500

`A225530(A007617(n+1)%A024900(n+2))`
-/

namespace A053568.P3191160034328526500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (Int.tmod (A007617 (n + 1)) (A024900 (n + 2))).toNat

end

end A053568.P3191160034328526500

namespace A053568

/-- `A225530(A007617(n+1)%A024900(n+2))` -/
def P3191160034328526500.Spec : Prop :=
  ∀ n, P3191160034328526500.a n = A053568 (n + 1)

end A053568

/-! ## A053568.P16759277631053252633

`lcm(A000034(2*n+1), A225530(A007617(n+1)))`
-/

namespace A053568.P16759277631053252633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (2 * n + 1)) (A225530 (A007617 (n + 1)).toNat)

end

end A053568.P16759277631053252633

namespace A053568

/-- `lcm(A000034(2*n+1), A225530(A007617(n+1)))` -/
def P16759277631053252633.Spec : Prop :=
  ∀ n, (P16759277631053252633.a n : ℤ) = A053568 (n + 1)

end A053568

/-! ## A053568.P556082354635684697

`A225530(lcm(2, A007617(n+1)))`
-/

namespace A053568.P556082354635684697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (Int.lcm 2 (A007617 (n + 1)))

end

end A053568.P556082354635684697

namespace A053568

/-- `A225530(lcm(2, A007617(n+1)))` -/
def P556082354635684697.Spec : Prop :=
  ∀ n, P556082354635684697.a n = A053568 (n + 1)

end A053568

/-! ## A053568.P14203335989337075565

`A225530(A007617(n+1)^A178334(n))`
-/

namespace A053568.P14203335989337075565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (SequenceMachineLib.roundAway ((A007617 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A053568.P14203335989337075565

namespace A053568

/-- `A225530(A007617(n+1)^A178334(n))` -/
def P14203335989337075565.Spec : Prop :=
  ∀ n, P14203335989337075565.a n = A053568 (n + 1)

end A053568

/-!
# A053569: Sum of divisors of numbers which cannot be sum of divisors of any number.

The programs for A053569, the canonical program `A053569.P672169449860306161` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053569 has offset 1).

The definition of A053569 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007369, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053569.P672169449860306161

`A000203(A007369(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053569

/-- `A000203(A007369(n+1))` -/
def P672169449860306161.Spec : Prop :=
  ∀ n, P672169449860306161.a n = A053569 (n + 1)

theorem P672169449860306161.correct : P672169449860306161.Spec := by
  intro n
  simp only [A053569, Nat.add_sub_cancel]

end A053569

/-! ## A053569.P16040220220270058105

`∑{d}[record[A257670(n+2)], #]`
-/

namespace A053569.P16040220220270058105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053569.P16040220220270058105

namespace A053569

/-- `∑{d}[record[A257670(n+2)], #]` -/
def P16040220220270058105.Spec : Prop :=
  ∀ n, (P16040220220270058105.a n : ℤ) = A053569 (n + 1)

end A053569

/-! ## A053569.P15405273187000463108

`A000203(record[A257670(n+2)])`
-/

namespace A053569.P15405273187000463108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053569.P15405273187000463108

namespace A053569

/-- `A000203(record[A257670(n+2)])` -/
def P15405273187000463108.Spec : Prop :=
  ∀ n, P15405273187000463108.a n = A053569 (n + 1)

end A053569

/-! ## A053569.P16162506912136027663

`A000203(comp[A000203(n+1)-1]+1)`
-/

namespace A053569.P16162506912136027663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A053569.P16162506912136027663

namespace A053569

/-- `A000203(comp[A000203(n+1)-1]+1)` -/
def P16162506912136027663.Spec : Prop :=
  ∀ n, P16162506912136027663.a n = A053569 (n + 1)

end A053569

/-! ## A053569.P15311193540928646498

`A000203(lt[A054973(n+1), 1]+1)`
-/

namespace A053569.P15311193540928646498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053569.P15311193540928646498

namespace A053569

/-- `A000203(lt[A054973(n+1), 1]+1)` -/
def P15311193540928646498.Spec : Prop :=
  ∀ n, P15311193540928646498.a n = A053569 (n + 1)

end A053569

/-! ## A053569.P1412692807686326339

`A000203(lt[A341879(n+1), 1]+1)`
-/

namespace A053569.P1412692807686326339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053569.P1412692807686326339

namespace A053569

/-- `A000203(lt[A341879(n+1), 1]+1)` -/
def P1412692807686326339.Spec : Prop :=
  ∀ n, P1412692807686326339.a n = A053569 (n + 1)

end A053569

/-! ## A053569.P10763152001130140740

`A000203(eq[val(2*n+1, 64), A054973(n+1)]+1)`
-/

namespace A053569.P10763152001130140740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * n + 1) 64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053569.P10763152001130140740

namespace A053569

/-- `A000203(eq[val(2*n+1, 64), A054973(n+1)]+1)` -/
def P10763152001130140740.Spec : Prop :=
  ∀ n, P10763152001130140740.a n = A053569 (n + 1)

end A053569

/-! ## A053569.P8121075374391904578

`∑{d}[eq[0, char[∑{d}[n, #]]], #]`
-/

namespace A053569.P8121075374391904578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f5 n), d

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A053569.P8121075374391904578

namespace A053569

/-- `∑{d}[eq[0, char[∑{d}[n, #]]], #]` -/
def P8121075374391904578.Spec : Prop :=
  ∀ n, (P8121075374391904578.a n : ℤ) = A053569 (n + 1)

end A053569

/-! ## A053569.P7827280620317093764

`A245092(2*comp[∑{d}[n+1, #]-1]+1)`
-/

namespace A053569.P7827280620317093764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A053569.P7827280620317093764

namespace A053569

/-- `A245092(2*comp[∑{d}[n+1, #]-1]+1)` -/
def P7827280620317093764.Spec : Prop :=
  ∀ n, P7827280620317093764.a n = A053569 (n + 1)

end A053569

/-!
# A053570: Sum of totient functions over arguments running through reduced residue system of n.

The programs for A053570, there is no canonical definition to state claims against.
-/

/-! ## A053570.P8717994199858797482

`A015613(n+1)+1-A053571(n+1)`
-/

namespace A053570.P8717994199858797482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + (1 - A053571 (n + 1))

end

end A053570.P8717994199858797482

/-! ## A053570.P4067698789593921396

`A002088(n+1)-(A053571(n+1)+n)`
-/

namespace A053570.P4067698789593921396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - (A053571 (n + 1) + (n : ℤ))

end

end A053570.P4067698789593921396

/-! ## A053570.P6504364924522172844

`∑{d}[n+1, A008683(#)*A332686((n+1)/#)]`
-/

namespace A053570.P6504364924522172844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A332686 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053570.P6504364924522172844

/-! ## A053570.P10899483735252327840

`A005728(n)-(A053571(n+1)+A051953(n+1))`
-/

namespace A053570.P10899483735252327840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - (A053571 (n + 1) + A051953 (n + 1))

end

end A053570.P10899483735252327840

/-! ## A053570.P11494253237010859096

`A024000(A053571(n+1))+A015613(n+1)`
-/

namespace A053570.P11494253237010859096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A053571 (n + 1)).toNat + A015613 (n + 1)

end

end A053570.P11494253237010859096

/-! ## A053570.P8516193515633755610

`A127373(∑[n]+1)`
-/

namespace A053570.P8516193515633755610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127373 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A053570.P8516193515633755610

/-!
# A053571: Sum of totient functions over arguments running through numbers unrelated to n.

The programs for A053571, there is no canonical definition to state claims against.
-/

/-! ## A053571.P16325471731758362512

`A015613(n+1)+1-A053570(n+1)`
-/

namespace A053571.P16325471731758362512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + (1 - A053570 (n + 1))

end

end A053571.P16325471731758362512

/-! ## A053571.P3111597819914200707

`A002088(n+1)-(A053570(n+1)+n)`
-/

namespace A053571.P3111597819914200707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - (A053570 (n + 1) + (n : ℤ))

end

end A053571.P3111597819914200707

/-! ## A053571.P9806082107862160185

`∑[A000010(n+1)]-(A053570(n+1)+n)`
-/

namespace A053571.P9806082107862160185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A053570 (n + 1) + (n : ℤ))

end

end A053571.P9806082107862160185

/-! ## A053571.P13977420977271625194

`A005728(n+1)-(A053570(n+1)+n+1)`
-/

namespace A053571.P13977420977271625194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) - (A053570 (n + 1) + (n + 1 : ℤ))

end

end A053571.P13977420977271625194

/-! ## A053571.P10180228178070494041

`A005728(n)-A051953(n+1)-A053570(n+1)`
-/

namespace A053571.P10180228178070494041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - A051953 (n + 1) - A053570 (n + 1)

end

end A053571.P10180228178070494041

/-! ## A053571.P5344521097757668482

`A024000(A053570(n+1))+A015613(n+1)`
-/

namespace A053571.P5344521097757668482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A053570 (n + 1)).toNat + A015613 (n + 1)

end

end A053571.P5344521097757668482

/-!
# A053572: Maximal number of spanning trees in a planar graph with n nodes.

The programs for A053572, there is no canonical definition to state claims against.
-/

/-! ## A053572.P13998469382373381739

`ceil(A178036(2*(n+2))/∏{p}[A178033(3*(n+1))+1, #])`
-/

namespace A053572.P13998469382373381739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178033 (3 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178036 (2 * (n + 2)) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)⌉

end

end A053572.P13998469382373381739

/-! ## A053572.P17033838861437782115

`A000196(A048801(n))*A346073(n)`
-/

namespace A053572.P17033838861437782115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A048801 n).toNat * A346073 n

end

end A053572.P17033838861437782115

/-! ## A053572.P13921938534100716309

`A110656(A027379(n)*A317130(n))`
-/

namespace A053572.P13921938534100716309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A027379 n * A317130 n).toNat

end

end A053572.P13921938534100716309

/-!
# A053573: a(n) = 5*a(n-1) + 14*a(n-2), a(0)=1, a(1)=5.

The programs for A053573, the canonical program `A053573.P7599293254440413737` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053573 has offset 0).

The definition of A053573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+14*a(n-2)` (program `A053573.P7599293254440413737`, by `A053573.P7599293254440413737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053573.P7599293254440413737

`5*a(n-1)+14*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053573

/-- `5*a(n-1)+14*a(n-2)` -/
def P7599293254440413737.Spec : Prop :=
  ∀ n, (P7599293254440413737.a n : ℤ) = A053573 n

theorem P7599293254440413737.correct : P7599293254440413737.Spec := by
  intro n
  simp only [A053573]

end A053573

/-! ## A053573.P10577125905363710230

`(7^(n+1)-(-2)^(n+1))/9`
-/

namespace A053573.P10577125905363710230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 1) : ℤ) - (-2) ^ (n + 1) : ℚ) / 9

end

end A053573.P10577125905363710230

namespace A053573

/-- `(7^(n+1)-(-2)^(n+1))/9` -/
def P10577125905363710230.Spec : Prop :=
  ∀ n, P10577125905363710230.a n = (A053573 n : ℚ)

theorem P10577125905363710230.correct : P10577125905363710230.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053573, Nat.add_sub_cancel, A053573.P10577125905363710230.a, A053573.P7599293254440413737.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053573, Nat.add_sub_cancel, A053573.P10577125905363710230.a, A053573.P7599293254440413737.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A053573

/-! ## A053573.P5697717680196413399

`ogf(1/(1-5x-14x^2))`
-/

namespace A053573.P5697717680196413399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, -14] n

end

end A053573.P5697717680196413399

namespace A053573

/-- `ogf(1/(1-5x-14x^2))` -/
def P5697717680196413399.Spec : Prop :=
  ∀ n, P5697717680196413399.a n = A053573 n

end A053573

/-! ## A053573.P11677685697190552224

`7^n-2*a(n-1)` with `a(0)=1`
-/

namespace A053573.P11677685697190552224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 ^ n : ℤ) - 2 * a (n - 1)

end

end A053573.P11677685697190552224

namespace A053573

/-- `7^n-2*a(n-1)` -/
def P11677685697190552224.Spec : Prop :=
  ∀ n, P11677685697190552224.a n = A053573 n

end A053573

/-! ## A053573.P3512120528419486130

`7^n-lcm(2, a(n-1))` with `a(0)=1`
-/

namespace A053573.P3512120528419486130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 ^ n : ℤ) - (Int.lcm 2 (a (n - 1)) : ℤ)

end

end A053573.P3512120528419486130

namespace A053573

/-- `7^n-lcm(2, a(n-1))` -/
def P3512120528419486130.Spec : Prop :=
  ∀ n, P3512120528419486130.a n = A053573 n

end A053573

/-! ## A053573.P17582648391677881182

`7^n-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A053573.P17582648391677881182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 ^ n : ℤ) - (a (n - 1) + a (n - 1))

end

end A053573.P17582648391677881182

namespace A053573

/-- `7^n-(a(n-1)+a(n-1))` -/
def P17582648391677881182.Spec : Prop :=
  ∀ n, P17582648391677881182.a n = A053573 n

end A053573

/-! ## A053573.P9750414109353038561

`7^n-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A053573.P9750414109353038561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 ^ n : ℤ) - a (n - 1) - a (n - 1)

end

end A053573.P9750414109353038561

namespace A053573

/-- `7^n-a(n-1)-a(n-1)` -/
def P9750414109353038561.Spec : Prop :=
  ∀ n, P9750414109353038561.a n = A053573 n

end A053573

/-! ## A053573.P4704238028314083060

`abs(2*a(n-1)-A000420(n))` with `a(0)=1`
-/

namespace A053573.P4704238028314083060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 * a (n - 1) - A000420 n|

end

end A053573.P4704238028314083060

namespace A053573

/-- `abs(2*a(n-1)-A000420(n))` -/
def P4704238028314083060.Spec : Prop :=
  ∀ n, P4704238028314083060.a n = A053573 n

end A053573

/-! ## A053573.P1979242113352309306

`7*a(n-1)-A084633(n+1)` with `a(0)=1`
-/

namespace A053573.P1979242113352309306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - A084633 (n + 1)

end

end A053573.P1979242113352309306

namespace A053573

/-- `7*a(n-1)-A084633(n+1)` -/
def P1979242113352309306.Spec : Prop :=
  ∀ n, P1979242113352309306.a n = A053573 n

end A053573

/-! ## A053573.P13372515601654438922

`∑[A151575(n)+A125823(n+1)]`
-/

namespace A053573.P13372515601654438922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n + A125823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053573.P13372515601654438922

namespace A053573

/-- `∑[A151575(n)+A125823(n+1)]` -/
def P13372515601654438922.Spec : Prop :=
  ∀ n, P13372515601654438922.a n = A053573 n

end A053573

/-!
# A053574: Exponent of 2 in phi(n) where phi(n) = A000010(n).

The programs for A053574, the canonical program `A053574.P101121150819390308` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053574 has offset 1).

The definition of A053574 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053574.P101121150819390308

`A007814(A000010(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053574

/-- `A007814(A000010(n+1))` -/
def P101121150819390308.Spec : Prop :=
  ∀ n, P101121150819390308.a n = A053574 (n + 1)

theorem P101121150819390308.correct : P101121150819390308.Spec := by
  intro n
  simp only [A053574, Nat.add_sub_cancel]

end A053574

/-! ## A053574.P5651211866444281428

`val((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], 2)`
-/

namespace A053574.P5651211866444281428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat 2

end

end A053574.P5651211866444281428

namespace A053574

/-- `val((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], 2)` -/
def P5651211866444281428.Spec : Prop :=
  ∀ n, (P5651211866444281428.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P6395060258556879625

`log2(A069177(n+1))`
-/

namespace A053574.P6395060258556879625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A069177 (n + 1) : ℝ)

end

end A053574.P6395060258556879625

namespace A053574

/-- `log2(A069177(n+1))` -/
def P6395060258556879625.Spec : Prop :=
  ∀ n, P6395060258556879625.a n = (A053574 (n + 1) : ℝ)

end A053574

/-! ## A053574.P11046572590380518396

`val(Δ[A002088(n)], 2)`
-/

namespace A053574.P11046572590380518396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A053574.P11046572590380518396

namespace A053574

/-- `val(Δ[A002088(n)], 2)` -/
def P11046572590380518396.Spec : Prop :=
  ∀ n, (P11046572590380518396.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P2693676440694248876

`val(Δ[A005728(n)], 2)`
-/

namespace A053574.P2693676440694248876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A053574.P2693676440694248876

namespace A053574

/-- `val(Δ[A005728(n)], 2)` -/
def P2693676440694248876.Spec : Prop :=
  ∀ n, (P2693676440694248876.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P12267538988307139487

`val(A087692(n+1), 2)`
-/

namespace A053574.P12267538988307139487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A087692 (n + 1)).toNat 2

end

end A053574.P12267538988307139487

namespace A053574

/-- `val(A087692(n+1), 2)` -/
def P12267538988307139487.Spec : Prop :=
  ∀ n, (P12267538988307139487.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P803047534456458656

`val(A115070(n+1), 2)`
-/

namespace A053574.P803047534456458656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A115070 (n + 1)).toNat 2

end

end A053574.P803047534456458656

namespace A053574

/-- `val(A115070(n+1), 2)` -/
def P803047534456458656.Spec : Prop :=
  ∀ n, (P803047534456458656.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P5133527302732706539

`val(A196524(n+1), 2)`
-/

namespace A053574.P5133527302732706539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A196524 (n + 1)).toNat 2

end

end A053574.P5133527302732706539

namespace A053574

/-- `val(A196524(n+1), 2)` -/
def P5133527302732706539.Spec : Prop :=
  ∀ n, (P5133527302732706539.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P10388557848597480778

`val(A200905(n+1), 2)`
-/

namespace A053574.P10388557848597480778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A200905 (n + 1)).toNat 2

end

end A053574.P10388557848597480778

namespace A053574

/-- `val(A200905(n+1), 2)` -/
def P10388557848597480778.Spec : Prop :=
  ∀ n, (P10388557848597480778.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P17091692851303627013

`val(A293482(n+1), 2)`
-/

namespace A053574.P17091692851303627013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293482 (n + 1)).toNat 2

end

end A053574.P17091692851303627013

namespace A053574

/-- `val(A293482(n+1), 2)` -/
def P17091692851303627013.Spec : Prop :=
  ∀ n, (P17091692851303627013.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P9867230585751668308

`val(A293484(n+1), 2)`
-/

namespace A053574.P9867230585751668308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293484 (n + 1)).toNat 2

end

end A053574.P9867230585751668308

namespace A053574

/-- `val(A293484(n+1), 2)` -/
def P9867230585751668308.Spec : Prop :=
  ∀ n, (P9867230585751668308.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P13267327116892624917

`val(A082953(n+1), 4)`
-/

namespace A053574.P13267327116892624917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082953 (n + 1)).toNat 4

end

end A053574.P13267327116892624917

namespace A053574

/-- `val(A082953(n+1), 4)` -/
def P13267327116892624917.Spec : Prop :=
  ∀ n, (P13267327116892624917.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P5136215819766998211

`val(A127473(n+1), 4)`
-/

namespace A053574.P5136215819766998211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A127473 (n + 1)).toNat 4

end

end A053574.P5136215819766998211

namespace A053574

/-- `val(A127473(n+1), 4)` -/
def P5136215819766998211.Spec : Prop :=
  ∀ n, (P5136215819766998211.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P11378420761767233716

`val(A358714(n+1), 8)`
-/

namespace A053574.P11378420761767233716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A358714 (n + 1)).toNat 8

end

end A053574.P11378420761767233716

namespace A053574

/-- `val(A358714(n+1), 8)` -/
def P11378420761767233716.Spec : Prop :=
  ∀ n, (P11378420761767233716.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P2681251760930467886

`val(A109606(n+1)+1, 2)`
-/

namespace A053574.P2681251760930467886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A109606 (n + 1) + 1).toNat 2

end

end A053574.P2681251760930467886

namespace A053574

/-- `val(A109606(n+1)+1, 2)` -/
def P2681251760930467886.Spec : Prop :=
  ∀ n, (P2681251760930467886.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P14405120005479088236

`val(A039649(n+1)-1, 2)`
-/

namespace A053574.P14405120005479088236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039649 (n + 1) - 1).toNat 2

end

end A053574.P14405120005479088236

namespace A053574

/-- `val(A039649(n+1)-1, 2)` -/
def P14405120005479088236.Spec : Prop :=
  ∀ n, (P14405120005479088236.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P17070536719329806692

`val(A349137(2*n+1), 2)`
-/

namespace A053574.P17070536719329806692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A349137 (2 * n + 1)).toNat 2

end

end A053574.P17070536719329806692

namespace A053574

/-- `val(A349137(2*n+1), 2)` -/
def P17070536719329806692.Spec : Prop :=
  ∀ n, (P17070536719329806692.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P2930690486353643249

`val(A000010(2*n-(n-1))², 4)`
-/

namespace A053574.P2930690486353643249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2).toNat 4

end

end A053574.P2930690486353643249

namespace A053574

/-- `val(A000010(2*n-(n-1))², 4)` -/
def P2930690486353643249.Spec : Prop :=
  ∀ n, (P2930690486353643249.a n : ℤ) = A053574 (n + 1)

end A053574

/-! ## A053574.P1611966736192776034

`val(∑{d}[n+1, #*A008683((n+1)/#)], 2)`
-/

namespace A053574.P1611966736192776034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat 2

end

end A053574.P1611966736192776034

namespace A053574

/-- `val(∑{d}[n+1, #*A008683((n+1)/#)], 2)` -/
def P1611966736192776034.Spec : Prop :=
  ∀ n, (P1611966736192776034.a n : ℤ) = A053574 (n + 1)

end A053574

/-!
# A053575: Odd part of phi(n): a(n) = A000265(A000010(n)).

The programs for A053575, the canonical program `A053575.P11050081037348707319` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053575 has offset 1).

The definition of A053575 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053575.P11050081037348707319

`A000265(A000010(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A053575

/-- `A000265(A000010(n+1))` -/
def P11050081037348707319.Spec : Prop :=
  ∀ n, P11050081037348707319.a n = A053575 (n + 1)

theorem P11050081037348707319.correct : P11050081037348707319.Spec := by
  intro n
  simp only [A053575, Nat.add_sub_cancel]

end A053575

/-! ## A053575.P14754450474815884320

`A000265(Δ[A002088(n)])`
-/

namespace A053575.P14754450474815884320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A053575.P14754450474815884320

namespace A053575

/-- `A000265(Δ[A002088(n)])` -/
def P14754450474815884320.Spec : Prop :=
  ∀ n, P14754450474815884320.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P12440053791222161671

`A000265(Δ[A005728(n)])`
-/

namespace A053575.P12440053791222161671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A053575.P12440053791222161671

namespace A053575

/-- `A000265(Δ[A005728(n)])` -/
def P12440053791222161671.Spec : Prop :=
  ∀ n, P12440053791222161671.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P1077547704913454124

`A028234(Δ[A005728(n)])`
-/

namespace A053575.P1077547704913454124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (f1 (n + 1) - f1 n).toNat

end

end A053575.P1077547704913454124

namespace A053575

/-- `A028234(Δ[A005728(n)])` -/
def P1077547704913454124.Spec : Prop :=
  ∀ n, P1077547704913454124.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P11651002058131881277

`A000265(Δ[A100449(n)])`
-/

namespace A053575.P11651002058131881277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A053575.P11651002058131881277

namespace A053575

/-- `A000265(Δ[A100449(n)])` -/
def P11651002058131881277.Spec : Prop :=
  ∀ n, P11651002058131881277.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P9622405849148792979

`A000265(Δ[A140466(n)])`
-/

namespace A053575.P9622405849148792979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A053575.P9622405849148792979

namespace A053575

/-- `A000265(Δ[A140466(n)])` -/
def P9622405849148792979.Spec : Prop :=
  ∀ n, P9622405849148792979.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P7276396121117526201

`A139391(Δ[A005728(n)])`
-/

namespace A053575.P7276396121117526201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (f1 (n + 1) - f1 n).toNat

end

end A053575.P7276396121117526201

namespace A053575

/-- `A139391(Δ[A005728(n)])` -/
def P7276396121117526201.Spec : Prop :=
  ∀ n, P7276396121117526201.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P13384158584948668256

`A000265(A046073(n+1))`
-/

namespace A053575.P13384158584948668256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A046073 (n + 1)).toNat

end

end A053575.P13384158584948668256

namespace A053575

/-- `A000265(A046073(n+1))` -/
def P13384158584948668256.Spec : Prop :=
  ∀ n, P13384158584948668256.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P1121553310004174533

`A000265(A055034(n+1))`
-/

namespace A053575.P1121553310004174533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A055034 (n + 1)).toNat

end

end A053575.P1121553310004174533

namespace A053575

/-- `A000265(A055034(n+1))` -/
def P1121553310004174533.Spec : Prop :=
  ∀ n, P1121553310004174533.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P17334918128057883663

`A000265(A055035(n+1))`
-/

namespace A053575.P17334918128057883663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A055035 (n + 1)).toNat

end

end A053575.P17334918128057883663

namespace A053575

/-- `A000265(A055035(n+1))` -/
def P17334918128057883663.Spec : Prop :=
  ∀ n, P17334918128057883663.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P2895743009472409337

`A000265(A062570(n+1))`
-/

namespace A053575.P2895743009472409337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062570 (n + 1)).toNat

end

end A053575.P2895743009472409337

namespace A053575

/-- `A000265(A062570(n+1))` -/
def P2895743009472409337.Spec : Prop :=
  ∀ n, P2895743009472409337.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P13256717226682489992

`A000265(A070306(n+1))`
-/

namespace A053575.P13256717226682489992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A070306 (n + 1)).toNat

end

end A053575.P13256717226682489992

namespace A053575

/-- `A000265(A070306(n+1))` -/
def P13256717226682489992.Spec : Prop :=
  ∀ n, P13256717226682489992.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P12448458194386545956

`A000265(A089692(n+1))`
-/

namespace A053575.P12448458194386545956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A089692 (n + 1)).toNat

end

end A053575.P12448458194386545956

namespace A053575

/-- `A000265(A089692(n+1))` -/
def P12448458194386545956.Spec : Prop :=
  ∀ n, P12448458194386545956.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P17477345594944207937

`A000265(A140434(n+1))`
-/

namespace A053575.P17477345594944207937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A140434 (n + 1)).toNat

end

end A053575.P17477345594944207937

namespace A053575

/-- `A000265(A140434(n+1))` -/
def P17477345594944207937.Spec : Prop :=
  ∀ n, P17477345594944207937.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P2248176667085051466

`A086767(A109606(n+1))`
-/

namespace A053575.P2248176667085051466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 (A109606 (n + 1)).toNat

end

end A053575.P2248176667085051466

namespace A053575

/-- `A086767(A109606(n+1))` -/
def P2248176667085051466.Spec : Prop :=
  ∀ n, P2248176667085051466.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P15993279553244335764

`A000265(A232626(n+1))`
-/

namespace A053575.P15993279553244335764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A232626 (n + 1)).toNat

end

end A053575.P15993279553244335764

namespace A053575

/-- `A000265(A232626(n+1))` -/
def P15993279553244335764.Spec : Prop :=
  ∀ n, P15993279553244335764.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P16795669271413397337

`A000265(A250207(n+1))`
-/

namespace A053575.P16795669271413397337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A250207 (n + 1)).toNat

end

end A053575.P16795669271413397337

namespace A053575

/-- `A000265(A250207(n+1))` -/
def P16795669271413397337.Spec : Prop :=
  ∀ n, P16795669271413397337.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P1239650310852877262

`A000265(A293485(n+1))`
-/

namespace A053575.P1239650310852877262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A293485 (n + 1)).toNat

end

end A053575.P1239650310852877262

namespace A053575

/-- `A000265(A293485(n+1))` -/
def P1239650310852877262.Spec : Prop :=
  ∀ n, P1239650310852877262.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P1783513391974115061

`A339904(A064989(n+1))`
-/

namespace A053575.P1783513391974115061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339904 (A064989 (n + 1)).toNat

end

end A053575.P1783513391974115061

namespace A053575

/-- `A339904(A064989(n+1))` -/
def P1783513391974115061.Spec : Prop :=
  ∀ n, P1783513391974115061.a n = A053575 (n + 1)

end A053575

/-! ## A053575.P7474367869332629708

`A028234(A000010(2*(n+1)))`
-/

namespace A053575.P7474367869332629708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A000010 (2 * (n + 1))).toNat

end

end A053575.P7474367869332629708

namespace A053575

/-- `A028234(A000010(2*(n+1)))` -/
def P7474367869332629708.Spec : Prop :=
  ∀ n, P7474367869332629708.a n = A053575 (n + 1)

end A053575

/-!
# A053577: Cototient function n - phi(n) is a power of 2.

The programs for A053577, the canonical program `A053577.P16932129243954039519` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053577 has offset 1).

The definition of A053577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053577.P3062677079116527558

`eq[1, A000120(n+1-A000010(n+1))]+1`
-/

namespace A053577.P3062677079116527558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053577.P3062677079116527558

namespace A053577

/-- `eq[1, A000120(n+1-A000010(n+1))]+1` -/
def P3062677079116527558.Spec : Prop :=
  ∀ n, (P3062677079116527558.a n : ℤ) = A053577 (n + 1)

end A053577

/-! ## A053577.P1047481490844402009

`record[n*A209229(a(A051953(n)))]` with `a(0)=2`
-/

namespace A053577.P1047481490844402009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) * A209229 (f1 (A051953 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053577.P1047481490844402009

namespace A053577

/-- `record[n*A209229(a(A051953(n)))]` -/
def P1047481490844402009.Spec : Prop :=
  ∀ n, P1047481490844402009.a n = A053577 (n + 1)

end A053577

/-! ## A053577.P1499855498836238051

`eq[1, A000120(A051953(n+1))]+1`
-/

namespace A053577.P1499855498836238051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053577.P1499855498836238051

namespace A053577

/-- `eq[1, A000120(A051953(n+1))]+1` -/
def P1499855498836238051.Spec : Prop :=
  ∀ n, (P1499855498836238051.a n : ℤ) = A053577 (n + 1)

end A053577

/-! ## A053577.P3209712081343736065

`eq[1, A124774(A051953(n+2))]+2`
-/

namespace A053577.P3209712081343736065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A051953 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A053577.P3209712081343736065

namespace A053577

/-- `eq[1, A124774(A051953(n+2))]+2` -/
def P3209712081343736065.Spec : Prop :=
  ∀ n, (P3209712081343736065.a n : ℤ) = A053577 (n + 1)

end A053577

/-! ## A053577.P16932129243954039519

`eq[A001065(A016035(n+2)+1), A016035(n+2)]+2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053577

/-- `eq[A001065(A016035(n+2)+1), A016035(n+2)]+2` -/
def P16932129243954039519.Spec : Prop :=
  ∀ n, (P16932129243954039519.a n : ℤ) = A053577 (n + 1)

theorem P16932129243954039519.correct : P16932129243954039519.Spec := by
  intro n
  simp only [A053577, Nat.add_sub_cancel]

end A053577

/-! ## A053577.P4960751278965661382

`eq[2, A278222(A051953(n+1)²)]+1`
-/

namespace A053577.P4960751278965661382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A051953 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053577.P4960751278965661382

namespace A053577

/-- `eq[2, A278222(A051953(n+1)²)]+1` -/
def P4960751278965661382.Spec : Prop :=
  ∀ n, (P4960751278965661382.a n : ℤ) = A053577 (n + 1)

end A053577

/-!
# A053578: Values of cototient function for A053577.

The programs for A053578, the canonical program `A053578.P11254634058092319616` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053578 has offset 1).

The definition of A053578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9658 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053578.P11254634058092319616

`A053577(n+1)-A000010(A053577(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053578

/-- `A053577(n+1)-A000010(A053577(n+1))` -/
def P11254634058092319616.Spec : Prop :=
  ∀ n, P11254634058092319616.a n = A053578 (n + 1)

theorem P11254634058092319616.correct : P11254634058092319616.Spec := by
  intro n
  simp only [A053578, Nat.add_sub_cancel]

end A053578

/-! ## A053578.P12028413538912742239

`∑{d}[A053577(n+1), A062790(#)]`
-/

namespace A053578.P12028413538912742239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A053578.P12028413538912742239

namespace A053578

/-- `∑{d}[A053577(n+1), A062790(#)]` -/
def P12028413538912742239.Spec : Prop :=
  ∀ n, P12028413538912742239.a n = A053578 (n + 1)

end A053578

/-! ## A053578.P9060527279112073501

`A051953(A053577(n+1))`
-/

namespace A053578.P9060527279112073501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A053577 (n + 1)).toNat

end

end A053578.P9060527279112073501

namespace A053578

/-- `A051953(A053577(n+1))` -/
def P9060527279112073501.Spec : Prop :=
  ∀ n, P9060527279112073501.a n = A053578 (n + 1)

end A053578

/-! ## A053578.P16450848456615912009

`filter[A051953(n+1), A209229(#)]`
-/

namespace A053578.P16450848456615912009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A053578.P16450848456615912009

namespace A053578

/-- `filter[A051953(n+1), A209229(#)]` -/
def P16450848456615912009.Spec : Prop :=
  ∀ n, P16450848456615912009.a n = A053578 (n + 1)

end A053578

/-! ## A053578.P11720883819437451543

`A082506(A053577(2*n+1-n))`
-/

namespace A053578.P11720883819437451543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082506 (A053577 (2 * n + 1 - n)).toNat

end

end A053578.P11720883819437451543

namespace A053578

/-- `A082506(A053577(2*n+1-n))` -/
def P11720883819437451543.Spec : Prop :=
  ∀ n, P11720883819437451543.a n = A053578 (n + 1)

end A053578

/-! ## A053578.P9169943355630172717

`A016035(A053577(n+1))+A020985(n)²`
-/

namespace A053578.P9169943355630172717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A053577 (n + 1)).toNat + A020985 n ^ 2

end

end A053578.P9169943355630172717

namespace A053578

/-- `A016035(A053577(n+1))+A020985(n)²` -/
def P9169943355630172717.Spec : Prop :=
  ∀ n, P9169943355630172717.a n = A053578 (n + 1)

end A053578

/-! ## A053578.P2766642437360363002

`A016035(A053577(n+1))+A005117(gcd(n, n+1))`
-/

namespace A053578.P2766642437360363002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A053577 (n + 1)).toNat + A005117 (Nat.gcd n (n + 1))

end

end A053578.P2766642437360363002

namespace A053578

/-- `A016035(A053577(n+1))+A005117(gcd(n, n+1))` -/
def P2766642437360363002.Spec : Prop :=
  ∀ n, P2766642437360363002.a n = A053578 (n + 1)

end A053578

/-! ## A053578.P17045597709961963175

`A016035(A053577(n+1))+abs((-1)^A001222(n+1))`
-/

namespace A053578.P17045597709961963175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016035 (A053577 (n + 1)).toNat : ℚ) + |(-1 : ℚ) ^ (A001222 (n + 1) : ℤ)|

end

end A053578.P17045597709961963175

namespace A053578

/-- `A016035(A053577(n+1))+abs((-1)^A001222(n+1))` -/
def P17045597709961963175.Spec : Prop :=
  ∀ n, P17045597709961963175.a n = (A053578 (n + 1) : ℚ)

end A053578

/-! ## A053578.P2122723355876752740

`A274006(A000040(n+1))+A016035(A053577(n+1))`
-/

namespace A053578.P2122723355876752740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274006 (A000040 (n + 1)).toNat + A016035 (A053577 (n + 1)).toNat

end

end A053578.P2122723355876752740

namespace A053578

/-- `A274006(A000040(n+1))+A016035(A053577(n+1))` -/
def P2122723355876752740.Spec : Prop :=
  ∀ n, P2122723355876752740.a n = A053578 (n + 1)

end A053578

/-! ## A053578.P6172503397184060178

`filter[A319700(2*(n+1)), A209229(#)]`
-/

namespace A053578.P6172503397184060178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A053578.P6172503397184060178

namespace A053578

/-- `filter[A319700(2*(n+1)), A209229(#)]` -/
def P6172503397184060178.Spec : Prop :=
  ∀ n, P6172503397184060178.a n = A053578 (n + 1)

end A053578

/-! ## A053578.P15759553158422401758

`A156552(p?[A253565(A051953(n+1))])`
-/

namespace A053578.P15759553158422401758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (A051953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A053578.P15759553158422401758

namespace A053578

/-- `A156552(p?[A253565(A051953(n+1))])` -/
def P15759553158422401758.Spec : Prop :=
  ∀ n, P15759553158422401758.a n = A053578 (n + 1)

end A053578

/-!
# A053579: Composite numbers whose cototient (A051953) is a power of 2.

The programs for A053579, there is no canonical definition to state claims against.
-/

/-! ## A053579.P11211471731479516394

`∩[A023758(n+1), A070810(n+1)]`
-/

namespace A053579.P11211471731479516394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053579.P11211471731479516394

/-! ## A053579.P12112282012322906411

`∩[A043569(n+1), A070810(n+1)]`
-/

namespace A053579.P12112282012322906411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053579.P12112282012322906411

/-! ## A053579.P18408268198832750579

`filter[A053577(n+2), A373252(#)]`
-/

namespace A053579.P18408268198832750579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A053579.P18408268198832750579

/-! ## A053579.P6720844836360869069

`filter[A053577(n+1), A005171(#)]`
-/

namespace A053579.P6720844836360869069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053579.P6720844836360869069

/-! ## A053579.P7243846356799906707

`filter[A053577(n+1), A066247(#)]`
-/

namespace A053579.P7243846356799906707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053579.P7243846356799906707

/-! ## A053579.P1025326113384640520

`filter[A070810(n+1), A340375(#)]`
-/

namespace A053579.P1025326113384640520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340375 (f1 j).toNat = 1) n)

end

end A053579.P1025326113384640520

/-! ## A053579.P16639156407650315472

`filter[A043569(n+2), A336923(#)]`
-/

namespace A053579.P16639156407650315472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A053579.P16639156407650315472

/-! ## A053579.P16474029450181806920

`filter[A043687(n+2), A336923(#)]`
-/

namespace A053579.P16474029450181806920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043687 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A053579.P16474029450181806920

/-! ## A053579.P8472377856842958420

`filter[A043756(n+2), A336923(#)]`
-/

namespace A053579.P8472377856842958420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043756 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A053579.P8472377856842958420

/-! ## A053579.P9346384838448435086

`filter[A043765(n+2), A336923(#)]`
-/

namespace A053579.P9346384838448435086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043765 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A053579.P9346384838448435086

/-!
# A053580: Primes having only {0, 6, 8, 9} as digits.

The programs for A053580, the canonical program `A053580.P17285909169355561806` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053580 has offset 1).

The definition of A053580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 753 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053580.P11696144626367856064

`∩[A061372(n+1), A079652(n+1)]`
-/

namespace A053580.P11696144626367856064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P11696144626367856064

namespace A053580

/-- `∩[A061372(n+1), A079652(n+1)]` -/
def P11696144626367856064.Spec : Prop :=
  ∀ n, (P11696144626367856064.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P17200805489526507091

`∩[A057770(n+1), A061372(n+1)]`
-/

namespace A053580.P17200805489526507091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P17200805489526507091

namespace A053580

/-- `∩[A057770(n+1), A061372(n+1)]` -/
def P17200805489526507091.Spec : Prop :=
  ∀ n, (P17200805489526507091.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P17285909169355561806

`∩[A057770(n+1), A079652(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A053580

/-- `∩[A057770(n+1), A079652(n+1)]` -/
def P17285909169355561806.Spec : Prop :=
  ∀ n, (P17285909169355561806.a n : ℤ) = A053580 (n + 1)

theorem P17285909169355561806.correct : P17285909169355561806.Spec := by
  intro n
  simp only [A053580, Nat.add_sub_cancel]

end A053580

/-! ## A053580.P15446760827237575881

`∩[A001743(n+1), A057770(n+1)]`
-/

namespace A053580.P15446760827237575881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P15446760827237575881

namespace A053580

/-- `∩[A001743(n+1), A057770(n+1)]` -/
def P15446760827237575881.Spec : Prop :=
  ∀ n, (P15446760827237575881.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P3666391613377456670

`∩[A001743(n+1), A061372(n+1)]`
-/

namespace A053580.P3666391613377456670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P3666391613377456670

namespace A053580

/-- `∩[A001743(n+1), A061372(n+1)]` -/
def P3666391613377456670.Spec : Prop :=
  ∀ n, (P3666391613377456670.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P14763328908374774957

`∩[A001743(n+1), A079652(n+1)]`
-/

namespace A053580.P14763328908374774957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P14763328908374774957

namespace A053580

/-- `∩[A001743(n+1), A079652(n+1)]` -/
def P14763328908374774957.Spec : Prop :=
  ∀ n, (P14763328908374774957.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P12035796026400414252

`∩[A001743(n+1), A034844(n+1)]`
-/

namespace A053580.P12035796026400414252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P12035796026400414252

namespace A053580

/-- `∩[A001743(n+1), A034844(n+1)]` -/
def P12035796026400414252.Spec : Prop :=
  ∀ n, (P12035796026400414252.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P3761836268041180257

`∩[A034844(n+1), A079652(n+1)]`
-/

namespace A053580.P3761836268041180257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P3761836268041180257

namespace A053580

/-- `∩[A034844(n+1), A079652(n+1)]` -/
def P3761836268041180257.Spec : Prop :=
  ∀ n, (P3761836268041180257.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P5181113878131530220

`p?[A001743(n+1)]`
-/

namespace A053580.P5181113878131530220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053580.P5181113878131530220

namespace A053580

/-- `p?[A001743(n+1)]` -/
def P5181113878131530220.Spec : Prop :=
  ∀ n, P5181113878131530220.a n = A053580 (n + 1)

end A053580

/-! ## A053580.P9465130407022745566

`record[p?[A001743(A203814(n))]]`
-/

namespace A053580.P9465130407022745566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053580.P9465130407022745566

namespace A053580

/-- `record[p?[A001743(A203814(n))]]` -/
def P9465130407022745566.Spec : Prop :=
  ∀ n, P9465130407022745566.a n = A053580 (n + 1)

end A053580

/-! ## A053580.P16480509788680643152

`record[p?[A001743(A257174(n))]]`
-/

namespace A053580.P16480509788680643152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (A257174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053580.P16480509788680643152

namespace A053580

/-- `record[p?[A001743(A257174(n))]]` -/
def P16480509788680643152.Spec : Prop :=
  ∀ n, P16480509788680643152.a n = A053580 (n + 1)

end A053580

/-! ## A053580.P18014545673260831996

`record[p?[A001743(A286378(n))]]`
-/

namespace A053580.P18014545673260831996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053580.P18014545673260831996

namespace A053580

/-- `record[p?[A001743(A286378(n))]]` -/
def P18014545673260831996.Spec : Prop :=
  ∀ n, P18014545673260831996.a n = A053580 (n + 1)

end A053580

/-! ## A053580.P10549783197360050486

`record[p?[A001743(A324343(n))]]`
-/

namespace A053580.P10549783197360050486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053580.P10549783197360050486

namespace A053580

/-- `record[p?[A001743(A324343(n))]]` -/
def P10549783197360050486.Spec : Prop :=
  ∀ n, P10549783197360050486.a n = A053580 (n + 1)

end A053580

/-! ## A053580.P9223020199871990340

`record[p?[A001743(A342022(n))]]`
-/

namespace A053580.P9223020199871990340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (A342022 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053580.P9223020199871990340

namespace A053580

/-- `record[p?[A001743(A342022(n))]]` -/
def P9223020199871990340.Spec : Prop :=
  ∀ n, P9223020199871990340.a n = A053580 (n + 1)

end A053580

/-! ## A053580.P5748719733590950227

`∩[A001743(n+1), A034470(n+1)]`
-/

namespace A053580.P5748719733590950227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P5748719733590950227

namespace A053580

/-- `∩[A001743(n+1), A034470(n+1)]` -/
def P5748719733590950227.Spec : Prop :=
  ∀ n, (P5748719733590950227.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P8689692540271906160

`∩[A034470(n+1), A034844(n+1)]`
-/

namespace A053580.P8689692540271906160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P8689692540271906160

namespace A053580

/-- `∩[A034470(n+1), A034844(n+1)]` -/
def P8689692540271906160.Spec : Prop :=
  ∀ n, (P8689692540271906160.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P5680711169639677089

`∩[A034470(n+1), A057770(n+1)]`
-/

namespace A053580.P5680711169639677089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P5680711169639677089

namespace A053580

/-- `∩[A034470(n+1), A057770(n+1)]` -/
def P5680711169639677089.Spec : Prop :=
  ∀ n, (P5680711169639677089.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P6162653621838393807

`∩[A034470(n+1), A061372(n+1)]`
-/

namespace A053580.P6162653621838393807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P6162653621838393807

namespace A053580

/-- `∩[A034470(n+1), A061372(n+1)]` -/
def P6162653621838393807.Spec : Prop :=
  ∀ n, (P6162653621838393807.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P10377238239726689420

`∩[A001743(n+1), A152312(n+1)]`
-/

namespace A053580.P10377238239726689420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P10377238239726689420

namespace A053580

/-- `∩[A001743(n+1), A152312(n+1)]` -/
def P10377238239726689420.Spec : Prop :=
  ∀ n, (P10377238239726689420.a n : ℤ) = A053580 (n + 1)

end A053580

/-! ## A053580.P2036363366898203028

`∩[A079652(n+1), A152312(n+1)]`
-/

namespace A053580.P2036363366898203028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P2036363366898203028

namespace A053580

/-- `∩[A079652(n+1), A152312(n+1)]` -/
def P2036363366898203028.Spec : Prop :=
  ∀ n, (P2036363366898203028.a n : ℤ) = A053580 (n + 1)

end A053580

/-!
# A053581: First differences of the Poly-Bernoulli numbers B_n^(k) with k=-2 (A027649).

The programs for A053581, the canonical program `A053581.P10137873116503943167` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053581 has offset 0).

The definition of A053581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053581.P10137873116503943167

`5*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053581

/-- `5*a(n-1)-6*a(n-2)` -/
def P10137873116503943167.Spec : Prop :=
  ∀ n, P10137873116503943167.a n = A053581 n

theorem P10137873116503943167.correct : P10137873116503943167.Spec := by
  intro n
  simp only [A053581]

end A053581

/-! ## A053581.P3394167067233451406

`ogf((1-2x+x^2)/(1-5x+6x^2))`
-/

namespace A053581.P3394167067233451406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -5, 6] n

end

end A053581.P3394167067233451406

namespace A053581

/-- `ogf((1-2x+x^2)/(1-5x+6x^2))` -/
def P3394167067233451406.Spec : Prop :=
  ∀ n, P3394167067233451406.a n = A053581 n

end A053581

/-! ## A053581.P11336985865888164618

`ceil(2^(n-1)+3^(n-1))+3^n-2^n`
-/

namespace A053581.P11336985865888164618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + ((3 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A053581.P11336985865888164618

namespace A053581

/-- `ceil(2^(n-1)+3^(n-1))+3^n-2^n` -/
def P11336985865888164618.Spec : Prop :=
  ∀ n, P11336985865888164618.a n = A053581 n

end A053581

/-! ## A053581.P15629364605804091525

`abs(A000392(n)-(∑[3^n]+1-2^n))`
-/

namespace A053581.P15629364605804091525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000392 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (2 ^ n : ℤ)))|

end

end A053581.P15629364605804091525

namespace A053581

/-- `abs(A000392(n)-(∑[3^n]+1-2^n))` -/
def P15629364605804091525.Spec : Prop :=
  ∀ n, P15629364605804091525.a n = A053581 n

end A053581

/-! ## A053581.P16555833125884578403

`abs(A003946(n)-A131577(n))`
-/

namespace A053581.P16555833125884578403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003946 n - A131577 n|

end

end A053581.P16555833125884578403

namespace A053581

/-- `abs(A003946(n)-A131577(n))` -/
def P16555833125884578403.Spec : Prop :=
  ∀ n, P16555833125884578403.a n = A053581 n

end A053581

/-! ## A053581.P9933096276071709385

`record[A052156(n)-A166444(n)]`
-/

namespace A053581.P9933096276071709385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n - A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053581.P9933096276071709385

namespace A053581

/-- `record[A052156(n)-A166444(n)]` -/
def P9933096276071709385.Spec : Prop :=
  ∀ n, P9933096276071709385.a n = A053581 n

end A053581

/-! ## A053581.P1770535598939933533

`record[A074324(n)-A158780(n)]`
-/

namespace A053581.P1770535598939933533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 n - A158780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053581.P1770535598939933533

namespace A053581

/-- `record[A074324(n)-A158780(n)]` -/
def P1770535598939933533.Spec : Prop :=
  ∀ n, P1770535598939933533.a n = A053581 n

end A053581

/-! ## A053581.P17056860392302412162

`Δ[Δ[Δ[A000392(n)]]]`
-/

namespace A053581.P17056860392302412162
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053581.P17056860392302412162

namespace A053581

/-- `Δ[Δ[Δ[A000392(n)]]]` -/
def P17056860392302412162.Spec : Prop :=
  ∀ n, P17056860392302412162.a n = A053581 n

end A053581

/-! ## A053581.P6186410608357928525

`Δ[A025192(n)-ceil(2^(n-1))]`
-/

namespace A053581.P6186410608357928525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053581.P6186410608357928525

namespace A053581

/-- `Δ[A025192(n)-ceil(2^(n-1))]` -/
def P6186410608357928525.Spec : Prop :=
  ∀ n, P6186410608357928525.a n = A053581 n

end A053581

/-! ## A053581.P10643593534367666777

`(A027649(n)+A025192(n))/2`
-/

namespace A053581.P10643593534367666777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 n + A025192 n : ℚ) / 2

end

end A053581.P10643593534367666777

namespace A053581

/-- `(A027649(n)+A025192(n))/2` -/
def P10643593534367666777.Spec : Prop :=
  ∀ n, P10643593534367666777.a n = (A053581 n : ℚ)

end A053581

/-! ## A053581.P16879436026767495331

`Δ[Δ[A001047(A289207(n+1))]]`
-/

namespace A053581.P16879436026767495331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A289207 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053581.P16879436026767495331

namespace A053581

/-- `Δ[Δ[A001047(A289207(n+1))]]` -/
def P16879436026767495331.Spec : Prop :=
  ∀ n, P16879436026767495331.a n = A053581 n

end A053581

/-! ## A053581.P9645912960431053260

`Δ[(A123183(n+1)+A053152(n+1))/2]`
-/

namespace A053581.P9645912960431053260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123183 (n + 1) + A053152 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053581.P9645912960431053260

namespace A053581

/-- `Δ[(A123183(n+1)+A053152(n+1))/2]` -/
def P9645912960431053260.Spec : Prop :=
  ∀ n, P9645912960431053260.a n = (A053581 n : ℚ)

end A053581

/-! ## A053581.P1863376268541949993

`Δ[Δ[A304973(2*n)/2]]`
-/

namespace A053581.P1863376268541949993
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304973 (2 * n) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053581.P1863376268541949993

namespace A053581

/-- `Δ[Δ[A304973(2*n)/2]]` -/
def P1863376268541949993.Spec : Prop :=
  ∀ n, P1863376268541949993.a n = (A053581 n : ℚ)

end A053581

/-!
# A053582: a(n+1) is the smallest prime ending with a(n), where a(1)=1.

The programs for A053582, there is no canonical definition to state claims against.
-/

/-! ## A053582.P13217868739902950728

`A077714(∑[A053497(n)])`
-/

namespace A053582.P13217868739902950728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077714 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053582.P13217868739902950728

/-! ## A053582.P16645961029053043030

`A077714(∑[A255985(n)])`
-/

namespace A053582.P16645961029053043030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077714 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053582.P16645961029053043030

/-! ## A053582.P9773729676663129729

`A077714(A037406(n+1))`
-/

namespace A053582.P9773729676663129729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077714 (A037406 (n + 1)).toNat

end

end A053582.P9773729676663129729

/-!
# A053583: a(n+1) is the smallest prime ending with (but not equal to) a(n), where a(1)=3.

The programs for A053583, there is no canonical definition to state claims against.
-/

/-! ## A053583.P4199997275206559722

`p?[A077713(n+1)]`
-/

namespace A053583.P4199997275206559722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053583.P4199997275206559722

/-! ## A053583.P2599811370404260653

`∏{p}[A077713(∏{p}[n+1, gcd(n+1, #²)]), #]`
-/

namespace A053583.P2599811370404260653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077713 (∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A053583.P2599811370404260653

/-!
# A053584: a(n+1) is the smallest prime ending with a(n), where a(1)=7.

The programs for A053584, there is no canonical definition to state claims against.
-/

/-! ## A053584.P17909286695673093213

`record[gcd(floor(n/10), A077715(n+1))]`
-/

namespace A053584.P17909286695673093213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 10⌋ (A077715 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053584.P17909286695673093213

/-! ## A053584.P5615802721850536940

`A077715(A002998(n)+1)`
-/

namespace A053584.P5615802721850536940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077715 (A002998 n + 1).toNat

end

end A053584.P5615802721850536940

/-! ## A053584.P7983861674661426899

`A077715(A023106(n)+1)`
-/

namespace A053584.P7983861674661426899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077715 (A023106 n + 1).toNat

end

end A053584.P7983861674661426899

/-! ## A053584.P14928079924819599279

`A077715(∑[A160145(n)!])`
-/

namespace A053584.P14928079924819599279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A160145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077715 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053584.P14928079924819599279

/-! ## A053584.P3337379528448853300

`A238951(A287303(n+2))+A077715(n+1)`
-/

namespace A053584.P3337379528448853300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238951 (A287303 (n + 2)).toNat + A077715 (n + 1)

end

end A053584.P3337379528448853300

/-!
# A053585: If n = p_1^e_1 * ... * p_k^e_k, p_1 < ... < p_k primes, then a(n) = p_k^e_k.

The programs for A053585, the canonical program `A053585.P10057542052652531507` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053585 has offset 1).

The definition of A053585 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053585.P10057542052652531507

`A006530(n+1)^A071178(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A053585

/-- `A006530(n+1)^A071178(n+1)` -/
def P10057542052652531507.Spec : Prop :=
  ∀ n, P10057542052652531507.a n = (A053585 (n + 1) : ℚ)

end A053585

/-! ## A053585.P16243684243927019813

`(n+1)/A051119(n+1)`
-/

namespace A053585.P16243684243927019813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051119 (n + 1) : ℚ)

end

end A053585.P16243684243927019813

namespace A053585

/-- `(n+1)/A051119(n+1)` -/
def P16243684243927019813.Spec : Prop :=
  ∀ n, P16243684243927019813.a n = (A053585 (n + 1) : ℚ)

end A053585

/-! ## A053585.P7325077745397023396

`gcd(n+1, A068795(n+1))`
-/

namespace A053585.P7325077745397023396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A068795 (n + 1))

end

end A053585.P7325077745397023396

namespace A053585

/-- `gcd(n+1, A068795(n+1))` -/
def P7325077745397023396.Spec : Prop :=
  ∀ n, (P7325077745397023396.a n : ℤ) = A053585 (n + 1)

end A053585

/-! ## A053585.P6130620452950303277

`gcd(n²-1, A304180(n+1))`
-/

namespace A053585.P6130620452950303277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 : ℤ) - 1) (A304180 (n + 1))

end

end A053585.P6130620452950303277

namespace A053585

/-- `gcd(n²-1, A304180(n+1))` -/
def P6130620452950303277.Spec : Prop :=
  ∀ n, (P6130620452950303277.a n : ℤ) = A053585 (n + 1)

end A053585

/-! ## A053585.P2723595031660753812

`A141809(A082186(n+1))`
-/

namespace A053585.P2723595031660753812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (A082186 (n + 1)).toNat

end

end A053585.P2723595031660753812

namespace A053585

/-- `A141809(A082186(n+1))` -/
def P2723595031660753812.Spec : Prop :=
  ∀ n, P2723595031660753812.a n = A053585 (n + 1)

end A053585

/-! ## A053585.P9568757427588225476

`A141809(A013939(n+1)+1)`
-/

namespace A053585.P9568757427588225476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (A013939 (n + 1) + 1).toNat

end

end A053585.P9568757427588225476

namespace A053585

/-- `A141809(A013939(n+1)+1)` -/
def P9568757427588225476.Spec : Prop :=
  ∀ n, P9568757427588225476.a n = A053585 (n + 1)

end A053585

/-! ## A053585.P6347225929943345200

`A141809(∑[A001221(n+1)]+1)`
-/

namespace A053585.P6347225929943345200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A053585.P6347225929943345200

namespace A053585

/-- `A141809(∑[A001221(n+1)]+1)` -/
def P6347225929943345200.Spec : Prop :=
  ∀ n, P6347225929943345200.a n = A053585 (n + 1)

end A053585

/-! ## A053585.P9356187365433077946

`(n+1)/A052126(A243074(n+1))`
-/

namespace A053585.P9356187365433077946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (A243074 (n + 1)).toNat : ℚ)

end

end A053585.P9356187365433077946

namespace A053585

/-- `(n+1)/A052126(A243074(n+1))` -/
def P9356187365433077946.Spec : Prop :=
  ∀ n, P9356187365433077946.a n = (A053585 (n + 1) : ℚ)

end A053585

/-! ## A053585.P15298461345763605014

`gcd(n*A304180(n+1), A024006(n))`
-/

namespace A053585.P15298461345763605014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A304180 (n + 1)) (A024006 n)

end

end A053585.P15298461345763605014

namespace A053585

/-- `gcd(n*A304180(n+1), A024006(n))` -/
def P15298461345763605014.Spec : Prop :=
  ∀ n, (P15298461345763605014.a n : ℤ) = A053585 (n + 1)

end A053585

/-! ## A053585.P16357354877153125006

`((n+1)/A052126(n+1))^A071178(n+1)`
-/

namespace A053585.P16357354877153125006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ)) ^ (A071178 (n + 1) : ℤ)

end

end A053585.P16357354877153125006

namespace A053585

/-- `((n+1)/A052126(n+1))^A071178(n+1)` -/
def P16357354877153125006.Spec : Prop :=
  ∀ n, P16357354877153125006.a n = (A053585 (n + 1) : ℚ)

end A053585

/-! ## A053585.P14085926889153451594

`A006530(n+1)^val(n+1, A006530(2*(n+1)))`
-/

namespace A053585.P14085926889153451594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ SequenceMachineLib.valuation (n + 1) (A006530 (2 * (n + 1))).toNat

end

end A053585.P14085926889153451594

namespace A053585

/-- `A006530(n+1)^val(n+1, A006530(2*(n+1)))` -/
def P14085926889153451594.Spec : Prop :=
  ∀ n, P14085926889153451594.a n = A053585 (n + 1)

end A053585

/-! ## A053585.P9077754908503935702

`A008578(A061395(n+1)+1)^A071178(n+1)`
-/

namespace A053585.P9077754908503935702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (A061395 (n + 1) + 1).toNat : ℚ) ^ (A071178 (n + 1) : ℤ)

end

end A053585.P9077754908503935702

namespace A053585

/-- `A008578(A061395(n+1)+1)^A071178(n+1)` -/
def P9077754908503935702.Spec : Prop :=
  ∀ n, P9077754908503935702.a n = (A053585 (n + 1) : ℚ)

end A053585

/-! ## A053585.P18355443742454266819

`A020639(n+1)*A130064(n+1)/A243074(n+1)`
-/

namespace A053585.P18355443742454266819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) * A130064 (n + 1) : ℚ) / (A243074 (n + 1) : ℚ)

end

end A053585.P18355443742454266819

namespace A053585

/-- `A020639(n+1)*A130064(n+1)/A243074(n+1)` -/
def P18355443742454266819.Spec : Prop :=
  ∀ n, P18355443742454266819.a n = (A053585 (n + 1) : ℚ)

end A053585

/-! ## A053585.P3944991190812391097

`A006530(n+1)*A242420(n+1)/A243057(n+1)`
-/

namespace A053585.P3944991190812391097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) * A242420 (n + 1) : ℚ) / (A243057 (n + 1) : ℚ)

end

end A053585.P3944991190812391097

namespace A053585

/-- `A006530(n+1)*A242420(n+1)/A243057(n+1)` -/
def P3944991190812391097.Spec : Prop :=
  ∀ n, P3944991190812391097.a n = (A053585 (n + 1) : ℚ)

end A053585

/-! ## A053585.P4028169479164702923

`gcd(A033486(n), A394383(n+1))`
-/

namespace A053585.P4028169479164702923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033486 n) (A394383 (n + 1))

end

end A053585.P4028169479164702923

namespace A053585

/-- `gcd(A033486(n), A394383(n+1))` -/
def P4028169479164702923.Spec : Prop :=
  ∀ n, (P4028169479164702923.a n : ℤ) = A053585 (n + 1)

end A053585

/-! ## A053585.P1548476952704827296

`gcd(n²+n, A046021(n+1))`
-/

namespace A053585.P1548476952704827296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + n : ℤ) (A046021 (n + 1))

end

end A053585.P1548476952704827296

namespace A053585

/-- `gcd(n²+n, A046021(n+1))` -/
def P1548476952704827296.Spec : Prop :=
  ∀ n, (P1548476952704827296.a n : ℤ) = A053585 (n + 1)

end A053585

/-! ## A053585.P789866069806690503

`gcd(A068795(n+1), A176900(n))`
-/

namespace A053585.P789866069806690503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068795 (n + 1)) (A176900 n)

end

end A053585.P789866069806690503

namespace A053585

/-- `gcd(A068795(n+1), A176900(n))` -/
def P789866069806690503.Spec : Prop :=
  ∀ n, (P789866069806690503.a n : ℤ) = A053585 (n + 1)

end A053585

/-! ## A053585.P3545359862496759720

`gcd(A304180(n+1)²²², A108951(n+1))`
-/

namespace A053585.P3545359862496759720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((A304180 (n + 1) ^ 2) ^ 2) ^ 2) (A108951 (n + 1))

end

end A053585.P3545359862496759720

namespace A053585

/-- `gcd(A304180(n+1)²²², A108951(n+1))` -/
def P3545359862496759720.Spec : Prop :=
  ∀ n, (P3545359862496759720.a n : ℤ) = A053585 (n + 1)

end A053585

/-! ## A053585.P7662337691171006661

`A071975(A342768(n+1))`
-/

namespace A053585.P7662337691171006661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A342768 (n + 1)).toNat

end

end A053585.P7662337691171006661

namespace A053585

/-- `A071975(A342768(n+1))` -/
def P7662337691171006661.Spec : Prop :=
  ∀ n, P7662337691171006661.a n = A053585 (n + 1)

end A053585

/-!
# A053587: Indices of A052344 (ways to write n as sum of two nonzero triangular numbers) where record values are reached.

The programs for A053587, there is no canonical definition to state claims against.
-/

/-! ## A053587.P3176149284192668140

`record[A234004(floor(lcm(2, n)/4)+1)]`
-/

namespace A053587.P3176149284192668140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234004 (⌊(Nat.lcm 2 n : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053587.P3176149284192668140

/-! ## A053587.P11421098233140234133

`record[A234004(ceil(C(or(1, n), n)/2))]`
-/

namespace A053587.P11421098233140234133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234004 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053587.P11421098233140234133

/-! ## A053587.P7023431518327012247

`record[A234004(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A053587.P7023431518327012247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234004 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053587.P7023431518327012247

/-! ## A053587.P10079622572163179042

`record[A234004(A152271(n))]`
-/

namespace A053587.P10079622572163179042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234004 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053587.P10079622572163179042

/-! ## A053587.P15809362085822414380

`record[A234004(A158416(n))]`
-/

namespace A053587.P15809362085822414380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234004 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053587.P15809362085822414380

/-!
# A053588: Number of self-complementary 4-multigraphs on n nodes.

The programs for A053588, there is no canonical definition to state claims against.
-/

/-! ## A053588.P10554829227232915562

`floor(A215761(A002110(n))/(n+1))+1`
-/

namespace A053588.P10554829227232915562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A215761 (A002110 n).toNat : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A053588.P10554829227232915562

/-! ## A053588.P4960614004597466000

`A070915(A120732(n))+A046927(n)`
-/

namespace A053588.P4960614004597466000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (A120732 n).toNat + A046927 n

end

end A053588.P4960614004597466000

/-!
# A053589: Greatest primorial number (A002110) which divides n.

The programs for A053589, there is no canonical definition to state claims against.
-/

/-! ## A053589.P5239157909337366049

`(n+1)/A111701(n+1)`
-/

namespace A053589.P5239157909337366049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A111701 (n + 1) : ℚ)

end

end A053589.P5239157909337366049

/-!
# A053590: Product of the longest chain of consecutive primes (starting with A020639(n)) which divides n.

The programs for A053590, there is no canonical definition to state claims against.
-/

/-! ## A053590.P4539254337404791433

`gcd(n+1, A066838(A117369(n+1)))`
-/

namespace A053590.P4539254337404791433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A066838 (A117369 (n + 1)).toNat)

end

end A053590.P4539254337404791433

/-! ## A053590.P1055888581376344687

`gcd(A066838(A117369(n+1)), A131738(n))`
-/

namespace A053590.P1055888581376344687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066838 (A117369 (n + 1)).toNat) (A131738 n)

end

end A053590.P1055888581376344687

/-! ## A053590.P2713811707925331748

`gcd(A053167(n+1), A181811(A117369(n+1)))`
-/

namespace A053590.P2713811707925331748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053167 (n + 1)) (A181811 (A117369 (n + 1)).toNat)

end

end A053590.P2713811707925331748

/-! ## A053590.P5695485442913144916

`gcd(∏{p}[n+1, #], A277330(A087207(n+1)))`
-/

namespace A053590.P5695485442913144916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A277330 (A087207 (n + 1)).toNat)

end

end A053590.P5695485442913144916

/-! ## A053590.P13364785166000070656

`gcd(A193551(n+1), A277330(A087207(n+1)))`
-/

namespace A053590.P13364785166000070656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193551 (n + 1)) (A277330 (A087207 (n + 1)).toNat)

end

end A053590.P13364785166000070656

/-!
# A053591: Closed 3-dimensional ball numbers (version 1): a(n)= number of integer points (i,j,k) contained in a closed ball of diameter n, centered at (0,0,0).

The programs for A053591, there is no canonical definition to state claims against.
-/

/-! ## A053591.P16232279462174325178

`A117609(floor((n/2)²))`
-/

namespace A053591.P16232279462174325178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

end

end A053591.P16232279462174325178

/-! ## A053591.P17151348194626300151

`or(1, A117609(∑[floor(n/2)]))`
-/

namespace A053591.P17151348194626300151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A117609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A053591.P17151348194626300151

/-! ## A053591.P15009971375396444674

`and(-1, A117609(A002620(n)))`
-/

namespace A053591.P15009971375396444674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A117609 (A002620 n).toNat)

end

end A053591.P15009971375396444674

/-! ## A053591.P3340597324607806357

`A117609(∑[floor(n/2)])+A000038(n+1)`
-/

namespace A053591.P3340597324607806357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000038 (n + 1)

end

end A053591.P3340597324607806357

/-! ## A053591.P8900217221262248695

`A117609(∑[floor(n/2)])%A345625(n+1)`
-/

namespace A053591.P8900217221262248695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A345625 (n + 1))

end

end A053591.P8900217221262248695

/-! ## A053591.P6365840566663728954

`A117609(∑[floor(n/2)])+A056594(2*n+3)`
-/

namespace A053591.P6365840566663728954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A056594 (2 * n + 3)

end

end A053591.P6365840566663728954

/-! ## A053591.P15800253300553997364

`A117609(∑[floor(n/2)])*A168182(3*n+2)`
-/

namespace A053591.P15800253300553997364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A168182 (3 * n + 2)

end

end A053591.P15800253300553997364

/-! ## A053591.P4299198325888671588

`A117609(∑[floor(n/2)])+A008683(8*n+12)`
-/

namespace A053591.P4299198325888671588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A008683 (8 * n + 12)

end

end A053591.P4299198325888671588

/-! ## A053591.P7712510922465194588

`A014963(12*n+6)*A117609(∑[floor(n/2)])`
-/

namespace A053591.P7712510922465194588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A117609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053591.P7712510922465194588

/-! ## A053591.P4312004994908319794

`A117609(∑[floor(n/2)])^(A000040(n+1)%2)`
-/

namespace A053591.P4312004994908319794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A053591.P4312004994908319794

/-! ## A053591.P3707149967700271241

`A020639(2*(n+1))+A117609(∑[floor(n/2)])-2`
-/

namespace A053591.P3707149967700271241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A117609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2)

end

end A053591.P3707149967700271241

/-! ## A053591.P17014197237213102596

`A117609(A002620(n))%A182467(n)`
-/

namespace A053591.P17014197237213102596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117609 (A002620 n).toNat) (A182467 n)

end

end A053591.P17014197237213102596

/-! ## A053591.P14389734946727318440

`A117609(A002620(n))+C(n, A117609(n))`
-/

namespace A053591.P14389734946727318440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (A002620 n).toNat + (Nat.choose n (A117609 n).toNat : ℤ)

end

end A053591.P14389734946727318440

/-! ## A053591.P1385697397194483258

`A007318(C(n, n²)!)*A117609(A002620(n))`
-/

namespace A053591.P1385697397194483258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (Nat.choose n (n ^ 2))) * A117609 (A002620 n).toNat

end

end A053591.P1385697397194483258

/-! ## A053591.P8751241102998889344

`A053592(n)+A004013(n²)`
-/

namespace A053591.P8751241102998889344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 n + A004013 (n ^ 2)

end

end A053591.P8751241102998889344

/-!
# A053592: Open 3-dimensional ball numbers (version 1): a(n) is the number of integer points (i,j,k) contained in an open ball of diameter n, centered at (0,0,0).

The programs for A053592, there is no canonical definition to state claims against.
-/

/-! ## A053592.P11302901866268114892

`A053591(n)-A004013(n²)`
-/

namespace A053592.P11302901866268114892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053591 n - A004013 (n ^ 2)

end

end A053592.P11302901866268114892

/-! ## A053592.P16080798494644475383

`A117609(floor((n/2)²))-A004013(n²)`
-/

namespace A053592.P16080798494644475383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 ⌊((n : ℚ) / 2) ^ 2⌋.toNat - A004013 (n ^ 2)

end

end A053592.P16080798494644475383

/-! ## A053592.P12688433878626647437

`A117609(A002620(n))%A182467(n)-A004013(n²)`
-/

namespace A053592.P12688433878626647437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117609 (A002620 n).toNat) (A182467 n) - A004013 (n ^ 2)

end

end A053592.P12688433878626647437

/-!
# A053594: Open 3-dimensional ball numbers (version 2): a(n) is the number of integer points (i,j,k) contained in an open ball of diameter n, centered at (1/2,0,0).

The programs for A053594, there is no canonical definition to state claims against.
-/

/-! ## A053594.P2446450710872699686

`A174873(A000070(n))-A025487(n+1)`
-/

namespace A053594.P2446450710872699686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174873 (A000070 n).toNat - A025487 (n + 1)

end

end A053594.P2446450710872699686

/-! ## A053594.P11959716791358573636

`log(sqrt(exp(C(2*n, 3))))`
-/

namespace A053594.P11959716791358573636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Real.sqrt (Real.exp (Nat.choose (2 * n) 3 : ℝ)))

end

end A053594.P11959716791358573636

/-! ## A053594.P2683070699318182856

`val(2^C(2*n, 3), 4)`
-/

namespace A053594.P2683070699318182856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ Nat.choose (2 * n) 3) 4

end

end A053594.P2683070699318182856

/-!
# A053595: Open 3-dimensional ball numbers (version 3): a(n) is the number of integer points (i,j,k) contained in an open ball of diameter n, centered at (1/2,1/2,0).

The programs for A053595, there is no canonical definition to state claims against.
-/

/-! ## A053595.P11816133387166451708

`A199502(A127630(n²))-1`
-/

namespace A053595.P11816133387166451708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199502 (A127630 (n ^ 2)).toNat - 1

end

end A053595.P11816133387166451708

/-! ## A053595.P11365988392486977928

`A052928(A199502(n^ceil(atan(n))))`
-/

namespace A053595.P11365988392486977928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A199502 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat).toNat

end

end A053595.P11365988392486977928

/-! ## A053595.P13210024438119831591

`A199502(A052928(n²)+1)-1`
-/

namespace A053595.P13210024438119831591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199502 (A052928 (n ^ 2) + 1).toNat - 1

end

end A053595.P13210024438119831591

/-! ## A053595.P17754977948391210515

`A052928(A199502(A127630(n²)))`
-/

namespace A053595.P17754977948391210515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A199502 (A127630 (n ^ 2)).toNat).toNat

end

end A053595.P17754977948391210515

/-!
# A053596: Open 3-dimensional ball numbers (version 4): a(n) is the number of integer points (i,j,k) contained in an open ball of diameter n, centered at (1/2, 1/2, 1/2).

The programs for A053596, there is no canonical definition to state claims against.
-/

/-! ## A053596.P17281446289409527661

`8*A349610(n)`
-/

namespace A053596.P17281446289409527661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A349610 n

end

end A053596.P17281446289409527661

/-! ## A053596.P14993754323115301530

`A008590(A349610(n))`
-/

namespace A053596.P14993754323115301530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A349610 n).toNat

end

end A053596.P14993754323115301530

/-! ## A053596.P5436657074970941953

`A022144(A349610(n))%A060884(n)`
-/

namespace A053596.P5436657074970941953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A349610 n).toNat) (A060884 n)

end

end A053596.P5436657074970941953

/-! ## A053596.P1786164428098228095

`and(-A035214(n), A022144(A349610(n)))`
-/

namespace A053596.P1786164428098228095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A035214 n) (A022144 (A349610 n).toNat)

end

end A053596.P1786164428098228095

/-! ## A053596.P9475960869567188625

`A022144(A349610(n))-A000045(C(2, n+1))`
-/

namespace A053596.P9475960869567188625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A349610 n).toNat - A000045 (Nat.choose 2 (n + 1))

end

end A053596.P9475960869567188625

/-!
# A053597: Let prime(i) = i-th prime (A000040), let d(i) = prime(i+1)-prime(i) (A001223); a(n) = number of distinct numbers among d(n), d(n+1), d(n+2), ... before first duplicate is encountered.

The programs for A053597, there is no canonical definition to state claims against.
-/

/-! ## A053597.P18084108867871600960

`A274354(lt[A137593(n+1), A274709(n)])`
-/

namespace A053597.P18084108867871600960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274354 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053597.P18084108867871600960

/-! ## A053597.P1717224541558914767

`A327239(A035324(2*n+5))+A054354(n+1)`
-/

namespace A053597.P1717224541558914767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327239 (A035324 (2 * n + 5)).toNat + A054354 (n + 1)

end

end A053597.P1717224541558914767

/-! ## A053597.P17172387734301027138

`A023575(C(A023547(n+1), A023595(2*(n+1))))`
-/

namespace A053597.P17172387734301027138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023575 (Nat.choose (A023547 (n + 1)).toNat (A023595 (2 * (n + 1))).toNat)

end

end A053597.P17172387734301027138

/-! ## A053597.P8748643833608093374

`A344339(A227062(n+2))`
-/

namespace A053597.P8748643833608093374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344339 (A227062 (n + 2)).toNat

end

end A053597.P8748643833608093374

/-! ## A053597.P9502460687153272808

`A001221(A003945(n+2)-A004999(n+1))`
-/

namespace A053597.P9502460687153272808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003945 (n + 2) - A004999 (n + 1)).toNat

end

end A053597.P9502460687153272808

/-!
# A053598: Number of n-node unlabeled digraphs without isolated nodes.

The programs for A053598, there is no canonical definition to state claims against.
-/

/-! ## A053598.P5961219531755007296

`A217654(∑[n])`
-/

namespace A053598.P5961219531755007296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217654 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053598.P5961219531755007296

/-! ## A053598.P6724880664759843569

`or(A000007(n), A217654(A000217(n)))`
-/

namespace A053598.P6724880664759843569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A217654 (A000217 n).toNat)

end

end A053598.P6724880664759843569

/-! ## A053598.P9620391909791898406

`A217654(A179865(n+1))+A000007(n)`
-/

namespace A053598.P9620391909791898406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217654 (A179865 (n + 1)).toNat + A000007 n

end

end A053598.P9620391909791898406

/-! ## A053598.P743018793921509535

`A217654(A179865(n+1))+A151810(n)`
-/

namespace A053598.P743018793921509535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217654 (A179865 (n + 1)).toNat + A151810 n

end

end A053598.P743018793921509535

/-! ## A053598.P7941160729531909443

`A217654(A179865(n+1))+A151878(n)`
-/

namespace A053598.P7941160729531909443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217654 (A179865 (n + 1)).toNat + A151878 n

end

end A053598.P7941160729531909443

/-!
# A053599: Number of nonempty subsequences {s(k)} of 1..n such that the difference sequence is palindromic.

The programs for A053599, the canonical program `A053599.P15114984561556275128` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053599 has offset 1).

The definition of A053599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053599.P15114984561556275128

`2*a(n-2)+2*(n+1)-1` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053599

/-- `2*a(n-2)+2*(n+1)-1` -/
def P15114984561556275128.Spec : Prop :=
  ∀ n, P15114984561556275128.a n = A053599 (n + 1)

theorem P15114984561556275128.correct : P15114984561556275128.Spec := by
  intro n
  simp only [A053599, Nat.add_sub_cancel]

end A053599

/-! ## A053599.P17583035727740249838

`∑[∑[2^floor(n/2)]]`
-/

namespace A053599.P17583035727740249838
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053599.P17583035727740249838

namespace A053599

/-- `∑[∑[2^floor(n/2)]]` -/
def P17583035727740249838.Spec : Prop :=
  ∀ n, P17583035727740249838.a n = (A053599 (n + 1) : ℚ)

end A053599

/-! ## A053599.P8391490296580790520

`ogf((1+x)/(1-2x-x^2+4x^3-2x^4))`
-/

namespace A053599.P8391490296580790520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -1, 4, -2] n

end

end A053599.P8391490296580790520

namespace A053599

/-- `ogf((1+x)/(1-2x-x^2+4x^3-2x^4))` -/
def P8391490296580790520.Spec : Prop :=
  ∀ n, P8391490296580790520.a n = A053599 (n + 1)

end A053599

/-! ## A053599.P7956097457811344648

`abs(∑[∑[2*a(n-2)]])` with `a(0)=1, a(1)=1`
-/

namespace A053599.P7956097457811344648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053599.P7956097457811344648

namespace A053599

/-- `abs(∑[∑[2*a(n-2)]])` -/
def P7956097457811344648.Spec : Prop :=
  ∀ n, (P7956097457811344648.a n : ℤ) = A053599 (n + 1)

end A053599

/-! ## A053599.P6473414820375492791

`floor(∑[∑[2*a(n-2)]])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A053599.P6473414820375492791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053599.P6473414820375492791

namespace A053599

/-- `floor(∑[∑[2*a(n-2)]])` -/
def P6473414820375492791.Spec : Prop :=
  ∀ n, (P6473414820375492791.a n : ℤ) = A053599 (n + 1)

end A053599

/-! ## A053599.P9116781538255477542

`ceil(∑[∑[2*a(n-2)]])` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A053599.P9116781538255477542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053599.P9116781538255477542

namespace A053599

/-- `ceil(∑[∑[2*a(n-2)]])` -/
def P9116781538255477542.Spec : Prop :=
  ∀ n, (P9116781538255477542.a n : ℤ) = A053599 (n + 1)

end A053599

/-! ## A053599.P7546629560467323985

`round(∑[∑[2*a(n-2)]])` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A053599.P7546629560467323985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053599.P7546629560467323985

namespace A053599

/-- `round(∑[∑[2*a(n-2)]])` -/
def P7546629560467323985.Spec : Prop :=
  ∀ n, (P7546629560467323985.a n : ℤ) = A053599 (n + 1)

end A053599

/-! ## A053599.P2278131089700452528

`2*(a(n-2)+n)+1` with `a(0)=1, a(1)=3`
-/

namespace A053599.P2278131089700452528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 2) + n) + 1

end

end A053599.P2278131089700452528

namespace A053599

/-- `2*(a(n-2)+n)+1` -/
def P2278131089700452528.Spec : Prop :=
  ∀ n, (P2278131089700452528.a n : ℤ) = A053599 (n + 1)

end A053599

/-! ## A053599.P14985347423001086753

`3-2*(1-a(n-2)-n)` with `a(0)=1, a(1)=3`
-/

namespace A053599.P14985347423001086753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - 2 * (1 - a (n - 2) - (n : ℤ))

end

end A053599.P14985347423001086753

namespace A053599

/-- `3-2*(1-a(n-2)-n)` -/
def P14985347423001086753.Spec : Prop :=
  ∀ n, P14985347423001086753.a n = A053599 (n + 1)

theorem P14985347423001086753.correct : P14985347423001086753.Spec := by
  intro n
  simp only [A053599, Nat.add_sub_cancel, A053599.P14985347423001086753.a, A053599.P15114984561556275128.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A053599

/-! ## A053599.P11631111205246733035

`floor(∑[a(n-2)+a(n-2)+2])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A053599.P11631111205246733035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053599.P11631111205246733035

namespace A053599

/-- `floor(∑[a(n-2)+a(n-2)+2])` -/
def P11631111205246733035.Spec : Prop :=
  ∀ n, (P11631111205246733035.a n : ℤ) = A053599 (n + 1)

end A053599

/-! ## A053599.P4447692013393544570

`n+1+a(n-2)+a(n-2)+n` with `a(0)=1, a(1)=3`
-/

namespace A053599.P4447692013393544570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  n + 1 + (a (n - 2) + (a (n - 2) + n))

end

end A053599.P4447692013393544570

namespace A053599

/-- `n+1+a(n-2)+a(n-2)+n` -/
def P4447692013393544570.Spec : Prop :=
  ∀ n, (P4447692013393544570.a n : ℤ) = A053599 (n + 1)

end A053599

/-! ## A053599.P9908347089963985239

`A027383(n)+a(n-1)` with `a(0)=1`
-/

namespace A053599.P9908347089963985239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027383 n + a (n - 1)

end

end A053599.P9908347089963985239

namespace A053599

/-- `A027383(n)+a(n-1)` -/
def P9908347089963985239.Spec : Prop :=
  ∀ n, P9908347089963985239.a n = A053599 (n + 1)

end A053599

/-! ## A053599.P9219637121117309898

`A063757(n+1)-(2*n+3)`
-/

namespace A053599.P9219637121117309898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063757 (n + 1) - (2 * n + 3 : ℤ)

end

end A053599.P9219637121117309898

namespace A053599

/-- `A063757(n+1)-(2*n+3)` -/
def P9219637121117309898.Spec : Prop :=
  ∀ n, P9219637121117309898.a n = A053599 (n + 1)

end A053599

/-! ## A053599.P11948079277693419703

`A133257(n+1)-2*(n+3)`
-/

namespace A053599.P11948079277693419703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133257 (n + 1) - (2 * (n + 3) : ℤ)

end

end A053599.P11948079277693419703

namespace A053599

/-- `A133257(n+1)-2*(n+3)` -/
def P11948079277693419703.Spec : Prop :=
  ∀ n, P11948079277693419703.a n = A053599 (n + 1)

end A053599

/-! ## A053599.P12038702587251777552

`A276677(n)+A004273(n)`
-/

namespace A053599.P12038702587251777552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276677 n + A004273 n

end

end A053599.P12038702587251777552

namespace A053599

/-- `A276677(n)+A004273(n)` -/
def P12038702587251777552.Spec : Prop :=
  ∀ n, P12038702587251777552.a n = A053599 (n + 1)

end A053599

/-! ## A053599.P2542026893412787824

`2*A077866(n)-A052551(n)`
-/

namespace A053599.P2542026893412787824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077866 n - A052551 n

end

end A053599.P2542026893412787824

namespace A053599

/-- `2*A077866(n)-A052551(n)` -/
def P2542026893412787824.Spec : Prop :=
  ∀ n, P2542026893412787824.a n = A053599 (n + 1)

end A053599

/-! ## A053599.P17419027925232947962

`∑[∑[∏[gcd(2, n)]]]/2`
-/

namespace A053599.P17419027925232947962
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A053599.P17419027925232947962

namespace A053599

/-- `∑[∑[∏[gcd(2, n)]]]/2` -/
def P17419027925232947962.Spec : Prop :=
  ∀ n, P17419027925232947962.a n = (A053599 (n + 1) : ℚ)

end A053599

/-! ## A053599.P14536337135128610509

`∑[∑[2*a(n-2)]]/2` with `a(0)=2, a(1)=2`
-/

namespace A053599.P14536337135128610509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A053599.P14536337135128610509

namespace A053599

/-- `∑[∑[2*a(n-2)]]/2` -/
def P14536337135128610509.Spec : Prop :=
  ∀ n, P14536337135128610509.a n = (A053599 (n + 1) : ℚ)

end A053599

/-! ## A053599.P3429980632153428163

`∑[a(n-2)+a(n-2)+4]/2` with `a(0)=2, a(1)=4`
-/

namespace A053599.P3429980632153428163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A053599.P3429980632153428163

namespace A053599

/-- `∑[a(n-2)+a(n-2)+4]/2` -/
def P3429980632153428163.Spec : Prop :=
  ∀ n, P3429980632153428163.a n = (A053599 (n + 1) : ℚ)

end A053599

/-! ## A053599.P11923473964151146528

`A276677(n+2)/2-1`
-/

namespace A053599.P11923473964151146528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276677 (n + 2) : ℚ) / 2 - 1

end

end A053599.P11923473964151146528

namespace A053599

/-- `A276677(n+2)/2-1` -/
def P11923473964151146528.Spec : Prop :=
  ∀ n, P11923473964151146528.a n = (A053599 (n + 1) : ℚ)

end A053599

